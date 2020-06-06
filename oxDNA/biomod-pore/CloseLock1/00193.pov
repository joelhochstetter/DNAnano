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
	<24.014116, 34.700890, 35.053360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378166, 34.849724, 35.126270>,  <24.596596, 34.939022, 35.170017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378166, 34.849724, 35.126270>,  <24.014116, 34.700890, 35.053360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378166, 34.849724, 35.126270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308725, -0.902404, 0.300592,
		0.276335, -0.217303, -0.936172,
		0.910125, 0.372084, 0.182279,
		24.651203, 34.961349, 35.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509552, 34.445606, 34.616859>,  <24.014116, 34.700890, 35.053360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509552, 34.445606, 34.616859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691019, 34.528461, 34.963566>,  <24.799900, 34.578175, 35.171589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691019, 34.528461, 34.963566>,  <24.509552, 34.445606, 34.616859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691019, 34.528461, 34.963566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265306, -0.959904, 0.090539,
		0.850762, 0.188883, -0.490435,
		0.453669, 0.207142, 0.866762,
		24.827120, 34.590603, 35.223595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256197, 34.329639, 34.506855>,  <24.509552, 34.445606, 34.616859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256197, 34.329639, 34.506855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141790, 34.247524, 34.881245>,  <25.073147, 34.198257, 35.105881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141790, 34.247524, 34.881245>,  <25.256197, 34.329639, 34.506855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141790, 34.247524, 34.881245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385646, -0.918844, -0.083680,
		0.877195, 0.337022, 0.341971,
		-0.286016, -0.205284, 0.935977,
		25.055986, 34.185940, 35.162037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771339, 34.223896, 34.888660>,  <25.256197, 34.329639, 34.506855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771339, 34.223896, 34.888660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472282, 34.005077, 35.039272>,  <25.292849, 33.873787, 35.129639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472282, 34.005077, 35.039272>,  <25.771339, 34.223896, 34.888660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472282, 34.005077, 35.039272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575415, -0.816679, -0.043971,
		0.331559, 0.183787, 0.925360,
		-0.747640, -0.547045, 0.376531,
		25.247990, 33.840965, 35.152233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028116, 33.781597, 35.507076>,  <25.771339, 34.223896, 34.888660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028116, 33.781597, 35.507076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715227, 33.616821, 35.320129>,  <25.527494, 33.517956, 35.207962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715227, 33.616821, 35.320129>,  <26.028116, 33.781597, 35.507076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715227, 33.616821, 35.320129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514700, -0.849989, -0.112264,
		-0.351014, -0.328371, 0.876904,
		-0.782223, -0.411937, -0.467371,
		25.480560, 33.493240, 35.179916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963257, 33.109604, 35.770302>,  <26.028116, 33.781597, 35.507076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963257, 33.109604, 35.770302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888439, 33.218884, 35.392864>,  <25.843548, 33.284451, 35.166401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888439, 33.218884, 35.392864>,  <25.963257, 33.109604, 35.770302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888439, 33.218884, 35.392864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365454, -0.872253, -0.324989,
		-0.911843, -0.405628, 0.063307,
		-0.187044, 0.273203, -0.943596,
		25.832327, 33.300846, 35.109787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620567, 33.278454, 35.549889>,  <25.963257, 33.109604, 35.770302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620567, 33.278454, 35.549889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972593, 33.450649, 35.630054>,  <27.183809, 33.553967, 35.678154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972593, 33.450649, 35.630054>,  <26.620567, 33.278454, 35.549889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972593, 33.450649, 35.630054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015900, -0.395108, 0.918497,
		0.474584, -0.811525, -0.340876,
		0.880066, 0.430484, 0.200415,
		27.236614, 33.579796, 35.690178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128956, 32.784142, 35.821625>,  <26.620567, 33.278454, 35.549889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128956, 32.784142, 35.821625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289461, 33.127979, 35.948170>,  <27.385763, 33.334282, 36.024097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289461, 33.127979, 35.948170>,  <27.128956, 32.784142, 35.821625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289461, 33.127979, 35.948170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247562, -0.434309, 0.866076,
		0.881874, -0.269205, -0.387075,
		0.401262, 0.859595, 0.316361,
		27.409840, 33.385857, 36.043079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782785, 32.587841, 36.117054>,  <27.128956, 32.784142, 35.821625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782785, 32.587841, 36.117054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671682, 32.948162, 36.250561>,  <27.605021, 33.164356, 36.330666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671682, 32.948162, 36.250561>,  <27.782785, 32.587841, 36.117054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671682, 32.948162, 36.250561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074300, -0.326248, 0.942360,
		0.957774, 0.286546, 0.023688,
		-0.277757, 0.900807, 0.333762,
		27.588356, 33.218403, 36.350689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217962, 32.613068, 36.655727>,  <27.782785, 32.587841, 36.117054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217962, 32.613068, 36.655727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960173, 32.911480, 36.722767>,  <27.805498, 33.090527, 36.762989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960173, 32.911480, 36.722767>,  <28.217962, 32.613068, 36.655727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960173, 32.911480, 36.722767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045118, -0.255907, 0.965648,
		0.763293, 0.614775, 0.198585,
		-0.644476, 0.746032, 0.167595,
		27.766830, 33.135288, 36.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437220, 32.818569, 37.280518>,  <28.217962, 32.613068, 36.655727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437220, 32.818569, 37.280518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054424, 32.922279, 37.228447>,  <27.824747, 32.984505, 37.197205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054424, 32.922279, 37.228447>,  <28.437220, 32.818569, 37.280518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054424, 32.922279, 37.228447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179428, -0.176353, 0.967835,
		0.227980, 0.949566, 0.215290,
		-0.956991, 0.259276, -0.130174,
		27.767326, 33.000061, 37.189396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355198, 33.276764, 37.883198>,  <28.437220, 32.818569, 37.280518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355198, 33.276764, 37.883198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996645, 33.152863, 37.756359>,  <27.781513, 33.078522, 37.680256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996645, 33.152863, 37.756359>,  <28.355198, 33.276764, 37.883198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996645, 33.152863, 37.756359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201380, -0.352701, 0.913810,
		-0.394899, 0.882979, 0.253776,
		-0.896382, -0.309758, -0.317096,
		27.727730, 33.059937, 37.661232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012587, 33.302998, 38.552906>,  <28.355198, 33.276764, 37.883198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012587, 33.302998, 38.552906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757360, 33.111446, 38.311726>,  <27.604225, 32.996517, 38.167019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757360, 33.111446, 38.311726>,  <28.012587, 33.302998, 38.552906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757360, 33.111446, 38.311726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350551, -0.516542, 0.781216,
		-0.685557, 0.709831, 0.161716,
		-0.638064, -0.478879, -0.602951,
		27.565941, 32.967781, 38.130840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301954, 33.273510, 38.924900>,  <28.012587, 33.302998, 38.552906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301954, 33.273510, 38.924900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280558, 32.993084, 38.640465>,  <27.267719, 32.824829, 38.469803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280558, 32.993084, 38.640465>,  <27.301954, 33.273510, 38.924900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280558, 32.993084, 38.640465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600933, -0.546123, 0.583634,
		-0.797508, 0.458532, -0.392084,
		-0.053489, -0.701069, -0.711084,
		27.264511, 32.782764, 38.427139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511087, 32.978466, 38.859726>,  <27.301954, 33.273510, 38.924900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511087, 32.978466, 38.859726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729145, 32.681271, 38.704403>,  <26.859980, 32.502953, 38.611210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729145, 32.681271, 38.704403>,  <26.511087, 32.978466, 38.859726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729145, 32.681271, 38.704403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464796, -0.653345, 0.597582,
		-0.697699, -0.145282, -0.701505,
		0.545143, -0.742989, -0.388312,
		26.892689, 32.458374, 38.587910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985912, 32.451973, 38.711262>,  <26.511087, 32.978466, 38.859726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985912, 32.451973, 38.711262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337503, 32.262245, 38.730934>,  <26.548458, 32.148407, 38.742737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337503, 32.262245, 38.730934>,  <25.985912, 32.451973, 38.711262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337503, 32.262245, 38.730934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354224, -0.580386, 0.733265,
		-0.319256, -0.661946, -0.678162,
		0.878977, -0.474320, 0.049185,
		26.601196, 32.119949, 38.745689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867470, 31.724619, 38.706955>,  <25.985912, 32.451973, 38.711262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867470, 31.724619, 38.706955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232454, 31.754734, 38.867825>,  <26.451445, 31.772804, 38.964348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232454, 31.754734, 38.867825>,  <25.867470, 31.724619, 38.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232454, 31.754734, 38.867825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214764, -0.748507, 0.627386,
		0.348266, -0.658839, -0.666815,
		0.912462, 0.075289, 0.402175,
		26.506193, 31.777321, 38.988476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137590, 30.977476, 38.832031>,  <25.867470, 31.724619, 38.706955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137590, 30.977476, 38.832031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368040, 31.189627, 39.080799>,  <26.506310, 31.316917, 39.230061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368040, 31.189627, 39.080799>,  <26.137590, 30.977476, 38.832031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368040, 31.189627, 39.080799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152579, -0.677725, 0.719312,
		0.802994, -0.509305, -0.309530,
		0.576125, 0.530375, 0.621918,
		26.540878, 31.348740, 39.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603504, 30.568073, 39.159191>,  <26.137590, 30.977476, 38.832031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603504, 30.568073, 39.159191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588907, 30.888346, 39.398384>,  <26.580149, 31.080509, 39.541901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588907, 30.888346, 39.398384>,  <26.603504, 30.568073, 39.159191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588907, 30.888346, 39.398384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050982, -0.599092, 0.799055,
		0.998033, -0.001327, 0.062683,
		-0.036493, 0.800679, 0.597981,
		26.577959, 31.128550, 39.577778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089567, 30.460606, 39.722427>,  <26.603504, 30.568073, 39.159191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089567, 30.460606, 39.722427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832432, 30.727724, 39.872524>,  <26.678150, 30.887995, 39.962582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832432, 30.727724, 39.872524>,  <27.089567, 30.460606, 39.722427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832432, 30.727724, 39.872524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230153, -0.635621, 0.736896,
		0.730609, 0.387342, 0.562296,
		-0.642838, 0.667797, 0.375242,
		26.639580, 30.928062, 39.985096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206654, 30.475628, 40.429745>,  <27.089567, 30.460606, 39.722427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206654, 30.475628, 40.429745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843157, 30.642176, 40.441242>,  <26.625059, 30.742104, 40.448139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843157, 30.642176, 40.441242>,  <27.206654, 30.475628, 40.429745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843157, 30.642176, 40.441242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153704, -0.397904, 0.904460,
		0.388025, 0.817503, 0.425589,
		-0.908742, 0.416368, 0.028743,
		26.570534, 30.767086, 40.449863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160759, 30.777815, 41.127098>,  <27.206654, 30.475628, 40.429745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160759, 30.777815, 41.127098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797688, 30.751690, 40.961277>,  <26.579844, 30.736015, 40.861786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797688, 30.751690, 40.961277>,  <27.160759, 30.777815, 41.127098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797688, 30.751690, 40.961277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382956, -0.275114, 0.881849,
		-0.171644, 0.959191, 0.224703,
		-0.907680, -0.065313, -0.414550,
		26.525383, 30.732096, 40.836910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733074, 31.272223, 41.559319>,  <27.160759, 30.777815, 41.127098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733074, 31.272223, 41.559319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528009, 30.967405, 41.401093>,  <26.404970, 30.784515, 41.306156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528009, 30.967405, 41.401093>,  <26.733074, 31.272223, 41.559319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528009, 30.967405, 41.401093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175714, -0.357838, 0.917102,
		-0.840418, 0.539669, 0.049548,
		-0.512662, -0.762043, -0.395560,
		26.374210, 30.738792, 41.282425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153973, 31.183128, 42.072704>,  <26.733074, 31.272223, 41.559319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153973, 31.183128, 42.072704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150614, 30.849247, 41.852448>,  <26.148598, 30.648918, 41.720295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150614, 30.849247, 41.852448>,  <26.153973, 31.183128, 42.072704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150614, 30.849247, 41.852448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369134, -0.509178, 0.777482,
		-0.929338, 0.209789, -0.303840,
		-0.008398, -0.834702, -0.550639,
		26.148094, 30.598837, 41.687256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658569, 30.836620, 42.457047>,  <26.153973, 31.183128, 42.072704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658569, 30.836620, 42.457047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809326, 30.555883, 42.215263>,  <25.899780, 30.387442, 42.070194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809326, 30.555883, 42.215263>,  <25.658569, 30.836620, 42.457047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809326, 30.555883, 42.215263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162987, -0.692650, 0.702617,
		-0.911805, -0.166291, -0.375445,
		0.376891, -0.701842, -0.604459,
		25.922394, 30.345331, 42.033924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011185, 30.338064, 42.435616>,  <25.658569, 30.836620, 42.457047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011185, 30.338064, 42.435616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403542, 30.262976, 42.415169>,  <25.638956, 30.217922, 42.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403542, 30.262976, 42.415169>,  <25.011185, 30.338064, 42.435616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403542, 30.262976, 42.415169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071619, -0.592665, 0.802258,
		-0.180893, -0.783268, -0.594785,
		0.980892, -0.187720, -0.051112,
		25.697809, 30.206659, 42.399834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065945, 29.705219, 42.736233>,  <25.011185, 30.338064, 42.435616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065945, 29.705219, 42.736233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435577, 29.844498, 42.799263>,  <25.657358, 29.928064, 42.837082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435577, 29.844498, 42.799263>,  <25.065945, 29.705219, 42.736233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435577, 29.844498, 42.799263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068162, -0.555834, 0.828494,
		0.376065, -0.754857, -0.537370,
		0.924083, 0.348196, 0.157577,
		25.712803, 29.948957, 42.846535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703859, 29.188551, 42.718609>,  <25.065945, 29.705219, 42.736233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703859, 29.188551, 42.718609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739243, 29.485584, 42.984161>,  <25.760473, 29.663805, 43.143494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739243, 29.485584, 42.984161>,  <25.703859, 29.188551, 42.718609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739243, 29.485584, 42.984161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130944, -0.669384, 0.731286,
		0.987435, 0.022242, -0.156451,
		0.088460, 0.742584, 0.663886,
		25.765781, 29.708359, 43.183327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357670, 29.107674, 43.073612>,  <25.703859, 29.188551, 42.718609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357670, 29.107674, 43.073612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084225, 29.304632, 43.289101>,  <25.920158, 29.422808, 43.418392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084225, 29.304632, 43.289101>,  <26.357670, 29.107674, 43.073612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084225, 29.304632, 43.289101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227239, -0.557842, 0.798232,
		0.693568, 0.668100, 0.269456,
		-0.683612, 0.492398, 0.538719,
		25.879141, 29.452351, 43.450718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706800, 29.322224, 43.701820>,  <26.357670, 29.107674, 43.073612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706800, 29.322224, 43.701820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323818, 29.336287, 43.816391>,  <26.094028, 29.344725, 43.885132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323818, 29.336287, 43.816391>,  <26.706800, 29.322224, 43.701820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323818, 29.336287, 43.816391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247921, -0.407739, 0.878797,
		0.147681, 0.912422, 0.381677,
		-0.957458, 0.035156, 0.286423,
		26.036581, 29.346834, 43.902317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806585, 29.684406, 44.241215>,  <26.706800, 29.322224, 43.701820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806585, 29.684406, 44.241215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472851, 29.466679, 44.276081>,  <26.272610, 29.336042, 44.297001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472851, 29.466679, 44.276081>,  <26.806585, 29.684406, 44.241215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472851, 29.466679, 44.276081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382950, -0.458568, 0.801913,
		-0.396523, 0.702447, 0.591048,
		-0.834337, -0.544319, 0.087169,
		26.222549, 29.303383, 44.302231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227636, 29.629299, 44.867416>,  <26.806585, 29.684406, 44.241215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227636, 29.629299, 44.867416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325605, 29.962429, 45.065975>,  <27.384386, 30.162308, 45.185112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325605, 29.962429, 45.065975>,  <27.227636, 29.629299, 44.867416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325605, 29.962429, 45.065975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969505, -0.205824, -0.133031,
		-0.008620, 0.513846, -0.857839,
		0.244921, 0.832826, 0.496402,
		27.399082, 30.212276, 45.214897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761786, 29.843555, 44.570560>,  <27.227636, 29.629299, 44.867416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761786, 29.843555, 44.570560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806292, 29.998951, 44.936443>,  <27.832994, 30.092188, 45.155975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806292, 29.998951, 44.936443>,  <27.761786, 29.843555, 44.570560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806292, 29.998951, 44.936443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981336, -0.188213, -0.039433,
		0.156841, 0.902027, -0.402179,
		0.111265, 0.388488, 0.914712,
		27.839670, 30.115498, 45.210857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305273, 30.284187, 44.510509>,  <27.761786, 29.843555, 44.570560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305273, 30.284187, 44.510509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263144, 30.168524, 44.891098>,  <28.237865, 30.099125, 45.119450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263144, 30.168524, 44.891098>,  <28.305273, 30.284187, 44.510509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263144, 30.168524, 44.891098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993536, -0.071332, 0.088301,
		0.042337, 0.954619, 0.294804,
		-0.105323, -0.289160, 0.951469,
		28.231546, 30.081776, 45.176540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771948, 30.634544, 44.923275>,  <28.305273, 30.284187, 44.510509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771948, 30.634544, 44.923275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696873, 30.265783, 45.058842>,  <28.651827, 30.044527, 45.140182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696873, 30.265783, 45.058842>,  <28.771948, 30.634544, 44.923275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696873, 30.265783, 45.058842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980716, -0.156745, 0.116737,
		-0.054496, 0.354296, 0.933544,
		-0.187688, -0.921903, 0.338921,
		28.640566, 29.989212, 45.160519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637548, 31.099485, 44.432781>,  <28.771948, 30.634544, 44.923275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637548, 31.099485, 44.432781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464224, 30.844454, 44.177994>,  <28.360229, 30.691435, 44.025120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464224, 30.844454, 44.177994>,  <28.637548, 31.099485, 44.432781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464224, 30.844454, 44.177994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487360, 0.428749, -0.760693,
		0.758104, -0.640051, 0.124950,
		-0.433311, -0.637580, -0.636972,
		28.334230, 30.653179, 43.986904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114037, 31.030266, 44.028183>,  <28.637548, 31.099485, 44.432781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114037, 31.030266, 44.028183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821743, 30.864552, 43.811150>,  <28.646368, 30.765123, 43.680931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821743, 30.864552, 43.811150>,  <29.114037, 31.030266, 44.028183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821743, 30.864552, 43.811150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410439, 0.368488, -0.834120,
		0.545500, -0.832216, -0.099227,
		-0.730733, -0.414286, -0.542585,
		28.602524, 30.740267, 43.648373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440891, 30.601149, 43.567429>,  <29.114037, 31.030266, 44.028183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440891, 30.601149, 43.567429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079554, 30.640320, 43.400394>,  <28.862751, 30.663822, 43.300175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079554, 30.640320, 43.400394>,  <29.440891, 30.601149, 43.567429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079554, 30.640320, 43.400394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425144, 0.333311, -0.841520,
		0.056777, -0.937717, -0.342729,
		-0.903343, 0.097930, -0.417589,
		28.808550, 30.669699, 43.275116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440430, 30.253370, 42.990623>,  <29.440891, 30.601149, 43.567429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440430, 30.253370, 42.990623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154545, 30.528891, 42.942059>,  <28.983013, 30.694202, 42.912918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154545, 30.528891, 42.942059>,  <29.440430, 30.253370, 42.990623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154545, 30.528891, 42.942059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379825, 0.236475, -0.894322,
		-0.587298, -0.685299, -0.430635,
		-0.714713, 0.688800, -0.121412,
		28.940130, 30.735531, 42.905636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287827, 30.365986, 42.227524>,  <29.440430, 30.253370, 42.990623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287827, 30.365986, 42.227524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077515, 30.676205, 42.367283>,  <28.951326, 30.862335, 42.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077515, 30.676205, 42.367283>,  <29.287827, 30.365986, 42.227524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077515, 30.676205, 42.367283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194819, 0.509636, -0.838043,
		-0.828009, -0.372558, -0.419048,
		-0.525782, 0.775546, 0.349402,
		28.919781, 30.908869, 42.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893740, 30.617271, 41.641338>,  <29.287827, 30.365986, 42.227524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893740, 30.617271, 41.641338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947702, 30.922932, 41.893646>,  <28.980080, 31.106327, 42.045033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947702, 30.922932, 41.893646>,  <28.893740, 30.617271, 41.641338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947702, 30.922932, 41.893646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186555, 0.605619, -0.773578,
		-0.973138, 0.222033, -0.060855,
		0.134905, 0.764151, 0.630773,
		28.988174, 31.152178, 42.082878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484680, 31.153755, 41.374451>,  <28.893740, 30.617271, 41.641338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484680, 31.153755, 41.374451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752790, 31.324064, 41.617580>,  <28.913656, 31.426250, 41.763458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752790, 31.324064, 41.617580>,  <28.484680, 31.153755, 41.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752790, 31.324064, 41.617580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131038, 0.738273, -0.661651,
		-0.730453, 0.523136, 0.439053,
		0.670274, 0.425772, 0.607824,
		28.953873, 31.451796, 41.799927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413479, 31.844187, 41.253178>,  <28.484680, 31.153755, 41.374451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413479, 31.844187, 41.253178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767357, 31.894871, 41.432625>,  <28.979685, 31.925282, 41.540291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767357, 31.894871, 41.432625>,  <28.413479, 31.844187, 41.253178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767357, 31.894871, 41.432625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224776, 0.727134, -0.648654,
		-0.408395, 0.674700, 0.614812,
		0.884697, 0.126712, 0.448615,
		29.032766, 31.932884, 41.567207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501995, 32.589993, 41.367062>,  <28.413479, 31.844187, 41.253178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501995, 32.589993, 41.367062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873142, 32.445633, 41.404621>,  <29.095831, 32.359016, 41.427155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873142, 32.445633, 41.404621>,  <28.501995, 32.589993, 41.367062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873142, 32.445633, 41.404621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352396, 0.766197, -0.537364,
		0.121991, 0.531690, 0.838107,
		0.927866, -0.360899, 0.093896,
		29.151503, 32.337364, 41.432789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925655, 33.169247, 41.487686>,  <28.501995, 32.589993, 41.367062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925655, 33.169247, 41.487686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157301, 32.884911, 41.328022>,  <29.296288, 32.714310, 41.232224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157301, 32.884911, 41.328022>,  <28.925655, 33.169247, 41.487686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157301, 32.884911, 41.328022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384025, 0.669754, -0.635574,
		0.719134, 0.214781, 0.660845,
		0.579113, -0.710844, -0.399161,
		29.331036, 32.671658, 41.208275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625668, 33.506039, 41.270550>,  <28.925655, 33.169247, 41.487686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625668, 33.506039, 41.270550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604647, 33.170921, 41.053165>,  <29.592033, 32.969852, 40.922737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604647, 33.170921, 41.053165>,  <29.625668, 33.506039, 41.270550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604647, 33.170921, 41.053165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355151, 0.492951, -0.794272,
		0.933331, -0.234750, 0.271636,
		-0.052551, -0.837790, -0.543458,
		29.588881, 32.919586, 40.890129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274790, 33.402927, 41.014820>,  <29.625668, 33.506039, 41.270550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274790, 33.402927, 41.014820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047152, 33.186043, 40.767551>,  <29.910568, 33.055912, 40.619190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047152, 33.186043, 40.767551>,  <30.274790, 33.402927, 41.014820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047152, 33.186043, 40.767551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402911, 0.471470, -0.784460,
		0.716795, -0.695500, -0.049847,
		-0.569093, -0.542214, -0.618172,
		29.876423, 33.023380, 40.582100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734484, 33.301228, 40.427883>,  <30.274790, 33.402927, 41.014820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734484, 33.301228, 40.427883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358530, 33.234344, 40.308781>,  <30.132957, 33.194214, 40.237320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358530, 33.234344, 40.308781>,  <30.734484, 33.301228, 40.427883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358530, 33.234344, 40.308781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221552, 0.364942, -0.904285,
		0.259866, -0.915893, -0.305959,
		-0.939885, -0.167207, -0.297754,
		30.076565, 33.184181, 40.219456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778486, 32.985443, 39.703793>,  <30.734484, 33.301228, 40.427883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778486, 32.985443, 39.703793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416828, 33.151932, 39.742325>,  <30.199833, 33.251827, 39.765446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416828, 33.151932, 39.742325>,  <30.778486, 32.985443, 39.703793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416828, 33.151932, 39.742325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102070, 0.429400, -0.897328,
		-0.414855, -0.801482, -0.430723,
		-0.904145, 0.416224, 0.096331,
		30.145584, 33.276798, 39.771225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528957, 32.882328, 39.087997>,  <30.778486, 32.985443, 39.703793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528957, 32.882328, 39.087997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274387, 33.157764, 39.227020>,  <30.121645, 33.323029, 39.310436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274387, 33.157764, 39.227020>,  <30.528957, 32.882328, 39.087997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274387, 33.157764, 39.227020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072823, 0.502220, -0.861668,
		-0.767892, -0.523078, -0.369772,
		-0.636427, 0.688596, 0.347559,
		30.083460, 33.364342, 39.331287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930611, 32.829758, 38.721920>,  <30.528957, 32.882328, 39.087997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930611, 32.829758, 38.721920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895004, 33.191525, 38.888824>,  <29.873640, 33.408585, 38.988968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895004, 33.191525, 38.888824>,  <29.930611, 32.829758, 38.721920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895004, 33.191525, 38.888824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005144, 0.419340, -0.907815,
		-0.996017, -0.078666, -0.041981,
		-0.089018, 0.904415, 0.417265,
		29.868299, 33.462849, 39.014004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334948, 33.120251, 38.523827>,  <29.930611, 32.829758, 38.721920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334948, 33.120251, 38.523827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557127, 33.443188, 38.603493>,  <29.690435, 33.636951, 38.651295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557127, 33.443188, 38.603493>,  <29.334948, 33.120251, 38.523827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557127, 33.443188, 38.603493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230890, 0.379837, -0.895776,
		-0.798852, 0.451572, 0.397388,
		0.555450, 0.807345, 0.199170,
		29.723763, 33.685390, 38.663242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013876, 33.608414, 38.181610>,  <29.334948, 33.120251, 38.523827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013876, 33.608414, 38.181610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357264, 33.803452, 38.245220>,  <29.563295, 33.920475, 38.283386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357264, 33.803452, 38.245220>,  <29.013876, 33.608414, 38.181610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357264, 33.803452, 38.245220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064738, 0.410614, -0.909508,
		-0.508767, 0.770488, 0.384064,
		0.858467, 0.487591, 0.159027,
		29.614803, 33.949730, 38.292927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928892, 34.328587, 38.238972>,  <29.013876, 33.608414, 38.181610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928892, 34.328587, 38.238972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306629, 34.285557, 38.114620>,  <29.533272, 34.259739, 38.040009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306629, 34.285557, 38.114620>,  <28.928892, 34.328587, 38.238972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306629, 34.285557, 38.114620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230414, 0.458198, -0.858466,
		0.234795, 0.882316, 0.407909,
		0.944341, -0.107576, -0.310881,
		29.589931, 34.253284, 38.021355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126848, 34.993214, 37.860447>,  <28.928892, 34.328587, 38.238972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126848, 34.993214, 37.860447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413637, 34.731079, 37.765377>,  <29.585711, 34.573799, 37.708336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413637, 34.731079, 37.765377>,  <29.126848, 34.993214, 37.860447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413637, 34.731079, 37.765377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142296, 0.471354, -0.870389,
		0.682424, 0.590225, 0.431199,
		0.716973, -0.655332, -0.237677,
		29.628729, 34.534481, 37.694073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696100, 35.394508, 37.728516>,  <29.126848, 34.993214, 37.860447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696100, 35.394508, 37.728516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772543, 35.049538, 37.541031>,  <29.818409, 34.842556, 37.428539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772543, 35.049538, 37.541031>,  <29.696100, 35.394508, 37.728516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772543, 35.049538, 37.541031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217345, 0.502843, -0.836606,
		0.957204, 0.058007, 0.283541,
		0.191105, -0.862429, -0.468716,
		29.829874, 34.790810, 37.400417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346527, 35.526466, 37.313744>,  <29.696100, 35.394508, 37.728516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346527, 35.526466, 37.313744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197681, 35.201958, 37.133354>,  <30.108374, 35.007252, 37.025120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197681, 35.201958, 37.133354>,  <30.346527, 35.526466, 37.313744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197681, 35.201958, 37.133354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203039, 0.402954, -0.892414,
		0.905709, -0.423643, 0.014775,
		-0.372112, -0.811267, -0.450975,
		30.086048, 34.958576, 36.998062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796412, 35.236343, 36.872112>,  <30.346527, 35.526466, 37.313744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796412, 35.236343, 36.872112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435663, 35.144569, 36.725697>,  <30.219213, 35.089504, 36.637848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435663, 35.144569, 36.725697>,  <30.796412, 35.236343, 36.872112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435663, 35.144569, 36.725697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258997, 0.390974, -0.883210,
		0.345751, -0.891346, -0.293186,
		-0.901874, -0.229436, -0.366036,
		30.165102, 35.075737, 36.615887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201862, 35.830658, 37.291553>,  <30.796412, 35.236343, 36.872112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201862, 35.830658, 37.291553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833477, 35.973572, 37.229359>,  <30.612446, 36.059319, 37.192039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833477, 35.973572, 37.229359>,  <31.201862, 35.830658, 37.291553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833477, 35.973572, 37.229359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019316, -0.356698, -0.934020,
		-0.389177, -0.863199, 0.321604,
		-0.920960, 0.357287, -0.155493,
		30.557188, 36.080757, 37.182713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883757, 35.906967, 37.298187>,  <31.201862, 35.830658, 37.291553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883757, 35.906967, 37.298187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063396, 35.572937, 37.425285>,  <32.171181, 35.372520, 37.501545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063396, 35.572937, 37.425285>,  <31.883757, 35.906967, 37.298187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063396, 35.572937, 37.425285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864061, 0.315414, -0.392317,
		0.227394, 0.450737, 0.863208,
		0.449100, -0.835075, 0.317741,
		32.198128, 35.322414, 37.520607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534714, 36.091618, 37.691132>,  <31.883757, 35.906967, 37.298187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534714, 36.091618, 37.691132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544056, 35.724106, 37.533497>,  <32.549660, 35.503601, 37.438915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544056, 35.724106, 37.533497>,  <32.534714, 36.091618, 37.691132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544056, 35.724106, 37.533497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889001, 0.199402, -0.412208,
		0.457309, -0.340717, 0.821450,
		0.023353, -0.918777, -0.394086,
		32.551064, 35.448471, 37.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166718, 35.740997, 37.829868>,  <32.534714, 36.091618, 37.691132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166718, 35.740997, 37.829868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062168, 35.596584, 37.471798>,  <32.999439, 35.509937, 37.256954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062168, 35.596584, 37.471798>,  <33.166718, 35.740997, 37.829868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062168, 35.596584, 37.471798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950713, 0.063996, -0.303396,
		0.166822, -0.930356, 0.326508,
		-0.261371, -0.361028, -0.895178,
		32.983757, 35.488277, 37.203243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606800, 35.103016, 37.706852>,  <33.166718, 35.740997, 37.829868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606800, 35.103016, 37.706852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464520, 35.317371, 37.400570>,  <33.379150, 35.445984, 37.216801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464520, 35.317371, 37.400570>,  <33.606800, 35.103016, 37.706852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464520, 35.317371, 37.400570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918018, 0.046698, -0.393779,
		-0.175265, -0.842997, -0.508565,
		-0.355703, 0.535888, -0.765702,
		33.357807, 35.478138, 37.170860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039989, 34.928749, 37.208988>,  <33.606800, 35.103016, 37.706852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039989, 34.928749, 37.208988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881523, 35.279099, 37.098793>,  <33.786442, 35.489307, 37.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881523, 35.279099, 37.098793>,  <34.039989, 34.928749, 37.208988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881523, 35.279099, 37.098793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878501, 0.274336, -0.391120,
		-0.266996, -0.396966, -0.878141,
		-0.396167, 0.875875, -0.275489,
		33.762672, 35.541862, 37.016148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485767, 34.895882, 37.750286>,  <34.039989, 34.928749, 37.208988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485767, 34.895882, 37.750286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827930, 34.772861, 37.583580>,  <35.033226, 34.699047, 37.483559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827930, 34.772861, 37.583580>,  <34.485767, 34.895882, 37.750286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827930, 34.772861, 37.583580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095478, -0.697210, 0.710480,
		-0.509083, -0.647540, -0.567033,
		0.855406, -0.307554, -0.416763,
		35.084553, 34.680595, 37.458549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497742, 34.234177, 37.597492>,  <34.485767, 34.895882, 37.750286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497742, 34.234177, 37.597492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894047, 34.274361, 37.633926>,  <35.131828, 34.298470, 37.655785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894047, 34.274361, 37.633926>,  <34.497742, 34.234177, 37.597492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894047, 34.274361, 37.633926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016702, -0.756980, 0.653225,
		0.134569, -0.645670, -0.751666,
		0.990764, 0.100458, 0.091082,
		35.191277, 34.304497, 37.661251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882565, 33.645401, 37.412395>,  <34.497742, 34.234177, 37.597492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882565, 33.645401, 37.412395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112007, 33.821739, 37.688549>,  <35.249672, 33.927544, 37.854240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112007, 33.821739, 37.688549>,  <34.882565, 33.645401, 37.412395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112007, 33.821739, 37.688549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040046, -0.856909, 0.513909,
		0.818152, -0.267134, -0.509182,
		0.573605, 0.440847, 0.690385,
		35.284088, 33.953995, 37.895664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288429, 33.104904, 37.683720>,  <34.882565, 33.645401, 37.412395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288429, 33.104904, 37.683720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300697, 33.397270, 37.956432>,  <35.308060, 33.572689, 38.120060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300697, 33.397270, 37.956432>,  <35.288429, 33.104904, 37.683720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300697, 33.397270, 37.956432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011838, -0.682316, 0.730962,
		0.999460, -0.014348, -0.029579,
		0.030670, 0.730917, 0.681777,
		35.309898, 33.616547, 38.160965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705441, 32.844215, 38.245155>,  <35.288429, 33.104904, 37.683720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705441, 32.844215, 38.245155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533684, 33.158169, 38.423855>,  <35.430630, 33.346539, 38.531075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533684, 33.158169, 38.423855>,  <35.705441, 32.844215, 38.245155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533684, 33.158169, 38.423855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031134, -0.507243, 0.861240,
		0.902581, 0.355901, 0.242244,
		-0.429393, 0.784881, 0.446747,
		35.404865, 33.393635, 38.557880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927395, 32.869156, 38.912155>,  <35.705441, 32.844215, 38.245155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927395, 32.869156, 38.912155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651009, 33.149467, 38.983131>,  <35.485176, 33.317654, 39.025715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651009, 33.149467, 38.983131>,  <35.927395, 32.869156, 38.912155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651009, 33.149467, 38.983131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043498, -0.285313, 0.957447,
		0.721582, 0.653840, 0.227623,
		-0.690961, 0.700778, 0.177436,
		35.443722, 33.359699, 39.036362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128662, 33.406563, 39.453808>,  <35.927395, 32.869156, 38.912155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128662, 33.406563, 39.453808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731003, 33.364937, 39.442223>,  <35.492409, 33.339962, 39.435272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731003, 33.364937, 39.442223>,  <36.128662, 33.406563, 39.453808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731003, 33.364937, 39.442223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005531, -0.218724, 0.975771,
		-0.107880, 0.970222, 0.216868,
		-0.994148, -0.104067, -0.028962,
		35.432758, 33.333717, 39.433533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924015, 33.773167, 40.001968>,  <36.128662, 33.406563, 39.453808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924015, 33.773167, 40.001968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593880, 33.560978, 39.924599>,  <35.395798, 33.433666, 39.878178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593880, 33.560978, 39.924599>,  <35.924015, 33.773167, 40.001968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593880, 33.560978, 39.924599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141227, -0.137741, 0.980348,
		-0.546686, 0.836440, 0.038767,
		-0.825342, -0.530467, -0.193429,
		35.346275, 33.401836, 39.866570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387405, 34.054855, 40.383663>,  <35.924015, 33.773167, 40.001968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387405, 34.054855, 40.383663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282883, 33.677429, 40.302277>,  <35.220169, 33.450974, 40.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282883, 33.677429, 40.302277>,  <35.387405, 34.054855, 40.383663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282883, 33.677429, 40.302277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144238, -0.170250, 0.974787,
		-0.954417, 0.284069, -0.091611,
		-0.261310, -0.943568, -0.203463,
		35.204491, 33.394360, 40.241238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876328, 33.975563, 40.793327>,  <35.387405, 34.054855, 40.383663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876328, 33.975563, 40.793327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993217, 33.606735, 40.691830>,  <35.063351, 33.385437, 40.630932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993217, 33.606735, 40.691830>,  <34.876328, 33.975563, 40.793327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993217, 33.606735, 40.691830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172322, -0.311754, 0.934406,
		-0.940698, -0.229326, -0.249994,
		0.292221, -0.922073, -0.253748,
		35.080883, 33.330112, 40.615704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379013, 33.565678, 41.148441>,  <34.876328, 33.975563, 40.793327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379013, 33.565678, 41.148441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691097, 33.331219, 41.061077>,  <34.878349, 33.190544, 41.008659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691097, 33.331219, 41.061077>,  <34.379013, 33.565678, 41.148441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691097, 33.331219, 41.061077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085273, -0.445568, 0.891178,
		-0.619679, -0.676681, -0.397619,
		0.780210, -0.586150, -0.218406,
		34.925159, 33.155373, 40.995556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206268, 32.741661, 41.194424>,  <34.379013, 33.565678, 41.148441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206268, 32.741661, 41.194424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601795, 32.779438, 41.240578>,  <34.839111, 32.802105, 41.268272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601795, 32.779438, 41.240578>,  <34.206268, 32.741661, 41.194424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601795, 32.779438, 41.240578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074299, -0.358845, 0.930436,
		0.129283, -0.928607, -0.347815,
		0.988820, 0.094447, 0.115387,
		34.898441, 32.807774, 41.275192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463188, 32.166702, 41.498135>,  <34.206268, 32.741661, 41.194424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463188, 32.166702, 41.498135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763382, 32.413841, 41.591980>,  <34.943497, 32.562122, 41.648285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763382, 32.413841, 41.591980>,  <34.463188, 32.166702, 41.498135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763382, 32.413841, 41.591980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082490, -0.264643, 0.960812,
		0.655719, -0.740428, -0.147645,
		0.750485, 0.617843, 0.234609,
		34.988529, 32.599194, 41.662361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986835, 31.778437, 41.912479>,  <34.463188, 32.166702, 41.498135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986835, 31.778437, 41.912479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055588, 32.164089, 41.993382>,  <35.096840, 32.395481, 42.041924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055588, 32.164089, 41.993382>,  <34.986835, 31.778437, 41.912479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055588, 32.164089, 41.993382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019533, -0.208609, 0.977804,
		0.984925, -0.164111, -0.054688,
		0.171876, 0.964131, 0.202259,
		35.107151, 32.453327, 42.054058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364635, 31.735254, 42.460522>,  <34.986835, 31.778437, 41.912479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364635, 31.735254, 42.460522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274921, 32.124905, 42.471615>,  <35.221092, 32.358696, 42.478271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274921, 32.124905, 42.471615>,  <35.364635, 31.735254, 42.460522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274921, 32.124905, 42.471615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105514, -0.004016, 0.994410,
		0.968794, 0.225961, -0.101883,
		-0.224288, 0.974128, 0.027732,
		35.207634, 32.417145, 42.479935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810371, 32.016121, 42.835327>,  <35.364635, 31.735254, 42.460522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810371, 32.016121, 42.835327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480461, 32.240166, 42.866341>,  <35.282513, 32.374592, 42.884949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480461, 32.240166, 42.866341>,  <35.810371, 32.016121, 42.835327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480461, 32.240166, 42.866341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152641, 0.088518, 0.984310,
		0.544463, 0.823673, -0.158504,
		-0.824779, 0.560114, 0.077532,
		35.233028, 32.408199, 42.889599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956013, 32.401623, 43.446777>,  <35.810371, 32.016121, 42.835327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956013, 32.401623, 43.446777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570591, 32.478001, 43.371826>,  <35.339340, 32.523827, 43.326855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570591, 32.478001, 43.371826>,  <35.956013, 32.401623, 43.446777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570591, 32.478001, 43.371826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161545, 0.143016, 0.976448,
		0.213241, 0.971128, -0.106958,
		-0.963552, 0.190940, -0.187377,
		35.281525, 32.535282, 43.315613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846584, 32.969715, 43.881725>,  <35.956013, 32.401623, 43.446777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846584, 32.969715, 43.881725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500504, 32.794758, 43.783649>,  <35.292854, 32.689785, 43.724804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500504, 32.794758, 43.783649>,  <35.846584, 32.969715, 43.881725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500504, 32.794758, 43.783649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267017, -0.012002, 0.963617,
		-0.424419, 0.899192, -0.106407,
		-0.865199, -0.437390, -0.245194,
		35.240944, 32.663540, 43.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252613, 33.246979, 44.299717>,  <35.846584, 32.969715, 43.881725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252613, 33.246979, 44.299717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093239, 32.898205, 44.185890>,  <34.997616, 32.688938, 44.117596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093239, 32.898205, 44.185890>,  <35.252613, 33.246979, 44.299717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093239, 32.898205, 44.185890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481142, -0.065441, 0.874197,
		-0.780866, 0.485226, -0.393452,
		-0.398435, -0.871937, -0.284563,
		34.973709, 32.636623, 44.100521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637211, 33.324650, 44.448471>,  <35.252613, 33.246979, 44.299717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637211, 33.324650, 44.448471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665932, 32.925800, 44.438766>,  <34.683167, 32.686489, 44.432941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665932, 32.925800, 44.438766>,  <34.637211, 33.324650, 44.448471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665932, 32.925800, 44.438766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323408, -0.046290, 0.945127,
		-0.943531, -0.060017, -0.325801,
		0.071805, -0.997123, -0.024266,
		34.687473, 32.626663, 44.431488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028542, 33.034168, 44.818466>,  <34.637211, 33.324650, 44.448471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028542, 33.034168, 44.818466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247513, 32.699471, 44.813034>,  <34.378895, 32.498653, 44.809776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247513, 32.699471, 44.813034>,  <34.028542, 33.034168, 44.818466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247513, 32.699471, 44.813034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330317, -0.230954, 0.915178,
		-0.768906, -0.496507, -0.402821,
		0.547425, -0.836744, -0.013577,
		34.411739, 32.448448, 44.808960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540932, 32.431072, 45.020699>,  <34.028542, 33.034168, 44.818466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540932, 32.431072, 45.020699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926853, 32.354424, 45.092731>,  <34.158405, 32.308434, 45.135952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926853, 32.354424, 45.092731>,  <33.540932, 32.431072, 45.020699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926853, 32.354424, 45.092731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229865, -0.281991, 0.931473,
		-0.127703, -0.940087, -0.316113,
		0.964807, -0.191615, 0.180082,
		34.216297, 32.296940, 45.146755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494709, 31.870520, 45.435917>,  <33.540932, 32.431072, 45.020699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494709, 31.870520, 45.435917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858017, 32.023201, 45.504440>,  <34.076000, 32.114811, 45.545555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858017, 32.023201, 45.504440>,  <33.494709, 31.870520, 45.435917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858017, 32.023201, 45.504440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008239, -0.393066, 0.919473,
		0.418303, -0.836542, -0.353865,
		0.908270, 0.381703, 0.171313,
		34.130497, 32.137711, 45.555836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783691, 31.410419, 45.819164>,  <33.494709, 31.870520, 45.435917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783691, 31.410419, 45.819164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007137, 31.736359, 45.881096>,  <34.141205, 31.931923, 45.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007137, 31.736359, 45.881096>,  <33.783691, 31.410419, 45.819164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007137, 31.736359, 45.881096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032039, -0.165326, 0.985718,
		0.828807, -0.555598, -0.066247,
		0.558616, 0.814848, 0.154825,
		34.174721, 31.980814, 45.927544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108028, 31.193462, 46.372547>,  <33.783691, 31.410419, 45.819164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108028, 31.193462, 46.372547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155781, 31.590523, 46.380512>,  <34.184433, 31.828758, 46.385292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155781, 31.590523, 46.380512>,  <34.108028, 31.193462, 46.372547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155781, 31.590523, 46.380512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155689, -0.001092, 0.987805,
		0.980566, -0.121021, 0.154415,
		0.119377, 0.992649, 0.019912,
		34.191593, 31.888317, 46.386486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591686, 31.327911, 46.943424>,  <34.108028, 31.193462, 46.372547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591686, 31.327911, 46.943424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376995, 31.659533, 46.880695>,  <34.248180, 31.858505, 46.843060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376995, 31.659533, 46.880695>,  <34.591686, 31.327911, 46.943424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376995, 31.659533, 46.880695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090972, 0.127916, 0.987604,
		0.838834, 0.544346, 0.006764,
		-0.536733, 0.829051, -0.156820,
		34.215977, 31.908247, 46.833649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896328, 31.835732, 47.344788>,  <34.591686, 31.327911, 46.943424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896328, 31.835732, 47.344788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529819, 31.974228, 47.264225>,  <34.309914, 32.057327, 47.215889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529819, 31.974228, 47.264225>,  <34.896328, 31.835732, 47.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529819, 31.974228, 47.264225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136094, 0.203797, 0.969508,
		0.376730, 0.915742, -0.139612,
		-0.916271, 0.346243, -0.201403,
		34.254940, 32.078102, 47.203804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865803, 32.389278, 47.691635>,  <34.896328, 31.835732, 47.344788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865803, 32.389278, 47.691635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477940, 32.306698, 47.639259>,  <34.245224, 32.257149, 47.607834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477940, 32.306698, 47.639259>,  <34.865803, 32.389278, 47.691635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477940, 32.306698, 47.639259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157606, 0.118421, 0.980376,
		-0.186897, 0.971263, -0.147366,
		-0.969655, -0.206455, -0.130944,
		34.187042, 32.244762, 47.599976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524662, 33.029858, 47.995758>,  <34.865803, 32.389278, 47.691635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524662, 33.029858, 47.995758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281570, 32.712360, 47.985687>,  <34.135715, 32.521862, 47.979645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281570, 32.712360, 47.985687>,  <34.524662, 33.029858, 47.995758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281570, 32.712360, 47.985687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211821, 0.131462, 0.968426,
		-0.765371, 0.593879, -0.248024,
		-0.607733, -0.793742, -0.025179,
		34.099251, 32.474239, 47.978134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921482, 33.297512, 48.283783>,  <34.524662, 33.029858, 47.995758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921482, 33.297512, 48.283783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919003, 32.898693, 48.314423>,  <33.917515, 32.659401, 48.332806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919003, 32.898693, 48.314423>,  <33.921482, 33.297512, 48.283783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919003, 32.898693, 48.314423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135506, 0.076729, 0.987801,
		-0.990757, -0.004252, -0.135581,
		-0.006203, -0.997043, 0.076596,
		33.917141, 32.599579, 48.337402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440384, 33.195881, 48.840015>,  <33.921482, 33.297512, 48.283783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440384, 33.195881, 48.840015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601902, 32.834412, 48.783001>,  <33.698814, 32.617531, 48.748791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601902, 32.834412, 48.783001>,  <33.440384, 33.195881, 48.840015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601902, 32.834412, 48.783001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179198, -0.230914, 0.956330,
		-0.897126, -0.360621, -0.255180,
		0.403797, -0.903677, -0.142536,
		33.723042, 32.563309, 48.740242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052475, 32.842388, 49.259529>,  <33.440384, 33.195881, 48.840015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052475, 32.842388, 49.259529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383492, 32.624641, 49.204639>,  <33.582104, 32.493992, 49.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383492, 32.624641, 49.204639>,  <33.052475, 32.842388, 49.259529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383492, 32.624641, 49.204639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036954, -0.296726, 0.954247,
		-0.560182, -0.784612, -0.265671,
		0.827545, -0.544370, -0.137225,
		33.631756, 32.461330, 49.163471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942459, 32.146950, 49.655853>,  <33.052475, 32.842388, 49.259529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942459, 32.146950, 49.655853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336971, 32.186611, 49.603069>,  <33.573681, 32.210407, 49.571400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336971, 32.186611, 49.603069>,  <32.942459, 32.146950, 49.655853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336971, 32.186611, 49.603069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159602, -0.368997, 0.915625,
		0.042092, -0.924127, -0.379760,
		0.986283, 0.099150, -0.131961,
		33.632858, 32.216354, 49.563480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104782, 31.639084, 50.014748>,  <32.942459, 32.146950, 49.655853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104782, 31.639084, 50.014748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428432, 31.873960, 50.005703>,  <33.622623, 32.014889, 50.000275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428432, 31.873960, 50.005703>,  <33.104782, 31.639084, 50.014748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428432, 31.873960, 50.005703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186608, -0.220265, 0.957424,
		0.557212, -0.778901, -0.287798,
		0.809130, 0.587194, -0.022615,
		33.671173, 32.050117, 49.998917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756077, 31.229294, 50.139118>,  <33.104782, 31.639084, 50.014748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756077, 31.229294, 50.139118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826435, 31.609663, 50.240948>,  <33.868649, 31.837885, 50.302044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826435, 31.609663, 50.240948>,  <33.756077, 31.229294, 50.139118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826435, 31.609663, 50.240948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233596, -0.291538, 0.927598,
		0.956292, -0.103689, -0.273411,
		0.175892, 0.950923, 0.254575,
		33.879204, 31.894939, 50.317322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425892, 31.122599, 50.470955>,  <33.756077, 31.229294, 50.139118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425892, 31.122599, 50.470955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299984, 31.485048, 50.583996>,  <34.224438, 31.702518, 50.651821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299984, 31.485048, 50.583996>,  <34.425892, 31.122599, 50.470955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299984, 31.485048, 50.583996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326681, -0.176121, 0.928580,
		0.891179, 0.384608, -0.240575,
		-0.314769, 0.906123, 0.282600,
		34.205555, 31.756886, 50.668777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037243, 31.382465, 50.732952>,  <34.425892, 31.122599, 50.470955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037243, 31.382465, 50.732952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733036, 31.590219, 50.888828>,  <34.550510, 31.714872, 50.982353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733036, 31.590219, 50.888828>,  <35.037243, 31.382465, 50.732952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733036, 31.590219, 50.888828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443574, -0.022707, 0.895950,
		0.474190, 0.854240, -0.213116,
		-0.760517, 0.519383, 0.389686,
		34.504883, 31.746035, 51.005733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257767, 31.944061, 51.211922>,  <35.037243, 31.382465, 50.732952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257767, 31.944061, 51.211922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870850, 31.883383, 51.293240>,  <34.638699, 31.846975, 51.342030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870850, 31.883383, 51.293240>,  <35.257767, 31.944061, 51.211922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870850, 31.883383, 51.293240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212474, -0.046836, 0.976043,
		-0.138541, 0.987317, 0.077536,
		-0.967296, -0.151697, 0.203291,
		34.580662, 31.837873, 51.354225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151962, 32.354156, 51.748863>,  <35.257767, 31.944061, 51.211922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151962, 32.354156, 51.748863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850780, 32.093353, 51.784512>,  <34.670071, 31.936871, 51.805901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850780, 32.093353, 51.784512>,  <35.151962, 32.354156, 51.748863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850780, 32.093353, 51.784512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104525, 0.015212, 0.994406,
		-0.649719, 0.758057, 0.056698,
		-0.752954, -0.652011, 0.089120,
		34.624893, 31.897751, 51.811249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753700, 32.576824, 52.257080>,  <35.151962, 32.354156, 51.748863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753700, 32.576824, 52.257080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681412, 32.185604, 52.215595>,  <34.638039, 31.950872, 52.190704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681412, 32.185604, 52.215595>,  <34.753700, 32.576824, 52.257080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681412, 32.185604, 52.215595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198362, -0.139531, 0.970146,
		-0.963323, 0.154757, 0.219225,
		-0.180725, -0.978050, -0.103715,
		34.627193, 31.892189, 52.184483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212162, 32.188374, 52.781052>,  <34.753700, 32.576824, 52.257080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212162, 32.188374, 52.781052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500607, 31.950951, 52.638115>,  <34.673672, 31.808496, 52.552353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500607, 31.950951, 52.638115>,  <34.212162, 32.188374, 52.781052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500607, 31.950951, 52.638115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356743, -0.124029, 0.925932,
		-0.593912, -0.795178, 0.122308,
		0.721112, -0.593556, -0.357337,
		34.716942, 31.772884, 52.530914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235798, 31.420906, 53.100452>,  <34.212162, 32.188374, 52.781052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235798, 31.420906, 53.100452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574570, 31.600870, 52.987114>,  <34.777832, 31.708849, 52.919109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574570, 31.600870, 52.987114>,  <34.235798, 31.420906, 53.100452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574570, 31.600870, 52.987114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258586, 0.117107, 0.958864,
		0.464587, -0.885361, -0.017160,
		0.846931, 0.449912, -0.283348,
		34.828648, 31.735844, 52.902111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863197, 31.078690, 53.303604>,  <34.235798, 31.420906, 53.100452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863197, 31.078690, 53.303604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909927, 31.475599, 53.286888>,  <34.937965, 31.713745, 53.276859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909927, 31.475599, 53.286888>,  <34.863197, 31.078690, 53.303604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909927, 31.475599, 53.286888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414861, -0.010523, 0.909824,
		0.902354, -0.123625, -0.412884,
		0.116822, 0.992273, -0.041792,
		34.944973, 31.773281, 53.274349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653225, 31.393446, 54.040726>,  <34.863197, 31.078690, 53.303604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653225, 31.393446, 54.040726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789726, 31.180889, 54.350864>,  <34.871628, 31.053354, 54.536949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789726, 31.180889, 54.350864>,  <34.653225, 31.393446, 54.040726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789726, 31.180889, 54.350864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233131, -0.846941, -0.477850,
		0.910600, -0.017688, -0.412909,
		0.341258, -0.531393, 0.775348,
		34.892105, 31.021471, 54.583469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148441, 30.698151, 53.928764>,  <34.653225, 31.393446, 54.040726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148441, 30.698151, 53.928764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952286, 30.669548, 54.276192>,  <34.834595, 30.652386, 54.484650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952286, 30.669548, 54.276192>,  <35.148441, 30.698151, 53.928764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952286, 30.669548, 54.276192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312472, -0.915940, -0.251825,
		0.813562, -0.394894, 0.426820,
		-0.490385, -0.071506, 0.868567,
		34.805172, 30.648096, 54.536762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273449, 29.956371, 54.155609>,  <35.148441, 30.698151, 53.928764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273449, 29.956371, 54.155609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936752, 30.131987, 54.281284>,  <34.734734, 30.237356, 54.356689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936752, 30.131987, 54.281284>,  <35.273449, 29.956371, 54.155609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936752, 30.131987, 54.281284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518379, -0.819855, -0.243149,
		0.150835, -0.367536, 0.917696,
		-0.841743, 0.439039, 0.314186,
		34.684231, 30.263699, 54.375542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889500, 29.521582, 54.594273>,  <35.273449, 29.956371, 54.155609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889500, 29.521582, 54.594273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638641, 29.761507, 54.395512>,  <34.488129, 29.905462, 54.276253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638641, 29.761507, 54.395512>,  <34.889500, 29.521582, 54.594273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638641, 29.761507, 54.395512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505461, -0.798784, -0.326270,
		-0.592621, 0.046548, 0.804135,
		-0.627143, 0.599814, -0.496905,
		34.450497, 29.941452, 54.246441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064770, 28.897198, 54.190559>,  <34.889500, 29.521582, 54.594273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064770, 28.897198, 54.190559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747429, 28.701946, 54.045059>,  <34.557022, 28.584795, 53.957760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747429, 28.701946, 54.045059>,  <35.064770, 28.897198, 54.190559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747429, 28.701946, 54.045059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141873, 0.432824, -0.890244,
		0.591995, -0.757887, -0.274131,
		-0.793356, -0.488129, -0.363754,
		34.509422, 28.555508, 53.935932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256550, 28.484430, 53.628716>,  <35.064770, 28.897198, 54.190559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256550, 28.484430, 53.628716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881042, 28.619114, 53.599499>,  <34.655739, 28.699924, 53.581966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881042, 28.619114, 53.599499>,  <35.256550, 28.484430, 53.628716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881042, 28.619114, 53.599499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166177, 0.256769, -0.952080,
		-0.301818, -0.905923, -0.297000,
		-0.938771, 0.336709, -0.073046,
		34.599411, 28.720127, 53.577583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796257, 28.058022, 53.110554>,  <35.256550, 28.484430, 53.628716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796257, 28.058022, 53.110554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775494, 28.456959, 53.131001>,  <34.763035, 28.696321, 53.143269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775494, 28.456959, 53.131001>,  <34.796257, 28.058022, 53.110554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775494, 28.456959, 53.131001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270553, 0.063319, -0.960620,
		-0.961305, -0.036032, -0.273121,
		-0.051907, 0.997343, 0.051120,
		34.759922, 28.756161, 53.146336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038380, 28.644405, 52.687790>,  <34.796257, 28.058022, 53.110554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038380, 28.644405, 52.687790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966381, 29.025761, 52.590919>,  <34.923180, 29.254574, 52.532799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966381, 29.025761, 52.590919>,  <35.038380, 28.644405, 52.687790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966381, 29.025761, 52.590919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011339, -0.244170, -0.969666,
		-0.983601, -0.177285, 0.033140,
		-0.179999, 0.953389, -0.242177,
		34.912380, 29.311777, 52.518265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768879, 28.437864, 52.095215>,  <35.038380, 28.644405, 52.687790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768879, 28.437864, 52.095215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864197, 28.825563, 52.070656>,  <34.921387, 29.058184, 52.055920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864197, 28.825563, 52.070656>,  <34.768879, 28.437864, 52.095215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864197, 28.825563, 52.070656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245193, -0.121211, -0.961867,
		-0.939731, 0.214158, -0.266538,
		0.238299, 0.969249, -0.061396,
		34.935688, 29.116339, 52.052238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466740, 28.688898, 51.467182>,  <34.768879, 28.437864, 52.095215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466740, 28.688898, 51.467182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781612, 28.911148, 51.574230>,  <34.970535, 29.044498, 51.638458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781612, 28.911148, 51.574230>,  <34.466740, 28.688898, 51.467182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781612, 28.911148, 51.574230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359833, -0.061374, -0.930996,
		-0.500859, 0.829165, -0.248245,
		0.787185, 0.555624, 0.267621,
		35.017769, 29.077835, 51.654518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564613, 29.101103, 50.955734>,  <34.466740, 28.688898, 51.467182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564613, 29.101103, 50.955734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916107, 29.114069, 51.146217>,  <35.127003, 29.121849, 51.260506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916107, 29.114069, 51.146217>,  <34.564613, 29.101103, 50.955734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916107, 29.114069, 51.146217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475162, 0.035097, -0.879198,
		-0.045213, 0.998858, 0.015439,
		0.878736, 0.032415, 0.476207,
		35.179729, 29.123793, 51.289078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943947, 29.719954, 50.733364>,  <34.564613, 29.101103, 50.955734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943947, 29.719954, 50.733364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229984, 29.485142, 50.885178>,  <35.401608, 29.344254, 50.976265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229984, 29.485142, 50.885178>,  <34.943947, 29.719954, 50.733364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229984, 29.485142, 50.885178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496934, 0.045050, -0.866618,
		0.491633, 0.808311, 0.323930,
		0.715090, -0.587030, 0.379529,
		35.444511, 29.309032, 50.999035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626160, 30.135862, 50.753544>,  <34.943947, 29.719954, 50.733364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626160, 30.135862, 50.753544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708149, 29.744354, 50.753757>,  <35.757343, 29.509449, 50.753887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708149, 29.744354, 50.753757>,  <35.626160, 30.135862, 50.753544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708149, 29.744354, 50.753757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591879, 0.123513, -0.796508,
		0.779530, 0.163579, 0.604628,
		0.204971, -0.978768, 0.000537,
		35.769642, 29.450724, 50.753918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208530, 30.144976, 50.568752>,  <35.626160, 30.135862, 50.753544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208530, 30.144976, 50.568752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098518, 29.768148, 50.491947>,  <36.032513, 29.542051, 50.445866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098518, 29.768148, 50.491947>,  <36.208530, 30.144976, 50.568752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098518, 29.768148, 50.491947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408781, 0.066185, -0.910230,
		0.870206, -0.328829, 0.366896,
		-0.275027, -0.942068, -0.192014,
		36.016010, 29.485529, 50.434341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638371, 29.892225, 50.219830>,  <36.208530, 30.144976, 50.568752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638371, 29.892225, 50.219830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342724, 29.641785, 50.120464>,  <36.165337, 29.491520, 50.060844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342724, 29.641785, 50.120464>,  <36.638371, 29.892225, 50.219830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342724, 29.641785, 50.120464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321676, -0.004062, -0.946841,
		0.591808, -0.779733, 0.204404,
		-0.739113, -0.626100, -0.248417,
		36.120991, 29.453955, 50.045940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979420, 29.364695, 49.867596>,  <36.638371, 29.892225, 50.219830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979420, 29.364695, 49.867596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591301, 29.345045, 49.772842>,  <36.358429, 29.333256, 49.715988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591301, 29.345045, 49.772842>,  <36.979420, 29.364695, 49.867596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591301, 29.345045, 49.772842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241184, -0.119855, -0.963050,
		0.018919, -0.991576, 0.128143,
		-0.970295, -0.049126, -0.236885,
		36.300213, 29.330307, 49.701778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010662, 28.836485, 49.403893>,  <36.979420, 29.364695, 49.867596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010662, 28.836485, 49.403893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660831, 29.014338, 49.326523>,  <36.450932, 29.121050, 49.280102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660831, 29.014338, 49.326523>,  <37.010662, 28.836485, 49.403893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660831, 29.014338, 49.326523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167651, -0.097019, -0.981061,
		-0.454977, -0.890444, 0.010308,
		-0.874579, 0.444632, -0.193426,
		36.398457, 29.147726, 49.268494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963871, 28.667610, 48.724625>,  <37.010662, 28.836485, 49.403893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963871, 28.667610, 48.724625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672928, 28.939453, 48.762764>,  <36.498363, 29.102558, 48.785648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672928, 28.939453, 48.762764>,  <36.963871, 28.667610, 48.724625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672928, 28.939453, 48.762764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153631, -0.025846, -0.987790,
		-0.668844, -0.733122, 0.123208,
		-0.727355, 0.679606, 0.095344,
		36.454720, 29.143335, 48.791367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435276, 28.326603, 48.404434>,  <36.963871, 28.667610, 48.724625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435276, 28.326603, 48.404434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399460, 28.724606, 48.386795>,  <36.377968, 28.963408, 48.376213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399460, 28.724606, 48.386795>,  <36.435276, 28.326603, 48.404434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399460, 28.724606, 48.386795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178379, -0.027534, -0.983576,
		-0.979879, -0.095938, -0.175023,
		-0.089543, 0.995006, -0.044094,
		36.372597, 29.023108, 48.373566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151207, 28.362579, 47.775444>,  <36.435276, 28.326603, 48.404434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151207, 28.362579, 47.775444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252865, 28.742210, 47.849911>,  <36.313858, 28.969990, 47.894592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252865, 28.742210, 47.849911>,  <36.151207, 28.362579, 47.775444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252865, 28.742210, 47.849911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110025, 0.162866, -0.980494,
		-0.960887, 0.269672, -0.063031,
		0.254146, 0.949080, 0.186166,
		36.329109, 29.026934, 47.905762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066029, 28.640415, 47.117149>,  <36.151207, 28.362579, 47.775444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066029, 28.640415, 47.117149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239635, 28.967339, 47.268749>,  <36.343800, 29.163492, 47.359707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239635, 28.967339, 47.268749>,  <36.066029, 28.640415, 47.117149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239635, 28.967339, 47.268749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235216, 0.303290, -0.923411,
		-0.869657, 0.489921, -0.060611,
		0.434016, 0.817308, 0.378996,
		36.369839, 29.212530, 47.382446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704262, 29.176487, 46.846962>,  <36.066029, 28.640415, 47.117149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704262, 29.176487, 46.846962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079926, 29.285051, 46.931175>,  <36.305325, 29.350189, 46.981705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079926, 29.285051, 46.931175>,  <35.704262, 29.176487, 46.846962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079926, 29.285051, 46.931175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072917, 0.441429, -0.894329,
		-0.335665, 0.855265, 0.394780,
		0.939155, 0.271409, 0.210536,
		36.361671, 29.366474, 46.994335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829994, 29.736128, 46.441227>,  <35.704262, 29.176487, 46.846962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829994, 29.736128, 46.441227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216393, 29.664740, 46.516068>,  <36.448231, 29.621906, 46.560970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216393, 29.664740, 46.516068>,  <35.829994, 29.736128, 46.441227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216393, 29.664740, 46.516068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237557, 0.326850, -0.914733,
		0.102101, 0.928072, 0.358131,
		0.965993, -0.178472, 0.187098,
		36.506191, 29.611198, 46.572197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108391, 30.349972, 46.346596>,  <35.829994, 29.736128, 46.441227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108391, 30.349972, 46.346596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379025, 30.062685, 46.281609>,  <36.541405, 29.890312, 46.242619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379025, 30.062685, 46.281609>,  <36.108391, 30.349972, 46.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379025, 30.062685, 46.281609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115533, 0.321439, -0.939856,
		0.727243, 0.617124, 0.300459,
		0.676587, -0.718216, -0.162466,
		36.582001, 29.847219, 46.232868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619148, 30.685448, 45.936367>,  <36.108391, 30.349972, 46.346596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619148, 30.685448, 45.936367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682274, 30.294853, 45.877617>,  <36.720150, 30.060497, 45.842365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682274, 30.294853, 45.877617>,  <36.619148, 30.685448, 45.936367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682274, 30.294853, 45.877617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256185, 0.184136, -0.948927,
		0.953658, 0.112128, 0.279221,
		0.157816, -0.976484, -0.146878,
		36.729618, 30.001907, 45.833553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255924, 30.709692, 45.598209>,  <36.619148, 30.685448, 45.936367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255924, 30.709692, 45.598209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084484, 30.360233, 45.506084>,  <36.981621, 30.150558, 45.450809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084484, 30.360233, 45.506084>,  <37.255924, 30.709692, 45.598209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084484, 30.360233, 45.506084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298353, 0.103758, -0.948799,
		0.852813, -0.475367, 0.216185,
		-0.428597, -0.873648, -0.230313,
		36.955906, 30.098139, 45.436989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804005, 30.387171, 45.253689>,  <37.255924, 30.709692, 45.598209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804005, 30.387171, 45.253689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463676, 30.200689, 45.156731>,  <37.259480, 30.088800, 45.098557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463676, 30.200689, 45.156731>,  <37.804005, 30.387171, 45.253689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463676, 30.200689, 45.156731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252064, 0.042638, -0.966771,
		0.461047, -0.883649, 0.081236,
		-0.850822, -0.466204, -0.242395,
		37.208431, 30.060829, 45.084011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005455, 29.843582, 44.792622>,  <37.804005, 30.387171, 45.253689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005455, 29.843582, 44.792622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615711, 29.893009, 44.717403>,  <37.381866, 29.922667, 44.672272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615711, 29.893009, 44.717403>,  <38.005455, 29.843582, 44.792622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615711, 29.893009, 44.717403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198328, 0.076876, -0.977116,
		-0.106285, -0.989354, -0.099411,
		-0.974356, 0.123569, -0.188046,
		37.323406, 29.930080, 44.660988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901108, 29.443712, 44.171494>,  <38.005455, 29.843582, 44.792622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901108, 29.443712, 44.171494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604179, 29.711321, 44.186287>,  <37.426022, 29.871887, 44.195164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604179, 29.711321, 44.186287>,  <37.901108, 29.443712, 44.171494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604179, 29.711321, 44.186287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079479, 0.142722, -0.986566,
		-0.665314, -0.729409, -0.159119,
		-0.742321, 0.669023, 0.036982,
		37.381481, 29.912027, 44.197380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535530, 29.304049, 43.591839>,  <37.901108, 29.443712, 44.171494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535530, 29.304049, 43.591839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426888, 29.675028, 43.694656>,  <37.361702, 29.897615, 43.756348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426888, 29.675028, 43.694656>,  <37.535530, 29.304049, 43.591839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426888, 29.675028, 43.694656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025208, 0.273846, -0.961443,
		-0.962079, -0.254652, -0.097756,
		-0.271604, 0.927448, 0.257042,
		37.345406, 29.953262, 43.771770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112804, 29.432312, 43.015854>,  <37.535530, 29.304049, 43.591839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112804, 29.432312, 43.015854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174248, 29.792740, 43.178078>,  <37.211113, 30.008997, 43.275414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174248, 29.792740, 43.178078>,  <37.112804, 29.432312, 43.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174248, 29.792740, 43.178078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004262, 0.411032, -0.911611,
		-0.988123, 0.138299, 0.066977,
		0.153605, 0.901069, 0.405561,
		37.220329, 30.063061, 43.299747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577110, 29.840788, 42.848133>,  <37.112804, 29.432312, 43.015854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577110, 29.840788, 42.848133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879066, 30.092886, 42.920715>,  <37.060242, 30.244144, 42.964264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879066, 30.092886, 42.920715>,  <36.577110, 29.840788, 42.848133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879066, 30.092886, 42.920715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143171, 0.428365, -0.892192,
		-0.640031, 0.647529, 0.413602,
		0.754892, 0.630246, 0.181459,
		37.105534, 30.281960, 42.975155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372257, 30.496912, 42.519337>,  <36.577110, 29.840788, 42.848133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372257, 30.496912, 42.519337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769489, 30.528275, 42.554291>,  <37.007828, 30.547092, 42.575264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769489, 30.528275, 42.554291>,  <36.372257, 30.496912, 42.519337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769489, 30.528275, 42.554291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050291, 0.388456, -0.920094,
		-0.106087, 0.918125, 0.381826,
		0.993084, 0.078407, 0.087384,
		37.067413, 30.551796, 42.580505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471947, 31.132490, 42.244259>,  <36.372257, 30.496912, 42.519337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471947, 31.132490, 42.244259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830410, 30.954998, 42.244396>,  <37.045490, 30.848503, 42.244480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830410, 30.954998, 42.244396>,  <36.471947, 31.132490, 42.244259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830410, 30.954998, 42.244396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227236, 0.458259, -0.859280,
		0.381129, 0.770132, 0.511505,
		0.896161, -0.443728, 0.000346,
		37.099258, 30.821880, 42.244499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000900, 31.664351, 41.983521>,  <36.471947, 31.132490, 42.244259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000900, 31.664351, 41.983521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170647, 31.306343, 41.928585>,  <37.272495, 31.091539, 41.895622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170647, 31.306343, 41.928585>,  <37.000900, 31.664351, 41.983521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170647, 31.306343, 41.928585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287459, 0.276989, -0.916866,
		0.858652, 0.349604, 0.374825,
		0.424363, -0.895016, -0.137340,
		37.297955, 31.037838, 41.887383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541786, 31.840139, 41.606262>,  <37.000900, 31.664351, 41.983521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541786, 31.840139, 41.606262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514183, 31.442371, 41.574356>,  <37.497620, 31.203711, 41.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514183, 31.442371, 41.574356>,  <37.541786, 31.840139, 41.606262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514183, 31.442371, 41.574356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261052, 0.059165, -0.963510,
		0.962855, -0.087316, 0.255513,
		-0.069012, -0.994422, -0.079762,
		37.493481, 31.144045, 41.550426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126087, 31.625494, 41.230347>,  <37.541786, 31.840139, 41.606262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126087, 31.625494, 41.230347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842888, 31.348843, 41.173233>,  <37.672970, 31.182852, 41.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842888, 31.348843, 41.173233>,  <38.126087, 31.625494, 41.230347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842888, 31.348843, 41.173233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260163, -0.067476, -0.963204,
		0.656547, -0.719093, 0.227709,
		-0.707998, -0.691630, -0.142781,
		37.630489, 31.141354, 41.130398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491875, 31.068565, 40.953270>,  <38.126087, 31.625494, 41.230347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491875, 31.068565, 40.953270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100204, 31.023550, 40.885677>,  <37.865204, 30.996540, 40.845123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100204, 31.023550, 40.885677>,  <38.491875, 31.068565, 40.953270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100204, 31.023550, 40.885677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182150, -0.119361, -0.975999,
		0.089669, -0.986452, 0.137374,
		-0.979174, -0.112539, -0.168980,
		37.806454, 30.989788, 40.834984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539410, 30.588840, 40.338234>,  <38.491875, 31.068565, 40.953270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539410, 30.588840, 40.338234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166252, 30.732870, 40.341053>,  <37.942356, 30.819288, 40.342743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166252, 30.732870, 40.341053>,  <38.539410, 30.588840, 40.338234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166252, 30.732870, 40.341053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029989, -0.058175, -0.997856,
		-0.358892, -0.931108, 0.065069,
		-0.932897, 0.360074, 0.007044,
		37.886383, 30.840893, 40.343166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214321, 30.285843, 39.858009>,  <38.539410, 30.588840, 40.338234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214321, 30.285843, 39.858009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988480, 30.613319, 39.899895>,  <37.852974, 30.809805, 39.925026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988480, 30.613319, 39.899895>,  <38.214321, 30.285843, 39.858009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988480, 30.613319, 39.899895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214796, -0.023248, -0.976382,
		-0.796923, -0.573761, 0.188978,
		-0.564603, 0.818693, 0.104715,
		37.819099, 30.858927, 39.931309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617664, 30.182631, 39.438210>,  <38.214321, 30.285843, 39.858009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617664, 30.182631, 39.438210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623840, 30.577145, 39.503944>,  <37.627544, 30.813852, 39.543385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623840, 30.577145, 39.503944>,  <37.617664, 30.182631, 39.438210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623840, 30.577145, 39.503944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042585, 0.164858, -0.985398,
		-0.998974, 0.008215, 0.044546,
		0.015438, 0.986283, 0.164339,
		37.628471, 30.873030, 39.553246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020176, 30.520952, 39.040577>,  <37.617664, 30.182631, 39.438210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020176, 30.520952, 39.040577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275116, 30.819382, 39.117680>,  <37.428082, 30.998440, 39.163940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275116, 30.819382, 39.117680>,  <37.020176, 30.520952, 39.040577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275116, 30.819382, 39.117680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041970, 0.283383, -0.958088,
		-0.769428, 0.602550, 0.211928,
		0.637353, 0.746075, 0.192754,
		37.466320, 31.043203, 39.175507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736176, 31.036581, 38.703712>,  <37.020176, 30.520952, 39.040577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736176, 31.036581, 38.703712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109867, 31.158627, 38.777599>,  <37.334084, 31.231853, 38.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109867, 31.158627, 38.777599>,  <36.736176, 31.036581, 38.703712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109867, 31.158627, 38.777599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063465, 0.367416, -0.927889,
		-0.350977, 0.878585, 0.323887,
		0.934231, 0.305112, 0.184714,
		37.390137, 31.250160, 38.833012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776669, 31.726332, 38.491962>,  <36.736176, 31.036581, 38.703712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776669, 31.726332, 38.491962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168472, 31.647383, 38.507988>,  <37.403553, 31.600014, 38.517601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168472, 31.647383, 38.507988>,  <36.776669, 31.726332, 38.491962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168472, 31.647383, 38.507988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146841, 0.563760, -0.812781,
		0.137838, 0.802009, 0.581190,
		0.979509, -0.197374, 0.040061,
		37.462326, 31.588171, 38.520008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084103, 32.321480, 38.434490>,  <36.776669, 31.726332, 38.491962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084103, 32.321480, 38.434490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357903, 32.052631, 38.321556>,  <37.522182, 31.891323, 38.253796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357903, 32.052631, 38.321556>,  <37.084103, 32.321480, 38.434490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357903, 32.052631, 38.321556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082360, 0.456103, -0.886108,
		0.724342, 0.583292, 0.367560,
		0.684504, -0.672117, -0.282335,
		37.563255, 31.850996, 38.236855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580990, 32.719196, 38.261780>,  <37.084103, 32.321480, 38.434490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580990, 32.719196, 38.261780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597969, 32.372601, 38.062824>,  <37.608158, 32.164642, 37.943451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597969, 32.372601, 38.062824>,  <37.580990, 32.719196, 38.261780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597969, 32.372601, 38.062824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045823, 0.498998, -0.865391,
		0.998047, 0.013942, 0.060886,
		0.042447, -0.866491, -0.497385,
		37.610703, 32.112652, 37.913609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199505, 32.796185, 37.850231>,  <37.580990, 32.719196, 38.261780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199505, 32.796185, 37.850231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019089, 32.491844, 37.663609>,  <37.910839, 32.309238, 37.551636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019089, 32.491844, 37.663609>,  <38.199505, 32.796185, 37.850231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019089, 32.491844, 37.663609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228809, 0.406701, -0.884443,
		0.862677, -0.505669, -0.009348,
		-0.451037, -0.760850, -0.466554,
		37.883778, 32.263588, 37.523643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659019, 32.624577, 37.308815>,  <38.199505, 32.796185, 37.850231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659019, 32.624577, 37.308815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309868, 32.458878, 37.205673>,  <38.100376, 32.359459, 37.143787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309868, 32.458878, 37.205673>,  <38.659019, 32.624577, 37.308815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309868, 32.458878, 37.205673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087313, 0.387324, -0.917800,
		0.480069, -0.823638, -0.301916,
		-0.872875, -0.414247, -0.257856,
		38.048004, 32.334602, 37.128315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087257, 32.543610, 37.834148>,  <38.659019, 32.624577, 37.308815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087257, 32.543610, 37.834148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328728, 32.861130, 37.804604>,  <39.473610, 33.051643, 37.786877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328728, 32.861130, 37.804604>,  <39.087257, 32.543610, 37.834148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328728, 32.861130, 37.804604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564428, -0.360122, 0.742788,
		0.563028, -0.490090, -0.665440,
		0.603673, 0.793803, -0.073861,
		39.509830, 33.099270, 37.782444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581547, 32.406349, 38.243465>,  <39.087257, 32.543610, 37.834148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581547, 32.406349, 38.243465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693436, 32.785522, 38.182560>,  <39.760571, 33.013027, 38.146019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693436, 32.785522, 38.182560>,  <39.581547, 32.406349, 38.243465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693436, 32.785522, 38.182560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784977, -0.134498, 0.604749,
		0.552782, -0.288683, -0.781725,
		0.279721, 0.947931, -0.152262,
		39.777351, 33.069901, 38.136883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375622, 32.398453, 38.116844>,  <39.581547, 32.406349, 38.243465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375622, 32.398453, 38.116844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239075, 32.739407, 38.275295>,  <40.157146, 32.943977, 38.370365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239075, 32.739407, 38.275295>,  <40.375622, 32.398453, 38.116844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239075, 32.739407, 38.275295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622533, -0.110725, 0.774721,
		0.704219, 0.511065, -0.492837,
		-0.341364, 0.852381, 0.396129,
		40.136665, 32.995121, 38.394135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930016, 32.579678, 38.630360>,  <40.375622, 32.398453, 38.116844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930016, 32.579678, 38.630360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610065, 32.795273, 38.735962>,  <40.418095, 32.924629, 38.799324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610065, 32.795273, 38.735962>,  <40.930016, 32.579678, 38.630360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610065, 32.795273, 38.735962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155458, -0.238802, 0.958544,
		0.579689, 0.807752, 0.107221,
		-0.799871, 0.538989, 0.264003,
		40.370106, 32.956970, 38.815163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190502, 33.065449, 39.004971>,  <40.930016, 32.579678, 38.630360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190502, 33.065449, 39.004971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806446, 33.063576, 39.116760>,  <40.576012, 33.062450, 39.183834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806446, 33.063576, 39.116760>,  <41.190502, 33.065449, 39.004971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806446, 33.063576, 39.116760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269343, -0.282816, 0.920581,
		0.074731, 0.959163, 0.272805,
		-0.960141, -0.004682, 0.279479,
		40.518402, 33.062172, 39.200603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188972, 33.523293, 39.572868>,  <41.190502, 33.065449, 39.004971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188972, 33.523293, 39.572868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870277, 33.281998, 39.587357>,  <40.679062, 33.137222, 39.596050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870277, 33.281998, 39.587357>,  <41.188972, 33.523293, 39.572868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870277, 33.281998, 39.587357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230386, -0.247785, 0.941023,
		-0.558687, 0.758093, 0.336398,
		-0.796738, -0.603239, 0.036220,
		40.631256, 33.101025, 39.598221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859661, 33.738029, 40.154793>,  <41.188972, 33.523293, 39.572868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859661, 33.738029, 40.154793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755119, 33.359112, 40.080681>,  <40.692394, 33.131760, 40.036213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755119, 33.359112, 40.080681>,  <40.859661, 33.738029, 40.154793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755119, 33.359112, 40.080681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085886, -0.214016, 0.973047,
		-0.961415, 0.238394, 0.137293,
		-0.261351, -0.947294, -0.185283,
		40.676716, 33.074924, 40.025097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370010, 33.642643, 40.662819>,  <40.859661, 33.738029, 40.154793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370010, 33.642643, 40.662819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438618, 33.257217, 40.580715>,  <40.479782, 33.025963, 40.531452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438618, 33.257217, 40.580715>,  <40.370010, 33.642643, 40.662819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438618, 33.257217, 40.580715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020601, -0.204794, 0.978588,
		-0.984966, -0.172071, -0.015275,
		0.171515, -0.963562, -0.205260,
		40.490070, 32.968147, 40.519138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888985, 33.332882, 41.067150>,  <40.370010, 33.642643, 40.662819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888985, 33.332882, 41.067150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156136, 33.039616, 41.015911>,  <40.316425, 32.863655, 40.985168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156136, 33.039616, 41.015911>,  <39.888985, 33.332882, 41.067150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156136, 33.039616, 41.015911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081190, -0.099320, 0.991738,
		-0.739830, -0.672760, -0.006808,
		0.667878, -0.733164, -0.128102,
		40.356499, 32.819668, 40.977482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646690, 32.666573, 41.430908>,  <39.888985, 33.332882, 41.067150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646690, 32.666573, 41.430908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044632, 32.643036, 41.397900>,  <40.283398, 32.628914, 41.378094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044632, 32.643036, 41.397900>,  <39.646690, 32.666573, 41.430908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044632, 32.643036, 41.397900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063812, -0.268913, 0.961048,
		-0.078740, -0.961365, -0.263774,
		0.994851, -0.058841, -0.082520,
		40.343086, 32.625381, 41.373142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661087, 31.859148, 41.544247>,  <39.646690, 32.666573, 41.430908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661087, 31.859148, 41.544247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024090, 32.024448, 41.574337>,  <40.241890, 32.123631, 41.592392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024090, 32.024448, 41.574337>,  <39.661087, 31.859148, 41.544247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024090, 32.024448, 41.574337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133305, -0.453190, 0.881390,
		0.398330, -0.789836, -0.466360,
		0.907504, 0.413253, 0.075230,
		40.296341, 32.148426, 41.596905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049561, 31.406424, 41.691147>,  <39.661087, 31.859148, 41.544247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049561, 31.406424, 41.691147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267605, 31.717604, 41.816143>,  <40.398434, 31.904312, 41.891140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267605, 31.717604, 41.816143>,  <40.049561, 31.406424, 41.691147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267605, 31.717604, 41.816143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033933, -0.392902, 0.918954,
		0.837675, -0.490331, -0.240574,
		0.545114, 0.777948, 0.312486,
		40.431137, 31.950989, 41.909889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615520, 31.215296, 42.167404>,  <40.049561, 31.406424, 41.691147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615520, 31.215296, 42.167404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521156, 31.594406, 42.253254>,  <40.464539, 31.821873, 42.304764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521156, 31.594406, 42.253254>,  <40.615520, 31.215296, 42.167404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521156, 31.594406, 42.253254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189571, -0.171729, 0.966733,
		0.953105, 0.268749, -0.139159,
		-0.235911, 0.947778, 0.214623,
		40.450382, 31.878740, 42.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066017, 31.356524, 42.706684>,  <40.615520, 31.215296, 42.167404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066017, 31.356524, 42.706684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797493, 31.650906, 42.741810>,  <40.636379, 31.827534, 42.762886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797493, 31.650906, 42.741810>,  <41.066017, 31.356524, 42.706684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797493, 31.650906, 42.741810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008831, -0.110529, 0.993834,
		0.741122, 0.667949, 0.067700,
		-0.671313, 0.735954, 0.087814,
		40.596100, 31.871693, 42.768154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320503, 31.743952, 43.327057>,  <41.066017, 31.356524, 42.706684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320503, 31.743952, 43.327057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938644, 31.845678, 43.265129>,  <40.709530, 31.906715, 43.227974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938644, 31.845678, 43.265129>,  <41.320503, 31.743952, 43.327057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938644, 31.845678, 43.265129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199571, -0.160717, 0.966613,
		0.220945, 0.953673, 0.204183,
		-0.954649, 0.254318, -0.154816,
		40.652248, 31.921974, 43.218685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164539, 32.126579, 43.933662>,  <41.320503, 31.743952, 43.327057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164539, 32.126579, 43.933662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801998, 32.032543, 43.793224>,  <40.584473, 31.976122, 43.708961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801998, 32.032543, 43.793224>,  <41.164539, 32.126579, 43.933662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801998, 32.032543, 43.793224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263879, -0.334033, 0.904870,
		-0.330000, 0.912774, 0.240716,
		-0.906349, -0.235087, -0.351092,
		40.530094, 31.962017, 43.687897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625370, 32.440685, 44.438999>,  <41.164539, 32.126579, 43.933662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625370, 32.440685, 44.438999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427376, 32.168377, 44.223019>,  <40.308578, 32.004993, 44.093430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427376, 32.168377, 44.223019>,  <40.625370, 32.440685, 44.438999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427376, 32.168377, 44.223019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287207, -0.458299, 0.841115,
		-0.820062, 0.571416, 0.031331,
		-0.494985, -0.680768, -0.539948,
		40.278881, 31.964146, 44.061035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991909, 32.322903, 44.786747>,  <40.625370, 32.440685, 44.438999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991909, 32.322903, 44.786747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038906, 31.998837, 44.557026>,  <40.067104, 31.804396, 44.419193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038906, 31.998837, 44.557026>,  <39.991909, 32.322903, 44.786747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038906, 31.998837, 44.557026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459165, -0.557098, 0.691961,
		-0.880547, 0.182395, -0.437458,
		0.117497, -0.810169, -0.574300,
		40.074154, 31.755785, 44.384735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284985, 31.998272, 44.753212>,  <39.991909, 32.322903, 44.786747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284985, 31.998272, 44.753212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557854, 31.712397, 44.691418>,  <39.721573, 31.540871, 44.654343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557854, 31.712397, 44.691418>,  <39.284985, 31.998272, 44.753212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557854, 31.712397, 44.691418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446506, -0.574470, 0.686015,
		-0.579046, -0.398988, -0.710996,
		0.682157, -0.714698, -0.154494,
		39.762505, 31.497990, 44.645073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900013, 31.449024, 44.715694>,  <39.284985, 31.998272, 44.753212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900013, 31.449024, 44.715694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263100, 31.299295, 44.791523>,  <39.480953, 31.209459, 44.837021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263100, 31.299295, 44.791523>,  <38.900013, 31.449024, 44.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263100, 31.299295, 44.791523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382723, -0.553477, 0.739720,
		-0.171970, -0.744008, -0.645661,
		0.907716, -0.374319, 0.189567,
		39.535416, 31.187000, 44.848392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804630, 30.722500, 44.634678>,  <38.900013, 31.449024, 44.715694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804630, 30.722500, 44.634678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142601, 30.806675, 44.831379>,  <39.345383, 30.857180, 44.949398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142601, 30.806675, 44.831379>,  <38.804630, 30.722500, 44.634678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142601, 30.806675, 44.831379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367410, -0.439817, 0.819494,
		0.388735, -0.873085, -0.294294,
		0.844923, 0.210439, 0.491752,
		39.396076, 30.869806, 44.978905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074974, 30.063715, 44.965454>,  <38.804630, 30.722500, 44.634678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074974, 30.063715, 44.965454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211681, 30.377504, 45.172451>,  <39.293705, 30.565779, 45.296650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211681, 30.377504, 45.172451>,  <39.074974, 30.063715, 44.965454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211681, 30.377504, 45.172451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300501, -0.430522, 0.851088,
		0.890448, -0.446378, 0.088598,
		0.341764, 0.784473, 0.517494,
		39.314209, 30.612846, 45.327698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528522, 29.859203, 45.543251>,  <39.074974, 30.063715, 44.965454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528522, 29.859203, 45.543251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412758, 30.223904, 45.659836>,  <39.343300, 30.442724, 45.729786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412758, 30.223904, 45.659836>,  <39.528522, 29.859203, 45.543251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412758, 30.223904, 45.659836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201094, -0.355613, 0.912744,
		0.935844, 0.205544, 0.286265,
		-0.289409, 0.911752, 0.291464,
		39.325935, 30.497429, 45.747276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615841, 29.834623, 46.302578>,  <39.528522, 29.859203, 45.543251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615841, 29.834623, 46.302578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424179, 30.182980, 46.258831>,  <39.309181, 30.391994, 46.232582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424179, 30.182980, 46.258831>,  <39.615841, 29.834623, 46.302578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424179, 30.182980, 46.258831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326096, -0.060947, 0.943370,
		0.814907, 0.487682, 0.313197,
		-0.479153, 0.870892, -0.109365,
		39.280434, 30.444246, 46.226021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853050, 30.389610, 46.788097>,  <39.615841, 29.834623, 46.302578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853050, 30.389610, 46.788097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483604, 30.495060, 46.676792>,  <39.261936, 30.558329, 46.610008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483604, 30.495060, 46.676792>,  <39.853050, 30.389610, 46.788097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483604, 30.495060, 46.676792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245440, 0.150878, 0.957598,
		0.294430, 0.952753, -0.074650,
		-0.923618, 0.263623, -0.278267,
		39.206520, 30.574146, 46.593311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716846, 30.964403, 47.145443>,  <39.853050, 30.389610, 46.788097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716846, 30.964403, 47.145443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361744, 30.813215, 47.040348>,  <39.148682, 30.722502, 46.977291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361744, 30.813215, 47.040348>,  <39.716846, 30.964403, 47.145443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361744, 30.813215, 47.040348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325662, 0.112326, 0.938790,
		-0.325323, 0.918978, -0.222809,
		-0.887755, -0.377971, -0.262734,
		39.095417, 30.699823, 46.961529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077812, 31.480331, 47.165398>,  <39.716846, 30.964403, 47.145443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077812, 31.480331, 47.165398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890480, 31.129536, 47.208397>,  <38.778080, 30.919058, 47.234196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890480, 31.129536, 47.208397>,  <39.077812, 31.480331, 47.165398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890480, 31.129536, 47.208397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298609, 0.271610, 0.914910,
		-0.831564, 0.396380, -0.389080,
		-0.468330, -0.876990, 0.107498,
		38.749981, 30.866438, 47.240646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319939, 31.543041, 47.290901>,  <39.077812, 31.480331, 47.165398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319939, 31.543041, 47.290901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406673, 31.175074, 47.421577>,  <38.458714, 30.954292, 47.499985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406673, 31.175074, 47.421577>,  <38.319939, 31.543041, 47.290901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406673, 31.175074, 47.421577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500726, 0.182469, 0.846155,
		-0.838006, -0.347065, -0.421061,
		0.216840, -0.919919, 0.326695,
		38.471725, 30.899097, 47.519585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686317, 31.302006, 47.582504>,  <38.319939, 31.543041, 47.290901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686317, 31.302006, 47.582504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990353, 31.101053, 47.747368>,  <38.172775, 30.980482, 47.846287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990353, 31.101053, 47.747368>,  <37.686317, 31.302006, 47.582504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990353, 31.101053, 47.747368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471681, 0.009727, 0.881716,
		-0.446968, -0.864591, -0.229571,
		0.760090, -0.502382, 0.412159,
		38.218380, 30.950338, 47.871014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442741, 31.026085, 48.149952>,  <37.686317, 31.302006, 47.582504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442741, 31.026085, 48.149952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823513, 30.952599, 48.248001>,  <38.051975, 30.908506, 48.306831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823513, 30.952599, 48.248001>,  <37.442741, 31.026085, 48.149952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823513, 30.952599, 48.248001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242044, 0.039348, 0.969467,
		-0.187752, -0.982191, -0.007011,
		0.951926, -0.183716, 0.245121,
		38.109093, 30.897484, 48.321537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431660, 30.494192, 48.711216>,  <37.442741, 31.026085, 48.149952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431660, 30.494192, 48.711216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769028, 30.708687, 48.724400>,  <37.971451, 30.837383, 48.732311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769028, 30.708687, 48.724400>,  <37.431660, 30.494192, 48.711216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769028, 30.708687, 48.724400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078447, 0.062227, 0.994974,
		0.531492, -0.841769, 0.094550,
		0.843423, 0.536239, 0.032961,
		38.022053, 30.869558, 48.734287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780537, 30.186518, 49.181728>,  <37.431660, 30.494192, 48.711216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780537, 30.186518, 49.181728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952198, 30.547720, 49.189751>,  <38.055195, 30.764442, 49.194565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952198, 30.547720, 49.189751>,  <37.780537, 30.186518, 49.181728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952198, 30.547720, 49.189751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107628, -0.073168, 0.991495,
		0.896795, -0.423348, -0.128589,
		0.429156, 0.903008, 0.020052,
		38.080944, 30.818623, 49.195766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412952, 30.167837, 49.664074>,  <37.780537, 30.186518, 49.181728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412952, 30.167837, 49.664074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348335, 30.558969, 49.610779>,  <38.309566, 30.793648, 49.578800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348335, 30.558969, 49.610779>,  <38.412952, 30.167837, 49.664074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348335, 30.558969, 49.610779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140145, 0.156376, 0.977704,
		0.976864, 0.139269, -0.162300,
		-0.161544, 0.977830, -0.133241,
		38.299873, 30.852318, 49.570808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941620, 30.518675, 49.908970>,  <38.412952, 30.167837, 49.664074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941620, 30.518675, 49.908970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640896, 30.780987, 49.936481>,  <38.460461, 30.938374, 49.952988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640896, 30.780987, 49.936481>,  <38.941620, 30.518675, 49.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640896, 30.780987, 49.936481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186854, 0.111855, 0.975999,
		0.632349, 0.746619, -0.206629,
		-0.751812, 0.655781, 0.068777,
		38.415352, 30.977720, 49.957115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105434, 30.882875, 50.492100>,  <38.941620, 30.518675, 49.908970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105434, 30.882875, 50.492100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737431, 31.030125, 50.438332>,  <38.516628, 31.118475, 50.406071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737431, 31.030125, 50.438332>,  <39.105434, 30.882875, 50.492100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737431, 31.030125, 50.438332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082824, 0.152612, 0.984810,
		0.383047, 0.917166, -0.109914,
		-0.920008, 0.368125, -0.134421,
		38.461430, 31.140562, 50.398006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087730, 31.585356, 50.763145>,  <39.105434, 30.882875, 50.492100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087730, 31.585356, 50.763145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722683, 31.421883, 50.767105>,  <38.503654, 31.323799, 50.769482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722683, 31.421883, 50.767105>,  <39.087730, 31.585356, 50.763145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722683, 31.421883, 50.767105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028369, 0.087473, 0.995763,
		-0.407819, 0.908474, -0.091424,
		-0.912622, -0.408684, 0.009900,
		38.448895, 31.299278, 50.770077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724003, 31.941183, 51.172527>,  <39.087730, 31.585356, 50.763145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724003, 31.941183, 51.172527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485851, 31.619844, 51.177555>,  <38.342960, 31.427042, 51.180573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485851, 31.619844, 51.177555>,  <38.724003, 31.941183, 51.172527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485851, 31.619844, 51.177555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049539, -0.021095, 0.998550,
		-0.801914, 0.595141, 0.052356,
		-0.595382, -0.803344, 0.012566,
		38.307236, 31.378841, 51.181324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276478, 31.993338, 51.756725>,  <38.724003, 31.941183, 51.172527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276478, 31.993338, 51.756725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337875, 31.606245, 51.676796>,  <38.374714, 31.373989, 51.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337875, 31.606245, 51.676796>,  <38.276478, 31.993338, 51.756725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337875, 31.606245, 51.676796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096993, -0.186490, 0.977657,
		-0.983377, -0.169449, 0.065238,
		0.153496, -0.967734, -0.199826,
		38.383923, 31.315926, 51.616848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086220, 32.619747, 51.851719>,  <38.276478, 31.993338, 51.756725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086220, 32.619747, 51.851719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126057, 33.004753, 51.952625>,  <38.149960, 33.235756, 52.013168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126057, 33.004753, 51.952625>,  <38.086220, 32.619747, 51.851719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126057, 33.004753, 51.952625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014337, 0.254889, -0.966864,
		-0.994925, 0.092679, 0.039185,
		0.099596, 0.962519, 0.252266,
		38.155937, 33.293510, 52.028305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715813, 33.006927, 51.379021>,  <38.086220, 32.619747, 51.851719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715813, 33.006927, 51.379021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937534, 33.310120, 51.516552>,  <38.070568, 33.492035, 51.599072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937534, 33.310120, 51.516552>,  <37.715813, 33.006927, 51.379021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937534, 33.310120, 51.516552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002418, 0.414564, -0.910017,
		-0.832312, 0.503593, 0.231626,
		0.554302, 0.757978, 0.343829,
		38.103825, 33.537514, 51.619701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529823, 33.672291, 50.942993>,  <37.715813, 33.006927, 51.379021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529823, 33.672291, 50.942993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876904, 33.768719, 51.116882>,  <38.085152, 33.826576, 51.221214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876904, 33.768719, 51.116882>,  <37.529823, 33.672291, 50.942993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876904, 33.768719, 51.116882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349593, 0.325766, -0.878443,
		-0.353385, 0.914200, 0.198390,
		0.867700, 0.241073, 0.434718,
		38.137215, 33.841042, 51.247299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568325, 34.353531, 50.824825>,  <37.529823, 33.672291, 50.942993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568325, 34.353531, 50.824825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924618, 34.179825, 50.878498>,  <38.138393, 34.075600, 50.910702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924618, 34.179825, 50.878498>,  <37.568325, 34.353531, 50.824825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924618, 34.179825, 50.878498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355243, 0.480994, -0.801528,
		0.283536, 0.761616, 0.582708,
		0.890736, -0.434265, 0.134179,
		38.191837, 34.049545, 50.918751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101387, 34.789616, 50.838821>,  <37.568325, 34.353531, 50.824825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101387, 34.789616, 50.838821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327419, 34.480423, 50.723461>,  <38.463039, 34.294907, 50.654243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327419, 34.480423, 50.723461>,  <38.101387, 34.789616, 50.838821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327419, 34.480423, 50.723461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326942, 0.530746, -0.781932,
		0.757488, 0.347568, 0.552638,
		0.565085, -0.772984, -0.288399,
		38.496944, 34.248528, 50.636940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733738, 35.150555, 50.718075>,  <38.101387, 34.789616, 50.838821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733738, 35.150555, 50.718075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810993, 34.782578, 50.581604>,  <38.857346, 34.561790, 50.499722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810993, 34.782578, 50.581604>,  <38.733738, 35.150555, 50.718075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810993, 34.782578, 50.581604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388054, 0.390989, -0.834591,
		0.901173, 0.028797, 0.432503,
		0.193137, -0.919945, -0.341174,
		38.868935, 34.506596, 50.479252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469105, 35.189827, 50.635468>,  <38.733738, 35.150555, 50.718075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469105, 35.189827, 50.635468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292522, 34.895905, 50.429485>,  <39.186573, 34.719551, 50.305897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292522, 34.895905, 50.429485>,  <39.469105, 35.189827, 50.635468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292522, 34.895905, 50.429485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441764, 0.321541, -0.837529,
		0.781002, -0.597217, 0.182667,
		-0.441452, -0.734808, -0.514953,
		39.160088, 34.675461, 50.274998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928013, 34.778393, 50.270348>,  <39.469105, 35.189827, 50.635468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928013, 34.778393, 50.270348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590351, 34.744877, 50.058540>,  <39.387753, 34.724766, 49.931458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590351, 34.744877, 50.058540>,  <39.928013, 34.778393, 50.270348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590351, 34.744877, 50.058540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517928, 0.127537, -0.845863,
		0.138393, -0.988289, -0.064272,
		-0.844155, -0.083773, -0.529513,
		39.337105, 34.719742, 49.899685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143650, 34.500359, 49.635757>,  <39.928013, 34.778393, 50.270348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143650, 34.500359, 49.635757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766270, 34.584164, 49.532997>,  <39.539841, 34.634445, 49.471340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766270, 34.584164, 49.532997>,  <40.143650, 34.500359, 49.635757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766270, 34.584164, 49.532997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289870, 0.145370, -0.945961,
		-0.160844, -0.966940, -0.197881,
		-0.943454, 0.209512, -0.256905,
		39.483234, 34.647018, 49.455925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070602, 34.134949, 49.028721>,  <40.143650, 34.500359, 49.635757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070602, 34.134949, 49.028721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789890, 34.419647, 49.016590>,  <39.621464, 34.590466, 49.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789890, 34.419647, 49.016590>,  <40.070602, 34.134949, 49.028721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789890, 34.419647, 49.016590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197082, 0.153057, -0.968366,
		-0.684591, -0.685557, -0.247684,
		-0.701779, 0.711748, -0.030330,
		39.579357, 34.633171, 49.007492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742222, 33.991055, 48.425476>,  <40.070602, 34.134949, 49.028721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742222, 33.991055, 48.425476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641273, 34.370243, 48.503105>,  <39.580704, 34.597755, 48.549683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641273, 34.370243, 48.503105>,  <39.742222, 33.991055, 48.425476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641273, 34.370243, 48.503105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078665, 0.220003, -0.972322,
		-0.964427, -0.230120, -0.130094,
		-0.252372, 0.947968, 0.194074,
		39.565563, 34.654633, 48.561329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179367, 34.107059, 47.995129>,  <39.742222, 33.991055, 48.425476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179367, 34.107059, 47.995129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343048, 34.456459, 48.100624>,  <39.441257, 34.666100, 48.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343048, 34.456459, 48.100624>,  <39.179367, 34.107059, 47.995129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343048, 34.456459, 48.100624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025096, 0.299709, -0.953701,
		-0.912098, 0.383638, 0.144563,
		0.409203, 0.873497, 0.263736,
		39.465809, 34.718510, 48.179745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743095, 34.569473, 47.731079>,  <39.179367, 34.107059, 47.995129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743095, 34.569473, 47.731079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109970, 34.723854, 47.770695>,  <39.330093, 34.816483, 47.794464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109970, 34.723854, 47.770695>,  <38.743095, 34.569473, 47.731079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109970, 34.723854, 47.770695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023396, 0.195967, -0.980331,
		-0.397769, 0.901465, 0.170708,
		0.917187, 0.385951, 0.099040,
		39.385128, 34.839638, 47.800407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656948, 35.010654, 47.254292>,  <38.743095, 34.569473, 47.731079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656948, 35.010654, 47.254292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050449, 35.020733, 47.325394>,  <39.286549, 35.026779, 47.368053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050449, 35.020733, 47.325394>,  <38.656948, 35.010654, 47.254292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050449, 35.020733, 47.325394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161408, 0.309381, -0.937140,
		-0.078601, 0.950604, 0.300289,
		0.983753, 0.025191, 0.177752,
		39.345573, 35.028290, 47.378719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864296, 35.627945, 46.864300>,  <38.656948, 35.010654, 47.254292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864296, 35.627945, 46.864300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173271, 35.378765, 46.913738>,  <39.358654, 35.229256, 46.943401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173271, 35.378765, 46.913738>,  <38.864296, 35.627945, 46.864300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173271, 35.378765, 46.913738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261917, 0.135183, -0.955576,
		0.578570, 0.770491, 0.267582,
		0.772435, -0.622952, 0.123592,
		39.405003, 35.191879, 46.950817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553810, 35.895344, 46.514042>,  <38.864296, 35.627945, 46.864300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553810, 35.895344, 46.514042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622833, 35.502003, 46.491257>,  <39.664246, 35.265999, 46.477585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622833, 35.502003, 46.491257>,  <39.553810, 35.895344, 46.514042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622833, 35.502003, 46.491257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476270, 0.133914, -0.869042,
		0.862201, 0.122829, 0.491449,
		0.172555, -0.983352, -0.056960,
		39.674599, 35.206997, 46.474167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300217, 35.780602, 46.205235>,  <39.553810, 35.895344, 46.514042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300217, 35.780602, 46.205235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087765, 35.442478, 46.182064>,  <39.960293, 35.239605, 46.168159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087765, 35.442478, 46.182064>,  <40.300217, 35.780602, 46.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087765, 35.442478, 46.182064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324064, -0.139495, -0.935694,
		0.782869, -0.515747, 0.348024,
		-0.531129, -0.845308, -0.057929,
		39.928425, 35.188885, 46.164684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722168, 35.373787, 45.812550>,  <40.300217, 35.780602, 46.205235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722168, 35.373787, 45.812550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366554, 35.193527, 45.780231>,  <40.153187, 35.085373, 45.760841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366554, 35.193527, 45.780231>,  <40.722168, 35.373787, 45.812550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366554, 35.193527, 45.780231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273858, -0.382021, -0.882645,
		0.366898, -0.806831, 0.463044,
		-0.889037, -0.450649, -0.080794,
		40.099842, 35.058334, 45.755993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896984, 34.580784, 45.652214>,  <40.722168, 35.373787, 45.812550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896984, 34.580784, 45.652214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526180, 34.652023, 45.520195>,  <40.303699, 34.694767, 45.440983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526180, 34.652023, 45.520195>,  <40.896984, 34.580784, 45.652214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526180, 34.652023, 45.520195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212722, -0.475088, -0.853839,
		-0.308871, -0.861726, 0.402525,
		-0.927010, 0.178100, -0.330049,
		40.248077, 34.705452, 45.421181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582954, 33.954369, 45.324345>,  <40.896984, 34.580784, 45.652214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582954, 33.954369, 45.324345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372688, 34.263268, 45.181625>,  <40.246529, 34.448608, 45.095993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372688, 34.263268, 45.181625>,  <40.582954, 33.954369, 45.324345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372688, 34.263268, 45.181625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034815, -0.399544, -0.916053,
		-0.849977, -0.493962, 0.183142,
		-0.525669, 0.772247, -0.356801,
		40.214989, 34.494942, 45.074585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347416, 33.610905, 44.818577>,  <40.582954, 33.954369, 45.324345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347416, 33.610905, 44.818577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279778, 33.993668, 44.724148>,  <40.239193, 34.223328, 44.667492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279778, 33.993668, 44.724148>,  <40.347416, 33.610905, 44.818577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279778, 33.993668, 44.724148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242535, -0.191758, -0.951002,
		-0.955292, -0.218065, -0.199659,
		-0.169094, 0.956910, -0.236073,
		40.229050, 34.280739, 44.653324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902149, 33.550884, 44.209431>,  <40.347416, 33.610905, 44.818577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902149, 33.550884, 44.209431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081909, 33.907078, 44.237938>,  <40.189766, 34.120796, 44.255043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081909, 33.907078, 44.237938>,  <39.902149, 33.550884, 44.209431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081909, 33.907078, 44.237938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310483, -0.080890, -0.947131,
		-0.837642, 0.447763, -0.312832,
		0.449396, 0.890486, 0.071265,
		40.216728, 34.174225, 44.259319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694927, 33.832458, 43.536533>,  <39.902149, 33.550884, 44.209431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694927, 33.832458, 43.536533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981045, 34.068806, 43.685787>,  <40.152714, 34.210613, 43.775341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981045, 34.068806, 43.685787>,  <39.694927, 33.832458, 43.536533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981045, 34.068806, 43.685787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351566, 0.157197, -0.922871,
		-0.603953, 0.791304, -0.095288,
		0.715292, 0.590870, 0.373135,
		40.195633, 34.246067, 43.797729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684822, 34.327679, 43.113403>,  <39.694927, 33.832458, 43.536533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684822, 34.327679, 43.113403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027969, 34.396404, 43.307121>,  <40.233856, 34.437641, 43.423351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027969, 34.396404, 43.307121>,  <39.684822, 34.327679, 43.113403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027969, 34.396404, 43.307121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410106, 0.338963, -0.846710,
		-0.309633, 0.924978, 0.220325,
		0.857870, 0.171813, 0.484293,
		40.285332, 34.447948, 43.452408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815086, 34.998180, 43.104023>,  <39.684822, 34.327679, 43.113403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815086, 34.998180, 43.104023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156967, 34.792419, 43.131966>,  <40.362095, 34.668964, 43.148731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156967, 34.792419, 43.131966>,  <39.815086, 34.998180, 43.104023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156967, 34.792419, 43.131966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259170, 0.306237, -0.915996,
		0.449795, 0.801008, 0.395058,
		0.854702, -0.514398, 0.069853,
		40.413376, 34.638100, 43.152920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301983, 35.455750, 42.877525>,  <39.815086, 34.998180, 43.104023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301983, 35.455750, 42.877525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486271, 35.101112, 42.861042>,  <40.596844, 34.888332, 42.851151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486271, 35.101112, 42.861042>,  <40.301983, 35.455750, 42.877525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486271, 35.101112, 42.861042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421088, 0.259219, -0.869190,
		0.781295, 0.383102, 0.492759,
		0.460721, -0.886588, -0.041207,
		40.624489, 34.835136, 42.848679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082172, 35.476406, 42.726482>,  <40.301983, 35.455750, 42.877525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082172, 35.476406, 42.726482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958176, 35.112228, 42.616943>,  <40.883778, 34.893723, 42.551220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958176, 35.112228, 42.616943>,  <41.082172, 35.476406, 42.726482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958176, 35.112228, 42.616943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488456, 0.094606, -0.867445,
		0.815669, -0.402664, 0.415386,
		-0.309991, -0.910446, -0.273851,
		40.865177, 34.839096, 42.534786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700592, 35.134537, 42.535721>,  <41.082172, 35.476406, 42.726482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700592, 35.134537, 42.535721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398148, 34.949089, 42.350964>,  <41.216682, 34.837818, 42.240108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398148, 34.949089, 42.350964>,  <41.700592, 35.134537, 42.535721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398148, 34.949089, 42.350964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524473, -0.007124, -0.851397,
		0.391438, -0.886003, 0.248545,
		-0.756111, -0.463624, -0.461897,
		41.171314, 34.810001, 42.212395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982201, 34.682228, 42.142616>,  <41.700592, 35.134537, 42.535721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982201, 34.682228, 42.142616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624210, 34.695099, 41.964630>,  <41.409416, 34.702820, 41.857838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624210, 34.695099, 41.964630>,  <41.982201, 34.682228, 42.142616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624210, 34.695099, 41.964630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446098, 0.053753, -0.893369,
		-0.004829, -0.998036, -0.062462,
		-0.894971, 0.032179, -0.444962,
		41.355721, 34.704754, 41.831142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135365, 34.328232, 41.535053>,  <41.982201, 34.682228, 42.142616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135365, 34.328232, 41.535053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775452, 34.485935, 41.460270>,  <41.559505, 34.580559, 41.415398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775452, 34.485935, 41.460270>,  <42.135365, 34.328232, 41.535053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775452, 34.485935, 41.460270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207964, 0.010804, -0.978077,
		-0.383599, -0.918934, -0.091713,
		-0.899780, 0.394262, -0.186961,
		41.505516, 34.604214, 41.404182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913578, 34.086678, 40.897743>,  <42.135365, 34.328232, 41.535053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913578, 34.086678, 40.897743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715939, 34.432255, 40.936665>,  <41.597355, 34.639603, 40.960018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715939, 34.432255, 40.936665>,  <41.913578, 34.086678, 40.897743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715939, 34.432255, 40.936665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056045, 0.143334, -0.988086,
		-0.867596, -0.482762, -0.119241,
		-0.494102, 0.863942, 0.097300,
		41.567707, 34.691437, 40.965855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458775, 34.200687, 40.313267>,  <41.913578, 34.086678, 40.897743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458775, 34.200687, 40.313267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471230, 34.575718, 40.451820>,  <41.478703, 34.800735, 40.534954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471230, 34.575718, 40.451820>,  <41.458775, 34.200687, 40.313267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471230, 34.575718, 40.451820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083290, 0.342917, -0.935666,
		-0.996039, 0.057987, -0.067412,
		0.031140, 0.937574, 0.346388,
		41.480572, 34.856991, 40.555737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210560, 34.539261, 39.745342>,  <41.458775, 34.200687, 40.313267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210560, 34.539261, 39.745342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387352, 34.818245, 39.970978>,  <41.493427, 34.985634, 40.106361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387352, 34.818245, 39.970978>,  <41.210560, 34.539261, 39.745342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387352, 34.818245, 39.970978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279197, 0.490652, -0.825415,
		-0.852466, 0.522314, 0.022132,
		0.441985, 0.697459, 0.564092,
		41.519947, 35.027481, 40.140205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864964, 35.203129, 39.546997>,  <41.210560, 34.539261, 39.745342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864964, 35.203129, 39.546997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229248, 35.261570, 39.701534>,  <41.447819, 35.296635, 39.794258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229248, 35.261570, 39.701534>,  <40.864964, 35.203129, 39.546997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229248, 35.261570, 39.701534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231589, 0.593884, -0.770499,
		-0.342016, 0.791174, 0.507020,
		0.910710, 0.146102, 0.386345,
		41.502460, 35.305401, 39.817436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987591, 35.916870, 39.721401>,  <40.864964, 35.203129, 39.546997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987591, 35.916870, 39.721401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351582, 35.766926, 39.650501>,  <41.569977, 35.676960, 39.607964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351582, 35.766926, 39.650501>,  <40.987591, 35.916870, 39.721401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351582, 35.766926, 39.650501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222944, 0.802724, -0.553109,
		0.349619, 0.463802, 0.814036,
		0.909980, -0.374861, -0.177246,
		41.624577, 35.654469, 39.597328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396801, 36.510380, 39.512081>,  <40.987591, 35.916870, 39.721401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396801, 36.510380, 39.512081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665421, 36.224468, 39.433987>,  <41.826591, 36.052921, 39.387131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665421, 36.224468, 39.433987>,  <41.396801, 36.510380, 39.512081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665421, 36.224468, 39.433987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535093, 0.650093, -0.539495,
		0.512542, 0.257825, 0.819040,
		0.671548, -0.714776, -0.195240,
		41.866886, 36.010036, 39.375416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997707, 36.861073, 39.590176>,  <41.396801, 36.510380, 39.512081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997707, 36.861073, 39.590176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085892, 36.531792, 39.380894>,  <42.138802, 36.334225, 39.255325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085892, 36.531792, 39.380894>,  <41.997707, 36.861073, 39.590176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085892, 36.531792, 39.380894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407473, 0.565081, -0.717391,
		0.886206, -0.055030, 0.460012,
		0.220466, -0.823198, -0.523201,
		42.152031, 36.284832, 39.223934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620831, 36.953995, 39.365730>,  <41.997707, 36.861073, 39.590176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620831, 36.953995, 39.365730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497574, 36.666519, 39.116398>,  <42.423618, 36.494034, 38.966801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497574, 36.666519, 39.116398>,  <42.620831, 36.953995, 39.365730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497574, 36.666519, 39.116398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486652, 0.443912, -0.752404,
		0.817445, -0.535194, 0.212961,
		-0.308146, -0.718686, -0.623327,
		42.405128, 36.450912, 38.929401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238728, 36.606613, 38.941509>,  <42.620831, 36.953995, 39.365730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238728, 36.606613, 38.941509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904827, 36.521454, 38.738384>,  <42.704487, 36.470360, 38.616508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904827, 36.521454, 38.738384>,  <43.238728, 36.606613, 38.941509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904827, 36.521454, 38.738384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403110, 0.391965, -0.826962,
		0.375096, -0.895009, -0.241374,
		-0.834749, -0.212890, -0.507811,
		42.654404, 36.457584, 38.586040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407612, 36.226952, 38.302788>,  <43.238728, 36.606613, 38.941509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407612, 36.226952, 38.302788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060509, 36.411266, 38.228306>,  <42.852245, 36.521854, 38.183617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060509, 36.411266, 38.228306>,  <43.407612, 36.226952, 38.302788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060509, 36.411266, 38.228306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407656, 0.445633, -0.797012,
		-0.284276, -0.767519, -0.574544,
		-0.867758, 0.460787, -0.186201,
		42.800182, 36.549503, 38.172447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361824, 36.106853, 37.609333>,  <43.407612, 36.226952, 38.302788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361824, 36.106853, 37.609333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134087, 36.403751, 37.750710>,  <42.997444, 36.581890, 37.835533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134087, 36.403751, 37.750710>,  <43.361824, 36.106853, 37.609333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134087, 36.403751, 37.750710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247428, 0.564700, -0.787333,
		-0.783979, -0.360816, -0.505163,
		-0.569347, 0.742244, 0.353437,
		42.963284, 36.626423, 37.856739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063335, 36.538712, 37.105965>,  <43.361824, 36.106853, 37.609333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063335, 36.538712, 37.105965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098907, 36.769054, 37.431046>,  <43.120251, 36.907261, 37.626095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098907, 36.769054, 37.431046>,  <43.063335, 36.538712, 37.105965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098907, 36.769054, 37.431046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390949, 0.730274, -0.560231,
		-0.916106, 0.367547, -0.160185,
		0.088932, 0.575856, 0.812700,
		43.125587, 36.941811, 37.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834396, 37.216164, 36.939224>,  <43.063335, 36.538712, 37.105965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834396, 37.216164, 36.939224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095577, 37.194000, 37.241375>,  <43.252285, 37.180702, 37.422665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095577, 37.194000, 37.241375>,  <42.834396, 37.216164, 36.939224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095577, 37.194000, 37.241375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452496, 0.828308, -0.330384,
		-0.607375, 0.557527, 0.565914,
		0.652949, -0.055406, 0.755372,
		43.291462, 37.177380, 37.467987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173145, 37.943569, 37.128624>,  <42.834396, 37.216164, 36.939224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173145, 37.943569, 37.128624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317036, 38.241722, 36.904121>,  <43.403370, 38.420612, 36.769421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317036, 38.241722, 36.904121>,  <43.173145, 37.943569, 37.128624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317036, 38.241722, 36.904121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933056, -0.288771, 0.214520,
		-0.002175, -0.600850, -0.799359,
		0.359726, 0.745380, -0.561254,
		43.424953, 38.465336, 36.735744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635853, 37.818184, 36.535503>,  <43.173145, 37.943569, 37.128624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635853, 37.818184, 36.535503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738796, 38.167946, 36.700031>,  <43.800560, 38.377804, 36.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738796, 38.167946, 36.700031>,  <43.635853, 37.818184, 36.535503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738796, 38.167946, 36.700031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842782, -0.411348, 0.347147,
		0.472743, 0.257315, -0.842795,
		0.257356, 0.874404, 0.411322,
		43.816002, 38.430267, 36.823429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327751, 38.008091, 36.391197>,  <43.635853, 37.818184, 36.535503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327751, 38.008091, 36.391197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245758, 38.164948, 36.749908>,  <44.196560, 38.259064, 36.965134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245758, 38.164948, 36.749908>,  <44.327751, 38.008091, 36.391197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245758, 38.164948, 36.749908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900576, -0.283273, 0.329726,
		0.383332, 0.875202, -0.295089,
		-0.204986, 0.392145, 0.896774,
		44.184261, 38.282593, 37.018940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566326, 38.350178, 35.796108>,  <44.327751, 38.008091, 36.391197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566326, 38.350178, 35.796108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823212, 38.079117, 35.652802>,  <44.977341, 37.916481, 35.566818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823212, 38.079117, 35.652802>,  <44.566326, 38.350178, 35.796108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823212, 38.079117, 35.652802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554044, -0.087375, -0.827889,
		0.529716, 0.730175, -0.431561,
		0.642211, -0.677651, -0.358265,
		45.015877, 37.875820, 35.545322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375710, 38.265690, 35.786789>,  <44.566326, 38.350178, 35.796108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375710, 38.265690, 35.786789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536919, 37.967567, 35.574337>,  <45.633644, 37.788696, 35.446865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536919, 37.967567, 35.574337>,  <45.375710, 38.265690, 35.786789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536919, 37.967567, 35.574337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354678, 0.407797, -0.841371,
		0.843669, 0.527469, -0.099992,
		0.403020, -0.745304, -0.531128,
		45.657825, 37.743977, 35.414997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787106, 38.517143, 35.320763>,  <45.375710, 38.265690, 35.786789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787106, 38.517143, 35.320763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734554, 38.158085, 35.152493>,  <45.703022, 37.942650, 35.051529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734554, 38.158085, 35.152493>,  <45.787106, 38.517143, 35.320763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734554, 38.158085, 35.152493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109314, 0.434887, -0.893825,
		0.985287, -0.071445, -0.155261,
		-0.131380, -0.897646, -0.420678,
		45.695141, 37.888790, 35.026291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149708, 38.567741, 34.662258>,  <45.787106, 38.517143, 35.320763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149708, 38.567741, 34.662258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910725, 38.254398, 34.593681>,  <45.767334, 38.066391, 34.552536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910725, 38.254398, 34.593681>,  <46.149708, 38.567741, 34.662258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910725, 38.254398, 34.593681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298843, 0.415898, -0.858907,
		0.744132, -0.461931, -0.482584,
		-0.597462, -0.783357, -0.171437,
		45.731487, 38.019390, 34.542252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074070, 38.598419, 33.970825>,  <46.149708, 38.567741, 34.662258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074070, 38.598419, 33.970825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773727, 38.353848, 34.070721>,  <45.593521, 38.207104, 34.130657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773727, 38.353848, 34.070721>,  <46.074070, 38.598419, 33.970825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773727, 38.353848, 34.070721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512697, 0.301227, -0.803993,
		0.416355, -0.731724, -0.539656,
		-0.750860, -0.611426, 0.249735,
		45.548470, 38.170418, 34.145641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809620, 38.271362, 33.366631>,  <46.074070, 38.598419, 33.970825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809620, 38.271362, 33.366631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516392, 38.267773, 33.638668>,  <45.340454, 38.265621, 33.801891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516392, 38.267773, 33.638668>,  <45.809620, 38.271362, 33.366631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516392, 38.267773, 33.638668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570490, 0.552545, -0.607647,
		-0.370330, -0.833434, -0.410174,
		-0.733074, -0.008971, 0.680090,
		45.296471, 38.265079, 33.842693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192162, 38.168091, 32.981499>,  <45.809620, 38.271362, 33.366631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192162, 38.168091, 32.981499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020420, 38.306068, 33.315365>,  <44.917374, 38.388855, 33.515686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020420, 38.306068, 33.315365>,  <45.192162, 38.168091, 32.981499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020420, 38.306068, 33.315365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698348, 0.459224, -0.549021,
		-0.572679, -0.818613, 0.043720,
		-0.429358, 0.344945, 0.834665,
		44.891613, 38.409554, 33.565765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461353, 38.107109, 32.929848>,  <45.192162, 38.168091, 32.981499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461353, 38.107109, 32.929848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531025, 38.393997, 33.199738>,  <44.572826, 38.566132, 33.361671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531025, 38.393997, 33.199738>,  <44.461353, 38.107109, 32.929848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531025, 38.393997, 33.199738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604951, 0.618588, -0.501382,
		-0.776979, -0.320847, 0.541628,
		0.174177, 0.717221, 0.674726,
		44.583279, 38.609165, 33.402157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814682, 38.357159, 33.072945>,  <44.461353, 38.107109, 32.929848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814682, 38.357159, 33.072945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058647, 38.647381, 33.200424>,  <44.205029, 38.821514, 33.276913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058647, 38.647381, 33.200424>,  <43.814682, 38.357159, 33.072945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058647, 38.647381, 33.200424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573607, 0.681684, -0.454182,
		-0.546788, 0.094204, 0.831955,
		0.609916, 0.725556, 0.318701,
		44.241623, 38.865047, 33.296036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390476, 38.950275, 33.196369>,  <43.814682, 38.357159, 33.072945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390476, 38.950275, 33.196369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756191, 39.112259, 33.192616>,  <43.975620, 39.209450, 33.190365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756191, 39.112259, 33.192616>,  <43.390476, 38.950275, 33.196369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756191, 39.112259, 33.192616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339388, 0.753190, -0.563490,
		-0.221125, 0.518375, 0.826070,
		0.914286, 0.404960, -0.009381,
		44.030476, 39.233746, 33.189800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300682, 39.600559, 33.379173>,  <43.390476, 38.950275, 33.196369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300682, 39.600559, 33.379173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662136, 39.610939, 33.208164>,  <43.879009, 39.617168, 33.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662136, 39.610939, 33.208164>,  <43.300682, 39.600559, 33.379173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662136, 39.610939, 33.208164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279307, 0.792437, -0.542246,
		0.324712, 0.609401, 0.723320,
		0.903631, 0.025954, -0.427524,
		43.933224, 39.618725, 33.079906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637032, 40.370159, 33.368237>,  <43.300682, 39.600559, 33.379173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637032, 40.370159, 33.368237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781219, 40.144043, 33.071453>,  <43.867733, 40.008373, 32.893383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781219, 40.144043, 33.071453>,  <43.637032, 40.370159, 33.368237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781219, 40.144043, 33.071453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215493, 0.723450, -0.655883,
		0.907538, 0.396313, 0.138965,
		0.360469, -0.565293, -0.741961,
		43.889359, 39.974457, 32.848866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981941, 40.825306, 32.872063>,  <43.637032, 40.370159, 33.368237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981941, 40.825306, 32.872063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866962, 40.486904, 32.692440>,  <43.797977, 40.283863, 32.584667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866962, 40.486904, 32.692440>,  <43.981941, 40.825306, 32.872063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866962, 40.486904, 32.692440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553002, 0.529393, -0.643376,
		0.782026, 0.063394, -0.620013,
		-0.287444, -0.846005, -0.449056,
		43.780727, 40.233101, 32.557724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103416, 40.999557, 32.259762>,  <43.981941, 40.825306, 32.872063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103416, 40.999557, 32.259762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866188, 40.683372, 32.198524>,  <43.723850, 40.493664, 32.161781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866188, 40.683372, 32.198524>,  <44.103416, 40.999557, 32.259762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866188, 40.683372, 32.198524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463402, 0.490610, -0.737943,
		0.658425, -0.366709, -0.657268,
		-0.593073, -0.790460, -0.153096,
		43.688267, 40.446236, 32.152596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080482, 41.023373, 31.557165>,  <44.103416, 40.999557, 32.259762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080482, 41.023373, 31.557165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777439, 40.792282, 31.678667>,  <43.595612, 40.653629, 31.751568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777439, 40.792282, 31.678667>,  <44.080482, 41.023373, 31.557165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777439, 40.792282, 31.678667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603239, 0.442020, -0.663868,
		0.249268, -0.686187, -0.683384,
		-0.757607, -0.577725, 0.303753,
		43.550156, 40.618965, 31.769793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852528, 40.773308, 30.936197>,  <44.080482, 41.023373, 31.557165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852528, 40.773308, 30.936197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550014, 40.709442, 31.189981>,  <43.368507, 40.671124, 31.342253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550014, 40.709442, 31.189981>,  <43.852528, 40.773308, 30.936197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550014, 40.709442, 31.189981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650996, 0.280131, -0.705501,
		-0.065093, -0.946592, -0.315796,
		-0.756285, -0.159659, 0.634462,
		43.323128, 40.661545, 31.380320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424206, 40.342823, 30.590448>,  <43.852528, 40.773308, 30.936197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424206, 40.342823, 30.590448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176479, 40.484936, 30.870512>,  <43.027843, 40.570202, 31.038551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176479, 40.484936, 30.870512>,  <43.424206, 40.342823, 30.590448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176479, 40.484936, 30.870512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622291, 0.321648, -0.713650,
		-0.478749, -0.877679, 0.021884,
		-0.619317, 0.355277, 0.700160,
		42.990685, 40.591518, 31.080561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805939, 40.113743, 30.436255>,  <43.424206, 40.342823, 30.590448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805939, 40.113743, 30.436255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742123, 40.419552, 30.686071>,  <42.703835, 40.603039, 30.835962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742123, 40.419552, 30.686071>,  <42.805939, 40.113743, 30.436255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742123, 40.419552, 30.686071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731210, 0.333522, -0.595059,
		-0.663234, -0.551605, 0.505818,
		-0.159536, 0.764523, 0.624542,
		42.694263, 40.648911, 30.873434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101234, 40.059269, 30.515076>,  <42.805939, 40.113743, 30.436255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101234, 40.059269, 30.515076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253204, 40.423264, 30.581511>,  <42.344387, 40.641659, 30.621372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253204, 40.423264, 30.581511>,  <42.101234, 40.059269, 30.515076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253204, 40.423264, 30.581511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602387, 0.379652, -0.702135,
		-0.701989, 0.166708, 0.692402,
		0.379924, 0.909985, 0.166089,
		42.367180, 40.696259, 30.631338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479214, 40.537937, 30.447842>,  <42.101234, 40.059269, 30.515076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479214, 40.537937, 30.447842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812527, 40.755516, 30.408302>,  <42.012512, 40.886063, 30.384579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812527, 40.755516, 30.408302>,  <41.479214, 40.537937, 30.447842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812527, 40.755516, 30.408302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420601, 0.507688, -0.751896,
		-0.358805, 0.668115, 0.651829,
		0.833279, 0.543944, -0.098849,
		42.062511, 40.918697, 30.378647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250160, 41.255260, 30.368074>,  <41.479214, 40.537937, 30.447842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250160, 41.255260, 30.368074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625481, 41.260735, 30.229853>,  <41.850674, 41.264019, 30.146919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625481, 41.260735, 30.229853>,  <41.250160, 41.255260, 30.368074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625481, 41.260735, 30.229853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298723, 0.535509, -0.789933,
		0.174240, 0.844419, 0.506554,
		0.938299, 0.013681, -0.345555,
		41.906971, 41.264839, 30.126186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344551, 41.952187, 30.208981>,  <41.250160, 41.255260, 30.368074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344551, 41.952187, 30.208981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628403, 41.761490, 30.001463>,  <41.798714, 41.647072, 29.876953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628403, 41.761490, 30.001463>,  <41.344551, 41.952187, 30.208981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628403, 41.761490, 30.001463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320845, 0.436891, -0.840348,
		0.627289, 0.762784, 0.157067,
		0.709625, -0.476746, -0.518792,
		41.841290, 41.618465, 29.845825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854946, 42.412682, 29.781593>,  <41.344551, 41.952187, 30.208981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854946, 42.412682, 29.781593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790668, 42.057110, 29.610023>,  <41.752102, 41.843765, 29.507082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790668, 42.057110, 29.610023>,  <41.854946, 42.412682, 29.781593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790668, 42.057110, 29.610023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298489, 0.457989, -0.837347,
		0.940788, -0.006525, -0.338932,
		-0.160690, -0.888934, -0.428923,
		41.742462, 41.790428, 29.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098427, 42.515900, 29.121103>,  <41.854946, 42.412682, 29.781593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098427, 42.515900, 29.121103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874237, 42.184910, 29.107502>,  <41.739723, 41.986317, 29.099340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874237, 42.184910, 29.107502>,  <42.098427, 42.515900, 29.121103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874237, 42.184910, 29.107502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418752, 0.318581, -0.850384,
		0.714503, -0.462379, -0.525063,
		-0.560475, -0.827473, -0.034005,
		41.706093, 41.936668, 29.097301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030701, 42.277645, 28.438396>,  <42.098427, 42.515900, 29.121103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030701, 42.277645, 28.438396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721397, 42.111134, 28.629725>,  <41.535816, 42.011227, 28.744520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721397, 42.111134, 28.629725>,  <42.030701, 42.277645, 28.438396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721397, 42.111134, 28.629725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532662, 0.017185, -0.846154,
		0.344015, -0.909075, -0.235024,
		-0.773255, -0.416278, 0.478318,
		41.489422, 41.986252, 28.773220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794827, 41.520836, 28.510874>,  <42.030701, 42.277645, 28.438396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794827, 41.520836, 28.510874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462700, 41.322269, 28.612181>,  <41.263424, 41.203129, 28.672964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462700, 41.322269, 28.612181>,  <41.794827, 41.520836, 28.510874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462700, 41.322269, 28.612181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239937, -0.728618, -0.641518,
		0.502997, -0.471894, 0.724092,
		-0.830316, -0.496418, 0.253268,
		41.213604, 41.173344, 28.688162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833214, 40.855133, 28.492870>,  <41.794827, 41.520836, 28.510874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833214, 40.855133, 28.492870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441181, 40.897110, 28.425426>,  <41.205963, 40.922298, 28.384960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441181, 40.897110, 28.425426>,  <41.833214, 40.855133, 28.492870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441181, 40.897110, 28.425426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090638, -0.519057, -0.849921,
		-0.176714, -0.848273, 0.499205,
		-0.980080, 0.104946, -0.168610,
		41.147156, 40.928593, 28.374844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595657, 40.238934, 28.387417>,  <41.833214, 40.855133, 28.492870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595657, 40.238934, 28.387417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364815, 40.468170, 28.154688>,  <41.226311, 40.605713, 28.015051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364815, 40.468170, 28.154688>,  <41.595657, 40.238934, 28.387417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364815, 40.468170, 28.154688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245148, -0.558009, -0.792798,
		-0.779007, -0.600160, 0.181538,
		-0.577105, 0.573091, -0.581821,
		41.191685, 40.640099, 27.980143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298988, 39.692768, 28.036619>,  <41.595657, 40.238934, 28.387417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298988, 39.692768, 28.036619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674450, 39.650753, 27.905233>,  <41.899727, 39.625546, 27.826403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674450, 39.650753, 27.905233>,  <41.298988, 39.692768, 28.036619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674450, 39.650753, 27.905233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216077, -0.563186, 0.797579,
		-0.268759, -0.819628, -0.505944,
		0.938658, -0.105033, -0.328464,
		41.956047, 39.619244, 27.806694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484009, 39.257198, 28.601738>,  <41.298988, 39.692768, 28.036619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484009, 39.257198, 28.601738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834255, 39.345928, 28.430117>,  <42.044403, 39.399166, 28.327143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834255, 39.345928, 28.430117>,  <41.484009, 39.257198, 28.601738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834255, 39.345928, 28.430117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478025, -0.525207, 0.704024,
		-0.069175, -0.821555, -0.565917,
		0.875618, 0.221822, -0.429055,
		42.096939, 39.412476, 28.301399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915295, 38.646015, 28.555153>,  <41.484009, 39.257198, 28.601738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915295, 38.646015, 28.555153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132256, 38.981728, 28.570135>,  <42.262432, 39.183155, 28.579124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132256, 38.981728, 28.570135>,  <41.915295, 38.646015, 28.555153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132256, 38.981728, 28.570135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650077, -0.447534, 0.614096,
		0.532162, -0.308740, -0.788342,
		0.542406, 0.839281, 0.037456,
		42.294979, 39.233513, 28.581371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572201, 38.559410, 28.223213>,  <41.915295, 38.646015, 28.555153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572201, 38.559410, 28.223213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546860, 38.813892, 28.530779>,  <42.531654, 38.966579, 28.715319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546860, 38.813892, 28.530779>,  <42.572201, 38.559410, 28.223213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546860, 38.813892, 28.530779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668121, -0.545296, 0.506227,
		0.741351, 0.545800, -0.390515,
		-0.063352, 0.636203, 0.768916,
		42.527855, 39.004753, 28.761454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288712, 38.548470, 28.588423>,  <42.572201, 38.559410, 28.223213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288712, 38.548470, 28.588423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000607, 38.653503, 28.845259>,  <42.827744, 38.716522, 28.999361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000607, 38.653503, 28.845259>,  <43.288712, 38.548470, 28.588423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000607, 38.653503, 28.845259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527444, -0.393920, 0.752748,
		0.450590, 0.880839, 0.145227,
		-0.720259, 0.262581, 0.642089,
		42.784531, 38.732277, 29.037886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620956, 38.957333, 29.128338>,  <43.288712, 38.548470, 28.588423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620956, 38.957333, 29.128338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273869, 38.866970, 29.305441>,  <43.065617, 38.812752, 29.411703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273869, 38.866970, 29.305441>,  <43.620956, 38.957333, 29.128338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273869, 38.866970, 29.305441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496228, -0.342151, 0.797929,
		-0.028767, 0.912085, 0.408991,
		-0.867715, -0.225907, 0.442760,
		43.013554, 38.799198, 29.438269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694469, 39.189476, 29.770021>,  <43.620956, 38.957333, 29.128338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694469, 39.189476, 29.770021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377213, 38.947548, 29.798647>,  <43.186859, 38.802391, 29.815823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377213, 38.947548, 29.798647>,  <43.694469, 39.189476, 29.770021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377213, 38.947548, 29.798647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367324, -0.381317, 0.848334,
		-0.485800, 0.699136, 0.524602,
		-0.793140, -0.604819, 0.071566,
		43.139271, 38.766102, 29.820116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417679, 39.207123, 30.478802>,  <43.694469, 39.189476, 29.770021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417679, 39.207123, 30.478802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282818, 38.860630, 30.331306>,  <43.201900, 38.652733, 30.242809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282818, 38.860630, 30.331306>,  <43.417679, 39.207123, 30.478802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282818, 38.860630, 30.331306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251869, -0.460390, 0.851236,
		-0.907131, 0.194126, 0.373401,
		-0.337157, -0.866231, -0.368739,
		43.181671, 38.600761, 30.220684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027802, 38.790897, 31.041523>,  <43.417679, 39.207123, 30.478802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027802, 38.790897, 31.041523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147411, 38.536915, 30.756590>,  <43.219177, 38.384525, 30.585630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147411, 38.536915, 30.756590>,  <43.027802, 38.790897, 31.041523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147411, 38.536915, 30.756590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510057, -0.524549, 0.681681,
		-0.806491, -0.567168, 0.167011,
		0.299022, -0.634955, -0.712333,
		43.237118, 38.346428, 30.542891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961994, 38.153343, 31.271448>,  <43.027802, 38.790897, 31.041523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961994, 38.153343, 31.271448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237694, 38.098198, 30.986935>,  <43.403114, 38.065113, 30.816227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237694, 38.098198, 30.986935>,  <42.961994, 38.153343, 31.271448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237694, 38.098198, 30.986935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490806, -0.633315, 0.598348,
		-0.532955, -0.761516, -0.368852,
		0.689252, -0.137858, -0.711286,
		43.444469, 38.056839, 30.773548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999893, 37.440376, 31.255562>,  <42.961994, 38.153343, 31.271448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999893, 37.440376, 31.255562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329025, 37.573349, 31.071198>,  <43.526505, 37.653133, 30.960579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329025, 37.573349, 31.071198>,  <42.999893, 37.440376, 31.255562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329025, 37.573349, 31.071198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559671, -0.614733, 0.555762,
		-0.098584, -0.715257, -0.691873,
		0.822830, 0.332432, -0.460912,
		43.575874, 37.673080, 30.932924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457405, 36.787807, 31.189377>,  <42.999893, 37.440376, 31.255562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457405, 36.787807, 31.189377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701782, 37.085945, 31.082636>,  <43.848408, 37.264828, 31.018591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701782, 37.085945, 31.082636>,  <43.457405, 36.787807, 31.189377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701782, 37.085945, 31.082636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760320, -0.458493, 0.460105,
		0.220585, -0.483994, -0.846813,
		0.610946, 0.745342, -0.266853,
		43.885067, 37.309547, 31.002581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061985, 36.554787, 30.825237>,  <43.457405, 36.787807, 31.189377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061985, 36.554787, 30.825237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162064, 36.902538, 30.995687>,  <44.222111, 37.111191, 31.097958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162064, 36.902538, 30.995687>,  <44.061985, 36.554787, 30.825237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162064, 36.902538, 30.995687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677891, -0.471541, 0.564015,
		0.691278, 0.147752, -0.707321,
		0.250197, 0.869378, 0.426126,
		44.237122, 37.163353, 31.123526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771248, 36.440060, 30.877611>,  <44.061985, 36.554787, 30.825237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771248, 36.440060, 30.877611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684029, 36.748863, 31.116428>,  <44.631699, 36.934147, 31.259718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684029, 36.748863, 31.116428>,  <44.771248, 36.440060, 30.877611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684029, 36.748863, 31.116428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785214, -0.224521, 0.577086,
		0.579564, 0.594637, -0.557236,
		-0.218046, 0.772008, 0.597042,
		44.618614, 36.980465, 31.295542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426689, 36.779224, 30.919613>,  <44.771248, 36.440060, 30.877611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426689, 36.779224, 30.919613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187366, 36.884247, 31.222425>,  <45.043774, 36.947262, 31.404114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187366, 36.884247, 31.222425>,  <45.426689, 36.779224, 30.919613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187366, 36.884247, 31.222425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701097, -0.285886, 0.653247,
		0.387940, 0.921592, -0.013032,
		-0.598302, 0.262558, 0.757032,
		45.007877, 36.963013, 31.449535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824486, 37.256481, 31.335823>,  <45.426689, 36.779224, 30.919613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824486, 37.256481, 31.335823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545536, 37.101833, 31.577215>,  <45.378166, 37.009045, 31.722052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545536, 37.101833, 31.577215>,  <45.824486, 37.256481, 31.335823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545536, 37.101833, 31.577215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714556, -0.309891, 0.627198,
		-0.055475, 0.868614, 0.492374,
		-0.697375, -0.386623, 0.603482,
		45.336323, 36.985847, 31.758261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038803, 37.479473, 31.935843>,  <45.824486, 37.256481, 31.335823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038803, 37.479473, 31.935843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771042, 37.193428, 32.016357>,  <45.610386, 37.021801, 32.064667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771042, 37.193428, 32.016357>,  <46.038803, 37.479473, 31.935843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771042, 37.193428, 32.016357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533838, -0.274599, 0.799758,
		-0.516645, 0.642812, 0.565571,
		-0.669399, -0.715114, 0.201288,
		45.570221, 36.978893, 32.076744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118000, 37.440964, 32.703724>,  <46.038803, 37.479473, 31.935843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118000, 37.440964, 32.703724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892525, 37.125668, 32.604988>,  <45.757240, 36.936489, 32.545746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892525, 37.125668, 32.604988>,  <46.118000, 37.440964, 32.703724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892525, 37.125668, 32.604988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341844, -0.494677, 0.799023,
		-0.751929, 0.366020, 0.548300,
		-0.563689, -0.788241, -0.246840,
		45.723419, 36.889194, 32.530937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602390, 37.348957, 33.221775>,  <46.118000, 37.440964, 32.703724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602390, 37.348957, 33.221775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673679, 36.989262, 33.061974>,  <45.716454, 36.773445, 32.966095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673679, 36.989262, 33.061974>,  <45.602390, 37.348957, 33.221775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673679, 36.989262, 33.061974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388000, -0.308882, 0.868360,
		-0.904264, -0.309765, 0.293857,
		0.178220, -0.899243, -0.399499,
		45.727146, 36.719490, 32.942123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674053, 36.991112, 33.782265>,  <45.602390, 37.348957, 33.221775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674053, 36.991112, 33.782265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837677, 36.753582, 33.505123>,  <45.935852, 36.611065, 33.338840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837677, 36.753582, 33.505123>,  <45.674053, 36.991112, 33.782265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837677, 36.753582, 33.505123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567952, -0.428598, 0.702662,
		-0.714211, -0.680939, 0.161939,
		0.409063, -0.593823, -0.692851,
		45.960396, 36.575436, 33.297268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555538, 36.353291, 33.963184>,  <45.674053, 36.991112, 33.782265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555538, 36.353291, 33.963184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868061, 36.313622, 33.716698>,  <46.055576, 36.289822, 33.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868061, 36.313622, 33.716698>,  <45.555538, 36.353291, 33.963184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868061, 36.313622, 33.716698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421845, -0.643744, 0.638467,
		-0.460003, -0.758788, -0.461127,
		0.781309, -0.099173, -0.616215,
		46.102455, 36.283871, 33.531834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673775, 35.650169, 33.943840>,  <45.555538, 36.353291, 33.963184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673775, 35.650169, 33.943840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016132, 35.801105, 33.802383>,  <46.221546, 35.891666, 33.717510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016132, 35.801105, 33.802383>,  <45.673775, 35.650169, 33.943840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016132, 35.801105, 33.802383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515040, -0.683672, 0.517037,
		-0.046678, -0.624668, -0.779494,
		0.855894, 0.377336, -0.353642,
		46.272900, 35.914307, 33.696289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141926, 35.121754, 33.639980>,  <45.673775, 35.650169, 33.943840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141926, 35.121754, 33.639980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348091, 35.436180, 33.776478>,  <46.471790, 35.624836, 33.858376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348091, 35.436180, 33.776478>,  <46.141926, 35.121754, 33.639980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348091, 35.436180, 33.776478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539306, -0.607006, 0.583689,
		0.665957, -0.116804, -0.736789,
		0.515413, 0.786067, 0.341247,
		46.502716, 35.672001, 33.878853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856228, 34.955505, 33.586483>,  <46.141926, 35.121754, 33.639980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856228, 34.955505, 33.586483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853321, 35.266190, 33.838409>,  <46.851578, 35.452602, 33.989563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853321, 35.266190, 33.838409>,  <46.856228, 34.955505, 33.586483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853321, 35.266190, 33.838409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702298, -0.444386, 0.556146,
		0.711846, 0.446360, -0.542253,
		-0.007272, 0.776713, 0.629812,
		46.851139, 35.499203, 34.027351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.596676, 35.202808, 33.745480>,  <46.856228, 34.955505, 33.586483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.596676, 35.202808, 33.745480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336926, 35.284866, 34.038391>,  <47.181076, 35.334103, 34.214138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336926, 35.284866, 34.038391>,  <47.596676, 35.202808, 33.745480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336926, 35.284866, 34.038391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564688, -0.514882, 0.644999,
		0.509355, 0.832353, 0.218507,
		-0.649372, 0.205146, 0.732278,
		47.142113, 35.346409, 34.258076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.959946, 35.737751, 34.225975>,  <47.596676, 35.202808, 33.745480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.959946, 35.737751, 34.225975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664585, 35.496552, 34.346741>,  <47.487370, 35.351833, 34.419201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664585, 35.496552, 34.346741>,  <47.959946, 35.737751, 34.225975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.664585, 35.496552, 34.346741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638532, -0.481189, 0.600611,
		-0.216889, 0.636277, 0.740346,
		-0.738401, -0.603000, 0.301918,
		47.443066, 35.315651, 34.437317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770073, 35.762287, 34.987984>,  <47.959946, 35.737751, 34.225975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770073, 35.762287, 34.987984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692310, 35.406582, 34.822376>,  <47.645653, 35.193157, 34.723011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692310, 35.406582, 34.822376>,  <47.770073, 35.762287, 34.987984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.692310, 35.406582, 34.822376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647425, -0.433404, 0.626899,
		-0.736917, -0.146173, 0.659989,
		-0.194406, -0.889266, -0.414019,
		47.633987, 35.139801, 34.698170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.556423, 35.198463, 35.439732>,  <47.770073, 35.762287, 34.987984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.556423, 35.198463, 35.439732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739517, 35.030258, 35.126389>,  <47.849373, 34.929337, 34.938381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739517, 35.030258, 35.126389>,  <47.556423, 35.198463, 35.439732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.739517, 35.030258, 35.126389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417776, -0.676021, 0.607009,
		-0.784819, -0.605118, -0.133761,
		0.457737, -0.420510, -0.783357,
		47.876839, 34.904106, 34.891380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273323, 34.521770, 35.194996>,  <47.556423, 35.198463, 35.439732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273323, 34.521770, 35.194996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666679, 34.588840, 35.167187>,  <47.902691, 34.629082, 35.150501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666679, 34.588840, 35.167187>,  <47.273323, 34.521770, 35.194996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666679, 34.588840, 35.167187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176107, -0.788469, 0.589323,
		0.043995, -0.591778, -0.804900,
		0.983387, 0.167676, -0.069527,
		47.961697, 34.639145, 35.146328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.085831, 35.801998, 45.792675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784737, 35.539417, 45.812500>,  <35.604080, 35.381870, 45.824394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784737, 35.539417, 45.812500>,  <36.085831, 35.801998, 45.792675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784737, 35.539417, 45.812500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081612, -0.167761, -0.982444,
		0.653243, -0.735477, 0.179855,
		-0.752737, -0.656453, 0.049565,
		35.558914, 35.342480, 45.827370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329620, 35.137642, 45.473862>,  <36.085831, 35.801998, 45.792675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329620, 35.137642, 45.473862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931049, 35.137821, 45.440094>,  <35.691906, 35.137928, 45.419834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931049, 35.137821, 45.440094>,  <36.329620, 35.137642, 45.473862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931049, 35.137821, 45.440094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083413, -0.148796, -0.985344,
		-0.013002, -0.988868, 0.148228,
		-0.996430, 0.000447, -0.084419,
		35.632122, 35.137955, 45.414768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170471, 34.694180, 45.046879>,  <36.329620, 35.137642, 45.473862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170471, 34.694180, 45.046879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802753, 34.849964, 45.024170>,  <35.582123, 34.943436, 45.010544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802753, 34.849964, 45.024170>,  <36.170471, 34.694180, 45.046879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802753, 34.849964, 45.024170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022632, -0.196327, -0.980277,
		-0.392929, -0.899874, 0.189296,
		-0.919290, 0.389464, -0.056777,
		35.526966, 34.966805, 45.007137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761509, 34.198360, 44.718384>,  <36.170471, 34.694180, 45.046879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761509, 34.198360, 44.718384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585590, 34.554596, 44.672024>,  <35.480038, 34.768337, 44.644207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585590, 34.554596, 44.672024>,  <35.761509, 34.198360, 44.718384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585590, 34.554596, 44.672024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058268, -0.100480, -0.993232,
		-0.896206, -0.443572, -0.007702,
		-0.439795, 0.890589, -0.115897,
		35.453651, 34.821774, 44.637253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276489, 34.122097, 44.213013>,  <35.761509, 34.198360, 44.718384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276489, 34.122097, 44.213013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340321, 34.516788, 44.225014>,  <35.378620, 34.753605, 44.232216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340321, 34.516788, 44.225014>,  <35.276489, 34.122097, 44.213013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340321, 34.516788, 44.225014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011704, 0.032281, -0.999410,
		-0.987116, 0.159131, 0.016700,
		0.159576, 0.986730, 0.030003,
		35.388195, 34.812809, 44.234013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928265, 34.417244, 43.609272>,  <35.276489, 34.122097, 44.213013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928265, 34.417244, 43.609272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199959, 34.693989, 43.707230>,  <35.362976, 34.860035, 43.766006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199959, 34.693989, 43.707230>,  <34.928265, 34.417244, 43.609272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199959, 34.693989, 43.707230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248939, 0.096717, -0.963678,
		-0.690415, 0.715526, -0.106537,
		0.679233, 0.691859, 0.244897,
		35.403728, 34.901546, 43.780697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848877, 34.877968, 43.049622>,  <34.928265, 34.417244, 43.609272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848877, 34.877968, 43.049622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199192, 34.986614, 43.209229>,  <35.409382, 35.051804, 43.304993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199192, 34.986614, 43.209229>,  <34.848877, 34.877968, 43.049622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199192, 34.986614, 43.209229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383198, 0.111432, -0.916920,
		-0.293516, 0.955932, -0.006493,
		0.875790, 0.271619, 0.399019,
		35.461929, 35.068100, 43.328934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087261, 35.445301, 42.678181>,  <34.848877, 34.877968, 43.049622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087261, 35.445301, 42.678181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425495, 35.283844, 42.817932>,  <35.628433, 35.186970, 42.901783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425495, 35.283844, 42.817932>,  <35.087261, 35.445301, 42.678181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425495, 35.283844, 42.817932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415642, 0.087088, -0.905349,
		0.335012, 0.910762, 0.241412,
		0.845582, -0.403644, 0.349375,
		35.679169, 35.162750, 42.922745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672832, 35.911522, 42.442711>,  <35.087261, 35.445301, 42.678181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672832, 35.911522, 42.442711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839035, 35.558914, 42.532402>,  <35.938759, 35.347351, 42.586216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839035, 35.558914, 42.532402>,  <35.672832, 35.911522, 42.442711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839035, 35.558914, 42.532402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326677, -0.085441, -0.941266,
		0.848901, 0.464355, 0.252470,
		0.415510, -0.881518, 0.224226,
		35.963688, 35.294460, 42.599670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411140, 35.910686, 42.440605>,  <35.672832, 35.911522, 42.442711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411140, 35.910686, 42.440605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323643, 35.524082, 42.386932>,  <36.271145, 35.292118, 42.354729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323643, 35.524082, 42.386932>,  <36.411140, 35.910686, 42.440605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323643, 35.524082, 42.386932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445826, 0.023325, -0.894816,
		0.867980, -0.255557, 0.425795,
		-0.218745, -0.966513, -0.134180,
		36.258018, 35.234127, 42.346680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968731, 35.697517, 42.138466>,  <36.411140, 35.910686, 42.440605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968731, 35.697517, 42.138466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717461, 35.393902, 42.070061>,  <36.566696, 35.211731, 42.029018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717461, 35.393902, 42.070061>,  <36.968731, 35.697517, 42.138466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717461, 35.393902, 42.070061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272853, -0.009064, -0.962013,
		0.728659, -0.650977, 0.212801,
		-0.628178, -0.759043, -0.171016,
		36.529007, 35.166187, 42.018757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330837, 35.204845, 41.785046>,  <36.968731, 35.697517, 42.138466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330837, 35.204845, 41.785046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943085, 35.154293, 41.700825>,  <36.710434, 35.123962, 41.650291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943085, 35.154293, 41.700825>,  <37.330837, 35.204845, 41.785046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943085, 35.154293, 41.700825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214374, -0.017323, -0.976598,
		0.119778, -0.991830, 0.043886,
		-0.969380, -0.126383, -0.210548,
		36.652271, 35.116379, 41.637661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362602, 34.764339, 41.287659>,  <37.330837, 35.204845, 41.785046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362602, 34.764339, 41.287659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982426, 34.878342, 41.237961>,  <36.754322, 34.946743, 41.208141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982426, 34.878342, 41.237961>,  <37.362602, 34.764339, 41.287659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982426, 34.878342, 41.237961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179318, 0.176047, -0.967911,
		-0.253991, -0.942219, -0.218429,
		-0.950439, 0.285009, -0.124242,
		36.697292, 34.963844, 41.200687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173153, 34.408592, 40.615570>,  <37.362602, 34.764339, 41.287659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173153, 34.408592, 40.615570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931423, 34.714661, 40.704384>,  <36.786385, 34.898300, 40.757671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931423, 34.714661, 40.704384>,  <37.173153, 34.408592, 40.615570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931423, 34.714661, 40.704384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070550, 0.226198, -0.971523,
		-0.793607, -0.602782, -0.082715,
		-0.604326, 0.765172, 0.222039,
		36.750126, 34.944214, 40.770996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602493, 34.336636, 40.191940>,  <37.173153, 34.408592, 40.615570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602493, 34.336636, 40.191940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623482, 34.720573, 40.302170>,  <36.636074, 34.950935, 40.368309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623482, 34.720573, 40.302170>,  <36.602493, 34.336636, 40.191940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623482, 34.720573, 40.302170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017271, 0.275042, -0.961277,
		-0.998473, 0.055202, -0.002145,
		0.052475, 0.959846, 0.275575,
		36.639225, 35.008526, 40.384842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173725, 34.645077, 39.688099>,  <36.602493, 34.336636, 40.191940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173725, 34.645077, 39.688099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360256, 34.971107, 39.825611>,  <36.472176, 35.166725, 39.908119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360256, 34.971107, 39.825611>,  <36.173725, 34.645077, 39.688099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360256, 34.971107, 39.825611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034477, 0.371583, -0.927760,
		-0.883942, 0.444489, 0.145176,
		0.466324, 0.815080, 0.343782,
		36.500153, 35.215633, 39.928745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766598, 35.220200, 39.370541>,  <36.173725, 34.645077, 39.688099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766598, 35.220200, 39.370541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124870, 35.368259, 39.469124>,  <36.339832, 35.457096, 39.528275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124870, 35.368259, 39.469124>,  <35.766598, 35.220200, 39.370541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124870, 35.368259, 39.469124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028743, 0.504874, -0.862715,
		-0.443768, 0.779801, 0.441566,
		0.895681, 0.370153, 0.246460,
		36.393574, 35.479305, 39.543060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733734, 36.002510, 39.261669>,  <35.766598, 35.220200, 39.370541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733734, 36.002510, 39.261669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107376, 35.859982, 39.270554>,  <36.331562, 35.774464, 39.275883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107376, 35.859982, 39.270554>,  <35.733734, 36.002510, 39.261669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107376, 35.859982, 39.270554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223708, 0.535699, -0.814237,
		0.278229, 0.765548, 0.580108,
		0.934100, -0.356319, 0.022212,
		36.387608, 35.753086, 39.277218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244427, 36.614861, 39.179054>,  <35.733734, 36.002510, 39.261669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244427, 36.614861, 39.179054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439701, 36.284893, 39.065090>,  <36.556866, 36.086910, 38.996712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439701, 36.284893, 39.065090>,  <36.244427, 36.614861, 39.179054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439701, 36.284893, 39.065090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291281, 0.461743, -0.837824,
		0.822694, 0.326030, 0.465703,
		0.488190, -0.824923, -0.284906,
		36.586159, 36.037415, 38.979618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956173, 36.822578, 39.084064>,  <36.244427, 36.614861, 39.179054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956173, 36.822578, 39.084064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920986, 36.484665, 38.872932>,  <36.899872, 36.281918, 38.746254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920986, 36.484665, 38.872932>,  <36.956173, 36.822578, 39.084064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920986, 36.484665, 38.872932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251359, 0.493910, -0.832389,
		0.963888, -0.205899, 0.168895,
		-0.087970, -0.844783, -0.527829,
		36.894596, 36.231232, 38.714584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564842, 36.729366, 38.749023>,  <36.956173, 36.822578, 39.084064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564842, 36.729366, 38.749023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325924, 36.501289, 38.523411>,  <37.182575, 36.364445, 38.388042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325924, 36.501289, 38.523411>,  <37.564842, 36.729366, 38.749023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325924, 36.501289, 38.523411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370032, 0.428017, -0.824547,
		0.711562, -0.701203, -0.044662,
		-0.597291, -0.570189, -0.564028,
		37.146736, 36.330231, 38.354202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947338, 36.617153, 38.226116>,  <37.564842, 36.729366, 38.749023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947338, 36.617153, 38.226116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587914, 36.509079, 38.087788>,  <37.372261, 36.444237, 38.004791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587914, 36.509079, 38.087788>,  <37.947338, 36.617153, 38.226116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587914, 36.509079, 38.087788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262933, 0.299470, -0.917161,
		0.351366, -0.915051, -0.198051,
		-0.898559, -0.270185, -0.345820,
		37.318344, 36.428024, 37.984043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706188, 36.618782, 38.521984>,  <37.947338, 36.617153, 38.226116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706188, 36.618782, 38.521984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048340, 36.822075, 38.562027>,  <39.253632, 36.944050, 38.586052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048340, 36.822075, 38.562027>,  <38.706188, 36.618782, 38.521984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048340, 36.822075, 38.562027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058723, -0.096860, 0.993564,
		0.514661, -0.855754, -0.053007,
		0.855380, 0.508236, 0.100103,
		39.304955, 36.974545, 38.592056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013271, 36.230892, 39.129128>,  <38.706188, 36.618782, 38.521984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013271, 36.230892, 39.129128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200611, 36.583473, 39.104839>,  <39.313015, 36.795021, 39.090267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200611, 36.583473, 39.104839>,  <39.013271, 36.230892, 39.129128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200611, 36.583473, 39.104839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099905, 0.015447, 0.994877,
		0.877877, -0.472015, -0.080827,
		0.468349, 0.881455, -0.060717,
		39.341114, 36.847908, 39.086624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674191, 36.210217, 39.592655>,  <39.013271, 36.230892, 39.129128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674191, 36.210217, 39.592655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548584, 36.584610, 39.528996>,  <39.473221, 36.809246, 39.490799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548584, 36.584610, 39.528996>,  <39.674191, 36.210217, 39.592655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548584, 36.584610, 39.528996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120892, 0.205685, 0.971123,
		0.941689, 0.285709, -0.177741,
		-0.314017, 0.935983, -0.159151,
		39.454380, 36.865406, 39.481251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072735, 36.600494, 40.061066>,  <39.674191, 36.210217, 39.592655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072735, 36.600494, 40.061066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772846, 36.844635, 39.958775>,  <39.592915, 36.991119, 39.897400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772846, 36.844635, 39.958775>,  <40.072735, 36.600494, 40.061066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772846, 36.844635, 39.958775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024188, 0.411451, 0.911111,
		0.661314, 0.676892, -0.323236,
		-0.749719, 0.610349, -0.255725,
		39.547932, 37.027740, 39.882057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385624, 37.322910, 40.322216>,  <40.072735, 36.600494, 40.061066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385624, 37.322910, 40.322216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.989552, 37.329937, 40.266739>,  <39.751907, 37.334152, 40.233452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.989552, 37.329937, 40.266739>,  <40.385624, 37.322910, 40.322216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989552, 37.329937, 40.266739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119563, 0.407716, 0.905247,
		0.072450, 0.912940, -0.401612,
		-0.990180, 0.017567, -0.138693,
		39.692497, 37.335209, 40.225132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208134, 37.900906, 40.663536>,  <40.385624, 37.322910, 40.322216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208134, 37.900906, 40.663536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833755, 37.774471, 40.601437>,  <39.609131, 37.698612, 40.564178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833755, 37.774471, 40.601437>,  <40.208134, 37.900906, 40.663536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833755, 37.774471, 40.601437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241387, 0.254863, 0.936364,
		-0.256405, 0.913857, -0.314836,
		-0.935943, -0.316086, -0.155245,
		39.552971, 37.679646, 40.554863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867222, 38.392628, 40.873764>,  <40.208134, 37.900906, 40.663536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867222, 38.392628, 40.873764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627449, 38.075497, 40.917770>,  <39.483585, 37.885216, 40.944176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627449, 38.075497, 40.917770>,  <39.867222, 38.392628, 40.873764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627449, 38.075497, 40.917770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347944, 0.381883, 0.856212,
		-0.720847, 0.474957, -0.504773,
		-0.599429, -0.792831, 0.110021,
		39.447620, 37.837646, 40.950775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220840, 38.611027, 41.117062>,  <39.867222, 38.392628, 40.873764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220840, 38.611027, 41.117062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243259, 38.226376, 41.224487>,  <39.256710, 37.995583, 41.288944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243259, 38.226376, 41.224487>,  <39.220840, 38.611027, 41.117062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243259, 38.226376, 41.224487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412592, 0.222638, 0.883289,
		-0.909190, -0.160314, -0.384283,
		0.056048, -0.961630, 0.268565,
		39.260075, 37.937885, 41.305058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662857, 38.422363, 41.471428>,  <39.220840, 38.611027, 41.117062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662857, 38.422363, 41.471428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919594, 38.147881, 41.608337>,  <39.073635, 37.983192, 41.690483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919594, 38.147881, 41.608337>,  <38.662857, 38.422363, 41.471428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919594, 38.147881, 41.608337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461180, 0.011180, 0.887236,
		-0.612656, -0.727319, -0.309290,
		0.641846, -0.686209, 0.342274,
		39.112148, 37.942017, 41.711021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229084, 38.314491, 41.955921>,  <38.662857, 38.422363, 41.471428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229084, 38.314491, 41.955921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554565, 38.097076, 42.038342>,  <38.749855, 37.966629, 42.087795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554565, 38.097076, 42.038342>,  <38.229084, 38.314491, 41.955921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554565, 38.097076, 42.038342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390846, -0.249209, 0.886078,
		-0.430268, -0.801537, -0.415221,
		0.813701, -0.543538, 0.206050,
		38.798676, 37.934013, 42.100155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969086, 37.726082, 42.142818>,  <38.229084, 38.314491, 41.955921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969086, 37.726082, 42.142818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339447, 37.721405, 42.293854>,  <38.561665, 37.718601, 42.384476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339447, 37.721405, 42.293854>,  <37.969086, 37.726082, 42.142818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339447, 37.721405, 42.293854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360382, -0.327071, 0.873584,
		0.113288, -0.944927, -0.307047,
		0.925900, -0.011688, 0.377588,
		38.617218, 37.717899, 42.407131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974884, 37.086159, 42.392361>,  <37.969086, 37.726082, 42.142818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974884, 37.086159, 42.392361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247616, 37.306660, 42.584709>,  <38.411255, 37.438961, 42.700119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247616, 37.306660, 42.584709>,  <37.974884, 37.086159, 42.392361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247616, 37.306660, 42.584709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331971, -0.352596, 0.874912,
		0.651846, -0.756175, -0.057411,
		0.681830, 0.551249, 0.480867,
		38.452164, 37.472034, 42.728970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341270, 36.660904, 42.909634>,  <37.974884, 37.086159, 42.392361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341270, 36.660904, 42.909634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368298, 37.041767, 43.028854>,  <38.384514, 37.270283, 43.100388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368298, 37.041767, 43.028854>,  <38.341270, 36.660904, 42.909634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368298, 37.041767, 43.028854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192695, -0.280653, 0.940267,
		0.978930, -0.120965, 0.164512,
		0.067569, 0.952156, 0.298049,
		38.388569, 37.327415, 43.118271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905670, 36.692375, 43.402477>,  <38.341270, 36.660904, 42.909634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905670, 36.692375, 43.402477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704586, 37.031590, 43.469547>,  <38.583935, 37.235119, 43.509789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704586, 37.031590, 43.469547>,  <38.905670, 36.692375, 43.402477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704586, 37.031590, 43.469547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051674, -0.223095, 0.973426,
		0.862910, 0.480686, 0.155974,
		-0.502709, 0.848039, 0.167672,
		38.553772, 37.285999, 43.519848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162479, 37.178707, 44.042908>,  <38.905670, 36.692375, 43.402477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162479, 37.178707, 44.042908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777267, 37.275051, 43.994659>,  <38.546139, 37.332859, 43.965710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777267, 37.275051, 43.994659>,  <39.162479, 37.178707, 44.042908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777267, 37.275051, 43.994659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142936, -0.077381, 0.986702,
		0.228328, 0.967469, 0.108949,
		-0.963035, 0.240865, -0.120618,
		38.488358, 37.347309, 43.958473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031116, 37.610996, 44.627552>,  <39.162479, 37.178707, 44.042908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031116, 37.610996, 44.627552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670231, 37.495083, 44.499783>,  <38.453697, 37.425533, 44.423122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670231, 37.495083, 44.499783>,  <39.031116, 37.610996, 44.627552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670231, 37.495083, 44.499783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299500, -0.111949, 0.947506,
		-0.310329, 0.950523, 0.014212,
		-0.902217, -0.289782, -0.319423,
		38.399567, 37.408150, 44.403957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626030, 38.086601, 45.016018>,  <39.031116, 37.610996, 44.627552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626030, 38.086601, 45.016018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373180, 37.791027, 44.922726>,  <38.221470, 37.613682, 44.866749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373180, 37.791027, 44.922726>,  <38.626030, 38.086601, 45.016018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373180, 37.791027, 44.922726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313008, -0.031838, 0.949217,
		-0.708832, 0.673028, -0.211166,
		-0.632126, -0.738932, -0.233231,
		38.183544, 37.569347, 44.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949879, 38.231411, 45.398212>,  <38.626030, 38.086601, 45.016018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949879, 38.231411, 45.398212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970642, 37.838100, 45.328388>,  <37.983101, 37.602112, 45.286495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970642, 37.838100, 45.328388>,  <37.949879, 38.231411, 45.398212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970642, 37.838100, 45.328388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218151, -0.181735, 0.958845,
		-0.974534, -0.011690, -0.223936,
		0.051906, -0.983278, -0.174556,
		37.986214, 37.543118, 45.276020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.357201, 37.914272, 45.849983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612755, 37.615711, 45.775467>,  <37.766087, 37.436573, 45.730759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612755, 37.615711, 45.775467>,  <37.357201, 37.914272, 45.849983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612755, 37.615711, 45.775467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317888, -0.476655, 0.819602,
		-0.700549, -0.464416, -0.541802,
		0.638889, -0.746403, -0.186288,
		37.804420, 37.391788, 45.719582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956367, 37.367195, 46.048534>,  <37.357201, 37.914272, 45.849983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956367, 37.367195, 46.048534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329830, 37.224232, 46.057781>,  <37.553909, 37.138454, 46.063332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329830, 37.224232, 46.057781>,  <36.956367, 37.367195, 46.048534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329830, 37.224232, 46.057781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221314, -0.524970, 0.821843,
		-0.281596, -0.772441, -0.569244,
		0.933661, -0.357410, 0.023122,
		37.609928, 37.117008, 46.064716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924183, 36.678318, 46.230804>,  <36.956367, 37.367195, 46.048534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924183, 36.678318, 46.230804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303516, 36.779381, 46.307571>,  <37.531116, 36.840019, 46.353634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303516, 36.779381, 46.307571>,  <36.924183, 36.678318, 46.230804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303516, 36.779381, 46.307571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004781, -0.593437, 0.804866,
		0.317248, -0.764197, -0.561566,
		0.948331, 0.252657, 0.191920,
		37.588017, 36.855179, 46.365147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264141, 35.994148, 46.249004>,  <36.924183, 36.678318, 46.230804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264141, 35.994148, 46.249004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436558, 36.300842, 46.439301>,  <37.540009, 36.484859, 46.553478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436558, 36.300842, 46.439301>,  <37.264141, 35.994148, 46.249004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436558, 36.300842, 46.439301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067627, -0.553199, 0.830300,
		0.899794, -0.325721, -0.290303,
		0.431042, 0.766731, 0.475737,
		37.565872, 36.530861, 46.582024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750248, 35.642902, 46.699741>,  <37.264141, 35.994148, 46.249004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750248, 35.642902, 46.699741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742870, 36.001804, 46.876194>,  <37.738445, 36.217144, 46.982067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742870, 36.001804, 46.876194>,  <37.750248, 35.642902, 46.699741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742870, 36.001804, 46.876194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146133, -0.438891, 0.886577,
		0.989093, -0.048115, 0.139212,
		-0.018441, 0.897251, 0.441136,
		37.737339, 36.270981, 47.008533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989548, 35.579052, 47.307350>,  <37.750248, 35.642902, 46.699741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989548, 35.579052, 47.307350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799988, 35.929829, 47.339344>,  <37.686253, 36.140293, 47.358540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799988, 35.929829, 47.339344>,  <37.989548, 35.579052, 47.307350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799988, 35.929829, 47.339344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238869, -0.215449, 0.946849,
		0.847564, 0.429601, 0.311574,
		-0.473896, 0.876941, 0.079988,
		37.657818, 36.192909, 47.363342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134277, 35.827805, 48.000343>,  <37.989548, 35.579052, 47.307350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134277, 35.827805, 48.000343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805969, 36.023853, 47.882965>,  <37.608982, 36.141483, 47.812538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805969, 36.023853, 47.882965>,  <38.134277, 35.827805, 48.000343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805969, 36.023853, 47.882965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361014, -0.046936, 0.931379,
		0.442720, 0.870387, 0.215466,
		-0.820773, 0.490126, -0.293442,
		37.559738, 36.170891, 47.794933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189117, 36.400764, 48.361401>,  <38.134277, 35.827805, 48.000343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189117, 36.400764, 48.361401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813580, 36.334831, 48.240467>,  <37.588257, 36.295273, 48.167908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813580, 36.334831, 48.240467>,  <38.189117, 36.400764, 48.361401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813580, 36.334831, 48.240467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320631, 0.098284, 0.942091,
		-0.125574, 0.981412, -0.145124,
		-0.938843, -0.164834, -0.302329,
		37.531925, 36.285381, 48.149769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833313, 37.059822, 48.225868>,  <38.189117, 36.400764, 48.361401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833313, 37.059822, 48.225868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564514, 36.781250, 48.326591>,  <37.403233, 36.614109, 48.387024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564514, 36.781250, 48.326591>,  <37.833313, 37.059822, 48.225868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564514, 36.781250, 48.326591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074865, 0.402170, 0.912499,
		-0.736758, 0.594347, -0.322396,
		-0.671999, -0.696427, 0.251806,
		37.362915, 36.572323, 48.402134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340736, 37.397404, 48.753235>,  <37.833313, 37.059822, 48.225868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340736, 37.397404, 48.753235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245834, 37.009804, 48.780815>,  <37.188892, 36.777245, 48.797363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245834, 37.009804, 48.780815>,  <37.340736, 37.397404, 48.753235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245834, 37.009804, 48.780815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291943, 0.138816, 0.946308,
		-0.926542, 0.204386, -0.315827,
		-0.237254, -0.968998, 0.068949,
		37.174660, 36.719105, 48.801498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783218, 37.358353, 49.249016>,  <37.340736, 37.397404, 48.753235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783218, 37.358353, 49.249016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874432, 36.968891, 49.247990>,  <36.929157, 36.735214, 49.247375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874432, 36.968891, 49.247990>,  <36.783218, 37.358353, 49.249016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874432, 36.968891, 49.247990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160021, -0.040072, 0.986300,
		-0.960414, -0.224497, -0.164942,
		0.228030, -0.973651, -0.002561,
		36.942841, 36.676796, 49.247223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177238, 36.919659, 49.619957>,  <36.783218, 37.358353, 49.249016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177238, 36.919659, 49.619957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527828, 36.728294, 49.641571>,  <36.738182, 36.613476, 49.654541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527828, 36.728294, 49.641571>,  <36.177238, 36.919659, 49.619957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527828, 36.728294, 49.641571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164926, -0.192897, 0.967259,
		-0.452328, -0.856686, -0.247971,
		0.876470, -0.478415, 0.054037,
		36.790768, 36.584770, 49.657784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945023, 36.473526, 49.988300>,  <36.177238, 36.919659, 49.619957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945023, 36.473526, 49.988300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343452, 36.480675, 50.022964>,  <36.582512, 36.484966, 50.043762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343452, 36.480675, 50.022964>,  <35.945023, 36.473526, 49.988300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343452, 36.480675, 50.022964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086329, -0.018549, 0.996094,
		0.019420, -0.999668, -0.016933,
		0.996077, 0.017882, 0.086661,
		36.642277, 36.486038, 50.048962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081352, 36.001549, 50.587563>,  <35.945023, 36.473526, 49.988300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081352, 36.001549, 50.587563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.420269, 36.213398, 50.571564>,  <36.623619, 36.340508, 50.561962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.420269, 36.213398, 50.571564>,  <36.081352, 36.001549, 50.587563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420269, 36.213398, 50.571564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108781, -0.099325, 0.989091,
		0.519874, -0.842397, -0.141770,
		0.847289, 0.529625, -0.040000,
		36.674454, 36.372284, 50.559563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493740, 35.542934, 50.831078>,  <36.081352, 36.001549, 50.587563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493740, 35.542934, 50.831078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653965, 35.907791, 50.865845>,  <36.750099, 36.126705, 50.886703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653965, 35.907791, 50.865845>,  <36.493740, 35.542934, 50.831078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653965, 35.907791, 50.865845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060990, -0.121192, 0.990754,
		0.914238, -0.391556, -0.104176,
		0.400561, 0.912138, 0.086917,
		36.774132, 36.181431, 50.891918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135471, 35.419998, 51.106674>,  <36.493740, 35.542934, 50.831078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135471, 35.419998, 51.106674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078251, 35.802929, 51.207119>,  <37.043919, 36.032688, 51.267384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078251, 35.802929, 51.207119>,  <37.135471, 35.419998, 51.106674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078251, 35.802929, 51.207119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193888, -0.221697, 0.955645,
		0.970538, 0.185390, -0.153902,
		-0.143048, 0.957330, 0.251110,
		37.035336, 36.090130, 51.282452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662300, 35.566345, 51.587330>,  <37.135471, 35.419998, 51.106674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662300, 35.566345, 51.587330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389900, 35.851757, 51.653198>,  <37.226460, 36.023003, 51.692719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389900, 35.851757, 51.653198>,  <37.662300, 35.566345, 51.587330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389900, 35.851757, 51.653198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132113, -0.101475, 0.986027,
		0.720267, 0.693240, -0.025162,
		-0.681000, 0.713527, 0.164675,
		37.185600, 36.065815, 51.702602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935173, 35.941586, 52.080387>,  <37.662300, 35.566345, 51.587330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935173, 35.941586, 52.080387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547245, 36.034332, 52.110569>,  <37.314487, 36.089981, 52.128677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547245, 36.034332, 52.110569>,  <37.935173, 35.941586, 52.080387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547245, 36.034332, 52.110569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044686, -0.135206, 0.989809,
		0.239704, 0.963306, 0.120765,
		-0.969817, 0.231864, 0.075456,
		37.256298, 36.103893, 52.133205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887497, 36.216507, 52.609425>,  <37.935173, 35.941586, 52.080387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887497, 36.216507, 52.609425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503799, 36.104542, 52.593937>,  <37.273582, 36.037361, 52.584644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503799, 36.104542, 52.593937>,  <37.887497, 36.216507, 52.609425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503799, 36.104542, 52.593937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010639, -0.172690, 0.984919,
		-0.282382, 0.944365, 0.168629,
		-0.959243, -0.279918, -0.038717,
		37.216026, 36.020565, 52.582321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630836, 36.421623, 53.218193>,  <37.887497, 36.216507, 52.609425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630836, 36.421623, 53.218193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325283, 36.195259, 53.094109>,  <37.141953, 36.059441, 53.019657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325283, 36.195259, 53.094109>,  <37.630836, 36.421623, 53.218193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325283, 36.195259, 53.094109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159079, -0.300737, 0.940346,
		-0.625445, 0.767660, 0.139703,
		-0.763880, -0.565911, -0.310213,
		37.096119, 36.025486, 53.001045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057640, 36.556503, 53.707447>,  <37.630836, 36.421623, 53.218193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057640, 36.556503, 53.707447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980930, 36.200912, 53.541103>,  <36.934902, 35.987556, 53.441296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980930, 36.200912, 53.541103>,  <37.057640, 36.556503, 53.707447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980930, 36.200912, 53.541103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091956, -0.405585, 0.909420,
		-0.977121, 0.212647, -0.003965,
		-0.191777, -0.888978, -0.415860,
		36.923397, 35.934219, 53.416344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401268, 36.316833, 53.795364>,  <37.057640, 36.556503, 53.707447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401268, 36.316833, 53.795364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634472, 35.994205, 53.756298>,  <36.774395, 35.800629, 53.732861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634472, 35.994205, 53.756298>,  <36.401268, 36.316833, 53.795364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634472, 35.994205, 53.756298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297582, -0.323846, 0.898092,
		-0.756002, -0.494538, -0.428827,
		0.583014, -0.806571, -0.097663,
		36.809376, 35.752235, 53.726997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034813, 35.627201, 53.693527>,  <36.401268, 36.316833, 53.795364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034813, 35.627201, 53.693527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379520, 35.638981, 53.896107>,  <36.586346, 35.646049, 54.017654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379520, 35.638981, 53.896107>,  <36.034813, 35.627201, 53.693527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379520, 35.638981, 53.896107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486974, -0.231783, 0.842100,
		0.142187, -0.972322, -0.185401,
		0.861765, 0.029450, 0.506452,
		36.638050, 35.647816, 54.048042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391998, 35.310497, 53.792461>,  <36.034813, 35.627201, 53.693527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391998, 35.310497, 53.792461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250786, 34.951923, 53.899616>,  <35.166058, 34.736778, 53.963909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250786, 34.951923, 53.899616>,  <35.391998, 35.310497, 53.792461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250786, 34.951923, 53.899616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054119, -0.305415, -0.950680,
		0.934044, -0.321124, 0.156336,
		-0.353033, -0.896438, 0.267892,
		35.144875, 34.682991, 53.979984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758484, 34.741169, 53.506851>,  <35.391998, 35.310497, 53.792461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758484, 34.741169, 53.506851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384548, 34.610058, 53.561462>,  <35.160187, 34.531391, 53.594231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384548, 34.610058, 53.561462>,  <35.758484, 34.741169, 53.506851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384548, 34.610058, 53.561462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043020, -0.277122, -0.959871,
		0.352457, -0.903198, 0.244963,
		-0.934838, -0.327775, 0.136529,
		35.104095, 34.511726, 53.602421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668217, 34.214741, 53.144699>,  <35.758484, 34.741169, 53.506851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668217, 34.214741, 53.144699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277271, 34.267933, 53.210514>,  <35.042706, 34.299850, 53.250004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277271, 34.267933, 53.210514>,  <35.668217, 34.214741, 53.144699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277271, 34.267933, 53.210514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180867, -0.121776, -0.975939,
		-0.109715, -0.983613, 0.143066,
		-0.977369, 0.132951, 0.164543,
		34.984062, 34.307827, 53.259876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320019, 33.630295, 52.796173>,  <35.668217, 34.214741, 53.144699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320019, 33.630295, 52.796173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028606, 33.898624, 52.851650>,  <34.853760, 34.059624, 52.884937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028606, 33.898624, 52.851650>,  <35.320019, 33.630295, 52.796173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028606, 33.898624, 52.851650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289793, -0.118362, -0.949742,
		-0.620694, -0.732111, 0.280630,
		-0.728533, 0.670824, 0.138694,
		34.810047, 34.099873, 52.893257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675865, 33.281132, 52.584862>,  <35.320019, 33.630295, 52.796173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675865, 33.281132, 52.584862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622696, 33.676266, 52.552570>,  <34.590794, 33.913345, 52.533195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622696, 33.676266, 52.552570>,  <34.675865, 33.281132, 52.584862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622696, 33.676266, 52.552570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287718, -0.116405, -0.950615,
		-0.948446, -0.103131, 0.299690,
		-0.132924, 0.987833, -0.080731,
		34.582817, 33.972614, 52.528351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031155, 33.362251, 52.119637>,  <34.675865, 33.281132, 52.584862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031155, 33.362251, 52.119637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219059, 33.714554, 52.095684>,  <34.331802, 33.925938, 52.081314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219059, 33.714554, 52.095684>,  <34.031155, 33.362251, 52.119637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219059, 33.714554, 52.095684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218728, 0.050407, -0.974483,
		-0.855266, 0.470875, 0.216326,
		0.469764, 0.880759, -0.059882,
		34.359989, 33.978783, 52.077721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645203, 33.616852, 51.695919>,  <34.031155, 33.362251, 52.119637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645203, 33.616852, 51.695919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942028, 33.882885, 51.662449>,  <34.120125, 34.042507, 51.642368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942028, 33.882885, 51.662449>,  <33.645203, 33.616852, 51.695919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942028, 33.882885, 51.662449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141208, 0.033076, -0.989427,
		-0.655287, 0.746034, 0.118460,
		0.742064, 0.665086, -0.083672,
		34.164646, 34.082413, 51.637348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493240, 34.062931, 51.153267>,  <33.645203, 33.616852, 51.695919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493240, 34.062931, 51.153267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885780, 34.132236, 51.186558>,  <34.121304, 34.173820, 51.206532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885780, 34.132236, 51.186558>,  <33.493240, 34.062931, 51.153267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885780, 34.132236, 51.186558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030985, 0.284726, -0.958108,
		-0.189706, 0.942820, 0.274048,
		0.981352, 0.173267, 0.083227,
		34.180187, 34.184216, 51.211525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624157, 34.766838, 50.877968>,  <33.493240, 34.062931, 51.153267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624157, 34.766838, 50.877968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974670, 34.574146, 50.874573>,  <34.184978, 34.458530, 50.872536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974670, 34.574146, 50.874573>,  <33.624157, 34.766838, 50.877968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974670, 34.574146, 50.874573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171807, 0.328888, -0.928609,
		0.450126, 0.812264, 0.370962,
		0.876281, -0.481725, -0.008489,
		34.237556, 34.429630, 50.872025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147491, 35.285683, 50.682228>,  <33.624157, 34.766838, 50.877968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147491, 35.285683, 50.682228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331783, 34.936642, 50.617363>,  <34.442360, 34.727219, 50.578445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331783, 34.936642, 50.617363>,  <34.147491, 35.285683, 50.682228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331783, 34.936642, 50.617363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056790, 0.211319, -0.975766,
		0.885720, 0.440358, 0.146917,
		0.460732, -0.872599, -0.162162,
		34.470001, 34.674862, 50.568714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746601, 35.492779, 50.418743>,  <34.147491, 35.285683, 50.682228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746601, 35.492779, 50.418743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709736, 35.114887, 50.292889>,  <34.687618, 34.888153, 50.217377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709736, 35.114887, 50.292889>,  <34.746601, 35.492779, 50.418743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709736, 35.114887, 50.292889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225602, 0.287957, -0.930690,
		0.969851, -0.156757, 0.186593,
		-0.092161, -0.944726, -0.314640,
		34.682087, 34.831470, 50.198498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356220, 35.324154, 50.070652>,  <34.746601, 35.492779, 50.418743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356220, 35.324154, 50.070652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064072, 35.080982, 49.946091>,  <34.888783, 34.935078, 49.871353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064072, 35.080982, 49.946091>,  <35.356220, 35.324154, 50.070652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064072, 35.080982, 49.946091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223214, 0.218447, -0.949977,
		0.645547, -0.763348, -0.023849,
		-0.730373, -0.607931, -0.311408,
		34.844959, 34.898602, 49.852669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698494, 34.874123, 49.567051>,  <35.356220, 35.324154, 50.070652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698494, 34.874123, 49.567051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306080, 34.850021, 49.493362>,  <35.070633, 34.835560, 49.449150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306080, 34.850021, 49.493362>,  <35.698494, 34.874123, 49.567051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306080, 34.850021, 49.493362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173507, 0.150621, -0.973246,
		0.086385, -0.986754, -0.137311,
		-0.981037, -0.060250, -0.184220,
		35.011768, 34.831947, 49.438095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608002, 34.395569, 48.987507>,  <35.698494, 34.874123, 49.567051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608002, 34.395569, 48.987507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272839, 34.613487, 49.000813>,  <35.071739, 34.744240, 49.008797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272839, 34.613487, 49.000813>,  <35.608002, 34.395569, 48.987507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272839, 34.613487, 49.000813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021251, 0.093457, -0.995397,
		-0.545396, -0.833345, -0.089886,
		-0.837909, 0.544796, 0.033261,
		35.021465, 34.776924, 49.010792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080349, 34.106823, 48.504337>,  <35.608002, 34.395569, 48.987507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080349, 34.106823, 48.504337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989521, 34.492336, 48.560280>,  <34.935024, 34.723644, 48.593845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989521, 34.492336, 48.560280>,  <35.080349, 34.106823, 48.504337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989521, 34.492336, 48.560280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153134, 0.177152, -0.972197,
		-0.961764, -0.199338, -0.187813,
		-0.227067, 0.963785, 0.139853,
		34.921402, 34.781471, 48.602238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603989, 34.182774, 47.925972>,  <35.080349, 34.106823, 48.504337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603989, 34.182774, 47.925972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695210, 34.556740, 48.034733>,  <34.749943, 34.781120, 48.099991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695210, 34.556740, 48.034733>,  <34.603989, 34.182774, 47.925972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695210, 34.556740, 48.034733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019269, 0.274875, -0.961287,
		-0.973458, 0.224465, 0.044672,
		0.228055, 0.934911, 0.271904,
		34.763626, 34.837212, 48.116302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145836, 34.551991, 47.577461>,  <34.603989, 34.182774, 47.925972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145836, 34.551991, 47.577461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460567, 34.785027, 47.658936>,  <34.649406, 34.924850, 47.707821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460567, 34.785027, 47.658936>,  <34.145836, 34.551991, 47.577461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460567, 34.785027, 47.658936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046465, 0.385016, -0.921740,
		-0.615423, 0.715784, 0.330011,
		0.786826, 0.582594, 0.203689,
		34.696617, 34.959805, 47.720043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049088, 35.056110, 47.189972>,  <34.145836, 34.551991, 47.577461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049088, 35.056110, 47.189972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436314, 35.123550, 47.264191>,  <34.668648, 35.164017, 47.308723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436314, 35.123550, 47.264191>,  <34.049088, 35.056110, 47.189972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436314, 35.123550, 47.264191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118476, 0.344594, -0.931246,
		-0.220950, 0.923487, 0.313613,
		0.968062, 0.168603, 0.185549,
		34.726734, 35.174133, 47.319855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149448, 35.692490, 46.815842>,  <34.049088, 35.056110, 47.189972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149448, 35.692490, 46.815842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501064, 35.509441, 46.869320>,  <34.712032, 35.399612, 46.901405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501064, 35.509441, 46.869320>,  <34.149448, 35.692490, 46.815842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501064, 35.509441, 46.869320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243351, 0.189541, -0.951238,
		0.409964, 0.868711, 0.277976,
		0.879039, -0.457619, 0.133696,
		34.764774, 35.372154, 46.909428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711388, 36.047630, 46.380535>,  <34.149448, 35.692490, 46.815842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711388, 36.047630, 46.380535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916340, 35.716099, 46.470425>,  <35.039310, 35.517178, 46.524361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916340, 35.716099, 46.470425>,  <34.711388, 36.047630, 46.380535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916340, 35.716099, 46.470425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508673, 0.082087, -0.857038,
		0.691892, 0.553444, 0.463664,
		0.512384, -0.828831, 0.224727,
		35.070053, 35.467449, 46.537842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534946, 36.162182, 46.247417>,  <34.711388, 36.047630, 46.380535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534946, 36.162182, 46.247417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439209, 35.773865, 46.240768>,  <35.381767, 35.540874, 46.236778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439209, 35.773865, 46.240768>,  <35.534946, 36.162182, 46.247417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439209, 35.773865, 46.240768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477962, -0.102900, -0.872332,
		0.845143, -0.216732, 0.488631,
		-0.239342, -0.970793, -0.016625,
		35.367405, 35.482628, 46.235783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.793865, 40.965462, 29.151684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497959, 41.157433, 29.340326>,  <42.320415, 41.272614, 29.453512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497959, 41.157433, 29.340326>,  <42.793865, 40.965462, 29.151684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497959, 41.157433, 29.340326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307511, -0.382266, 0.871383,
		0.598480, 0.789646, 0.135206,
		-0.739769, 0.479928, 0.471604,
		42.276028, 41.301411, 29.481808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070038, 41.392178, 29.595406>,  <42.793865, 40.965462, 29.151684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070038, 41.392178, 29.595406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706470, 41.328304, 29.749485>,  <42.488331, 41.289982, 29.841932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706470, 41.328304, 29.749485>,  <43.070038, 41.392178, 29.595406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706470, 41.328304, 29.749485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410900, -0.185781, 0.892551,
		-0.070961, 0.969530, 0.234472,
		-0.908915, -0.159680, 0.385196,
		42.433796, 41.280399, 29.865044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985424, 41.778431, 30.206764>,  <43.070038, 41.392178, 29.595406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985424, 41.778431, 30.206764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717522, 41.485111, 30.253584>,  <42.556782, 41.309120, 30.281675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717522, 41.485111, 30.253584>,  <42.985424, 41.778431, 30.206764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717522, 41.485111, 30.253584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387165, -0.210323, 0.897701,
		-0.633663, 0.646559, 0.424773,
		-0.669757, -0.733297, 0.117051,
		42.516594, 41.265121, 30.288700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676529, 41.937164, 30.779205>,  <42.985424, 41.778431, 30.206764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676529, 41.937164, 30.779205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604397, 41.549515, 30.711931>,  <42.561115, 41.316925, 30.671566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604397, 41.549515, 30.711931>,  <42.676529, 41.937164, 30.779205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604397, 41.549515, 30.711931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259939, -0.211865, 0.942096,
		-0.948637, 0.126174, 0.290118,
		-0.180334, -0.969120, -0.168186,
		42.550297, 41.258778, 30.661476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622986, 41.793694, 31.469841>,  <42.676529, 41.937164, 30.779205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622986, 41.793694, 31.469841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644909, 41.437534, 31.289089>,  <42.658062, 41.223839, 31.180637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644909, 41.437534, 31.289089>,  <42.622986, 41.793694, 31.469841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644909, 41.437534, 31.289089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186355, -0.435486, 0.880695,
		-0.980953, -0.132478, 0.142062,
		0.054807, -0.890394, -0.451879,
		42.661350, 41.170418, 31.153526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342957, 41.272259, 31.958658>,  <42.622986, 41.793694, 31.469841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342957, 41.272259, 31.958658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551685, 41.049259, 31.700388>,  <42.676922, 40.915459, 31.545425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551685, 41.049259, 31.700388>,  <42.342957, 41.272259, 31.958658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551685, 41.049259, 31.700388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484976, -0.428801, 0.762186,
		-0.701785, -0.710862, 0.046617,
		0.521820, -0.557499, -0.645677,
		42.708233, 40.882011, 31.506685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362957, 40.502953, 32.227261>,  <42.342957, 41.272259, 31.958658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362957, 40.502953, 32.227261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670006, 40.565723, 31.978703>,  <42.854237, 40.603386, 31.829567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670006, 40.565723, 31.978703>,  <42.362957, 40.502953, 32.227261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670006, 40.565723, 31.978703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552479, -0.653453, 0.517462,
		-0.324848, -0.740522, -0.588304,
		0.767621, 0.156929, -0.621395,
		42.900291, 40.612801, 31.792284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549431, 39.829762, 32.074699>,  <42.362957, 40.502953, 32.227261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549431, 39.829762, 32.074699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863274, 40.058491, 31.978859>,  <43.051579, 40.195728, 31.921354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863274, 40.058491, 31.978859>,  <42.549431, 39.829762, 32.074699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863274, 40.058491, 31.978859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609667, -0.641346, 0.465814,
		0.112699, -0.511556, -0.851827,
		0.784605, 0.571828, -0.239600,
		43.098656, 40.230038, 31.906979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032871, 39.386963, 31.924179>,  <42.549431, 39.829762, 32.074699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032871, 39.386963, 31.924179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231445, 39.727219, 31.993429>,  <43.350590, 39.931370, 32.034981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231445, 39.727219, 31.993429>,  <43.032871, 39.386963, 31.924179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231445, 39.727219, 31.993429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601025, -0.480712, 0.638503,
		0.626357, -0.212921, -0.749895,
		0.496434, 0.850636, 0.173126,
		43.380375, 39.982410, 32.045368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624172, 39.210751, 31.797403>,  <43.032871, 39.386963, 31.924179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624172, 39.210751, 31.797403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670685, 39.519112, 32.047905>,  <43.698593, 39.704128, 32.198204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670685, 39.519112, 32.047905>,  <43.624172, 39.210751, 31.797403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670685, 39.519112, 32.047905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696207, -0.512956, 0.502168,
		0.708361, 0.377611, -0.596351,
		0.116278, 0.770899, 0.626253,
		43.705566, 39.750381, 32.235783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275871, 39.146194, 31.939585>,  <43.624172, 39.210751, 31.797403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275871, 39.146194, 31.939585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.139801, 39.393890, 32.222660>,  <44.058159, 39.542507, 32.392506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.139801, 39.393890, 32.222660>,  <44.275871, 39.146194, 31.939585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139801, 39.393890, 32.222660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665931, -0.372715, 0.646235,
		0.663942, 0.691103, -0.285585,
		-0.340173, 0.619242, 0.707687,
		44.037750, 39.579662, 32.434967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857246, 39.615326, 32.256809>,  <44.275871, 39.146194, 31.939585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857246, 39.615326, 32.256809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549675, 39.579983, 32.510090>,  <44.365131, 39.558777, 32.662056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549675, 39.579983, 32.510090>,  <44.857246, 39.615326, 32.256809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549675, 39.579983, 32.510090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628777, -0.283759, 0.723962,
		0.115705, 0.954816, 0.273750,
		-0.768929, -0.088362, 0.633198,
		44.318996, 39.553474, 32.700050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159397, 39.805336, 32.972179>,  <44.857246, 39.615326, 32.256809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159397, 39.805336, 32.972179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804955, 39.631779, 33.037369>,  <44.592289, 39.527645, 33.076485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804955, 39.631779, 33.037369>,  <45.159397, 39.805336, 32.972179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804955, 39.631779, 33.037369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357265, -0.415399, 0.836544,
		-0.295267, 0.799490, 0.523100,
		-0.886103, -0.433889, 0.162976,
		44.539124, 39.501614, 33.086262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063274, 39.808529, 33.666634>,  <45.159397, 39.805336, 32.972179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063274, 39.808529, 33.666634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806149, 39.524845, 33.550838>,  <44.651871, 39.354633, 33.481361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806149, 39.524845, 33.550838>,  <45.063274, 39.808529, 33.666634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806149, 39.524845, 33.550838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224815, -0.535937, 0.813775,
		-0.732287, 0.458027, 0.503951,
		-0.642817, -0.709213, -0.289488,
		44.613304, 39.312080, 33.463993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683151, 39.545864, 34.263443>,  <45.063274, 39.808529, 33.666634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683151, 39.545864, 34.263443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677383, 39.247845, 33.996700>,  <44.673923, 39.069035, 33.836655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677383, 39.247845, 33.996700>,  <44.683151, 39.545864, 34.263443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677383, 39.247845, 33.996700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297761, -0.639870, 0.708453,
		-0.954532, -0.188347, 0.231073,
		-0.014422, -0.745045, -0.666859,
		44.673058, 39.024330, 33.796642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451870, 39.001305, 34.699146>,  <44.683151, 39.545864, 34.263443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451870, 39.001305, 34.699146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601551, 38.848221, 34.361271>,  <44.691360, 38.756371, 34.158546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601551, 38.848221, 34.361271>,  <44.451870, 39.001305, 34.699146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601551, 38.848221, 34.361271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359895, -0.779542, 0.512630,
		-0.854661, -0.495830, -0.153974,
		0.374207, -0.382710, -0.844691,
		44.713814, 38.733406, 34.107864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385288, 38.350662, 34.763386>,  <44.451870, 39.001305, 34.699146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385288, 38.350662, 34.763386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661644, 38.345238, 34.474251>,  <44.827457, 38.341984, 34.300770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661644, 38.345238, 34.474251>,  <44.385288, 38.350662, 34.763386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661644, 38.345238, 34.474251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467708, -0.754025, 0.461189,
		-0.551291, -0.656705, -0.514604,
		0.690889, -0.013565, -0.722834,
		44.868912, 38.341167, 34.257401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395039, 37.740692, 34.572536>,  <44.385288, 38.350662, 34.763386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395039, 37.740692, 34.572536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756344, 37.887398, 34.483452>,  <44.973125, 37.975422, 34.430000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756344, 37.887398, 34.483452>,  <44.395039, 37.740692, 34.572536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756344, 37.887398, 34.483452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426988, -0.717010, 0.550978,
		0.042396, -0.592772, -0.804254,
		0.903263, 0.366766, -0.222708,
		45.027321, 37.997429, 34.416641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772331, 37.116123, 34.595798>,  <44.395039, 37.740692, 34.572536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772331, 37.116123, 34.595798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058403, 37.393459, 34.560474>,  <45.230045, 37.559860, 34.539280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058403, 37.393459, 34.560474>,  <44.772331, 37.116123, 34.595798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058403, 37.393459, 34.560474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607533, -0.554191, 0.569014,
		0.345584, -0.460594, -0.817573,
		0.715176, 0.693344, -0.088306,
		45.272957, 37.601463, 34.533981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363968, 36.801338, 34.489883>,  <44.772331, 37.116123, 34.595798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363968, 36.801338, 34.489883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465412, 37.146141, 34.665443>,  <45.526279, 37.353024, 34.770779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465412, 37.146141, 34.665443>,  <45.363968, 36.801338, 34.489883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465412, 37.146141, 34.665443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613325, -0.494161, 0.616147,
		0.748008, 0.112928, -0.654011,
		0.253607, 0.862004, 0.438898,
		45.541492, 37.404743, 34.797112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045795, 36.648411, 34.842686>,  <45.363968, 36.801338, 34.489883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045795, 36.648411, 34.842686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890900, 36.976204, 35.011677>,  <45.797962, 37.172882, 35.113071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890900, 36.976204, 35.011677>,  <46.045795, 36.648411, 34.842686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890900, 36.976204, 35.011677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393674, -0.267388, 0.879502,
		0.833706, 0.506897, -0.219068,
		-0.387241, 0.819488, 0.422475,
		45.774727, 37.222050, 35.138420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649639, 36.970955, 35.189491>,  <46.045795, 36.648411, 34.842686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649639, 36.970955, 35.189491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305561, 37.057281, 35.374310>,  <46.099113, 37.109077, 35.485199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305561, 37.057281, 35.374310>,  <46.649639, 36.970955, 35.189491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305561, 37.057281, 35.374310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387224, -0.313153, 0.867175,
		0.331842, 0.924855, 0.185804,
		-0.860197, 0.215818, 0.462044,
		46.047501, 37.122028, 35.512924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002323, 36.595955, 34.726631>,  <46.649639, 36.970955, 35.189491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002323, 36.595955, 34.726631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.949253, 36.256920, 34.521111>,  <46.917412, 36.053497, 34.397800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.949253, 36.256920, 34.521111>,  <47.002323, 36.595955, 34.726631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.949253, 36.256920, 34.521111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376336, 0.522638, -0.764997,
		0.916935, 0.091868, -0.388317,
		-0.132670, -0.847591, -0.513798,
		46.909451, 36.002644, 34.366970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.259125, 36.744503, 34.032021>,  <47.002323, 36.595955, 34.726631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.259125, 36.744503, 34.032021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.028488, 36.418541, 34.008446>,  <46.890106, 36.222965, 33.994301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.028488, 36.418541, 34.008446>,  <47.259125, 36.744503, 34.032021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028488, 36.418541, 34.008446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415509, 0.354578, -0.837632,
		0.703489, -0.458479, -0.543046,
		-0.576589, -0.814906, -0.058940,
		46.855511, 36.174068, 33.990765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353706, 36.437511, 33.355835>,  <47.259125, 36.744503, 34.032021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353706, 36.437511, 33.355835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.005589, 36.285130, 33.480717>,  <46.796719, 36.193703, 33.555645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.005589, 36.285130, 33.480717>,  <47.353706, 36.437511, 33.355835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.005589, 36.285130, 33.480717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409014, 0.205830, -0.889011,
		0.274413, -0.901392, -0.334948,
		-0.870290, -0.380955, 0.312200,
		46.744499, 36.170845, 33.574379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.089054, 36.102020, 32.762676>,  <47.353706, 36.437511, 33.355835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.089054, 36.102020, 32.762676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.778381, 36.161785, 33.007442>,  <46.591976, 36.197643, 33.154301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.778381, 36.161785, 33.007442>,  <47.089054, 36.102020, 32.762676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778381, 36.161785, 33.007442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588485, 0.174287, -0.789499,
		-0.224607, -0.973294, -0.047441,
		-0.776683, 0.149409, 0.611915,
		46.545376, 36.206608, 33.191017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542744, 35.890575, 32.392242>,  <47.089054, 36.102020, 32.762676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542744, 35.890575, 32.392242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.341667, 36.078011, 32.682823>,  <46.221024, 36.190472, 32.857170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.341667, 36.078011, 32.682823>,  <46.542744, 35.890575, 32.392242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341667, 36.078011, 32.682823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726148, 0.227084, -0.648955,
		-0.469056, -0.853734, 0.226109,
		-0.502689, 0.468585, 0.726452,
		46.190861, 36.218586, 32.900761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945644, 35.570873, 32.277992>,  <46.542744, 35.890575, 32.392242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945644, 35.570873, 32.277992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888874, 35.913162, 32.477028>,  <45.854813, 36.118538, 32.596451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888874, 35.913162, 32.477028>,  <45.945644, 35.570873, 32.277992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888874, 35.913162, 32.477028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801569, 0.195599, -0.565004,
		-0.580815, -0.479037, 0.658162,
		-0.141922, 0.855724, 0.497588,
		45.846298, 36.169880, 32.626305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222969, 35.721775, 32.283367>,  <45.945644, 35.570873, 32.277992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222969, 35.721775, 32.283367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360878, 36.085011, 32.378460>,  <45.443623, 36.302952, 32.435516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360878, 36.085011, 32.378460>,  <45.222969, 35.721775, 32.283367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360878, 36.085011, 32.378460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680088, 0.416207, -0.603534,
		-0.647004, 0.046404, 0.761073,
		0.344770, 0.908085, 0.237729,
		45.464310, 36.357437, 32.449780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661324, 36.109158, 32.499725>,  <45.222969, 35.721775, 32.283367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661324, 36.109158, 32.499725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948051, 36.347065, 32.354164>,  <45.120087, 36.489811, 32.266827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948051, 36.347065, 32.354164>,  <44.661324, 36.109158, 32.499725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948051, 36.347065, 32.354164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696518, 0.586719, -0.413066,
		-0.032171, 0.549556, 0.834837,
		0.716818, 0.594768, -0.363900,
		45.163097, 36.525494, 32.244995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501419, 36.721382, 32.694317>,  <44.661324, 36.109158, 32.499725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501419, 36.721382, 32.694317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753975, 36.786884, 32.391125>,  <44.905506, 36.826187, 32.209209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753975, 36.786884, 32.391125>,  <44.501419, 36.721382, 32.694317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753975, 36.786884, 32.391125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690710, 0.563097, -0.453697,
		0.352523, 0.810003, 0.468639,
		0.631385, 0.163755, -0.757982,
		44.943390, 36.836010, 32.163731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221203, 37.301956, 32.431725>,  <44.501419, 36.721382, 32.694317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221203, 37.301956, 32.431725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496433, 37.210331, 32.156307>,  <44.661572, 37.155357, 31.991058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496433, 37.210331, 32.156307>,  <44.221203, 37.301956, 32.431725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496433, 37.210331, 32.156307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516335, 0.512153, -0.686365,
		0.509857, 0.827786, 0.234127,
		0.688072, -0.229060, -0.688540,
		44.702854, 37.141613, 31.949745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570786, 37.921326, 32.194527>,  <44.221203, 37.301956, 32.431725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570786, 37.921326, 32.194527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.577843, 37.640781, 31.909491>,  <44.582077, 37.472454, 31.738468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.577843, 37.640781, 31.909491>,  <44.570786, 37.921326, 32.194527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577843, 37.640781, 31.909491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478566, 0.619836, -0.621915,
		0.877874, 0.351993, -0.324711,
		0.017642, -0.701359, -0.712590,
		44.583134, 37.430374, 31.695713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468479, 38.371048, 31.590734>,  <44.570786, 37.921326, 32.194527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468479, 38.371048, 31.590734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394562, 37.999104, 31.463476>,  <44.350212, 37.775936, 31.387121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394562, 37.999104, 31.463476>,  <44.468479, 38.371048, 31.590734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394562, 37.999104, 31.463476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341786, 0.364322, -0.866286,
		0.921430, -0.051348, -0.385137,
		-0.184796, -0.929856, -0.318147,
		44.339123, 37.720146, 31.368032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593800, 38.366734, 30.908262>,  <44.468479, 38.371048, 31.590734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593800, 38.366734, 30.908262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368153, 38.042824, 30.972807>,  <44.232765, 37.848476, 31.011534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368153, 38.042824, 30.972807>,  <44.593800, 38.366734, 30.908262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368153, 38.042824, 30.972807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396319, 0.094104, -0.913277,
		0.724364, -0.579145, -0.374015,
		-0.564116, -0.809775, 0.161360,
		44.198917, 37.799892, 31.021215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652580, 37.965408, 30.274004>,  <44.593800, 38.366734, 30.908262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652580, 37.965408, 30.274004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319035, 37.880432, 30.477785>,  <44.118908, 37.829445, 30.600054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319035, 37.880432, 30.477785>,  <44.652580, 37.965408, 30.274004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319035, 37.880432, 30.477785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545700, 0.456029, -0.703028,
		-0.082972, -0.864237, -0.496195,
		-0.833862, -0.212442, 0.509452,
		44.068874, 37.816700, 30.630621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202339, 37.641045, 29.778605>,  <44.652580, 37.965408, 30.274004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202339, 37.641045, 29.778605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974834, 37.784039, 30.074903>,  <43.838329, 37.869835, 30.252684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974834, 37.784039, 30.074903>,  <44.202339, 37.641045, 29.778605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974834, 37.784039, 30.074903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701009, 0.260387, -0.663917,
		-0.430223, -0.896884, 0.102502,
		-0.568766, 0.357487, 0.740748,
		43.804203, 37.891285, 30.297129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572937, 37.595013, 29.544754>,  <44.202339, 37.641045, 29.778605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572937, 37.595013, 29.544754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483017, 37.822598, 29.861172>,  <43.429066, 37.959148, 30.051022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483017, 37.822598, 29.861172>,  <43.572937, 37.595013, 29.544754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483017, 37.822598, 29.861172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725162, 0.444567, -0.525833,
		-0.650850, -0.691842, 0.312649,
		-0.224800, 0.568959, 0.791044,
		43.415577, 37.993286, 30.098484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888557, 37.469540, 29.644760>,  <43.572937, 37.595013, 29.544754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888557, 37.469540, 29.644760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971367, 37.810337, 29.837112>,  <43.021053, 38.014816, 29.952524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971367, 37.810337, 29.837112>,  <42.888557, 37.469540, 29.644760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971367, 37.810337, 29.837112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635023, 0.490938, -0.596428,
		-0.744235, -0.181895, 0.642673,
		0.207025, 0.851994, 0.480881,
		43.033474, 38.065937, 29.981377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279305, 37.813461, 29.791162>,  <42.888557, 37.469540, 29.644760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279305, 37.813461, 29.791162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530323, 38.123421, 29.821396>,  <42.680935, 38.309399, 29.839537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530323, 38.123421, 29.821396>,  <42.279305, 37.813461, 29.791162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530323, 38.123421, 29.821396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595310, 0.540131, -0.594864,
		-0.501787, 0.328308, 0.800265,
		0.627547, 0.774901, 0.075586,
		42.718586, 38.355892, 29.844072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837124, 38.379612, 29.968208>,  <42.279305, 37.813461, 29.791162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837124, 38.379612, 29.968208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180660, 38.502846, 29.804508>,  <42.386780, 38.576786, 29.706289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180660, 38.502846, 29.804508>,  <41.837124, 38.379612, 29.968208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180660, 38.502846, 29.804508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510506, 0.580619, -0.634244,
		0.042218, 0.753636, 0.655935,
		0.858837, 0.308082, -0.409248,
		42.438313, 38.595272, 29.681734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844048, 39.152115, 29.856611>,  <41.837124, 38.379612, 29.968208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844048, 39.152115, 29.856611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114120, 39.003445, 29.601744>,  <42.276165, 38.914242, 29.448824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114120, 39.003445, 29.601744>,  <41.844048, 39.152115, 29.856611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114120, 39.003445, 29.601744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466076, 0.454562, -0.759043,
		0.571749, 0.809464, 0.133686,
		0.675186, -0.371674, -0.637167,
		42.316677, 38.891941, 29.410593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.354431, 38.200790, 43.382359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103191, 37.964375, 43.179909>,  <38.952446, 37.822525, 43.058441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103191, 37.964375, 43.179909>,  <39.354431, 38.200790, 43.382359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103191, 37.964375, 43.179909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547731, 0.126174, -0.827086,
		0.552699, -0.796714, 0.244481,
		-0.628103, -0.591039, -0.506121,
		38.914761, 37.787064, 43.028072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788395, 37.721432, 42.997665>,  <39.354431, 38.200790, 43.382359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788395, 37.721432, 42.997665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433132, 37.720306, 42.813854>,  <39.219975, 37.719631, 42.703568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433132, 37.720306, 42.813854>,  <39.788395, 37.721432, 42.997665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433132, 37.720306, 42.813854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458929, 0.046031, -0.887280,
		0.023633, -0.998936, -0.039600,
		-0.888159, -0.002796, -0.459528,
		39.166683, 37.719463, 42.675995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041691, 37.447811, 42.418304>,  <39.788395, 37.721432, 42.997665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041691, 37.447811, 42.418304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678551, 37.577023, 42.311382>,  <39.460667, 37.654549, 42.247227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678551, 37.577023, 42.311382>,  <40.041691, 37.447811, 42.418304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678551, 37.577023, 42.311382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264315, -0.053986, -0.962924,
		-0.325486, -0.944847, -0.036371,
		-0.907853, 0.323031, -0.267308,
		39.406197, 37.673931, 42.231190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910889, 36.987499, 41.976677>,  <40.041691, 37.447811, 42.418304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910889, 36.987499, 41.976677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654819, 37.285816, 41.902958>,  <39.501179, 37.464806, 41.858727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654819, 37.285816, 41.902958>,  <39.910889, 36.987499, 41.976677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654819, 37.285816, 41.902958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079455, -0.174334, -0.981476,
		-0.764108, -0.642960, 0.052347,
		-0.640176, 0.745795, -0.184296,
		39.462765, 37.509556, 41.847668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408733, 36.712082, 41.634445>,  <39.910889, 36.987499, 41.976677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408733, 36.712082, 41.634445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383675, 37.095901, 41.524647>,  <39.368637, 37.326191, 41.458767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383675, 37.095901, 41.524647>,  <39.408733, 36.712082, 41.634445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383675, 37.095901, 41.524647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006355, -0.274645, -0.961525,
		-0.998015, -0.061985, 0.011109,
		-0.062651, 0.959546, -0.274494,
		39.364880, 37.383766, 41.442299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838406, 36.680611, 41.084621>,  <39.408733, 36.712082, 41.634445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838406, 36.680611, 41.084621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026619, 37.030117, 41.035423>,  <39.139545, 37.239822, 41.005905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026619, 37.030117, 41.035423>,  <38.838406, 36.680611, 41.084621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026619, 37.030117, 41.035423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138340, -0.064619, -0.988274,
		-0.871470, 0.482031, 0.090472,
		0.470533, 0.873768, -0.122997,
		39.167778, 37.292248, 40.998524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450558, 37.046406, 40.604267>,  <38.838406, 36.680611, 41.084621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450558, 37.046406, 40.604267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806992, 37.224457, 40.568855>,  <39.020851, 37.331287, 40.547607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806992, 37.224457, 40.568855>,  <38.450558, 37.046406, 40.604267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806992, 37.224457, 40.568855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088875, -0.020133, -0.995839,
		-0.445053, 0.895243, 0.021620,
		0.891083, 0.445123, -0.088525,
		39.074318, 37.357994, 40.542297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319649, 37.300613, 40.042675>,  <38.450558, 37.046406, 40.604267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319649, 37.300613, 40.042675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711319, 37.370743, 40.083633>,  <38.946320, 37.412819, 40.108208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711319, 37.370743, 40.083633>,  <38.319649, 37.300613, 40.042675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711319, 37.370743, 40.083633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110395, -0.036452, -0.993219,
		-0.170398, 0.983836, -0.055048,
		0.979172, 0.175320, 0.102400,
		39.005070, 37.423340, 40.114353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564331, 37.858353, 39.540081>,  <38.319649, 37.300613, 40.042675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564331, 37.858353, 39.540081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862873, 37.619587, 39.657822>,  <39.042000, 37.476330, 39.728466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862873, 37.619587, 39.657822>,  <38.564331, 37.858353, 39.540081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862873, 37.619587, 39.657822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287353, -0.109916, -0.951497,
		0.600313, 0.794743, 0.089487,
		0.746360, -0.596910, 0.294356,
		39.086781, 37.440514, 39.746128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071537, 38.066853, 39.230812>,  <38.564331, 37.858353, 39.540081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071537, 38.066853, 39.230812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214176, 37.704350, 39.321613>,  <39.299759, 37.486847, 39.376095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214176, 37.704350, 39.321613>,  <39.071537, 38.066853, 39.230812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214176, 37.704350, 39.321613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306828, -0.115900, -0.944682,
		0.882438, 0.406521, 0.236736,
		0.356596, -0.906260, 0.227006,
		39.321156, 37.432472, 39.389717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811687, 38.024689, 39.081753>,  <39.071537, 38.066853, 39.230812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811687, 38.024689, 39.081753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663219, 37.653751, 39.062706>,  <39.574139, 37.431190, 39.051277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663219, 37.653751, 39.062706>,  <39.811687, 38.024689, 39.081753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663219, 37.653751, 39.062706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408241, -0.116913, -0.905357,
		0.834010, -0.355478, 0.421974,
		-0.371168, -0.927344, -0.047614,
		39.551868, 37.375549, 39.048420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394833, 37.599915, 38.806076>,  <39.811687, 38.024689, 39.081753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394833, 37.599915, 38.806076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051537, 37.414589, 38.717747>,  <39.845558, 37.303394, 38.664749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051537, 37.414589, 38.717747>,  <40.394833, 37.599915, 38.806076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051537, 37.414589, 38.717747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327518, -0.163115, -0.930659,
		0.395167, -0.871053, 0.291735,
		-0.858239, -0.463315, -0.220827,
		39.794064, 37.275593, 38.651497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636871, 37.124573, 38.298664>,  <40.394833, 37.599915, 38.806076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636871, 37.124573, 38.298664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238895, 37.152252, 38.269543>,  <40.000111, 37.168858, 38.252071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238895, 37.152252, 38.269543>,  <40.636871, 37.124573, 38.298664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238895, 37.152252, 38.269543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067140, -0.080874, -0.994460,
		-0.074654, -0.994323, 0.075823,
		-0.994947, 0.069150, -0.072797,
		39.940411, 37.173012, 38.247704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115040, 37.255684, 37.613483>,  <40.636871, 37.124573, 38.298664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115040, 37.255684, 37.613483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990269, 37.533909, 37.354595>,  <40.915405, 37.700844, 37.199261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990269, 37.533909, 37.354595>,  <41.115040, 37.255684, 37.613483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990269, 37.533909, 37.354595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788812, -0.190120, -0.584491,
		-0.529599, -0.692857, -0.489362,
		-0.311931, 0.695560, -0.647221,
		40.896690, 37.742577, 37.160427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591473, 36.933929, 38.087036>,  <41.115040, 37.255684, 37.613483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591473, 36.933929, 38.087036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960201, 36.780449, 38.065060>,  <42.181438, 36.688358, 38.051872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960201, 36.780449, 38.065060>,  <41.591473, 36.933929, 38.087036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960201, 36.780449, 38.065060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151372, -0.486846, 0.860272,
		-0.356837, -0.784700, -0.506867,
		0.921821, -0.383702, -0.054943,
		42.236748, 36.665337, 38.048576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503216, 36.104900, 37.914539>,  <41.591473, 36.933929, 38.087036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503216, 36.104900, 37.914539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836185, 36.209015, 38.110218>,  <42.035969, 36.271484, 38.227627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836185, 36.209015, 38.110218>,  <41.503216, 36.104900, 37.914539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836185, 36.209015, 38.110218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270135, -0.580207, 0.768366,
		0.483831, -0.771759, -0.412669,
		0.832427, 0.260283, 0.489201,
		42.085915, 36.287102, 38.256977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810337, 35.549969, 38.263718>,  <41.503216, 36.104900, 37.914539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810337, 35.549969, 38.263718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027309, 35.817745, 38.466743>,  <42.157494, 35.978413, 38.588558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027309, 35.817745, 38.466743>,  <41.810337, 35.549969, 38.263718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027309, 35.817745, 38.466743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012967, -0.597425, 0.801820,
		0.840003, -0.441511, -0.315379,
		0.542427, 0.669441, 0.507563,
		42.190037, 36.018578, 38.619011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436630, 35.239300, 38.473915>,  <41.810337, 35.549969, 38.263718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436630, 35.239300, 38.473915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327927, 35.553226, 38.696705>,  <42.262703, 35.741581, 38.830379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327927, 35.553226, 38.696705>,  <42.436630, 35.239300, 38.473915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327927, 35.553226, 38.696705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185629, -0.610631, 0.769852,
		0.944293, 0.105824, 0.311628,
		-0.271758, 0.784813, 0.556970,
		42.246399, 35.788670, 38.863796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787395, 35.183010, 39.059185>,  <42.436630, 35.239300, 38.473915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787395, 35.183010, 39.059185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489288, 35.422276, 39.177017>,  <42.310425, 35.565834, 39.247715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489288, 35.422276, 39.177017>,  <42.787395, 35.183010, 39.059185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489288, 35.422276, 39.177017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156803, -0.586647, 0.794517,
		0.648066, 0.545936, 0.531002,
		-0.745267, 0.598163, 0.294582,
		42.265709, 35.601723, 39.265392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876198, 35.245403, 39.775887>,  <42.787395, 35.183010, 39.059185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876198, 35.245403, 39.775887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500828, 35.364265, 39.705395>,  <42.275608, 35.435585, 39.663097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500828, 35.364265, 39.705395>,  <42.876198, 35.245403, 39.775887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500828, 35.364265, 39.705395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295990, -0.428419, 0.853726,
		0.178190, 0.853319, 0.489994,
		-0.938423, 0.297159, -0.176234,
		42.219299, 35.453415, 39.652523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697960, 35.573929, 40.376057>,  <42.876198, 35.245403, 39.775887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697960, 35.573929, 40.376057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352180, 35.494507, 40.191319>,  <42.144711, 35.446854, 40.080475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352180, 35.494507, 40.191319>,  <42.697960, 35.573929, 40.376057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352180, 35.494507, 40.191319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387099, -0.323244, 0.863520,
		-0.320745, 0.925251, 0.202569,
		-0.864452, -0.198555, -0.461843,
		42.092846, 35.434940, 40.052765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200214, 35.937359, 40.777817>,  <42.697960, 35.573929, 40.376057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200214, 35.937359, 40.777817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007668, 35.641487, 40.589706>,  <41.892139, 35.463963, 40.476841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007668, 35.641487, 40.589706>,  <42.200214, 35.937359, 40.777817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007668, 35.641487, 40.589706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518103, -0.192653, 0.833339,
		-0.707004, 0.644793, -0.290494,
		-0.481366, -0.739680, -0.470276,
		41.863258, 35.419582, 40.448624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585735, 36.048084, 40.979168>,  <42.200214, 35.937359, 40.777817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585735, 36.048084, 40.979168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564472, 35.667728, 40.857197>,  <41.551716, 35.439514, 40.784016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564472, 35.667728, 40.857197>,  <41.585735, 36.048084, 40.979168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564472, 35.667728, 40.857197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470212, -0.245549, 0.847706,
		-0.880951, 0.188440, -0.434069,
		-0.053157, -0.950892, -0.304924,
		41.548527, 35.382462, 40.765720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959381, 35.824459, 41.074886>,  <41.585735, 36.048084, 40.979168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959381, 35.824459, 41.074886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146400, 35.471939, 41.047432>,  <41.258610, 35.260426, 41.030960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146400, 35.471939, 41.047432>,  <40.959381, 35.824459, 41.074886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146400, 35.471939, 41.047432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438893, -0.298831, 0.847392,
		-0.767317, -0.366072, -0.526514,
		0.467545, -0.881301, -0.068632,
		41.286663, 35.207550, 41.026844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483398, 35.290493, 41.167862>,  <40.959381, 35.824459, 41.074886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483398, 35.290493, 41.167862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802910, 35.055607, 41.220203>,  <40.994617, 34.914673, 41.251610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802910, 35.055607, 41.220203>,  <40.483398, 35.290493, 41.167862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802910, 35.055607, 41.220203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460127, -0.456167, 0.761705,
		-0.387593, -0.668648, -0.634572,
		0.798784, -0.587215, 0.130856,
		41.042545, 34.879440, 41.259460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177227, 34.596924, 41.281097>,  <40.483398, 35.290493, 41.167862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177227, 34.596924, 41.281097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532558, 34.657230, 41.454597>,  <40.745758, 34.693417, 41.558697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532558, 34.657230, 41.454597>,  <40.177227, 34.596924, 41.281097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532558, 34.657230, 41.454597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383603, -0.275571, 0.881425,
		0.252420, -0.949384, -0.186963,
		0.888332, 0.150770, 0.433746,
		40.799057, 34.702461, 41.584721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224167, 34.014965, 41.686424>,  <40.177227, 34.596924, 41.281097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224167, 34.014965, 41.686424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519348, 34.239178, 41.836742>,  <40.696457, 34.373707, 41.926933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519348, 34.239178, 41.836742>,  <40.224167, 34.014965, 41.686424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519348, 34.239178, 41.836742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276052, -0.257411, 0.926032,
		0.615807, -0.787109, -0.035221,
		0.737954, 0.560534, 0.375798,
		40.740734, 34.407337, 41.949482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554890, 33.666943, 42.136948>,  <40.224167, 34.014965, 41.686424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554890, 33.666943, 42.136948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629898, 34.042759, 42.251560>,  <40.674904, 34.268250, 42.320328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629898, 34.042759, 42.251560>,  <40.554890, 33.666943, 42.136948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629898, 34.042759, 42.251560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117030, -0.268254, 0.956213,
		0.975263, -0.212846, 0.059650,
		0.187525, 0.939541, 0.286527,
		40.686157, 34.324619, 42.337517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039814, 33.072849, 42.196716>,  <40.554890, 33.666943, 42.136948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039814, 33.072849, 42.196716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881531, 32.713512, 42.120407>,  <40.786560, 32.497910, 42.074623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881531, 32.713512, 42.120407>,  <41.039814, 33.072849, 42.196716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881531, 32.713512, 42.120407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147867, 0.142693, -0.978659,
		0.906396, -0.415468, 0.076371,
		-0.395704, -0.898346, -0.190770,
		40.762821, 32.444008, 42.063175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500378, 32.625881, 41.738087>,  <41.039814, 33.072849, 42.196716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500378, 32.625881, 41.738087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115650, 32.523209, 41.700111>,  <40.884811, 32.461605, 41.677326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115650, 32.523209, 41.700111>,  <41.500378, 32.625881, 41.738087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115650, 32.523209, 41.700111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056599, 0.152835, -0.986630,
		0.267757, -0.954336, -0.132473,
		-0.961823, -0.256679, -0.094937,
		40.827103, 32.446205, 41.671631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429344, 32.086338, 41.221218>,  <41.500378, 32.625881, 41.738087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429344, 32.086338, 41.221218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082428, 32.283508, 41.249046>,  <40.874279, 32.401810, 41.265743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082428, 32.283508, 41.249046>,  <41.429344, 32.086338, 41.221218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082428, 32.283508, 41.249046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059878, 0.035434, -0.997577,
		-0.494194, -0.869351, -0.001216,
		-0.867287, 0.492923, 0.069566,
		40.822243, 32.431385, 41.269917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160885, 31.865067, 40.568729>,  <41.429344, 32.086338, 41.221218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160885, 31.865067, 40.568729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914574, 32.154591, 40.693249>,  <40.766785, 32.328304, 40.767960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914574, 32.154591, 40.693249>,  <41.160885, 31.865067, 40.568729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914574, 32.154591, 40.693249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207486, 0.232184, -0.950284,
		-0.760106, -0.649759, 0.007206,
		-0.615782, 0.723812, 0.311300,
		40.729839, 32.371735, 40.786640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595448, 31.711634, 40.203777>,  <41.160885, 31.865067, 40.568729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595448, 31.711634, 40.203777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577019, 32.098427, 40.304031>,  <40.565964, 32.330502, 40.364185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577019, 32.098427, 40.304031>,  <40.595448, 31.711634, 40.203777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577019, 32.098427, 40.304031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047076, 0.248522, -0.967481,
		-0.997828, -0.056369, 0.034073,
		-0.046068, 0.966984, 0.250636,
		40.563198, 32.388523, 40.379223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976757, 32.007408, 40.011868>,  <40.595448, 31.711634, 40.203777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976757, 32.007408, 40.011868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188580, 32.346718, 40.012936>,  <40.315674, 32.550304, 40.013577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188580, 32.346718, 40.012936>,  <39.976757, 32.007408, 40.011868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188580, 32.346718, 40.012936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288473, 0.183049, -0.939828,
		-0.797717, 0.496922, 0.341638,
		0.529558, 0.848270, 0.002672,
		40.347446, 32.601200, 40.013737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491287, 32.467163, 39.742458>,  <39.976757, 32.007408, 40.011868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491287, 32.467163, 39.742458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843929, 32.649227, 39.692490>,  <40.055515, 32.758465, 39.662510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843929, 32.649227, 39.692490>,  <39.491287, 32.467163, 39.742458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843929, 32.649227, 39.692490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361280, 0.480431, -0.799164,
		-0.303734, 0.749676, 0.587990,
		0.881602, 0.455162, -0.124920,
		40.108410, 32.785774, 39.655014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261856, 33.156570, 39.558010>,  <39.491287, 32.467163, 39.742458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261856, 33.156570, 39.558010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641666, 33.126331, 39.436237>,  <39.869553, 33.108189, 39.363174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641666, 33.126331, 39.436237>,  <39.261856, 33.156570, 39.558010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641666, 33.126331, 39.436237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240829, 0.446154, -0.861944,
		0.200989, 0.891757, 0.405429,
		0.949528, -0.075602, -0.304434,
		39.926525, 33.103649, 39.344906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497898, 33.796612, 39.330017>,  <39.261856, 33.156570, 39.558010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497898, 33.796612, 39.330017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752861, 33.537189, 39.163601>,  <39.905838, 33.381535, 39.063751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752861, 33.537189, 39.163601>,  <39.497898, 33.796612, 39.330017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752861, 33.537189, 39.163601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099318, 0.466287, -0.879041,
		0.764102, 0.601625, 0.232800,
		0.637404, -0.648555, -0.416043,
		39.944084, 33.342625, 39.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813145, 34.185692, 38.791000>,  <39.497898, 33.796612, 39.330017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813145, 34.185692, 38.791000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904320, 33.815384, 38.670341>,  <39.959026, 33.593201, 38.597946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904320, 33.815384, 38.670341>,  <39.813145, 34.185692, 38.791000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904320, 33.815384, 38.670341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153272, 0.271829, -0.950062,
		0.961537, 0.262788, -0.079935,
		0.227937, -0.925771, -0.301651,
		39.972702, 33.537651, 38.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431770, 34.195690, 38.315327>,  <39.813145, 34.185692, 38.791000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431770, 34.195690, 38.315327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201569, 33.875294, 38.249352>,  <40.063446, 33.683056, 38.209766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201569, 33.875294, 38.249352>,  <40.431770, 34.195690, 38.315327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201569, 33.875294, 38.249352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132606, 0.290417, -0.947667,
		0.806975, -0.523516, -0.273353,
		-0.575505, -0.800992, -0.164938,
		40.028915, 33.634995, 38.199871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107853, 34.288052, 37.621368>,  <40.431770, 34.195690, 38.315327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107853, 34.288052, 37.621368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948792, 33.923508, 37.663895>,  <39.853355, 33.704781, 37.689411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948792, 33.923508, 37.663895>,  <40.107853, 34.288052, 37.621368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948792, 33.923508, 37.663895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297886, 0.018640, -0.954419,
		0.867834, -0.411198, -0.278892,
		-0.397654, -0.911355, 0.106314,
		39.829494, 33.650101, 37.695789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.552185, 30.936655, 45.638927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205513, 30.912069, 45.440907>,  <39.997509, 30.897318, 45.322094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205513, 30.912069, 45.440907>,  <40.552185, 30.936655, 45.638927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205513, 30.912069, 45.440907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400496, 0.505940, -0.763956,
		0.297426, -0.860376, -0.413873,
		-0.866684, -0.061466, -0.495056,
		39.945507, 30.893629, 45.292389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743935, 30.667141, 45.052425>,  <40.552185, 30.936655, 45.638927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743935, 30.667141, 45.052425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.381168, 30.823994, 44.990791>,  <40.163509, 30.918104, 44.953812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.381168, 30.823994, 44.990791>,  <40.743935, 30.667141, 45.052425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381168, 30.823994, 44.990791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331855, 0.439518, -0.834683,
		-0.259581, -0.808119, -0.528735,
		-0.906913, 0.392131, -0.154088,
		40.109093, 30.941633, 44.944565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598839, 30.520473, 44.393185>,  <40.743935, 30.667141, 45.052425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598839, 30.520473, 44.393185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.359016, 30.830273, 44.473862>,  <40.215122, 31.016153, 44.522266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.359016, 30.830273, 44.473862>,  <40.598839, 30.520473, 44.393185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359016, 30.830273, 44.473862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283397, 0.441134, -0.851521,
		-0.748475, -0.453378, -0.483977,
		-0.599559, 0.774499, 0.201692,
		40.179150, 31.062622, 44.534370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312302, 30.633917, 43.768906>,  <40.598839, 30.520473, 44.393185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312302, 30.633917, 43.768906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235271, 30.978325, 43.957188>,  <40.189053, 31.184969, 44.070156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235271, 30.978325, 43.957188>,  <40.312302, 30.633917, 43.768906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235271, 30.978325, 43.957188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047747, 0.487337, -0.871908,
		-0.980120, -0.145433, -0.134960,
		-0.192576, 0.861018, 0.470705,
		40.177498, 31.236629, 44.098400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745605, 30.991194, 43.408180>,  <40.312302, 30.633917, 43.768906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745605, 30.991194, 43.408180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.917858, 31.296844, 43.600292>,  <40.021210, 31.480234, 43.715561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.917858, 31.296844, 43.600292>,  <39.745605, 30.991194, 43.408180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917858, 31.296844, 43.600292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079789, 0.497836, -0.863593,
		-0.898996, 0.410208, 0.153413,
		0.430627, 0.764126, 0.480283,
		40.047047, 31.526083, 43.744377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523045, 31.523306, 43.029175>,  <39.745605, 30.991194, 43.408180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523045, 31.523306, 43.029175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.821877, 31.670355, 43.250706>,  <40.001175, 31.758583, 43.383625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.821877, 31.670355, 43.250706>,  <39.523045, 31.523306, 43.029175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821877, 31.670355, 43.250706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283825, 0.576978, -0.765859,
		-0.601090, 0.729349, 0.326711,
		0.747084, 0.367622, 0.553823,
		40.046001, 31.780642, 43.416851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429825, 32.310036, 43.089352>,  <39.523045, 31.523306, 43.029175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429825, 32.310036, 43.089352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.806686, 32.180462, 43.123806>,  <40.032803, 32.102718, 43.144478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.806686, 32.180462, 43.123806>,  <39.429825, 32.310036, 43.089352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806686, 32.180462, 43.123806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272413, 0.590249, -0.759867,
		0.195301, 0.739375, 0.644347,
		0.942151, -0.323931, 0.086139,
		40.089333, 32.083282, 43.149647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783653, 32.912109, 42.916897>,  <39.429825, 32.310036, 43.089352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783653, 32.912109, 42.916897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.021370, 32.592953, 42.876526>,  <40.163998, 32.401459, 42.852303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.021370, 32.592953, 42.876526>,  <39.783653, 32.912109, 42.916897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021370, 32.592953, 42.876526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356131, 0.373598, -0.856502,
		0.721105, 0.473064, 0.506180,
		0.594287, -0.797894, -0.100930,
		40.199657, 32.353584, 42.846249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341297, 33.239735, 42.699612>,  <39.783653, 32.912109, 42.916897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341297, 33.239735, 42.699612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371601, 32.857502, 42.585682>,  <40.389786, 32.628162, 42.517323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371601, 32.857502, 42.585682>,  <40.341297, 33.239735, 42.699612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371601, 32.857502, 42.585682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325617, 0.293699, -0.898729,
		0.942461, -0.024653, 0.333405,
		0.075765, -0.955580, -0.284828,
		40.394329, 32.570827, 42.500233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014080, 33.593987, 42.795731>,  <40.341297, 33.239735, 42.699612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014080, 33.593987, 42.795731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.902782, 33.978184, 42.798367>,  <40.836006, 34.208702, 42.799946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.902782, 33.978184, 42.798367>,  <41.014080, 33.593987, 42.795731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902782, 33.978184, 42.798367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000741, -0.006644, 0.999978,
		0.960511, 0.278240, 0.001136,
		-0.278242, 0.960488, 0.006588,
		40.819309, 34.266331, 42.800343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454525, 33.820572, 43.334332>,  <41.014080, 33.593987, 42.795731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454525, 33.820572, 43.334332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.140945, 34.061832, 43.275517>,  <40.952797, 34.206589, 43.240227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.140945, 34.061832, 43.275517>,  <41.454525, 33.820572, 43.334332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140945, 34.061832, 43.275517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150146, 0.045609, 0.987611,
		0.602389, 0.796318, 0.054806,
		-0.783953, 0.603156, -0.147038,
		40.905758, 34.242779, 43.231403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416195, 34.143082, 43.974220>,  <41.454525, 33.820572, 43.334332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416195, 34.143082, 43.974220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.077168, 34.266151, 43.801262>,  <40.873753, 34.339993, 43.697487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.077168, 34.266151, 43.801262>,  <41.416195, 34.143082, 43.974220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077168, 34.266151, 43.801262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382189, 0.211408, 0.899577,
		0.368193, 0.927707, -0.061590,
		-0.847565, 0.307678, -0.432398,
		40.822899, 34.358456, 43.671543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279030, 34.854301, 44.166794>,  <41.416195, 34.143082, 43.974220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279030, 34.854301, 44.166794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.946499, 34.650532, 44.077908>,  <40.746979, 34.528271, 44.024574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.946499, 34.650532, 44.077908>,  <41.279030, 34.854301, 44.166794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946499, 34.650532, 44.077908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325901, 0.122940, 0.937376,
		-0.450205, 0.851687, -0.268226,
		-0.831327, -0.509427, -0.222217,
		40.697102, 34.497704, 44.011242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755817, 35.330971, 44.369530>,  <41.279030, 34.854301, 44.166794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755817, 35.330971, 44.369530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601593, 34.962654, 44.345905>,  <40.509056, 34.741665, 44.331730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601593, 34.962654, 44.345905>,  <40.755817, 35.330971, 44.369530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601593, 34.962654, 44.345905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577082, 0.190708, 0.794107,
		-0.719942, 0.340262, -0.604901,
		-0.385565, -0.920789, -0.059061,
		40.485924, 34.686417, 44.328186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013668, 35.501938, 44.191170>,  <40.755817, 35.330971, 44.369530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013668, 35.501938, 44.191170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073250, 35.139259, 44.349014>,  <40.109001, 34.921654, 44.443722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073250, 35.139259, 44.349014>,  <40.013668, 35.501938, 44.191170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073250, 35.139259, 44.349014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596898, 0.235712, 0.766911,
		-0.788369, -0.349778, -0.506094,
		0.148956, -0.906695, 0.394609,
		40.117935, 34.867252, 44.467396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496922, 35.472229, 44.661575>,  <40.013668, 35.501938, 44.191170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496922, 35.472229, 44.661575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726841, 35.169868, 44.786934>,  <39.864792, 34.988453, 44.862148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726841, 35.169868, 44.786934>,  <39.496922, 35.472229, 44.661575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726841, 35.169868, 44.786934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382133, 0.090702, 0.919645,
		-0.723588, -0.648370, -0.236721,
		0.574799, -0.755904, 0.313394,
		39.899281, 34.943096, 44.880951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037868, 34.962337, 45.087963>,  <39.496922, 35.472229, 44.661575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037868, 34.962337, 45.087963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418613, 34.881947, 45.180534>,  <39.647060, 34.833710, 45.236076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418613, 34.881947, 45.180534>,  <39.037868, 34.962337, 45.087963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418613, 34.881947, 45.180534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212607, 0.110973, 0.970816,
		-0.220798, -0.973289, 0.062901,
		0.951865, -0.200981, 0.231430,
		39.704174, 34.821651, 45.249962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004818, 34.402840, 45.510143>,  <39.037868, 34.962337, 45.087963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004818, 34.402840, 45.510143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334087, 34.609818, 45.603645>,  <39.531647, 34.734005, 45.659744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334087, 34.609818, 45.603645>,  <39.004818, 34.402840, 45.510143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334087, 34.609818, 45.603645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296679, 0.040962, 0.954098,
		0.484120, -0.854734, 0.187234,
		0.823170, 0.517447, 0.233751,
		39.581039, 34.765053, 45.673771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264397, 34.088230, 46.149525>,  <39.004818, 34.402840, 45.510143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264397, 34.088230, 46.149525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471584, 34.430351, 46.144321>,  <39.595898, 34.635624, 46.141197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471584, 34.430351, 46.144321>,  <39.264397, 34.088230, 46.149525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471584, 34.430351, 46.144321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002529, 0.013678, 0.999903,
		0.855398, -0.517948, 0.004922,
		0.517965, 0.855303, -0.013010,
		39.626972, 34.686943, 46.140419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852833, 34.001011, 46.647022>,  <39.264397, 34.088230, 46.149525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852833, 34.001011, 46.647022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794640, 34.394993, 46.609726>,  <39.759724, 34.631382, 46.587349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794640, 34.394993, 46.609726>,  <39.852833, 34.001011, 46.647022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794640, 34.394993, 46.609726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084523, 0.106274, 0.990738,
		0.985744, 0.136251, -0.098713,
		-0.145480, 0.984958, -0.093243,
		39.750996, 34.690479, 46.581753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305984, 34.301941, 47.155750>,  <39.852833, 34.001011, 46.647022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305984, 34.301941, 47.155750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050972, 34.602345, 47.086994>,  <39.897964, 34.782585, 47.045742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050972, 34.602345, 47.086994>,  <40.305984, 34.301941, 47.155750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050972, 34.602345, 47.086994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160755, 0.088521, 0.983017,
		0.753468, 0.654334, 0.064293,
		-0.637530, 0.751007, -0.171886,
		39.859715, 34.827648, 47.035427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628826, 34.943626, 47.453316>,  <40.305984, 34.301941, 47.155750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628826, 34.943626, 47.453316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.230659, 34.981503, 47.447807>,  <39.991760, 35.004227, 47.444504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.230659, 34.981503, 47.447807>,  <40.628826, 34.943626, 47.453316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230659, 34.981503, 47.447807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000144, 0.142448, 0.989802,
		0.095682, 0.985263, -0.141781,
		-0.995412, 0.094686, -0.013772,
		39.932037, 35.009907, 47.443676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449688, 35.533062, 47.834530>,  <40.628826, 34.943626, 47.453316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449688, 35.533062, 47.834530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132912, 35.288872, 47.839424>,  <39.942844, 35.142357, 47.842361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132912, 35.288872, 47.839424>,  <40.449688, 35.533062, 47.834530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132912, 35.288872, 47.839424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034448, 0.064685, 0.997311,
		-0.609624, 0.789390, -0.072256,
		-0.791942, -0.610474, 0.012240,
		39.895329, 35.105728, 47.843098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.115524, 32.605923, 46.917786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460823, 32.426567, 47.010525>,  <33.668003, 32.318954, 47.066170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460823, 32.426567, 47.010525>,  <33.115524, 32.605923, 46.917786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460823, 32.426567, 47.010525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346650, 0.192714, -0.917984,
		0.366930, 0.872818, 0.321793,
		0.863247, -0.448386, 0.231850,
		33.719799, 32.292053, 47.080078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577698, 32.991043, 46.509983>,  <33.115524, 32.605923, 46.917786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577698, 32.991043, 46.509983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793591, 32.675335, 46.627106>,  <33.923126, 32.485909, 46.697380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793591, 32.675335, 46.627106>,  <33.577698, 32.991043, 46.509983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793591, 32.675335, 46.627106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527611, 0.046119, -0.848233,
		0.655985, 0.612306, 0.441322,
		0.539732, -0.789275, 0.292806,
		33.955509, 32.438553, 46.714947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225365, 33.216976, 46.318657>,  <33.577698, 32.991043, 46.509983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225365, 33.216976, 46.318657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224796, 32.817951, 46.346565>,  <34.224457, 32.578537, 46.363312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224796, 32.817951, 46.346565>,  <34.225365, 33.216976, 46.318657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224796, 32.817951, 46.346565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478334, -0.061954, -0.875990,
		0.878177, 0.032130, 0.477256,
		-0.001422, -0.997562, 0.069775,
		34.224369, 32.518684, 46.367496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919559, 32.963654, 46.189892>,  <34.225365, 33.216976, 46.318657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919559, 32.963654, 46.189892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.674007, 32.658104, 46.110241>,  <34.526676, 32.474773, 46.062450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.674007, 32.658104, 46.110241>,  <34.919559, 32.963654, 46.189892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674007, 32.658104, 46.110241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349079, -0.036443, -0.936384,
		0.708019, -0.644340, 0.289023,
		-0.613883, -0.763870, -0.199123,
		34.489841, 32.428944, 46.050503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314125, 32.469299, 45.862259>,  <34.919559, 32.963654, 46.189892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314125, 32.469299, 45.862259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.930687, 32.416641, 45.761257>,  <34.700623, 32.385048, 45.700657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.930687, 32.416641, 45.761257>,  <35.314125, 32.469299, 45.862259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930687, 32.416641, 45.761257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264922, -0.087148, -0.960324,
		0.104416, -0.987459, 0.118415,
		-0.958600, -0.131644, -0.252501,
		34.643108, 32.377148, 45.685509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410599, 31.941391, 45.461452>,  <35.314125, 32.469299, 45.862259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410599, 31.941391, 45.461452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048653, 32.073269, 45.353733>,  <34.831486, 32.152397, 45.289101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048653, 32.073269, 45.353733>,  <35.410599, 31.941391, 45.461452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048653, 32.073269, 45.353733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170508, -0.298936, -0.938917,
		-0.390060, -0.895509, 0.214281,
		-0.904864, 0.329697, -0.269294,
		34.777195, 32.172176, 45.272945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243534, 31.439117, 44.956959>,  <35.410599, 31.941391, 45.461452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243534, 31.439117, 44.956959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011833, 31.759672, 44.897293>,  <34.872814, 31.952005, 44.861496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011833, 31.759672, 44.897293>,  <35.243534, 31.439117, 44.956959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011833, 31.759672, 44.897293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131751, -0.088538, -0.987321,
		-0.804433, -0.591557, -0.054298,
		-0.579249, 0.801387, -0.149161,
		34.838058, 32.000088, 44.852547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820072, 31.331877, 44.407246>,  <35.243534, 31.439117, 44.956959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820072, 31.331877, 44.407246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808212, 31.731487, 44.420307>,  <34.801098, 31.971254, 44.428146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808212, 31.731487, 44.420307>,  <34.820072, 31.331877, 44.407246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808212, 31.731487, 44.420307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074855, 0.034799, -0.996587,
		-0.996753, -0.027103, -0.075813,
		-0.029649, 0.999027, 0.032657,
		34.799316, 32.031197, 44.430103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477234, 31.484169, 43.849525>,  <34.820072, 31.331877, 44.407246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477234, 31.484169, 43.849525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608318, 31.854473, 43.924969>,  <34.686970, 32.076656, 43.970234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608318, 31.854473, 43.924969>,  <34.477234, 31.484169, 43.849525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608318, 31.854473, 43.924969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064412, 0.177273, -0.982052,
		-0.942579, 0.333980, -0.001536,
		0.327713, 0.925760, 0.188606,
		34.706631, 32.132202, 43.981552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078690, 32.030098, 43.436134>,  <34.477234, 31.484169, 43.849525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078690, 32.030098, 43.436134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423046, 32.218170, 43.513905>,  <34.629658, 32.331013, 43.560566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423046, 32.218170, 43.513905>,  <34.078690, 32.030098, 43.436134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423046, 32.218170, 43.513905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020104, 0.350400, -0.936384,
		-0.508394, 0.810032, 0.292203,
		0.860890, 0.470178, 0.194427,
		34.681313, 32.359222, 43.572231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950619, 32.660744, 43.230114>,  <34.078690, 32.030098, 43.436134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950619, 32.660744, 43.230114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346573, 32.607243, 43.249004>,  <34.584145, 32.575142, 43.260338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346573, 32.607243, 43.249004>,  <33.950619, 32.660744, 43.230114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346573, 32.607243, 43.249004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082362, 0.270929, -0.959069,
		0.115486, 0.953261, 0.279205,
		0.989889, -0.133755, 0.047224,
		34.643539, 32.567116, 43.263172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261925, 33.240124, 42.912106>,  <33.950619, 32.660744, 43.230114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261925, 33.240124, 42.912106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555965, 32.968979, 42.916565>,  <34.732391, 32.806293, 42.919243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555965, 32.968979, 42.916565>,  <34.261925, 33.240124, 42.912106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555965, 32.968979, 42.916565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237105, 0.241646, -0.940951,
		0.635141, 0.694340, 0.338360,
		0.735103, -0.677863, 0.011152,
		34.776497, 32.765621, 42.919910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744171, 33.606781, 42.639366>,  <34.261925, 33.240124, 42.912106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744171, 33.606781, 42.639366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894772, 33.240299, 42.584503>,  <34.985130, 33.020409, 42.551586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894772, 33.240299, 42.584503>,  <34.744171, 33.606781, 42.639366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894772, 33.240299, 42.584503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243082, 0.240565, -0.939702,
		0.893958, 0.320454, 0.313286,
		0.376497, -0.916209, -0.137158,
		35.007721, 32.965435, 42.543354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432194, 33.725670, 42.267830>,  <34.744171, 33.606781, 42.639366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432194, 33.725670, 42.267830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313564, 33.350750, 42.194611>,  <35.242386, 33.125797, 42.150677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313564, 33.350750, 42.194611>,  <35.432194, 33.725670, 42.267830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313564, 33.350750, 42.194611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171644, 0.136239, -0.975693,
		0.939458, -0.320786, 0.120477,
		-0.296575, -0.937302, -0.183052,
		35.224590, 33.069561, 42.139694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106838, 33.953621, 42.344391>,  <35.432194, 33.725670, 42.267830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106838, 33.953621, 42.344391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165848, 34.349174, 42.351898>,  <36.201252, 34.586506, 42.356403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165848, 34.349174, 42.351898>,  <36.106838, 33.953621, 42.344391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165848, 34.349174, 42.351898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106450, -0.002993, 0.994314,
		0.983313, -0.148684, 0.104825,
		0.147525, 0.988881, 0.018771,
		36.210106, 34.645840, 42.357529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630642, 34.167740, 42.785007>,  <36.106838, 33.953621, 42.344391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630642, 34.167740, 42.785007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402424, 34.494915, 42.755459>,  <36.265491, 34.691219, 42.737732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402424, 34.494915, 42.755459>,  <36.630642, 34.167740, 42.785007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402424, 34.494915, 42.755459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082383, 0.146491, 0.985775,
		0.817122, 0.556347, -0.150964,
		-0.570548, 0.817936, -0.073867,
		36.231258, 34.740295, 42.733299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820671, 34.702202, 43.400131>,  <36.630642, 34.167740, 42.785007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820671, 34.702202, 43.400131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463993, 34.816051, 43.259350>,  <36.249985, 34.884361, 43.174881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463993, 34.816051, 43.259350>,  <36.820671, 34.702202, 43.400131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463993, 34.816051, 43.259350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281216, 0.260938, 0.923487,
		0.354681, 0.922444, -0.152637,
		-0.891694, 0.284619, -0.351956,
		36.196484, 34.901436, 43.153763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652905, 35.353085, 43.796104>,  <36.820671, 34.702202, 43.400131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652905, 35.353085, 43.796104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291420, 35.236870, 43.670319>,  <36.074528, 35.167141, 43.594849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291420, 35.236870, 43.670319>,  <36.652905, 35.353085, 43.796104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291420, 35.236870, 43.670319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382854, 0.219652, 0.897316,
		-0.191635, 0.931310, -0.309737,
		-0.903714, -0.290541, -0.314463,
		36.020306, 35.149708, 43.575981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252613, 35.800533, 43.939098>,  <36.652905, 35.353085, 43.796104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252613, 35.800533, 43.939098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970467, 35.519810, 43.899239>,  <35.801178, 35.351376, 43.875320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970467, 35.519810, 43.899239>,  <36.252613, 35.800533, 43.939098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970467, 35.519810, 43.899239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388108, 0.264727, 0.882775,
		-0.593154, 0.661355, -0.459106,
		-0.705365, -0.701804, -0.099653,
		35.758858, 35.309269, 43.869343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518845, 36.109535, 44.171169>,  <36.252613, 35.800533, 43.939098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518845, 36.109535, 44.171169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476833, 35.712009, 44.185654>,  <35.451626, 35.473495, 44.194344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476833, 35.712009, 44.185654>,  <35.518845, 36.109535, 44.171169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476833, 35.712009, 44.185654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407304, 0.076203, 0.910108,
		-0.907234, 0.080839, -0.412786,
		-0.105028, -0.993810, 0.036208,
		35.445324, 35.413868, 44.196518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825760, 35.938137, 44.492466>,  <35.518845, 36.109535, 44.171169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825760, 35.938137, 44.492466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025948, 35.595764, 44.544479>,  <35.146061, 35.390339, 44.575687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025948, 35.595764, 44.544479>,  <34.825760, 35.938137, 44.492466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025948, 35.595764, 44.544479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327111, -0.047886, 0.943772,
		-0.801580, -0.514862, -0.303951,
		0.500467, -0.855935, 0.130032,
		35.176086, 35.338985, 44.583488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380421, 35.580826, 44.911667>,  <34.825760, 35.938137, 44.492466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380421, 35.580826, 44.911667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738434, 35.407581, 44.954254>,  <34.953239, 35.303635, 44.979805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738434, 35.407581, 44.954254>,  <34.380421, 35.580826, 44.911667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738434, 35.407581, 44.954254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213422, -0.206299, 0.954930,
		-0.391632, -0.877412, -0.277080,
		0.895028, -0.433116, 0.106466,
		35.006943, 35.277645, 44.986195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290596, 34.972118, 45.414974>,  <34.380421, 35.580826, 44.911667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290596, 34.972118, 45.414974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689014, 35.006523, 45.406055>,  <34.928066, 35.027168, 45.400703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689014, 35.006523, 45.406055>,  <34.290596, 34.972118, 45.414974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689014, 35.006523, 45.406055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038604, -0.192851, 0.980468,
		0.080034, -0.977451, -0.195409,
		0.996044, 0.086015, -0.022299,
		34.987827, 35.032326, 45.399364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558891, 34.488213, 45.819016>,  <34.290596, 34.972118, 45.414974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558891, 34.488213, 45.819016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865829, 34.744686, 45.822357>,  <35.049992, 34.898571, 45.824364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865829, 34.744686, 45.822357>,  <34.558891, 34.488213, 45.819016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865829, 34.744686, 45.822357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040061, -0.060945, 0.997337,
		0.639981, -0.764967, -0.072452,
		0.767345, 0.641180, 0.008359,
		35.096035, 34.937038, 45.824863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140358, 34.199116, 46.217110>,  <34.558891, 34.488213, 45.819016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140358, 34.199116, 46.217110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169121, 34.598042, 46.211479>,  <35.186378, 34.837395, 46.208099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169121, 34.598042, 46.211479>,  <35.140358, 34.199116, 46.217110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169121, 34.598042, 46.211479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069376, 0.009080, 0.997549,
		0.994996, -0.072704, -0.068536,
		0.071904, 0.997312, -0.014078,
		35.190693, 34.897236, 46.207256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696503, 34.353363, 46.624668>,  <35.140358, 34.199116, 46.217110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696503, 34.353363, 46.624668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469231, 34.682358, 46.614170>,  <35.332867, 34.879753, 46.607872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469231, 34.682358, 46.614170>,  <35.696503, 34.353363, 46.624668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469231, 34.682358, 46.614170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067029, -0.014469, 0.997646,
		0.820169, 0.568603, 0.063351,
		-0.568182, 0.822485, -0.026246,
		35.298775, 34.929104, 46.606297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894722, 34.839657, 47.136845>,  <35.696503, 34.353363, 46.624668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894722, 34.839657, 47.136845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557964, 35.037933, 47.051514>,  <35.355911, 35.156898, 47.000317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557964, 35.037933, 47.051514>,  <35.894722, 34.839657, 47.136845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557964, 35.037933, 47.051514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143814, 0.174922, 0.974023,
		0.520128, 0.850702, -0.075979,
		-0.841893, 0.495689, -0.213325,
		35.305397, 35.186642, 46.987514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009682, 35.534138, 47.508926>,  <35.894722, 34.839657, 47.136845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009682, 35.534138, 47.508926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616199, 35.466183, 47.485371>,  <35.380112, 35.425411, 47.471237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616199, 35.466183, 47.485371>,  <36.009682, 35.534138, 47.508926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616199, 35.466183, 47.485371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060911, 0.006696, 0.998121,
		-0.169172, 0.985441, -0.016935,
		-0.983703, -0.169885, -0.058891,
		35.321087, 35.415218, 47.467705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256477, 36.240749, 47.799541>,  <36.009682, 35.534138, 47.508926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256477, 36.240749, 47.799541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637302, 36.270199, 47.918301>,  <36.865799, 36.287868, 47.989555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637302, 36.270199, 47.918301>,  <36.256477, 36.240749, 47.799541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637302, 36.270199, 47.918301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278449, 0.193230, -0.940813,
		-0.126637, 0.978387, 0.163467,
		0.952066, 0.073625, 0.296901,
		36.922924, 36.292286, 48.007370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512211, 36.930637, 47.612068>,  <36.256477, 36.240749, 47.799541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512211, 36.930637, 47.612068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828079, 36.695286, 47.681622>,  <37.017601, 36.554077, 47.723354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828079, 36.695286, 47.681622>,  <36.512211, 36.930637, 47.612068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828079, 36.695286, 47.681622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522692, 0.496761, -0.692836,
		0.321269, 0.637999, 0.699816,
		0.789670, -0.588376, 0.173883,
		37.064980, 36.518772, 47.733788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031998, 37.350422, 47.664463>,  <36.512211, 36.930637, 47.612068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031998, 37.350422, 47.664463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220364, 37.006401, 47.585930>,  <37.333385, 36.799988, 47.538811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220364, 37.006401, 47.585930>,  <37.031998, 37.350422, 47.664463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220364, 37.006401, 47.585930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479707, 0.436426, -0.761192,
		0.740349, 0.264278, 0.618095,
		0.470919, -0.860052, -0.196331,
		37.361641, 36.748386, 47.527031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688313, 37.432507, 47.581089>,  <37.031998, 37.350422, 47.664463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688313, 37.432507, 47.581089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.695747, 37.073235, 47.405396>,  <37.700207, 36.857670, 47.299980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.695747, 37.073235, 47.405396>,  <37.688313, 37.432507, 47.581089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695747, 37.073235, 47.405396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256192, 0.428925, -0.866250,
		0.966447, -0.096427, 0.238080,
		0.018589, -0.898179, -0.439237,
		37.701324, 36.803780, 47.273624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257778, 37.442112, 47.186508>,  <37.688313, 37.432507, 47.581089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257778, 37.442112, 47.186508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053799, 37.147144, 47.009346>,  <37.931412, 36.970165, 46.903049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053799, 37.147144, 47.009346>,  <38.257778, 37.442112, 47.186508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053799, 37.147144, 47.009346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360331, 0.284416, -0.888408,
		0.781099, -0.612634, 0.120678,
		-0.509947, -0.737419, -0.442908,
		37.900814, 36.925919, 46.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776577, 37.222904, 46.730110>,  <38.257778, 37.442112, 47.186508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776577, 37.222904, 46.730110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.412495, 37.109505, 46.609341>,  <38.194046, 37.041466, 46.536880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.412495, 37.109505, 46.609341>,  <38.776577, 37.222904, 46.730110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412495, 37.109505, 46.609341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232753, 0.252841, -0.939094,
		0.342574, -0.925039, -0.164151,
		-0.910203, -0.283503, -0.301923,
		38.139435, 37.024456, 46.518764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879993, 36.856503, 46.117229>,  <38.776577, 37.222904, 46.730110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879993, 36.856503, 46.117229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488724, 36.936474, 46.094582>,  <38.253963, 36.984459, 46.080994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488724, 36.936474, 46.094582>,  <38.879993, 36.856503, 46.117229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488724, 36.936474, 46.094582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074963, 0.085391, -0.993524,
		-0.193804, -0.976081, -0.098514,
		-0.978172, 0.199934, -0.056621,
		38.195271, 36.996452, 46.077595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575596, 36.364216, 45.557404>,  <38.879993, 36.856503, 46.117229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575596, 36.364216, 45.557404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339264, 36.685112, 45.591648>,  <38.197464, 36.877651, 45.612194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339264, 36.685112, 45.591648>,  <38.575596, 36.364216, 45.557404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339264, 36.685112, 45.591648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044784, 0.138564, -0.989340,
		-0.805555, -0.580694, -0.117795,
		-0.590826, 0.802243, 0.085615,
		38.162018, 36.925785, 45.617332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067959, 36.302216, 44.989510>,  <38.575596, 36.364216, 45.557404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067959, 36.302216, 44.989510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042858, 36.688465, 45.090412>,  <38.027798, 36.920216, 45.150951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042858, 36.688465, 45.090412>,  <38.067959, 36.302216, 44.989510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042858, 36.688465, 45.090412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093400, 0.257325, -0.961801,
		-0.993649, -0.036791, -0.106336,
		-0.062749, 0.965624, 0.252255,
		38.024033, 36.978153, 45.166088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546421, 36.540337, 44.501282>,  <38.067959, 36.302216, 44.989510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546421, 36.540337, 44.501282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742371, 36.867199, 44.622795>,  <37.859940, 37.063316, 44.695705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742371, 36.867199, 44.622795>,  <37.546421, 36.540337, 44.501282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742371, 36.867199, 44.622795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076792, 0.387552, -0.918644,
		-0.868406, 0.426688, 0.252601,
		0.489871, 0.817154, 0.303786,
		37.889332, 37.112347, 44.713932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165382, 37.114880, 44.118622>,  <37.546421, 36.540337, 44.501282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165382, 37.114880, 44.118622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537750, 37.232849, 44.204788>,  <37.761173, 37.303631, 44.256489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537750, 37.232849, 44.204788>,  <37.165382, 37.114880, 44.118622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537750, 37.232849, 44.204788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121535, 0.306042, -0.944229,
		-0.344400, 0.905184, 0.249058,
		0.930923, 0.294924, 0.215412,
		37.817028, 37.321327, 44.269413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256786, 37.678600, 43.806282>,  <37.165382, 37.114880, 44.118622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256786, 37.678600, 43.806282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633358, 37.551067, 43.850197>,  <37.859303, 37.474548, 43.876545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633358, 37.551067, 43.850197>,  <37.256786, 37.678600, 43.806282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633358, 37.551067, 43.850197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239746, 0.403898, -0.882830,
		0.237132, 0.857445, 0.456680,
		0.941430, -0.318835, 0.109791,
		37.915787, 37.455418, 43.883133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691235, 38.278381, 43.675774>,  <37.256786, 37.678600, 43.806282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691235, 38.278381, 43.675774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960979, 37.985645, 43.636471>,  <38.122826, 37.810005, 43.612888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960979, 37.985645, 43.636471>,  <37.691235, 38.278381, 43.675774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960979, 37.985645, 43.636471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418138, 0.488150, -0.766074,
		0.608605, 0.475524, 0.635197,
		0.674359, -0.731837, -0.098256,
		38.163288, 37.766094, 43.606995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355179, 38.562920, 43.492332>,  <37.691235, 38.278381, 43.675774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355179, 38.562920, 43.492332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.365295, 38.181862, 43.371120>,  <38.371365, 37.953228, 43.298393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.365295, 38.181862, 43.371120>,  <38.355179, 38.562920, 43.492332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365295, 38.181862, 43.371120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532667, 0.269355, -0.802318,
		0.845947, -0.141125, 0.514254,
		0.025290, -0.952644, -0.303033,
		38.372883, 37.896069, 43.280212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.622953, 29.425180, 41.514000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338089, 29.690655, 41.605518>,  <26.167170, 29.849939, 41.660427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338089, 29.690655, 41.605518>,  <26.622953, 29.425180, 41.514000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338089, 29.690655, 41.605518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141928, 0.455297, -0.878955,
		-0.687519, -0.593485, -0.418441,
		-0.712161, 0.663687, 0.228793,
		26.124441, 29.889761, 41.674156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156981, 29.617687, 40.887695>,  <26.622953, 29.425180, 41.514000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156981, 29.617687, 40.887695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136564, 29.929155, 41.137836>,  <26.124315, 30.116035, 41.287922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136564, 29.929155, 41.137836>,  <26.156981, 29.617687, 40.887695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136564, 29.929155, 41.137836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137237, 0.625698, -0.767899,
		-0.989222, 0.046628, -0.138798,
		-0.051040, 0.778671, 0.625353,
		26.121252, 30.162756, 41.325443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437126, 29.978851, 40.794312>,  <26.156981, 29.617687, 40.887695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437126, 29.978851, 40.794312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755655, 30.187124, 40.917442>,  <25.946774, 30.312088, 40.991322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755655, 30.187124, 40.917442>,  <25.437126, 29.978851, 40.794312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755655, 30.187124, 40.917442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112670, 0.627692, -0.770265,
		-0.594283, 0.578699, 0.558512,
		0.796325, 0.520683, 0.307825,
		25.994553, 30.343328, 41.009789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287006, 30.589603, 40.484169>,  <25.437126, 29.978851, 40.794312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287006, 30.589603, 40.484169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.669075, 30.654911, 40.582954>,  <25.898317, 30.694096, 40.642223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.669075, 30.654911, 40.582954>,  <25.287006, 30.589603, 40.484169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669075, 30.654911, 40.582954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064722, 0.698847, -0.712337,
		-0.288888, 0.696389, 0.656952,
		0.955173, 0.163267, 0.246960,
		25.955627, 30.703892, 40.657043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425594, 31.342037, 40.408119>,  <25.287006, 30.589603, 40.484169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425594, 31.342037, 40.408119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778469, 31.154331, 40.392452>,  <25.990194, 31.041708, 40.383053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778469, 31.154331, 40.392452>,  <25.425594, 31.342037, 40.408119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778469, 31.154331, 40.392452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300818, 0.625602, -0.719813,
		0.362289, 0.623227, 0.693062,
		0.882187, -0.469266, -0.039171,
		26.043125, 31.013552, 40.380699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906420, 31.866379, 40.490673>,  <25.425594, 31.342037, 40.408119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906420, 31.866379, 40.490673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.124996, 31.570780, 40.333046>,  <26.256142, 31.393421, 40.238472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.124996, 31.570780, 40.333046>,  <25.906420, 31.866379, 40.490673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124996, 31.570780, 40.333046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472440, 0.660510, -0.583547,
		0.691522, 0.132702, 0.710061,
		0.546441, -0.738997, -0.394064,
		26.288929, 31.349081, 40.214828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486692, 32.175682, 40.316132>,  <25.906420, 31.866379, 40.490673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486692, 32.175682, 40.316132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530048, 31.844959, 40.095356>,  <26.556061, 31.646524, 39.962891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530048, 31.844959, 40.095356>,  <26.486692, 32.175682, 40.316132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530048, 31.844959, 40.095356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430706, 0.539454, -0.723520,
		0.895960, -0.159304, 0.414582,
		0.108389, -0.826808, -0.551943,
		26.562565, 31.596916, 39.929771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153162, 32.206345, 40.083000>,  <26.486692, 32.175682, 40.316132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153162, 32.206345, 40.083000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953150, 31.958170, 39.841331>,  <26.833141, 31.809265, 39.696331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953150, 31.958170, 39.841331>,  <27.153162, 32.206345, 40.083000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953150, 31.958170, 39.841331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355527, 0.489084, -0.796491,
		0.789664, -0.613070, -0.023976,
		-0.500031, -0.620436, -0.604175,
		26.803141, 31.772039, 39.660080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633833, 31.926859, 39.663380>,  <27.153162, 32.206345, 40.083000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633833, 31.926859, 39.663380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290745, 31.882082, 39.462666>,  <27.084892, 31.855215, 39.342236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290745, 31.882082, 39.462666>,  <27.633833, 31.926859, 39.663380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290745, 31.882082, 39.462666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430917, 0.375799, -0.820418,
		0.280411, -0.919915, -0.274091,
		-0.857718, -0.111944, -0.501785,
		27.033430, 31.848499, 39.312130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764395, 31.648737, 38.977478>,  <27.633833, 31.926859, 39.663380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764395, 31.648737, 38.977478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393761, 31.776924, 38.898750>,  <27.171381, 31.853836, 38.851513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393761, 31.776924, 38.898750>,  <27.764395, 31.648737, 38.977478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393761, 31.776924, 38.898750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354691, 0.570657, -0.740638,
		-0.125032, -0.756076, -0.642430,
		-0.926586, 0.320468, -0.196823,
		27.115786, 31.873064, 38.839703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780659, 31.634285, 38.273735>,  <27.764395, 31.648737, 38.977478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780659, 31.634285, 38.273735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483967, 31.888416, 38.359707>,  <27.305952, 32.040894, 38.411289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483967, 31.888416, 38.359707>,  <27.780659, 31.634285, 38.273735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483967, 31.888416, 38.359707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339727, 0.632196, -0.696358,
		-0.578294, -0.443492, -0.684757,
		-0.741729, 0.635329, 0.214928,
		27.261448, 32.079014, 38.424187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480858, 31.845940, 37.617691>,  <27.780659, 31.634285, 38.273735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480858, 31.845940, 37.617691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381777, 32.152309, 37.855011>,  <27.322329, 32.336132, 37.997402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381777, 32.152309, 37.855011>,  <27.480858, 31.845940, 37.617691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381777, 32.152309, 37.855011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012359, 0.614832, -0.788561,
		-0.968758, -0.187995, -0.161761,
		-0.247702, 0.765924, 0.593300,
		27.307467, 32.382088, 38.033001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837950, 32.175247, 37.389366>,  <27.480858, 31.845940, 37.617691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837950, 32.175247, 37.389366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050915, 32.431335, 37.610870>,  <27.178694, 32.584988, 37.743774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050915, 32.431335, 37.610870>,  <26.837950, 32.175247, 37.389366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050915, 32.431335, 37.610870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102473, 0.600631, -0.792933,
		-0.840259, 0.478913, 0.254178,
		0.532413, 0.640222, 0.553761,
		27.210638, 32.623402, 37.777000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551897, 32.738308, 37.212769>,  <26.837950, 32.175247, 37.389366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551897, 32.738308, 37.212769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916264, 32.839554, 37.343102>,  <27.134884, 32.900303, 37.421303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916264, 32.839554, 37.343102>,  <26.551897, 32.738308, 37.212769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916264, 32.839554, 37.343102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065634, 0.690760, -0.720099,
		-0.407342, 0.677334, 0.612610,
		0.910914, 0.253119, 0.325832,
		27.189537, 32.915489, 37.440849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537304, 33.322304, 36.980732>,  <26.551897, 32.738308, 37.212769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537304, 33.322304, 36.980732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915222, 33.240597, 37.083206>,  <27.141973, 33.191574, 37.144691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915222, 33.240597, 37.083206>,  <26.537304, 33.322304, 36.980732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915222, 33.240597, 37.083206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326223, 0.659444, -0.677283,
		-0.030595, 0.723470, 0.689678,
		0.944798, -0.204268, 0.256188,
		27.198662, 33.179317, 37.160061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822126, 33.958447, 36.942741>,  <26.537304, 33.322304, 36.980732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822126, 33.958447, 36.942741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.130682, 33.706722, 36.904957>,  <27.315815, 33.555687, 36.882286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.130682, 33.706722, 36.904957>,  <26.822126, 33.958447, 36.942741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130682, 33.706722, 36.904957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291725, 0.481628, -0.826396,
		0.565559, 0.609916, 0.555109,
		0.771388, -0.629315, -0.094461,
		27.362099, 33.517929, 36.876617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433950, 34.369205, 36.882652>,  <26.822126, 33.958447, 36.942741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433950, 34.369205, 36.882652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467352, 34.013668, 36.702442>,  <27.487392, 33.800346, 36.594315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467352, 34.013668, 36.702442>,  <27.433950, 34.369205, 36.882652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467352, 34.013668, 36.702442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329099, 0.451339, -0.829450,
		0.940596, -0.079007, 0.330208,
		0.083503, -0.888848, -0.450529,
		27.492403, 33.747013, 36.567284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755541, 34.582237, 36.406246>,  <27.433950, 34.369205, 36.882652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755541, 34.582237, 36.406246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673838, 34.208641, 36.288982>,  <27.624815, 33.984486, 36.218624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673838, 34.208641, 36.288982>,  <27.755541, 34.582237, 36.406246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673838, 34.208641, 36.288982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356444, 0.207957, -0.910880,
		0.911716, -0.290552, 0.290437,
		-0.204259, -0.933988, -0.293163,
		27.612560, 33.928444, 36.201035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416189, 34.241032, 36.095547>,  <27.755541, 34.582237, 36.406246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416189, 34.241032, 36.095547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090687, 34.047359, 35.966938>,  <27.895386, 33.931156, 35.889774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090687, 34.047359, 35.966938>,  <28.416189, 34.241032, 36.095547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090687, 34.047359, 35.966938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196675, 0.291166, -0.936238,
		0.546922, -0.825103, -0.141711,
		-0.813754, -0.484178, -0.321522,
		27.846561, 33.902107, 35.870480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060724, 34.521431, 36.191303>,  <28.416189, 34.241032, 36.095547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060724, 34.521431, 36.191303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385777, 34.716301, 36.319237>,  <29.580809, 34.833221, 36.395996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385777, 34.716301, 36.319237>,  <29.060724, 34.521431, 36.191303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385777, 34.716301, 36.319237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047435, -0.602279, 0.796875,
		0.580846, -0.632393, -0.512539,
		0.812630, 0.487174, 0.319834,
		29.629566, 34.862453, 36.415188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485195, 33.974930, 36.404606>,  <29.060724, 34.521431, 36.191303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485195, 33.974930, 36.404606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.674715, 34.280369, 36.580078>,  <29.788427, 34.463631, 36.685360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.674715, 34.280369, 36.580078>,  <29.485195, 33.974930, 36.404606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674715, 34.280369, 36.580078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013249, -0.504261, 0.863450,
		0.880534, -0.403289, -0.249035,
		0.473798, 0.763596, 0.438676,
		29.816854, 34.509449, 36.711681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892166, 33.615475, 36.826576>,  <29.485195, 33.974930, 36.404606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892166, 33.615475, 36.826576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.911451, 33.984837, 36.978893>,  <29.923021, 34.206455, 37.070282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.911451, 33.984837, 36.978893>,  <29.892166, 33.615475, 36.826576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911451, 33.984837, 36.978893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220060, -0.381686, 0.897714,
		0.974294, 0.040516, -0.221606,
		0.048212, 0.923404, 0.380790,
		29.925915, 34.261856, 37.093132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481552, 33.619205, 37.242416>,  <29.892166, 33.615475, 36.826576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481552, 33.619205, 37.242416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237080, 33.909599, 37.368530>,  <30.090395, 34.083836, 37.444199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237080, 33.909599, 37.368530>,  <30.481552, 33.619205, 37.242416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237080, 33.909599, 37.368530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158784, -0.277777, 0.947432,
		0.775399, 0.629115, 0.054498,
		-0.611182, 0.725985, 0.315282,
		30.053724, 34.127396, 37.463116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849516, 34.149494, 37.796738>,  <30.481552, 33.619205, 37.242416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849516, 34.149494, 37.796738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457674, 34.195690, 37.862507>,  <30.222569, 34.223408, 37.901970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457674, 34.195690, 37.862507>,  <30.849516, 34.149494, 37.796738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457674, 34.195690, 37.862507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142658, -0.176503, 0.973907,
		0.141495, 0.977501, 0.156429,
		-0.979606, 0.115487, 0.164422,
		30.163792, 34.230335, 37.911835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746338, 34.562031, 38.458820>,  <30.849516, 34.149494, 37.796738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746338, 34.562031, 38.458820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398436, 34.369652, 38.414604>,  <30.189695, 34.254227, 38.388073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398436, 34.369652, 38.414604>,  <30.746338, 34.562031, 38.458820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398436, 34.369652, 38.414604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071697, -0.344778, 0.935942,
		-0.488248, 0.806115, 0.334355,
		-0.869755, -0.480944, -0.110541,
		30.137508, 34.225368, 38.381443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319542, 34.791641, 39.001324>,  <30.746338, 34.562031, 38.458820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319542, 34.791641, 39.001324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142973, 34.443741, 38.913071>,  <30.037031, 34.235001, 38.860119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142973, 34.443741, 38.913071>,  <30.319542, 34.791641, 39.001324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142973, 34.443741, 38.913071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070283, -0.278640, 0.957821,
		-0.894542, 0.407297, 0.184127,
		-0.441423, -0.869752, -0.220629,
		30.010546, 34.182816, 38.846882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818346, 34.672405, 39.583969>,  <30.319542, 34.791641, 39.001324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818346, 34.672405, 39.583969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841455, 34.311726, 39.412579>,  <29.855322, 34.095318, 39.309742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841455, 34.311726, 39.412579>,  <29.818346, 34.672405, 39.583969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841455, 34.311726, 39.412579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110505, -0.432336, 0.894916,
		-0.992195, -0.004353, -0.124620,
		0.057773, -0.901702, -0.428480,
		29.858788, 34.041214, 39.284035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293053, 34.249077, 39.931721>,  <29.818346, 34.672405, 39.583969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293053, 34.249077, 39.931721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.532196, 33.990971, 39.741482>,  <29.675682, 33.836105, 39.627338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.532196, 33.990971, 39.741482>,  <29.293053, 34.249077, 39.931721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532196, 33.990971, 39.741482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170774, -0.682216, 0.710928,
		-0.783200, -0.343814, -0.518063,
		0.597858, -0.645270, -0.475597,
		29.711554, 33.797390, 39.598804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887339, 33.687492, 39.914646>,  <29.293053, 34.249077, 39.931721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887339, 33.687492, 39.914646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272499, 33.582581, 39.889259>,  <29.503595, 33.519634, 39.874027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272499, 33.582581, 39.889259>,  <28.887339, 33.687492, 39.914646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272499, 33.582581, 39.889259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138982, -0.683610, 0.716493,
		-0.231312, -0.681091, -0.694701,
		0.962901, -0.262284, -0.063468,
		29.561369, 33.503895, 39.870220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862574, 32.941513, 39.851742>,  <28.887339, 33.687492, 39.914646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862574, 32.941513, 39.851742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238615, 33.031818, 39.953907>,  <29.464241, 33.086002, 40.015205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238615, 33.031818, 39.953907>,  <28.862574, 32.941513, 39.851742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238615, 33.031818, 39.953907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016816, -0.717632, 0.696219,
		0.340471, -0.658814, -0.670853,
		0.940105, 0.225761, 0.255412,
		29.520647, 33.099548, 40.030529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210417, 32.237946, 39.844784>,  <28.862574, 32.941513, 39.851742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210417, 32.237946, 39.844784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409828, 32.496609, 40.075714>,  <29.529474, 32.651806, 40.214272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409828, 32.496609, 40.075714>,  <29.210417, 32.237946, 39.844784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409828, 32.496609, 40.075714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057532, -0.689198, 0.722286,
		0.864963, -0.326865, -0.380787,
		0.498527, 0.646658, 0.577325,
		29.559387, 32.690605, 40.248913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588625, 31.750200, 40.274891>,  <29.210417, 32.237946, 39.844784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588625, 31.750200, 40.274891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606783, 32.101532, 40.465248>,  <29.617678, 32.312332, 40.579464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606783, 32.101532, 40.465248>,  <29.588625, 31.750200, 40.274891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606783, 32.101532, 40.465248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017493, -0.475614, 0.879480,
		0.998816, -0.048249, -0.006226,
		0.045396, 0.878330, 0.475895,
		29.620401, 32.365032, 40.608017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977104, 31.608669, 40.833527>,  <29.588625, 31.750200, 40.274891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977104, 31.608669, 40.833527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819624, 31.953943, 40.959961>,  <29.725136, 32.161106, 41.035820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819624, 31.953943, 40.959961>,  <29.977104, 31.608669, 40.833527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819624, 31.953943, 40.959961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026023, -0.333249, 0.942479,
		0.918870, 0.379281, 0.108738,
		-0.393702, 0.863186, 0.316083,
		29.701513, 32.212898, 41.054787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333542, 31.787895, 41.461594>,  <29.977104, 31.608669, 40.833527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333542, 31.787895, 41.461594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.970873, 31.956326, 41.451504>,  <29.753271, 32.057384, 41.445450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.970873, 31.956326, 41.451504>,  <30.333542, 31.787895, 41.461594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970873, 31.956326, 41.451504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269697, -0.532668, 0.802202,
		0.324354, 0.734138, 0.596519,
		-0.906674, 0.421077, -0.025222,
		29.698870, 32.082649, 41.443935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186382, 31.958099, 42.091133>,  <30.333542, 31.787895, 41.461594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186382, 31.958099, 42.091133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816448, 31.937485, 41.940392>,  <29.594488, 31.925116, 41.849945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816448, 31.937485, 41.940392>,  <30.186382, 31.958099, 42.091133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816448, 31.937485, 41.940392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305382, -0.490057, 0.816447,
		-0.226759, 0.870166, 0.437484,
		-0.924836, -0.051537, -0.376858,
		29.538998, 31.922024, 41.827335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759848, 32.099041, 42.616829>,  <30.186382, 31.958099, 42.091133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759848, 32.099041, 42.616829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538118, 31.884439, 42.362305>,  <29.405081, 31.755678, 42.209591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538118, 31.884439, 42.362305>,  <29.759848, 32.099041, 42.616829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538118, 31.884439, 42.362305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400670, -0.498083, 0.769011,
		-0.729514, 0.681228, 0.061136,
		-0.554323, -0.536508, -0.636306,
		29.371822, 31.723488, 42.171413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217064, 32.137341, 42.943043>,  <29.759848, 32.099041, 42.616829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217064, 32.137341, 42.943043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145258, 31.838295, 42.687279>,  <29.102175, 31.658867, 42.533821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145258, 31.838295, 42.687279>,  <29.217064, 32.137341, 42.943043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145258, 31.838295, 42.687279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429272, -0.525295, 0.734704,
		-0.885155, 0.406373, -0.226631,
		-0.179515, -0.747614, -0.639412,
		29.091404, 31.614012, 42.495457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633905, 31.945431, 43.165771>,  <29.217064, 32.137341, 42.943043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633905, 31.945431, 43.165771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719830, 31.627853, 42.938259>,  <28.771385, 31.437307, 42.801750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719830, 31.627853, 42.938259>,  <28.633905, 31.945431, 43.165771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719830, 31.627853, 42.938259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486260, -0.592006, 0.642714,
		-0.846999, 0.138513, -0.513232,
		0.214812, -0.793942, -0.568781,
		28.784273, 31.389671, 42.767624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965706, 31.603886, 42.795307>,  <28.633905, 31.945431, 43.165771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965706, 31.603886, 42.795307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267668, 31.345533, 42.840843>,  <28.448845, 31.190523, 42.868164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267668, 31.345533, 42.840843>,  <27.965706, 31.603886, 42.795307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267668, 31.345533, 42.840843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598186, -0.606934, 0.523263,
		-0.268871, -0.463111, -0.844533,
		0.754905, -0.645878, 0.113840,
		28.494139, 31.151770, 42.874996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665094, 30.940729, 42.657246>,  <27.965706, 31.603886, 42.795307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665094, 30.940729, 42.657246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999098, 30.853390, 42.859268>,  <28.199501, 30.800985, 42.980480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999098, 30.853390, 42.859268>,  <27.665094, 30.940729, 42.657246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999098, 30.853390, 42.859268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517443, -0.623747, 0.585827,
		0.187111, -0.750509, -0.633819,
		0.835010, -0.218350, 0.505055,
		28.249601, 30.787886, 43.010784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700047, 30.203533, 42.801533>,  <27.665094, 30.940729, 42.657246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700047, 30.203533, 42.801533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924435, 30.382523, 43.080124>,  <28.059069, 30.489916, 43.247280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924435, 30.382523, 43.080124>,  <27.700047, 30.203533, 42.801533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924435, 30.382523, 43.080124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381073, -0.607304, 0.697112,
		0.734912, -0.656468, -0.170160,
		0.560971, 0.447472, 0.696477,
		28.092726, 30.516764, 43.289066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873901, 29.660688, 43.252777>,  <27.700047, 30.203533, 42.801533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873901, 29.660688, 43.252777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015486, 29.968596, 43.465256>,  <28.100435, 30.153339, 43.592743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015486, 29.968596, 43.465256>,  <27.873901, 29.660688, 43.252777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015486, 29.968596, 43.465256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143031, -0.516731, 0.844115,
		0.924259, -0.374760, -0.072801,
		0.353960, 0.769768, 0.531196,
		28.121674, 30.199526, 43.624615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.006191, 35.827457, 48.463425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.839844, 35.477657, 48.363586>,  <39.740036, 35.267776, 48.303684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.839844, 35.477657, 48.363586>,  <40.006191, 35.827457, 48.463425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839844, 35.477657, 48.363586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205314, -0.177087, 0.962542,
		-0.885945, 0.451539, -0.105902,
		-0.415871, -0.874502, -0.249597,
		39.715084, 35.215305, 48.288708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321182, 35.887775, 48.845406>,  <40.006191, 35.827457, 48.463425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321182, 35.887775, 48.845406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.371414, 35.503376, 48.746853>,  <39.401554, 35.272736, 48.687721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.371414, 35.503376, 48.746853>,  <39.321182, 35.887775, 48.845406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371414, 35.503376, 48.746853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390073, -0.276178, 0.878390,
		-0.912180, -0.014198, -0.409542,
		0.125578, -0.961001, -0.246386,
		39.409088, 35.215076, 48.672935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658600, 35.540371, 48.856026>,  <39.321182, 35.887775, 48.845406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658600, 35.540371, 48.856026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944771, 35.268509, 48.920811>,  <39.116474, 35.105392, 48.959682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944771, 35.268509, 48.920811>,  <38.658600, 35.540371, 48.856026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944771, 35.268509, 48.920811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447123, -0.267230, 0.853621,
		-0.536887, -0.683122, -0.495073,
		0.715425, -0.679657, 0.161967,
		39.159397, 35.064613, 48.969402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263687, 34.988243, 49.160069>,  <38.658600, 35.540371, 48.856026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263687, 34.988243, 49.160069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.641853, 34.872944, 49.220879>,  <38.868752, 34.803764, 49.257362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.641853, 34.872944, 49.220879>,  <38.263687, 34.988243, 49.160069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641853, 34.872944, 49.220879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260200, -0.386848, 0.884672,
		-0.196190, -0.875937, -0.440732,
		0.945413, -0.288242, 0.152023,
		38.925476, 34.786472, 49.266487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300312, 34.269154, 49.235569>,  <38.263687, 34.988243, 49.160069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300312, 34.269154, 49.235569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604088, 34.427689, 49.441936>,  <38.786354, 34.522808, 49.565758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604088, 34.427689, 49.441936>,  <38.300312, 34.269154, 49.235569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604088, 34.427689, 49.441936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260397, -0.541539, 0.799330,
		0.596191, -0.741386, -0.308062,
		0.759440, 0.396335, 0.515916,
		38.831921, 34.546589, 49.596710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637894, 33.742054, 49.529392>,  <38.300312, 34.269154, 49.235569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637894, 33.742054, 49.529392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794529, 34.027622, 49.761589>,  <38.888512, 34.198963, 49.900909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794529, 34.027622, 49.761589>,  <38.637894, 33.742054, 49.529392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794529, 34.027622, 49.761589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145725, -0.574795, 0.805217,
		0.908528, -0.399906, -0.121046,
		0.391588, 0.713923, 0.580494,
		38.912006, 34.241798, 49.935738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007191, 33.264778, 49.993496>,  <38.637894, 33.742054, 49.529392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007191, 33.264778, 49.993496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955284, 33.635891, 50.133427>,  <38.924141, 33.858559, 50.217384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955284, 33.635891, 50.133427>,  <39.007191, 33.264778, 49.993496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955284, 33.635891, 50.133427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275205, -0.372647, 0.886226,
		0.952588, 0.018726, 0.303686,
		-0.129764, 0.927784, 0.349825,
		38.916355, 33.914227, 50.238373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423508, 33.325523, 50.520683>,  <39.007191, 33.264778, 49.993496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423508, 33.325523, 50.520683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101208, 33.561077, 50.545956>,  <38.907829, 33.702408, 50.561119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101208, 33.561077, 50.545956>,  <39.423508, 33.325523, 50.520683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101208, 33.561077, 50.545956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198798, -0.369397, 0.907758,
		0.557899, 0.718864, 0.414709,
		-0.805747, 0.588881, 0.063178,
		38.859482, 33.737740, 50.564911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360004, 33.449322, 51.305859>,  <39.423508, 33.325523, 50.520683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360004, 33.449322, 51.305859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030117, 33.632450, 51.173050>,  <38.832184, 33.742329, 51.093365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030117, 33.632450, 51.173050>,  <39.360004, 33.449322, 51.305859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030117, 33.632450, 51.173050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407051, -0.072964, 0.910486,
		0.392617, 0.886044, 0.246532,
		-0.824719, 0.457824, -0.332018,
		38.782700, 33.769798, 51.073444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312973, 34.072666, 51.702568>,  <39.360004, 33.449322, 51.305859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312973, 34.072666, 51.702568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943810, 33.981480, 51.578457>,  <38.722313, 33.926769, 51.503990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943810, 33.981480, 51.578457>,  <39.312973, 34.072666, 51.702568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943810, 33.981480, 51.578457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285069, -0.137099, 0.948651,
		-0.258799, 0.963969, 0.061543,
		-0.922908, -0.227966, -0.310279,
		38.666939, 33.913090, 51.485374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835949, 34.558697, 51.985046>,  <39.312973, 34.072666, 51.702568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835949, 34.558697, 51.985046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.629513, 34.229107, 51.891476>,  <38.505650, 34.031353, 51.835331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.629513, 34.229107, 51.891476>,  <38.835949, 34.558697, 51.985046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629513, 34.229107, 51.891476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165707, -0.171905, 0.971076,
		-0.840353, 0.539927, -0.047819,
		-0.516090, -0.823971, -0.233930,
		38.474686, 33.981915, 51.821297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195557, 34.545303, 52.349743>,  <38.835949, 34.558697, 51.985046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195557, 34.545303, 52.349743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225521, 34.153481, 52.275074>,  <38.243500, 33.918385, 52.230270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225521, 34.153481, 52.275074>,  <38.195557, 34.545303, 52.349743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225521, 34.153481, 52.275074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341241, -0.201083, 0.918216,
		-0.936986, -0.005086, -0.349331,
		0.074915, -0.979561, -0.186677,
		38.247997, 33.859612, 52.219070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521194, 34.144062, 52.293346>,  <38.195557, 34.545303, 52.349743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521194, 34.144062, 52.293346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847004, 33.956944, 52.430584>,  <38.042492, 33.844673, 52.512928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847004, 33.956944, 52.430584>,  <37.521194, 34.144062, 52.293346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847004, 33.956944, 52.430584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441832, -0.116976, 0.889439,
		-0.375943, -0.876060, -0.301968,
		0.814525, -0.467798, 0.343095,
		38.091362, 33.816605, 52.533512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292015, 34.122616, 52.920834>,  <37.521194, 34.144062, 52.293346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292015, 34.122616, 52.920834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178799, 34.068966, 53.300709>,  <37.110870, 34.036777, 53.528633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178799, 34.068966, 53.300709>,  <37.292015, 34.122616, 52.920834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178799, 34.068966, 53.300709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955386, -0.047728, -0.291477,
		0.084421, -0.989814, -0.114633,
		-0.283037, -0.134126, 0.949684,
		37.093887, 34.028728, 53.585613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618732, 34.067036, 52.872875>,  <37.292015, 34.122616, 52.920834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618732, 34.067036, 52.872875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633209, 33.995251, 53.266113>,  <36.641895, 33.952179, 53.502056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633209, 33.995251, 53.266113>,  <36.618732, 34.067036, 52.872875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633209, 33.995251, 53.266113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992677, -0.119908, 0.014660,
		0.115251, -0.976429, -0.182492,
		0.036197, -0.179466, 0.983098,
		36.644070, 33.941410, 53.561043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797314, 34.730228, 52.852612>,  <36.618732, 34.067036, 52.872875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797314, 34.730228, 52.852612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812096, 35.093166, 53.020111>,  <36.820965, 35.310928, 53.120609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812096, 35.093166, 53.020111>,  <36.797314, 34.730228, 52.852612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812096, 35.093166, 53.020111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072264, 0.415513, -0.906712,
		-0.996701, 0.063770, -0.050213,
		0.036957, 0.907349, 0.418750,
		36.823181, 35.365372, 53.145737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342133, 35.118343, 52.479458>,  <36.797314, 34.730228, 52.852612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342133, 35.118343, 52.479458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590290, 35.370132, 52.666595>,  <36.739185, 35.521206, 52.778877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590290, 35.370132, 52.666595>,  <36.342133, 35.118343, 52.479458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590290, 35.370132, 52.666595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075801, 0.545602, -0.834609,
		-0.780617, 0.553252, 0.290775,
		0.620397, 0.629469, 0.467843,
		36.776409, 35.558971, 52.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944355, 35.684906, 52.456177>,  <36.342133, 35.118343, 52.479458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944355, 35.684906, 52.456177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333763, 35.775833, 52.465801>,  <36.567410, 35.830391, 52.471577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333763, 35.775833, 52.465801>,  <35.944355, 35.684906, 52.456177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333763, 35.775833, 52.465801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087217, 0.466660, -0.880126,
		-0.211298, 0.854724, 0.474130,
		0.973522, 0.227322, 0.024058,
		36.625820, 35.844028, 52.473019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004829, 36.386635, 52.252419>,  <35.944355, 35.684906, 52.456177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004829, 36.386635, 52.252419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394726, 36.304771, 52.216640>,  <36.628662, 36.255653, 52.195175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394726, 36.304771, 52.216640>,  <36.004829, 36.386635, 52.252419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394726, 36.304771, 52.216640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011600, 0.446308, -0.894804,
		0.223050, 0.871162, 0.437408,
		0.974738, -0.204660, -0.089444,
		36.687149, 36.243374, 52.189808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291084, 36.977448, 51.916122>,  <36.004829, 36.386635, 52.252419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291084, 36.977448, 51.916122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578930, 36.705250, 51.860874>,  <36.751637, 36.541931, 51.827724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578930, 36.705250, 51.860874>,  <36.291084, 36.977448, 51.916122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578930, 36.705250, 51.860874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138529, 0.335615, -0.931758,
		0.680412, 0.651375, 0.335783,
		0.719617, -0.680495, -0.138122,
		36.794815, 36.501102, 51.819439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744648, 37.333637, 51.582111>,  <36.291084, 36.977448, 51.916122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744648, 37.333637, 51.582111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835705, 36.954014, 51.494957>,  <36.890339, 36.726242, 51.442665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835705, 36.954014, 51.494957>,  <36.744648, 37.333637, 51.582111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835705, 36.954014, 51.494957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073870, 0.239945, -0.967972,
		0.970939, 0.204257, 0.124729,
		0.227643, -0.949055, -0.217883,
		36.903999, 36.669296, 51.429592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236694, 37.415310, 51.028172>,  <36.744648, 37.333637, 51.582111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236694, 37.415310, 51.028172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084877, 37.047047, 50.991638>,  <36.993786, 36.826088, 50.969719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084877, 37.047047, 50.991638>,  <37.236694, 37.415310, 51.028172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084877, 37.047047, 50.991638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041205, 0.081797, -0.995797,
		0.924256, -0.381711, 0.006890,
		-0.379543, -0.920655, -0.091330,
		36.971012, 36.770851, 50.964241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806042, 36.952332, 50.661133>,  <37.236694, 37.415310, 51.028172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806042, 36.952332, 50.661133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447327, 36.781986, 50.613113>,  <37.232098, 36.679779, 50.584301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447327, 36.781986, 50.613113>,  <37.806042, 36.952332, 50.661133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447327, 36.781986, 50.613113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243758, -0.249082, -0.937305,
		0.369258, -0.869828, 0.327181,
		-0.896789, -0.425861, -0.120052,
		37.178291, 36.654228, 50.577099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914558, 36.491295, 50.236340>,  <37.806042, 36.952332, 50.661133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914558, 36.491295, 50.236340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518475, 36.475471, 50.182800>,  <37.280823, 36.465977, 50.150677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518475, 36.475471, 50.182800>,  <37.914558, 36.491295, 50.236340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518475, 36.475471, 50.182800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139541, -0.300735, -0.943444,
		-0.002929, -0.952887, 0.303311,
		-0.990212, -0.039561, -0.133848,
		37.221413, 36.463604, 50.142647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838600, 35.847622, 49.780621>,  <37.914558, 36.491295, 50.236340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838600, 35.847622, 49.780621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502892, 36.063538, 49.754547>,  <37.301464, 36.193089, 49.738903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502892, 36.063538, 49.754547>,  <37.838600, 35.847622, 49.780621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502892, 36.063538, 49.754547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000066, -0.119994, -0.992775,
		-0.543710, -0.833205, 0.100743,
		-0.839273, 0.539788, -0.065187,
		37.251110, 36.225475, 49.734989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490669, 35.480381, 49.248745>,  <37.838600, 35.847622, 49.780621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490669, 35.480381, 49.248745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298409, 35.831135, 49.245773>,  <37.183052, 36.041588, 49.243992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298409, 35.831135, 49.245773>,  <37.490669, 35.480381, 49.248745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298409, 35.831135, 49.245773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022692, -0.020906, -0.999524,
		-0.876619, -0.480252, 0.029946,
		-0.480649, 0.876881, -0.007429,
		37.154213, 36.094200, 49.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738270, 35.487507, 48.964260>,  <37.490669, 35.480381, 49.248745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738270, 35.487507, 48.964260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894173, 35.850433, 48.901196>,  <36.987717, 36.068192, 48.863358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894173, 35.850433, 48.901196>,  <36.738270, 35.487507, 48.964260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894173, 35.850433, 48.901196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156793, -0.103324, -0.982212,
		-0.907471, 0.407548, 0.101990,
		0.389760, 0.907319, -0.157665,
		37.011101, 36.122631, 48.853897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302422, 35.752434, 48.383640>,  <36.738270, 35.487507, 48.964260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302422, 35.752434, 48.383640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654285, 35.937489, 48.427757>,  <36.865406, 36.048519, 48.454227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654285, 35.937489, 48.427757>,  <36.302422, 35.752434, 48.383640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654285, 35.937489, 48.427757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128519, -0.007959, -0.991675,
		-0.457906, 0.886513, -0.066459,
		0.879662, 0.462635, 0.110289,
		36.918182, 36.076279, 48.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636330, 35.814075, 48.103188>,  <36.302422, 35.752434, 48.383640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636330, 35.814075, 48.103188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345226, 35.578102, 47.963268>,  <35.170567, 35.436520, 47.879318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345226, 35.578102, 47.963268>,  <35.636330, 35.814075, 48.103188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345226, 35.578102, 47.963268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379457, -0.078507, 0.921872,
		-0.571301, 0.803629, -0.166719,
		-0.727755, -0.589929, -0.349794,
		35.126900, 35.401123, 47.858330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105919, 35.983955, 48.564629>,  <35.636330, 35.814075, 48.103188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105919, 35.983955, 48.564629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974590, 35.639091, 48.410282>,  <34.895794, 35.432175, 48.317673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974590, 35.639091, 48.410282>,  <35.105919, 35.983955, 48.564629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974590, 35.639091, 48.410282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402370, -0.241937, 0.882930,
		-0.854578, 0.445145, -0.267473,
		-0.328320, -0.862156, -0.385867,
		34.876095, 35.380444, 48.294521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456974, 35.951080, 48.851021>,  <35.105919, 35.983955, 48.564629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456974, 35.951080, 48.851021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564243, 35.574890, 48.767509>,  <34.628605, 35.349174, 48.717403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564243, 35.574890, 48.767509>,  <34.456974, 35.951080, 48.851021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564243, 35.574890, 48.767509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194613, -0.265134, 0.944367,
		-0.943510, -0.212620, -0.254130,
		0.268170, -0.940477, -0.208778,
		34.644695, 35.292747, 48.704876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871704, 35.399593, 49.023182>,  <34.456974, 35.951080, 48.851021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871704, 35.399593, 49.023182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227898, 35.217705, 49.029720>,  <34.441612, 35.108570, 49.033646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227898, 35.217705, 49.029720>,  <33.871704, 35.399593, 49.023182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227898, 35.217705, 49.029720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241340, -0.441541, 0.864174,
		-0.385738, -0.773479, -0.502928,
		0.890484, -0.454721, 0.016352,
		34.495041, 35.081287, 49.034626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728996, 34.842567, 49.274097>,  <33.871704, 35.399593, 49.023182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728996, 34.842567, 49.274097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124729, 34.817902, 49.326881>,  <34.362171, 34.803101, 49.358551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124729, 34.817902, 49.326881>,  <33.728996, 34.842567, 49.274097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124729, 34.817902, 49.326881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145653, -0.409115, 0.900783,
		-0.001559, -0.910397, -0.413734,
		0.989334, -0.061665, 0.131964,
		34.421528, 34.799400, 49.366470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839970, 34.146717, 49.545639>,  <33.728996, 34.842567, 49.274097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839970, 34.146717, 49.545639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167545, 34.361496, 49.626663>,  <34.364090, 34.490364, 49.675278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167545, 34.361496, 49.626663>,  <33.839970, 34.146717, 49.545639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167545, 34.361496, 49.626663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019726, -0.326418, 0.945020,
		0.573544, -0.777908, -0.256724,
		0.818938, 0.536946, 0.202560,
		34.413227, 34.522579, 49.687431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383114, 33.633221, 49.792896>,  <33.839970, 34.146717, 49.545639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383114, 33.633221, 49.792896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508717, 33.989620, 49.924057>,  <34.584076, 34.203461, 50.002754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508717, 33.989620, 49.924057>,  <34.383114, 33.633221, 49.792896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508717, 33.989620, 49.924057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107616, -0.376543, 0.920127,
		0.943303, -0.253636, -0.214122,
		0.314004, 0.891001, 0.327899,
		34.602917, 34.256920, 50.022427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635872, 32.937229, 49.894161>,  <34.383114, 33.633221, 49.792896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635872, 32.937229, 49.894161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353836, 32.655739, 49.929073>,  <34.184616, 32.486843, 49.950020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353836, 32.655739, 49.929073>,  <34.635872, 32.937229, 49.894161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353836, 32.655739, 49.929073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171715, -0.288866, -0.941844,
		0.688012, -0.649098, 0.324517,
		-0.705091, -0.703725, 0.087284,
		34.142307, 32.444622, 49.955257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885700, 32.355877, 49.615826>,  <34.635872, 32.937229, 49.894161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885700, 32.355877, 49.615826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487297, 32.333302, 49.588154>,  <34.248257, 32.319756, 49.571548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487297, 32.333302, 49.588154>,  <34.885700, 32.355877, 49.615826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487297, 32.333302, 49.588154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078091, -0.175054, -0.981457,
		0.043277, -0.982940, 0.178762,
		-0.996006, -0.056435, -0.069183,
		34.188496, 32.316372, 49.567398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845974, 31.965960, 48.966721>,  <34.885700, 32.355877, 49.615826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845974, 31.965960, 48.966721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469265, 32.067913, 49.054451>,  <34.243240, 32.129086, 49.107090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469265, 32.067913, 49.054451>,  <34.845974, 31.965960, 48.966721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469265, 32.067913, 49.054451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249167, -0.090970, -0.964179,
		-0.225803, -0.962683, 0.149181,
		-0.941769, 0.254886, 0.219327,
		34.186733, 32.144379, 49.120251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406204, 31.459291, 48.685909>,  <34.845974, 31.965960, 48.966721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406204, 31.459291, 48.685909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176720, 31.784712, 48.723850>,  <34.039028, 31.979963, 48.746613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176720, 31.784712, 48.723850>,  <34.406204, 31.459291, 48.685909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176720, 31.784712, 48.723850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234157, -0.051942, -0.970810,
		-0.784877, -0.579170, 0.220298,
		-0.573707, 0.813550, 0.094848,
		34.004608, 32.028778, 48.752304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725258, 31.323469, 48.429440>,  <34.406204, 31.459291, 48.685909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725258, 31.323469, 48.429440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779320, 31.718908, 48.402882>,  <33.811756, 31.956171, 48.386948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779320, 31.718908, 48.402882>,  <33.725258, 31.323469, 48.429440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779320, 31.718908, 48.402882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358590, -0.013662, -0.933395,
		-0.923659, 0.149963, 0.352655,
		0.135156, 0.988597, -0.066394,
		33.819866, 32.015488, 48.382965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126617, 31.628841, 48.114231>,  <33.725258, 31.323469, 48.429440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126617, 31.628841, 48.114231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416584, 31.898392, 48.057133>,  <33.590565, 32.060123, 48.022873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416584, 31.898392, 48.057133>,  <33.126617, 31.628841, 48.114231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416584, 31.898392, 48.057133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137102, -0.061937, -0.988619,
		-0.675050, 0.736242, 0.047491,
		0.724921, 0.673878, -0.142750,
		33.634060, 32.100555, 48.014309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939251, 31.895132, 47.476295>,  <33.126617, 31.628841, 48.114231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939251, 31.895132, 47.476295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320183, 32.012562, 47.509472>,  <33.548744, 32.083019, 47.529377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320183, 32.012562, 47.509472>,  <32.939251, 31.895132, 47.476295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320183, 32.012562, 47.509472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116580, -0.098988, -0.988236,
		-0.281911, 0.950797, -0.128494,
		0.952331, 0.293574, 0.082938,
		33.605881, 32.100636, 47.534351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.101185, 30.161438, 51.546524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.047623, 30.557034, 51.571728>,  <38.015484, 30.794392, 51.586849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.047623, 30.557034, 51.571728>,  <38.101185, 30.161438, 51.546524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047623, 30.557034, 51.571728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006764, 0.062664, -0.998012,
		-0.990971, -0.134067, -0.001702,
		-0.133907, 0.988989, 0.063005,
		38.007450, 30.853731, 51.590630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659729, 30.259283, 51.030445>,  <38.101185, 30.161438, 51.546524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659729, 30.259283, 51.030445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842899, 30.609444, 51.092381>,  <37.952801, 30.819540, 51.129543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842899, 30.609444, 51.092381>,  <37.659729, 30.259283, 51.030445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842899, 30.609444, 51.092381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088863, 0.218376, -0.971810,
		-0.884537, 0.431259, 0.177791,
		0.457927, 0.875401, 0.154839,
		37.980278, 30.872065, 51.138832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301571, 30.743120, 50.597656>,  <37.659729, 30.259283, 51.030445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301571, 30.743120, 50.597656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.641506, 30.937475, 50.679333>,  <37.845467, 31.054089, 50.728340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.641506, 30.937475, 50.679333>,  <37.301571, 30.743120, 50.597656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641506, 30.937475, 50.679333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018671, 0.359429, -0.932986,
		-0.526717, 0.796697, 0.296384,
		0.849836, 0.485886, 0.204192,
		37.896458, 31.083241, 50.740589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218697, 31.497274, 50.335419>,  <37.301571, 30.743120, 50.597656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218697, 31.497274, 50.335419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.603134, 31.386976, 50.341793>,  <37.833797, 31.320797, 50.345615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.603134, 31.386976, 50.341793>,  <37.218697, 31.497274, 50.335419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603134, 31.386976, 50.341793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063077, 0.162957, -0.984615,
		0.268907, 0.947317, 0.174011,
		0.961098, -0.275746, 0.015934,
		37.891464, 31.304253, 50.346573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445187, 31.808714, 49.823135>,  <37.218697, 31.497274, 50.335419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445187, 31.808714, 49.823135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.757271, 31.561438, 49.861305>,  <37.944523, 31.413071, 49.884209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.757271, 31.561438, 49.861305>,  <37.445187, 31.808714, 49.823135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757271, 31.561438, 49.861305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247832, 0.165436, -0.954573,
		0.574323, 0.768420, 0.282283,
		0.780213, -0.618192, 0.095425,
		37.991333, 31.375980, 49.889935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994194, 32.114002, 49.363155>,  <37.445187, 31.808714, 49.823135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994194, 32.114002, 49.363155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108761, 31.737034, 49.432228>,  <38.177502, 31.510855, 49.473671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108761, 31.737034, 49.432228>,  <37.994194, 32.114002, 49.363155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108761, 31.737034, 49.432228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136696, -0.138191, -0.980927,
		0.948304, 0.304556, 0.089245,
		0.286414, -0.942416, 0.172679,
		38.194687, 31.454309, 49.484032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639400, 32.052261, 49.060368>,  <37.994194, 32.114002, 49.363155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639400, 32.052261, 49.060368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494980, 31.682390, 49.108719>,  <38.408329, 31.460466, 49.137730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494980, 31.682390, 49.108719>,  <38.639400, 32.052261, 49.060368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494980, 31.682390, 49.108719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200804, -0.203669, -0.958226,
		0.910670, -0.321694, 0.259214,
		-0.361050, -0.924679, 0.120878,
		38.386665, 31.404987, 49.144981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126793, 31.503214, 48.742493>,  <38.639400, 32.052261, 49.060368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126793, 31.503214, 48.742493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.780739, 31.302876, 48.752991>,  <38.573105, 31.182673, 48.759289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.780739, 31.302876, 48.752991>,  <39.126793, 31.503214, 48.742493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780739, 31.302876, 48.752991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158340, -0.322413, -0.933262,
		0.475882, -0.803246, 0.358236,
		-0.865139, -0.500846, 0.026244,
		38.521198, 31.152622, 48.760864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316074, 30.750505, 48.680042>,  <39.126793, 31.503214, 48.742493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316074, 30.750505, 48.680042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942116, 30.797712, 48.546154>,  <38.717739, 30.826036, 48.465820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942116, 30.797712, 48.546154>,  <39.316074, 30.750505, 48.680042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942116, 30.797712, 48.546154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216619, -0.557317, -0.801544,
		-0.281141, -0.821869, 0.495470,
		-0.934899, 0.118018, -0.334717,
		38.661648, 30.833118, 48.445740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160240, 30.168764, 48.269638>,  <39.316074, 30.750505, 48.680042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160240, 30.168764, 48.269638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.848648, 30.393671, 48.158615>,  <38.661694, 30.528616, 48.091999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.848648, 30.393671, 48.158615>,  <39.160240, 30.168764, 48.269638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848648, 30.393671, 48.158615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046264, -0.389903, -0.919693,
		-0.625336, -0.729266, 0.277715,
		-0.778983, 0.562268, -0.277559,
		38.614952, 30.562351, 48.075348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757755, 29.718885, 47.922203>,  <39.160240, 30.168764, 48.269638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757755, 29.718885, 47.922203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.652508, 30.089512, 47.814693>,  <38.589359, 30.311888, 47.750187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.652508, 30.089512, 47.814693>,  <38.757755, 29.718885, 47.922203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652508, 30.089512, 47.814693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045954, -0.290314, -0.955827,
		-0.963669, -0.239143, 0.118966,
		-0.263117, 0.926568, -0.268777,
		38.573574, 30.367483, 47.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360615, 29.621998, 47.220421>,  <38.757755, 29.718885, 47.922203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360615, 29.621998, 47.220421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.456779, 30.009756, 47.240307>,  <38.514477, 30.242411, 47.252239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.456779, 30.009756, 47.240307>,  <38.360615, 29.621998, 47.220421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456779, 30.009756, 47.240307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016383, 0.047157, -0.998753,
		-0.970533, 0.240926, -0.004545,
		0.240412, 0.969397, 0.049715,
		38.528904, 30.300575, 47.255222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583641, 29.622667, 47.318089>,  <38.360615, 29.621998, 47.220421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583641, 29.622667, 47.318089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215885, 29.513813, 47.204487>,  <36.995232, 29.448500, 47.136326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215885, 29.513813, 47.204487>,  <37.583641, 29.622667, 47.318089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215885, 29.513813, 47.204487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233081, -0.204676, 0.950674,
		-0.316840, 0.940240, 0.124748,
		-0.919394, -0.272135, -0.284002,
		36.940067, 29.432173, 47.119286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240124, 29.954857, 47.817436>,  <37.583641, 29.622667, 47.318089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240124, 29.954857, 47.817436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936764, 29.719854, 47.704529>,  <36.754749, 29.578854, 47.636784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936764, 29.719854, 47.704529>,  <37.240124, 29.954857, 47.817436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936764, 29.719854, 47.704529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392309, 0.065619, 0.917490,
		-0.520507, 0.806556, -0.280249,
		-0.758397, -0.587504, -0.282264,
		36.709244, 29.543604, 47.619850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697834, 30.277294, 48.067188>,  <37.240124, 29.954857, 47.817436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697834, 30.277294, 48.067188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588158, 29.896366, 48.013668>,  <36.522350, 29.667809, 47.981556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588158, 29.896366, 48.013668>,  <36.697834, 30.277294, 48.067188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588158, 29.896366, 48.013668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404900, -0.011875, 0.914284,
		-0.872281, 0.304865, -0.382339,
		-0.274193, -0.952322, -0.133798,
		36.505901, 29.610670, 47.973530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112835, 30.283442, 48.278915>,  <36.697834, 30.277294, 48.067188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112835, 30.283442, 48.278915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.209370, 29.897161, 48.317245>,  <36.267288, 29.665394, 48.340244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.209370, 29.897161, 48.317245>,  <36.112835, 30.283442, 48.278915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209370, 29.897161, 48.317245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438029, -0.020285, 0.898732,
		-0.865961, -0.258870, -0.427900,
		0.241335, -0.965699, 0.095826,
		36.281769, 29.607452, 48.345993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639824, 30.165180, 48.883781>,  <36.112835, 30.283442, 48.278915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639824, 30.165180, 48.883781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.852291, 29.827044, 48.860950>,  <35.979771, 29.624163, 48.847252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.852291, 29.827044, 48.860950>,  <35.639824, 30.165180, 48.883781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852291, 29.827044, 48.860950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219047, -0.202092, 0.954556,
		-0.818460, -0.494529, -0.292514,
		0.531171, -0.845340, -0.057079,
		36.011642, 29.573442, 48.843826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230400, 29.745619, 49.126205>,  <35.639824, 30.165180, 48.883781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230400, 29.745619, 49.126205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.586620, 29.563955, 49.136417>,  <35.800354, 29.454958, 49.142544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.586620, 29.563955, 49.136417>,  <35.230400, 29.745619, 49.126205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586620, 29.563955, 49.136417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173561, -0.287394, 0.941956,
		-0.420463, -0.843293, -0.334765,
		0.890555, -0.454160, 0.025524,
		35.853786, 29.427708, 49.144073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016434, 29.143759, 49.454212>,  <35.230400, 29.745619, 49.126205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016434, 29.143759, 49.454212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.408520, 29.189072, 49.519131>,  <35.643772, 29.216259, 49.558083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.408520, 29.189072, 49.519131>,  <35.016434, 29.143759, 49.454212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408520, 29.189072, 49.519131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142462, -0.165391, 0.975884,
		0.137395, -0.979700, -0.145981,
		0.980218, 0.113285, 0.162294,
		35.702583, 29.223057, 49.567818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162479, 28.626379, 49.906250>,  <35.016434, 29.143759, 49.454212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162479, 28.626379, 49.906250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.480869, 28.861914, 49.962391>,  <35.671902, 29.003235, 49.996075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.480869, 28.861914, 49.962391>,  <35.162479, 28.626379, 49.906250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480869, 28.861914, 49.962391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065929, -0.146155, 0.987062,
		0.601733, -0.794927, -0.077513,
		0.795972, 0.588837, 0.140355,
		35.719662, 29.038565, 50.004498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595074, 28.287516, 50.349503>,  <35.162479, 28.626379, 49.906250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595074, 28.287516, 50.349503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.737289, 28.659054, 50.391140>,  <35.822620, 28.881977, 50.416122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.737289, 28.659054, 50.391140>,  <35.595074, 28.287516, 50.349503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737289, 28.659054, 50.391140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067326, -0.085629, 0.994050,
		0.932233, -0.360434, 0.032091,
		0.355541, 0.928846, 0.104093,
		35.843952, 28.937708, 50.422367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038513, 28.237358, 50.823250>,  <35.595074, 28.287516, 50.349503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038513, 28.237358, 50.823250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.957245, 28.628475, 50.802704>,  <35.908482, 28.863146, 50.790379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.957245, 28.628475, 50.802704>,  <36.038513, 28.237358, 50.823250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957245, 28.628475, 50.802704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171670, 0.016070, 0.985024,
		0.963976, 0.208949, 0.164593,
		-0.203175, 0.977795, -0.051361,
		35.896294, 28.921814, 50.787296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395935, 28.482853, 51.368011>,  <36.038513, 28.237358, 50.823250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395935, 28.482853, 51.368011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.089779, 28.715193, 51.257164>,  <35.906086, 28.854597, 51.190655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.089779, 28.715193, 51.257164>,  <36.395935, 28.482853, 51.368011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089779, 28.715193, 51.257164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404004, -0.098477, 0.909441,
		0.500961, 0.808031, 0.310039,
		-0.765388, 0.580851, -0.277114,
		35.860161, 28.889448, 51.174030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319313, 29.024216, 51.949810>,  <36.395935, 28.482853, 51.368011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319313, 29.024216, 51.949810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978226, 29.054939, 51.743137>,  <35.773571, 29.073374, 51.619133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978226, 29.054939, 51.743137>,  <36.319313, 29.024216, 51.949810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978226, 29.054939, 51.743137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434091, 0.446007, 0.782715,
		0.290567, 0.891727, -0.346978,
		-0.852723, 0.076811, -0.516686,
		35.722408, 29.077982, 51.588131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042286, 29.725731, 52.088284>,  <36.319313, 29.024216, 51.949810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042286, 29.725731, 52.088284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.734158, 29.509127, 51.953598>,  <35.549282, 29.379164, 51.872787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.734158, 29.509127, 51.953598>,  <36.042286, 29.725731, 52.088284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734158, 29.509127, 51.953598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565242, 0.335461, 0.753637,
		-0.295146, 0.770866, -0.564495,
		-0.770319, -0.541509, -0.336716,
		35.503063, 29.346674, 51.852585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555393, 30.190632, 51.925678>,  <36.042286, 29.725731, 52.088284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555393, 30.190632, 51.925678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.376156, 29.840221, 51.997005>,  <35.268616, 29.629976, 52.039803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.376156, 29.840221, 51.997005>,  <35.555393, 30.190632, 51.925678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376156, 29.840221, 51.997005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605047, 0.444010, 0.660888,
		-0.658129, 0.188248, -0.728992,
		-0.448091, -0.876024, 0.178317,
		35.241730, 29.577414, 52.050499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900650, 30.608931, 52.124664>,  <35.555393, 30.190632, 51.925678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900650, 30.608931, 52.124664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.768745, 30.943012, 52.300705>,  <34.689602, 31.143461, 52.406330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.768745, 30.943012, 52.300705>,  <34.900650, 30.608931, 52.124664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768745, 30.943012, 52.300705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442410, 0.275109, -0.853574,
		-0.833985, -0.476182, 0.278782,
		-0.329761, 0.835204, 0.440104,
		34.669819, 31.193573, 52.432735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157570, 30.685040, 52.097351>,  <34.900650, 30.608931, 52.124664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157570, 30.685040, 52.097351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308483, 31.054348, 52.126282>,  <34.399033, 31.275932, 52.143639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308483, 31.054348, 52.126282>,  <34.157570, 30.685040, 52.097351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308483, 31.054348, 52.126282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517906, 0.275086, -0.810001,
		-0.767744, 0.268144, 0.581952,
		0.377283, 0.923270, 0.072322,
		34.421669, 31.331329, 52.147980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605198, 31.050364, 51.879395>,  <34.157570, 30.685040, 52.097351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605198, 31.050364, 51.879395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.923691, 31.290543, 51.849789>,  <34.114788, 31.434650, 51.832024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.923691, 31.290543, 51.849789>,  <33.605198, 31.050364, 51.879395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923691, 31.290543, 51.849789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333883, 0.334102, -0.881418,
		-0.504517, 0.726525, 0.466502,
		0.796231, 0.600448, -0.074014,
		34.162560, 31.470676, 51.827583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353172, 31.735611, 51.613285>,  <33.605198, 31.050364, 51.879395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353172, 31.735611, 51.613285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.745411, 31.785198, 51.552547>,  <33.980755, 31.814951, 51.516106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.745411, 31.785198, 51.552547>,  <33.353172, 31.735611, 51.613285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745411, 31.785198, 51.552547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193740, 0.494952, -0.847047,
		-0.029849, 0.860032, 0.509367,
		0.980599, 0.123968, -0.151849,
		34.039589, 31.822390, 51.506992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394436, 32.420593, 51.427563>,  <33.353172, 31.735611, 51.613285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394436, 32.420593, 51.427563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.739204, 32.248680, 51.319950>,  <33.946064, 32.145531, 51.255383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.739204, 32.248680, 51.319950>,  <33.394436, 32.420593, 51.427563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739204, 32.248680, 51.319950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103418, 0.370429, -0.923085,
		0.496386, 0.823449, 0.274833,
		0.861920, -0.429784, -0.269036,
		33.997780, 32.119743, 51.239239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886639, 32.934711, 51.107101>,  <33.394436, 32.420593, 51.427563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886639, 32.934711, 51.107101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.961273, 32.564846, 50.974331>,  <34.006054, 32.342926, 50.894669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.961273, 32.564846, 50.974331>,  <33.886639, 32.934711, 51.107101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961273, 32.564846, 50.974331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037113, 0.330984, -0.942906,
		0.981737, 0.188256, 0.027441,
		0.186590, -0.924667, -0.331926,
		34.017250, 32.287445, 50.874752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310089, 33.114944, 50.544590>,  <33.886639, 32.934711, 51.107101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310089, 33.114944, 50.544590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.156704, 32.748714, 50.496109>,  <34.064674, 32.528976, 50.467022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.156704, 32.748714, 50.496109>,  <34.310089, 33.114944, 50.544590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156704, 32.748714, 50.496109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062143, 0.156512, -0.985719,
		0.921465, -0.370452, -0.116912,
		-0.383460, -0.915570, -0.121200,
		34.041664, 32.474045, 50.459747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892410, 33.478043, 50.314533>,  <34.310089, 33.114944, 50.544590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892410, 33.478043, 50.314533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806858, 33.861862, 50.387772>,  <34.755527, 34.092152, 50.431717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806858, 33.861862, 50.387772>,  <34.892410, 33.478043, 50.314533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806858, 33.861862, 50.387772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008104, -0.185688, 0.982575,
		0.976825, 0.211641, 0.031940,
		-0.213884, 0.959546, 0.183100,
		34.742691, 34.149727, 50.442703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356583, 33.646828, 50.855831>,  <34.892410, 33.478043, 50.314533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356583, 33.646828, 50.855831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034279, 33.883633, 50.862312>,  <34.840897, 34.025715, 50.866203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034279, 33.883633, 50.862312>,  <35.356583, 33.646828, 50.855831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034279, 33.883633, 50.862312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103937, -0.168298, 0.980241,
		0.583047, 0.788157, 0.197141,
		-0.805763, 0.592017, 0.016206,
		34.792549, 34.061237, 50.867176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472450, 34.075314, 51.456985>,  <35.356583, 33.646828, 50.855831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472450, 34.075314, 51.456985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.086235, 34.115196, 51.360825>,  <34.854507, 34.139126, 51.303127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.086235, 34.115196, 51.360825>,  <35.472450, 34.075314, 51.456985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086235, 34.115196, 51.360825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225902, 0.137620, 0.964380,
		0.129236, 0.985454, -0.110354,
		-0.965539, 0.099703, -0.240402,
		34.796574, 34.145107, 51.288704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286545, 34.636429, 51.686787>,  <35.472450, 34.075314, 51.456985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286545, 34.636429, 51.686787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913807, 34.493504, 51.661499>,  <34.690163, 34.407749, 51.646328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913807, 34.493504, 51.661499>,  <35.286545, 34.636429, 51.686787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913807, 34.493504, 51.661499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169438, 0.274408, 0.946568,
		-0.320871, 0.892765, -0.316247,
		-0.931844, -0.357310, -0.063219,
		34.634254, 34.386311, 51.642532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946480, 35.146259, 52.084644>,  <35.286545, 34.636429, 51.686787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946480, 35.146259, 52.084644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764843, 34.790291, 52.067524>,  <34.655861, 34.576710, 52.057251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764843, 34.790291, 52.067524>,  <34.946480, 35.146259, 52.084644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764843, 34.790291, 52.067524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182469, 0.045871, 0.982141,
		-0.872069, 0.453795, -0.183214,
		-0.454094, -0.889925, -0.042801,
		34.628616, 34.523312, 52.054684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311359, 35.191689, 52.426228>,  <34.946480, 35.146259, 52.084644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311359, 35.191689, 52.426228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408821, 34.804684, 52.453243>,  <34.467297, 34.572483, 52.469452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408821, 34.804684, 52.453243>,  <34.311359, 35.191689, 52.426228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408821, 34.804684, 52.453243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060178, 0.084586, 0.994597,
		-0.967994, -0.238272, 0.078832,
		0.243653, -0.967508, 0.067540,
		34.481918, 34.514431, 52.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833435, 34.940765, 53.005085>,  <34.311359, 35.191689, 52.426228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833435, 34.940765, 53.005085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128010, 34.671680, 52.976471>,  <34.304756, 34.510231, 52.959305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128010, 34.671680, 52.976471>,  <33.833435, 34.940765, 53.005085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128010, 34.671680, 52.976471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053353, -0.047653, 0.997438,
		-0.674395, -0.738370, 0.000798,
		0.736441, -0.672710, -0.071532,
		34.348942, 34.469868, 52.955013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720089, 34.452194, 53.496597>,  <33.833435, 34.940765, 53.005085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720089, 34.452194, 53.496597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.105320, 34.371052, 53.425800>,  <34.336460, 34.322369, 53.383324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.105320, 34.371052, 53.425800>,  <33.720089, 34.452194, 53.496597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105320, 34.371052, 53.425800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175304, -0.026393, 0.984161,
		-0.204310, -0.978854, 0.010142,
		0.963081, -0.202852, -0.176989,
		34.394245, 34.310196, 53.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007874, 33.901848, 53.953136>,  <33.720089, 34.452194, 53.496597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007874, 33.901848, 53.953136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.343620, 34.091991, 53.847691>,  <34.545071, 34.206078, 53.784424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.343620, 34.091991, 53.847691>,  <34.007874, 33.901848, 53.953136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343620, 34.091991, 53.847691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229561, 0.129589, 0.964629,
		0.492707, -0.870195, -0.000351,
		0.839370, 0.475360, -0.263612,
		34.595432, 34.234600, 53.768608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.374317, 36.089066, 37.289593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686954, 36.131832, 37.535416>,  <36.874538, 36.157494, 37.682907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686954, 36.131832, 37.535416>,  <36.374317, 36.089066, 37.289593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686954, 36.131832, 37.535416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476383, -0.533712, 0.698721,
		0.402701, -0.838880, -0.366212,
		0.781595, 0.106919, 0.614554,
		36.921432, 36.163906, 37.719784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357037, 35.511738, 37.740940>,  <36.374317, 36.089066, 37.289593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357037, 35.511738, 37.740940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619926, 35.749958, 37.925709>,  <36.777660, 35.892891, 38.036572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619926, 35.749958, 37.925709>,  <36.357037, 35.511738, 37.740940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619926, 35.749958, 37.925709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097619, -0.540450, 0.835694,
		0.747346, -0.594332, -0.297060,
		0.657225, 0.595553, 0.461921,
		36.817093, 35.928623, 38.064285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723000, 35.068115, 38.151806>,  <36.357037, 35.511738, 37.740940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723000, 35.068115, 38.151806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803131, 35.423000, 38.318047>,  <36.851212, 35.635933, 38.417789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803131, 35.423000, 38.318047>,  <36.723000, 35.068115, 38.151806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803131, 35.423000, 38.318047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027392, -0.418961, 0.907591,
		0.979345, -0.193203, -0.059628,
		0.200331, 0.887211, 0.415600,
		36.863232, 35.689163, 38.442726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303459, 35.017029, 38.630085>,  <36.723000, 35.068115, 38.151806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303459, 35.017029, 38.630085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070980, 35.326412, 38.731258>,  <36.931492, 35.512043, 38.791962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070980, 35.326412, 38.731258>,  <37.303459, 35.017029, 38.630085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070980, 35.326412, 38.731258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194780, -0.169564, 0.966079,
		0.790108, 0.610749, -0.052104,
		-0.581197, 0.773456, 0.252936,
		36.896622, 35.558449, 38.807140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633904, 35.357616, 39.242016>,  <37.303459, 35.017029, 38.630085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633904, 35.357616, 39.242016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257816, 35.493660, 39.249084>,  <37.032162, 35.575287, 39.253326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257816, 35.493660, 39.249084>,  <37.633904, 35.357616, 39.242016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257816, 35.493660, 39.249084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043260, -0.170731, 0.984368,
		0.337805, 0.924759, 0.175237,
		-0.940221, 0.340105, 0.017669,
		36.975750, 35.595692, 39.254387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612972, 35.833729, 39.790154>,  <37.633904, 35.357616, 39.242016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612972, 35.833729, 39.790154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239738, 35.708138, 39.719982>,  <37.015800, 35.632782, 39.677879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239738, 35.708138, 39.719982>,  <37.612972, 35.833729, 39.790154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239738, 35.708138, 39.719982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165662, -0.057751, 0.984490,
		-0.319240, 0.947672, 0.001873,
		-0.933082, -0.313979, -0.175429,
		36.959812, 35.613945, 39.667355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292931, 36.153049, 40.313103>,  <37.612972, 35.833729, 39.790154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292931, 36.153049, 40.313103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026806, 35.886093, 40.179264>,  <36.867130, 35.725922, 40.098961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026806, 35.886093, 40.179264>,  <37.292931, 36.153049, 40.313103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026806, 35.886093, 40.179264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287011, -0.185094, 0.939875,
		-0.689194, 0.721341, -0.068403,
		-0.665309, -0.667389, -0.334599,
		36.827213, 35.685875, 40.078884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655067, 36.272926, 40.662014>,  <37.292931, 36.153049, 40.313103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655067, 36.272926, 40.662014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671379, 35.884769, 40.566788>,  <36.681168, 35.651875, 40.509651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671379, 35.884769, 40.566788>,  <36.655067, 36.272926, 40.662014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671379, 35.884769, 40.566788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209934, -0.241266, 0.947480,
		-0.976865, 0.011340, -0.213557,
		0.040780, -0.970393, -0.238065,
		36.683613, 35.593651, 40.495369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022293, 36.017750, 40.955608>,  <36.655067, 36.272926, 40.662014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022293, 36.017750, 40.955608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249313, 35.693993, 40.895256>,  <36.385525, 35.499737, 40.859047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249313, 35.693993, 40.895256>,  <36.022293, 36.017750, 40.955608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249313, 35.693993, 40.895256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302769, -0.375583, 0.875939,
		-0.765647, -0.451460, -0.458222,
		0.567552, -0.809395, -0.150876,
		36.419579, 35.451176, 40.849995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538715, 35.503502, 41.207691>,  <36.022293, 36.017750, 40.955608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538715, 35.503502, 41.207691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900017, 35.332867, 41.189114>,  <36.116798, 35.230488, 41.177967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900017, 35.332867, 41.189114>,  <35.538715, 35.503502, 41.207691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900017, 35.332867, 41.189114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186805, -0.488345, 0.852422,
		-0.386307, -0.761280, -0.520788,
		0.903256, -0.426582, -0.046440,
		36.170994, 35.204891, 41.175182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454308, 34.714283, 41.416428>,  <35.538715, 35.503502, 41.207691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454308, 34.714283, 41.416428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833023, 34.835400, 41.460083>,  <36.060253, 34.908070, 41.486279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833023, 34.835400, 41.460083>,  <35.454308, 34.714283, 41.416428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833023, 34.835400, 41.460083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006421, -0.321259, 0.946970,
		0.321795, -0.897280, -0.302220,
		0.946788, 0.302789, 0.109141,
		36.117058, 34.926235, 41.492825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771996, 34.154709, 41.746834>,  <35.454308, 34.714283, 41.416428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771996, 34.154709, 41.746834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999134, 34.470638, 41.839550>,  <36.135418, 34.660198, 41.895180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999134, 34.470638, 41.839550>,  <35.771996, 34.154709, 41.746834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999134, 34.470638, 41.839550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148699, -0.178529, 0.972633,
		0.809592, -0.586774, 0.016070,
		0.567847, 0.789825, 0.231788,
		36.169487, 34.707584, 41.909088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035946, 33.333847, 41.808472>,  <35.771996, 34.154709, 41.746834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035946, 33.333847, 41.808472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717487, 33.094280, 41.773941>,  <35.526413, 32.950539, 41.753223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717487, 33.094280, 41.773941>,  <36.035946, 33.333847, 41.808472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717487, 33.094280, 41.773941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069374, 0.051386, -0.996266,
		0.601116, -0.799161, 0.000638,
		-0.796145, -0.598916, -0.086330,
		35.478645, 32.914604, 41.748043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189243, 32.916393, 41.286766>,  <36.035946, 33.333847, 41.808472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189243, 32.916393, 41.286766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790668, 32.883129, 41.292507>,  <35.551525, 32.863171, 41.295952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790668, 32.883129, 41.292507>,  <36.189243, 32.916393, 41.286766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790668, 32.883129, 41.292507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023456, 0.109557, -0.993704,
		0.081054, -0.990497, -0.111116,
		-0.996434, -0.083150, 0.014353,
		35.491737, 32.858181, 41.296814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977184, 32.408306, 40.779957>,  <36.189243, 32.916393, 41.286766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977184, 32.408306, 40.779957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646343, 32.624607, 40.841248>,  <35.447838, 32.754387, 40.878021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646343, 32.624607, 40.841248>,  <35.977184, 32.408306, 40.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646343, 32.624607, 40.841248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131061, 0.079551, -0.988177,
		-0.546550, -0.837411, 0.005075,
		-0.827107, 0.540754, 0.153230,
		35.398212, 32.786835, 40.887218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426044, 32.136688, 40.331219>,  <35.977184, 32.408306, 40.779957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426044, 32.136688, 40.331219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312878, 32.507191, 40.430817>,  <35.244976, 32.729492, 40.490578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312878, 32.507191, 40.430817>,  <35.426044, 32.136688, 40.331219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312878, 32.507191, 40.430817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098286, 0.230241, -0.968157,
		-0.954096, -0.298380, 0.025900,
		-0.282916, 0.926260, 0.248999,
		35.228004, 32.785069, 40.505516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794167, 32.229511, 39.996132>,  <35.426044, 32.136688, 40.331219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794167, 32.229511, 39.996132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917309, 32.601612, 40.075985>,  <34.991196, 32.824871, 40.123898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917309, 32.601612, 40.075985>,  <34.794167, 32.229511, 39.996132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917309, 32.601612, 40.075985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174407, 0.261449, -0.949329,
		-0.935310, 0.257441, 0.242732,
		0.307858, 0.930252, 0.199637,
		35.009666, 32.880688, 40.135876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360241, 32.635071, 39.605026>,  <34.794167, 32.229511, 39.996132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360241, 32.635071, 39.605026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649227, 32.899822, 39.684994>,  <34.822617, 33.058674, 39.732975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649227, 32.899822, 39.684994>,  <34.360241, 32.635071, 39.605026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649227, 32.899822, 39.684994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047297, 0.335778, -0.940753,
		-0.689789, 0.670204, 0.273892,
		0.722464, 0.661875, 0.199917,
		34.865967, 33.098385, 39.744968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137989, 33.295422, 39.340740>,  <34.360241, 32.635071, 39.605026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137989, 33.295422, 39.340740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536327, 33.299603, 39.376938>,  <34.775330, 33.302109, 39.398655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536327, 33.299603, 39.376938>,  <34.137989, 33.295422, 39.340740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536327, 33.299603, 39.376938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079868, 0.377647, -0.922499,
		-0.043816, 0.925891, 0.375242,
		0.995842, 0.010450, 0.090496,
		34.835079, 33.302738, 39.404087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293282, 33.958656, 39.051159>,  <34.137989, 33.295422, 39.340740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293282, 33.958656, 39.051159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647282, 33.773140, 39.067520>,  <34.859680, 33.661831, 39.077335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647282, 33.773140, 39.067520>,  <34.293282, 33.958656, 39.051159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647282, 33.773140, 39.067520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283901, 0.467929, -0.836924,
		0.369019, 0.752290, 0.545788,
		0.885000, -0.463791, 0.040901,
		34.912781, 33.634003, 39.079792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820641, 34.451523, 38.960594>,  <34.293282, 33.958656, 39.051159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820641, 34.451523, 38.960594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994404, 34.107605, 38.853226>,  <35.098663, 33.901257, 38.788803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994404, 34.107605, 38.853226>,  <34.820641, 34.451523, 38.960594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994404, 34.107605, 38.853226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468289, 0.470156, -0.748103,
		0.769412, 0.199283, 0.606870,
		0.434408, -0.859790, -0.268421,
		35.124725, 33.849667, 38.772697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570358, 34.588684, 38.993610>,  <34.820641, 34.451523, 38.960594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570358, 34.588684, 38.993610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483513, 34.293369, 38.738174>,  <35.431408, 34.116180, 38.584911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483513, 34.293369, 38.738174>,  <35.570358, 34.588684, 38.993610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483513, 34.293369, 38.738174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380251, 0.538552, -0.751912,
		0.899040, -0.406071, 0.163810,
		-0.217110, -0.738287, -0.638588,
		35.418381, 34.071884, 38.546597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244282, 34.443378, 38.644093>,  <35.570358, 34.588684, 38.993610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244282, 34.443378, 38.644093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922619, 34.336098, 38.431908>,  <35.729622, 34.271729, 38.304596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922619, 34.336098, 38.431908>,  <36.244282, 34.443378, 38.644093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922619, 34.336098, 38.431908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426146, 0.362025, -0.829058,
		0.414401, -0.892750, -0.176829,
		-0.804159, -0.268208, -0.530466,
		35.681370, 34.255638, 38.272770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490810, 34.322483, 37.916222>,  <36.244282, 34.443378, 38.644093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490810, 34.322483, 37.916222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095764, 34.330956, 37.854042>,  <35.858738, 34.336040, 37.816734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095764, 34.330956, 37.854042>,  <36.490810, 34.322483, 37.916222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095764, 34.330956, 37.854042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150622, 0.405248, -0.901713,
		0.043895, -0.913961, -0.403420,
		-0.987617, 0.021184, -0.155451,
		35.799480, 34.337311, 37.807407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300877, 34.069862, 37.279774>,  <36.490810, 34.322483, 37.916222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300877, 34.069862, 37.279774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000332, 34.326424, 37.341824>,  <35.820004, 34.480358, 37.379055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000332, 34.326424, 37.341824>,  <36.300877, 34.069862, 37.279774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000332, 34.326424, 37.341824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080806, 0.322739, -0.943033,
		-0.654925, -0.696023, -0.294322,
		-0.751361, 0.641399, 0.155127,
		35.774925, 34.518845, 37.388363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370003, 33.611221, 36.723339>,  <36.300877, 34.069862, 37.279774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370003, 33.611221, 36.723339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466724, 33.949589, 36.533203>,  <36.524757, 34.152611, 36.419121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466724, 33.949589, 36.533203>,  <36.370003, 33.611221, 36.723339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466724, 33.949589, 36.533203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870363, 0.027475, 0.491643,
		0.428951, -0.532599, -0.729615,
		0.241803, 0.845921, -0.475340,
		36.539265, 34.203365, 36.390602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494568, 33.258595, 37.347275>,  <36.370003, 33.611221, 36.723339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494568, 33.258595, 37.347275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774620, 33.543716, 37.363945>,  <36.942650, 33.714790, 37.373947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774620, 33.543716, 37.363945>,  <36.494568, 33.258595, 37.347275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774620, 33.543716, 37.363945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689975, 0.660377, 0.296373,
		0.183732, -0.236256, 0.954162,
		0.700127, 0.712801, 0.041679,
		36.984657, 33.757557, 37.376450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702312, 32.537041, 37.116020>,  <36.494568, 33.258595, 37.347275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702312, 32.537041, 37.116020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047867, 32.523087, 36.915031>,  <37.255199, 32.514713, 36.794437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047867, 32.523087, 36.915031>,  <36.702312, 32.537041, 37.116020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047867, 32.523087, 36.915031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317302, -0.737073, 0.596694,
		-0.391175, -0.674913, -0.625680,
		0.863887, -0.034882, -0.502476,
		37.307034, 32.512623, 36.764290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823383, 31.901253, 36.883816>,  <36.702312, 32.537041, 37.116020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823383, 31.901253, 36.883816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199146, 32.030590, 36.929367>,  <37.424603, 32.108192, 36.956699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199146, 32.030590, 36.929367>,  <36.823383, 31.901253, 36.883816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199146, 32.030590, 36.929367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160967, -0.709343, 0.686238,
		0.302673, -0.626323, -0.718407,
		0.939404, 0.323345, 0.113882,
		37.480968, 32.127594, 36.963531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414318, 31.277077, 36.862263>,  <36.823383, 31.901253, 36.883816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414318, 31.277077, 36.862263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507347, 31.596159, 37.084824>,  <37.563164, 31.787607, 37.218361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507347, 31.596159, 37.084824>,  <37.414318, 31.277077, 36.862263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507347, 31.596159, 37.084824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235261, -0.601237, 0.763653,
		0.943697, -0.046704, -0.327499,
		0.232570, 0.797705, 0.556398,
		37.577118, 31.835470, 37.251743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035736, 31.035229, 37.292389>,  <37.414318, 31.277077, 36.862263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035736, 31.035229, 37.292389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863010, 31.349075, 37.470337>,  <37.759377, 31.537384, 37.577106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863010, 31.349075, 37.470337>,  <38.035736, 31.035229, 37.292389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863010, 31.349075, 37.470337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041197, -0.475557, 0.878720,
		0.901022, 0.397771, 0.173028,
		-0.431814, 0.784617, 0.444874,
		37.733467, 31.584461, 37.603798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373245, 30.916075, 37.923687>,  <38.035736, 31.035229, 37.292389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373245, 30.916075, 37.923687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132980, 31.224325, 38.008862>,  <37.988823, 31.409275, 38.059967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132980, 31.224325, 38.008862>,  <38.373245, 30.916075, 37.923687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132980, 31.224325, 38.008862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146200, -0.155969, 0.976882,
		0.786021, 0.617909, -0.018981,
		-0.600664, 0.770625, 0.212933,
		37.952782, 31.455513, 38.072742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691769, 31.104237, 38.460148>,  <38.373245, 30.916075, 37.923687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691769, 31.104237, 38.460148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325436, 31.262562, 38.487221>,  <38.105637, 31.357557, 38.503464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325436, 31.262562, 38.487221>,  <38.691769, 31.104237, 38.460148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325436, 31.262562, 38.487221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065561, -0.018912, 0.997669,
		0.396170, 0.918137, -0.008630,
		-0.915834, 0.395812, 0.067687,
		38.050686, 31.381306, 38.507526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694088, 31.526203, 39.032398>,  <38.691769, 31.104237, 38.460148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694088, 31.526203, 39.032398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308422, 31.439592, 38.971066>,  <38.077023, 31.387625, 38.934265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308422, 31.439592, 38.971066>,  <38.694088, 31.526203, 39.032398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308422, 31.439592, 38.971066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170878, 0.064673, 0.983167,
		-0.202967, 0.974132, -0.099355,
		-0.964160, -0.216528, -0.153331,
		38.019173, 31.374634, 38.925068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299831, 31.988640, 39.322117>,  <38.694088, 31.526203, 39.032398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299831, 31.988640, 39.322117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037983, 31.689651, 39.276928>,  <37.880875, 31.510258, 39.249817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037983, 31.689651, 39.276928>,  <38.299831, 31.988640, 39.322117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037983, 31.689651, 39.276928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228982, 0.053641, 0.971952,
		-0.720445, 0.662126, -0.206272,
		-0.654619, -0.747471, -0.112969,
		37.841599, 31.465410, 39.243038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805408, 32.209103, 39.713245>,  <38.299831, 31.988640, 39.322117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805408, 32.209103, 39.713245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753239, 31.814880, 39.670025>,  <37.721939, 31.578348, 39.644093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753239, 31.814880, 39.670025>,  <37.805408, 32.209103, 39.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753239, 31.814880, 39.670025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272312, -0.069180, 0.959719,
		-0.953329, 0.154591, -0.259356,
		-0.130421, -0.985554, -0.108049,
		37.714111, 31.519215, 39.637611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201698, 31.974483, 40.050217>,  <37.805408, 32.209103, 39.713245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201698, 31.974483, 40.050217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379284, 31.617867, 40.014328>,  <37.485836, 31.403896, 39.992794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379284, 31.617867, 40.014328>,  <37.201698, 31.974483, 40.050217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379284, 31.617867, 40.014328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265373, -0.226460, 0.937173,
		-0.855845, -0.392264, -0.337131,
		0.443966, -0.891541, -0.089718,
		37.512474, 31.350405, 39.987411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700027, 31.408844, 40.328663>,  <37.201698, 31.974483, 40.050217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700027, 31.408844, 40.328663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058167, 31.230745, 40.332787>,  <37.273052, 31.123886, 40.335262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058167, 31.230745, 40.332787>,  <36.700027, 31.408844, 40.328663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058167, 31.230745, 40.332787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168916, -0.318069, 0.932899,
		-0.412091, -0.837011, -0.359991,
		0.895348, -0.445247, 0.010311,
		37.326771, 31.097172, 40.335880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559441, 30.754910, 40.514900>,  <36.700027, 31.408844, 40.328663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559441, 30.754910, 40.514900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934498, 30.859407, 40.606617>,  <37.159534, 30.922106, 40.661648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934498, 30.859407, 40.606617>,  <36.559441, 30.754910, 40.514900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934498, 30.859407, 40.606617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119929, -0.375994, 0.918828,
		0.326249, -0.889033, -0.321218,
		0.937646, 0.261243, 0.229289,
		37.215790, 30.937780, 40.675404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844822, 30.196293, 40.939056>,  <36.559441, 30.754910, 40.514900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844822, 30.196293, 40.939056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111542, 30.486710, 41.006283>,  <37.271572, 30.660959, 41.046619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111542, 30.486710, 41.006283>,  <36.844822, 30.196293, 40.939056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111542, 30.486710, 41.006283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110325, -0.319198, 0.941245,
		0.737028, -0.609077, -0.292941,
		0.666797, 0.726042, 0.168062,
		37.311581, 30.704523, 41.056702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260170, 29.830238, 41.407078>,  <36.844822, 30.196293, 40.939056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260170, 29.830238, 41.407078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335037, 30.222301, 41.433174>,  <37.379959, 30.457541, 41.448830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335037, 30.222301, 41.433174>,  <37.260170, 29.830238, 41.407078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335037, 30.222301, 41.433174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252584, -0.112198, 0.961048,
		0.949300, -0.163399, -0.268572,
		0.187168, 0.980159, 0.065238,
		37.391186, 30.516350, 41.452747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963135, 29.940527, 41.633469>,  <37.260170, 29.830238, 41.407078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963135, 29.940527, 41.633469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748932, 30.270760, 41.704624>,  <37.620411, 30.468899, 41.747318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748932, 30.270760, 41.704624>,  <37.963135, 29.940527, 41.633469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748932, 30.270760, 41.704624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109457, -0.141006, 0.983939,
		0.837405, 0.546381, -0.014855,
		-0.535511, 0.825582, 0.177885,
		37.588280, 30.518435, 41.757988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272915, 30.242987, 42.232452>,  <37.963135, 29.940527, 41.633469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272915, 30.242987, 42.232452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907028, 30.404593, 42.235779>,  <37.687496, 30.501556, 42.237774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907028, 30.404593, 42.235779>,  <38.272915, 30.242987, 42.232452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907028, 30.404593, 42.235779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021707, 0.028567, 0.999356,
		0.403516, 0.914307, -0.034900,
		-0.914715, 0.404013, 0.008320,
		37.632614, 30.525797, 42.238274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333141, 30.602661, 42.759243>,  <38.272915, 30.242987, 42.232452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333141, 30.602661, 42.759243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934986, 30.600775, 42.720909>,  <37.696095, 30.599642, 42.697910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934986, 30.600775, 42.720909>,  <38.333141, 30.602661, 42.759243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934986, 30.600775, 42.720909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095167, -0.078747, 0.992342,
		-0.012227, 0.996884, 0.077935,
		-0.995386, -0.004717, -0.095833,
		37.636372, 30.599360, 42.692158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051117, 31.027063, 43.287476>,  <38.333141, 30.602661, 42.759243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051117, 31.027063, 43.287476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733849, 30.820942, 43.157650>,  <37.543488, 30.697269, 43.079754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733849, 30.820942, 43.157650>,  <38.051117, 31.027063, 43.287476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733849, 30.820942, 43.157650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292254, -0.145493, 0.945209,
		-0.534292, 0.844567, -0.035199,
		-0.793171, -0.515305, -0.324564,
		37.495899, 30.666351, 43.060280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657982, 31.160400, 43.825153>,  <38.051117, 31.027063, 43.287476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657982, 31.160400, 43.825153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519444, 30.826479, 43.653969>,  <37.436321, 30.626127, 43.551258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519444, 30.826479, 43.653969>,  <37.657982, 31.160400, 43.825153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519444, 30.826479, 43.653969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444347, -0.255785, 0.858563,
		-0.826195, 0.487525, -0.282350,
		-0.346350, -0.834801, -0.427959,
		37.415539, 30.576038, 43.525581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925056, 31.129732, 43.993534>,  <37.657982, 31.160400, 43.825153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925056, 31.129732, 43.993534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041531, 30.752859, 43.927197>,  <37.111416, 30.526735, 43.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041531, 30.752859, 43.927197>,  <36.925056, 31.129732, 43.993534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041531, 30.752859, 43.927197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392008, -0.275647, 0.877695,
		-0.872663, -0.190559, -0.449607,
		0.291185, -0.942181, -0.165846,
		37.128887, 30.470205, 43.877441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344242, 30.719666, 44.226170>,  <36.925056, 31.129732, 43.993534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344242, 30.719666, 44.226170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664219, 30.479826, 44.216629>,  <36.856205, 30.335922, 44.210907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664219, 30.479826, 44.216629>,  <36.344242, 30.719666, 44.226170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664219, 30.479826, 44.216629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119424, -0.198025, 0.972895,
		-0.588069, -0.775415, -0.230015,
		0.799945, -0.599599, -0.023849,
		36.904202, 30.299946, 44.209473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046730, 30.045830, 44.418343>,  <36.344242, 30.719666, 44.226170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046730, 30.045830, 44.418343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442215, 30.025915, 44.474869>,  <36.679504, 30.013968, 44.508785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442215, 30.025915, 44.474869>,  <36.046730, 30.045830, 44.418343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442215, 30.025915, 44.474869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149785, -0.304550, 0.940646,
		-0.003789, -0.951194, -0.308568,
		0.988711, -0.049783, 0.141321,
		36.738827, 30.010981, 44.517265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118732, 29.346788, 44.844902>,  <36.046730, 30.045830, 44.418343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118732, 29.346788, 44.844902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473404, 29.522808, 44.901684>,  <36.686207, 29.628420, 44.935753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473404, 29.522808, 44.901684>,  <36.118732, 29.346788, 44.844902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473404, 29.522808, 44.901684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082722, -0.453030, 0.887649,
		0.454921, -0.775319, -0.438095,
		0.886681, 0.440051, 0.141957,
		36.739407, 29.654823, 44.944271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643791, 28.858553, 45.100636>,  <36.118732, 29.346788, 44.844902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643791, 28.858553, 45.100636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758690, 29.226274, 45.208241>,  <36.827629, 29.446907, 45.272804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758690, 29.226274, 45.208241>,  <36.643791, 28.858553, 45.100636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758690, 29.226274, 45.208241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023984, -0.287659, 0.957433,
		0.957556, -0.268569, -0.104678,
		0.287249, 0.919306, 0.269008,
		36.844864, 29.502066, 45.288944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125969, 28.709114, 45.644733>,  <36.643791, 28.858553, 45.100636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125969, 28.709114, 45.644733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023899, 29.093740, 45.685291>,  <36.962658, 29.324516, 45.709625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023899, 29.093740, 45.685291>,  <37.125969, 28.709114, 45.644733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023899, 29.093740, 45.685291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001446, -0.104485, 0.994525,
		0.966895, 0.253921, 0.025271,
		-0.255171, 0.961565, 0.101393,
		36.947350, 29.382210, 45.715710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464050, 28.880104, 46.270805>,  <37.125969, 28.709114, 45.644733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464050, 28.880104, 46.270805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203400, 29.183229, 46.257542>,  <37.047009, 29.365105, 46.249584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203400, 29.183229, 46.257542>,  <37.464050, 28.880104, 46.270805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203400, 29.183229, 46.257542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042321, 0.007325, 0.999077,
		0.757355, 0.652432, 0.027298,
		-0.651630, 0.757812, -0.033159,
		37.007912, 29.410572, 46.247593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720623, 29.280361, 46.694290>,  <37.464050, 28.880104, 46.270805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720623, 29.280361, 46.694290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333534, 29.375647, 46.661385>,  <37.101280, 29.432817, 46.641640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333534, 29.375647, 46.661385>,  <37.720623, 29.280361, 46.694290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333534, 29.375647, 46.661385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094171, -0.039023, 0.994791,
		0.233763, 0.970428, 0.060196,
		-0.967722, 0.238214, -0.082264,
		37.043217, 29.447111, 46.636703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001022, 30.100950, 46.663322>,  <37.720623, 29.280361, 46.694290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001022, 30.100950, 46.663322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338623, 30.291662, 46.761578>,  <38.541183, 30.406090, 46.820530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338623, 30.291662, 46.761578>,  <38.001022, 30.100950, 46.663322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338623, 30.291662, 46.761578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075127, 0.348382, -0.934337,
		-0.531047, 0.807039, 0.258218,
		0.844005, 0.476778, 0.245637,
		38.591824, 30.434696, 46.835270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021271, 30.656498, 46.193771>,  <38.001022, 30.100950, 46.663322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021271, 30.656498, 46.193771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400616, 30.629799, 46.317810>,  <38.628223, 30.613779, 46.392235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400616, 30.629799, 46.317810>,  <38.021271, 30.656498, 46.193771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400616, 30.629799, 46.317810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315131, 0.309709, -0.897091,
		-0.036161, 0.948486, 0.314750,
		0.948359, -0.066748, 0.310096,
		38.685123, 30.609774, 46.410839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348503, 31.215231, 45.935505>,  <38.021271, 30.656498, 46.193771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348503, 31.215231, 45.935505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656849, 30.986441, 46.047653>,  <38.841858, 30.849167, 46.114944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656849, 30.986441, 46.047653>,  <38.348503, 31.215231, 45.935505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656849, 30.986441, 46.047653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480229, 0.232656, -0.845726,
		0.418505, 0.786584, 0.454026,
		0.770866, -0.571977, 0.280372,
		38.888107, 30.814848, 46.131763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906490, 31.695585, 46.009602>,  <38.348503, 31.215231, 45.935505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906490, 31.695585, 46.009602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040222, 31.326082, 45.934883>,  <39.120461, 31.104380, 45.890053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040222, 31.326082, 45.934883>,  <38.906490, 31.695585, 46.009602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040222, 31.326082, 45.934883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326707, 0.299512, -0.896413,
		0.884018, 0.238668, 0.401934,
		0.334328, -0.923759, -0.186799,
		39.140522, 31.048954, 45.878845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563744, 31.722229, 45.762135>,  <38.906490, 31.695585, 46.009602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563744, 31.722229, 45.762135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428616, 31.377958, 45.609756>,  <39.347538, 31.171396, 45.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428616, 31.377958, 45.609756>,  <39.563744, 31.722229, 45.762135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428616, 31.377958, 45.609756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340198, 0.265720, -0.902030,
		0.877580, -0.434316, 0.203035,
		-0.337816, -0.860675, -0.380944,
		39.327271, 31.119755, 45.495472>
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
