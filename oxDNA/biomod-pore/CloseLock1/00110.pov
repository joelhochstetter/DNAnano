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
	<24.068247, 34.680744, 35.146591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274893, 35.008461, 35.047092>,  <24.398880, 35.205090, 34.987392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274893, 35.008461, 35.047092>,  <24.068247, 34.680744, 35.146591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274893, 35.008461, 35.047092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015897, 0.281291, 0.959491,
		0.856071, -0.499641, 0.132295,
		0.516614, 0.819289, -0.248748,
		24.429876, 35.254250, 34.972469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737164, 34.877918, 35.419312>,  <24.068247, 34.680744, 35.146591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737164, 34.877918, 35.419312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882505, 35.107025, 35.125401>,  <24.969711, 35.244492, 34.949055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882505, 35.107025, 35.125401>,  <24.737164, 34.877918, 35.419312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882505, 35.107025, 35.125401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635478, -0.729110, -0.254101,
		-0.681278, -0.374608, -0.628911,
		0.363357, 0.572772, -0.734782,
		24.991512, 35.278858, 34.904964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641277, 34.565506, 34.709709>,  <24.737164, 34.877918, 35.419312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641277, 34.565506, 34.709709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966921, 34.797478, 34.697659>,  <25.162308, 34.936661, 34.690430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966921, 34.797478, 34.697659>,  <24.641277, 34.565506, 34.709709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966921, 34.797478, 34.697659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497476, -0.723245, -0.478993,
		-0.299568, 0.374968, -0.877302,
		0.814111, 0.579927, -0.030124,
		25.211155, 34.971455, 34.688622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836285, 34.724575, 34.016838>,  <24.641277, 34.565506, 34.709709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836285, 34.724575, 34.016838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134808, 34.660137, 34.275166>,  <25.313921, 34.621475, 34.430161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134808, 34.660137, 34.275166>,  <24.836285, 34.724575, 34.016838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134808, 34.660137, 34.275166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252380, -0.829328, -0.498517,
		0.615899, 0.535037, -0.578277,
		0.746306, -0.161091, 0.645815,
		25.358700, 34.611809, 34.468910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592010, 34.682163, 33.603668>,  <24.836285, 34.724575, 34.016838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592010, 34.682163, 33.603668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491554, 34.456532, 33.918308>,  <25.431280, 34.321152, 34.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491554, 34.456532, 33.918308>,  <25.592010, 34.682163, 33.603668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491554, 34.456532, 33.918308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044197, -0.805119, -0.591465,
		0.966941, -0.183307, 0.177269,
		-0.251143, -0.564077, 0.786603,
		25.416212, 34.287308, 34.154289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046154, 34.287563, 33.120255>,  <25.592010, 34.682163, 33.603668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046154, 34.287563, 33.120255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399889, 34.452839, 33.033333>,  <26.612129, 34.552006, 32.981178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399889, 34.452839, 33.033333>,  <26.046154, 34.287563, 33.120255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399889, 34.452839, 33.033333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443558, 0.598461, -0.667159,
		-0.145613, 0.686382, 0.712515,
		0.884338, 0.413189, -0.217306,
		26.665190, 34.576794, 32.968140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766632, 33.895847, 33.150009>,  <26.046154, 34.287563, 33.120255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766632, 33.895847, 33.150009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132145, 33.798580, 33.280163>,  <27.351452, 33.740219, 33.358253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132145, 33.798580, 33.280163>,  <26.766632, 33.895847, 33.150009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132145, 33.798580, 33.280163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167237, -0.955196, -0.244198,
		0.370183, 0.168728, -0.913507,
		0.913781, -0.243171, 0.325380,
		27.406279, 33.725628, 33.377777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866093, 33.429390, 32.676762>,  <26.766632, 33.895847, 33.150009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866093, 33.429390, 32.676762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129299, 33.342934, 32.965290>,  <27.287222, 33.291061, 33.138405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129299, 33.342934, 32.965290>,  <26.866093, 33.429390, 32.676762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129299, 33.342934, 32.965290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206623, -0.972978, -0.103055,
		0.724102, -0.081230, -0.684893,
		0.658015, -0.216137, 0.721319,
		27.326704, 33.278091, 33.181686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317944, 32.907005, 32.452339>,  <26.866093, 33.429390, 32.676762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317944, 32.907005, 32.452339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299763, 32.886791, 32.851414>,  <27.288855, 32.874664, 33.090858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299763, 32.886791, 32.851414>,  <27.317944, 32.907005, 32.452339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299763, 32.886791, 32.851414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243269, -0.968094, -0.060119,
		0.968893, -0.245439, 0.031711,
		-0.045454, -0.050534, 0.997687,
		27.286127, 32.871632, 33.150719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500669, 32.183399, 32.562256>,  <27.317944, 32.907005, 32.452339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500669, 32.183399, 32.562256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385254, 32.293858, 32.928967>,  <27.316004, 32.360134, 33.148994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385254, 32.293858, 32.928967>,  <27.500669, 32.183399, 32.562256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385254, 32.293858, 32.928967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281562, -0.939641, 0.194419,
		0.915133, -0.202032, 0.348876,
		-0.288539, 0.276150, 0.916781,
		27.298693, 32.376701, 33.204002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699665, 31.668631, 32.940441>,  <27.500669, 32.183399, 32.562256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699665, 31.668631, 32.940441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415787, 31.840591, 33.163696>,  <27.245461, 31.943768, 33.297649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415787, 31.840591, 33.163696>,  <27.699665, 31.668631, 32.940441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415787, 31.840591, 33.163696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346633, -0.902785, 0.254606,
		0.613334, -0.012777, 0.789720,
		-0.709695, 0.429902, 0.558138,
		27.202879, 31.969563, 33.331139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718405, 31.325397, 33.547344>,  <27.699665, 31.668631, 32.940441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718405, 31.325397, 33.547344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355621, 31.493885, 33.547455>,  <27.137951, 31.594978, 33.547520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355621, 31.493885, 33.547455>,  <27.718405, 31.325397, 33.547344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355621, 31.493885, 33.547455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420457, -0.905359, 0.059505,
		0.025316, 0.053852, 0.998228,
		-0.906959, 0.421219, 0.000277,
		27.083534, 31.620251, 33.547539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386387, 31.053978, 34.123493>,  <27.718405, 31.325397, 33.547344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386387, 31.053978, 34.123493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108126, 31.177984, 33.864277>,  <26.941168, 31.252388, 33.708748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108126, 31.177984, 33.864277>,  <27.386387, 31.053978, 34.123493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108126, 31.177984, 33.864277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340286, -0.936669, -0.082807,
		-0.632670, 0.162913, 0.757092,
		-0.695654, 0.310017, -0.648040,
		26.899429, 31.270988, 33.669865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801241, 30.576000, 34.264164>,  <27.386387, 31.053978, 34.123493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801241, 30.576000, 34.264164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692175, 30.727453, 33.910374>,  <26.626736, 30.818325, 33.698101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692175, 30.727453, 33.910374>,  <26.801241, 30.576000, 34.264164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692175, 30.727453, 33.910374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330287, -0.900275, -0.283576,
		-0.903640, 0.214810, 0.370529,
		-0.272663, 0.378631, -0.884473,
		26.610374, 30.841043, 33.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147242, 30.350765, 34.061836>,  <26.801241, 30.576000, 34.264164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147242, 30.350765, 34.061836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313112, 30.434427, 33.707592>,  <26.412634, 30.484625, 33.495045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313112, 30.434427, 33.707592>,  <26.147242, 30.350765, 34.061836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313112, 30.434427, 33.707592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212646, -0.924007, -0.317794,
		-0.884774, 0.320102, -0.338688,
		0.414676, 0.209155, -0.885606,
		26.437515, 30.497173, 33.441910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658100, 30.096235, 33.466286>,  <26.147242, 30.350765, 34.061836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658100, 30.096235, 33.466286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020844, 30.134087, 33.302017>,  <26.238489, 30.156797, 33.203457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020844, 30.134087, 33.302017>,  <25.658100, 30.096235, 33.466286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020844, 30.134087, 33.302017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096829, -0.901608, -0.421578,
		-0.410156, 0.422077, -0.808470,
		0.906860, 0.094629, -0.410670,
		26.292902, 30.162476, 33.178818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634525, 30.002634, 32.741585>,  <25.658100, 30.096235, 33.466286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634525, 30.002634, 32.741585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987955, 29.897100, 32.896343>,  <26.200012, 29.833780, 32.989197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987955, 29.897100, 32.896343>,  <25.634525, 30.002634, 32.741585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987955, 29.897100, 32.896343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067337, -0.889183, -0.452571,
		0.463424, 0.373828, -0.803425,
		0.883575, -0.263832, 0.386896,
		26.253027, 29.817951, 33.012413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747379, 29.456524, 32.306923>,  <25.634525, 30.002634, 32.741585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747379, 29.456524, 32.306923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063311, 29.426235, 32.550377>,  <26.252869, 29.408062, 32.696449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063311, 29.426235, 32.550377>,  <25.747379, 29.456524, 32.306923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063311, 29.426235, 32.550377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180165, -0.919924, -0.348254,
		0.586270, 0.384716, -0.712938,
		0.789828, -0.075724, 0.608636,
		26.300259, 29.403519, 32.732967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304129, 29.150103, 31.859892>,  <25.747379, 29.456524, 32.306923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304129, 29.150103, 31.859892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407740, 29.081629, 32.240124>,  <26.469906, 29.040545, 32.468262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407740, 29.081629, 32.240124>,  <26.304129, 29.150103, 31.859892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407740, 29.081629, 32.240124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216198, -0.948921, -0.229798,
		0.941362, 0.265038, -0.208786,
		0.259027, -0.171184, 0.950579,
		26.485447, 29.030273, 32.525299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892675, 28.779253, 31.850197>,  <26.304129, 29.150103, 31.859892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892675, 28.779253, 31.850197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759695, 28.702148, 32.219482>,  <26.679907, 28.655886, 32.441055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759695, 28.702148, 32.219482>,  <26.892675, 28.779253, 31.850197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759695, 28.702148, 32.219482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170466, -0.975049, -0.142199,
		0.927588, 0.110103, 0.357013,
		-0.332449, -0.192760, 0.923213,
		26.659960, 28.644320, 32.496445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403444, 28.349445, 32.049530>,  <26.892675, 28.779253, 31.850197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403444, 28.349445, 32.049530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083719, 28.294617, 32.283562>,  <26.891884, 28.261721, 32.423981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083719, 28.294617, 32.283562>,  <27.403444, 28.349445, 32.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083719, 28.294617, 32.283562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144875, -0.988874, -0.033748,
		0.583192, 0.057788, 0.810276,
		-0.799311, -0.137071, 0.585076,
		26.843925, 28.253496, 32.459084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616257, 27.947849, 32.718349>,  <27.403444, 28.349445, 32.049530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616257, 27.947849, 32.718349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223129, 27.891077, 32.671146>,  <26.987253, 27.857014, 32.642826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223129, 27.891077, 32.671146>,  <27.616257, 27.947849, 32.718349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223129, 27.891077, 32.671146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156503, -0.979728, -0.125060,
		-0.097865, -0.141379, 0.985106,
		-0.982817, -0.141933, -0.118007,
		26.928284, 27.848497, 32.635746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382570, 27.423748, 33.201267>,  <27.616257, 27.947849, 32.718349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382570, 27.423748, 33.201267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144438, 27.438148, 32.880199>,  <27.001558, 27.446789, 32.687557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144438, 27.438148, 32.880199>,  <27.382570, 27.423748, 33.201267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144438, 27.438148, 32.880199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134886, -0.980339, -0.144016,
		-0.792076, -0.194006, 0.578772,
		-0.595333, 0.036003, -0.802672,
		26.965837, 27.448950, 32.639397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863934, 26.837240, 33.113377>,  <27.382570, 27.423748, 33.201267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863934, 26.837240, 33.113377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975058, 26.949219, 32.745800>,  <27.041731, 27.016405, 32.525253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975058, 26.949219, 32.745800>,  <26.863934, 26.837240, 33.113377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975058, 26.949219, 32.745800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035541, -0.958937, -0.281385,
		-0.959979, 0.045511, -0.276350,
		0.277808, 0.279945, -0.918941,
		27.058399, 27.033203, 32.470116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346249, 26.555275, 32.591129>,  <26.863934, 26.837240, 33.113377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346249, 26.555275, 32.591129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708780, 26.595510, 32.426960>,  <26.926300, 26.619652, 32.328461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708780, 26.595510, 32.426960>,  <26.346249, 26.555275, 32.591129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708780, 26.595510, 32.426960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006632, -0.967748, -0.251832,
		-0.422516, 0.230965, -0.876433,
		0.906331, 0.100590, -0.410421,
		26.980680, 26.625687, 32.303833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511415, 26.344908, 31.856869>,  <26.346249, 26.555275, 32.591129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511415, 26.344908, 31.856869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860075, 26.307516, 32.049324>,  <27.069271, 26.285082, 32.164799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860075, 26.307516, 32.049324>,  <26.511415, 26.344908, 31.856869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860075, 26.307516, 32.049324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101004, -0.926318, -0.362952,
		0.479615, 0.364962, -0.797980,
		0.871647, -0.093478, 0.481138,
		27.121569, 26.279472, 32.193665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083231, 26.153805, 31.315165>,  <26.511415, 26.344908, 31.856869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083231, 26.153805, 31.315165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108429, 25.992506, 31.680332>,  <27.123547, 25.895727, 31.899433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108429, 25.992506, 31.680332>,  <27.083231, 26.153805, 31.315165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108429, 25.992506, 31.680332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337219, -0.852338, -0.399754,
		0.939316, 0.333036, 0.082290,
		0.062993, -0.403245, 0.912921,
		27.127327, 25.871532, 31.954208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780235, 26.055265, 31.307524>,  <27.083231, 26.153805, 31.315165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780235, 26.055265, 31.307524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721245, 26.444098, 31.380526>,  <27.685850, 26.677397, 31.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721245, 26.444098, 31.380526>,  <27.780235, 26.055265, 31.307524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721245, 26.444098, 31.380526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983464, -0.124515, -0.131510,
		-0.105114, -0.198887, 0.974369,
		-0.147479, 0.972080, 0.182510,
		27.677002, 26.735722, 31.435278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098337, 25.425797, 31.522242>,  <27.780235, 26.055265, 31.307524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098337, 25.425797, 31.522242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284611, 25.131254, 31.325909>,  <28.396376, 24.954529, 31.208109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284611, 25.131254, 31.325909>,  <28.098337, 25.425797, 31.522242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284611, 25.131254, 31.325909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766508, 0.058433, 0.639571,
		-0.442272, -0.674065, 0.591635,
		0.465683, -0.736357, -0.490833,
		28.424316, 24.910347, 31.178659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431742, 24.957975, 31.979618>,  <28.098337, 25.425797, 31.522242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431742, 24.957975, 31.979618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629421, 24.916866, 31.634317>,  <28.748028, 24.892200, 31.427137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629421, 24.916866, 31.634317>,  <28.431742, 24.957975, 31.979618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629421, 24.916866, 31.634317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869049, 0.032295, 0.493671,
		-0.022856, -0.994180, 0.105274,
		0.494198, -0.102772, -0.863253,
		28.777681, 24.886036, 31.375341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082563, 24.868164, 32.242542>,  <28.431742, 24.957975, 31.979618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082563, 24.868164, 32.242542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972258, 25.216961, 32.404324>,  <28.906075, 25.426239, 32.501392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972258, 25.216961, 32.404324>,  <29.082563, 24.868164, 32.242542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972258, 25.216961, 32.404324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937836, 0.336334, -0.085696,
		-0.210757, 0.355677, -0.910536,
		-0.275764, 0.871994, 0.404451,
		28.889528, 25.478559, 32.525658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580986, 24.979872, 31.591009>,  <29.082563, 24.868164, 32.242542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580986, 24.979872, 31.591009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945490, 25.118092, 31.680635>,  <30.164192, 25.201023, 31.734411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945490, 25.118092, 31.680635>,  <29.580986, 24.979872, 31.591009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945490, 25.118092, 31.680635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176123, -0.818780, 0.546425,
		0.372277, -0.458471, -0.806979,
		0.911258, 0.345549, 0.224066,
		30.218866, 25.221756, 31.747854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418421, 24.713678, 30.871874>,  <29.580986, 24.979872, 31.591009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418421, 24.713678, 30.871874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025257, 24.643850, 30.848505>,  <28.789358, 24.601954, 30.834484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025257, 24.643850, 30.848505>,  <29.418421, 24.713678, 30.871874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025257, 24.643850, 30.848505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075026, 0.669700, -0.738832,
		0.168101, -0.721822, -0.671353,
		-0.982910, -0.174568, -0.058421,
		28.730385, 24.591480, 30.830978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170334, 24.753672, 30.121935>,  <29.418421, 24.713678, 30.871874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170334, 24.753672, 30.121935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941133, 24.874199, 30.426796>,  <28.803614, 24.946516, 30.609713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941133, 24.874199, 30.426796>,  <29.170334, 24.753672, 30.121935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941133, 24.874199, 30.426796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134730, 0.882674, -0.450259,
		-0.808406, -0.360683, -0.465175,
		-0.572999, 0.301319, 0.762154,
		28.769234, 24.964594, 30.655441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032425, 25.409000, 29.620367>,  <29.170334, 24.753672, 30.121935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032425, 25.409000, 29.620367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792667, 25.706537, 29.738638>,  <28.648813, 25.885059, 29.809601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792667, 25.706537, 29.738638>,  <29.032425, 25.409000, 29.620367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792667, 25.706537, 29.738638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793763, -0.504692, -0.339449,
		-0.103269, -0.438163, 0.892944,
		-0.599396, 0.743841, 0.295679,
		28.612848, 25.929689, 29.827341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650150, 25.901661, 29.599127>,  <29.032425, 25.409000, 29.620367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650150, 25.901661, 29.599127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852512, 25.968412, 29.260609>,  <29.973928, 26.008463, 29.057499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852512, 25.968412, 29.260609>,  <29.650150, 25.901661, 29.599127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852512, 25.968412, 29.260609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016560, 0.979048, 0.202955,
		0.862431, -0.116690, 0.492540,
		0.505903, 0.166878, -0.846294,
		30.004284, 26.018476, 29.006720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309467, 26.243299, 29.757587>,  <29.650150, 25.901661, 29.599127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309467, 26.243299, 29.757587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128956, 26.328911, 29.411053>,  <30.020649, 26.380278, 29.203133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128956, 26.328911, 29.411053>,  <30.309467, 26.243299, 29.757587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128956, 26.328911, 29.411053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080831, 0.976625, 0.199173,
		0.888715, 0.019855, -0.458030,
		-0.451278, 0.214031, -0.866337,
		29.993572, 26.393120, 29.151152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609392, 26.860758, 29.544130>,  <30.309467, 26.243299, 29.757587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609392, 26.860758, 29.544130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295799, 26.844954, 29.296320>,  <30.107643, 26.835470, 29.147635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295799, 26.844954, 29.296320>,  <30.609392, 26.860758, 29.544130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295799, 26.844954, 29.296320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069606, 0.997274, 0.024480,
		0.616869, 0.062315, -0.784595,
		-0.783982, -0.039512, -0.619525,
		30.060604, 26.833099, 29.110462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735207, 27.377445, 29.061255>,  <30.609392, 26.860758, 29.544130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735207, 27.377445, 29.061255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344351, 27.293633, 29.075644>,  <30.109837, 27.243345, 29.084278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344351, 27.293633, 29.075644>,  <30.735207, 27.377445, 29.061255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344351, 27.293633, 29.075644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196202, 0.953939, 0.226947,
		-0.081870, 0.214700, -0.973243,
		-0.977140, -0.209532, 0.035974,
		30.051208, 27.230772, 29.086435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393583, 27.847260, 28.593700>,  <30.735207, 27.377445, 29.061255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393583, 27.847260, 28.593700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148165, 27.727877, 28.886133>,  <30.000914, 27.656246, 29.061594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148165, 27.727877, 28.886133>,  <30.393583, 27.847260, 28.593700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148165, 27.727877, 28.886133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124851, 0.950842, 0.283393,
		-0.779726, 0.082599, -0.620649,
		-0.613547, -0.298458, 0.731084,
		29.964100, 27.638340, 29.105459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108149, 28.459896, 28.607119>,  <30.393583, 27.847260, 28.593700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108149, 28.459896, 28.607119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982794, 28.258720, 28.929321>,  <29.907581, 28.138016, 29.122643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982794, 28.258720, 28.929321>,  <30.108149, 28.459896, 28.607119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982794, 28.258720, 28.929321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171200, 0.864261, 0.473016,
		-0.934066, 0.010335, -0.356951,
		-0.313387, -0.502938, 0.805507,
		29.888777, 28.107840, 29.170973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515575, 28.790970, 28.838703>,  <30.108149, 28.459896, 28.607119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515575, 28.790970, 28.838703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654594, 28.615366, 29.170120>,  <29.738007, 28.510004, 29.368971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654594, 28.615366, 29.170120>,  <29.515575, 28.790970, 28.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654594, 28.615366, 29.170120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292689, 0.788680, 0.540664,
		-0.890811, -0.430411, 0.145610,
		0.347548, -0.439011, 0.828541,
		29.758860, 28.483662, 29.418682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997234, 29.000612, 29.377937>,  <29.515575, 28.790970, 28.838703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997234, 29.000612, 29.377937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334583, 28.888235, 29.561152>,  <29.536993, 28.820808, 29.671080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334583, 28.888235, 29.561152>,  <28.997234, 29.000612, 29.377937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334583, 28.888235, 29.561152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086189, 0.770660, 0.631391,
		-0.530375, -0.571974, 0.625738,
		0.843371, -0.280942, 0.458037,
		29.587595, 28.803953, 29.698563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848688, 29.192699, 30.068649>,  <28.997234, 29.000612, 29.377937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848688, 29.192699, 30.068649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243464, 29.147186, 30.023026>,  <29.480328, 29.119879, 29.995651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243464, 29.147186, 30.023026>,  <28.848688, 29.192699, 30.068649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243464, 29.147186, 30.023026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161004, 0.721850, 0.673061,
		0.005750, -0.682632, 0.730740,
		0.986937, -0.113782, -0.114057,
		29.539545, 29.113052, 29.988808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075930, 29.166616, 30.737387>,  <28.848688, 29.192699, 30.068649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075930, 29.166616, 30.737387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413851, 29.256245, 30.543026>,  <29.616604, 29.310022, 30.426411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413851, 29.256245, 30.543026>,  <29.075930, 29.166616, 30.737387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413851, 29.256245, 30.543026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183013, 0.732324, 0.655903,
		0.502805, -0.643035, 0.577661,
		0.844803, 0.224072, -0.485900,
		29.667292, 29.323465, 30.397257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617847, 29.271315, 31.254999>,  <29.075930, 29.166616, 30.737387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617847, 29.271315, 31.254999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783047, 29.440599, 30.932428>,  <29.882166, 29.542171, 30.738886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783047, 29.440599, 30.932428>,  <29.617847, 29.271315, 31.254999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783047, 29.440599, 30.932428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260556, 0.793552, 0.549896,
		0.872664, -0.437225, 0.217465,
		0.412998, 0.423213, -0.806426,
		29.906946, 29.567564, 30.690500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297237, 29.389799, 31.393551>,  <29.617847, 29.271315, 31.254999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297237, 29.389799, 31.393551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198399, 29.649574, 31.105892>,  <30.139095, 29.805439, 30.933296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198399, 29.649574, 31.105892>,  <30.297237, 29.389799, 31.393551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198399, 29.649574, 31.105892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335417, 0.753606, 0.565308,
		0.909086, -0.101527, -0.404047,
		-0.247098, 0.649438, -0.719147,
		30.124269, 29.844406, 30.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921589, 29.875580, 31.323755>,  <30.297237, 29.389799, 31.393551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921589, 29.875580, 31.323755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608334, 30.060263, 31.157129>,  <30.420382, 30.171072, 31.057154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608334, 30.060263, 31.157129>,  <30.921589, 29.875580, 31.323755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608334, 30.060263, 31.157129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142728, 0.785451, 0.602242,
		0.605248, 0.412183, -0.681014,
		-0.783137, 0.461705, -0.416562,
		30.373392, 30.198774, 31.032160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092627, 30.532364, 31.405149>,  <30.921589, 29.875580, 31.323755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092627, 30.532364, 31.405149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707735, 30.594210, 31.315521>,  <30.476799, 30.631317, 31.261744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707735, 30.594210, 31.315521>,  <31.092627, 30.532364, 31.405149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707735, 30.594210, 31.315521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085400, 0.610096, 0.787712,
		0.258496, 0.777095, -0.573849,
		-0.962230, 0.154614, -0.224072,
		30.419065, 30.640594, 31.248301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940304, 31.314848, 31.353989>,  <31.092627, 30.532364, 31.405149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940304, 31.314848, 31.353989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581932, 31.143517, 31.401052>,  <30.366909, 31.040718, 31.429291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581932, 31.143517, 31.401052>,  <30.940304, 31.314848, 31.353989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581932, 31.143517, 31.401052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232732, 0.678266, 0.696987,
		-0.378344, 0.597069, -0.707364,
		-0.895930, -0.428328, 0.117661,
		30.313152, 31.015018, 31.436350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322651, 31.828129, 31.227976>,  <30.940304, 31.314848, 31.353989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322651, 31.828129, 31.227976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178215, 31.532862, 31.455914>,  <30.091553, 31.355701, 31.592676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178215, 31.532862, 31.455914>,  <30.322651, 31.828129, 31.227976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178215, 31.532862, 31.455914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361142, 0.674080, 0.644354,
		-0.859762, 0.026875, -0.509987,
		-0.361089, -0.738170, 0.569843,
		30.069889, 31.311411, 31.626865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531652, 31.877131, 31.269382>,  <30.322651, 31.828129, 31.227976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531652, 31.877131, 31.269382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678988, 31.692844, 31.592386>,  <29.767389, 31.582273, 31.786188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678988, 31.692844, 31.592386>,  <29.531652, 31.877131, 31.269382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678988, 31.692844, 31.592386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383142, 0.716162, 0.583365,
		-0.847071, -0.524265, 0.087271,
		0.368338, -0.460715, 0.807508,
		29.789490, 31.554630, 31.834639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926397, 31.921854, 31.731752>,  <29.531652, 31.877131, 31.269382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926397, 31.921854, 31.731752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251595, 31.850763, 31.953547>,  <29.446712, 31.808109, 32.086624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251595, 31.850763, 31.953547>,  <28.926397, 31.921854, 31.731752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251595, 31.850763, 31.953547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285542, 0.708222, 0.645669,
		-0.507451, -0.683254, 0.525031,
		0.812994, -0.177727, 0.554485,
		29.495493, 31.797445, 32.119892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636707, 31.847992, 32.447815>,  <28.926397, 31.921854, 31.731752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636707, 31.847992, 32.447815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029488, 31.913193, 32.486187>,  <29.265156, 31.952314, 32.509209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029488, 31.913193, 32.486187>,  <28.636707, 31.847992, 32.447815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029488, 31.913193, 32.486187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180630, 0.657808, 0.731206,
		0.056086, -0.735336, 0.675378,
		0.981951, 0.163004, 0.095930,
		29.324074, 31.962093, 32.514965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742674, 31.831001, 33.104721>,  <28.636707, 31.847992, 32.447815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742674, 31.831001, 33.104721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044809, 32.054371, 32.967533>,  <29.226089, 32.188393, 32.885220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044809, 32.054371, 32.967533>,  <28.742674, 31.831001, 33.104721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044809, 32.054371, 32.967533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303660, 0.762018, 0.571943,
		0.580737, -0.327862, 0.745151,
		0.755337, 0.558421, -0.342974,
		29.271410, 32.221897, 32.864639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062542, 32.148457, 33.659489>,  <28.742674, 31.831001, 33.104721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062542, 32.148457, 33.659489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206772, 32.380962, 33.367702>,  <29.293310, 32.520466, 33.192631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206772, 32.380962, 33.367702>,  <29.062542, 32.148457, 33.659489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206772, 32.380962, 33.367702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075277, 0.797657, 0.598395,
		0.929688, -0.160855, 0.331371,
		0.360575, 0.581265, -0.729463,
		29.314945, 32.555344, 33.148865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727333, 32.417118, 33.929260>,  <29.062542, 32.148457, 33.659489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727333, 32.417118, 33.929260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579069, 32.654156, 33.643200>,  <29.490110, 32.796379, 33.471565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579069, 32.654156, 33.643200>,  <29.727333, 32.417118, 33.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579069, 32.654156, 33.643200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130169, 0.795543, 0.591749,
		0.919602, 0.126247, -0.372014,
		-0.370660, 0.592598, -0.715149,
		29.467871, 32.831936, 33.428654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368187, 32.033279, 34.140675>,  <29.727333, 32.417118, 33.929260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368187, 32.033279, 34.140675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648483, 31.904058, 34.395107>,  <30.816660, 31.826525, 34.547768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648483, 31.904058, 34.395107>,  <30.368187, 32.033279, 34.140675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648483, 31.904058, 34.395107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148694, -0.805882, -0.573100,
		0.697750, 0.496175, -0.516677,
		0.700740, -0.323054, 0.636082,
		30.858706, 31.807142, 34.585934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925127, 31.859747, 33.840744>,  <30.368187, 32.033279, 34.140675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925127, 31.859747, 33.840744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917564, 31.607882, 34.151398>,  <30.913027, 31.456762, 34.337791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917564, 31.607882, 34.151398>,  <30.925127, 31.859747, 33.840744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917564, 31.607882, 34.151398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276849, -0.749700, -0.601086,
		0.960727, 0.203646, 0.188497,
		-0.018908, -0.629665, 0.776637,
		30.911892, 31.418982, 34.384388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431463, 31.354336, 33.971268>,  <30.925127, 31.859747, 33.840744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431463, 31.354336, 33.971268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150579, 31.157803, 34.177372>,  <30.982050, 31.039883, 34.301033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150579, 31.157803, 34.177372>,  <31.431463, 31.354336, 33.971268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150579, 31.157803, 34.177372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191954, -0.827564, -0.527534,
		0.685606, -0.271532, 0.675436,
		-0.702209, -0.491333, 0.515261,
		30.939917, 31.010403, 34.331951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130524, 31.430494, 34.187759>,  <31.431463, 31.354336, 33.971268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130524, 31.430494, 34.187759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781973, 31.614717, 34.255398>,  <31.572844, 31.725252, 34.295982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781973, 31.614717, 34.255398>,  <32.130524, 31.430494, 34.187759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781973, 31.614717, 34.255398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302689, 0.233406, 0.924068,
		0.386119, 0.856392, -0.342789,
		-0.871373, 0.460559, 0.169098,
		31.520561, 31.752886, 34.306126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265587, 32.151646, 34.454647>,  <32.130524, 31.430494, 34.187759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265587, 32.151646, 34.454647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908802, 32.009716, 34.566719>,  <31.694731, 31.924559, 34.633961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908802, 32.009716, 34.566719>,  <32.265587, 32.151646, 34.454647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908802, 32.009716, 34.566719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214789, 0.212730, 0.953211,
		-0.397823, 0.910410, -0.113536,
		-0.891966, -0.354823, 0.280175,
		31.641212, 31.903269, 34.650772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758429, 32.645645, 34.831699>,  <32.265587, 32.151646, 34.454647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758429, 32.645645, 34.831699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739483, 32.265896, 34.955921>,  <31.728115, 32.038048, 35.030457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739483, 32.265896, 34.955921>,  <31.758429, 32.645645, 34.831699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739483, 32.265896, 34.955921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253232, 0.289338, 0.923123,
		-0.966245, 0.122366, 0.226708,
		-0.047363, -0.949373, 0.310558,
		31.725273, 31.981083, 35.049088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827705, 32.613121, 35.484875>,  <31.758429, 32.645645, 34.831699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827705, 32.613121, 35.484875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895472, 32.219025, 35.494717>,  <31.936132, 31.982567, 35.500622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895472, 32.219025, 35.494717>,  <31.827705, 32.613121, 35.484875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895472, 32.219025, 35.494717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543478, 0.114221, 0.831616,
		-0.822150, -0.127519, 0.554805,
		0.169417, -0.985237, 0.024603,
		31.946297, 31.923454, 35.502098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697176, 32.311546, 36.203068>,  <31.827705, 32.613121, 35.484875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697176, 32.311546, 36.203068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945589, 32.062973, 36.012012>,  <32.094639, 31.913830, 35.897377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945589, 32.062973, 36.012012>,  <31.697176, 32.311546, 36.203068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945589, 32.062973, 36.012012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525438, -0.122092, 0.842027,
		-0.581576, -0.773898, 0.250700,
		0.621034, -0.621430, -0.477641,
		32.131901, 31.876545, 35.868721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291954, 32.233429, 36.777557>,  <31.697176, 32.311546, 36.203068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291954, 32.233429, 36.777557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599129, 32.040707, 36.946381>,  <32.783432, 31.925074, 37.047676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599129, 32.040707, 36.946381>,  <32.291954, 32.233429, 36.777557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599129, 32.040707, 36.946381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104219, 0.556161, 0.824514,
		-0.631989, -0.677162, 0.376884,
		0.767938, -0.481805, 0.422060,
		32.829510, 31.896166, 37.072998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093636, 31.882011, 37.414024>,  <32.291954, 32.233429, 36.777557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093636, 31.882011, 37.414024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489040, 31.922941, 37.458504>,  <32.726284, 31.947498, 37.485191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489040, 31.922941, 37.458504>,  <32.093636, 31.882011, 37.414024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489040, 31.922941, 37.458504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148393, 0.518379, 0.842177,
		0.028532, -0.849007, 0.527611,
		0.988517, 0.102323, 0.111197,
		32.785595, 31.953638, 37.491863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396767, 31.498842, 38.107239>,  <32.093636, 31.882011, 37.414024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396767, 31.498842, 38.107239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612801, 31.808908, 37.976131>,  <32.742420, 31.994947, 37.897469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612801, 31.808908, 37.976131>,  <32.396767, 31.498842, 38.107239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612801, 31.808908, 37.976131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116418, 0.454517, 0.883097,
		0.833521, -0.438788, 0.335720,
		0.540083, 0.775164, -0.327766,
		32.774826, 32.041458, 37.877800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951576, 31.743090, 38.756611>,  <32.396767, 31.498842, 38.107239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951576, 31.743090, 38.756611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974373, 32.053619, 38.505512>,  <32.988052, 32.239937, 38.354851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974373, 32.053619, 38.505512>,  <32.951576, 31.743090, 38.756611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974373, 32.053619, 38.505512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012439, 0.628172, 0.777975,
		0.998297, -0.052150, 0.026146,
		0.056996, 0.776325, -0.627751,
		32.991470, 32.286518, 38.317188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526760, 32.142605, 38.955425>,  <32.951576, 31.743090, 38.756611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526760, 32.142605, 38.955425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289886, 32.397873, 38.758629>,  <33.147762, 32.551033, 38.640553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289886, 32.397873, 38.758629>,  <33.526760, 32.142605, 38.955425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289886, 32.397873, 38.758629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058616, 0.643061, 0.763569,
		0.803667, 0.423336, -0.418218,
		-0.592185, 0.638169, -0.491992,
		33.112232, 32.589325, 38.611031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717216, 32.652592, 39.271690>,  <33.526760, 32.142605, 38.955425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717216, 32.652592, 39.271690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409168, 32.816727, 39.076328>,  <33.224339, 32.915207, 38.959110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409168, 32.816727, 39.076328>,  <33.717216, 32.652592, 39.271690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409168, 32.816727, 39.076328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214238, 0.554799, 0.803928,
		0.600845, 0.723757, -0.339353,
		-0.770122, 0.410334, -0.488404,
		33.178131, 32.939827, 38.929806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638538, 33.422653, 39.375721>,  <33.717216, 32.652592, 39.271690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638538, 33.422653, 39.375721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267025, 33.328251, 39.261417>,  <33.044117, 33.271610, 39.192833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267025, 33.328251, 39.261417>,  <33.638538, 33.422653, 39.375721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267025, 33.328251, 39.261417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370387, 0.563673, 0.738299,
		-0.013168, 0.791564, -0.610945,
		-0.928784, -0.236008, -0.285763,
		32.988388, 33.257450, 39.175690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280960, 34.014462, 39.440231>,  <33.638538, 33.422653, 39.375721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280960, 34.014462, 39.440231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002129, 33.727680, 39.437180>,  <32.834831, 33.555611, 39.435349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002129, 33.727680, 39.437180>,  <33.280960, 34.014462, 39.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002129, 33.727680, 39.437180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534049, 0.512081, 0.672729,
		-0.478411, 0.473017, -0.739849,
		-0.697075, -0.716957, -0.007629,
		32.793007, 33.512592, 39.434891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630859, 34.361626, 39.494110>,  <33.280960, 34.014462, 39.440231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630859, 34.361626, 39.494110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554066, 33.989037, 39.617725>,  <32.507988, 33.765484, 39.691895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554066, 33.989037, 39.617725>,  <32.630859, 34.361626, 39.494110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554066, 33.989037, 39.617725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445913, 0.363306, 0.818028,
		-0.874244, 0.019248, -0.485105,
		-0.191987, -0.931471, 0.309035,
		32.496471, 33.709595, 39.710434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969168, 34.434338, 39.721367>,  <32.630859, 34.361626, 39.494110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969168, 34.434338, 39.721367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114594, 34.109715, 39.904320>,  <32.201851, 33.914940, 40.014091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114594, 34.109715, 39.904320>,  <31.969168, 34.434338, 39.721367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114594, 34.109715, 39.904320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410452, 0.301201, 0.860702,
		-0.836272, -0.500653, -0.223599,
		0.363565, -0.811557, 0.457380,
		32.223663, 33.866249, 40.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403004, 34.156639, 40.116520>,  <31.969168, 34.434338, 39.721367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403004, 34.156639, 40.116520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728245, 34.007153, 40.295048>,  <31.923389, 33.917461, 40.402164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728245, 34.007153, 40.295048>,  <31.403004, 34.156639, 40.116520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728245, 34.007153, 40.295048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338901, 0.319484, 0.884916,
		-0.473297, -0.870786, 0.133122,
		0.813103, -0.373713, 0.446321,
		31.972176, 33.895039, 40.428944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104115, 33.925575, 40.737125>,  <31.403004, 34.156639, 40.116520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104115, 33.925575, 40.737125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501778, 33.947601, 40.774250>,  <31.740376, 33.960815, 40.796524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501778, 33.947601, 40.774250>,  <31.104115, 33.925575, 40.737125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501778, 33.947601, 40.774250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104640, 0.281588, 0.953813,
		0.026385, -0.957954, 0.285705,
		0.994160, 0.055063, 0.092811,
		31.800026, 33.964119, 40.802094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336504, 33.565712, 41.423489>,  <31.104115, 33.925575, 40.737125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336504, 33.565712, 41.423489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627447, 33.818306, 41.316025>,  <31.802013, 33.969864, 41.251545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627447, 33.818306, 41.316025>,  <31.336504, 33.565712, 41.423489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627447, 33.818306, 41.316025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083393, 0.307250, 0.947968,
		0.681173, -0.711916, 0.170820,
		0.727358, 0.631484, -0.268659,
		31.845655, 34.007751, 41.235428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897539, 33.416027, 41.826694>,  <31.336504, 33.565712, 41.423489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897539, 33.416027, 41.826694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890139, 33.792870, 41.692772>,  <31.885698, 34.018974, 41.612419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890139, 33.792870, 41.692772>,  <31.897539, 33.416027, 41.826694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890139, 33.792870, 41.692772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160507, 0.327721, 0.931041,
		0.986861, 0.070964, 0.145151,
		-0.018501, 0.942106, -0.334806,
		31.884588, 34.075500, 41.592331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117355, 33.813526, 42.375351>,  <31.897539, 33.416027, 41.826694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117355, 33.813526, 42.375351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972624, 34.114456, 42.155136>,  <31.885784, 34.295013, 42.023006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972624, 34.114456, 42.155136>,  <32.117355, 33.813526, 42.375351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972624, 34.114456, 42.155136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127696, 0.544986, 0.828664,
		0.923457, 0.370137, -0.101124,
		-0.361831, 0.752322, -0.550536,
		31.864075, 34.340153, 41.989975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400192, 34.333992, 42.685123>,  <32.117355, 33.813526, 42.375351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400192, 34.333992, 42.685123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102276, 34.516052, 42.489929>,  <31.923527, 34.625286, 42.372810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102276, 34.516052, 42.489929>,  <32.400192, 34.333992, 42.685123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102276, 34.516052, 42.489929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226879, 0.515005, 0.826617,
		0.627550, 0.726368, -0.280305,
		-0.744787, 0.455148, -0.487989,
		31.878839, 34.652596, 42.343533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432259, 35.024479, 42.808174>,  <32.400192, 34.333992, 42.685123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432259, 35.024479, 42.808174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054409, 34.977428, 42.685635>,  <31.827700, 34.949200, 42.612110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054409, 34.977428, 42.685635>,  <32.432259, 35.024479, 42.808174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054409, 34.977428, 42.685635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297590, 0.700493, 0.648653,
		0.138302, 0.703900, -0.696705,
		-0.944623, -0.117622, -0.306353,
		31.771023, 34.942142, 42.593727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060425, 35.702259, 42.850147>,  <32.432259, 35.024479, 42.808174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060425, 35.702259, 42.850147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754705, 35.444920, 42.832512>,  <31.571274, 35.290516, 42.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754705, 35.444920, 42.832512>,  <32.060425, 35.702259, 42.850147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754705, 35.444920, 42.832512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535233, 0.594752, 0.599829,
		-0.359683, 0.482044, -0.798913,
		-0.764300, -0.643353, -0.044084,
		31.525415, 35.251915, 42.819286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416515, 36.035645, 42.891319>,  <32.060425, 35.702259, 42.850147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416515, 36.035645, 42.891319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311274, 35.665081, 42.999062>,  <31.248129, 35.442745, 43.063705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311274, 35.665081, 42.999062>,  <31.416515, 36.035645, 42.891319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311274, 35.665081, 42.999062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471468, 0.367045, 0.801870,
		-0.841720, 0.083984, -0.533341,
		-0.263105, -0.926404, 0.269353,
		31.232342, 35.387161, 43.079868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649611, 36.024246, 42.960003>,  <31.416515, 36.035645, 42.891319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649611, 36.024246, 42.960003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825993, 35.744110, 43.184532>,  <30.931822, 35.576031, 43.319252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825993, 35.744110, 43.184532>,  <30.649611, 36.024246, 42.960003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825993, 35.744110, 43.184532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354140, 0.438907, 0.825800,
		-0.824708, -0.562928, -0.054479,
		0.440955, -0.700337, 0.561326,
		30.958279, 35.534008, 43.352928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108210, 35.845497, 43.334881>,  <30.649611, 36.024246, 42.960003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108210, 35.845497, 43.334881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437527, 35.742348, 43.537148>,  <30.635117, 35.680458, 43.658508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437527, 35.742348, 43.537148>,  <30.108210, 35.845497, 43.334881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437527, 35.742348, 43.537148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469021, 0.192706, 0.861907,
		-0.319706, -0.946766, 0.037706,
		0.823291, -0.257872, 0.505663,
		30.684513, 35.664986, 43.688847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808407, 35.835979, 43.932892>,  <30.108210, 35.845497, 43.334881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808407, 35.835979, 43.932892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196028, 35.789703, 44.020119>,  <30.428600, 35.761940, 44.072456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196028, 35.789703, 44.020119>,  <29.808407, 35.835979, 43.932892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196028, 35.789703, 44.020119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160633, 0.375266, 0.912892,
		-0.187444, -0.919670, 0.345069,
		0.969052, -0.115686, 0.218070,
		30.486744, 35.754997, 44.085541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855856, 35.513123, 44.577278>,  <29.808407, 35.835979, 43.932892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855856, 35.513123, 44.577278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189682, 35.728226, 44.529419>,  <30.389978, 35.857288, 44.500702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189682, 35.728226, 44.529419>,  <29.855856, 35.513123, 44.577278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189682, 35.728226, 44.529419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106904, 0.371140, 0.922403,
		0.540434, -0.757016, 0.367229,
		0.834567, 0.537756, -0.119649,
		30.440052, 35.889553, 44.493523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238657, 35.558788, 45.200214>,  <29.855856, 35.513123, 44.577278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238657, 35.558788, 45.200214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390961, 35.885155, 45.026176>,  <30.482344, 36.080975, 44.921753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390961, 35.885155, 45.026176>,  <30.238657, 35.558788, 45.200214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390961, 35.885155, 45.026176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059733, 0.447856, 0.892108,
		0.922743, -0.365668, 0.121789,
		0.380759, 0.815911, -0.435098,
		30.505188, 36.129929, 44.895645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669933, 35.944809, 45.814983>,  <30.238657, 35.558788, 45.200214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669933, 35.944809, 45.814983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624182, 36.226841, 45.535046>,  <30.596731, 36.396061, 45.367081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624182, 36.226841, 45.535046>,  <30.669933, 35.944809, 45.814983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624182, 36.226841, 45.535046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117403, 0.689940, 0.714282,
		0.986475, 0.163862, 0.003863,
		-0.114378, 0.705075, -0.699847,
		30.589869, 36.438362, 45.325092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129984, 36.433609, 45.916000>,  <30.669933, 35.944809, 45.814983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129984, 36.433609, 45.916000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835886, 36.618202, 45.717426>,  <30.659428, 36.728958, 45.598282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835886, 36.618202, 45.717426>,  <31.129984, 36.433609, 45.916000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835886, 36.618202, 45.717426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022848, 0.715128, 0.698620,
		0.677416, 0.525000, -0.515251,
		-0.735245, 0.461484, -0.496434,
		30.615313, 36.756649, 45.568497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310680, 37.132549, 45.845505>,  <31.129984, 36.433609, 45.916000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310680, 37.132549, 45.845505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918221, 37.121250, 45.769032>,  <30.682745, 37.114471, 45.723148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918221, 37.121250, 45.769032>,  <31.310680, 37.132549, 45.845505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918221, 37.121250, 45.769032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149155, 0.739715, 0.656182,
		0.122882, 0.672327, -0.729984,
		-0.981149, -0.028248, -0.191179,
		30.623877, 37.112778, 45.711678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066120, 37.724312, 45.568096>,  <31.310680, 37.132549, 45.845505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066120, 37.724312, 45.568096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732309, 37.591389, 45.743885>,  <30.532022, 37.511635, 45.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732309, 37.591389, 45.743885>,  <31.066120, 37.724312, 45.568096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732309, 37.591389, 45.743885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094211, 0.871954, 0.480438,
		-0.542850, 0.359536, -0.758978,
		-0.834529, -0.332310, 0.439468,
		30.481951, 37.491695, 45.875725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695156, 38.336945, 45.735466>,  <31.066120, 37.724312, 45.568096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695156, 38.336945, 45.735466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502367, 38.048504, 45.934551>,  <30.386694, 37.875439, 46.054005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502367, 38.048504, 45.934551>,  <30.695156, 38.336945, 45.735466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502367, 38.048504, 45.934551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416331, 0.688302, 0.594061,
		-0.770955, 0.079106, -0.631958,
		-0.481972, -0.721099, 0.497715,
		30.357775, 37.832176, 46.083866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038153, 38.684597, 45.782734>,  <30.695156, 38.336945, 45.735466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038153, 38.684597, 45.782734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081566, 38.391705, 46.051674>,  <30.107615, 38.215969, 46.213039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081566, 38.391705, 46.051674>,  <30.038153, 38.684597, 45.782734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081566, 38.391705, 46.051674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287742, 0.624256, 0.726299,
		-0.951538, -0.272291, -0.142942,
		0.108532, -0.732231, 0.672353,
		30.114126, 38.172035, 46.253380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429855, 38.605274, 46.122704>,  <30.038153, 38.684597, 45.782734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429855, 38.605274, 46.122704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702423, 38.469894, 46.382278>,  <29.865965, 38.388668, 46.538021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702423, 38.469894, 46.382278>,  <29.429855, 38.605274, 46.122704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702423, 38.469894, 46.382278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411328, 0.556285, 0.722050,
		-0.605371, -0.758945, 0.239850,
		0.681421, -0.338451, 0.648935,
		29.906849, 38.368359, 46.576958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059893, 38.449726, 46.684597>,  <29.429855, 38.605274, 46.122704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059893, 38.449726, 46.684597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433819, 38.488380, 46.821289>,  <29.658175, 38.511574, 46.903305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433819, 38.488380, 46.821289>,  <29.059893, 38.449726, 46.684597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433819, 38.488380, 46.821289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351032, 0.397207, 0.847941,
		-0.053795, -0.912627, 0.405239,
		0.934817, 0.096636, 0.341729,
		29.714264, 38.517372, 46.923809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122454, 38.241886, 47.380516>,  <29.059893, 38.449726, 46.684597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122454, 38.241886, 47.380516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452961, 38.461697, 47.331036>,  <29.651266, 38.593582, 47.301346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452961, 38.461697, 47.331036>,  <29.122454, 38.241886, 47.380516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452961, 38.461697, 47.331036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087775, 0.342539, 0.935394,
		0.556397, -0.762028, 0.331264,
		0.826267, 0.549527, -0.123701,
		29.700842, 38.626556, 47.293926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501247, 38.117718, 47.954712>,  <29.122454, 38.241886, 47.380516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501247, 38.117718, 47.954712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689531, 38.446739, 47.827061>,  <29.802502, 38.644150, 47.750469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689531, 38.446739, 47.827061>,  <29.501247, 38.117718, 47.954712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689531, 38.446739, 47.827061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026158, 0.374555, 0.926836,
		0.881901, -0.427922, 0.197823,
		0.470709, 0.822552, -0.319127,
		29.830744, 38.693504, 47.731323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049475, 38.231087, 48.405060>,  <29.501247, 38.117718, 47.954712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049475, 38.231087, 48.405060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955742, 38.579132, 48.231625>,  <29.899502, 38.787960, 48.127563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955742, 38.579132, 48.231625>,  <30.049475, 38.231087, 48.405060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955742, 38.579132, 48.231625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161216, 0.405046, 0.899971,
		0.958696, 0.280794, 0.045360,
		-0.234333, 0.870111, -0.433584,
		29.885443, 38.840164, 48.101551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487274, 38.827198, 48.681545>,  <30.049475, 38.231087, 48.405060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487274, 38.827198, 48.681545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142746, 38.979065, 48.546501>,  <29.936029, 39.070183, 48.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142746, 38.979065, 48.546501>,  <30.487274, 38.827198, 48.681545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142746, 38.979065, 48.546501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070607, 0.568604, 0.819576,
		0.503128, 0.729756, -0.462945,
		-0.861323, 0.379665, -0.337606,
		29.884350, 39.092964, 48.445221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584631, 39.561512, 48.863892>,  <30.487274, 38.827198, 48.681545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584631, 39.561512, 48.863892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197300, 39.502174, 48.783558>,  <29.964901, 39.466572, 48.735355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197300, 39.502174, 48.783558>,  <30.584631, 39.561512, 48.863892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197300, 39.502174, 48.783558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248853, 0.507847, 0.824721,
		-0.020349, 0.848578, -0.528678,
		-0.968328, -0.148345, -0.200837,
		29.906801, 39.457672, 48.723309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248426, 40.204033, 48.936466>,  <30.584631, 39.561512, 48.863892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248426, 40.204033, 48.936466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957979, 39.931244, 48.971497>,  <29.783710, 39.767570, 48.992516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957979, 39.931244, 48.971497>,  <30.248426, 40.204033, 48.936466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957979, 39.931244, 48.971497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451659, 0.569132, 0.687090,
		-0.518419, 0.459352, -0.721275,
		-0.726117, -0.681971, 0.087578,
		29.740145, 39.726654, 48.997768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726295, 40.612793, 48.942200>,  <30.248426, 40.204033, 48.936466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726295, 40.612793, 48.942200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592371, 40.282215, 49.123260>,  <29.512016, 40.083870, 49.231895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592371, 40.282215, 49.123260>,  <29.726295, 40.612793, 48.942200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592371, 40.282215, 49.123260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245300, 0.540258, 0.804953,
		-0.909796, 0.158472, -0.383611,
		-0.334812, -0.826443, 0.452651,
		29.491928, 40.034283, 49.259056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138943, 40.799656, 49.078152>,  <29.726295, 40.612793, 48.942200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138943, 40.799656, 49.078152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207254, 40.492069, 49.324574>,  <29.248241, 40.307518, 49.472427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207254, 40.492069, 49.324574>,  <29.138943, 40.799656, 49.078152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207254, 40.492069, 49.324574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337069, 0.541921, 0.769874,
		-0.925861, -0.339131, -0.166646,
		0.170779, -0.768968, 0.616054,
		29.258488, 40.261379, 49.509388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592081, 40.686428, 49.390041>,  <29.138943, 40.799656, 49.078152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592081, 40.686428, 49.390041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903706, 40.571014, 49.612686>,  <29.090679, 40.501766, 49.746273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903706, 40.571014, 49.612686>,  <28.592081, 40.686428, 49.390041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903706, 40.571014, 49.612686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358595, 0.523171, 0.773111,
		-0.514272, -0.801897, 0.304114,
		0.779059, -0.288536, 0.556609,
		29.137423, 40.484455, 49.779671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430948, 40.804485, 50.157589>,  <28.592081, 40.686428, 49.390041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430948, 40.804485, 50.157589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825956, 40.745232, 50.136200>,  <29.062962, 40.709679, 50.123367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825956, 40.745232, 50.136200>,  <28.430948, 40.804485, 50.157589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825956, 40.745232, 50.136200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143357, 0.704899, 0.694670,
		-0.065214, -0.693666, 0.717338,
		0.987520, -0.148138, -0.053473,
		29.122211, 40.700790, 50.120159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710592, 41.050930, 50.823959>,  <28.430948, 40.804485, 50.157589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710592, 41.050930, 50.823959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003387, 41.070866, 50.552162>,  <29.179064, 41.082829, 50.389084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003387, 41.070866, 50.552162>,  <28.710592, 41.050930, 50.823959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003387, 41.070866, 50.552162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379654, 0.798293, 0.467538,
		0.565738, -0.600204, 0.565416,
		0.731986, 0.049842, -0.679494,
		29.222982, 41.085819, 50.348312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331963, 41.219772, 51.123680>,  <28.710592, 41.050930, 50.823959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331963, 41.219772, 51.123680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509489, 41.325512, 50.781185>,  <29.616005, 41.388958, 50.575687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509489, 41.325512, 50.781185>,  <29.331963, 41.219772, 51.123680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509489, 41.325512, 50.781185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469611, 0.745174, 0.473477,
		0.763214, -0.612235, 0.206575,
		0.443814, 0.264355, -0.856240,
		29.642633, 41.404819, 50.524315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755703, 40.568581, 51.211288>,  <29.331963, 41.219772, 51.123680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755703, 40.568581, 51.211288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646616, 40.522064, 50.829273>,  <29.581163, 40.494156, 50.600063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646616, 40.522064, 50.829273>,  <29.755703, 40.568581, 51.211288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646616, 40.522064, 50.829273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670469, -0.734897, -0.101971,
		-0.689999, -0.668134, 0.278387,
		-0.272716, -0.116290, -0.955041,
		29.564800, 40.487179, 50.542763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492584, 40.861324, 51.190079>,  <29.755703, 40.568581, 51.211288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492584, 40.861324, 51.190079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858213, 40.843716, 51.028820>,  <31.077591, 40.833149, 50.932064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858213, 40.843716, 51.028820>,  <30.492584, 40.861324, 51.190079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858213, 40.843716, 51.028820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101315, -0.987359, -0.121893,
		-0.392686, 0.152265, -0.906980,
		0.914075, -0.044026, -0.403149,
		31.132437, 40.830509, 50.907875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502447, 40.372375, 50.643215>,  <30.492584, 40.861324, 51.190079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502447, 40.372375, 50.643215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879694, 40.368099, 50.776134>,  <31.106041, 40.365532, 50.855885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879694, 40.368099, 50.776134>,  <30.502447, 40.372375, 50.643215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879694, 40.368099, 50.776134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086892, -0.972671, 0.215318,
		0.320911, -0.231943, -0.918269,
		0.943115, -0.010692, 0.332294,
		31.162628, 40.364891, 50.875824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896084, 39.988869, 50.216297>,  <30.502447, 40.372375, 50.643215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896084, 39.988869, 50.216297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984846, 39.996071, 50.606258>,  <31.038103, 40.000393, 50.840237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984846, 39.996071, 50.606258>,  <30.896084, 39.988869, 50.216297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984846, 39.996071, 50.606258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193433, -0.979145, 0.062113,
		0.955689, -0.202361, -0.213795,
		0.221905, 0.018006, 0.974902,
		31.051418, 40.001472, 50.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427221, 39.541386, 50.440292>,  <30.896084, 39.988869, 50.216297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427221, 39.541386, 50.440292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200750, 39.590248, 50.766365>,  <31.064867, 39.619564, 50.962009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200750, 39.590248, 50.766365>,  <31.427221, 39.541386, 50.440292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200750, 39.590248, 50.766365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274833, -0.960344, -0.046979,
		0.777115, -0.250637, 0.577298,
		-0.566179, 0.122152, 0.815181,
		31.030897, 39.626892, 51.010918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854210, 39.157623, 50.719742>,  <31.427221, 39.541386, 50.440292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854210, 39.157623, 50.719742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485781, 39.028694, 50.807129>,  <31.264723, 38.951336, 50.859562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485781, 39.028694, 50.807129>,  <31.854210, 39.157623, 50.719742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485781, 39.028694, 50.807129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171460, -0.839473, -0.515642,
		0.349603, -0.437486, 0.828483,
		-0.921075, -0.322322, 0.218471,
		31.209457, 38.931999, 50.872669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844198, 38.389835, 50.953686>,  <31.854210, 39.157623, 50.719742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844198, 38.389835, 50.953686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484463, 38.471703, 50.799126>,  <31.268621, 38.520821, 50.706390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484463, 38.471703, 50.799126>,  <31.844198, 38.389835, 50.953686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484463, 38.471703, 50.799126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065541, -0.810613, -0.581902,
		-0.432314, -0.548652, 0.715602,
		-0.899338, 0.204664, -0.386399,
		31.214661, 38.533100, 50.683205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505169, 37.842773, 50.895466>,  <31.844198, 38.389835, 50.953686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505169, 37.842773, 50.895466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333794, 38.072342, 50.616306>,  <31.230968, 38.210083, 50.448811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333794, 38.072342, 50.616306>,  <31.505169, 37.842773, 50.895466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333794, 38.072342, 50.616306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000560, -0.772206, -0.635372,
		-0.903570, -0.272609, 0.330522,
		-0.428439, 0.573918, -0.697895,
		31.205261, 38.244518, 50.406937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044466, 37.460575, 50.556847>,  <31.505169, 37.842773, 50.895466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044466, 37.460575, 50.556847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150015, 37.749458, 50.301098>,  <31.213345, 37.922787, 50.147648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150015, 37.749458, 50.301098>,  <31.044466, 37.460575, 50.556847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150015, 37.749458, 50.301098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177075, -0.687866, -0.703907,
		-0.948165, 0.072525, -0.309393,
		0.263872, 0.722205, -0.639368,
		31.229176, 37.966122, 50.109287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762074, 37.273560, 49.969074>,  <31.044466, 37.460575, 50.556847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762074, 37.273560, 49.969074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993834, 37.551620, 49.798870>,  <31.132889, 37.718456, 49.696747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993834, 37.551620, 49.798870>,  <30.762074, 37.273560, 49.969074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993834, 37.551620, 49.798870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181875, -0.619179, -0.763897,
		-0.794492, 0.365211, -0.485183,
		0.579399, 0.695153, -0.425510,
		31.167654, 37.760166, 49.671219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629271, 37.255211, 49.225819>,  <30.762074, 37.273560, 49.969074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629271, 37.255211, 49.225819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988556, 37.430443, 49.240211>,  <31.204128, 37.535583, 49.248848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988556, 37.430443, 49.240211>,  <30.629271, 37.255211, 49.225819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988556, 37.430443, 49.240211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286052, -0.520412, -0.804578,
		-0.333745, 0.732977, -0.592756,
		0.898214, 0.438082, 0.035985,
		31.258020, 37.561867, 49.251007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746292, 37.593384, 48.558346>,  <30.629271, 37.255211, 49.225819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746292, 37.593384, 48.558346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087919, 37.515778, 48.751396>,  <31.292896, 37.469215, 48.867226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087919, 37.515778, 48.751396>,  <30.746292, 37.593384, 48.558346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087919, 37.515778, 48.751396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330666, -0.513724, -0.791674,
		0.401532, 0.835731, -0.374601,
		0.854068, -0.194014, 0.482624,
		31.344139, 37.457573, 48.896183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214304, 37.567657, 47.976463>,  <30.746292, 37.593384, 48.558346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214304, 37.567657, 47.976463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419561, 37.422749, 48.287704>,  <31.542715, 37.335804, 48.474449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419561, 37.422749, 48.287704>,  <31.214304, 37.567657, 47.976463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419561, 37.422749, 48.287704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359636, -0.732386, -0.578163,
		0.779325, 0.576513, -0.245531,
		0.513142, -0.362275, 0.778101,
		31.573503, 37.314068, 48.521133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878851, 37.442741, 47.835110>,  <31.214304, 37.567657, 47.976463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878851, 37.442741, 47.835110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830526, 37.191639, 48.142700>,  <31.801531, 37.040977, 48.327255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830526, 37.191639, 48.142700>,  <31.878851, 37.442741, 47.835110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830526, 37.191639, 48.142700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476076, -0.716394, -0.510031,
		0.871066, 0.304475, 0.385408,
		-0.120812, -0.627754, 0.768979,
		31.794283, 37.003311, 48.373394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520660, 37.070591, 47.938156>,  <31.878851, 37.442741, 47.835110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520660, 37.070591, 47.938156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251873, 36.847530, 48.133083>,  <32.090599, 36.713692, 48.250042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251873, 36.847530, 48.133083>,  <32.520660, 37.070591, 47.938156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251873, 36.847530, 48.133083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396742, -0.826701, -0.398950,
		0.625344, -0.074741, 0.776762,
		-0.671968, -0.557655, 0.487320,
		32.050282, 36.680233, 48.279278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899097, 36.598099, 48.141544>,  <32.520660, 37.070591, 47.938156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899097, 36.598099, 48.141544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535454, 36.436642, 48.182705>,  <32.317268, 36.339767, 48.207401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535454, 36.436642, 48.182705>,  <32.899097, 36.598099, 48.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535454, 36.436642, 48.182705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319824, -0.834649, -0.448412,
		0.266886, -0.374746, 0.887884,
		-0.909112, -0.403642, 0.102903,
		32.262722, 36.315548, 48.213577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935566, 35.911167, 48.482758>,  <32.899097, 36.598099, 48.141544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935566, 35.911167, 48.482758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605412, 35.921047, 48.257149>,  <32.407318, 35.926975, 48.121784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605412, 35.921047, 48.257149>,  <32.935566, 35.911167, 48.482758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605412, 35.921047, 48.257149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248122, -0.881519, -0.401696,
		-0.507120, -0.471502, 0.721467,
		-0.825388, 0.024696, -0.564026,
		32.357796, 35.928455, 48.087940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699989, 35.297993, 48.669308>,  <32.935566, 35.911167, 48.482758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699989, 35.297993, 48.669308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535591, 35.417130, 48.324665>,  <32.436954, 35.488613, 48.117878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535591, 35.417130, 48.324665>,  <32.699989, 35.297993, 48.669308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535591, 35.417130, 48.324665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305864, -0.845289, -0.438103,
		-0.858796, -0.443593, 0.256309,
		-0.410994, 0.297845, -0.861610,
		32.412292, 35.506485, 48.066181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457722, 34.644844, 48.444145>,  <32.699989, 35.297993, 48.669308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457722, 34.644844, 48.444145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428337, 34.897480, 48.135422>,  <32.410706, 35.049061, 47.950188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428337, 34.897480, 48.135422>,  <32.457722, 34.644844, 48.444145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428337, 34.897480, 48.135422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077930, -0.767902, -0.635810,
		-0.994249, -0.106854, 0.007190,
		-0.073460, 0.631593, -0.771812,
		32.406300, 35.086956, 47.903877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035877, 34.307873, 47.951233>,  <32.457722, 34.644844, 48.444145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035877, 34.307873, 47.951233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208218, 34.588120, 47.723724>,  <32.311623, 34.756268, 47.587219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208218, 34.588120, 47.723724>,  <32.035877, 34.307873, 47.951233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208218, 34.588120, 47.723724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013951, -0.635368, -0.772083,
		-0.902314, 0.324721, -0.283525,
		0.430854, 0.700617, -0.568771,
		32.337475, 34.798306, 47.553093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651855, 34.441132, 47.242424>,  <32.035877, 34.307873, 47.951233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651855, 34.441132, 47.242424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029549, 34.564491, 47.196266>,  <32.256165, 34.638508, 47.168571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029549, 34.564491, 47.196266>,  <31.651855, 34.441132, 47.242424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029549, 34.564491, 47.196266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114428, -0.635907, -0.763235,
		-0.308762, 0.707467, -0.635733,
		0.944231, 0.308404, -0.115390,
		32.312817, 34.657013, 47.161648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729427, 34.469730, 46.464340>,  <31.651855, 34.441132, 47.242424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729427, 34.469730, 46.464340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094276, 34.455139, 46.627659>,  <32.313187, 34.446384, 46.725651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094276, 34.455139, 46.627659>,  <31.729427, 34.469730, 46.464340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094276, 34.455139, 46.627659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322777, -0.550058, -0.770228,
		0.252686, 0.834329, -0.489944,
		0.912121, -0.036483, 0.408294,
		32.367912, 34.444195, 46.750149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249611, 34.486755, 45.868195>,  <31.729427, 34.469730, 46.464340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249611, 34.486755, 45.868195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462574, 34.388123, 46.192104>,  <32.590351, 34.328941, 46.386452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462574, 34.388123, 46.192104>,  <32.249611, 34.486755, 45.868195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462574, 34.388123, 46.192104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587464, -0.581117, -0.563196,
		0.609452, 0.775563, -0.164529,
		0.532405, -0.246586, 0.809778,
		32.622295, 34.314148, 46.435040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881134, 34.488045, 45.696507>,  <32.249611, 34.486755, 45.868195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881134, 34.488045, 45.696507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915226, 34.254566, 46.019501>,  <32.935680, 34.114479, 46.213299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915226, 34.254566, 46.019501>,  <32.881134, 34.488045, 45.696507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915226, 34.254566, 46.019501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408294, -0.718807, -0.562684,
		0.908863, 0.377649, 0.177057,
		0.085228, -0.583694, 0.807489,
		32.940796, 34.079456, 46.261749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559692, 34.283669, 45.763775>,  <32.881134, 34.488045, 45.696507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559692, 34.283669, 45.763775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335384, 33.999771, 45.934330>,  <33.200802, 33.829433, 46.036663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335384, 33.999771, 45.934330>,  <33.559692, 34.283669, 45.763775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335384, 33.999771, 45.934330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516196, -0.702328, -0.490181,
		0.647366, -0.054778, 0.760208,
		-0.560766, -0.709743, 0.426387,
		33.167156, 33.786850, 46.062244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989124, 33.758823, 45.907200>,  <33.559692, 34.283669, 45.763775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989124, 33.758823, 45.907200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651363, 33.547874, 45.944851>,  <33.448708, 33.421307, 45.967442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651363, 33.547874, 45.944851>,  <33.989124, 33.758823, 45.907200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651363, 33.547874, 45.944851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405839, -0.744447, -0.530183,
		0.349674, -0.409490, 0.842642,
		-0.844407, -0.527369, 0.094127,
		33.398041, 33.389664, 45.973087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172668, 33.043934, 46.208145>,  <33.989124, 33.758823, 45.907200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172668, 33.043934, 46.208145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815975, 33.020855, 46.028599>,  <33.601959, 33.007008, 45.920872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815975, 33.020855, 46.028599>,  <34.172668, 33.043934, 46.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815975, 33.020855, 46.028599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293318, -0.828991, -0.476171,
		-0.344629, -0.556278, 0.756165,
		-0.891737, -0.057694, -0.448861,
		33.548454, 33.003548, 45.893940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957378, 32.401592, 46.266590>,  <34.172668, 33.043934, 46.208145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957378, 32.401592, 46.266590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741302, 32.525826, 45.953739>,  <33.611656, 32.600365, 45.766029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741302, 32.525826, 45.953739>,  <33.957378, 32.401592, 46.266590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741302, 32.525826, 45.953739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381264, -0.738221, -0.556478,
		-0.750218, -0.598805, 0.280368,
		-0.540195, 0.310586, -0.782129,
		33.579243, 32.618999, 45.719101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836010, 31.824333, 45.984535>,  <33.957378, 32.401592, 46.266590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836010, 31.824333, 45.984535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776752, 32.075966, 45.679298>,  <33.741196, 32.226944, 45.496159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776752, 32.075966, 45.679298>,  <33.836010, 31.824333, 45.984535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776752, 32.075966, 45.679298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333435, -0.694654, -0.637399,
		-0.931060, -0.348870, -0.106847,
		-0.148148, 0.629083, -0.763090,
		33.732307, 32.264690, 45.450371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582661, 31.435934, 45.380344>,  <33.836010, 31.824333, 45.984535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582661, 31.435934, 45.380344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723904, 31.783897, 45.242607>,  <33.808647, 31.992676, 45.159966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723904, 31.783897, 45.242607>,  <33.582661, 31.435934, 45.380344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723904, 31.783897, 45.242607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389695, -0.471360, -0.791175,
		-0.850562, 0.145177, -0.505439,
		0.353104, 0.869910, -0.344346,
		33.829834, 32.044872, 45.139305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297539, 31.490150, 44.646027>,  <33.582661, 31.435934, 45.380344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297539, 31.490150, 44.646027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597679, 31.753902, 44.627300>,  <33.777763, 31.912153, 44.616062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597679, 31.753902, 44.627300>,  <33.297539, 31.490150, 44.646027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597679, 31.753902, 44.627300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253748, -0.352708, -0.900672,
		-0.610399, 0.663939, -0.431971,
		0.750350, 0.659380, -0.046820,
		33.822784, 31.951717, 44.613255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247768, 31.936707, 44.008904>,  <33.297539, 31.490150, 44.646027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247768, 31.936707, 44.008904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629700, 31.928593, 44.127495>,  <33.858856, 31.923725, 44.198650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629700, 31.928593, 44.127495>,  <33.247768, 31.936707, 44.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629700, 31.928593, 44.127495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279353, -0.279002, -0.918760,
		0.101355, 0.960076, -0.260732,
		0.954824, -0.020285, 0.296478,
		33.916145, 31.922506, 44.216438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614349, 32.056446, 43.427109>,  <33.247768, 31.936707, 44.008904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614349, 32.056446, 43.427109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933243, 31.948856, 43.643284>,  <34.124580, 31.884304, 43.772987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933243, 31.948856, 43.643284>,  <33.614349, 32.056446, 43.427109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933243, 31.948856, 43.643284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518436, -0.153574, -0.841213,
		0.309260, 0.950826, 0.017010,
		0.797234, -0.268972, 0.540437,
		34.172413, 31.868164, 43.805416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215374, 32.462635, 43.167492>,  <33.614349, 32.056446, 43.427109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215374, 32.462635, 43.167492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343742, 32.129223, 43.347374>,  <34.420761, 31.929174, 43.455303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343742, 32.129223, 43.347374>,  <34.215374, 32.462635, 43.167492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343742, 32.129223, 43.347374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383378, -0.319851, -0.866439,
		0.866045, 0.450462, 0.216913,
		0.320918, -0.833535, 0.449702,
		34.440018, 31.879162, 43.482285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820629, 32.364357, 42.805847>,  <34.215374, 32.462635, 43.167492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820629, 32.364357, 42.805847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707932, 32.013351, 42.961071>,  <34.640312, 31.802748, 43.054207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707932, 32.013351, 42.961071>,  <34.820629, 32.364357, 42.805847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707932, 32.013351, 42.961071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201640, -0.449564, -0.870192,
		0.938062, -0.166926, 0.303604,
		-0.281747, -0.877513, 0.388060,
		34.623409, 31.750097, 43.077488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346699, 31.910130, 42.602615>,  <34.820629, 32.364357, 42.805847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346699, 31.910130, 42.602615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056396, 31.648651, 42.688370>,  <34.882214, 31.491764, 42.739822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056396, 31.648651, 42.688370>,  <35.346699, 31.910130, 42.602615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056396, 31.648651, 42.688370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073053, -0.383099, -0.920814,
		0.684065, -0.652623, 0.325790,
		-0.725754, -0.653696, 0.214388,
		34.838669, 31.452543, 42.752686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543842, 31.304537, 42.400345>,  <35.346699, 31.910130, 42.602615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543842, 31.304537, 42.400345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149696, 31.236349, 42.400925>,  <34.913208, 31.195436, 42.401272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149696, 31.236349, 42.400925>,  <35.543842, 31.304537, 42.400345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149696, 31.236349, 42.400925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049410, -0.293730, -0.954611,
		0.163158, -0.940565, 0.297853,
		-0.985362, -0.170469, 0.001451,
		34.854088, 31.185209, 42.401360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495930, 30.709663, 42.114868>,  <35.543842, 31.304537, 42.400345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495930, 30.709663, 42.114868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126553, 30.860033, 42.084045>,  <34.904926, 30.950254, 42.065552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126553, 30.860033, 42.084045>,  <35.495930, 30.709663, 42.114868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126553, 30.860033, 42.084045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023970, -0.256928, -0.966133,
		-0.382993, -0.890319, 0.246268,
		-0.923440, 0.375926, -0.077061,
		34.849522, 30.972811, 42.060928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936028, 30.101961, 41.899727>,  <35.495930, 30.709663, 42.114868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936028, 30.101961, 41.899727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843319, 30.478981, 41.803493>,  <34.787693, 30.705193, 41.745754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843319, 30.478981, 41.803493>,  <34.936028, 30.101961, 41.899727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843319, 30.478981, 41.803493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030815, -0.254311, -0.966631,
		-0.972283, -0.216619, 0.087985,
		-0.231767, 0.942551, -0.240587,
		34.773788, 30.761745, 41.731316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364052, 30.033537, 41.377090>,  <34.936028, 30.101961, 41.899727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364052, 30.033537, 41.377090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517414, 30.399675, 41.327873>,  <34.609432, 30.619358, 41.298344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517414, 30.399675, 41.327873>,  <34.364052, 30.033537, 41.377090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517414, 30.399675, 41.327873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011741, -0.138049, -0.990356,
		-0.923506, 0.378263, -0.063676,
		0.383405, 0.915347, -0.123048,
		34.632435, 30.674280, 41.290958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006588, 30.268129, 40.781929>,  <34.364052, 30.033537, 41.377090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006588, 30.268129, 40.781929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306564, 30.531698, 40.805309>,  <34.486549, 30.689840, 40.819336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306564, 30.531698, 40.805309>,  <34.006588, 30.268129, 40.781929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306564, 30.531698, 40.805309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009882, 0.099504, -0.994988,
		-0.661435, 0.745601, 0.081133,
		0.749938, 0.658921, 0.058447,
		34.531548, 30.729374, 40.822842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803619, 30.805750, 40.372791>,  <34.006588, 30.268129, 40.781929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803619, 30.805750, 40.372791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199177, 30.852100, 40.410015>,  <34.436512, 30.879911, 40.432350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199177, 30.852100, 40.410015>,  <33.803619, 30.805750, 40.372791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199177, 30.852100, 40.410015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077043, 0.135775, -0.987740,
		-0.127090, 0.983940, 0.125339,
		0.988895, 0.115876, 0.093061,
		34.495846, 30.886864, 40.437935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008511, 31.358742, 39.952301>,  <33.803619, 30.805750, 40.372791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008511, 31.358742, 39.952301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364628, 31.185764, 40.009380>,  <34.578300, 31.081978, 40.043629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364628, 31.185764, 40.009380>,  <34.008511, 31.358742, 39.952301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364628, 31.185764, 40.009380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177907, 0.041834, -0.983158,
		0.419190, 0.900690, 0.114180,
		0.890297, -0.432443, 0.142703,
		34.631718, 31.056032, 40.052193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491272, 31.672750, 39.504616>,  <34.008511, 31.358742, 39.952301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491272, 31.672750, 39.504616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626068, 31.305599, 39.588463>,  <34.706944, 31.085308, 39.638771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626068, 31.305599, 39.588463>,  <34.491272, 31.672750, 39.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626068, 31.305599, 39.588463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266682, -0.120467, -0.956226,
		0.902951, 0.378138, 0.204186,
		0.336988, -0.917878, 0.209618,
		34.727165, 31.030235, 39.651348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146500, 31.654255, 39.194744>,  <34.491272, 31.672750, 39.504616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146500, 31.654255, 39.194744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064663, 31.268396, 39.261196>,  <35.015560, 31.036882, 39.301067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064663, 31.268396, 39.261196>,  <35.146500, 31.654255, 39.194744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064663, 31.268396, 39.261196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419671, -0.239778, -0.875433,
		0.884318, -0.109387, 0.453891,
		-0.204594, -0.964645, 0.166134,
		35.003284, 30.979002, 39.311035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755096, 31.404337, 39.159805>,  <35.146500, 31.654255, 39.194744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755096, 31.404337, 39.159805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473988, 31.134602, 39.069138>,  <35.305321, 30.972759, 39.014736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473988, 31.134602, 39.069138>,  <35.755096, 31.404337, 39.159805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473988, 31.134602, 39.069138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468149, -0.198451, -0.861077,
		0.535677, -0.711254, 0.455157,
		-0.702770, -0.674341, -0.226667,
		35.263157, 30.932299, 39.001137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110294, 30.802246, 38.952988>,  <35.755096, 31.404337, 39.159805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110294, 30.802246, 38.952988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752644, 30.798819, 38.773895>,  <35.538052, 30.796762, 38.666439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752644, 30.798819, 38.773895>,  <36.110294, 30.802246, 38.952988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752644, 30.798819, 38.773895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444252, -0.142756, -0.884455,
		-0.056334, -0.989721, 0.131450,
		-0.894129, -0.008572, -0.447727,
		35.484406, 30.796247, 38.639576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539505, 30.673843, 39.622952>,  <36.110294, 30.802246, 38.952988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539505, 30.673843, 39.622952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613213, 30.966705, 39.360657>,  <36.657436, 31.142422, 39.203278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613213, 30.966705, 39.360657>,  <36.539505, 30.673843, 39.622952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613213, 30.966705, 39.360657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343359, 0.577179, 0.740925,
		0.920951, -0.361683, -0.145035,
		0.184269, 0.732154, -0.655740,
		36.668491, 31.186352, 39.163933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225842, 31.011049, 39.723488>,  <36.539505, 30.673843, 39.622952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225842, 31.011049, 39.723488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024635, 31.306841, 39.544540>,  <36.903912, 31.484316, 39.437172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024635, 31.306841, 39.544540>,  <37.225842, 31.011049, 39.723488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024635, 31.306841, 39.544540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365994, 0.651177, 0.664843,
		0.782958, 0.170692, -0.598199,
		-0.503017, 0.739481, -0.447372,
		36.873730, 31.528685, 39.410328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751194, 31.511366, 39.637794>,  <37.225842, 31.011049, 39.723488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751194, 31.511366, 39.637794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383396, 31.666847, 39.614334>,  <37.162716, 31.760136, 39.600258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383396, 31.666847, 39.614334>,  <37.751194, 31.511366, 39.637794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383396, 31.666847, 39.614334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259332, 0.711928, 0.652614,
		0.295430, 0.584864, -0.755417,
		-0.919493, 0.388705, -0.058652,
		37.107548, 31.783459, 39.596737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870983, 32.260368, 39.575993>,  <37.751194, 31.511366, 39.637794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870983, 32.260368, 39.575993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498947, 32.231815, 39.720119>,  <37.275726, 32.214684, 39.806595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498947, 32.231815, 39.720119>,  <37.870983, 32.260368, 39.575993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498947, 32.231815, 39.720119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199987, 0.724403, 0.659731,
		-0.308107, 0.685672, -0.659488,
		-0.930094, -0.071379, 0.360319,
		37.219917, 32.210403, 39.828217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536484, 32.957481, 39.649323>,  <37.870983, 32.260368, 39.575993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536484, 32.957481, 39.649323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336479, 32.715786, 39.897480>,  <37.216476, 32.570770, 40.046375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336479, 32.715786, 39.897480>,  <37.536484, 32.957481, 39.649323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336479, 32.715786, 39.897480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037822, 0.730925, 0.681409,
		-0.865194, 0.317246, -0.388322,
		-0.500009, -0.604238, 0.620393,
		37.186478, 32.534515, 40.083599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912579, 33.339893, 39.960209>,  <37.536484, 32.957481, 39.649323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912579, 33.339893, 39.960209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953560, 33.024357, 40.202606>,  <36.978149, 32.835033, 40.348045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953560, 33.024357, 40.202606>,  <36.912579, 33.339893, 39.960209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953560, 33.024357, 40.202606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250187, 0.569184, 0.783222,
		-0.962762, -0.231855, -0.139044,
		0.102452, -0.788843, 0.605995,
		36.984295, 32.787704, 40.384403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323868, 33.374939, 40.324627>,  <36.912579, 33.339893, 39.960209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323868, 33.374939, 40.324627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593349, 33.178928, 40.545891>,  <36.755039, 33.061321, 40.678650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593349, 33.178928, 40.545891>,  <36.323868, 33.374939, 40.324627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593349, 33.178928, 40.545891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308035, 0.494191, 0.812952,
		-0.671739, -0.718085, 0.181993,
		0.673707, -0.490031, 0.553162,
		36.795464, 33.031918, 40.711838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106739, 33.543968, 41.009106>,  <36.323868, 33.374939, 40.324627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106739, 33.543968, 41.009106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460335, 33.385494, 41.108383>,  <36.672493, 33.290409, 41.167950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460335, 33.385494, 41.108383>,  <36.106739, 33.543968, 41.009106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460335, 33.385494, 41.108383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082556, 0.390255, 0.916998,
		-0.460155, -0.831109, 0.312275,
		0.883992, -0.396180, 0.248191,
		36.725533, 33.266640, 41.182842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954254, 33.187366, 41.718376>,  <36.106739, 33.543968, 41.009106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954254, 33.187366, 41.718376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353497, 33.204475, 41.700645>,  <36.593040, 33.214741, 41.690006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353497, 33.204475, 41.700645>,  <35.954254, 33.187366, 41.718376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353497, 33.204475, 41.700645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035509, 0.188478, 0.981435,
		0.050330, -0.981146, 0.186601,
		0.998101, 0.042769, -0.044326,
		36.652927, 33.217308, 41.687347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273357, 32.943954, 42.375675>,  <35.954254, 33.187366, 41.718376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273357, 32.943954, 42.375675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562622, 33.188480, 42.247089>,  <36.736179, 33.335194, 42.169937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562622, 33.188480, 42.247089>,  <36.273357, 32.943954, 42.375675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562622, 33.188480, 42.247089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030082, 0.492868, 0.869584,
		0.690028, -0.619176, 0.374811,
		0.723158, 0.611312, -0.321467,
		36.779568, 33.371872, 42.150650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654003, 33.039379, 42.951443>,  <36.273357, 32.943954, 42.375675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654003, 33.039379, 42.951443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756420, 33.339348, 42.707458>,  <36.817871, 33.519329, 42.561066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756420, 33.339348, 42.707458>,  <36.654003, 33.039379, 42.951443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756420, 33.339348, 42.707458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029685, 0.624601, 0.780379,
		0.966209, -0.217919, 0.137664,
		0.256044, 0.749923, -0.609964,
		36.833233, 33.564323, 42.524467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315456, 33.180210, 43.036266>,  <36.654003, 33.039379, 42.951443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315456, 33.180210, 43.036266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130836, 33.510460, 42.906456>,  <37.020065, 33.708611, 42.828568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130836, 33.510460, 42.906456>,  <37.315456, 33.180210, 43.036266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130836, 33.510460, 42.906456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097822, 0.316228, 0.943626,
		0.881706, 0.467274, -0.065190,
		-0.461547, 0.825624, -0.324530,
		36.992371, 33.758148, 42.809097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398399, 33.633350, 43.564999>,  <37.315456, 33.180210, 43.036266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398399, 33.633350, 43.564999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143349, 33.838055, 43.334682>,  <36.990318, 33.960876, 43.196495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143349, 33.838055, 43.334682>,  <37.398399, 33.633350, 43.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143349, 33.838055, 43.334682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294055, 0.529151, 0.795946,
		0.712011, 0.676832, -0.186917,
		-0.637630, 0.511759, -0.575787,
		36.952061, 33.991581, 43.161945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543907, 34.368454, 43.689346>,  <37.398399, 33.633350, 43.564999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543907, 34.368454, 43.689346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169632, 34.317032, 43.557915>,  <36.945068, 34.286179, 43.479057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169632, 34.317032, 43.557915>,  <37.543907, 34.368454, 43.689346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169632, 34.317032, 43.557915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350275, 0.450369, 0.821265,
		0.042404, 0.883539, -0.466434,
		-0.935686, -0.128555, -0.328579,
		36.888927, 34.278465, 43.459339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234348, 34.974411, 43.803650>,  <37.543907, 34.368454, 43.689346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234348, 34.974411, 43.803650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919224, 34.731281, 43.763840>,  <36.730148, 34.585403, 43.739952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919224, 34.731281, 43.763840>,  <37.234348, 34.974411, 43.803650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919224, 34.731281, 43.763840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555738, 0.631830, 0.540321,
		-0.265535, 0.480982, -0.835552,
		-0.787812, -0.607822, -0.099527,
		36.682880, 34.548935, 43.733982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657753, 35.463997, 43.671230>,  <37.234348, 34.974411, 43.803650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657753, 35.463997, 43.671230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490650, 35.120510, 43.789951>,  <36.390388, 34.914417, 43.861183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490650, 35.120510, 43.789951>,  <36.657753, 35.463997, 43.671230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490650, 35.120510, 43.789951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577838, 0.503202, 0.642566,
		-0.701132, 0.096932, -0.706413,
		-0.417753, -0.858715, 0.296800,
		36.365326, 34.862896, 43.878990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020615, 35.610191, 43.708134>,  <36.657753, 35.463997, 43.671230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020615, 35.610191, 43.708134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046574, 35.278782, 43.930607>,  <36.062149, 35.079937, 44.064091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046574, 35.278782, 43.930607>,  <36.020615, 35.610191, 43.708134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046574, 35.278782, 43.930607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528539, 0.444221, 0.723404,
		-0.846424, -0.340915, -0.409075,
		0.064900, -0.828519, 0.556186,
		36.066044, 35.030228, 44.097462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362503, 35.420406, 43.999554>,  <36.020615, 35.610191, 43.708134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362503, 35.420406, 43.999554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584206, 35.216984, 44.263123>,  <35.717228, 35.094929, 44.421265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584206, 35.216984, 44.263123>,  <35.362503, 35.420406, 43.999554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584206, 35.216984, 44.263123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604843, 0.297763, 0.738581,
		-0.571811, -0.807904, -0.142560,
		0.554254, -0.508556, 0.658919,
		35.750481, 35.064419, 44.460796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893703, 35.079872, 44.494770>,  <35.362503, 35.420406, 43.999554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893703, 35.079872, 44.494770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238380, 35.082890, 44.697720>,  <35.445187, 35.084698, 44.819489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238380, 35.082890, 44.697720>,  <34.893703, 35.079872, 44.494770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238380, 35.082890, 44.697720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500020, 0.182911, 0.846477,
		-0.086423, -0.983101, 0.161383,
		0.861691, 0.007540, 0.507378,
		35.496887, 35.085152, 44.849934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723278, 34.839882, 45.175919>,  <34.893703, 35.079872, 44.494770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723278, 34.839882, 45.175919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081764, 35.008873, 45.230034>,  <35.296856, 35.110268, 45.262501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081764, 35.008873, 45.230034>,  <34.723278, 34.839882, 45.175919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081764, 35.008873, 45.230034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247794, 0.223812, 0.942606,
		0.367956, -0.878303, 0.305273,
		0.896218, 0.422482, 0.135285,
		35.350632, 35.135616, 45.270618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927368, 34.588436, 45.842510>,  <34.723278, 34.839882, 45.175919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927368, 34.588436, 45.842510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146473, 34.915821, 45.773148>,  <35.277935, 35.112251, 45.731529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146473, 34.915821, 45.773148>,  <34.927368, 34.588436, 45.842510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146473, 34.915821, 45.773148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258874, 0.362909, 0.895143,
		0.795573, -0.445438, 0.410668,
		0.547766, 0.818463, -0.173409,
		35.310802, 35.161362, 45.721127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446388, 34.663113, 46.340015>,  <34.927368, 34.588436, 45.842510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446388, 34.663113, 46.340015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337692, 35.017891, 46.190628>,  <35.272476, 35.230759, 46.100994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337692, 35.017891, 46.190628>,  <35.446388, 34.663113, 46.340015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337692, 35.017891, 46.190628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200730, 0.327301, 0.923353,
		0.941205, 0.325876, 0.089098,
		-0.271737, 0.886949, -0.373470,
		35.256172, 35.283978, 46.078587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567902, 34.984653, 46.916000>,  <35.446388, 34.663113, 46.340015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567902, 34.984653, 46.916000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421410, 35.290440, 46.703785>,  <35.333515, 35.473911, 46.576458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421410, 35.290440, 46.703785>,  <35.567902, 34.984653, 46.916000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421410, 35.290440, 46.703785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261963, 0.462386, 0.847098,
		0.892888, 0.449216, 0.030920,
		-0.366233, 0.764463, -0.530537,
		35.311539, 35.519779, 46.544624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754284, 35.632412, 47.195847>,  <35.567902, 34.984653, 46.916000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754284, 35.632412, 47.195847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429039, 35.733788, 46.986233>,  <35.233891, 35.794613, 46.860462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429039, 35.733788, 46.986233>,  <35.754284, 35.632412, 47.195847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429039, 35.733788, 46.986233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285560, 0.610809, 0.738490,
		0.507251, 0.750120, -0.424284,
		-0.813112, 0.253441, -0.524038,
		35.185104, 35.809818, 46.829021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735153, 36.321465, 47.217644>,  <35.754284, 35.632412, 47.195847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735153, 36.321465, 47.217644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357559, 36.199982, 47.166019>,  <35.131004, 36.127094, 47.135044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357559, 36.199982, 47.166019>,  <35.735153, 36.321465, 47.217644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357559, 36.199982, 47.166019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300071, 0.627300, 0.718646,
		-0.137297, 0.717118, -0.683295,
		-0.943985, -0.303705, -0.129060,
		35.074364, 36.108871, 47.127300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497585, 36.883640, 47.137337>,  <35.735153, 36.321465, 47.217644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497585, 36.883640, 47.137337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166748, 36.668293, 47.201931>,  <34.968246, 36.539085, 47.240688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166748, 36.668293, 47.201931>,  <35.497585, 36.883640, 47.137337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166748, 36.668293, 47.201931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304660, 0.670858, 0.676116,
		-0.472335, 0.510011, -0.718880,
		-0.827092, -0.538367, 0.161490,
		34.918621, 36.506783, 47.250378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955296, 37.357193, 47.142262>,  <35.497585, 36.883640, 47.137337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955296, 37.357193, 47.142262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741081, 37.069077, 47.318611>,  <34.612553, 36.896206, 47.424423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741081, 37.069077, 47.318611>,  <34.955296, 37.357193, 47.142262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741081, 37.069077, 47.318611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455566, 0.685980, 0.567355,
		-0.711096, 0.102991, -0.695511,
		-0.535539, -0.720295, 0.440878,
		34.580421, 36.852989, 47.450874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268085, 37.468872, 47.113224>,  <34.955296, 37.357193, 47.142262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268085, 37.468872, 47.113224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291382, 37.226494, 47.430573>,  <34.305359, 37.081066, 47.620983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291382, 37.226494, 47.430573>,  <34.268085, 37.468872, 47.113224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291382, 37.226494, 47.430573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482743, 0.678534, 0.553671,
		-0.873824, -0.415240, -0.252998,
		0.058239, -0.605943, 0.793373,
		34.308853, 37.044712, 47.668583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639507, 37.643505, 47.463993>,  <34.268085, 37.468872, 47.113224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639507, 37.643505, 47.463993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867970, 37.461407, 47.737206>,  <34.005047, 37.352150, 47.901134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867970, 37.461407, 47.737206>,  <33.639507, 37.643505, 47.463993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867970, 37.461407, 47.737206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267218, 0.683666, 0.679113,
		-0.776129, -0.570398, 0.268830,
		0.571155, -0.455244, 0.683034,
		34.039314, 37.324833, 47.942116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243763, 37.456593, 48.056961>,  <33.639507, 37.643505, 47.463993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243763, 37.456593, 48.056961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623516, 37.497169, 48.175873>,  <33.851368, 37.521515, 48.247219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623516, 37.497169, 48.175873>,  <33.243763, 37.456593, 48.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623516, 37.497169, 48.175873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263788, 0.771310, 0.579220,
		-0.170538, -0.628323, 0.759030,
		0.949385, 0.101444, 0.297282,
		33.908333, 37.527603, 48.265057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261993, 37.645756, 48.786209>,  <33.243763, 37.456593, 48.056961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261993, 37.645756, 48.786209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621006, 37.759975, 48.651810>,  <33.836414, 37.828506, 48.571171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621006, 37.759975, 48.651810>,  <33.261993, 37.645756, 48.786209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621006, 37.759975, 48.651810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022606, 0.790792, 0.611667,
		0.440368, -0.541395, 0.716217,
		0.897533, 0.285549, -0.336001,
		33.890266, 37.845638, 48.551010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469357, 37.984966, 49.275040>,  <33.261993, 37.645756, 48.786209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469357, 37.984966, 49.275040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726822, 38.115925, 48.998344>,  <33.881302, 38.194500, 48.832325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726822, 38.115925, 48.998344>,  <33.469357, 37.984966, 49.275040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726822, 38.115925, 48.998344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101204, 0.859522, 0.500978,
		0.758585, -0.392469, 0.520112,
		0.643667, 0.327397, -0.691740,
		33.919922, 38.214146, 48.790821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019794, 38.348370, 49.599815>,  <33.469357, 37.984966, 49.275040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019794, 38.348370, 49.599815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060989, 38.466793, 49.219975>,  <34.085705, 38.537849, 48.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060989, 38.466793, 49.219975>,  <34.019794, 38.348370, 49.599815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060989, 38.466793, 49.219975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027437, 0.955159, 0.294820,
		0.994304, -0.004309, 0.106493,
		0.102988, 0.296062, -0.949600,
		34.091885, 38.555611, 48.935093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575348, 38.848423, 49.566498>,  <34.019794, 38.348370, 49.599815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575348, 38.848423, 49.566498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307575, 38.923550, 49.279003>,  <34.146912, 38.968628, 49.106506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307575, 38.923550, 49.279003>,  <34.575348, 38.848423, 49.566498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307575, 38.923550, 49.279003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003847, 0.966621, 0.256181,
		0.742860, 0.174261, -0.646368,
		-0.669435, 0.187820, -0.718735,
		34.106743, 38.979897, 49.063381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907703, 39.310707, 49.111816>,  <34.575348, 38.848423, 49.566498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907703, 39.310707, 49.111816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517410, 39.392590, 49.080738>,  <34.283234, 39.441719, 49.062092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517410, 39.392590, 49.080738>,  <34.907703, 39.310707, 49.111816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517410, 39.392590, 49.080738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199190, 0.977220, 0.073243,
		0.090923, 0.055989, -0.994283,
		-0.975734, 0.204710, -0.077699,
		34.224689, 39.454002, 49.057430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906364, 39.701462, 48.492359>,  <34.907703, 39.310707, 49.111816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906364, 39.701462, 48.492359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577930, 39.745464, 48.716400>,  <34.380871, 39.771866, 48.850826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577930, 39.745464, 48.716400>,  <34.906364, 39.701462, 48.492359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577930, 39.745464, 48.716400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222015, 0.965535, 0.135835,
		-0.525856, 0.235883, -0.817212,
		-0.821088, 0.110003, 0.560102,
		34.331604, 39.778465, 48.884430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833057, 40.378155, 48.473560>,  <34.906364, 39.701462, 48.492359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833057, 40.378155, 48.473560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568512, 40.272812, 48.754486>,  <34.409786, 40.209606, 48.923042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568512, 40.272812, 48.754486>,  <34.833057, 40.378155, 48.473560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568512, 40.272812, 48.754486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043363, 0.921345, 0.386320,
		-0.748811, 0.285952, -0.597924,
		-0.661364, -0.263353, 0.702313,
		34.370102, 40.193806, 48.965179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171402, 40.949310, 48.455875>,  <34.833057, 40.378155, 48.473560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171402, 40.949310, 48.455875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255535, 40.763008, 48.799698>,  <34.306015, 40.651226, 49.005989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255535, 40.763008, 48.799698>,  <34.171402, 40.949310, 48.455875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255535, 40.763008, 48.799698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176043, 0.882892, 0.435329,
		-0.961650, 0.059756, 0.267691,
		0.210329, -0.465759, 0.859553,
		34.318634, 40.623280, 49.057564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182129, 41.666866, 48.164791>,  <34.171402, 40.949310, 48.455875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182129, 41.666866, 48.164791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322681, 42.016109, 48.029606>,  <34.407013, 42.225655, 47.948494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322681, 42.016109, 48.029606>,  <34.182129, 41.666866, 48.164791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322681, 42.016109, 48.029606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029116, -0.350613, -0.936068,
		-0.935780, 0.338755, -0.097777,
		0.351380, 0.873107, -0.337960,
		34.428097, 42.278042, 47.928219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684937, 41.868755, 47.744678>,  <34.182129, 41.666866, 48.164791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684937, 41.868755, 47.744678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035988, 42.030727, 47.642067>,  <34.246616, 42.127911, 47.580502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035988, 42.030727, 47.642067>,  <33.684937, 41.868755, 47.744678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035988, 42.030727, 47.642067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024351, -0.572125, -0.819805,
		-0.478731, 0.713234, -0.511971,
		0.877624, 0.404933, -0.256526,
		34.299274, 42.152206, 47.565109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648388, 42.026546, 47.033646>,  <33.684937, 41.868755, 47.744678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648388, 42.026546, 47.033646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040699, 42.006374, 47.109043>,  <34.276085, 41.994270, 47.154282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040699, 42.006374, 47.109043>,  <33.648388, 42.026546, 47.033646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040699, 42.006374, 47.109043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147721, -0.439246, -0.886139,
		0.127481, 0.896951, -0.423353,
		0.980779, -0.050428, 0.188494,
		34.334934, 41.991245, 47.165592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036602, 42.118950, 46.348209>,  <33.648388, 42.026546, 47.033646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036602, 42.118950, 46.348209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299736, 41.936958, 46.588291>,  <34.457615, 41.827763, 46.732342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299736, 41.936958, 46.588291>,  <34.036602, 42.118950, 46.348209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299736, 41.936958, 46.588291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337317, -0.534546, -0.774905,
		0.673401, 0.712221, -0.198172,
		0.657836, -0.454975, 0.600208,
		34.497086, 41.800465, 46.768353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685986, 42.205643, 45.976658>,  <34.036602, 42.118950, 46.348209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685986, 42.205643, 45.976658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768436, 41.898991, 46.219898>,  <34.817905, 41.714996, 46.365841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768436, 41.898991, 46.219898>,  <34.685986, 42.205643, 45.976658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768436, 41.898991, 46.219898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373918, -0.512573, -0.772951,
		0.904266, 0.386703, 0.181005,
		0.206125, -0.766635, 0.608098,
		34.830273, 41.668999, 46.402328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409084, 41.953358, 45.821064>,  <34.685986, 42.205643, 45.976658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409084, 41.953358, 45.821064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273792, 41.659405, 46.056198>,  <35.192616, 41.483032, 46.197281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273792, 41.659405, 46.056198>,  <35.409084, 41.953358, 45.821064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273792, 41.659405, 46.056198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446648, -0.675172, -0.587067,
		0.828316, 0.063994, 0.556595,
		-0.338229, -0.734879, 0.587839,
		35.172325, 41.438942, 46.232552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991356, 41.558880, 46.001957>,  <35.409084, 41.953358, 45.821064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991356, 41.558880, 46.001957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683899, 41.306873, 46.046268>,  <35.499424, 41.155670, 46.072857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683899, 41.306873, 46.046268>,  <35.991356, 41.558880, 46.001957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683899, 41.306873, 46.046268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413190, -0.621191, -0.665880,
		0.488334, -0.466046, 0.737788,
		-0.768638, -0.630018, 0.110783,
		35.453308, 41.117867, 46.079502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376373, 40.927349, 45.921368>,  <35.991356, 41.558880, 46.001957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376373, 40.927349, 45.921368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989410, 40.832161, 45.886749>,  <35.757233, 40.775047, 45.865978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989410, 40.832161, 45.886749>,  <36.376373, 40.927349, 45.921368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989410, 40.832161, 45.886749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238331, -0.740259, -0.628661,
		0.085539, -0.628799, 0.772849,
		-0.967410, -0.237969, -0.086541,
		35.699188, 40.760769, 45.860786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379082, 40.246105, 46.030846>,  <36.376373, 40.927349, 45.921368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379082, 40.246105, 46.030846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052631, 40.343166, 45.821064>,  <35.856762, 40.401402, 45.695194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052631, 40.343166, 45.821064>,  <36.379082, 40.246105, 46.030846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052631, 40.343166, 45.821064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226531, -0.700586, -0.676656,
		-0.531619, -0.671044, 0.516799,
		-0.816128, 0.242652, -0.524457,
		35.807793, 40.415962, 45.663727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029934, 39.661968, 45.962505>,  <36.379082, 40.246105, 46.030846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029934, 39.661968, 45.962505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862732, 39.874111, 45.667480>,  <35.762413, 40.001396, 45.490467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862732, 39.874111, 45.667480>,  <36.029934, 39.661968, 45.962505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862732, 39.874111, 45.667480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229337, -0.723990, -0.650571,
		-0.879021, -0.441091, 0.181000,
		-0.418003, 0.530356, -0.737561,
		35.737331, 40.033218, 45.446213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567650, 39.240162, 45.524902>,  <36.029934, 39.661968, 45.962505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567650, 39.240162, 45.524902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646442, 39.553780, 45.289455>,  <35.693718, 39.741951, 45.148186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646442, 39.553780, 45.289455>,  <35.567650, 39.240162, 45.524902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646442, 39.553780, 45.289455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150455, -0.617444, -0.772092,
		-0.968795, 0.063524, -0.239586,
		0.196977, 0.784046, -0.588619,
		35.705536, 39.788994, 45.112869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036098, 39.192966, 44.999969>,  <35.567650, 39.240162, 45.524902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036098, 39.192966, 44.999969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389530, 39.368847, 44.935520>,  <35.601589, 39.474373, 44.896851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389530, 39.368847, 44.935520>,  <35.036098, 39.192966, 44.999969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389530, 39.368847, 44.935520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147968, -0.588579, -0.794783,
		-0.444299, 0.678409, -0.585115,
		0.883575, 0.439699, -0.161123,
		35.654602, 39.500755, 44.887184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008099, 39.349964, 44.319679>,  <35.036098, 39.192966, 44.999969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008099, 39.349964, 44.319679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398781, 39.341377, 44.405087>,  <35.633190, 39.336224, 44.456329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398781, 39.341377, 44.405087>,  <35.008099, 39.349964, 44.319679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398781, 39.341377, 44.405087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173333, -0.507680, -0.843929,
		0.126516, 0.861278, -0.492132,
		0.976703, -0.021468, 0.213517,
		35.691792, 39.334938, 44.469143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205997, 39.378342, 43.672680>,  <35.008099, 39.349964, 44.319679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205997, 39.378342, 43.672680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516758, 39.225540, 43.872879>,  <35.703213, 39.133862, 43.993000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516758, 39.225540, 43.872879>,  <35.205997, 39.378342, 43.672680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516758, 39.225540, 43.872879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180943, -0.625926, -0.758602,
		0.603063, 0.679920, -0.417162,
		0.776901, -0.382002, 0.500499,
		35.749828, 39.110939, 44.023029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676998, 39.123497, 43.223530>,  <35.205997, 39.378342, 43.672680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676998, 39.123497, 43.223530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836170, 38.932869, 43.537098>,  <35.931675, 38.818493, 43.725239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836170, 38.932869, 43.537098>,  <35.676998, 39.123497, 43.223530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836170, 38.932869, 43.537098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132301, -0.815750, -0.563071,
		0.907826, 0.327777, -0.261561,
		0.397930, -0.476566, 0.783924,
		35.955551, 38.789898, 43.772274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385300, 38.909176, 43.055733>,  <35.676998, 39.123497, 43.223530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385300, 38.909176, 43.055733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280209, 38.656265, 43.347267>,  <36.217155, 38.504520, 43.522186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280209, 38.656265, 43.347267>,  <36.385300, 38.909176, 43.055733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280209, 38.656265, 43.347267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285182, -0.772510, -0.567361,
		0.921763, 0.058792, 0.383271,
		-0.262725, -0.632275, 0.728838,
		36.201389, 38.466583, 43.565918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901638, 38.407993, 43.114246>,  <36.385300, 38.909176, 43.055733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901638, 38.407993, 43.114246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564953, 38.250854, 43.262402>,  <36.362942, 38.156570, 43.351295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564953, 38.250854, 43.262402>,  <36.901638, 38.407993, 43.114246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564953, 38.250854, 43.262402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170858, -0.844553, -0.507482,
		0.512179, -0.363870, 0.777992,
		-0.841713, -0.392847, 0.370392,
		36.312439, 38.132999, 43.373520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047199, 37.821999, 43.408886>,  <36.901638, 38.407993, 43.114246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047199, 37.821999, 43.408886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655666, 37.789204, 43.333874>,  <36.420746, 37.769527, 43.288868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655666, 37.789204, 43.333874>,  <37.047199, 37.821999, 43.408886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655666, 37.789204, 43.333874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154809, -0.895921, -0.416366,
		-0.133877, -0.436583, 0.889647,
		-0.978831, -0.081984, -0.187531,
		36.362019, 37.764610, 43.277615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873074, 37.116558, 43.584000>,  <37.047199, 37.821999, 43.408886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873074, 37.116558, 43.584000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590611, 37.241566, 43.329861>,  <36.421131, 37.316570, 43.177376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590611, 37.241566, 43.329861>,  <36.873074, 37.116558, 43.584000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590611, 37.241566, 43.329861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104945, -0.841216, -0.530418,
		-0.700231, -0.441237, 0.561237,
		-0.706161, 0.312516, -0.635351,
		36.378761, 37.335320, 43.139256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392178, 36.492126, 43.550056>,  <36.873074, 37.116558, 43.584000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392178, 36.492126, 43.550056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294418, 36.715820, 43.233189>,  <36.235764, 36.850037, 43.043068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294418, 36.715820, 43.233189>,  <36.392178, 36.492126, 43.550056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294418, 36.715820, 43.233189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192091, -0.772831, -0.604842,
		-0.950459, -0.299989, 0.081454,
		-0.244396, 0.559230, -0.792169,
		36.221100, 36.883591, 42.995537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984402, 36.034286, 43.067787>,  <36.392178, 36.492126, 43.550056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984402, 36.034286, 43.067787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102905, 36.345821, 42.846649>,  <36.174007, 36.532742, 42.713966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102905, 36.345821, 42.846649>,  <35.984402, 36.034286, 43.067787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102905, 36.345821, 42.846649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227806, -0.619745, -0.751013,
		-0.927543, 0.096551, -0.361028,
		0.296257, 0.778842, -0.552845,
		36.191784, 36.579475, 42.680798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621574, 35.975147, 42.527042>,  <35.984402, 36.034286, 43.067787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621574, 35.975147, 42.527042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935272, 36.200642, 42.423378>,  <36.123489, 36.335938, 42.361179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935272, 36.200642, 42.423378>,  <35.621574, 35.975147, 42.527042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935272, 36.200642, 42.423378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179203, -0.605705, -0.775247,
		-0.594009, 0.561540, -0.576044,
		0.784244, 0.563732, -0.259165,
		36.170544, 36.369762, 42.345627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599403, 35.794849, 41.904346>,  <35.621574, 35.975147, 42.527042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599403, 35.794849, 41.904346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954517, 35.973721, 41.947914>,  <36.167587, 36.081043, 41.974056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954517, 35.973721, 41.947914>,  <35.599403, 35.794849, 41.904346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954517, 35.973721, 41.947914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373690, -0.562193, -0.737764,
		-0.268674, 0.695682, -0.666214,
		0.887790, 0.447175, 0.108923,
		36.220856, 36.107872, 41.980591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784199, 35.871132, 41.213749>,  <35.599403, 35.794849, 41.904346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784199, 35.871132, 41.213749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111755, 35.954952, 41.427479>,  <36.308289, 36.005245, 41.555717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111755, 35.954952, 41.427479>,  <35.784199, 35.871132, 41.213749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111755, 35.954952, 41.427479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569731, -0.409449, -0.712572,
		0.069457, 0.887941, -0.454683,
		0.818891, 0.209554, 0.534326,
		36.357422, 36.017818, 41.587776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368744, 36.235603, 40.787014>,  <35.784199, 35.871132, 41.213749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368744, 36.235603, 40.787014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528091, 36.028244, 41.089687>,  <36.623699, 35.903828, 41.271290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528091, 36.028244, 41.089687>,  <36.368744, 36.235603, 40.787014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528091, 36.028244, 41.089687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591302, -0.485510, -0.643927,
		0.701186, 0.703948, 0.113116,
		0.398372, -0.518398, 0.756679,
		36.647602, 35.872723, 41.316692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058994, 36.376411, 40.913746>,  <36.368744, 36.235603, 40.787014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058994, 36.376411, 40.913746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965893, 35.996998, 40.999649>,  <36.910034, 35.769352, 41.051189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965893, 35.996998, 40.999649>,  <37.058994, 36.376411, 40.913746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965893, 35.996998, 40.999649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821705, -0.309916, -0.478280,
		0.520219, 0.065144, 0.851545,
		-0.232750, -0.948529, 0.214754,
		36.896069, 35.712440, 41.064075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720722, 36.034985, 41.188358>,  <37.058994, 36.376411, 40.913746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720722, 36.034985, 41.188358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482048, 35.724281, 41.107750>,  <37.338844, 35.537861, 41.059387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482048, 35.724281, 41.107750>,  <37.720722, 36.034985, 41.188358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482048, 35.724281, 41.107750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784374, -0.511508, -0.350880,
		0.169472, -0.367431, 0.914480,
		-0.596688, -0.776759, -0.201517,
		37.303043, 35.491253, 41.047295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991344, 35.468452, 41.583954>,  <37.720722, 36.034985, 41.188358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991344, 35.468452, 41.583954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787052, 35.350403, 41.260956>,  <37.664478, 35.279572, 41.067158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787052, 35.350403, 41.260956>,  <37.991344, 35.468452, 41.583954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787052, 35.350403, 41.260956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856823, -0.252035, -0.449814,
		-0.070766, -0.921618, 0.381593,
		-0.510731, -0.295127, -0.807499,
		37.633831, 35.261864, 41.018707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334270, 35.000591, 41.281441>,  <37.991344, 35.468452, 41.583954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334270, 35.000591, 41.281441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083515, 35.041908, 40.972549>,  <37.933060, 35.066700, 40.787216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083515, 35.041908, 40.972549>,  <38.334270, 35.000591, 41.281441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083515, 35.041908, 40.972549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743795, -0.215664, -0.632659,
		-0.231897, -0.970988, 0.058361,
		-0.626891, 0.103303, -0.772228,
		37.895447, 35.072895, 40.740883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440449, 34.458736, 40.944023>,  <38.334270, 35.000591, 41.281441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440449, 34.458736, 40.944023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279716, 34.698727, 40.667313>,  <38.183277, 34.842720, 40.501286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279716, 34.698727, 40.667313>,  <38.440449, 34.458736, 40.944023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279716, 34.698727, 40.667313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725085, -0.252918, -0.640534,
		-0.559267, -0.758988, -0.333401,
		-0.401835, 0.599974, -0.691780,
		38.159164, 34.878719, 40.459778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346573, 34.001476, 40.346111>,  <38.440449, 34.458736, 40.944023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346573, 34.001476, 40.346111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356163, 34.380165, 40.217651>,  <38.361916, 34.607380, 40.140575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356163, 34.380165, 40.217651>,  <38.346573, 34.001476, 40.346111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356163, 34.380165, 40.217651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688638, -0.248512, -0.681189,
		-0.724708, -0.204824, -0.657909,
		0.023974, 0.946725, -0.321149,
		38.363354, 34.664185, 40.121307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315083, 34.004833, 39.657616>,  <38.346573, 34.001476, 40.346111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315083, 34.004833, 39.657616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492191, 34.357407, 39.723377>,  <38.598457, 34.568951, 39.762833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492191, 34.357407, 39.723377>,  <38.315083, 34.004833, 39.657616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492191, 34.357407, 39.723377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689130, -0.217232, -0.691310,
		-0.573632, 0.419385, -0.703607,
		0.442771, 0.881434, 0.164400,
		38.625023, 34.621838, 39.772697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572193, 34.325455, 38.957291>,  <38.315083, 34.004833, 39.657616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572193, 34.325455, 38.957291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779156, 34.560223, 39.206390>,  <38.903332, 34.701084, 39.355850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779156, 34.560223, 39.206390>,  <38.572193, 34.325455, 38.957291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779156, 34.560223, 39.206390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832961, -0.178628, -0.523706,
		-0.196131, 0.789696, -0.581303,
		0.517405, 0.586918, 0.622751,
		38.934376, 34.736298, 39.393215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025528, 34.696423, 38.467262>,  <38.572193, 34.325455, 38.957291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025528, 34.696423, 38.467262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184708, 34.778484, 38.824932>,  <39.280216, 34.827721, 39.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184708, 34.778484, 38.824932>,  <39.025528, 34.696423, 38.467262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184708, 34.778484, 38.824932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884233, 0.173962, -0.433440,
		-0.244474, 0.963145, -0.112176,
		0.397951, 0.205155, 0.894174,
		39.304092, 34.840031, 39.093185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489990, 35.254501, 38.384781>,  <39.025528, 34.696423, 38.467262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489990, 35.254501, 38.384781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621410, 35.053543, 38.704697>,  <39.700264, 34.932968, 38.896645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621410, 35.053543, 38.704697>,  <39.489990, 35.254501, 38.384781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621410, 35.053543, 38.704697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925268, 0.001250, -0.379313,
		0.189565, 0.864638, 0.465259,
		0.328550, -0.502393, 0.799785,
		39.719975, 34.902824, 38.944633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072227, 35.614849, 38.573795>,  <39.489990, 35.254501, 38.384781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072227, 35.614849, 38.573795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085957, 35.231945, 38.688663>,  <40.094193, 35.002201, 38.757584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085957, 35.231945, 38.688663>,  <40.072227, 35.614849, 38.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085957, 35.231945, 38.688663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811601, -0.140983, -0.566947,
		0.583204, 0.252529, 0.772077,
		0.034321, -0.957263, 0.287175,
		40.096252, 34.944767, 38.774815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783913, 35.436256, 38.555328>,  <40.072227, 35.614849, 38.573795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783913, 35.436256, 38.555328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587482, 35.087822, 38.552380>,  <40.469624, 34.878761, 38.550610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587482, 35.087822, 38.552380>,  <40.783913, 35.436256, 38.555328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587482, 35.087822, 38.552380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748603, -0.417673, -0.514920,
		0.445461, -0.258382, 0.857206,
		-0.491078, -0.871084, -0.007369,
		40.440159, 34.826496, 38.550167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314167, 34.996471, 38.567955>,  <40.783913, 35.436256, 38.555328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314167, 34.996471, 38.567955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023132, 34.756603, 38.434681>,  <40.848511, 34.612682, 38.354717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023132, 34.756603, 38.434681>,  <41.314167, 34.996471, 38.567955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023132, 34.756603, 38.434681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651727, -0.452580, -0.608624,
		0.214183, -0.659970, 0.720114,
		-0.727583, -0.599675, -0.333186,
		40.804859, 34.576702, 38.334724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527622, 34.344929, 38.653080>,  <41.314167, 34.996471, 38.567955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527622, 34.344929, 38.653080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267620, 34.353264, 38.349224>,  <41.111618, 34.358265, 38.166912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267620, 34.353264, 38.349224>,  <41.527622, 34.344929, 38.653080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267620, 34.353264, 38.349224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654036, -0.493650, -0.573190,
		-0.386943, -0.869411, 0.307246,
		-0.650009, 0.020842, -0.759640,
		41.072617, 34.359516, 38.121330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626335, 33.642937, 38.174675>,  <41.527622, 34.344929, 38.653080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626335, 33.642937, 38.174675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493744, 33.975986, 37.997196>,  <41.414188, 34.175816, 37.890709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493744, 33.975986, 37.997196>,  <41.626335, 33.642937, 38.174675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493744, 33.975986, 37.997196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613694, -0.166909, -0.771700,
		-0.716591, -0.528094, -0.455648,
		-0.331478, 0.832622, -0.443693,
		41.394299, 34.225773, 37.864090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736477, 33.496979, 37.361824>,  <41.626335, 33.642937, 38.174675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736477, 33.496979, 37.361824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674511, 33.889149, 37.410446>,  <41.637333, 34.124451, 37.439621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674511, 33.889149, 37.410446>,  <41.736477, 33.496979, 37.361824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674511, 33.889149, 37.410446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592262, 0.190645, -0.782867,
		-0.790714, -0.049279, -0.610199,
		-0.154911, 0.980421, 0.121559,
		41.628036, 34.183273, 37.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595074, 33.838581, 36.657894>,  <41.736477, 33.496979, 37.361824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595074, 33.838581, 36.657894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830006, 33.860741, 36.334915>,  <41.970966, 33.874039, 36.141129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830006, 33.860741, 36.334915>,  <41.595074, 33.838581, 36.657894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830006, 33.860741, 36.334915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725580, 0.405959, 0.555636,
		0.358574, -0.912210, 0.198235,
		0.587332, 0.055402, -0.807447,
		42.006207, 33.877361, 36.092682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209831, 33.349651, 36.658047>,  <41.595074, 33.838581, 36.657894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209831, 33.349651, 36.658047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284729, 33.707031, 36.494736>,  <42.329666, 33.921459, 36.396751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284729, 33.707031, 36.494736>,  <42.209831, 33.349651, 36.658047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284729, 33.707031, 36.494736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665481, 0.190342, 0.721738,
		0.722548, -0.406840, -0.558933,
		0.187243, 0.893449, -0.408275,
		42.340900, 33.975067, 36.372253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847618, 33.280922, 36.424622>,  <42.209831, 33.349651, 36.658047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847618, 33.280922, 36.424622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745853, 33.651642, 36.535122>,  <42.684795, 33.874073, 36.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745853, 33.651642, 36.535122>,  <42.847618, 33.280922, 36.424622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745853, 33.651642, 36.535122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266004, -0.207573, 0.941358,
		0.929794, 0.312977, -0.193724,
		-0.254412, 0.926800, 0.276253,
		42.669529, 33.929684, 36.617996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296715, 33.514877, 37.022671>,  <42.847618, 33.280922, 36.424622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296715, 33.514877, 37.022671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985767, 33.764168, 37.056831>,  <42.799198, 33.913742, 37.077328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985767, 33.764168, 37.056831>,  <43.296715, 33.514877, 37.022671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985767, 33.764168, 37.056831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262098, 0.197475, 0.944621,
		0.571844, 0.756701, -0.316856,
		-0.777366, 0.623223, 0.085405,
		42.752556, 33.951134, 37.082455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412987, 34.299358, 37.130367>,  <43.296715, 33.514877, 37.022671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412987, 34.299358, 37.130367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097557, 34.180103, 37.345497>,  <42.908298, 34.108551, 37.474575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097557, 34.180103, 37.345497>,  <43.412987, 34.299358, 37.130367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097557, 34.180103, 37.345497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457857, 0.299185, 0.837171,
		-0.410502, 0.906423, -0.099427,
		-0.788578, -0.298137, 0.537828,
		42.860985, 34.090664, 37.506847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781464, 34.607239, 36.990540>,  <43.412987, 34.299358, 37.130367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781464, 34.607239, 36.990540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990788, 34.888813, 36.798443>,  <43.116383, 35.057758, 36.683186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990788, 34.888813, 36.798443>,  <42.781464, 34.607239, 36.990540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990788, 34.888813, 36.798443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135936, 0.625308, 0.768448,
		0.841231, -0.336853, 0.422918,
		0.523308, 0.703932, -0.480238,
		43.147781, 35.099991, 36.654373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259418, 34.923759, 37.426357>,  <42.781464, 34.607239, 36.990540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259418, 34.923759, 37.426357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217369, 35.186321, 37.127537>,  <43.192139, 35.343857, 36.948246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217369, 35.186321, 37.127537>,  <43.259418, 34.923759, 37.426357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217369, 35.186321, 37.127537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336823, 0.683310, 0.647795,
		0.935681, 0.319724, 0.149258,
		-0.105126, 0.656403, -0.747050,
		43.185833, 35.383244, 36.903423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495522, 35.587914, 37.656082>,  <43.259418, 34.923759, 37.426357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495522, 35.587914, 37.656082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230053, 35.632896, 37.360271>,  <43.070774, 35.659885, 37.182785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230053, 35.632896, 37.360271>,  <43.495522, 35.587914, 37.656082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230053, 35.632896, 37.360271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477477, 0.697339, 0.534541,
		0.575812, 0.707864, -0.409107,
		-0.663669, 0.112456, -0.739525,
		43.030952, 35.666634, 37.138412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240463, 36.196571, 37.789745>,  <43.495522, 35.587914, 37.656082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240463, 36.196571, 37.789745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970840, 36.072186, 37.521732>,  <42.809067, 35.997555, 37.360924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970840, 36.072186, 37.521732>,  <43.240463, 36.196571, 37.789745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970840, 36.072186, 37.521732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689072, 0.591503, 0.418693,
		0.266127, 0.743925, -0.612986,
		-0.674059, -0.310967, -0.670033,
		42.768623, 35.978897, 37.320721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056393, 36.796871, 37.529247>,  <43.240463, 36.196571, 37.789745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056393, 36.796871, 37.529247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762600, 36.532372, 37.468193>,  <42.586327, 36.373672, 37.431561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762600, 36.532372, 37.468193>,  <43.056393, 36.796871, 37.529247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762600, 36.532372, 37.468193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668964, 0.667632, 0.326734,
		-0.114146, 0.342087, -0.932710,
		-0.734478, -0.661245, -0.152636,
		42.542255, 36.334000, 37.422401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554802, 37.219524, 37.333088>,  <43.056393, 36.796871, 37.529247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554802, 37.219524, 37.333088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354733, 36.887352, 37.431236>,  <42.234692, 36.688049, 37.490124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354733, 36.887352, 37.431236>,  <42.554802, 37.219524, 37.333088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354733, 36.887352, 37.431236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696461, 0.554183, 0.455877,
		-0.514556, 0.057126, -0.855552,
		-0.500174, -0.830433, 0.245372,
		42.204681, 36.638222, 37.504848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842861, 37.364643, 37.222397>,  <42.554802, 37.219524, 37.333088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842861, 37.364643, 37.222397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803345, 37.063633, 37.482841>,  <41.779633, 36.883026, 37.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803345, 37.063633, 37.482841>,  <41.842861, 37.364643, 37.222397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803345, 37.063633, 37.482841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592933, 0.569995, 0.568802,
		-0.799169, -0.329872, -0.502507,
		-0.098795, -0.752522, 0.651114,
		41.773705, 36.837875, 37.678177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165073, 37.242573, 37.379395>,  <41.842861, 37.364643, 37.222397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165073, 37.242573, 37.379395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360386, 37.092056, 37.694351>,  <41.477573, 37.001747, 37.883327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360386, 37.092056, 37.694351>,  <41.165073, 37.242573, 37.379395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360386, 37.092056, 37.694351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716480, 0.342270, 0.607872,
		-0.498239, -0.860962, -0.102483,
		0.488278, -0.376293, 0.787394,
		41.506870, 36.979168, 37.930569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669693, 37.110985, 37.707119>,  <41.165073, 37.242573, 37.379395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669693, 37.110985, 37.707119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966003, 37.087597, 37.974800>,  <41.143791, 37.073566, 38.135406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966003, 37.087597, 37.974800>,  <40.669693, 37.110985, 37.707119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966003, 37.087597, 37.974800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650846, 0.184120, 0.736546,
		-0.166276, -0.981163, 0.098339,
		0.740778, -0.058467, 0.669201,
		41.188236, 37.070057, 38.175560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297634, 36.843773, 38.334728>,  <40.669693, 37.110985, 37.707119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297634, 36.843773, 38.334728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650158, 36.969910, 38.475502>,  <40.861671, 37.045593, 38.559967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650158, 36.969910, 38.475502>,  <40.297634, 36.843773, 38.334728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650158, 36.969910, 38.475502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389819, 0.064188, 0.918652,
		0.267101, -0.946804, 0.179496,
		0.881304, 0.315344, 0.351938,
		40.914551, 37.064514, 38.581085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486931, 36.419983, 38.942581>,  <40.297634, 36.843773, 38.334728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486931, 36.419983, 38.942581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654873, 36.782242, 38.966339>,  <40.755638, 36.999596, 38.980595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654873, 36.782242, 38.966339>,  <40.486931, 36.419983, 38.942581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654873, 36.782242, 38.966339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455199, 0.153506, 0.877057,
		0.785186, -0.395272, 0.476699,
		0.419853, 0.905647, 0.059397,
		40.780830, 37.053936, 38.984158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728458, 36.512592, 39.649220>,  <40.486931, 36.419983, 38.942581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728458, 36.512592, 39.649220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686783, 36.888451, 39.518856>,  <40.661777, 37.113964, 39.440636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686783, 36.888451, 39.518856>,  <40.728458, 36.512592, 39.649220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686783, 36.888451, 39.518856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286223, 0.285503, 0.914639,
		0.952482, 0.188578, 0.239201,
		-0.104188, 0.939641, -0.325912,
		40.655525, 37.170341, 39.421082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930935, 36.827961, 40.193848>,  <40.728458, 36.512592, 39.649220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930935, 36.827961, 40.193848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771400, 37.131584, 39.988026>,  <40.675678, 37.313759, 39.864532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771400, 37.131584, 39.988026>,  <40.930935, 36.827961, 40.193848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771400, 37.131584, 39.988026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177307, 0.486691, 0.855391,
		0.899718, 0.432395, -0.059524,
		-0.398836, 0.759056, -0.514551,
		40.651749, 37.359303, 39.833660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208508, 37.393913, 40.468842>,  <40.930935, 36.827961, 40.193848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208508, 37.393913, 40.468842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875248, 37.514297, 40.283245>,  <40.675293, 37.586529, 40.171886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875248, 37.514297, 40.283245>,  <41.208508, 37.393913, 40.468842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875248, 37.514297, 40.283245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248517, 0.545762, 0.800239,
		0.494074, 0.782025, -0.379904,
		-0.833145, 0.300965, -0.463994,
		40.625305, 37.604588, 40.144047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129677, 37.981949, 40.669987>,  <41.208508, 37.393913, 40.468842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129677, 37.981949, 40.669987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752113, 37.928921, 40.549011>,  <40.525578, 37.897102, 40.476425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752113, 37.928921, 40.549011>,  <41.129677, 37.981949, 40.669987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752113, 37.928921, 40.549011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329487, 0.438926, 0.835932,
		0.021925, 0.888689, -0.457986,
		-0.943905, -0.132573, -0.302435,
		40.468941, 37.889149, 40.458282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847214, 38.616875, 40.647808>,  <41.129677, 37.981949, 40.669987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847214, 38.616875, 40.647808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557983, 38.346684, 40.705620>,  <40.384445, 38.184566, 40.740307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557983, 38.346684, 40.705620>,  <40.847214, 38.616875, 40.647808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557983, 38.346684, 40.705620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252957, 0.453626, 0.854539,
		-0.642787, 0.581336, -0.498873,
		-0.723075, -0.675480, 0.144531,
		40.341061, 38.144039, 40.748978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176552, 39.065540, 40.701187>,  <40.847214, 38.616875, 40.647808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176552, 39.065540, 40.701187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117947, 38.709747, 40.874325>,  <40.082783, 38.496273, 40.978207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117947, 38.709747, 40.874325>,  <40.176552, 39.065540, 40.701187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117947, 38.709747, 40.874325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255936, 0.456750, 0.851984,
		-0.955527, 0.014044, -0.294569,
		-0.146510, -0.889484, 0.432843,
		40.073994, 38.442902, 41.004177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439011, 39.044697, 40.885132>,  <40.176552, 39.065540, 40.701187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439011, 39.044697, 40.885132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640141, 38.765682, 41.089333>,  <39.760818, 38.598274, 41.211853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640141, 38.765682, 41.089333>,  <39.439011, 39.044697, 40.885132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640141, 38.765682, 41.089333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169914, 0.499308, 0.849600,
		-0.847522, -0.513943, 0.132545,
		0.502827, -0.697534, 0.510501,
		39.790989, 38.556423, 41.242481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906227, 38.789253, 41.193096>,  <39.439011, 39.044697, 40.885132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906227, 38.789253, 41.193096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232292, 38.692383, 41.403568>,  <39.427929, 38.634262, 41.529854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232292, 38.692383, 41.403568>,  <38.906227, 38.789253, 41.193096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232292, 38.692383, 41.403568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419074, 0.380523, 0.824365,
		-0.399868, -0.892498, 0.208696,
		0.815158, -0.242178, 0.526182,
		39.476841, 38.619728, 41.561424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662369, 38.512108, 41.797733>,  <38.906227, 38.789253, 41.193096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662369, 38.512108, 41.797733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037483, 38.604454, 41.901470>,  <39.262550, 38.659863, 41.963715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037483, 38.604454, 41.901470>,  <38.662369, 38.512108, 41.797733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037483, 38.604454, 41.901470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321380, 0.294415, 0.900019,
		0.131424, -0.927374, 0.350293,
		0.937786, 0.230861, 0.259347,
		39.318817, 38.673714, 41.979275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646355, 38.306751, 42.480145>,  <38.662369, 38.512108, 41.797733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646355, 38.306751, 42.480145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975651, 38.523708, 42.413113>,  <39.173229, 38.653881, 42.372894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975651, 38.523708, 42.413113>,  <38.646355, 38.306751, 42.480145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975651, 38.523708, 42.413113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259351, 0.621932, 0.738876,
		0.504981, -0.564814, 0.652671,
		0.823245, 0.542389, -0.167579,
		39.222626, 38.686424, 42.362839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177277, 38.310375, 43.052067>,  <38.646355, 38.306751, 42.480145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177277, 38.310375, 43.052067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191795, 38.668041, 42.873562>,  <39.200508, 38.882641, 42.766460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191795, 38.668041, 42.873562>,  <39.177277, 38.310375, 43.052067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191795, 38.668041, 42.873562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016451, 0.445957, 0.894903,
		0.999206, -0.039827, 0.001479,
		0.036301, 0.894168, -0.446258,
		39.202686, 38.936291, 42.739685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778358, 38.634838, 43.339218>,  <39.177277, 38.310375, 43.052067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778358, 38.634838, 43.339218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491333, 38.890827, 43.229282>,  <39.319118, 39.044418, 43.163322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491333, 38.890827, 43.229282>,  <39.778358, 38.634838, 43.339218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491333, 38.890827, 43.229282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132335, 0.512691, 0.848313,
		0.683802, 0.572351, -0.452580,
		-0.717567, 0.639970, -0.274837,
		39.276062, 39.082817, 43.146832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056961, 39.229980, 43.365211>,  <39.778358, 38.634838, 43.339218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056961, 39.229980, 43.365211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665783, 39.267059, 43.440083>,  <39.431076, 39.289307, 43.485004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665783, 39.267059, 43.440083>,  <40.056961, 39.229980, 43.365211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665783, 39.267059, 43.440083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208825, 0.415659, 0.885223,
		0.004255, 0.904785, -0.425847,
		-0.977944, 0.092694, 0.187173,
		39.372398, 39.294868, 43.496235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491970, 38.622452, 43.238403>,  <40.056961, 39.229980, 43.365211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491970, 38.622452, 43.238403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577000, 39.005745, 43.161865>,  <40.628017, 39.235722, 43.115944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577000, 39.005745, 43.161865>,  <40.491970, 38.622452, 43.238403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577000, 39.005745, 43.161865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168320, 0.156983, 0.973152,
		0.962540, -0.239070, -0.127919,
		0.212570, 0.958228, -0.191343,
		40.640770, 39.293213, 43.104462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121899, 38.558498, 43.692905>,  <40.491970, 38.622452, 43.238403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121899, 38.558498, 43.692905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071053, 38.811192, 43.998783>,  <41.040543, 38.962807, 44.182308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071053, 38.811192, 43.998783>,  <41.121899, 38.558498, 43.692905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071053, 38.811192, 43.998783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702455, -0.601636, 0.380252,
		0.700284, -0.488826, 0.520242,
		-0.127119, 0.631731, 0.764694,
		41.032917, 39.000710, 44.228191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530739, 38.144379, 43.299332>,  <41.121899, 38.558498, 43.692905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530739, 38.144379, 43.299332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816597, 37.911602, 43.144096>,  <41.988113, 37.771935, 43.050953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816597, 37.911602, 43.144096>,  <41.530739, 38.144379, 43.299332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816597, 37.911602, 43.144096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193048, -0.697369, 0.690224,
		-0.672316, -0.418348, -0.610718,
		0.714649, -0.581946, -0.388091,
		42.030991, 37.737019, 43.027668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259499, 37.555092, 43.034962>,  <41.530739, 38.144379, 43.299332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259499, 37.555092, 43.034962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627777, 37.468975, 43.165169>,  <41.848743, 37.417305, 43.243294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627777, 37.468975, 43.165169>,  <41.259499, 37.555092, 43.034962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627777, 37.468975, 43.165169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377525, -0.702759, 0.602997,
		0.098939, -0.678070, -0.728308,
		0.920699, -0.215294, 0.325519,
		41.903988, 37.404388, 43.262825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831478, 36.991718, 42.941460>,  <41.259499, 37.555092, 43.034962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831478, 36.991718, 42.941460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850094, 36.670212, 42.704208>,  <40.861263, 36.477310, 42.561859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850094, 36.670212, 42.704208>,  <40.831478, 36.991718, 42.941460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850094, 36.670212, 42.704208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251042, -0.584126, 0.771865,
		-0.966857, 0.112976, -0.228964,
		0.046542, -0.803762, -0.593128,
		40.864056, 36.429085, 42.526272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418308, 36.803623, 43.213814>,  <40.831478, 36.991718, 42.941460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418308, 36.803623, 43.213814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450378, 36.416031, 43.120308>,  <41.469620, 36.183475, 43.064205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450378, 36.416031, 43.120308>,  <41.418308, 36.803623, 43.213814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450378, 36.416031, 43.120308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544046, 0.239045, -0.804284,
		0.835217, -0.062698, 0.546335,
		0.080172, -0.968982, -0.233765,
		41.474430, 36.125336, 43.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084476, 36.613510, 43.042908>,  <41.418308, 36.803623, 43.213814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084476, 36.613510, 43.042908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850285, 36.356636, 42.844994>,  <41.709770, 36.202511, 42.726246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850285, 36.356636, 42.844994>,  <42.084476, 36.613510, 43.042908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850285, 36.356636, 42.844994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399180, 0.302841, -0.865414,
		0.705600, -0.704188, 0.079042,
		-0.585477, -0.642189, -0.494783,
		41.674641, 36.163979, 42.696560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315727, 35.883427, 42.705620>,  <42.084476, 36.613510, 43.042908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315727, 35.883427, 42.705620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057095, 36.129604, 42.525326>,  <41.901917, 36.277309, 42.417149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057095, 36.129604, 42.525326>,  <42.315727, 35.883427, 42.705620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057095, 36.129604, 42.525326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510836, -0.089504, -0.855006,
		-0.566549, -0.783084, -0.256518,
		-0.646582, 0.615442, -0.450736,
		41.863121, 36.314236, 42.390106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902000, 35.561512, 42.100891>,  <42.315727, 35.883427, 42.705620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902000, 35.561512, 42.100891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894817, 35.954056, 42.024353>,  <41.890507, 36.189583, 41.978432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894817, 35.954056, 42.024353>,  <41.902000, 35.561512, 42.100891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894817, 35.954056, 42.024353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427994, -0.165412, -0.888516,
		-0.903603, -0.097850, -0.417045,
		-0.017957, 0.981358, -0.191346,
		41.889431, 36.248463, 41.966949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825039, 35.629143, 41.411240>,  <41.902000, 35.561512, 42.100891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825039, 35.629143, 41.411240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960720, 35.991825, 41.511494>,  <42.042130, 36.209435, 41.571644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960720, 35.991825, 41.511494>,  <41.825039, 35.629143, 41.411240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960720, 35.991825, 41.511494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653463, -0.035454, -0.756128,
		-0.676703, 0.420261, -0.604528,
		0.339204, 0.906711, 0.250633,
		42.062481, 36.263840, 41.586685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915928, 36.059910, 40.819557>,  <41.825039, 35.629143, 41.411240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915928, 36.059910, 40.819557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126602, 36.295158, 41.065067>,  <42.253006, 36.436306, 41.212372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126602, 36.295158, 41.065067>,  <41.915928, 36.059910, 40.819557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126602, 36.295158, 41.065067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720519, 0.074268, -0.689447,
		-0.451060, 0.805358, -0.384635,
		0.526685, 0.588119, 0.613774,
		42.284607, 36.471596, 41.249199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057293, 36.549511, 40.413887>,  <41.915928, 36.059910, 40.819557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057293, 36.549511, 40.413887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331825, 36.505032, 40.701382>,  <42.496544, 36.478344, 40.873878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331825, 36.505032, 40.701382>,  <42.057293, 36.549511, 40.413887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331825, 36.505032, 40.701382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724127, 0.012408, -0.689555,
		0.067758, 0.993721, 0.089035,
		0.686330, -0.111196, 0.718739,
		42.537724, 36.471672, 40.917004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598156, 37.014194, 40.301739>,  <42.057293, 36.549511, 40.413887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598156, 37.014194, 40.301739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768028, 36.767639, 40.566982>,  <42.869949, 36.619705, 40.726128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768028, 36.767639, 40.566982>,  <42.598156, 37.014194, 40.301739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768028, 36.767639, 40.566982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833544, -0.019659, -0.552103,
		0.353346, 0.787196, 0.505439,
		0.424677, -0.616390, 0.663109,
		42.895432, 36.582722, 40.765915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220901, 37.382221, 40.527153>,  <42.598156, 37.014194, 40.301739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220901, 37.382221, 40.527153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234901, 36.983109, 40.549801>,  <43.243301, 36.743641, 40.563389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234901, 36.983109, 40.549801>,  <43.220901, 37.382221, 40.527153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234901, 36.983109, 40.549801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825555, -0.003058, -0.564314,
		0.563236, 0.066493, 0.823617,
		0.035004, -0.997782, 0.056616,
		43.245403, 36.683773, 40.566784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943420, 37.221668, 40.432571>,  <43.220901, 37.382221, 40.527153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943420, 37.221668, 40.432571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758492, 36.869095, 40.393948>,  <43.647533, 36.657551, 40.370773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758492, 36.869095, 40.393948>,  <43.943420, 37.221668, 40.432571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758492, 36.869095, 40.393948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736154, -0.320838, -0.595937,
		0.494300, -0.346602, 0.797204,
		-0.462326, -0.881436, -0.096562,
		43.619793, 36.604664, 40.364979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459663, 36.742165, 40.588161>,  <43.943420, 37.221668, 40.432571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459663, 36.742165, 40.588161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167793, 36.542919, 40.400776>,  <43.992672, 36.423374, 40.288345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167793, 36.542919, 40.400776>,  <44.459663, 36.742165, 40.588161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167793, 36.542919, 40.400776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660895, -0.337912, -0.670100,
		0.175483, -0.798562, 0.575765,
		-0.729674, -0.498111, -0.468467,
		43.948891, 36.393486, 40.260235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739834, 36.159653, 40.398663>,  <44.459663, 36.742165, 40.588161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739834, 36.159653, 40.398663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436573, 36.196693, 40.140472>,  <44.254616, 36.218918, 39.985558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436573, 36.196693, 40.140472>,  <44.739834, 36.159653, 40.398663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436573, 36.196693, 40.140472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586027, -0.337359, -0.736724,
		-0.285981, -0.936810, 0.201498,
		-0.758148, 0.092606, -0.645474,
		44.209129, 36.224476, 39.946831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689022, 35.538025, 40.052898>,  <44.739834, 36.159653, 40.398663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689022, 35.538025, 40.052898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511192, 35.810440, 39.820164>,  <44.404495, 35.973888, 39.680523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511192, 35.810440, 39.820164>,  <44.689022, 35.538025, 40.052898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511192, 35.810440, 39.820164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514000, -0.338014, -0.788385,
		-0.733591, -0.649563, -0.199781,
		-0.444577, 0.681040, -0.581840,
		44.377819, 36.014751, 39.645611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421261, 35.131638, 39.448624>,  <44.689022, 35.538025, 40.052898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421261, 35.131638, 39.448624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449963, 35.512512, 39.329834>,  <44.467182, 35.741035, 39.258560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449963, 35.512512, 39.329834>,  <44.421261, 35.131638, 39.448624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449963, 35.512512, 39.329834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376196, -0.301590, -0.876082,
		-0.923758, -0.048860, -0.379848,
		0.071754, 0.952185, -0.296977,
		44.471489, 35.798168, 39.240742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149952, 35.123463, 38.838573>,  <44.421261, 35.131638, 39.448624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149952, 35.123463, 38.838573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372124, 35.456085, 38.838650>,  <44.505428, 35.655659, 38.838696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372124, 35.456085, 38.838650>,  <44.149952, 35.123463, 38.838573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372124, 35.456085, 38.838650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442411, -0.295307, -0.846798,
		-0.704107, 0.470426, -0.531915,
		0.555433, 0.831561, 0.000194,
		44.538754, 35.705555, 38.838707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087719, 35.463306, 38.131516>,  <44.149952, 35.123463, 38.838573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087719, 35.463306, 38.131516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397552, 35.663628, 38.286026>,  <44.583454, 35.783821, 38.378731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397552, 35.663628, 38.286026>,  <44.087719, 35.463306, 38.131516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397552, 35.663628, 38.286026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451530, -0.010219, -0.892198,
		-0.442871, 0.865499, -0.234044,
		0.774588, 0.500806, 0.386273,
		44.629929, 35.813869, 38.401909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173893, 35.978600, 37.705669>,  <44.087719, 35.463306, 38.131516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173893, 35.978600, 37.705669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523754, 35.920094, 37.890533>,  <44.733669, 35.884991, 38.001453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523754, 35.920094, 37.890533>,  <44.173893, 35.978600, 37.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523754, 35.920094, 37.890533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442691, -0.147437, -0.884470,
		0.197506, 0.978197, -0.064206,
		0.874652, -0.146264, 0.462159,
		44.786148, 35.876213, 38.029182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625275, 36.460621, 37.330654>,  <44.173893, 35.978600, 37.705669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625275, 36.460621, 37.330654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862408, 36.196465, 37.515015>,  <45.004688, 36.037971, 37.625629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862408, 36.196465, 37.515015>,  <44.625275, 36.460621, 37.330654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862408, 36.196465, 37.515015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655785, 0.063685, -0.752257,
		0.467432, 0.748215, 0.470830,
		0.592835, -0.660392, 0.460900,
		45.040257, 35.998348, 37.653286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268635, 36.734077, 37.322369>,  <44.625275, 36.460621, 37.330654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268635, 36.734077, 37.322369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339371, 36.342201, 37.360191>,  <45.381813, 36.107075, 37.382885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339371, 36.342201, 37.360191>,  <45.268635, 36.734077, 37.322369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339371, 36.342201, 37.360191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651679, 0.044545, -0.757186,
		0.737593, 0.195522, 0.646319,
		0.176837, -0.979687, 0.094561,
		45.392422, 36.048294, 37.388561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861263, 36.650970, 37.157093>,  <45.268635, 36.734077, 37.322369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861263, 36.650970, 37.157093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774632, 36.260506, 37.151402>,  <45.722652, 36.026226, 37.147987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774632, 36.260506, 37.151402>,  <45.861263, 36.650970, 37.157093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774632, 36.260506, 37.151402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581620, -0.117314, -0.804957,
		0.784098, -0.182615, 0.593162,
		-0.216583, -0.976160, -0.014227,
		45.709656, 35.967659, 37.147133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435310, 36.246540, 37.296215>,  <45.861263, 36.650970, 37.157093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435310, 36.246540, 37.296215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173851, 36.039497, 37.075371>,  <46.016975, 35.915272, 36.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173851, 36.039497, 37.075371>,  <46.435310, 36.246540, 37.296215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173851, 36.039497, 37.075371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737380, -0.271400, -0.618556,
		0.170324, -0.811436, 0.559072,
		-0.653651, -0.517603, -0.552111,
		45.977757, 35.884216, 36.909737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751373, 35.668644, 36.984741>,  <46.435310, 36.246540, 37.296215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751373, 35.668644, 36.984741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430134, 35.684685, 36.746944>,  <46.237389, 35.694309, 36.604267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430134, 35.684685, 36.746944>,  <46.751373, 35.668644, 36.984741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430134, 35.684685, 36.746944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561917, -0.280879, -0.778047,
		-0.198185, -0.958905, 0.203037,
		-0.803102, 0.040108, -0.594491,
		46.189201, 35.696716, 36.568596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801582, 35.102356, 36.510395>,  <46.751373, 35.668644, 36.984741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801582, 35.102356, 36.510395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534855, 35.351509, 36.346756>,  <46.374817, 35.501003, 36.248573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534855, 35.351509, 36.346756>,  <46.801582, 35.102356, 36.510395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534855, 35.351509, 36.346756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464193, -0.082279, -0.881904,
		-0.582985, -0.777974, -0.234274,
		-0.666823, 0.622886, -0.409098,
		46.334808, 35.538376, 36.224026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468292, 34.816372, 35.856541>,  <46.801582, 35.102356, 36.510395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468292, 34.816372, 35.856541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517990, 35.213028, 35.842602>,  <46.547810, 35.451023, 35.834240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517990, 35.213028, 35.842602>,  <46.468292, 34.816372, 35.856541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517990, 35.213028, 35.842602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567723, -0.099848, -0.817142,
		-0.813789, 0.081744, -0.575382,
		0.124247, 0.991639, -0.034847,
		46.555264, 35.510521, 35.832150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714420, 34.363579, 35.312260>,  <46.468292, 34.816372, 35.856541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714420, 34.363579, 35.312260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352757, 34.194443, 35.287933>,  <46.135757, 34.092960, 35.273338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352757, 34.194443, 35.287933>,  <46.714420, 34.363579, 35.312260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352757, 34.194443, 35.287933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266901, 0.447984, 0.853273,
		-0.333554, 0.787728, -0.517906,
		-0.904160, -0.422842, -0.060818,
		46.081509, 34.067589, 35.269688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055164, 34.825417, 34.784683>,  <46.714420, 34.363579, 35.312260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055164, 34.825417, 34.784683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363361, 34.645325, 34.965187>,  <47.548279, 34.537270, 35.073490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363361, 34.645325, 34.965187>,  <47.055164, 34.825417, 34.784683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.363361, 34.645325, 34.965187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544764, 0.832681, -0.099366,
		-0.331020, 0.322392, 0.886842,
		0.770492, -0.450228, 0.451262,
		47.594509, 34.510258, 35.100567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.307682, 35.373177, 35.010742>,  <47.055164, 34.825417, 34.784683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.307682, 35.373177, 35.010742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603962, 35.109432, 35.062290>,  <47.781731, 34.951183, 35.093220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603962, 35.109432, 35.062290>,  <47.307682, 35.373177, 35.010742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603962, 35.109432, 35.062290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670085, 0.711200, -0.212558,
		0.048502, 0.243794, 0.968613,
		0.740698, -0.659363, 0.128868,
		47.826172, 34.911625, 35.100952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.510288, 39.166515, 42.072617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.261959, 38.867241, 42.166252>,  <32.112961, 38.687675, 42.222431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.261959, 38.867241, 42.166252>,  <32.510288, 39.166515, 42.072617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261959, 38.867241, 42.166252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376911, -0.546686, -0.747711,
		0.687398, -0.375968, 0.621395,
		-0.620824, -0.748186, 0.234085,
		32.075710, 38.642784, 42.236477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887669, 38.604420, 42.171104>,  <32.510288, 39.166515, 42.072617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887669, 38.604420, 42.171104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.534149, 38.435566, 42.090408>,  <32.322037, 38.334255, 42.041988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.534149, 38.435566, 42.090408>,  <32.887669, 38.604420, 42.171104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534149, 38.435566, 42.090408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457106, -0.687143, -0.564703,
		0.099754, -0.591303, 0.800257,
		-0.883801, -0.422133, -0.201743,
		32.269009, 38.308926, 42.029884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046017, 37.869938, 42.207916>,  <32.887669, 38.604420, 42.171104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046017, 37.869938, 42.207916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702641, 37.899830, 42.004944>,  <32.496613, 37.917763, 41.883160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702641, 37.899830, 42.004944>,  <33.046017, 37.869938, 42.207916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702641, 37.899830, 42.004944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258997, -0.790777, -0.554610,
		-0.442712, -0.607526, 0.659484,
		-0.858445, 0.074728, -0.507433,
		32.445107, 37.922249, 41.852715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652477, 37.236805, 42.274475>,  <33.046017, 37.869938, 42.207916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652477, 37.236805, 42.274475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539280, 37.414989, 41.934715>,  <32.471359, 37.521900, 41.730862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539280, 37.414989, 41.934715>,  <32.652477, 37.236805, 42.274475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539280, 37.414989, 41.934715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108534, -0.865038, -0.489827,
		-0.952960, -0.230808, 0.196455,
		-0.282997, 0.445464, -0.849397,
		32.454380, 37.548630, 41.679897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346882, 36.668980, 42.018009>,  <32.652477, 37.236805, 42.274475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346882, 36.668980, 42.018009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.414925, 36.930412, 41.723011>,  <32.455750, 37.087273, 41.546013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.414925, 36.930412, 41.723011>,  <32.346882, 36.668980, 42.018009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414925, 36.930412, 41.723011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095411, -0.755811, -0.647801,
		-0.980797, 0.039827, -0.190924,
		0.170102, 0.653577, -0.737497,
		32.465954, 37.126484, 41.501762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970106, 36.492947, 41.433483>,  <32.346882, 36.668980, 42.018009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970106, 36.492947, 41.433483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236343, 36.735096, 41.258892>,  <32.396084, 36.880386, 41.154137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236343, 36.735096, 41.258892>,  <31.970106, 36.492947, 41.433483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236343, 36.735096, 41.258892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207939, -0.712109, -0.670568,
		-0.716762, 0.355564, -0.599855,
		0.665592, 0.605371, -0.436478,
		32.436020, 36.916706, 41.127949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955173, 36.400681, 40.697624>,  <31.970106, 36.492947, 41.433483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955173, 36.400681, 40.697624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.315140, 36.564945, 40.756287>,  <32.531120, 36.663502, 40.791485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.315140, 36.564945, 40.756287>,  <31.955173, 36.400681, 40.697624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315140, 36.564945, 40.756287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375274, -0.558079, -0.740079,
		-0.222077, 0.721045, -0.656335,
		0.899917, 0.410660, 0.146652,
		32.585114, 36.688145, 40.800282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310703, 36.425095, 40.006710>,  <31.955173, 36.400681, 40.697624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310703, 36.425095, 40.006710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.604729, 36.455265, 40.276226>,  <32.781143, 36.473366, 40.437935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.604729, 36.455265, 40.276226>,  <32.310703, 36.425095, 40.006710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604729, 36.455265, 40.276226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575330, -0.595195, -0.561016,
		0.358722, 0.800034, -0.480900,
		0.735061, 0.075427, 0.673793,
		32.825249, 36.477894, 40.478363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956608, 36.461266, 39.547886>,  <32.310703, 36.425095, 40.006710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956608, 36.461266, 39.547886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057819, 36.337635, 39.914589>,  <33.118546, 36.263454, 40.134613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057819, 36.337635, 39.914589>,  <32.956608, 36.461266, 39.547886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057819, 36.337635, 39.914589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604466, -0.689364, -0.399248,
		0.755380, 0.655170, 0.012400,
		0.253027, -0.309079, 0.916759,
		33.133728, 36.244911, 40.189617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643620, 36.478832, 39.556168>,  <32.956608, 36.461266, 39.547886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643620, 36.478832, 39.556168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583435, 36.235661, 39.868008>,  <33.547325, 36.089756, 40.055111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583435, 36.235661, 39.868008>,  <33.643620, 36.478832, 39.556168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583435, 36.235661, 39.868008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710180, -0.615059, -0.342559,
		0.687754, 0.502118, 0.524282,
		-0.150459, -0.607932, 0.779603,
		33.538296, 36.053280, 40.101887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258240, 36.476852, 39.910828>,  <33.643620, 36.478832, 39.556168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258240, 36.476852, 39.910828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035995, 36.146576, 39.949860>,  <33.902649, 35.948410, 39.973278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035995, 36.146576, 39.949860>,  <34.258240, 36.476852, 39.910828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035995, 36.146576, 39.949860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677835, -0.517801, -0.521941,
		0.481492, -0.223853, 0.847381,
		-0.555613, -0.825695, 0.097582,
		33.869312, 35.898869, 39.979134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790695, 36.019394, 39.978088>,  <34.258240, 36.476852, 39.910828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790695, 36.019394, 39.978088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468254, 35.785213, 39.943584>,  <34.274788, 35.644707, 39.922882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468254, 35.785213, 39.943584>,  <34.790695, 36.019394, 39.978088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468254, 35.785213, 39.943584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473107, -0.550011, -0.688228,
		0.355479, -0.595595, 0.720348,
		-0.806104, -0.585452, -0.086263,
		34.226421, 35.609577, 39.917706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034229, 35.300560, 40.140129>,  <34.790695, 36.019394, 39.978088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034229, 35.300560, 40.140129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.703342, 35.279945, 39.916325>,  <34.504810, 35.267578, 39.782043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.703342, 35.279945, 39.916325>,  <35.034229, 35.300560, 40.140129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703342, 35.279945, 39.916325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426708, -0.705466, -0.565896,
		-0.365548, -0.706867, 0.605568,
		-0.827221, -0.051538, -0.559508,
		34.455177, 35.264484, 39.748474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935394, 34.580605, 40.014713>,  <35.034229, 35.300560, 40.140129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935394, 34.580605, 40.014713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.713314, 34.775150, 39.744839>,  <34.580067, 34.891876, 39.582912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.713314, 34.775150, 39.744839>,  <34.935394, 34.580605, 40.014713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713314, 34.775150, 39.744839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218555, -0.697376, -0.682569,
		-0.802488, -0.526419, 0.280886,
		-0.555200, 0.486365, -0.674687,
		34.546753, 34.921059, 39.542435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697754, 34.030430, 39.714890>,  <34.935394, 34.580605, 40.014713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697754, 34.030430, 39.714890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637672, 34.327896, 39.454308>,  <34.601624, 34.506378, 39.297958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637672, 34.327896, 39.454308>,  <34.697754, 34.030430, 39.714890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637672, 34.327896, 39.454308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299423, -0.593769, -0.746849,
		-0.942224, -0.307239, -0.133487,
		-0.150201, 0.743668, -0.651458,
		34.592613, 34.550995, 39.258869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233929, 33.827347, 39.189705>,  <34.697754, 34.030430, 39.714890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233929, 33.827347, 39.189705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476219, 34.112995, 39.049347>,  <34.621593, 34.284386, 38.965134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476219, 34.112995, 39.049347>,  <34.233929, 33.827347, 39.189705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476219, 34.112995, 39.049347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352982, -0.636407, -0.685850,
		-0.713089, 0.291581, -0.637562,
		0.605730, 0.714120, -0.350892,
		34.657940, 34.327232, 38.944080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349030, 33.559765, 38.624317>,  <34.233929, 33.827347, 39.189705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349030, 33.559765, 38.624317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.634949, 33.837128, 38.660660>,  <34.806499, 34.003544, 38.682465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.634949, 33.837128, 38.660660>,  <34.349030, 33.559765, 38.624317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634949, 33.837128, 38.660660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483300, -0.395899, -0.780823,
		-0.505457, 0.602041, -0.618110,
		0.714797, 0.693405, 0.090856,
		34.849388, 34.045151, 38.687916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554604, 33.655952, 37.958363>,  <34.349030, 33.559765, 38.624317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554604, 33.655952, 37.958363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862305, 33.838173, 38.137569>,  <35.046925, 33.947506, 38.245094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862305, 33.838173, 38.137569>,  <34.554604, 33.655952, 37.958363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862305, 33.838173, 38.137569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604061, -0.290022, -0.742292,
		-0.208220, 0.841641, -0.498283,
		0.769256, 0.455553, 0.448014,
		35.093082, 33.974838, 38.271973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874695, 34.169804, 37.466965>,  <34.554604, 33.655952, 37.958363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874695, 34.169804, 37.466965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150951, 34.030602, 37.720551>,  <35.316704, 33.947079, 37.872700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150951, 34.030602, 37.720551>,  <34.874695, 34.169804, 37.466965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150951, 34.030602, 37.720551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599718, -0.214308, -0.770980,
		0.404168, 0.912669, 0.060696,
		0.690642, -0.348006, 0.633960,
		35.358143, 33.926201, 37.910740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524551, 34.547119, 37.227802>,  <34.874695, 34.169804, 37.466965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524551, 34.547119, 37.227802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640877, 34.234394, 37.448421>,  <35.710670, 34.046761, 37.580791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640877, 34.234394, 37.448421>,  <35.524551, 34.547119, 37.227802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640877, 34.234394, 37.448421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588053, -0.308677, -0.747605,
		0.754734, 0.541748, 0.369980,
		0.290809, -0.781811, 0.551545,
		35.728119, 33.999851, 37.613884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200695, 34.584045, 37.228073>,  <35.524551, 34.547119, 37.227802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200695, 34.584045, 37.228073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120941, 34.200474, 37.308777>,  <36.073090, 33.970333, 37.357201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120941, 34.200474, 37.308777>,  <36.200695, 34.584045, 37.228073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120941, 34.200474, 37.308777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648824, -0.283488, -0.706160,
		0.734351, -0.009891, 0.678697,
		-0.199387, -0.958925, 0.201762,
		36.061127, 33.912796, 37.369305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774979, 34.196980, 37.178764>,  <36.200695, 34.584045, 37.228073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774979, 34.196980, 37.178764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486637, 33.929386, 37.106281>,  <36.313633, 33.768829, 37.062794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486637, 33.929386, 37.106281>,  <36.774979, 34.196980, 37.178764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486637, 33.929386, 37.106281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563464, -0.413417, -0.715259,
		0.403582, -0.617699, 0.674959,
		-0.720854, -0.668981, -0.181203,
		36.270382, 33.728691, 37.051922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447933, 34.406677, 36.992260>,  <36.774979, 34.196980, 37.178764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447933, 34.406677, 36.992260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717388, 34.689899, 36.907532>,  <37.879063, 34.859833, 36.856693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717388, 34.689899, 36.907532>,  <37.447933, 34.406677, 36.992260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717388, 34.689899, 36.907532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518909, 0.657215, 0.546628,
		0.526255, -0.258314, 0.810142,
		0.673639, 0.708056, -0.211821,
		37.919479, 34.902317, 36.843987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609146, 34.674595, 37.624542>,  <37.447933, 34.406677, 36.992260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609146, 34.674595, 37.624542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778973, 34.981899, 37.432907>,  <37.880867, 35.166283, 37.317924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778973, 34.981899, 37.432907>,  <37.609146, 34.674595, 37.624542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778973, 34.981899, 37.432907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555396, 0.638885, 0.532318,
		0.715040, 0.040081, 0.697934,
		0.424563, 0.768258, -0.479089,
		37.906342, 35.212376, 37.289181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755440, 35.250805, 38.148071>,  <37.609146, 34.674595, 37.624542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755440, 35.250805, 38.148071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735966, 35.399677, 37.777317>,  <37.724281, 35.489002, 37.554867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735966, 35.399677, 37.777317>,  <37.755440, 35.250805, 38.148071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735966, 35.399677, 37.777317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413371, 0.837271, 0.357913,
		0.909260, 0.400571, 0.113088,
		-0.048684, 0.372183, -0.926882,
		37.721359, 35.511333, 37.499252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039555, 35.929775, 38.195053>,  <37.755440, 35.250805, 38.148071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039555, 35.929775, 38.195053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.825672, 35.950001, 37.857643>,  <37.697342, 35.962135, 37.655197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.825672, 35.950001, 37.857643>,  <38.039555, 35.929775, 38.195053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825672, 35.950001, 37.857643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475675, 0.807030, 0.349908,
		0.698444, 0.588341, -0.407470,
		-0.534705, 0.050568, -0.843524,
		37.665260, 35.965172, 37.604588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123585, 36.522232, 37.872513>,  <38.039555, 35.929775, 38.195053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123585, 36.522232, 37.872513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761848, 36.404285, 37.749081>,  <37.544807, 36.333515, 37.675022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761848, 36.404285, 37.749081>,  <38.123585, 36.522232, 37.872513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761848, 36.404285, 37.749081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393026, 0.857240, 0.332672,
		0.166432, 0.422128, -0.891128,
		-0.904340, -0.294869, -0.308580,
		37.490547, 36.315826, 37.656506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809784, 37.142361, 37.616314>,  <38.123585, 36.522232, 37.872513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809784, 37.142361, 37.616314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494411, 36.902245, 37.670029>,  <37.305187, 36.758175, 37.702255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494411, 36.902245, 37.670029>,  <37.809784, 37.142361, 37.616314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494411, 36.902245, 37.670029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528108, 0.772503, 0.352621,
		-0.315410, 0.207100, -0.926081,
		-0.788428, -0.600291, 0.134284,
		37.257881, 36.722157, 37.710312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295540, 37.391994, 37.204643>,  <37.809784, 37.142361, 37.616314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295540, 37.391994, 37.204643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103848, 37.181030, 37.485264>,  <36.988831, 37.054451, 37.653637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103848, 37.181030, 37.485264>,  <37.295540, 37.391994, 37.204643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103848, 37.181030, 37.485264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664481, 0.740232, 0.102578,
		-0.573413, -0.417011, -0.705195,
		-0.479231, -0.527408, 0.701554,
		36.960079, 37.022808, 37.695728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626839, 37.663315, 37.138058>,  <37.295540, 37.391994, 37.204643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626839, 37.663315, 37.138058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629375, 37.481804, 37.494495>,  <36.630898, 37.372898, 37.708359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629375, 37.481804, 37.494495>,  <36.626839, 37.663315, 37.138058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629375, 37.481804, 37.494495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533977, 0.751888, 0.386695,
		-0.845475, -0.478276, -0.237538,
		0.006345, -0.453780, 0.891091,
		36.631279, 37.345669, 37.761822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071384, 37.787571, 37.330608>,  <36.626839, 37.663315, 37.138058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071384, 37.787571, 37.330608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201145, 37.681240, 37.693729>,  <36.278999, 37.617443, 37.911602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201145, 37.681240, 37.693729>,  <36.071384, 37.787571, 37.330608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201145, 37.681240, 37.693729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600784, 0.683376, 0.414796,
		-0.730633, -0.679951, 0.061982,
		0.324398, -0.265825, 0.907801,
		36.298466, 37.601494, 37.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532486, 37.951790, 37.804565>,  <36.071384, 37.787571, 37.330608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532486, 37.951790, 37.804565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843082, 37.914173, 38.053795>,  <36.029442, 37.891605, 38.203331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843082, 37.914173, 38.053795>,  <35.532486, 37.951790, 37.804565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843082, 37.914173, 38.053795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421852, 0.656940, 0.624876,
		-0.468084, -0.748055, 0.470437,
		0.776491, -0.094040, 0.623072,
		36.076031, 37.885960, 38.240715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222206, 37.896954, 38.427902>,  <35.532486, 37.951790, 37.804565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222206, 37.896954, 38.427902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601494, 38.011005, 38.483871>,  <35.829067, 38.079437, 38.517452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601494, 38.011005, 38.483871>,  <35.222206, 37.896954, 38.427902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601494, 38.011005, 38.483871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306234, 0.703918, 0.640874,
		0.084238, -0.650540, 0.754786,
		0.948222, 0.285127, 0.139921,
		35.885960, 38.096542, 38.525848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437027, 37.761711, 39.230106>,  <35.222206, 37.896954, 38.427902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437027, 37.761711, 39.230106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653496, 38.046272, 39.050758>,  <35.783379, 38.217010, 38.943150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653496, 38.046272, 39.050758>,  <35.437027, 37.761711, 39.230106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653496, 38.046272, 39.050758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331609, 0.670531, 0.663644,
		0.772766, -0.210462, 0.598780,
		0.541172, 0.711403, -0.448373,
		35.815849, 38.259693, 38.916248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595623, 38.053028, 39.832195>,  <35.437027, 37.761711, 39.230106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595623, 38.053028, 39.832195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630604, 38.293697, 39.514618>,  <35.651592, 38.438099, 39.324070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630604, 38.293697, 39.514618>,  <35.595623, 38.053028, 39.832195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630604, 38.293697, 39.514618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314099, 0.772997, 0.551197,
		0.945354, 0.201172, 0.256587,
		0.087455, 0.601669, -0.793943,
		35.656841, 38.474197, 39.276436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003910, 38.524784, 40.127487>,  <35.595623, 38.053028, 39.832195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003910, 38.524784, 40.127487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769928, 38.646515, 39.826763>,  <35.629539, 38.719551, 39.646328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769928, 38.646515, 39.826763>,  <36.003910, 38.524784, 40.127487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769928, 38.646515, 39.826763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590287, 0.475956, 0.651941,
		0.556230, 0.825137, -0.098774,
		-0.584953, 0.304324, -0.751809,
		35.594440, 38.737812, 39.601219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011654, 39.272358, 40.162640>,  <36.003910, 38.524784, 40.127487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011654, 39.272358, 40.162640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694992, 39.125210, 39.967514>,  <35.504997, 39.036922, 39.850441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694992, 39.125210, 39.967514>,  <36.011654, 39.272358, 40.162640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694992, 39.125210, 39.967514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610962, 0.472212, 0.635406,
		-0.003394, 0.801055, -0.598581,
		-0.791653, -0.367867, -0.487811,
		35.457497, 39.014851, 39.821171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532940, 39.812218, 40.130379>,  <36.011654, 39.272358, 40.162640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532940, 39.812218, 40.130379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301311, 39.494377, 40.057407>,  <35.162334, 39.303673, 40.013622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301311, 39.494377, 40.057407>,  <35.532940, 39.812218, 40.130379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301311, 39.494377, 40.057407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699956, 0.369817, 0.610981,
		-0.418022, 0.481494, -0.770338,
		-0.579068, -0.794606, -0.182432,
		35.127590, 39.255997, 40.002678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875637, 40.054520, 39.987846>,  <35.532940, 39.812218, 40.130379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875637, 40.054520, 39.987846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841545, 39.679024, 40.121410>,  <34.821091, 39.453724, 40.201550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841545, 39.679024, 40.121410>,  <34.875637, 40.054520, 39.987846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841545, 39.679024, 40.121410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493917, 0.330858, 0.804101,
		-0.865323, -0.096393, -0.491859,
		-0.085226, -0.938744, 0.333909,
		34.815979, 39.397400, 40.221584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182281, 40.035519, 40.144882>,  <34.875637, 40.054520, 39.987846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182281, 40.035519, 40.144882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335316, 39.718773, 40.335285>,  <34.427135, 39.528725, 40.449528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335316, 39.718773, 40.335285>,  <34.182281, 40.035519, 40.144882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335316, 39.718773, 40.335285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550880, 0.218095, 0.805584,
		-0.741727, -0.570426, -0.352782,
		0.382586, -0.791864, 0.476003,
		34.450092, 39.481213, 40.478085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.662380, 39.611710, 40.391216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957558, 39.496960, 40.635559>,  <34.134663, 39.428112, 40.782166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957558, 39.496960, 40.635559>,  <33.662380, 39.611710, 40.391216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957558, 39.496960, 40.635559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593031, 0.156390, 0.789846,
		-0.322118, -0.945117, -0.054718,
		0.737939, -0.286873, 0.610860,
		34.178940, 39.410896, 40.818817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323406, 39.149117, 40.911358>,  <33.662380, 39.611710, 40.391216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323406, 39.149117, 40.911358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664886, 39.289631, 41.065136>,  <33.869774, 39.373940, 41.157402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664886, 39.289631, 41.065136>,  <33.323406, 39.149117, 40.911358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664886, 39.289631, 41.065136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452217, 0.133967, 0.881790,
		0.258260, -0.926633, 0.273226,
		0.853699, 0.351289, 0.384441,
		33.920998, 39.395016, 41.180470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214043, 39.039993, 41.671429>,  <33.323406, 39.149117, 40.911358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214043, 39.039993, 41.671429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541512, 39.266750, 41.634743>,  <33.737991, 39.402805, 41.612732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541512, 39.266750, 41.634743>,  <33.214043, 39.039993, 41.671429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541512, 39.266750, 41.634743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187043, 0.414224, 0.890749,
		0.542949, -0.712075, 0.445147,
		0.818671, 0.566892, -0.091714,
		33.787113, 39.436817, 41.607227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571678, 39.123028, 42.290157>,  <33.214043, 39.039993, 41.671429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571678, 39.123028, 42.290157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699047, 39.436844, 42.077328>,  <33.775471, 39.625134, 41.949631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699047, 39.436844, 42.077328>,  <33.571678, 39.123028, 42.290157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699047, 39.436844, 42.077328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126785, 0.591493, 0.796280,
		0.939431, -0.186097, 0.287814,
		0.318425, 0.784541, -0.532073,
		33.794575, 39.672207, 41.917706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027157, 39.460609, 42.734905>,  <33.571678, 39.123028, 42.290157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027157, 39.460609, 42.734905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926502, 39.740238, 42.467178>,  <33.866108, 39.908016, 42.306541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926502, 39.740238, 42.467178>,  <34.027157, 39.460609, 42.734905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926502, 39.740238, 42.467178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000092, 0.691585, 0.722295,
		0.967821, 0.181697, -0.174096,
		-0.251641, 0.699068, -0.669314,
		33.851009, 39.949959, 42.266384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564594, 40.040779, 42.829079>,  <34.027157, 39.460609, 42.734905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564594, 40.040779, 42.829079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216637, 40.163010, 42.674213>,  <34.007862, 40.236347, 42.581295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216637, 40.163010, 42.674213>,  <34.564594, 40.040779, 42.829079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216637, 40.163010, 42.674213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023799, 0.758042, 0.651771,
		0.492656, 0.576189, -0.652148,
		-0.869899, 0.305579, -0.387167,
		33.955666, 40.254684, 42.558064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580788, 40.823605, 42.841732>,  <34.564594, 40.040779, 42.829079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580788, 40.823605, 42.841732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195179, 40.755737, 42.759880>,  <33.963814, 40.715015, 42.710770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195179, 40.755737, 42.759880>,  <34.580788, 40.823605, 42.841732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195179, 40.755737, 42.759880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257996, 0.782608, 0.566536,
		0.064023, 0.598948, -0.798225,
		-0.964022, -0.169668, -0.204630,
		33.905972, 40.704838, 42.698490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278984, 41.484280, 42.797516>,  <34.580788, 40.823605, 42.841732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278984, 41.484280, 42.797516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989475, 41.223656, 42.888405>,  <33.815769, 41.067280, 42.942936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989475, 41.223656, 42.888405>,  <34.278984, 41.484280, 42.797516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989475, 41.223656, 42.888405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384227, 0.654046, 0.651608,
		-0.573173, 0.384310, -0.723725,
		-0.723769, -0.651559, 0.227219,
		33.772343, 41.028187, 42.956570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713734, 41.855194, 42.597504>,  <34.278984, 41.484280, 42.797516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713734, 41.855194, 42.597504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604546, 41.580147, 42.866623>,  <33.539032, 41.415119, 43.028095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604546, 41.580147, 42.866623>,  <33.713734, 41.855194, 42.597504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604546, 41.580147, 42.866623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106231, 0.716631, 0.689315,
		-0.956138, 0.116693, -0.268668,
		-0.272974, -0.687621, 0.672802,
		33.522652, 41.373859, 43.068462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189430, 42.202824, 42.889111>,  <33.713734, 41.855194, 42.597504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189430, 42.202824, 42.889111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290710, 41.905449, 43.136723>,  <33.351479, 41.727024, 43.285290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290710, 41.905449, 43.136723>,  <33.189430, 42.202824, 42.889111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290710, 41.905449, 43.136723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204987, 0.584121, 0.785355,
		-0.945448, -0.325742, -0.004497,
		0.253196, -0.743434, 0.619029,
		33.366669, 41.682419, 43.322430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653122, 42.314129, 43.392162>,  <33.189430, 42.202824, 42.889111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653122, 42.314129, 43.392162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902924, 42.049034, 43.557461>,  <33.052803, 41.889977, 43.656639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902924, 42.049034, 43.557461>,  <32.653122, 42.314129, 43.392162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902924, 42.049034, 43.557461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359703, 0.225594, 0.905385,
		-0.693259, -0.714062, -0.097504,
		0.624504, -0.662739, 0.413245,
		33.090275, 41.850212, 43.681435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223267, 41.772308, 43.736256>,  <32.653122, 42.314129, 43.392162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223267, 41.772308, 43.736256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589027, 41.843601, 43.881638>,  <32.808483, 41.886375, 43.968868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589027, 41.843601, 43.881638>,  <32.223267, 41.772308, 43.736256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589027, 41.843601, 43.881638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396575, 0.214309, 0.892636,
		0.081204, -0.960367, 0.266647,
		0.914404, 0.178231, 0.363455,
		32.863350, 41.897072, 43.990673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135456, 41.568401, 44.374844>,  <32.223267, 41.772308, 43.736256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135456, 41.568401, 44.374844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480423, 41.770348, 44.389542>,  <32.687401, 41.891518, 44.398361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480423, 41.770348, 44.389542>,  <32.135456, 41.568401, 44.374844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480423, 41.770348, 44.389542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210249, 0.291231, 0.933263,
		0.460477, -0.812583, 0.357310,
		0.862413, 0.504870, 0.036740,
		32.739147, 41.921810, 44.400562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509727, 41.355431, 45.001598>,  <32.135456, 41.568401, 44.374844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509727, 41.355431, 45.001598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678535, 41.706757, 44.911739>,  <32.779819, 41.917553, 44.857826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678535, 41.706757, 44.911739>,  <32.509727, 41.355431, 45.001598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678535, 41.706757, 44.911739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245461, 0.349235, 0.904314,
		0.872726, -0.326493, 0.362975,
		0.422016, 0.878315, -0.224645,
		32.805141, 41.970253, 44.844345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964748, 41.514164, 45.540218>,  <32.509727, 41.355431, 45.001598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964748, 41.514164, 45.540218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875530, 41.872173, 45.385723>,  <32.821999, 42.086979, 45.293026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875530, 41.872173, 45.385723>,  <32.964748, 41.514164, 45.540218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875530, 41.872173, 45.385723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128523, 0.365758, 0.921793,
		0.966299, 0.255240, 0.033452,
		-0.223043, 0.895027, -0.386236,
		32.808617, 42.140682, 45.269852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192924, 42.088436, 45.959892>,  <32.964748, 41.514164, 45.540218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192924, 42.088436, 45.959892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921036, 42.290745, 45.747414>,  <32.757904, 42.412128, 45.619926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921036, 42.290745, 45.747414>,  <33.192924, 42.088436, 45.959892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921036, 42.290745, 45.747414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343293, 0.420635, 0.839772,
		0.648172, 0.753169, -0.112288,
		-0.679722, 0.505769, -0.531201,
		32.717117, 42.442474, 45.588055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279560, 42.801479, 46.117760>,  <33.192924, 42.088436, 45.959892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279560, 42.801479, 46.117760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906525, 42.785614, 45.974255>,  <32.682705, 42.776093, 45.888153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906525, 42.785614, 45.974255>,  <33.279560, 42.801479, 46.117760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906525, 42.785614, 45.974255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310870, 0.593361, 0.742484,
		0.183423, 0.803958, -0.565692,
		-0.932586, -0.039668, -0.358763,
		32.626747, 42.773712, 45.866627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061138, 43.437458, 46.192963>,  <33.279560, 42.801479, 46.117760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061138, 43.437458, 46.192963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.711876, 43.253170, 46.129299>,  <32.502319, 43.142597, 46.091099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.711876, 43.253170, 46.129299>,  <33.061138, 43.437458, 46.192963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711876, 43.253170, 46.129299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394250, 0.475505, 0.786424,
		-0.286638, 0.749422, -0.596829,
		-0.873158, -0.460719, -0.159162,
		32.449928, 43.114956, 46.081551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553753, 43.957645, 46.136616>,  <33.061138, 43.437458, 46.192963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553753, 43.957645, 46.136616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332077, 43.633308, 46.211891>,  <32.199070, 43.438705, 46.257057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332077, 43.633308, 46.211891>,  <32.553753, 43.957645, 46.136616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332077, 43.633308, 46.211891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509359, 0.509151, 0.693771,
		-0.658350, 0.288629, -0.695175,
		-0.554192, -0.810838, 0.188184,
		32.165821, 43.390057, 46.268345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887306, 44.217934, 46.209377>,  <32.553753, 43.957645, 46.136616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887306, 44.217934, 46.209377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882677, 43.858463, 46.384758>,  <31.879900, 43.642780, 46.489986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882677, 43.858463, 46.384758>,  <31.887306, 44.217934, 46.209377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882677, 43.858463, 46.384758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514097, 0.381438, 0.768250,
		-0.857654, -0.216519, -0.466422,
		-0.011571, -0.898679, 0.438454,
		31.879206, 43.588860, 46.516293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217968, 44.064980, 46.323418>,  <31.887306, 44.217934, 46.209377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217968, 44.064980, 46.323418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437685, 43.854393, 46.582989>,  <31.569515, 43.728039, 46.738731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437685, 43.854393, 46.582989>,  <31.217968, 44.064980, 46.323418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437685, 43.854393, 46.582989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537673, 0.371794, 0.756754,
		-0.639675, -0.764591, -0.078845,
		0.549294, -0.526469, 0.648927,
		31.602472, 43.696453, 46.777668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727524, 43.725250, 46.750164>,  <31.217968, 44.064980, 46.323418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727524, 43.725250, 46.750164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060173, 43.728809, 46.972271>,  <31.259762, 43.730946, 47.105534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060173, 43.728809, 46.972271>,  <30.727524, 43.725250, 46.750164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060173, 43.728809, 46.972271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530343, 0.309327, 0.789337,
		-0.164736, -0.950914, 0.261962,
		0.831624, 0.008898, 0.555268,
		31.309660, 43.731480, 47.138851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485472, 43.365082, 47.317570>,  <30.727524, 43.725250, 46.750164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485472, 43.365082, 47.317570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771074, 43.638100, 47.379955>,  <30.942436, 43.801910, 47.417385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771074, 43.638100, 47.379955>,  <30.485472, 43.365082, 47.317570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771074, 43.638100, 47.379955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474058, 0.307373, 0.825101,
		0.515233, -0.663061, 0.543033,
		0.714006, 0.682548, 0.155961,
		30.985277, 43.842865, 47.426743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797470, 43.384464, 47.982258>,  <30.485472, 43.365082, 47.317570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797470, 43.384464, 47.982258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.751163, 43.730206, 47.786503>,  <30.723379, 43.937649, 47.669052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.751163, 43.730206, 47.786503>,  <30.797470, 43.384464, 47.982258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751163, 43.730206, 47.786503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588937, 0.337019, 0.734555,
		0.799845, 0.373254, 0.470032,
		-0.115766, 0.864350, -0.489386,
		30.716434, 43.989510, 47.639687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359270, 43.109169, 48.478840>,  <30.797470, 43.384464, 47.982258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359270, 43.109169, 48.478840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007261, 42.924484, 48.523354>,  <29.796057, 42.813675, 48.550064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007261, 42.924484, 48.523354>,  <30.359270, 43.109169, 48.478840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007261, 42.924484, 48.523354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330188, -0.763210, -0.555416,
		0.341378, -0.452032, 0.824092,
		-0.880021, -0.461712, 0.111288,
		29.743256, 42.785969, 48.556740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518806, 42.435181, 48.644115>,  <30.359270, 43.109169, 48.478840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518806, 42.435181, 48.644115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141367, 42.415142, 48.513203>,  <29.914904, 42.403118, 48.434654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141367, 42.415142, 48.513203>,  <30.518806, 42.435181, 48.644115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141367, 42.415142, 48.513203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268295, -0.694913, -0.667168,
		-0.194009, -0.717346, 0.669160,
		-0.943598, -0.050096, -0.327280,
		29.858288, 42.400112, 48.415020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371601, 41.724365, 48.673351>,  <30.518806, 42.435181, 48.644115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371601, 41.724365, 48.673351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.145521, 41.905045, 48.397228>,  <30.009872, 42.013451, 48.231556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.145521, 41.905045, 48.397228>,  <30.371601, 41.724365, 48.673351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145521, 41.905045, 48.397228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276418, -0.684713, -0.674360,
		-0.777266, -0.571961, 0.262142,
		-0.565200, 0.451696, -0.690305,
		29.975962, 42.040554, 48.190136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951889, 41.176456, 48.338024>,  <30.371601, 41.724365, 48.673351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951889, 41.176456, 48.338024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895603, 41.473488, 48.076099>,  <29.861832, 41.651707, 47.918945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895603, 41.473488, 48.076099>,  <29.951889, 41.176456, 48.338024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895603, 41.473488, 48.076099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274230, -0.606280, -0.746473,
		-0.951313, -0.284608, -0.118325,
		-0.140714, 0.742578, -0.654811,
		29.853390, 41.696262, 47.879658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549482, 40.896179, 47.830418>,  <29.951889, 41.176456, 48.338024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549482, 40.896179, 47.830418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718349, 41.209095, 47.647205>,  <29.819670, 41.396847, 47.537277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718349, 41.209095, 47.647205>,  <29.549482, 40.896179, 47.830418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718349, 41.209095, 47.647205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099067, -0.542051, -0.834486,
		-0.901088, 0.306917, -0.306336,
		0.422167, 0.782293, -0.458031,
		29.844999, 41.443783, 47.509796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242216, 40.834610, 47.221279>,  <29.549482, 40.896179, 47.830418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242216, 40.834610, 47.221279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571115, 41.056633, 47.170975>,  <29.768456, 41.189846, 47.140793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571115, 41.056633, 47.170975>,  <29.242216, 40.834610, 47.221279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571115, 41.056633, 47.170975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236355, -0.534050, -0.811743,
		-0.517729, 0.637730, -0.570313,
		0.822249, 0.555059, -0.125763,
		29.817791, 41.223152, 47.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370480, 40.702335, 46.537239>,  <29.242216, 40.834610, 47.221279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370480, 40.702335, 46.537239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.706320, 40.865204, 46.681065>,  <29.907824, 40.962925, 46.767361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.706320, 40.865204, 46.681065>,  <29.370480, 40.702335, 46.537239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706320, 40.865204, 46.681065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539877, -0.552299, -0.635216,
		-0.060057, 0.727446, -0.683532,
		0.839599, 0.407172, 0.359562,
		29.958199, 40.987354, 46.788933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633802, 41.014065, 46.011871>,  <29.370480, 40.702335, 46.537239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633802, 41.014065, 46.011871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.937901, 40.926491, 46.256523>,  <30.120359, 40.873947, 46.403313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.937901, 40.926491, 46.256523>,  <29.633802, 41.014065, 46.011871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937901, 40.926491, 46.256523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540037, -0.310325, -0.782341,
		0.361086, 0.925076, -0.117691,
		0.760248, -0.218935, 0.611630,
		30.165976, 40.860809, 46.440014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239473, 41.231026, 45.626709>,  <29.633802, 41.014065, 46.011871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239473, 41.231026, 45.626709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.383591, 41.000984, 45.920494>,  <30.470060, 40.862957, 46.096767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.383591, 41.000984, 45.920494>,  <30.239473, 41.231026, 45.626709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383591, 41.000984, 45.920494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748404, -0.291790, -0.595609,
		0.556849, 0.764271, 0.325283,
		0.360292, -0.575107, 0.734466,
		30.491678, 40.828453, 46.140835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943905, 41.322056, 45.633736>,  <30.239473, 41.231026, 45.626709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943905, 41.322056, 45.633736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.860214, 40.974045, 45.812294>,  <30.809999, 40.765236, 45.919430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.860214, 40.974045, 45.812294>,  <30.943905, 41.322056, 45.633736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860214, 40.974045, 45.812294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574616, -0.478760, -0.663781,
		0.791227, 0.117626, 0.600103,
		-0.209228, -0.870030, 0.446398,
		30.797445, 40.713036, 45.946213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595089, 41.067501, 45.550121>,  <30.943905, 41.322056, 45.633736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595089, 41.067501, 45.550121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358438, 40.757240, 45.638073>,  <31.216448, 40.571083, 45.690842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358438, 40.757240, 45.638073>,  <31.595089, 41.067501, 45.550121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358438, 40.757240, 45.638073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391473, -0.514804, -0.762709,
		0.704789, -0.365162, 0.608217,
		-0.591626, -0.775650, 0.219878,
		31.180950, 40.524544, 45.704037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023350, 40.437439, 45.631855>,  <31.595089, 41.067501, 45.550121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023350, 40.437439, 45.631855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658621, 40.335880, 45.502785>,  <31.439783, 40.274944, 45.425343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658621, 40.335880, 45.502785>,  <32.023350, 40.437439, 45.631855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658621, 40.335880, 45.502785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409750, -0.512558, -0.754579,
		0.026199, -0.820256, 0.571396,
		-0.911822, -0.253899, -0.322671,
		31.385075, 40.259712, 45.405983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154545, 39.838230, 45.270988>,  <32.023350, 40.437439, 45.631855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154545, 39.838230, 45.270988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787653, 39.945141, 45.152840>,  <31.567516, 40.009285, 45.081951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787653, 39.945141, 45.152840>,  <32.154545, 39.838230, 45.270988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787653, 39.945141, 45.152840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127524, -0.505459, -0.853375,
		-0.377383, -0.820412, 0.429542,
		-0.917235, 0.267272, -0.295374,
		31.512482, 40.025322, 45.064228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754221, 39.171669, 45.019062>,  <32.154545, 39.838230, 45.270988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754221, 39.171669, 45.019062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.599304, 39.496719, 44.844868>,  <31.506353, 39.691750, 44.740353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.599304, 39.496719, 44.844868>,  <31.754221, 39.171669, 45.019062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599304, 39.496719, 44.844868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100405, -0.432362, -0.896092,
		-0.916473, -0.390776, 0.085859,
		-0.387294, 0.812624, -0.435484,
		31.483116, 39.740505, 44.714222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351954, 38.907188, 44.615677>,  <31.754221, 39.171669, 45.019062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351954, 38.907188, 44.615677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392664, 39.278309, 44.472107>,  <31.417089, 39.500980, 44.385967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392664, 39.278309, 44.472107>,  <31.351954, 38.907188, 44.615677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392664, 39.278309, 44.472107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002916, -0.360516, -0.932748,
		-0.994803, 0.095977, -0.033987,
		0.101775, 0.927802, -0.358922,
		31.423197, 39.556648, 44.364429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827415, 38.924030, 44.129673>,  <31.351954, 38.907188, 44.615677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827415, 38.924030, 44.129673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110394, 39.188499, 44.029774>,  <31.280180, 39.347179, 43.969833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110394, 39.188499, 44.029774>,  <30.827415, 38.924030, 44.129673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110394, 39.188499, 44.029774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050536, -0.399781, -0.915217,
		-0.704959, 0.634844, -0.316236,
		0.707445, 0.661172, -0.249746,
		31.322628, 39.386852, 43.954849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608927, 39.153580, 43.543449>,  <30.827415, 38.924030, 44.129673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608927, 39.153580, 43.543449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002522, 39.224716, 43.538723>,  <31.238678, 39.267399, 43.535885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002522, 39.224716, 43.538723>,  <30.608927, 39.153580, 43.543449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002522, 39.224716, 43.538723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077783, -0.488137, -0.869294,
		-0.160366, 0.854455, -0.494155,
		0.983988, 0.177842, -0.011818,
		31.297718, 39.278069, 43.535179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629215, 39.291531, 42.901073>,  <30.608927, 39.153580, 43.543449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629215, 39.291531, 42.901073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006506, 39.229397, 43.018513>,  <31.232880, 39.192116, 43.088974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006506, 39.229397, 43.018513>,  <30.629215, 39.291531, 42.901073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006506, 39.229397, 43.018513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216615, -0.382421, -0.898239,
		0.251802, 0.910838, -0.327062,
		0.943225, -0.155332, 0.293595,
		31.289474, 39.182796, 43.106590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106911, 39.554966, 42.320923>,  <30.629215, 39.291531, 42.901073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106911, 39.554966, 42.320923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312061, 39.294369, 42.544533>,  <31.435152, 39.138012, 42.678699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312061, 39.294369, 42.544533>,  <31.106911, 39.554966, 42.320923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312061, 39.294369, 42.544533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410454, -0.385838, -0.826230,
		0.753978, 0.653211, 0.069521,
		0.512878, -0.651494, 0.559027,
		31.465925, 39.098919, 42.712242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843039, 39.543716, 42.069878>,  <31.106911, 39.554966, 42.320923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843039, 39.543716, 42.069878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838905, 39.190090, 42.256779>,  <31.836426, 38.977917, 42.368919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838905, 39.190090, 42.256779>,  <31.843039, 39.543716, 42.069878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838905, 39.190090, 42.256779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414150, -0.429101, -0.802716,
		0.910150, 0.185220, 0.370568,
		-0.010332, -0.884062, 0.467255,
		31.835806, 38.924873, 42.396954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.040436, 39.598965, 42.561832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805496, 39.275230, 42.562618>,  <39.664532, 39.080990, 42.563087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805496, 39.275230, 42.562618>,  <40.040436, 39.598965, 42.561832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805496, 39.275230, 42.562618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711159, -0.517251, -0.476134,
		0.386366, -0.278261, 0.879370,
		-0.587344, -0.809335, 0.001960,
		39.629292, 39.032429, 42.563206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486149, 39.001709, 42.449841>,  <40.040436, 39.598965, 42.561832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486149, 39.001709, 42.449841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123890, 38.895981, 42.317207>,  <39.906536, 38.832546, 42.237629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123890, 38.895981, 42.317207>,  <40.486149, 39.001709, 42.449841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123890, 38.895981, 42.317207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423921, -0.583015, -0.693098,
		-0.010120, -0.768264, 0.640053,
		-0.905643, -0.264317, -0.331583,
		39.852196, 38.816685, 42.217731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491783, 38.298595, 42.265427>,  <40.486149, 39.001709, 42.449841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491783, 38.298595, 42.265427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154087, 38.375908, 42.065464>,  <39.951469, 38.422295, 41.945484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154087, 38.375908, 42.065464>,  <40.491783, 38.298595, 42.265427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154087, 38.375908, 42.065464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336633, -0.534577, -0.775181,
		-0.417065, -0.822722, 0.386246,
		-0.844237, 0.193277, -0.499908,
		39.900818, 38.433891, 41.915493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230045, 37.649029, 42.046520>,  <40.491783, 38.298595, 42.265427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230045, 37.649029, 42.046520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.098396, 37.930470, 41.794609>,  <40.019405, 38.099335, 41.643463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.098396, 37.930470, 41.794609>,  <40.230045, 37.649029, 42.046520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098396, 37.930470, 41.794609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187061, -0.605142, -0.773829,
		-0.925573, -0.372493, 0.067552,
		-0.329125, 0.703599, -0.629782,
		39.999660, 38.141548, 41.605675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841110, 37.257324, 41.480907>,  <40.230045, 37.649029, 42.046520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841110, 37.257324, 41.480907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.913322, 37.627422, 41.347443>,  <39.956650, 37.849480, 41.267365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.913322, 37.627422, 41.347443>,  <39.841110, 37.257324, 41.480907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913322, 37.627422, 41.347443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201304, -0.366809, -0.908255,
		-0.962749, 0.096799, -0.252475,
		0.180529, 0.925246, -0.333659,
		39.967480, 37.904995, 41.247345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389847, 37.231312, 40.857288>,  <39.841110, 37.257324, 41.480907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389847, 37.231312, 40.857288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671535, 37.512859, 40.820118>,  <39.840549, 37.681789, 40.797817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671535, 37.512859, 40.820118>,  <39.389847, 37.231312, 40.857288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671535, 37.512859, 40.820118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077437, -0.206254, -0.975430,
		-0.705744, 0.679723, -0.199754,
		0.704222, 0.703872, -0.092927,
		39.882801, 37.724022, 40.792240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229710, 37.543781, 40.262733>,  <39.389847, 37.231312, 40.857288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229710, 37.543781, 40.262733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.611427, 37.653156, 40.310989>,  <39.840458, 37.718781, 40.339943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.611427, 37.653156, 40.310989>,  <39.229710, 37.543781, 40.262733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611427, 37.653156, 40.310989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232724, -0.426611, -0.873981,
		-0.187517, 0.862110, -0.470749,
		0.954294, 0.273441, 0.120637,
		39.897717, 37.735188, 40.347179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501747, 37.965355, 39.620785>,  <39.229710, 37.543781, 40.262733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501747, 37.965355, 39.620785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838436, 37.844383, 39.799686>,  <40.040451, 37.771801, 39.907028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838436, 37.844383, 39.799686>,  <39.501747, 37.965355, 39.620785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838436, 37.844383, 39.799686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337099, -0.352702, -0.872906,
		0.421741, 0.885515, -0.194929,
		0.841724, -0.302430, 0.447255,
		40.090954, 37.753654, 39.933865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079575, 38.299828, 39.160431>,  <39.501747, 37.965355, 39.620785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079575, 38.299828, 39.160431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236153, 37.993069, 39.363861>,  <40.330101, 37.809013, 39.485920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236153, 37.993069, 39.363861>,  <40.079575, 38.299828, 39.160431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236153, 37.993069, 39.363861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472179, -0.306971, -0.826327,
		0.789821, 0.563599, 0.241948,
		0.391446, -0.766893, 0.508572,
		40.353588, 37.763000, 39.516434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748924, 38.383957, 38.947182>,  <40.079575, 38.299828, 39.160431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748924, 38.383957, 38.947182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725990, 38.015945, 39.102238>,  <40.712231, 37.795139, 39.195271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725990, 38.015945, 39.102238>,  <40.748924, 38.383957, 38.947182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725990, 38.015945, 39.102238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766990, -0.289145, -0.572818,
		0.639092, 0.264470, 0.722231,
		-0.057336, -0.920028, 0.387636,
		40.708790, 37.739937, 39.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505257, 38.140171, 38.980099>,  <40.748924, 38.383957, 38.947182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505257, 38.140171, 38.980099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.283989, 37.808231, 39.009377>,  <41.151230, 37.609066, 39.026943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.283989, 37.808231, 39.009377>,  <41.505257, 38.140171, 38.980099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283989, 37.808231, 39.009377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671400, -0.496104, -0.550547,
		0.493184, -0.255400, 0.831589,
		-0.553164, -0.829850, 0.073195,
		41.118038, 37.559277, 39.031334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944351, 37.661983, 39.129303>,  <41.505257, 38.140171, 38.980099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944351, 37.661983, 39.129303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640934, 37.478508, 38.944168>,  <41.458885, 37.368423, 38.833088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640934, 37.478508, 38.944168>,  <41.944351, 37.661983, 39.129303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640934, 37.478508, 38.944168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649639, -0.587709, -0.482253,
		-0.050813, -0.666488, 0.743782,
		-0.758543, -0.458685, -0.462840,
		41.413372, 37.340904, 38.805317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176655, 36.979229, 39.054684>,  <41.944351, 37.661983, 39.129303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176655, 36.979229, 39.054684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875847, 37.028175, 38.795609>,  <41.695362, 37.057541, 38.640163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875847, 37.028175, 38.795609>,  <42.176655, 36.979229, 39.054684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875847, 37.028175, 38.795609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423262, -0.663615, -0.616818,
		-0.505289, -0.737999, 0.447259,
		-0.752019, 0.122364, -0.647684,
		41.650242, 37.064884, 38.601303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009068, 36.278114, 38.861874>,  <42.176655, 36.979229, 39.054684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009068, 36.278114, 38.861874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863037, 36.511387, 38.571602>,  <41.775417, 36.651352, 38.397438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863037, 36.511387, 38.571602>,  <42.009068, 36.278114, 38.861874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863037, 36.511387, 38.571602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271429, -0.678941, -0.682176,
		-0.890529, -0.446020, 0.089575,
		-0.365080, 0.583185, -0.725680,
		41.753513, 36.686344, 38.353897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822884, 35.829010, 38.508118>,  <42.009068, 36.278114, 38.861874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822884, 35.829010, 38.508118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.822033, 36.130482, 38.245224>,  <41.821522, 36.311363, 38.087486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.822033, 36.130482, 38.245224>,  <41.822884, 35.829010, 38.508118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822033, 36.130482, 38.245224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403127, -0.600824, -0.690289,
		-0.915141, -0.266416, -0.302554,
		-0.002122, 0.753680, -0.657238,
		41.821396, 36.356586, 38.048054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620544, 35.522972, 37.930973>,  <41.822884, 35.829010, 38.508118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620544, 35.522972, 37.930973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.775661, 35.867527, 37.799747>,  <41.868732, 36.074261, 37.721012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.775661, 35.867527, 37.799747>,  <41.620544, 35.522972, 37.930973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775661, 35.867527, 37.799747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399051, -0.477727, -0.782646,
		-0.830887, 0.172593, -0.528998,
		0.387796, 0.861388, -0.328064,
		41.892002, 36.125942, 37.701328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612823, 35.400986, 37.267857>,  <41.620544, 35.522972, 37.930973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612823, 35.400986, 37.267857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873356, 35.703960, 37.286026>,  <42.029675, 35.885746, 37.296928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873356, 35.703960, 37.286026>,  <41.612823, 35.400986, 37.267857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873356, 35.703960, 37.286026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504412, -0.387473, -0.771643,
		-0.566869, 0.525505, -0.634432,
		0.651328, 0.757436, 0.045425,
		42.068756, 35.931190, 37.299652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763237, 35.716030, 36.590466>,  <41.612823, 35.400986, 37.267857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763237, 35.716030, 36.590466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098980, 35.811340, 36.785892>,  <42.300426, 35.868526, 36.903149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098980, 35.811340, 36.785892>,  <41.763237, 35.716030, 36.590466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098980, 35.811340, 36.785892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540884, -0.455417, -0.707135,
		0.054010, 0.857800, -0.511138,
		0.839361, 0.238274, 0.488568,
		42.350788, 35.882824, 36.932465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302971, 35.978558, 36.111572>,  <41.763237, 35.716030, 36.590466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302971, 35.978558, 36.111572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516483, 35.879925, 36.435120>,  <42.644592, 35.820747, 36.629250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516483, 35.879925, 36.435120>,  <42.302971, 35.978558, 36.111572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516483, 35.879925, 36.435120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711379, -0.386212, -0.587180,
		0.457182, 0.888842, -0.030744,
		0.533783, -0.246578, 0.808873,
		42.676617, 35.805950, 36.677780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985744, 36.071190, 35.816830>,  <42.302971, 35.978558, 36.111572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985744, 36.071190, 35.816830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046326, 35.864670, 36.153992>,  <43.082676, 35.740757, 36.356289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046326, 35.864670, 36.153992>,  <42.985744, 36.071190, 35.816830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046326, 35.864670, 36.153992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765599, -0.478113, -0.430425,
		0.625234, 0.710519, 0.322869,
		0.151458, -0.516305, 0.842906,
		43.091763, 35.709778, 36.406864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781265, 36.049168, 35.999668>,  <42.985744, 36.071190, 35.816830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781265, 36.049168, 35.999668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592548, 35.754326, 36.193199>,  <43.479317, 35.577419, 36.309319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592548, 35.754326, 36.193199>,  <43.781265, 36.049168, 35.999668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592548, 35.754326, 36.193199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649582, -0.661628, -0.374554,
		0.596198, 0.137572, 0.790962,
		-0.471795, -0.737104, 0.483826,
		43.451012, 35.533195, 36.338348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389931, 35.609997, 36.337914>,  <43.781265, 36.049168, 35.999668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389931, 35.609997, 36.337914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059761, 35.408733, 36.235542>,  <43.861660, 35.287975, 36.174118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059761, 35.408733, 36.235542>,  <44.389931, 35.609997, 36.337914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059761, 35.408733, 36.235542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556726, -0.650569, -0.516542,
		0.093401, -0.568852, 0.817119,
		-0.825428, -0.503157, -0.255931,
		43.812134, 35.257786, 36.158764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022366, 35.860310, 36.009579>,  <44.389931, 35.609997, 36.337914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022366, 35.860310, 36.009579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388485, 35.787491, 36.153294>,  <45.608154, 35.743797, 36.239525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388485, 35.787491, 36.153294>,  <45.022366, 35.860310, 36.009579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388485, 35.787491, 36.153294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383673, -0.122586, 0.915296,
		-0.122586, -0.975618, -0.182051,
		-0.915296, 0.182051, -0.359291,
		45.663074, 35.732876, 36.261082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012535, 35.227314, 36.351944>,  <45.022366, 35.860310, 36.009579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012535, 35.227314, 36.351944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.337238, 35.402271, 36.506725>,  <45.532063, 35.507244, 36.599594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.337238, 35.402271, 36.506725>,  <45.012535, 35.227314, 36.351944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337238, 35.402271, 36.506725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357216, -0.152294, 0.921522,
		0.461996, -0.886282, 0.032617,
		0.811761, 0.437391, 0.386953,
		45.580769, 35.533489, 36.622810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172070, 34.836460, 36.947475>,  <45.012535, 35.227314, 36.351944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172070, 34.836460, 36.947475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357582, 35.180538, 37.032291>,  <45.468891, 35.386986, 37.083183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357582, 35.180538, 37.032291>,  <45.172070, 34.836460, 36.947475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357582, 35.180538, 37.032291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257530, -0.098110, 0.961277,
		0.847692, -0.500434, 0.176024,
		0.463785, 0.860198, 0.212044,
		45.496719, 35.438599, 37.095905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639454, 34.780529, 37.561180>,  <45.172070, 34.836460, 36.947475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639454, 34.780529, 37.561180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559448, 35.171368, 37.532112>,  <45.511444, 35.405869, 37.514671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559448, 35.171368, 37.532112>,  <45.639454, 34.780529, 37.561180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559448, 35.171368, 37.532112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356271, -0.003434, 0.934376,
		0.912724, 0.212778, 0.348797,
		-0.200013, 0.977094, -0.072672,
		45.499443, 35.464497, 37.510311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891335, 35.175484, 38.123798>,  <45.639454, 34.780529, 37.561180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891335, 35.175484, 38.123798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620293, 35.433369, 37.982262>,  <45.457668, 35.588100, 37.897339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620293, 35.433369, 37.982262>,  <45.891335, 35.175484, 38.123798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620293, 35.433369, 37.982262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355230, 0.134367, 0.925072,
		0.643946, 0.752527, 0.137972,
		-0.677603, 0.644708, -0.353845,
		45.417011, 35.626781, 37.876106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931347, 35.662846, 38.622292>,  <45.891335, 35.175484, 38.123798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931347, 35.662846, 38.622292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584770, 35.735851, 38.436405>,  <45.376823, 35.779655, 38.324875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584770, 35.735851, 38.436405>,  <45.931347, 35.662846, 38.622292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584770, 35.735851, 38.436405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363793, 0.406698, 0.838004,
		0.341945, 0.895146, -0.285986,
		-0.866446, 0.182512, -0.464716,
		45.324837, 35.790604, 38.296989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698811, 36.295776, 38.894432>,  <45.931347, 35.662846, 38.622292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698811, 36.295776, 38.894432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365776, 36.146286, 38.730907>,  <45.165955, 36.056591, 38.632793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365776, 36.146286, 38.730907>,  <45.698811, 36.295776, 38.894432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365776, 36.146286, 38.730907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545262, 0.423216, 0.723587,
		-0.097403, 0.825361, -0.556141,
		-0.832587, -0.373722, -0.408816,
		45.116001, 36.034168, 38.608261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241474, 36.809143, 38.965714>,  <45.698811, 36.295776, 38.894432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241474, 36.809143, 38.965714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.004936, 36.492882, 38.902245>,  <44.863014, 36.303123, 38.864162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.004936, 36.492882, 38.902245>,  <45.241474, 36.809143, 38.965714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004936, 36.492882, 38.902245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619525, 0.319457, 0.717033,
		-0.516234, 0.522318, -0.678739,
		-0.591347, -0.790652, -0.158675,
		44.827534, 36.255688, 38.854641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508224, 37.027885, 38.833035>,  <45.241474, 36.809143, 38.965714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508224, 37.027885, 38.833035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479805, 36.648014, 38.955067>,  <44.462753, 36.420094, 39.028286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479805, 36.648014, 38.955067>,  <44.508224, 37.027885, 38.833035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479805, 36.648014, 38.955067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780664, 0.243324, 0.575637,
		-0.620899, -0.197265, -0.758664,
		-0.071048, -0.949674, 0.305077,
		44.458492, 36.363113, 39.046589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744751, 36.897240, 38.975571>,  <44.508224, 37.027885, 38.833035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744751, 36.897240, 38.975571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942875, 36.603592, 39.161362>,  <44.061749, 36.427402, 39.272835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942875, 36.603592, 39.161362>,  <43.744751, 36.897240, 38.975571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942875, 36.603592, 39.161362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658971, 0.030883, 0.751534,
		-0.566060, -0.678318, -0.468467,
		0.495311, -0.734119, 0.464474,
		44.091469, 36.383358, 39.300705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225399, 36.457855, 39.163738>,  <43.744751, 36.897240, 38.975571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225399, 36.457855, 39.163738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542572, 36.403656, 39.401360>,  <43.732876, 36.371136, 39.543930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542572, 36.403656, 39.401360>,  <43.225399, 36.457855, 39.163738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542572, 36.403656, 39.401360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602669, -0.030897, 0.797393,
		-0.089695, -0.990295, -0.106163,
		0.792934, -0.135504, 0.594049,
		43.780453, 36.363007, 39.579575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990646, 35.818199, 39.631035>,  <43.225399, 36.457855, 39.163738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990646, 35.818199, 39.631035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292091, 36.001663, 39.819374>,  <43.472958, 36.111740, 39.932377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292091, 36.001663, 39.819374>,  <42.990646, 35.818199, 39.631035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292091, 36.001663, 39.819374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502471, -0.059847, 0.862520,
		0.423784, -0.886593, 0.185363,
		0.753612, 0.458662, 0.470850,
		43.518173, 36.139263, 39.960629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994511, 35.485588, 40.210278>,  <42.990646, 35.818199, 39.631035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994511, 35.485588, 40.210278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209171, 35.814701, 40.285156>,  <43.337967, 36.012169, 40.330082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209171, 35.814701, 40.285156>,  <42.994511, 35.485588, 40.210278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209171, 35.814701, 40.285156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456553, 0.096557, 0.884441,
		0.709624, -0.560101, 0.427459,
		0.536650, 0.822778, 0.187197,
		43.370167, 36.061535, 40.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456505, 35.377304, 40.871910>,  <42.994511, 35.485588, 40.210278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456505, 35.377304, 40.871910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383801, 35.764362, 40.801910>,  <43.340179, 35.996597, 40.759911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383801, 35.764362, 40.801910>,  <43.456505, 35.377304, 40.871910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383801, 35.764362, 40.801910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474239, 0.069641, 0.877637,
		0.861429, 0.242513, 0.446237,
		-0.181762, 0.967645, -0.175000,
		43.329273, 36.054657, 40.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456432, 35.799740, 41.578991>,  <43.456505, 35.377304, 40.871910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456432, 35.799740, 41.578991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289970, 36.063328, 41.328369>,  <43.190094, 36.221481, 41.177998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289970, 36.063328, 41.328369>,  <43.456432, 35.799740, 41.578991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289970, 36.063328, 41.328369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684533, 0.226511, 0.692898,
		0.598522, 0.717251, 0.356823,
		-0.416158, 0.658971, -0.626554,
		43.165123, 36.261021, 41.140404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413288, 36.419579, 41.901222>,  <43.456432, 35.799740, 41.578991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413288, 36.419579, 41.901222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135857, 36.418472, 41.613071>,  <42.969398, 36.417809, 41.440182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135857, 36.418472, 41.613071>,  <43.413288, 36.419579, 41.901222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135857, 36.418472, 41.613071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692766, 0.276801, 0.665926,
		0.197558, 0.960923, -0.193900,
		-0.693575, -0.002769, -0.720379,
		42.927784, 36.417641, 41.396957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096790, 37.022812, 42.113762>,  <43.413288, 36.419579, 41.901222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096790, 37.022812, 42.113762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842850, 36.835197, 41.868172>,  <42.690483, 36.722630, 41.720818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842850, 36.835197, 41.868172>,  <43.096790, 37.022812, 42.113762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842850, 36.835197, 41.868172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769730, 0.315156, 0.555150,
		-0.066888, 0.825034, -0.561111,
		-0.634855, -0.469037, -0.613973,
		42.652393, 36.694485, 41.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529987, 37.419060, 42.046509>,  <43.096790, 37.022812, 42.113762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529987, 37.419060, 42.046509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362904, 37.092945, 41.886093>,  <42.262653, 36.897278, 41.789845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362904, 37.092945, 41.886093>,  <42.529987, 37.419060, 42.046509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362904, 37.092945, 41.886093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859628, 0.211694, 0.465001,
		-0.294212, 0.538975, -0.789269,
		-0.417707, -0.815286, -0.401034,
		42.237591, 36.848358, 41.765781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780796, 37.546116, 41.667961>,  <42.529987, 37.419060, 42.046509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780796, 37.546116, 41.667961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803314, 37.158039, 41.762245>,  <41.816826, 36.925194, 41.818817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803314, 37.158039, 41.762245>,  <41.780796, 37.546116, 41.667961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803314, 37.158039, 41.762245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862992, 0.071440, 0.500141,
		-0.502072, -0.231571, -0.833246,
		0.056291, -0.970192, 0.235712,
		41.820202, 36.866982, 41.832958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149010, 37.281094, 41.569843>,  <41.780796, 37.546116, 41.667961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149010, 37.281094, 41.569843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338867, 37.031788, 41.818443>,  <41.452782, 36.882206, 41.967602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338867, 37.031788, 41.818443>,  <41.149010, 37.281094, 41.569843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338867, 37.031788, 41.818443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781732, 0.025987, 0.623073,
		-0.404489, -0.781581, -0.474889,
		0.474641, -0.623262, 0.621498,
		41.481258, 36.844810, 42.004894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.680122, 38.935646, 38.256645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428379, 38.741756, 38.499607>,  <36.277332, 38.625423, 38.645386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428379, 38.741756, 38.499607>,  <36.680122, 38.935646, 38.256645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428379, 38.741756, 38.499607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284250, -0.871050, -0.400591,
		0.723260, -0.079461, 0.685990,
		-0.629363, -0.484724, 0.607408,
		36.239571, 38.596340, 38.681831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147247, 38.484119, 38.715618>,  <36.680122, 38.935646, 38.256645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147247, 38.484119, 38.715618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766338, 38.369797, 38.672749>,  <36.537792, 38.301205, 38.647026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766338, 38.369797, 38.672749>,  <37.147247, 38.484119, 38.715618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766338, 38.369797, 38.672749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304310, -0.861541, -0.406377,
		0.023814, -0.419596, 0.907398,
		-0.952275, -0.285808, -0.107170,
		36.480656, 38.284054, 38.640598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134117, 37.782490, 38.958977>,  <37.147247, 38.484119, 38.715618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134117, 37.782490, 38.958977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801205, 37.835323, 38.743622>,  <36.601456, 37.867023, 38.614410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801205, 37.835323, 38.743622>,  <37.134117, 37.782490, 38.958977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801205, 37.835323, 38.743622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107660, -0.914195, -0.390714,
		-0.543797, -0.383147, 0.746648,
		-0.832283, 0.132085, -0.538385,
		36.551521, 37.874950, 38.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855576, 37.233101, 39.112736>,  <37.134117, 37.782490, 38.958977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855576, 37.233101, 39.112736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681862, 37.356941, 38.774376>,  <36.577633, 37.431248, 38.571362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681862, 37.356941, 38.774376>,  <36.855576, 37.233101, 39.112736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681862, 37.356941, 38.774376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087881, -0.920034, -0.381857,
		-0.896479, -0.240173, 0.372348,
		-0.434285, 0.309604, -0.845897,
		36.551579, 37.449821, 38.520607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479534, 36.668842, 38.856232>,  <36.855576, 37.233101, 39.112736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479534, 36.668842, 38.856232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551792, 36.895271, 38.534504>,  <36.595146, 37.031128, 38.341469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551792, 36.895271, 38.534504>,  <36.479534, 36.668842, 38.856232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551792, 36.895271, 38.534504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183650, -0.822803, -0.537836,
		-0.966250, -0.050555, -0.252596,
		0.180646, 0.566073, -0.804318,
		36.605988, 37.065094, 38.293209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057411, 36.439888, 38.401733>,  <36.479534, 36.668842, 38.856232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057411, 36.439888, 38.401733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354668, 36.611473, 38.196316>,  <36.533020, 36.714424, 38.073067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354668, 36.611473, 38.196316>,  <36.057411, 36.439888, 38.401733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354668, 36.611473, 38.196316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139894, -0.850120, -0.507668,
		-0.654347, 0.305428, -0.691769,
		0.743142, 0.428965, -0.513545,
		36.577610, 36.740162, 38.042252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137173, 36.000347, 37.830200>,  <36.057411, 36.439888, 38.401733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137173, 36.000347, 37.830200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470421, 36.217258, 37.786667>,  <36.670368, 36.347404, 37.760548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470421, 36.217258, 37.786667>,  <36.137173, 36.000347, 37.830200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470421, 36.217258, 37.786667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377350, -0.701146, -0.604980,
		-0.404379, 0.462951, -0.788768,
		0.833117, 0.542283, -0.108834,
		36.720356, 36.379944, 37.754017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472515, 35.765446, 37.195889>,  <36.137173, 36.000347, 37.830200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472515, 35.765446, 37.195889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786846, 35.964615, 37.342613>,  <36.975445, 36.084118, 37.430649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786846, 35.964615, 37.342613>,  <36.472515, 35.765446, 37.195889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786846, 35.964615, 37.342613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617395, -0.596952, -0.512320,
		-0.036124, 0.629063, -0.776515,
		0.785824, 0.497923, 0.366816,
		37.022594, 36.113991, 37.452660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883190, 35.863060, 36.562077>,  <36.472515, 35.765446, 37.195889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883190, 35.863060, 36.562077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133354, 35.910614, 36.870552>,  <37.283455, 35.939144, 37.055637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133354, 35.910614, 36.870552>,  <36.883190, 35.863060, 36.562077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133354, 35.910614, 36.870552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727758, -0.445386, -0.521535,
		0.281474, 0.887411, -0.365068,
		0.625412, 0.118882, 0.771185,
		37.320976, 35.946278, 37.101906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565315, 36.012814, 36.310623>,  <36.883190, 35.863060, 36.562077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565315, 36.012814, 36.310623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653690, 35.884674, 36.679092>,  <37.706715, 35.807793, 36.900173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653690, 35.884674, 36.679092>,  <37.565315, 36.012814, 36.310623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653690, 35.884674, 36.679092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778353, -0.511212, -0.364457,
		0.587669, 0.797521, 0.136397,
		0.220934, -0.320345, 0.921177,
		37.719971, 35.788570, 36.955444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203323, 36.097157, 36.406094>,  <37.565315, 36.012814, 36.310623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203323, 36.097157, 36.406094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128929, 35.811134, 36.675644>,  <38.084293, 35.639523, 36.837376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128929, 35.811134, 36.675644>,  <38.203323, 36.097157, 36.406094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128929, 35.811134, 36.675644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752215, -0.544858, -0.370543,
		0.632125, 0.437987, 0.639206,
		-0.185983, -0.715051, 0.673879,
		38.073135, 35.596619, 36.877808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869335, 35.791031, 36.733479>,  <38.203323, 36.097157, 36.406094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869335, 35.791031, 36.733479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563854, 35.533150, 36.746853>,  <38.380566, 35.378422, 36.754879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563854, 35.533150, 36.746853>,  <38.869335, 35.791031, 36.733479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563854, 35.533150, 36.746853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576730, -0.704625, -0.413383,
		0.290072, -0.296415, 0.909943,
		-0.763702, -0.644702, 0.033440,
		38.334743, 35.339741, 36.756886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109589, 35.155048, 37.048462>,  <38.869335, 35.791031, 36.733479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109589, 35.155048, 37.048462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805038, 35.061207, 36.806709>,  <38.622307, 35.004902, 36.661659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805038, 35.061207, 36.806709>,  <39.109589, 35.155048, 37.048462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805038, 35.061207, 36.806709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481027, -0.829423, -0.284025,
		-0.434652, -0.506971, 0.744351,
		-0.761374, -0.234601, -0.604377,
		38.576626, 34.990826, 36.625397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507664, 34.482166, 37.002857>,  <39.109589, 35.155048, 37.048462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507664, 34.482166, 37.002857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307137, 34.507412, 36.657673>,  <39.186821, 34.522560, 36.450562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307137, 34.507412, 36.657673>,  <39.507664, 34.482166, 37.002857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307137, 34.507412, 36.657673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597491, 0.696127, 0.398011,
		0.625849, 0.715139, -0.311269,
		-0.501316, 0.063114, -0.862960,
		39.156742, 34.526348, 36.398785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056446, 34.143509, 37.358578>,  <39.507664, 34.482166, 37.002857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056446, 34.143509, 37.358578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379116, 34.193863, 37.589546>,  <40.572720, 34.224075, 37.728127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379116, 34.193863, 37.589546>,  <40.056446, 34.143509, 37.358578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379116, 34.193863, 37.589546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589764, 0.234360, 0.772822,
		-0.038036, -0.963964, 0.263299,
		0.806679, 0.125889, 0.577425,
		40.621120, 34.231628, 37.762775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940876, 33.718647, 37.937408>,  <40.056446, 34.143509, 37.358578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940876, 33.718647, 37.937408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203888, 33.995739, 38.055916>,  <40.361694, 34.161995, 38.127022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203888, 33.995739, 38.055916>,  <39.940876, 33.718647, 37.937408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203888, 33.995739, 38.055916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544455, 0.165065, 0.822388,
		0.520791, -0.702051, 0.485697,
		0.657530, 0.692732, 0.296271,
		40.401146, 34.203560, 38.144798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947277, 33.654667, 38.753792>,  <39.940876, 33.718647, 37.937408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947277, 33.654667, 38.753792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109795, 34.014648, 38.690540>,  <40.207306, 34.230637, 38.652588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109795, 34.014648, 38.690540>,  <39.947277, 33.654667, 38.753792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109795, 34.014648, 38.690540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579770, 0.387661, 0.716649,
		0.706254, -0.199490, 0.679272,
		0.406291, 0.899957, -0.158129,
		40.231682, 34.284637, 38.643101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060509, 33.834751, 39.420158>,  <39.947277, 33.654667, 38.753792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060509, 33.834751, 39.420158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093060, 34.183880, 39.227673>,  <40.112591, 34.393356, 39.112183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093060, 34.183880, 39.227673>,  <40.060509, 33.834751, 39.420158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093060, 34.183880, 39.227673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689995, 0.397743, 0.604737,
		0.719225, 0.282823, 0.634608,
		0.081377, 0.872818, -0.481213,
		40.117474, 34.445724, 39.083309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229988, 34.313168, 39.976978>,  <40.060509, 33.834751, 39.420158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229988, 34.313168, 39.976978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076431, 34.503643, 39.660530>,  <39.984299, 34.617928, 39.470661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076431, 34.503643, 39.660530>,  <40.229988, 34.313168, 39.976978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076431, 34.503643, 39.660530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708276, 0.397840, 0.583154,
		0.592431, 0.784199, 0.184546,
		-0.383889, 0.476188, -0.791122,
		39.961266, 34.646500, 39.423195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910141, 34.959827, 40.274467>,  <40.229988, 34.313168, 39.976978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910141, 34.959827, 40.274467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711895, 34.936382, 39.927845>,  <39.592945, 34.922318, 39.719872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711895, 34.936382, 39.927845>,  <39.910141, 34.959827, 40.274467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711895, 34.936382, 39.927845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826557, 0.338273, 0.449861,
		0.266768, 0.939221, -0.216098,
		-0.495619, -0.058609, -0.866560,
		39.563210, 34.918800, 39.667877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533249, 35.652920, 39.987240>,  <39.910141, 34.959827, 40.274467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533249, 35.652920, 39.987240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338341, 35.333851, 39.845089>,  <39.221397, 35.142410, 39.759800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338341, 35.333851, 39.845089>,  <39.533249, 35.652920, 39.987240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338341, 35.333851, 39.845089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869817, 0.407270, 0.278478,
		-0.077399, 0.444806, -0.892276,
		-0.487266, -0.797671, -0.355378,
		39.192162, 35.094551, 39.738476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987415, 35.858131, 40.060822>,  <39.533249, 35.652920, 39.987240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987415, 35.858131, 40.060822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869812, 35.493279, 39.946575>,  <38.799252, 35.274368, 39.878025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869812, 35.493279, 39.946575>,  <38.987415, 35.858131, 40.060822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869812, 35.493279, 39.946575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883166, 0.144980, 0.446093,
		-0.365486, 0.383403, -0.848188,
		-0.294004, -0.912131, -0.285620,
		38.781612, 35.219639, 39.860889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342037, 35.892483, 39.648609>,  <38.987415, 35.858131, 40.060822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342037, 35.892483, 39.648609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340584, 35.513500, 39.776550>,  <38.339710, 35.286110, 39.853317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340584, 35.513500, 39.776550>,  <38.342037, 35.892483, 39.648609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340584, 35.513500, 39.776550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896568, 0.144749, 0.418584,
		-0.442890, -0.285253, -0.849988,
		-0.003632, -0.947459, 0.319857,
		38.339493, 35.229263, 39.872509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666508, 35.656799, 39.533245>,  <38.342037, 35.892483, 39.648609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666508, 35.656799, 39.533245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817375, 35.421825, 39.819649>,  <37.907898, 35.280842, 39.991489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817375, 35.421825, 39.819649>,  <37.666508, 35.656799, 39.533245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817375, 35.421825, 39.819649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820061, 0.147447, 0.552955,
		-0.430398, -0.795726, -0.426119,
		0.377171, -0.587435, 0.716005,
		37.930527, 35.245594, 40.034451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115700, 35.197395, 39.689571>,  <37.666508, 35.656799, 39.533245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115700, 35.197395, 39.689571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345322, 35.148392, 40.013412>,  <37.483097, 35.118988, 40.207718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345322, 35.148392, 40.013412>,  <37.115700, 35.197395, 39.689571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345322, 35.148392, 40.013412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786179, 0.193898, 0.586793,
		-0.228867, -0.973342, 0.014994,
		0.574058, -0.122510, 0.809598,
		37.517540, 35.111637, 40.256290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844189, 34.720924, 40.085640>,  <37.115700, 35.197395, 39.689571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844189, 34.720924, 40.085640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073860, 34.902798, 40.357986>,  <37.211662, 35.011921, 40.521393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073860, 34.902798, 40.357986>,  <36.844189, 34.720924, 40.085640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073860, 34.902798, 40.357986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793855, 0.105761, 0.598840,
		0.200276, -0.884349, 0.421682,
		0.574182, 0.454688, 0.680863,
		37.246113, 35.039204, 40.562244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646893, 34.415524, 40.739250>,  <36.844189, 34.720924, 40.085640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646893, 34.415524, 40.739250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837292, 34.754818, 40.832142>,  <36.951530, 34.958393, 40.887878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837292, 34.754818, 40.832142>,  <36.646893, 34.415524, 40.739250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837292, 34.754818, 40.832142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790101, 0.296493, 0.536500,
		0.386224, -0.438854, 0.811319,
		0.475996, 0.848233, 0.232226,
		36.980091, 35.009289, 40.901810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457474, 34.540249, 41.398788>,  <36.646893, 34.415524, 40.739250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457474, 34.540249, 41.398788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593994, 34.901779, 41.295547>,  <36.675907, 35.118698, 41.233604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593994, 34.901779, 41.295547>,  <36.457474, 34.540249, 41.398788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593994, 34.901779, 41.295547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813942, 0.421523, 0.399770,
		0.470116, 0.073635, 0.879527,
		0.341304, 0.903823, -0.258099,
		36.696384, 35.172928, 41.218117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097050, 34.581932, 41.769711>,  <36.457474, 34.540249, 41.398788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097050, 34.581932, 41.769711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026901, 34.251591, 41.984077>,  <36.984814, 34.053387, 42.112698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026901, 34.251591, 41.984077>,  <37.097050, 34.581932, 41.769711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026901, 34.251591, 41.984077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336062, -0.561872, -0.755885,
		0.925368, 0.047539, 0.376076,
		-0.175372, -0.825857, 0.535915,
		36.974289, 34.003834, 42.144852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707287, 34.218311, 41.731689>,  <37.097050, 34.581932, 41.769711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707287, 34.218311, 41.731689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433193, 33.952053, 41.849930>,  <37.268738, 33.792297, 41.920872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433193, 33.952053, 41.849930>,  <37.707287, 34.218311, 41.731689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433193, 33.952053, 41.849930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177697, -0.546390, -0.818463,
		0.706314, -0.508311, 0.492687,
		-0.685233, -0.665641, 0.295597,
		37.227623, 33.752361, 41.938610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935493, 33.636528, 41.356190>,  <37.707287, 34.218311, 41.731689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935493, 33.636528, 41.356190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560944, 33.541218, 41.459282>,  <37.336212, 33.484032, 41.521137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560944, 33.541218, 41.459282>,  <37.935493, 33.636528, 41.356190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560944, 33.541218, 41.459282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031323, -0.674634, -0.737487,
		0.349598, -0.698639, 0.624248,
		-0.936376, -0.238271, 0.257734,
		37.280029, 33.469738, 41.536602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968121, 32.894051, 41.302025>,  <37.935493, 33.636528, 41.356190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968121, 32.894051, 41.302025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582451, 32.995892, 41.272224>,  <37.351051, 33.056995, 41.254345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582451, 32.995892, 41.272224>,  <37.968121, 32.894051, 41.302025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582451, 32.995892, 41.272224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131823, -0.703535, -0.698327,
		-0.230210, -0.663487, 0.711891,
		-0.964171, 0.254606, -0.074498,
		37.293201, 33.072273, 41.249874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560520, 32.379848, 41.521706>,  <37.968121, 32.894051, 41.302025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560520, 32.379848, 41.521706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323494, 32.577240, 41.267036>,  <37.181278, 32.695675, 41.114235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323494, 32.577240, 41.267036>,  <37.560520, 32.379848, 41.521706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323494, 32.577240, 41.267036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027301, -0.777621, -0.628140,
		-0.805066, -0.389590, 0.447312,
		-0.592556, 0.493483, -0.636672,
		37.145725, 32.725285, 41.076035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947033, 31.887400, 41.299583>,  <37.560520, 32.379848, 41.521706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947033, 31.887400, 41.299583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991684, 32.170486, 41.020535>,  <37.018475, 32.340340, 40.853107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991684, 32.170486, 41.020535>,  <36.947033, 31.887400, 41.299583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991684, 32.170486, 41.020535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050961, -0.705161, -0.707214,
		-0.992443, 0.043392, -0.114781,
		0.111626, 0.707718, -0.697620,
		37.025173, 32.382801, 40.811249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471462, 31.674166, 40.754215>,  <36.947033, 31.887400, 41.299583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471462, 31.674166, 40.754215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677429, 31.968023, 40.577507>,  <36.801010, 32.144337, 40.471481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677429, 31.968023, 40.577507>,  <36.471462, 31.674166, 40.754215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677429, 31.968023, 40.577507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269615, -0.350400, -0.896955,
		-0.813738, 0.580965, 0.017644,
		0.514916, 0.734643, -0.441770,
		36.831905, 32.188416, 40.444977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047981, 32.033710, 40.243282>,  <36.471462, 31.674166, 40.754215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047981, 32.033710, 40.243282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423683, 32.085350, 40.116081>,  <36.649105, 32.116333, 40.039761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423683, 32.085350, 40.116081>,  <36.047981, 32.033710, 40.243282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423683, 32.085350, 40.116081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273353, -0.278874, -0.920602,
		-0.207533, 0.951611, -0.226645,
		0.939260, 0.129101, -0.318001,
		36.705460, 32.124081, 40.020679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925793, 32.338860, 39.554768>,  <36.047981, 32.033710, 40.243282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925793, 32.338860, 39.554768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298897, 32.194847, 39.547436>,  <36.522758, 32.108440, 39.543037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298897, 32.194847, 39.547436>,  <35.925793, 32.338860, 39.554768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298897, 32.194847, 39.547436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165627, -0.382839, -0.908847,
		0.320199, 0.850771, -0.416728,
		0.932759, -0.360033, -0.018326,
		36.578724, 32.086838, 39.541939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297390, 32.544273, 38.874474>,  <35.925793, 32.338860, 39.554768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297390, 32.544273, 38.874474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455753, 32.216652, 39.040558>,  <36.550774, 32.020081, 39.140209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455753, 32.216652, 39.040558>,  <36.297390, 32.544273, 38.874474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455753, 32.216652, 39.040558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057809, -0.473493, -0.878898,
		0.916467, 0.323964, -0.234811,
		0.395913, -0.819055, 0.415213,
		36.574528, 31.970936, 39.165123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871048, 32.315029, 38.445801>,  <36.297390, 32.544273, 38.874474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871048, 32.315029, 38.445801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783009, 31.980400, 38.646484>,  <36.730183, 31.779623, 38.766895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783009, 31.980400, 38.646484>,  <36.871048, 32.315029, 38.445801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783009, 31.980400, 38.646484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076320, -0.527511, -0.846113,
		0.972487, -0.147941, 0.179952,
		-0.220101, -0.836568, 0.501706,
		36.716980, 31.729429, 38.796997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356472, 31.807055, 38.270187>,  <36.871048, 32.315029, 38.445801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356472, 31.807055, 38.270187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035122, 31.595972, 38.380539>,  <36.842312, 31.469322, 38.446751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035122, 31.595972, 38.380539>,  <37.356472, 31.807055, 38.270187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035122, 31.595972, 38.380539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105016, -0.581594, -0.806672,
		0.586136, -0.619091, 0.522658,
		-0.803378, -0.527707, 0.275879,
		36.794109, 31.437660, 38.463303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.535469, 35.640270, 45.660278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180389, 35.501411, 45.539295>,  <35.967342, 35.418098, 45.466705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180389, 35.501411, 45.539295>,  <36.535469, 35.640270, 45.660278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180389, 35.501411, 45.539295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457278, -0.588042, -0.667161,
		0.053743, -0.730546, 0.680746,
		-0.887699, -0.347145, -0.302459,
		35.914082, 35.397266, 45.448559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700935, 35.108990, 45.382000>,  <36.535469, 35.640270, 45.660278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700935, 35.108990, 45.382000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.328285, 35.092896, 45.237530>,  <36.104694, 35.083237, 45.150848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.328285, 35.092896, 45.237530>,  <36.700935, 35.108990, 45.382000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328285, 35.092896, 45.237530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314850, -0.585689, -0.746885,
		-0.181482, -0.809536, 0.558315,
		-0.931630, -0.040239, -0.361174,
		36.048798, 35.080822, 45.129177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588394, 34.422607, 45.239452>,  <36.700935, 35.108990, 45.382000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588394, 34.422607, 45.239452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.328743, 34.610691, 45.000278>,  <36.172951, 34.723541, 44.856773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.328743, 34.610691, 45.000278>,  <36.588394, 34.422607, 45.239452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328743, 34.610691, 45.000278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287253, -0.576329, -0.765069,
		-0.704353, -0.668389, 0.239044,
		-0.649132, 0.470213, -0.597937,
		36.134003, 34.751755, 44.820896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377468, 33.921741, 44.724583>,  <36.588394, 34.422607, 45.239452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377468, 33.921741, 44.724583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.273605, 34.263103, 44.543797>,  <36.211288, 34.467922, 44.435326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.273605, 34.263103, 44.543797>,  <36.377468, 33.921741, 44.724583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273605, 34.263103, 44.543797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239014, -0.396667, -0.886300,
		-0.935655, -0.338163, -0.100977,
		-0.259659, 0.853406, -0.451969,
		36.195709, 34.519127, 44.408207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860748, 33.739597, 44.239868>,  <36.377468, 33.921741, 44.724583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860748, 33.739597, 44.239868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027306, 34.084686, 44.125095>,  <36.127239, 34.291740, 44.056232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027306, 34.084686, 44.125095>,  <35.860748, 33.739597, 44.239868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027306, 34.084686, 44.125095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339637, -0.440348, -0.831108,
		-0.843364, 0.248615, -0.476369,
		0.416394, 0.862719, -0.286935,
		36.152225, 34.343502, 44.039017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714466, 33.725906, 43.553913>,  <35.860748, 33.739597, 44.239868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714466, 33.725906, 43.553913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991585, 34.009800, 43.604996>,  <36.157856, 34.180134, 43.635647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991585, 34.009800, 43.604996>,  <35.714466, 33.725906, 43.553913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991585, 34.009800, 43.604996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376105, -0.204518, -0.903724,
		-0.615282, 0.674132, -0.408624,
		0.692800, 0.709731, 0.127708,
		36.199425, 34.222721, 43.643307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664700, 34.190350, 42.969963>,  <35.714466, 33.725906, 43.553913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664700, 34.190350, 42.969963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.036224, 34.217312, 43.115715>,  <36.259140, 34.233490, 43.203167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.036224, 34.217312, 43.115715>,  <35.664700, 34.190350, 42.969963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036224, 34.217312, 43.115715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369875, -0.108921, -0.922675,
		-0.022508, 0.991762, -0.126099,
		0.928809, 0.067409, 0.364376,
		36.314869, 34.237534, 43.225029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993614, 34.563499, 42.479988>,  <35.664700, 34.190350, 42.969963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993614, 34.563499, 42.479988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298069, 34.399487, 42.681000>,  <36.480743, 34.301079, 42.801609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298069, 34.399487, 42.681000>,  <35.993614, 34.563499, 42.479988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298069, 34.399487, 42.681000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467867, -0.189490, -0.863246,
		0.449182, 0.892171, 0.047611,
		0.761141, -0.410030, 0.502533,
		36.526413, 34.276478, 42.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520466, 34.789474, 42.144791>,  <35.993614, 34.563499, 42.479988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520466, 34.789474, 42.144791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674751, 34.475475, 42.338699>,  <36.767323, 34.287075, 42.455044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674751, 34.475475, 42.338699>,  <36.520466, 34.789474, 42.144791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674751, 34.475475, 42.338699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494241, -0.267874, -0.827025,
		0.779069, 0.558591, 0.284654,
		0.385717, -0.784997, 0.484771,
		36.790466, 34.239975, 42.484131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965710, 35.250893, 42.351097>,  <36.520466, 34.789474, 42.144791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965710, 35.250893, 42.351097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902660, 35.447746, 42.008644>,  <36.864830, 35.565857, 41.803173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902660, 35.447746, 42.008644>,  <36.965710, 35.250893, 42.351097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902660, 35.447746, 42.008644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345136, 0.784838, 0.514693,
		0.925222, 0.376610, 0.046143,
		-0.157624, 0.492131, -0.856132,
		36.855373, 35.595387, 41.751804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446487, 35.775928, 42.317924>,  <36.965710, 35.250893, 42.351097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446487, 35.775928, 42.317924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097015, 35.827080, 42.130165>,  <36.887333, 35.857769, 42.017509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097015, 35.827080, 42.130165>,  <37.446487, 35.775928, 42.317924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097015, 35.827080, 42.130165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166454, 0.828034, 0.535400,
		0.457144, 0.545900, -0.702148,
		-0.873677, 0.127879, -0.469398,
		36.834911, 35.865444, 41.989346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450203, 36.430103, 42.039215>,  <37.446487, 35.775928, 42.317924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450203, 36.430103, 42.039215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.063160, 36.329456, 42.047493>,  <36.830936, 36.269070, 42.052460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.063160, 36.329456, 42.047493>,  <37.450203, 36.430103, 42.039215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063160, 36.329456, 42.047493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195639, 0.799089, 0.568491,
		-0.159576, 0.546027, -0.822430,
		-0.967606, -0.251617, 0.020691,
		36.772877, 36.253971, 42.053699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144966, 37.111153, 41.999481>,  <37.450203, 36.430103, 42.039215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144966, 37.111153, 41.999481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844685, 36.872845, 42.113682>,  <36.664516, 36.729858, 42.182201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844685, 36.872845, 42.113682>,  <37.144966, 37.111153, 41.999481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844685, 36.872845, 42.113682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410413, 0.759209, 0.505136,
		-0.517697, 0.262034, -0.814450,
		-0.750700, -0.595768, 0.285498,
		36.619476, 36.694115, 42.199329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629990, 37.586582, 42.032433>,  <37.144966, 37.111153, 41.999481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629990, 37.586582, 42.032433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503738, 37.262455, 42.229923>,  <36.427986, 37.067978, 42.348419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503738, 37.262455, 42.229923>,  <36.629990, 37.586582, 42.032433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503738, 37.262455, 42.229923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408088, 0.585666, 0.700328,
		-0.856646, 0.019561, -0.515534,
		-0.315630, -0.810316, 0.493726,
		36.409050, 37.019360, 42.378040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877014, 37.593906, 41.986073>,  <36.629990, 37.586582, 42.032433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877014, 37.593906, 41.986073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023121, 37.396622, 42.301876>,  <36.110786, 37.278252, 42.491356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023121, 37.396622, 42.301876>,  <35.877014, 37.593906, 41.986073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023121, 37.396622, 42.301876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621579, 0.502124, 0.601258,
		-0.692978, -0.710361, -0.123161,
		0.365269, -0.493213, 0.789506,
		36.132702, 37.248657, 42.538727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308758, 37.464111, 42.481461>,  <35.877014, 37.593906, 41.986073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308758, 37.464111, 42.481461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647018, 37.452496, 42.694637>,  <35.849976, 37.445526, 42.822544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647018, 37.452496, 42.694637>,  <35.308758, 37.464111, 42.481461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647018, 37.452496, 42.694637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381333, 0.665766, 0.641359,
		-0.373442, -0.745596, 0.551931,
		0.845651, -0.029040, 0.532945,
		35.900715, 37.443783, 42.854523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111965, 37.498844, 43.124722>,  <35.308758, 37.464111, 42.481461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111965, 37.498844, 43.124722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495487, 37.594090, 43.186691>,  <35.725601, 37.651237, 43.223873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495487, 37.594090, 43.186691>,  <35.111965, 37.498844, 43.124722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495487, 37.594090, 43.186691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284069, 0.799371, 0.529444,
		0.002225, -0.551641, 0.834078,
		0.958801, 0.238114, 0.154926,
		35.783127, 37.665524, 43.233170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309986, 37.514622, 43.886974>,  <35.111965, 37.498844, 43.124722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309986, 37.514622, 43.886974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606670, 37.716049, 43.709759>,  <35.784679, 37.836906, 43.603428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606670, 37.716049, 43.709759>,  <35.309986, 37.514622, 43.886974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606670, 37.716049, 43.709759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110086, 0.742984, 0.660194,
		0.661620, -0.440903, 0.606518,
		0.741714, 0.503566, -0.443036,
		35.829185, 37.867119, 43.576847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737312, 37.710842, 44.525841>,  <35.309986, 37.514622, 43.886974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737312, 37.710842, 44.525841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886951, 37.952251, 44.244186>,  <35.976734, 38.097095, 44.075191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886951, 37.952251, 44.244186>,  <35.737312, 37.710842, 44.525841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886951, 37.952251, 44.244186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060584, 0.773553, 0.630829,
		0.925407, -0.193334, 0.325951,
		0.374101, 0.603521, -0.704139,
		35.999184, 38.133308, 44.032944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207699, 38.153435, 44.875477>,  <35.737312, 37.710842, 44.525841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207699, 38.153435, 44.875477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115280, 38.337326, 44.532486>,  <36.059830, 38.447662, 44.326691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115280, 38.337326, 44.532486>,  <36.207699, 38.153435, 44.875477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115280, 38.337326, 44.532486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007949, 0.880402, 0.474161,
		0.972911, 0.116368, -0.199757,
		-0.231044, 0.459729, -0.857478,
		36.045967, 38.475246, 44.275242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705647, 38.614250, 44.676945>,  <36.207699, 38.153435, 44.875477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705647, 38.614250, 44.676945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377605, 38.758297, 44.499073>,  <36.180779, 38.844727, 44.392349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377605, 38.758297, 44.499073>,  <36.705647, 38.614250, 44.676945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377605, 38.758297, 44.499073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058689, 0.825960, 0.560665,
		0.569192, 0.433708, -0.698511,
		-0.820107, 0.360121, -0.444676,
		36.131573, 38.866333, 44.365669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912292, 39.290054, 44.766899>,  <36.705647, 38.614250, 44.676945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912292, 39.290054, 44.766899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.522533, 39.294533, 44.677071>,  <36.288677, 39.297218, 44.623173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.522533, 39.294533, 44.677071>,  <36.912292, 39.290054, 44.766899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522533, 39.294533, 44.677071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091379, 0.892849, 0.440988,
		0.205443, 0.450217, -0.868964,
		-0.974394, 0.011193, -0.224569,
		36.230217, 39.297890, 44.609699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769424, 40.034557, 44.556271>,  <36.912292, 39.290054, 44.766899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769424, 40.034557, 44.556271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444382, 39.846893, 44.694584>,  <36.249355, 39.734295, 44.777573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444382, 39.846893, 44.694584>,  <36.769424, 40.034557, 44.556271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444382, 39.846893, 44.694584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191993, 0.775662, 0.601238,
		-0.550286, 0.422180, -0.720381,
		-0.812603, -0.469161, 0.345780,
		36.200600, 39.706146, 44.798317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.662140, 37.326851, 44.847610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.954920, 37.163116, 45.065491>,  <30.130589, 37.064877, 45.196217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.954920, 37.163116, 45.065491>,  <29.662140, 37.326851, 44.847610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954920, 37.163116, 45.065491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346137, -0.465205, -0.814723,
		0.586890, 0.784876, -0.198821,
		0.731949, -0.409334, 0.544699,
		30.174505, 37.040318, 45.228901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353571, 37.385090, 44.469093>,  <29.662140, 37.326851, 44.847610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353571, 37.385090, 44.469093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.428885, 37.084782, 44.722359>,  <30.474073, 36.904598, 44.874317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.428885, 37.084782, 44.722359>,  <30.353571, 37.385090, 44.469093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428885, 37.084782, 44.722359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395519, -0.532137, -0.748595,
		0.898951, 0.391376, 0.196751,
		0.188284, -0.750770, 0.633162,
		30.485371, 36.859550, 44.912308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103844, 37.108559, 44.322437>,  <30.353571, 37.385090, 44.469093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103844, 37.108559, 44.322437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.908998, 36.807476, 44.499596>,  <30.792091, 36.626827, 44.605888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.908998, 36.807476, 44.499596>,  <31.103844, 37.108559, 44.322437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908998, 36.807476, 44.499596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425657, -0.647437, -0.632172,
		0.762585, -0.119419, 0.635770,
		-0.487114, -0.752705, 0.442894,
		30.762865, 36.581665, 44.632465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536896, 36.538559, 44.324368>,  <31.103844, 37.108559, 44.322437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536896, 36.538559, 44.324368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205673, 36.322659, 44.385025>,  <31.006939, 36.193119, 44.421421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205673, 36.322659, 44.385025>,  <31.536896, 36.538559, 44.324368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205673, 36.322659, 44.385025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304271, -0.659830, -0.687054,
		0.470894, -0.522779, 0.710606,
		-0.828057, -0.539746, 0.151644,
		30.957256, 36.160736, 44.430519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779308, 35.809696, 44.488300>,  <31.536896, 36.538559, 44.324368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779308, 35.809696, 44.488300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.406406, 35.810513, 44.343582>,  <31.182665, 35.811001, 44.256752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.406406, 35.810513, 44.343582>,  <31.779308, 35.809696, 44.488300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406406, 35.810513, 44.343582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245011, -0.732229, -0.635461,
		-0.266209, -0.681055, 0.682126,
		-0.932257, 0.002037, -0.361792,
		31.126730, 35.811123, 44.235046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707821, 35.135983, 44.358093>,  <31.779308, 35.809696, 44.488300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707821, 35.135983, 44.358093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398945, 35.295639, 44.160343>,  <31.213619, 35.391434, 44.041691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398945, 35.295639, 44.160343>,  <31.707821, 35.135983, 44.358093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398945, 35.295639, 44.160343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168904, -0.621123, -0.765296,
		-0.612521, -0.674461, 0.412214,
		-0.772198, 0.399135, -0.494370,
		31.167288, 35.415382, 44.012032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392885, 34.507912, 44.046009>,  <31.707821, 35.135983, 44.358093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392885, 34.507912, 44.046009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270296, 34.834171, 43.849728>,  <31.196743, 35.029926, 43.731960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270296, 34.834171, 43.849728>,  <31.392885, 34.507912, 44.046009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270296, 34.834171, 43.849728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089749, -0.488454, -0.867962,
		-0.947639, -0.310047, 0.076495,
		-0.306473, 0.815649, -0.490705,
		31.178354, 35.078865, 43.702515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973362, 34.173016, 43.518318>,  <31.392885, 34.507912, 44.046009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973362, 34.173016, 43.518318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061146, 34.542171, 43.391754>,  <31.113815, 34.763664, 43.315815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061146, 34.542171, 43.391754>,  <30.973362, 34.173016, 43.518318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061146, 34.542171, 43.391754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169514, -0.355451, -0.919195,
		-0.960782, 0.148090, -0.234450,
		0.219459, 0.922889, -0.316407,
		31.126984, 34.819038, 43.296833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575377, 34.276840, 42.894306>,  <30.973362, 34.173016, 43.518318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575377, 34.276840, 42.894306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.870184, 34.546532, 42.875450>,  <31.047068, 34.708347, 42.864136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.870184, 34.546532, 42.875450>,  <30.575377, 34.276840, 42.894306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870184, 34.546532, 42.875450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271409, -0.359119, -0.892956,
		-0.618983, 0.645331, -0.447669,
		0.737019, 0.674226, -0.047141,
		31.091290, 34.748798, 42.861309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557451, 34.718533, 42.248402>,  <30.575377, 34.276840, 42.894306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557451, 34.718533, 42.248402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932940, 34.785442, 42.368950>,  <31.158232, 34.825588, 42.441280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932940, 34.785442, 42.368950>,  <30.557451, 34.718533, 42.248402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932940, 34.785442, 42.368950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307780, -0.013187, -0.951366,
		-0.155165, 0.985822, -0.063862,
		0.938720, 0.167274, 0.301371,
		31.214556, 34.835625, 42.459362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855612, 35.106133, 41.649349>,  <30.557451, 34.718533, 42.248402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855612, 35.106133, 41.649349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.167488, 34.971409, 41.860497>,  <31.354614, 34.890575, 41.987183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.167488, 34.971409, 41.860497>,  <30.855612, 35.106133, 41.649349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167488, 34.971409, 41.860497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538573, -0.069300, -0.839724,
		0.319408, 0.939019, 0.127364,
		0.779691, -0.336809, 0.527865,
		31.401396, 34.870365, 42.018856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439957, 35.355408, 41.309872>,  <30.855612, 35.106133, 41.649349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439957, 35.355408, 41.309872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570480, 35.035770, 41.511852>,  <31.648794, 34.843987, 41.633041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570480, 35.035770, 41.511852>,  <31.439957, 35.355408, 41.309872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570480, 35.035770, 41.511852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318700, -0.409905, -0.854639,
		0.889917, 0.439803, 0.120916,
		0.326309, -0.799094, 0.504947,
		31.668373, 34.796043, 41.663338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193607, 35.259129, 41.196136>,  <31.439957, 35.355408, 41.309872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193607, 35.259129, 41.196136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064236, 34.895374, 41.300755>,  <31.986612, 34.677120, 41.363525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064236, 34.895374, 41.300755>,  <32.193607, 35.259129, 41.196136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064236, 34.895374, 41.300755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434822, -0.388320, -0.812488,
		0.840430, -0.149058, 0.521017,
		-0.323429, -0.909390, 0.261543,
		31.967207, 34.622559, 41.379219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742630, 34.896229, 40.936047>,  <32.193607, 35.259129, 41.196136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742630, 34.896229, 40.936047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461784, 34.628952, 41.034473>,  <32.293278, 34.468586, 41.093529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461784, 34.628952, 41.034473>,  <32.742630, 34.896229, 40.936047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461784, 34.628952, 41.034473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244693, -0.550940, -0.797866,
		0.668699, -0.499982, 0.550326,
		-0.702116, -0.668193, 0.246071,
		32.251148, 34.428493, 41.108295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352360, 35.209797, 41.055008>,  <32.742630, 34.896229, 40.936047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352360, 35.209797, 41.055008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401978, 35.477356, 40.761833>,  <33.431747, 35.637890, 40.585930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401978, 35.477356, 40.761833>,  <33.352360, 35.209797, 41.055008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401978, 35.477356, 40.761833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518854, 0.673339, 0.526693,
		0.845815, 0.314951, 0.430584,
		0.124046, 0.668895, -0.732934,
		33.439190, 35.678024, 40.541954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560493, 35.797913, 41.411720>,  <33.352360, 35.209797, 41.055008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560493, 35.797913, 41.411720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419216, 35.920193, 41.058041>,  <33.334450, 35.993561, 40.845833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419216, 35.920193, 41.058041>,  <33.560493, 35.797913, 41.411720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419216, 35.920193, 41.058041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388546, 0.811813, 0.435881,
		0.851048, 0.497502, -0.167953,
		-0.353198, 0.305698, -0.884195,
		33.313255, 36.011902, 40.792782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800953, 36.460190, 41.270504>,  <33.560493, 35.797913, 41.411720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800953, 36.460190, 41.270504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487324, 36.490440, 41.024086>,  <33.299145, 36.508591, 40.876236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487324, 36.490440, 41.024086>,  <33.800953, 36.460190, 41.270504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487324, 36.490440, 41.024086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326015, 0.794416, 0.512461,
		0.528152, 0.602647, -0.598224,
		-0.784072, 0.075627, -0.616045,
		33.252102, 36.513130, 40.839272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730324, 37.152210, 41.113190>,  <33.800953, 36.460190, 41.270504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730324, 37.152210, 41.113190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369873, 37.010082, 41.013821>,  <33.153603, 36.924805, 40.954201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369873, 37.010082, 41.013821>,  <33.730324, 37.152210, 41.113190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369873, 37.010082, 41.013821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423583, 0.843698, 0.329775,
		0.092415, 0.402396, -0.910789,
		-0.901131, -0.355319, -0.248418,
		33.099533, 36.903488, 40.939297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483463, 37.670387, 40.714973>,  <33.730324, 37.152210, 41.113190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483463, 37.670387, 40.714973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183060, 37.441154, 40.846165>,  <33.002819, 37.303616, 40.924877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183060, 37.441154, 40.846165>,  <33.483463, 37.670387, 40.714973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183060, 37.441154, 40.846165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468904, 0.812590, 0.346159,
		-0.464886, 0.106179, -0.878980,
		-0.751006, -0.573082, 0.327974,
		32.957756, 37.269230, 40.944557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760895, 37.959656, 40.553001>,  <33.483463, 37.670387, 40.714973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760895, 37.959656, 40.553001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681797, 37.711166, 40.856312>,  <32.634338, 37.562073, 41.038300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681797, 37.711166, 40.856312>,  <32.760895, 37.959656, 40.553001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681797, 37.711166, 40.856312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651133, 0.661480, 0.372115,
		-0.732749, -0.420154, -0.535302,
		-0.197746, -0.621220, 0.758276,
		32.622475, 37.524799, 41.083794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985331, 38.114838, 40.615818>,  <32.760895, 37.959656, 40.553001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985331, 38.114838, 40.615818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123802, 37.931637, 40.943329>,  <32.206886, 37.821716, 41.139835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123802, 37.931637, 40.943329>,  <31.985331, 38.114838, 40.615818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123802, 37.931637, 40.943329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604152, 0.558861, 0.568045,
		-0.717747, -0.691311, -0.083235,
		0.346179, -0.457999, 0.818778,
		32.227657, 37.794235, 41.188961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402487, 37.981945, 41.070164>,  <31.985331, 38.114838, 40.615818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402487, 37.981945, 41.070164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726843, 37.983864, 41.304237>,  <31.921455, 37.985016, 41.444679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726843, 37.983864, 41.304237>,  <31.402487, 37.981945, 41.070164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726843, 37.983864, 41.304237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461651, 0.619772, 0.634634,
		-0.359637, -0.784767, 0.504779,
		0.810888, 0.004794, 0.585181,
		31.970110, 37.985302, 41.479794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163715, 37.765083, 41.771122>,  <31.402487, 37.981945, 41.070164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163715, 37.765083, 41.771122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507193, 37.953953, 41.850819>,  <31.713280, 38.067276, 41.898636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507193, 37.953953, 41.850819>,  <31.163715, 37.765083, 41.771122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507193, 37.953953, 41.850819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412749, 0.406732, 0.814989,
		0.303775, -0.782065, 0.544146,
		0.858696, 0.472169, 0.199242,
		31.764801, 38.095604, 41.910591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235821, 37.690289, 42.564548>,  <31.163715, 37.765083, 41.771122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235821, 37.690289, 42.564548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497744, 37.970570, 42.451237>,  <31.654898, 38.138737, 42.383251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497744, 37.970570, 42.451237>,  <31.235821, 37.690289, 42.564548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497744, 37.970570, 42.451237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223494, 0.537557, 0.813070,
		0.721998, -0.469092, 0.508598,
		0.654805, 0.700704, -0.283276,
		31.694185, 38.180782, 42.366253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695742, 37.815323, 43.053917>,  <31.235821, 37.690289, 42.564548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695742, 37.815323, 43.053917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.716856, 38.151081, 42.837540>,  <31.729525, 38.352535, 42.707714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.716856, 38.151081, 42.837540>,  <31.695742, 37.815323, 43.053917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716856, 38.151081, 42.837540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207778, 0.539078, 0.816225,
		0.976751, 0.069312, 0.202864,
		0.052785, 0.839399, -0.540946,
		31.732691, 38.402901, 42.675255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086159, 38.311344, 43.508320>,  <31.695742, 37.815323, 43.053917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086159, 38.311344, 43.508320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.930809, 38.559689, 43.235939>,  <31.837599, 38.708694, 43.072510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.930809, 38.559689, 43.235939>,  <32.086159, 38.311344, 43.508320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930809, 38.559689, 43.235939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117690, 0.699494, 0.704881,
		0.913956, 0.353898, -0.198597,
		-0.388373, 0.620858, -0.680957,
		31.814297, 38.745945, 43.031651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500656, 38.873669, 43.506218>,  <32.086159, 38.311344, 43.508320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500656, 38.873669, 43.506218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138424, 38.975060, 43.370174>,  <31.921085, 39.035892, 43.288548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138424, 38.975060, 43.370174>,  <32.500656, 38.873669, 43.506218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138424, 38.975060, 43.370174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107855, 0.637866, 0.762557,
		0.410238, 0.727239, -0.550299,
		-0.905578, 0.253477, -0.340113,
		31.866751, 39.051102, 43.268139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512501, 39.586548, 43.403576>,  <32.500656, 38.873669, 43.506218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512501, 39.586548, 43.403576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126480, 39.489731, 43.443768>,  <31.894869, 39.431641, 43.467884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126480, 39.489731, 43.443768>,  <32.512501, 39.586548, 43.403576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126480, 39.489731, 43.443768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092063, 0.672082, 0.734732,
		-0.245370, 0.699801, -0.670874,
		-0.965048, -0.242043, 0.100483,
		31.836966, 39.417118, 43.473911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810326, 40.221798, 43.248222>,  <32.512501, 39.586548, 43.403576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810326, 40.221798, 43.248222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081337, 40.493626, 43.135693>,  <33.243942, 40.656723, 43.068176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081337, 40.493626, 43.135693>,  <32.810326, 40.221798, 43.248222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081337, 40.493626, 43.135693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168116, -0.515452, -0.840266,
		-0.716028, 0.522008, -0.463479,
		0.677526, 0.679571, -0.281320,
		33.284595, 40.697498, 43.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657639, 40.462650, 42.512939>,  <32.810326, 40.221798, 43.248222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657639, 40.462650, 42.512939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046661, 40.542835, 42.560181>,  <33.280075, 40.590946, 42.588524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046661, 40.542835, 42.560181>,  <32.657639, 40.462650, 42.512939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046661, 40.542835, 42.560181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203071, -0.483609, -0.851402,
		-0.113557, 0.852020, -0.511045,
		0.972557, 0.200461, 0.118104,
		33.338428, 40.602974, 42.595612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937347, 40.823917, 41.902985>,  <32.657639, 40.462650, 42.512939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937347, 40.823917, 41.902985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230621, 40.611282, 42.072620>,  <33.406586, 40.483700, 42.174404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230621, 40.611282, 42.072620>,  <32.937347, 40.823917, 41.902985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230621, 40.611282, 42.072620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263751, -0.352529, -0.897863,
		0.626798, 0.770155, -0.118262,
		0.733185, -0.531587, 0.424094,
		33.450577, 40.451805, 42.199848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472893, 40.815434, 41.362309>,  <32.937347, 40.823917, 41.902985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472893, 40.815434, 41.362309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.594322, 40.563740, 41.648499>,  <33.667179, 40.412724, 41.820213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.594322, 40.563740, 41.648499>,  <33.472893, 40.815434, 41.362309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594322, 40.563740, 41.648499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593166, -0.462843, -0.658734,
		0.745651, 0.624372, 0.232732,
		0.303577, -0.629234, 0.715476,
		33.685394, 40.374969, 41.863140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177227, 40.717682, 41.258873>,  <33.472893, 40.815434, 41.362309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177227, 40.717682, 41.258873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073917, 40.387947, 41.460369>,  <34.011932, 40.190105, 41.581268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073917, 40.387947, 41.460369>,  <34.177227, 40.717682, 41.258873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073917, 40.387947, 41.460369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574796, -0.550221, -0.605696,
		0.776469, 0.133112, 0.615936,
		-0.258276, -0.824341, 0.503741,
		33.996433, 40.140644, 41.611492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724361, 40.368542, 41.416691>,  <34.177227, 40.717682, 41.258873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724361, 40.368542, 41.416691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.449326, 40.084736, 41.478416>,  <34.284306, 39.914452, 41.515453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.449326, 40.084736, 41.478416>,  <34.724361, 40.368542, 41.416691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449326, 40.084736, 41.478416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551171, -0.648363, -0.525201,
		0.472691, -0.276066, 0.836869,
		-0.687585, -0.709516, 0.154316,
		34.243050, 39.871880, 41.524712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112022, 39.760288, 41.622089>,  <34.724361, 40.368542, 41.416691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112022, 39.760288, 41.622089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744282, 39.648624, 41.511196>,  <34.523636, 39.581627, 41.444660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744282, 39.648624, 41.511196>,  <35.112022, 39.760288, 41.622089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744282, 39.648624, 41.511196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393359, -0.638841, -0.661174,
		0.007469, -0.716904, 0.697132,
		-0.919355, -0.279162, -0.277229,
		34.468475, 39.564877, 41.428028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150280, 38.992210, 41.508770>,  <35.112022, 39.760288, 41.622089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150280, 38.992210, 41.508770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864952, 39.162350, 41.285969>,  <34.693756, 39.264435, 41.152287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864952, 39.162350, 41.285969>,  <35.150280, 38.992210, 41.508770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864952, 39.162350, 41.285969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264400, -0.572711, -0.775948,
		-0.649048, -0.700772, 0.296065,
		-0.713322, 0.425348, -0.557002,
		34.650955, 39.289955, 41.118870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932728, 38.462070, 41.123257>,  <35.150280, 38.992210, 41.508770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932728, 38.462070, 41.123257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789154, 38.779842, 40.927277>,  <34.703011, 38.970505, 40.809689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789154, 38.779842, 40.927277>,  <34.932728, 38.462070, 41.123257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789154, 38.779842, 40.927277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226502, -0.435100, -0.871427,
		-0.905462, -0.423761, -0.023766,
		-0.358936, 0.794427, -0.489949,
		34.681473, 39.018169, 40.780293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557289, 38.171585, 40.563835>,  <34.932728, 38.462070, 41.123257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557289, 38.171585, 40.563835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.638371, 38.549129, 40.459499>,  <34.687019, 38.775658, 40.396896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.638371, 38.549129, 40.459499>,  <34.557289, 38.171585, 40.563835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638371, 38.549129, 40.459499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372563, -0.320672, -0.870842,
		-0.905599, 0.079342, -0.416648,
		0.202701, 0.943861, -0.260840,
		34.699181, 38.832287, 40.381248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322506, 38.248821, 39.857857>,  <34.557289, 38.171585, 40.563835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322506, 38.248821, 39.857857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578011, 38.551418, 39.914001>,  <34.731312, 38.732979, 39.947689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578011, 38.551418, 39.914001>,  <34.322506, 38.248821, 39.857857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578011, 38.551418, 39.914001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468715, -0.237926, -0.850704,
		-0.610158, 0.609185, -0.506558,
		0.638760, 0.756495, 0.140362,
		34.769638, 38.778366, 39.956108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332684, 38.640308, 39.221218>,  <34.322506, 38.248821, 39.857857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332684, 38.640308, 39.221218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.673710, 38.702980, 39.420647>,  <34.878326, 38.740582, 39.540306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.673710, 38.702980, 39.420647>,  <34.332684, 38.640308, 39.221218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673710, 38.702980, 39.420647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511930, -0.442276, -0.736423,
		0.105127, 0.883088, -0.457278,
		0.852570, 0.156676, 0.498575,
		34.929482, 38.749985, 39.570221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717052, 39.194393, 38.742504>,  <34.332684, 38.640308, 39.221218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717052, 39.194393, 38.742504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986031, 39.045311, 38.998291>,  <35.147415, 38.955864, 39.151764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986031, 39.045311, 38.998291>,  <34.717052, 39.194393, 38.742504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986031, 39.045311, 38.998291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482335, -0.434658, -0.760543,
		0.561405, 0.819857, -0.112514,
		0.672442, -0.372703, 0.639464,
		35.187763, 38.933498, 39.190132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353394, 39.357899, 38.407406>,  <34.717052, 39.194393, 38.742504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353394, 39.357899, 38.407406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444511, 39.054802, 38.652004>,  <35.499184, 38.872944, 38.798763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444511, 39.054802, 38.652004>,  <35.353394, 39.357899, 38.407406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444511, 39.054802, 38.652004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663969, -0.338476, -0.666767,
		0.712217, 0.557905, 0.426015,
		0.227797, -0.757744, 0.611501,
		35.512852, 38.827480, 38.835453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.122049, 26.573378, 31.231377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508396, 26.658684, 31.172562>,  <26.740204, 26.709867, 31.137272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508396, 26.658684, 31.172562>,  <26.122049, 26.573378, 31.231377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508396, 26.658684, 31.172562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254493, 0.887127, -0.385018,
		0.048330, 0.409296, 0.911120,
		0.965866, 0.213266, -0.147038,
		26.798157, 26.722664, 31.128450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107323, 27.155272, 31.576180>,  <26.122049, 26.573378, 31.231377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107323, 27.155272, 31.576180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392693, 27.112772, 31.299128>,  <26.563913, 27.087273, 31.132896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392693, 27.112772, 31.299128>,  <26.107323, 27.155272, 31.576180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392693, 27.112772, 31.299128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177749, 0.928669, -0.325544,
		0.677815, 0.355366, 0.643648,
		0.713423, -0.106251, -0.692632,
		26.606720, 27.080896, 31.091337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891438, 27.801838, 31.881828>,  <26.107323, 27.155272, 31.576180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891438, 27.801838, 31.881828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.168859, 27.636415, 32.117779>,  <26.335312, 27.537163, 32.259350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.168859, 27.636415, 32.117779>,  <25.891438, 27.801838, 31.881828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168859, 27.636415, 32.117779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111139, 0.747587, 0.654799,
		-0.711779, -0.519697, 0.472531,
		0.693555, -0.413556, 0.589876,
		26.376926, 27.512348, 32.294743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631144, 27.638676, 32.558895>,  <25.891438, 27.801838, 31.881828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631144, 27.638676, 32.558895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024343, 27.698574, 32.601398>,  <26.260263, 27.734512, 32.626900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024343, 27.698574, 32.601398>,  <25.631144, 27.638676, 32.558895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024343, 27.698574, 32.601398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178026, 0.918962, 0.351873,
		-0.044955, -0.364807, 0.929997,
		0.982998, 0.149746, 0.106257,
		26.319242, 27.743498, 32.633274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730492, 27.958502, 33.174553>,  <25.631144, 27.638676, 32.558895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730492, 27.958502, 33.174553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.056202, 28.088657, 32.982273>,  <26.251629, 28.166750, 32.866905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.056202, 28.088657, 32.982273>,  <25.730492, 27.958502, 33.174553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056202, 28.088657, 32.982273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045192, 0.861141, 0.506354,
		0.578714, -0.390588, 0.715912,
		0.814277, 0.325388, -0.480703,
		26.300486, 28.186274, 32.838062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176117, 28.459576, 33.681892>,  <25.730492, 27.958502, 33.174553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176117, 28.459576, 33.681892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.318584, 28.511377, 33.311729>,  <26.404066, 28.542458, 33.089634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.318584, 28.511377, 33.311729>,  <26.176117, 28.459576, 33.681892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318584, 28.511377, 33.311729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228767, 0.948126, 0.220731,
		0.905984, -0.290320, 0.308069,
		0.356171, 0.129503, -0.925404,
		26.425436, 28.550228, 33.034107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723635, 28.755936, 33.784576>,  <26.176117, 28.459576, 33.681892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723635, 28.755936, 33.784576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644457, 28.850384, 33.404037>,  <26.596951, 28.907053, 33.175713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644457, 28.850384, 33.404037>,  <26.723635, 28.755936, 33.784576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644457, 28.850384, 33.404037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232530, 0.954160, 0.188437,
		0.952233, -0.183918, -0.243776,
		-0.197945, 0.236121, -0.951349,
		26.585073, 28.921221, 33.118633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205452, 29.204033, 33.664776>,  <26.723635, 28.755936, 33.784576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205452, 29.204033, 33.664776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.973824, 29.280621, 33.347786>,  <26.834846, 29.326572, 33.157593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.973824, 29.280621, 33.347786>,  <27.205452, 29.204033, 33.664776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973824, 29.280621, 33.347786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298337, 0.954378, 0.012588,
		0.758731, -0.229135, -0.609774,
		-0.579071, 0.191469, -0.792475,
		26.800102, 29.338060, 33.110043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522114, 29.682140, 33.139366>,  <27.205452, 29.204033, 33.664776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522114, 29.682140, 33.139366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129118, 29.739609, 33.091919>,  <26.893320, 29.774090, 33.063450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129118, 29.739609, 33.091919>,  <27.522114, 29.682140, 33.139366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129118, 29.739609, 33.091919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147516, 0.988762, -0.024258,
		0.113804, -0.041332, -0.992643,
		-0.982491, 0.143670, -0.118622,
		26.834372, 29.782709, 33.056332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440729, 30.240772, 32.650402>,  <27.522114, 29.682140, 33.139366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440729, 30.240772, 32.650402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085690, 30.211082, 32.832241>,  <26.872665, 30.193268, 32.941345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085690, 30.211082, 32.832241>,  <27.440729, 30.240772, 32.650402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085690, 30.211082, 32.832241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080643, 0.996729, 0.005291,
		-0.453499, -0.031964, -0.890684,
		-0.887601, -0.074226, 0.454593,
		26.819408, 30.188814, 32.968620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963009, 30.811424, 32.281017>,  <27.440729, 30.240772, 32.650402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963009, 30.811424, 32.281017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822155, 30.713589, 32.642387>,  <26.737642, 30.654886, 32.859211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822155, 30.713589, 32.642387>,  <26.963009, 30.811424, 32.281017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822155, 30.713589, 32.642387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080530, 0.953752, 0.289605,
		-0.932479, 0.174732, -0.316152,
		-0.352134, -0.244591, 0.903425,
		26.716515, 30.640211, 32.913414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522255, 31.301132, 32.465050>,  <26.963009, 30.811424, 32.281017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522255, 31.301132, 32.465050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.561398, 31.161486, 32.837833>,  <26.584883, 31.077698, 33.061504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.561398, 31.161486, 32.837833>,  <26.522255, 31.301132, 32.465050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561398, 31.161486, 32.837833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216957, 0.906443, 0.362342,
		-0.971264, -0.237652, 0.012958,
		0.097856, -0.349118, 0.931955,
		26.590755, 31.056749, 33.117420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879381, 31.589561, 32.878208>,  <26.522255, 31.301132, 32.465050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879381, 31.589561, 32.878208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184477, 31.500820, 33.121193>,  <26.367535, 31.447575, 33.266983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184477, 31.500820, 33.121193>,  <25.879381, 31.589561, 32.878208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184477, 31.500820, 33.121193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018107, 0.931623, 0.362975,
		-0.646455, -0.287854, 0.706566,
		0.762737, -0.221853, 0.607464,
		26.413298, 31.434265, 33.303432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853636, 32.025330, 33.513702>,  <25.879381, 31.589561, 32.878208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853636, 32.025330, 33.513702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237015, 31.914557, 33.486324>,  <26.467043, 31.848093, 33.469898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237015, 31.914557, 33.486324>,  <25.853636, 32.025330, 33.513702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237015, 31.914557, 33.486324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280122, 0.868305, 0.409363,
		-0.053934, -0.411527, 0.909800,
		0.958448, -0.276933, -0.068447,
		26.524549, 31.831476, 33.465790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171833, 32.519745, 33.976048>,  <25.853636, 32.025330, 33.513702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171833, 32.519745, 33.976048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474583, 32.328461, 33.797852>,  <26.656233, 32.213692, 33.690933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474583, 32.328461, 33.797852>,  <26.171833, 32.519745, 33.976048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474583, 32.328461, 33.797852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626593, 0.724738, 0.286593,
		0.185810, -0.496054, 0.848178,
		0.756872, -0.478210, -0.445488,
		26.701645, 32.184998, 33.664204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760927, 32.658123, 34.365742>,  <26.171833, 32.519745, 33.976048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760927, 32.658123, 34.365742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920422, 32.538731, 34.018887>,  <27.016117, 32.467094, 33.810776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920422, 32.538731, 34.018887>,  <26.760927, 32.658123, 34.365742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920422, 32.538731, 34.018887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628976, 0.777122, 0.021727,
		0.667383, -0.554069, 0.497601,
		0.398735, -0.298478, -0.867134,
		27.040043, 32.449188, 33.758747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427589, 32.845116, 34.441963>,  <26.760927, 32.658123, 34.365742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427589, 32.845116, 34.441963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380262, 32.824226, 34.045322>,  <27.351866, 32.811691, 33.807339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380262, 32.824226, 34.045322>,  <27.427589, 32.845116, 34.441963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380262, 32.824226, 34.045322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604508, 0.788450, -0.113656,
		0.787763, -0.612878, -0.061720,
		-0.118321, -0.052224, -0.991601,
		27.344767, 32.808559, 33.747841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100382, 32.929470, 34.105885>,  <27.427589, 32.845116, 34.441963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100382, 32.929470, 34.105885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856951, 33.040165, 33.808414>,  <27.710892, 33.106583, 33.629932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856951, 33.040165, 33.808414>,  <28.100382, 32.929470, 34.105885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856951, 33.040165, 33.808414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549033, 0.823502, -0.142855,
		0.572886, -0.495241, -0.653099,
		-0.608576, 0.276733, -0.743676,
		27.674377, 33.123184, 33.585312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559345, 33.301315, 33.698124>,  <28.100382, 32.929470, 34.105885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559345, 33.301315, 33.698124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194822, 33.434872, 33.601761>,  <27.976109, 33.515007, 33.543945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194822, 33.434872, 33.601761>,  <28.559345, 33.301315, 33.698124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194822, 33.434872, 33.601761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351994, 0.935342, -0.035160,
		0.213588, -0.116839, -0.969912,
		-0.911307, 0.333893, -0.240904,
		27.921431, 33.535038, 33.529488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504110, 33.293209, 33.008686>,  <28.559345, 33.301315, 33.698124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504110, 33.293209, 33.008686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866148, 33.346191, 33.170311>,  <29.083370, 33.377979, 33.267284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866148, 33.346191, 33.170311>,  <28.504110, 33.293209, 33.008686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866148, 33.346191, 33.170311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409390, -0.528267, -0.743864,
		0.114924, 0.838683, -0.532356,
		0.905092, 0.132454, 0.404059,
		29.137676, 33.385929, 33.291527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084003, 33.662106, 32.506760>,  <28.504110, 33.293209, 33.008686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084003, 33.662106, 32.506760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195871, 33.396046, 32.783703>,  <29.262991, 33.236408, 32.949867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195871, 33.396046, 32.783703>,  <29.084003, 33.662106, 32.506760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195871, 33.396046, 32.783703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225618, -0.655406, -0.720791,
		0.933211, 0.357790, -0.033225,
		0.279668, -0.665154, 0.692356,
		29.279772, 33.196499, 32.991409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649511, 33.357552, 32.213055>,  <29.084003, 33.662106, 32.506760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649511, 33.357552, 32.213055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571476, 33.107250, 32.515148>,  <29.524654, 32.957069, 32.696404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571476, 33.107250, 32.515148>,  <29.649511, 33.357552, 32.213055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571476, 33.107250, 32.515148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197775, -0.779311, -0.594609,
		0.960638, 0.033365, 0.275791,
		-0.195088, -0.625749, 0.755234,
		29.512949, 32.919525, 32.741718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245453, 32.852592, 32.341141>,  <29.649511, 33.357552, 32.213055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245453, 32.852592, 32.341141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927305, 32.672173, 32.503101>,  <29.736418, 32.563919, 32.600277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927305, 32.672173, 32.503101>,  <30.245453, 32.852592, 32.341141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927305, 32.672173, 32.503101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252316, -0.853762, -0.455442,
		0.551115, -0.260082, 0.792862,
		-0.795367, -0.451053, 0.404898,
		29.688696, 32.536858, 32.624569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618891, 32.215454, 32.474808>,  <30.245453, 32.852592, 32.341141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618891, 32.215454, 32.474808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.223644, 32.160805, 32.502991>,  <29.986496, 32.128017, 32.519901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.223644, 32.160805, 32.502991>,  <30.618891, 32.215454, 32.474808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223644, 32.160805, 32.502991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104637, -0.933575, -0.342766,
		0.112610, -0.331319, 0.936774,
		-0.988115, -0.136620, 0.070461,
		29.927210, 32.119820, 32.524128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469898, 31.594458, 32.948132>,  <30.618891, 32.215454, 32.474808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469898, 31.594458, 32.948132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163282, 31.642273, 32.695740>,  <29.979313, 31.670963, 32.544304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163282, 31.642273, 32.695740>,  <30.469898, 31.594458, 32.948132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163282, 31.642273, 32.695740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250724, -0.848843, -0.465406,
		-0.591233, -0.514952, 0.620699,
		-0.766538, 0.119539, -0.630975,
		29.933321, 31.678135, 32.506447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198252, 30.820631, 32.806484>,  <30.469898, 31.594458, 32.948132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198252, 30.820631, 32.806484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066402, 31.051529, 32.507648>,  <29.987293, 31.190067, 32.328346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066402, 31.051529, 32.507648>,  <30.198252, 30.820631, 32.806484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066402, 31.051529, 32.507648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327429, -0.672302, -0.663928,
		-0.885517, -0.463463, 0.032599,
		-0.329622, 0.577245, -0.747086,
		29.967516, 31.224703, 32.283524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703470, 30.431129, 32.435478>,  <30.198252, 30.820631, 32.806484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703470, 30.431129, 32.435478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834240, 30.707026, 32.177059>,  <29.912703, 30.872562, 32.022007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834240, 30.707026, 32.177059>,  <29.703470, 30.431129, 32.435478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834240, 30.707026, 32.177059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171391, -0.715549, -0.677210,
		-0.929378, 0.110671, -0.352147,
		0.326927, 0.689739, -0.646048,
		29.932318, 30.913948, 31.983244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257723, 30.320642, 31.850594>,  <29.703470, 30.431129, 32.435478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257723, 30.320642, 31.850594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564697, 30.546661, 31.729424>,  <29.748882, 30.682272, 31.656721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564697, 30.546661, 31.729424>,  <29.257723, 30.320642, 31.850594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564697, 30.546661, 31.729424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073275, -0.546697, -0.834118,
		-0.636923, 0.617936, -0.460959,
		0.767437, 0.565046, -0.302925,
		29.794928, 30.716175, 31.638546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123257, 30.666370, 31.170296>,  <29.257723, 30.320642, 31.850594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123257, 30.666370, 31.170296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523170, 30.662848, 31.177774>,  <29.763119, 30.660734, 31.182262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523170, 30.662848, 31.177774>,  <29.123257, 30.666370, 31.170296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523170, 30.662848, 31.177774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012327, -0.471994, -0.881515,
		0.016588, 0.881557, -0.471785,
		0.999786, -0.008807, 0.018696,
		29.823107, 30.660206, 31.183384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342287, 30.797644, 30.519260>,  <29.123257, 30.666370, 31.170296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342287, 30.797644, 30.519260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676048, 30.631187, 30.663811>,  <29.876305, 30.531313, 30.750542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676048, 30.631187, 30.663811>,  <29.342287, 30.797644, 30.519260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676048, 30.631187, 30.663811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006269, -0.648468, -0.761216,
		0.551116, 0.637428, -0.538476,
		0.834405, -0.416143, 0.361377,
		29.926371, 30.506344, 30.772224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869711, 30.723595, 29.996891>,  <29.342287, 30.797644, 30.519260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869711, 30.723595, 29.996891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945093, 30.455063, 30.283609>,  <29.990322, 30.293943, 30.455641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945093, 30.455063, 30.283609>,  <29.869711, 30.723595, 29.996891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945093, 30.455063, 30.283609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092641, -0.738773, -0.667557,
		0.977702, 0.059400, -0.201419,
		0.188456, -0.671331, 0.716798,
		30.001631, 30.253664, 30.498650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275938, 30.238832, 29.673990>,  <29.869711, 30.723595, 29.996891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275938, 30.238832, 29.673990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142717, 30.028503, 29.987062>,  <30.062786, 29.902306, 30.174906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142717, 30.028503, 29.987062>,  <30.275938, 30.238832, 29.673990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142717, 30.028503, 29.987062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060118, -0.816538, -0.574153,
		0.940991, -0.238275, 0.240336,
		-0.333050, -0.525824, 0.782680,
		30.042803, 29.870756, 30.221867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679392, 29.585180, 29.684895>,  <30.275938, 30.238832, 29.673990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679392, 29.585180, 29.684895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.346901, 29.527739, 29.899719>,  <30.147406, 29.493273, 30.028614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.346901, 29.527739, 29.899719>,  <30.679392, 29.585180, 29.684895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346901, 29.527739, 29.899719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102265, -0.910077, -0.401624,
		0.546443, -0.388765, 0.741797,
		-0.831229, -0.143604, 0.537062,
		30.097532, 29.484657, 30.060839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810743, 28.982008, 30.046230>,  <30.679392, 29.585180, 29.684895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810743, 28.982008, 30.046230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416101, 29.028463, 30.000404>,  <30.179317, 29.056337, 29.972908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416101, 29.028463, 30.000404>,  <30.810743, 28.982008, 30.046230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416101, 29.028463, 30.000404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059003, -0.908762, -0.413124,
		-0.152093, -0.400830, 0.903440,
		-0.986604, 0.116138, -0.114566,
		30.120121, 29.063305, 29.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665422, 28.284872, 30.258257>,  <30.810743, 28.982008, 30.046230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665422, 28.284872, 30.258257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329779, 28.436995, 30.102684>,  <30.128393, 28.528269, 30.009340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329779, 28.436995, 30.102684>,  <30.665422, 28.284872, 30.258257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329779, 28.436995, 30.102684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211735, -0.886951, -0.410471,
		-0.501066, -0.262079, 0.824771,
		-0.839107, 0.380306, -0.388930,
		30.078047, 28.551086, 29.986006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119413, 27.825420, 30.475832>,  <30.665422, 28.284872, 30.258257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119413, 27.825420, 30.475832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011599, 28.017433, 30.141905>,  <29.946909, 28.132641, 29.941549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011599, 28.017433, 30.141905>,  <30.119413, 27.825420, 30.475832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011599, 28.017433, 30.141905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180968, -0.876704, -0.445691,
		-0.945833, 0.030944, 0.323176,
		-0.269539, 0.480033, -0.834815,
		29.930737, 28.161444, 29.891460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626560, 27.417456, 30.268793>,  <30.119413, 27.825420, 30.475832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626560, 27.417456, 30.268793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667604, 27.637373, 29.937202>,  <29.692230, 27.769323, 29.738249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667604, 27.637373, 29.937202>,  <29.626560, 27.417456, 30.268793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667604, 27.637373, 29.937202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246135, -0.793426, -0.556680,
		-0.963789, 0.261161, 0.053909,
		0.102611, 0.549791, -0.828976,
		29.698387, 27.802311, 29.688509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994209, 27.264458, 29.862976>,  <29.626560, 27.417456, 30.268793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994209, 27.264458, 29.862976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314665, 27.372940, 29.649576>,  <29.506939, 27.438028, 29.521536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.314665, 27.372940, 29.649576>,  <28.994209, 27.264458, 29.862976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314665, 27.372940, 29.649576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053216, -0.855617, -0.514866,
		-0.596105, 0.440871, -0.671037,
		0.801141, 0.271204, -0.533499,
		29.555008, 27.454302, 29.489527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762831, 27.025627, 29.240059>,  <28.994209, 27.264458, 29.862976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762831, 27.025627, 29.240059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154026, 27.090424, 29.187445>,  <29.388742, 27.129301, 29.155876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154026, 27.090424, 29.187445>,  <28.762831, 27.025627, 29.240059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154026, 27.090424, 29.187445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098131, -0.913343, -0.395190,
		-0.184154, 0.373582, -0.909133,
		0.977986, 0.161990, -0.131536,
		29.447422, 27.139021, 29.147984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848562, 26.796598, 28.526884>,  <28.762831, 27.025627, 29.240059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848562, 26.796598, 28.526884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192398, 26.813032, 28.730616>,  <29.398701, 26.822893, 28.852854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192398, 26.813032, 28.730616>,  <28.848562, 26.796598, 28.526884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192398, 26.813032, 28.730616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271571, -0.881068, -0.387258,
		0.432842, 0.471202, -0.768516,
		0.859591, 0.041085, 0.509328,
		29.450275, 26.825357, 28.883413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318354, 26.613243, 28.065346>,  <28.848562, 26.796598, 28.526884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318354, 26.613243, 28.065346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505350, 26.529684, 28.408930>,  <29.617548, 26.479549, 28.615080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505350, 26.529684, 28.408930>,  <29.318354, 26.613243, 28.065346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505350, 26.529684, 28.408930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404136, -0.813686, -0.417838,
		0.786210, 0.542473, -0.295968,
		0.467491, -0.208898, 0.858961,
		29.645597, 26.467014, 28.666618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924952, 26.488331, 27.618210>,  <29.318354, 26.613243, 28.065346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924952, 26.488331, 27.618210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917004, 26.324465, 27.983017>,  <29.912235, 26.226145, 28.201902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917004, 26.324465, 27.983017>,  <29.924952, 26.488331, 27.618210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917004, 26.324465, 27.983017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358742, -0.854377, -0.375957,
		0.933225, 0.319709, 0.163941,
		-0.019871, -0.409665, 0.912020,
		29.911043, 26.201565, 28.256622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.952312, 40.909100, 44.602791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843063, 40.537357, 44.702152>,  <35.777515, 40.314312, 44.761768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843063, 40.537357, 44.702152>,  <35.952312, 40.909100, 44.602791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843063, 40.537357, 44.702152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497745, 0.357491, 0.790221,
		-0.823197, 0.092188, -0.560221,
		-0.273123, -0.929355, 0.248399,
		35.761127, 40.258553, 44.776672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236603, 40.801079, 44.561275>,  <35.952312, 40.909100, 44.602791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236603, 40.801079, 44.561275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397419, 40.543125, 44.821270>,  <35.493908, 40.388351, 44.977268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397419, 40.543125, 44.821270>,  <35.236603, 40.801079, 44.561275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397419, 40.543125, 44.821270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484178, 0.452778, 0.748708,
		-0.777132, -0.615722, -0.130204,
		0.402042, -0.644887, 0.649987,
		35.518032, 40.349659, 45.016266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717747, 40.679447, 45.005192>,  <35.236603, 40.801079, 44.561275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717747, 40.679447, 45.005192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049137, 40.585564, 45.208580>,  <35.247971, 40.529232, 45.330612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049137, 40.585564, 45.208580>,  <34.717747, 40.679447, 45.005192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049137, 40.585564, 45.208580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377306, 0.437019, 0.816489,
		-0.413850, -0.868289, 0.273500,
		0.828473, -0.234711, 0.508471,
		35.297680, 40.515152, 45.361122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411148, 40.461220, 45.621426>,  <34.717747, 40.679447, 45.005192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411148, 40.461220, 45.621426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792122, 40.555061, 45.699223>,  <35.020706, 40.611366, 45.745903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792122, 40.555061, 45.699223>,  <34.411148, 40.461220, 45.621426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792122, 40.555061, 45.699223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277013, 0.400518, 0.873412,
		0.127002, -0.885747, 0.446455,
		0.952436, 0.234599, 0.194497,
		35.077854, 40.625443, 45.757572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463558, 40.279163, 46.270885>,  <34.411148, 40.461220, 45.621426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463558, 40.279163, 46.270885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759407, 40.538841, 46.199890>,  <34.936916, 40.694649, 46.157291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759407, 40.538841, 46.199890>,  <34.463558, 40.279163, 46.270885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759407, 40.538841, 46.199890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239444, 0.500290, 0.832092,
		0.628987, -0.572935, 0.525472,
		0.739623, 0.649195, -0.177490,
		34.981293, 40.733601, 46.146645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669773, 40.446590, 46.922657>,  <34.463558, 40.279163, 46.270885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669773, 40.446590, 46.922657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818993, 40.757320, 46.719727>,  <34.908524, 40.943756, 46.597969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818993, 40.757320, 46.719727>,  <34.669773, 40.446590, 46.922657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818993, 40.757320, 46.719727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140778, 0.587861, 0.796618,
		0.917069, -0.225758, 0.328661,
		0.373050, 0.776822, -0.507328,
		34.930908, 40.990368, 46.567528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121628, 40.713734, 47.344234>,  <34.669773, 40.446590, 46.922657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121628, 40.713734, 47.344234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033531, 40.990456, 47.069164>,  <34.980675, 41.156490, 46.904121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033531, 40.990456, 47.069164>,  <35.121628, 40.713734, 47.344234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033531, 40.990456, 47.069164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228718, 0.648705, 0.725858,
		0.948253, 0.317145, 0.015360,
		-0.220238, 0.691810, -0.687673,
		34.967461, 41.197998, 46.862862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483833, 41.287582, 47.459412>,  <35.121628, 40.713734, 47.344234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483833, 41.287582, 47.459412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161434, 41.416756, 47.260986>,  <34.967995, 41.494259, 47.141930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161434, 41.416756, 47.260986>,  <35.483833, 41.287582, 47.459412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161434, 41.416756, 47.260986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201207, 0.638683, 0.742697,
		0.556668, 0.698426, -0.449803,
		-0.806001, 0.322932, -0.496062,
		34.919636, 41.513634, 47.112167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667080, 42.047859, 47.307011>,  <35.483833, 41.287582, 47.459412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667080, 42.047859, 47.307011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270138, 42.032574, 47.260078>,  <35.031971, 42.023403, 47.231918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270138, 42.032574, 47.260078>,  <35.667080, 42.047859, 47.307011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270138, 42.032574, 47.260078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113871, 0.649962, 0.751387,
		0.047549, 0.759005, -0.649346,
		-0.992357, -0.038214, -0.117334,
		34.972431, 42.021111, 47.224876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388744, 42.767094, 47.222427>,  <35.667080, 42.047859, 47.307011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388744, 42.767094, 47.222427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076431, 42.550571, 47.347237>,  <34.889042, 42.420658, 47.422123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076431, 42.550571, 47.347237>,  <35.388744, 42.767094, 47.222427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076431, 42.550571, 47.347237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228864, 0.712477, 0.663323,
		-0.581373, 0.446501, -0.680178,
		-0.780786, -0.541306, 0.312027,
		34.842194, 42.388180, 47.440845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898178, 43.252148, 47.276096>,  <35.388744, 42.767094, 47.222427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898178, 43.252148, 47.276096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770348, 42.954620, 47.510906>,  <34.693649, 42.776104, 47.651794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770348, 42.954620, 47.510906>,  <34.898178, 43.252148, 47.276096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770348, 42.954620, 47.510906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365805, 0.668337, 0.647697,
		-0.874102, -0.007747, -0.485680,
		-0.319580, -0.743818, 0.587029,
		34.674473, 42.731476, 47.687016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062988, 43.417122, 47.306610>,  <34.898178, 43.252148, 47.276096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062988, 43.417122, 47.306610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251183, 43.270283, 47.627579>,  <34.364098, 43.182178, 47.820160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251183, 43.270283, 47.627579>,  <34.062988, 43.417122, 47.306610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251183, 43.270283, 47.627579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275551, 0.802758, 0.528820,
		-0.838281, -0.469911, 0.276531,
		0.470486, -0.367101, 0.802421,
		34.392330, 43.160152, 47.868305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595299, 43.546173, 47.820339>,  <34.062988, 43.417122, 47.306610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595299, 43.546173, 47.820339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974018, 43.536953, 47.948734>,  <34.201252, 43.531422, 48.025772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974018, 43.536953, 47.948734>,  <33.595299, 43.546173, 47.820339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974018, 43.536953, 47.948734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112908, 0.910237, 0.398397,
		-0.301358, -0.413446, 0.859213,
		0.946803, -0.023049, 0.320988,
		34.258060, 43.530037, 48.045033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009499, 43.866840, 48.142517>,  <33.595299, 43.546173, 47.820339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009499, 43.866840, 48.142517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997410, 43.792713, 47.749630>,  <32.990158, 43.748238, 47.513897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997410, 43.792713, 47.749630>,  <33.009499, 43.866840, 48.142517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997410, 43.792713, 47.749630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898489, 0.425522, -0.107925,
		0.437954, -0.885771, 0.153644,
		-0.030218, -0.185314, -0.982215,
		32.988346, 43.737118, 47.454964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492619, 43.618023, 47.702438>,  <33.009499, 43.866840, 48.142517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492619, 43.618023, 47.702438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121136, 43.631012, 47.554684>,  <31.898247, 43.638805, 47.466030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121136, 43.631012, 47.554684>,  <32.492619, 43.618023, 47.702438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121136, 43.631012, 47.554684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291625, -0.551330, -0.781659,
		-0.229037, -0.833655, 0.502555,
		-0.928707, 0.032471, -0.369389,
		31.842524, 43.640755, 47.443867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269123, 42.943531, 47.566341>,  <32.492619, 43.618023, 47.702438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269123, 42.943531, 47.566341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056946, 43.191067, 47.334591>,  <31.929640, 43.339588, 47.195541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056946, 43.191067, 47.334591>,  <32.269123, 42.943531, 47.566341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056946, 43.191067, 47.334591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293191, -0.507349, -0.810331,
		-0.795407, -0.599700, 0.087681,
		-0.530440, 0.618836, -0.579375,
		31.897814, 43.376717, 47.160778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037300, 42.458477, 47.111935>,  <32.269123, 42.943531, 47.566341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037300, 42.458477, 47.111935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.963089, 42.801033, 46.919197>,  <31.918562, 43.006565, 46.803555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.963089, 42.801033, 46.919197>,  <32.037300, 42.458477, 47.111935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963089, 42.801033, 46.919197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202399, -0.446539, -0.871572,
		-0.961568, -0.259229, -0.090486,
		-0.185531, 0.856390, -0.481845,
		31.907429, 43.057949, 46.774643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616209, 42.269695, 46.585781>,  <32.037300, 42.458477, 47.111935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616209, 42.269695, 46.585781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741150, 42.630630, 46.466976>,  <31.816114, 42.847191, 46.395695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741150, 42.630630, 46.466976>,  <31.616209, 42.269695, 46.585781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741150, 42.630630, 46.466976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305333, -0.391426, -0.868077,
		-0.899560, 0.180457, -0.397777,
		0.312350, 0.902342, -0.297012,
		31.834854, 42.901333, 46.377872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413313, 42.395184, 45.979824>,  <31.616209, 42.269695, 46.585781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413313, 42.395184, 45.979824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726089, 42.644444, 45.986118>,  <31.913755, 42.793999, 45.989895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726089, 42.644444, 45.986118>,  <31.413313, 42.395184, 45.979824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726089, 42.644444, 45.986118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341819, -0.407540, -0.846800,
		-0.521276, 0.667525, -0.531678,
		0.781941, 0.623154, 0.015732,
		31.960672, 42.831390, 45.990837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405880, 42.857975, 45.305206>,  <31.413313, 42.395184, 45.979824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405880, 42.857975, 45.305206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771254, 42.841553, 45.467171>,  <31.990479, 42.831699, 45.564350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771254, 42.841553, 45.467171>,  <31.405880, 42.857975, 45.305206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771254, 42.841553, 45.467171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378387, -0.280685, -0.882065,
		0.149862, 0.958922, -0.240854,
		0.913436, -0.041052, 0.404907,
		32.045284, 42.829239, 45.588642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935663, 43.224224, 44.878151>,  <31.405880, 42.857975, 45.305206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935663, 43.224224, 44.878151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161491, 42.971043, 45.090046>,  <32.296989, 42.819134, 45.217182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161491, 42.971043, 45.090046>,  <31.935663, 43.224224, 44.878151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161491, 42.971043, 45.090046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449515, -0.302490, -0.840498,
		0.692240, 0.712647, 0.113746,
		0.564571, -0.632957, 0.529741,
		32.330864, 42.781155, 45.248966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605095, 43.248676, 44.602726>,  <31.935663, 43.224224, 44.878151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605095, 43.248676, 44.602726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650440, 42.913235, 44.815853>,  <32.677647, 42.711971, 44.943729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650440, 42.913235, 44.815853>,  <32.605095, 43.248676, 44.602726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650440, 42.913235, 44.815853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462762, -0.429987, -0.775217,
		0.879204, 0.334447, 0.339330,
		0.113361, -0.838603, 0.532816,
		32.684448, 42.661655, 44.975697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297939, 43.120544, 44.593773>,  <32.605095, 43.248676, 44.602726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297939, 43.120544, 44.593773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113628, 42.773762, 44.669743>,  <33.003040, 42.565693, 44.715324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113628, 42.773762, 44.669743>,  <33.297939, 43.120544, 44.593773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113628, 42.773762, 44.669743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451303, -0.413144, -0.790972,
		0.764206, -0.278746, 0.581627,
		-0.460776, -0.866956, 0.189928,
		32.975395, 42.513676, 44.726723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835777, 42.639744, 44.534500>,  <33.297939, 43.120544, 44.593773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835777, 42.639744, 44.534500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497429, 42.429306, 44.499348>,  <33.294418, 42.303043, 44.478256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497429, 42.429306, 44.499348>,  <33.835777, 42.639744, 44.534500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497429, 42.429306, 44.499348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438561, -0.592212, -0.675980,
		0.303587, -0.610333, 0.731661,
		-0.845872, -0.526097, -0.087880,
		33.243668, 42.271477, 44.472984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020386, 41.947521, 44.607868>,  <33.835777, 42.639744, 44.534500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020386, 41.947521, 44.607868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672626, 41.937370, 44.410484>,  <33.463970, 41.931282, 44.292053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672626, 41.937370, 44.410484>,  <34.020386, 41.947521, 44.607868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672626, 41.937370, 44.410484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395167, -0.635240, -0.663561,
		-0.296626, -0.771898, 0.562305,
		-0.869400, -0.025375, -0.493457,
		33.411808, 41.929756, 44.262447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020386, 41.297832, 44.320415>,  <34.020386, 41.947521, 44.607868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020386, 41.297832, 44.320415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702168, 41.448551, 44.130627>,  <33.511234, 41.538982, 44.016754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702168, 41.448551, 44.130627>,  <34.020386, 41.297832, 44.320415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702168, 41.448551, 44.130627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198811, -0.577406, -0.791882,
		-0.572303, -0.724330, 0.384467,
		-0.795577, 0.376760, -0.474456,
		33.463505, 41.561592, 43.988285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585629, 40.750401, 44.258896>,  <34.020386, 41.297832, 44.320415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585629, 40.750401, 44.258896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501816, 41.010735, 43.967003>,  <33.451530, 41.166935, 43.791866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501816, 41.010735, 43.967003>,  <33.585629, 40.750401, 44.258896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501816, 41.010735, 43.967003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184533, -0.706569, -0.683161,
		-0.960232, -0.277801, 0.027945,
		-0.209527, 0.650836, -0.729733,
		33.438957, 41.205986, 43.748081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960217, 40.580914, 43.923222>,  <33.585629, 40.750401, 44.258896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960217, 40.580914, 43.923222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158447, 40.802399, 43.655548>,  <33.277386, 40.935287, 43.494942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158447, 40.802399, 43.655548>,  <32.960217, 40.580914, 43.923222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158447, 40.802399, 43.655548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069001, -0.742916, -0.665818,
		-0.865819, 0.376138, -0.329965,
		0.495576, 0.553711, -0.669185,
		33.307121, 40.968513, 43.454792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223984, 40.301544, 43.681355>,  <32.960217, 40.580914, 43.923222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223984, 40.301544, 43.681355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948889, 40.018299, 43.745350>,  <31.783833, 39.848351, 43.783749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948889, 40.018299, 43.745350>,  <32.223984, 40.301544, 43.681355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948889, 40.018299, 43.745350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310594, 0.486198, 0.816788,
		-0.656166, 0.512041, -0.554311,
		-0.687734, -0.708114, 0.159990,
		31.742569, 39.805866, 43.793346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603294, 40.752426, 43.816822>,  <32.223984, 40.301544, 43.681355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603294, 40.752426, 43.816822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553455, 40.386150, 43.969658>,  <31.523552, 40.166386, 44.061359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553455, 40.386150, 43.969658>,  <31.603294, 40.752426, 43.816822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553455, 40.386150, 43.969658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452678, 0.395136, 0.799344,
		-0.882926, -0.073366, -0.463745,
		-0.124598, -0.915688, 0.382087,
		31.516075, 40.111443, 44.084286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914841, 40.738400, 44.133629>,  <31.603294, 40.752426, 43.816822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914841, 40.738400, 44.133629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090511, 40.426613, 44.312313>,  <31.195915, 40.239540, 44.419521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090511, 40.426613, 44.312313>,  <30.914841, 40.738400, 44.133629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090511, 40.426613, 44.312313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514736, 0.189205, 0.836210,
		-0.736321, -0.597182, -0.318127,
		0.439178, -0.779471, 0.446707,
		31.222265, 40.192772, 44.446323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425510, 40.408226, 44.474503>,  <30.914841, 40.738400, 44.133629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425510, 40.408226, 44.474503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762878, 40.297863, 44.658901>,  <30.965300, 40.231644, 44.769539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762878, 40.297863, 44.658901>,  <30.425510, 40.408226, 44.474503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762878, 40.297863, 44.658901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418284, 0.201266, 0.885737,
		-0.337166, -0.939875, 0.054343,
		0.843420, -0.275910, 0.460995,
		31.015905, 40.215092, 44.797199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145885, 40.053829, 45.151920>,  <30.425510, 40.408226, 44.474503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145885, 40.053829, 45.151920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538765, 40.073620, 45.224411>,  <30.774492, 40.085495, 45.267906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538765, 40.073620, 45.224411>,  <30.145885, 40.053829, 45.151920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538765, 40.073620, 45.224411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185521, 0.103829, 0.977139,
		0.029530, -0.993364, 0.111160,
		0.982197, 0.049477, 0.181224,
		30.833424, 40.088463, 45.278778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261311, 39.553398, 45.717960>,  <30.145885, 40.053829, 45.151920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261311, 39.553398, 45.717960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540258, 39.839031, 45.742500>,  <30.707628, 40.010410, 45.757225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540258, 39.839031, 45.742500>,  <30.261311, 39.553398, 45.717960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540258, 39.839031, 45.742500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437355, 0.356179, 0.825746,
		0.567798, -0.602682, 0.560695,
		0.697371, 0.714081, 0.061348,
		30.749470, 40.053257, 45.760906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454363, 39.596786, 46.498993>,  <30.261311, 39.553398, 45.717960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454363, 39.596786, 46.498993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526146, 39.936878, 46.301044>,  <30.569216, 40.140934, 46.182274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526146, 39.936878, 46.301044>,  <30.454363, 39.596786, 46.498993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526146, 39.936878, 46.301044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440462, 0.519243, 0.732379,
		0.879652, 0.086539, 0.467679,
		0.179460, 0.850234, -0.494870,
		30.579985, 40.191948, 46.152584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769650, 39.323380, 47.218639>,  <30.454363, 39.596786, 46.498993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769650, 39.323380, 47.218639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419228, 39.132679, 47.247597>,  <30.208975, 39.018261, 47.264973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419228, 39.132679, 47.247597>,  <30.769650, 39.323380, 47.218639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419228, 39.132679, 47.247597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343281, -0.722020, -0.600704,
		0.338657, -0.501396, 0.796187,
		-0.876054, -0.476748, 0.072397,
		30.156412, 38.989655, 47.269318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959274, 38.621696, 47.319267>,  <30.769650, 39.323380, 47.218639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959274, 38.621696, 47.319267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.574123, 38.599007, 47.213703>,  <30.343033, 38.585392, 47.150364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.574123, 38.599007, 47.213703>,  <30.959274, 38.621696, 47.319267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574123, 38.599007, 47.213703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192044, -0.831017, -0.522044,
		-0.189700, -0.553347, 0.811062,
		-0.962877, -0.056728, -0.263911,
		30.285259, 38.581989, 47.134529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756990, 37.939896, 47.463207>,  <30.959274, 38.621696, 47.319267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756990, 37.939896, 47.463207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508329, 38.075722, 47.180862>,  <30.359133, 38.157219, 47.011456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508329, 38.075722, 47.180862>,  <30.756990, 37.939896, 47.463207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508329, 38.075722, 47.180862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027567, -0.910074, -0.413528,
		-0.782808, -0.237613, 0.575111,
		-0.621653, 0.339567, -0.705863,
		30.321835, 38.177593, 46.969105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353924, 37.308426, 47.187840>,  <30.756990, 37.939896, 47.463207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353924, 37.308426, 47.187840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.254150, 37.574726, 46.906540>,  <30.194286, 37.734505, 46.737759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.254150, 37.574726, 46.906540>,  <30.353924, 37.308426, 47.187840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254150, 37.574726, 46.906540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081313, -0.738037, -0.669843,
		-0.964973, -0.109897, 0.238224,
		-0.249431, 0.665751, -0.703249,
		30.179321, 37.774452, 46.695564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660130, 37.169624, 46.916416>,  <30.353924, 37.308426, 47.187840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660130, 37.169624, 46.916416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.882416, 37.368412, 46.649822>,  <30.015787, 37.487686, 46.489864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.882416, 37.368412, 46.649822>,  <29.660130, 37.169624, 46.916416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882416, 37.368412, 46.649822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186197, -0.706906, -0.682359,
		-0.810253, 0.503295, -0.300305,
		0.555716, 0.496968, -0.666485,
		30.049131, 37.517502, 46.449875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347685, 37.140621, 46.229858>,  <29.660130, 37.169624, 46.916416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347685, 37.140621, 46.229858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.731457, 37.215984, 46.145954>,  <29.961720, 37.261204, 46.095612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.731457, 37.215984, 46.145954>,  <29.347685, 37.140621, 46.229858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731457, 37.215984, 46.145954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053914, -0.607632, -0.792386,
		-0.276747, 0.771548, -0.572822,
		0.959429, 0.188407, -0.209758,
		30.019285, 37.272507, 46.083027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316700, 37.028000, 45.560074>,  <29.347685, 37.140621, 46.229858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316700, 37.028000, 45.560074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710533, 37.079235, 45.607723>,  <29.946833, 37.109974, 45.636314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710533, 37.079235, 45.607723>,  <29.316700, 37.028000, 45.560074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710533, 37.079235, 45.607723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172193, -0.589966, -0.788853,
		-0.030762, 0.797204, -0.602926,
		0.984583, 0.128086, 0.119124,
		30.005909, 37.117661, 45.643459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.537956, 40.092682, 49.825413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727386, 40.145428, 49.477081>,  <33.841045, 40.177074, 49.268082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727386, 40.145428, 49.477081>,  <33.537956, 40.092682, 49.825413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727386, 40.145428, 49.477081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309497, -0.900756, -0.304713,
		-0.824582, 0.413823, -0.385765,
		0.473577, 0.131868, -0.870825,
		33.869461, 40.184990, 49.215836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097919, 39.873714, 49.297779>,  <33.537956, 40.092682, 49.825413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097919, 39.873714, 49.297779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.478657, 39.863541, 49.175568>,  <33.707100, 39.857437, 49.102242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.478657, 39.863541, 49.175568>,  <33.097919, 39.873714, 49.297779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478657, 39.863541, 49.175568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132527, -0.932775, -0.335213,
		-0.276459, 0.359561, -0.891227,
		0.951844, -0.025439, -0.305526,
		33.764210, 39.855907, 49.083908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055431, 39.614277, 48.505493>,  <33.097919, 39.873714, 49.297779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055431, 39.614277, 48.505493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.405109, 39.567295, 48.693958>,  <33.614914, 39.539108, 48.807037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.405109, 39.567295, 48.693958>,  <33.055431, 39.614277, 48.505493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405109, 39.567295, 48.693958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082527, -0.920255, -0.382519,
		0.478518, 0.373278, -0.794785,
		0.874191, -0.117451, 0.471164,
		33.667366, 39.532059, 48.835308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412853, 39.282818, 48.017342>,  <33.055431, 39.614277, 48.505493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412853, 39.282818, 48.017342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.632107, 39.184471, 48.337116>,  <33.763657, 39.125462, 48.528980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.632107, 39.184471, 48.337116>,  <33.412853, 39.282818, 48.017342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632107, 39.184471, 48.337116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106681, -0.927459, -0.358383,
		0.829561, 0.281726, -0.482140,
		0.548131, -0.245865, 0.799439,
		33.796547, 39.110710, 48.576946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041294, 39.014610, 47.755234>,  <33.412853, 39.282818, 48.017342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041294, 39.014610, 47.755234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.065178, 38.874771, 48.129230>,  <34.079506, 38.790867, 48.353630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.065178, 38.874771, 48.129230>,  <34.041294, 39.014610, 47.755234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065178, 38.874771, 48.129230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341290, -0.873069, -0.348240,
		0.938060, 0.339897, 0.067188,
		0.059706, -0.349601, 0.934994,
		34.083088, 38.769890, 48.409729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650047, 38.605202, 47.751591>,  <34.041294, 39.014610, 47.755234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650047, 38.605202, 47.751591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.421001, 38.494705, 48.060345>,  <34.283573, 38.428406, 48.245598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.421001, 38.494705, 48.060345>,  <34.650047, 38.605202, 47.751591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421001, 38.494705, 48.060345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153846, -0.961002, -0.229798,
		0.805259, -0.012835, 0.592785,
		-0.572616, -0.276244, 0.771881,
		34.249218, 38.411831, 48.291908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067554, 38.158337, 48.115349>,  <34.650047, 38.605202, 47.751591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067554, 38.158337, 48.115349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694500, 38.080853, 48.237118>,  <34.470669, 38.034363, 48.310177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694500, 38.080853, 48.237118>,  <35.067554, 38.158337, 48.115349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694500, 38.080853, 48.237118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217521, -0.974971, 0.046013,
		0.287887, 0.109131, 0.951426,
		-0.932634, -0.193708, 0.304420,
		34.414711, 38.022739, 48.328445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185726, 37.553646, 48.600506>,  <35.067554, 38.158337, 48.115349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185726, 37.553646, 48.600506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.803661, 37.561863, 48.482357>,  <34.574421, 37.566792, 48.411469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.803661, 37.561863, 48.482357>,  <35.185726, 37.553646, 48.600506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803661, 37.561863, 48.482357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060482, -0.963023, -0.262542,
		-0.289845, -0.268635, 0.918600,
		-0.955161, 0.020537, -0.295375,
		34.517113, 37.568024, 48.393745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884510, 36.885479, 48.896614>,  <35.185726, 37.553646, 48.600506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884510, 36.885479, 48.896614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.650108, 37.017319, 48.600517>,  <34.509468, 37.096420, 48.422859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.650108, 37.017319, 48.600517>,  <34.884510, 36.885479, 48.896614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650108, 37.017319, 48.600517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108094, -0.873576, -0.474532,
		-0.803064, -0.358095, 0.476294,
		-0.586007, 0.329595, -0.740245,
		34.474308, 37.116196, 48.378445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450718, 36.326542, 48.765312>,  <34.884510, 36.885479, 48.896614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450718, 36.326542, 48.765312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415981, 36.533760, 48.424938>,  <34.395142, 36.658089, 48.220715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415981, 36.533760, 48.424938>,  <34.450718, 36.326542, 48.765312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415981, 36.533760, 48.424938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005426, -0.854396, -0.519594,
		-0.996208, -0.040502, 0.077004,
		-0.086837, 0.518041, -0.850936,
		34.389931, 36.689171, 48.169659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120667, 35.860466, 48.180820>,  <34.450718, 36.326542, 48.765312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120667, 35.860466, 48.180820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.265373, 36.162075, 47.961521>,  <34.352196, 36.343040, 47.829941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.265373, 36.162075, 47.961521>,  <34.120667, 35.860466, 48.180820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265373, 36.162075, 47.961521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085202, -0.558877, -0.824862,
		-0.928368, 0.345118, -0.137938,
		0.361765, 0.754022, -0.548248,
		34.373901, 36.388283, 47.797047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785686, 35.766911, 47.526577>,  <34.120667, 35.860466, 48.180820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785686, 35.766911, 47.526577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101669, 36.004982, 47.467613>,  <34.291260, 36.147823, 47.432236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101669, 36.004982, 47.467613>,  <33.785686, 35.766911, 47.526577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101669, 36.004982, 47.467613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058791, -0.312822, -0.947991,
		-0.610337, 0.740206, -0.282107,
		0.789957, 0.595179, -0.147409,
		34.338657, 36.183537, 47.423389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203621, 35.726173, 47.042091>,  <33.785686, 35.766911, 47.526577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203621, 35.726173, 47.042091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.935886, 35.456184, 47.166290>,  <32.775246, 35.294193, 47.240810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.935886, 35.456184, 47.166290>,  <33.203621, 35.726173, 47.042091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935886, 35.456184, 47.166290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432740, 0.693888, 0.575548,
		-0.603930, 0.250868, -0.756528,
		-0.669332, -0.674970, 0.310499,
		32.735088, 35.253693, 47.259441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423363, 35.872047, 46.859497>,  <33.203621, 35.726173, 47.042091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423363, 35.872047, 46.859497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.404125, 35.625103, 47.173580>,  <32.392582, 35.476936, 47.362030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.404125, 35.625103, 47.173580>,  <32.423363, 35.872047, 46.859497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404125, 35.625103, 47.173580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562381, 0.666413, 0.489512,
		-0.825479, -0.418045, -0.379240,
		-0.048092, -0.617359, 0.785210,
		32.389698, 35.439896, 47.409142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722086, 35.906448, 47.069981>,  <32.423363, 35.872047, 46.859497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722086, 35.906448, 47.069981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926750, 35.767117, 47.384144>,  <32.049549, 35.683517, 47.572643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926750, 35.767117, 47.384144>,  <31.722086, 35.906448, 47.069981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926750, 35.767117, 47.384144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412174, 0.702562, 0.580103,
		-0.753868, -0.620540, 0.215900,
		0.511660, -0.348333, 0.785410,
		32.080250, 35.662617, 47.619766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212078, 35.784863, 47.469273>,  <31.722086, 35.906448, 47.069981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212078, 35.784863, 47.469273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542683, 35.809166, 47.693127>,  <31.741045, 35.823746, 47.827438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542683, 35.809166, 47.693127>,  <31.212078, 35.784863, 47.469273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542683, 35.809166, 47.693127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425576, 0.718173, 0.550557,
		-0.368464, -0.693207, 0.619434,
		0.826510, 0.060756, 0.559633,
		31.790636, 35.827393, 47.861015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977337, 35.887852, 48.234749>,  <31.212078, 35.784863, 47.469273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977337, 35.887852, 48.234749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.359306, 36.006245, 48.225700>,  <31.588488, 36.077282, 48.220272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.359306, 36.006245, 48.225700>,  <30.977337, 35.887852, 48.234749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359306, 36.006245, 48.225700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235142, 0.800733, 0.550940,
		0.181184, -0.520787, 0.834238,
		0.954925, 0.295986, -0.022621,
		31.645784, 36.095039, 48.218914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262783, 35.880508, 48.939461>,  <30.977337, 35.887852, 48.234749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262783, 35.880508, 48.939461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.494368, 36.128056, 48.727119>,  <31.633318, 36.276585, 48.599712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.494368, 36.128056, 48.727119>,  <31.262783, 35.880508, 48.939461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494368, 36.128056, 48.727119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146967, 0.719618, 0.678639,
		0.802000, -0.314887, 0.507584,
		0.578961, 0.618867, -0.530856,
		31.668056, 36.313717, 48.567863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634159, 36.257175, 49.399338>,  <31.262783, 35.880508, 48.939461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634159, 36.257175, 49.399338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.667120, 36.488297, 49.074535>,  <31.686895, 36.626968, 48.879654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.667120, 36.488297, 49.074535>,  <31.634159, 36.257175, 49.399338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667120, 36.488297, 49.074535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187146, 0.809255, 0.556850,
		0.978870, 0.106079, 0.174816,
		0.082401, 0.577800, -0.812008,
		31.691841, 36.661636, 48.830933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083801, 36.713905, 49.646244>,  <31.634159, 36.257175, 49.399338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083801, 36.713905, 49.646244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951313, 36.885479, 49.310074>,  <31.871820, 36.988422, 49.108372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951313, 36.885479, 49.310074>,  <32.083801, 36.713905, 49.646244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951313, 36.885479, 49.310074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097750, 0.870308, 0.482710,
		0.938476, 0.242035, -0.246336,
		-0.331221, 0.428933, -0.840422,
		31.851946, 37.014160, 49.057949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462914, 37.378883, 49.564213>,  <32.083801, 36.713905, 49.646244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462914, 37.378883, 49.564213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127197, 37.416187, 49.349964>,  <31.925766, 37.438568, 49.221416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127197, 37.416187, 49.349964>,  <32.462914, 37.378883, 49.564213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127197, 37.416187, 49.349964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186863, 0.875679, 0.445272,
		0.510555, 0.473802, -0.717527,
		-0.839295, 0.093257, -0.535619,
		31.875408, 37.444164, 49.189278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421837, 38.127857, 49.324081>,  <32.462914, 37.378883, 49.564213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421837, 38.127857, 49.324081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060295, 37.956867, 49.317066>,  <31.843370, 37.854275, 49.312859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060295, 37.956867, 49.317066>,  <32.421837, 38.127857, 49.324081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060295, 37.956867, 49.317066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386521, 0.798314, 0.461840,
		-0.183426, 0.424215, -0.886790,
		-0.903856, -0.427476, -0.017536,
		31.789139, 37.828625, 49.311806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998625, 38.637051, 49.133442>,  <32.421837, 38.127857, 49.324081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998625, 38.637051, 49.133442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748590, 38.371780, 49.298107>,  <31.598570, 38.212616, 49.396904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748590, 38.371780, 49.298107>,  <31.998625, 38.637051, 49.133442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748590, 38.371780, 49.298107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487844, 0.743623, 0.457201,
		-0.609325, 0.084964, -0.788355,
		-0.625085, -0.663179, 0.411660,
		31.561066, 38.172829, 49.421604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340544, 38.972542, 49.254463>,  <31.998625, 38.637051, 49.133442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340544, 38.972542, 49.254463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.308067, 38.664829, 49.507957>,  <31.288582, 38.480202, 49.660053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.308067, 38.664829, 49.507957>,  <31.340544, 38.972542, 49.254463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308067, 38.664829, 49.507957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462648, 0.592270, 0.659676,
		-0.882817, -0.239637, -0.403991,
		-0.081189, -0.769278, 0.633734,
		31.283710, 38.434044, 49.698078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628538, 39.045528, 49.552635>,  <31.340544, 38.972542, 49.254463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628538, 39.045528, 49.552635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827593, 38.809483, 49.806919>,  <30.947025, 38.667854, 49.959488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827593, 38.809483, 49.806919>,  <30.628538, 39.045528, 49.552635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827593, 38.809483, 49.806919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395140, 0.498204, 0.771788,
		-0.772155, -0.635263, 0.014747,
		0.497635, -0.590113, 0.635709,
		30.976883, 38.632450, 49.997631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135666, 38.714275, 50.025028>,  <30.628538, 39.045528, 49.552635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135666, 38.714275, 50.025028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483053, 38.694881, 50.222374>,  <30.691486, 38.683247, 50.340782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483053, 38.694881, 50.222374>,  <30.135666, 38.714275, 50.025028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483053, 38.694881, 50.222374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381028, 0.571379, 0.726873,
		-0.317143, -0.819253, 0.477750,
		0.868469, -0.048487, 0.493366,
		30.743593, 38.680336, 50.370384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545563, 39.173119, 50.117794>,  <30.135666, 38.714275, 50.025028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545563, 39.173119, 50.117794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425699, 39.508022, 49.934841>,  <29.353781, 39.708965, 49.825069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425699, 39.508022, 49.934841>,  <29.545563, 39.173119, 50.117794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425699, 39.508022, 49.934841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012614, -0.475891, -0.879414,
		-0.953964, -0.269291, 0.132043,
		-0.299656, 0.837263, -0.457380,
		29.335802, 39.759201, 49.797626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898413, 38.988956, 49.700539>,  <29.545563, 39.173119, 50.117794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898413, 38.988956, 49.700539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.069817, 39.318306, 49.551712>,  <29.172659, 39.515915, 49.462418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.069817, 39.318306, 49.551712>,  <28.898413, 38.988956, 49.700539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069817, 39.318306, 49.551712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169035, -0.477572, -0.862179,
		-0.887585, 0.306559, -0.343823,
		0.428509, 0.823375, -0.372067,
		29.198370, 39.565319, 49.440090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619514, 39.064278, 49.008884>,  <28.898413, 38.988956, 49.700539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619514, 39.064278, 49.008884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.975889, 39.245651, 49.018917>,  <29.189714, 39.354473, 49.024937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.975889, 39.245651, 49.018917>,  <28.619514, 39.064278, 49.008884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975889, 39.245651, 49.018917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211695, -0.365833, -0.906285,
		-0.401764, 0.812752, -0.421923,
		0.890938, 0.453431, 0.025077,
		29.243170, 39.381680, 49.026440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660854, 39.352787, 48.388359>,  <28.619514, 39.064278, 49.008884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660854, 39.352787, 48.388359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044056, 39.342239, 48.502575>,  <29.273977, 39.335911, 48.571106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044056, 39.342239, 48.502575>,  <28.660854, 39.352787, 48.388359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044056, 39.342239, 48.502575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269590, -0.256560, -0.928169,
		0.097731, 0.966169, -0.238677,
		0.958003, -0.026366, 0.285543,
		29.331457, 39.334332, 48.588238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881231, 39.768631, 47.877846>,  <28.660854, 39.352787, 48.388359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881231, 39.768631, 47.877846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.176352, 39.555321, 48.043385>,  <29.353424, 39.427334, 48.142708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.176352, 39.555321, 48.043385>,  <28.881231, 39.768631, 47.877846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176352, 39.555321, 48.043385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292634, -0.299793, -0.908014,
		0.608289, 0.791039, -0.065133,
		0.737801, -0.533275, 0.413845,
		29.397692, 39.395340, 48.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481977, 39.973663, 47.498386>,  <28.881231, 39.768631, 47.877846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481977, 39.973663, 47.498386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.612007, 39.648651, 47.691929>,  <29.690025, 39.453644, 47.808056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.612007, 39.648651, 47.691929>,  <29.481977, 39.973663, 47.498386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612007, 39.648651, 47.691929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336297, -0.378879, -0.862180,
		0.883873, 0.442991, 0.150089,
		0.325073, -0.812532, 0.483858,
		29.709530, 39.404892, 47.837086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163858, 39.910664, 47.337906>,  <29.481977, 39.973663, 47.498386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163858, 39.910664, 47.337906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.045603, 39.547894, 47.457958>,  <29.974649, 39.330231, 47.529987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.045603, 39.547894, 47.457958>,  <30.163858, 39.910664, 47.337906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045603, 39.547894, 47.457958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339167, -0.393352, -0.854541,
		0.893064, -0.150842, 0.423890,
		-0.295639, -0.906929, 0.300128,
		29.956911, 39.275814, 47.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839369, 40.058968, 47.156994>,  <30.163858, 39.910664, 47.337906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839369, 40.058968, 47.156994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.798809, 40.293980, 46.835865>,  <30.774473, 40.434986, 46.643188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.798809, 40.293980, 46.835865>,  <30.839369, 40.058968, 47.156994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798809, 40.293980, 46.835865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390404, 0.718748, 0.575313,
		0.915042, 0.371763, 0.156492,
		-0.101402, 0.587531, -0.802823,
		30.768389, 40.470238, 46.595016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084702, 40.703560, 47.316101>,  <30.839369, 40.058968, 47.156994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084702, 40.703560, 47.316101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.826628, 40.774017, 47.018723>,  <30.671783, 40.816292, 46.840294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.826628, 40.774017, 47.018723>,  <31.084702, 40.703560, 47.316101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826628, 40.774017, 47.018723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461489, 0.685655, 0.562943,
		0.608906, 0.706294, -0.361086,
		-0.645183, 0.176142, -0.743446,
		30.633072, 40.826859, 46.795689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113264, 41.411324, 47.202820>,  <31.084702, 40.703560, 47.316101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113264, 41.411324, 47.202820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.753393, 41.309223, 47.061161>,  <30.537470, 41.247963, 46.976166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.753393, 41.309223, 47.061161>,  <31.113264, 41.411324, 47.202820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753393, 41.309223, 47.061161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409875, 0.773146, 0.483991,
		0.150269, 0.580594, -0.800206,
		-0.899679, -0.255255, -0.354151,
		30.483490, 41.232647, 46.954914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849489, 42.009686, 46.925198>,  <31.113264, 41.411324, 47.202820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849489, 42.009686, 46.925198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.547880, 41.758499, 47.002254>,  <30.366915, 41.607788, 47.048489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.547880, 41.758499, 47.002254>,  <30.849489, 42.009686, 46.925198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547880, 41.758499, 47.002254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451158, 0.708287, 0.542943,
		-0.477396, 0.322477, -0.817375,
		-0.754022, -0.627964, 0.192645,
		30.321674, 41.570110, 47.060047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284338, 42.419918, 46.840527>,  <30.849489, 42.009686, 46.925198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284338, 42.419918, 46.840527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.156239, 42.108929, 47.057034>,  <30.079378, 41.922333, 47.186939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.156239, 42.108929, 47.057034>,  <30.284338, 42.419918, 46.840527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156239, 42.108929, 47.057034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193212, 0.612955, 0.766130,
		-0.927421, 0.140773, -0.346515,
		-0.320249, -0.777476, 0.541268,
		30.060163, 41.875687, 47.219414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691641, 42.810677, 47.180992>,  <30.284338, 42.419918, 46.840527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691641, 42.810677, 47.180992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.766798, 42.469864, 47.376434>,  <29.811893, 42.265377, 47.493702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.766798, 42.469864, 47.376434>,  <29.691641, 42.810677, 47.180992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766798, 42.469864, 47.376434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270128, 0.433456, 0.859736,
		-0.944313, -0.293527, -0.148713,
		0.187895, -0.852031, 0.488608,
		29.823166, 42.214256, 47.523018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060072, 42.592236, 47.377686>,  <29.691641, 42.810677, 47.180992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060072, 42.592236, 47.377686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.343319, 42.456413, 47.625320>,  <29.513268, 42.374920, 47.773903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.343319, 42.456413, 47.625320>,  <29.060072, 42.592236, 47.377686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343319, 42.456413, 47.625320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468552, 0.429947, 0.771754,
		-0.528231, -0.836567, 0.145351,
		0.708118, -0.339560, 0.619086,
		29.555754, 42.354546, 47.811047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661821, 42.462410, 48.003845>,  <29.060072, 42.592236, 47.377686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661821, 42.462410, 48.003845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040384, 42.426270, 48.127876>,  <29.267523, 42.404583, 48.202293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040384, 42.426270, 48.127876>,  <28.661821, 42.462410, 48.003845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040384, 42.426270, 48.127876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221098, 0.518590, 0.825942,
		-0.235431, -0.850235, 0.470821,
		0.946408, -0.090355, 0.310077,
		29.324306, 42.399162, 48.220898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619804, 42.077908, 48.631115>,  <28.661821, 42.462410, 48.003845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619804, 42.077908, 48.631115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.950428, 42.302639, 48.617573>,  <29.148802, 42.437477, 48.609447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.950428, 42.302639, 48.617573>,  <28.619804, 42.077908, 48.631115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950428, 42.302639, 48.617573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232453, 0.395534, 0.888549,
		0.512607, -0.726566, 0.457531,
		0.826559, 0.561831, -0.033861,
		29.198397, 42.471188, 48.607414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.716385, 32.703381, 37.066227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003201, 32.976852, 37.120529>,  <36.175289, 33.140938, 37.153111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003201, 32.976852, 37.120529>,  <35.716385, 32.703381, 37.066227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003201, 32.976852, 37.120529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408624, 0.254517, 0.876497,
		0.564695, -0.683957, 0.461869,
		0.717040, 0.683684, 0.135757,
		36.218311, 33.181957, 37.161255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836895, 32.696301, 37.778687>,  <35.716385, 32.703381, 37.066227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836895, 32.696301, 37.778687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910362, 33.064617, 37.641048>,  <35.954445, 33.285606, 37.558464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910362, 33.064617, 37.641048>,  <35.836895, 32.696301, 37.778687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910362, 33.064617, 37.641048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508624, 0.388573, 0.768318,
		0.841169, 0.033898, 0.539708,
		0.183672, 0.920794, -0.344097,
		35.965466, 33.340855, 37.537819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106781, 33.006168, 38.327038>,  <35.836895, 32.696301, 37.778687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106781, 33.006168, 38.327038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979301, 33.310852, 38.101391>,  <35.902813, 33.493664, 37.966003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979301, 33.310852, 38.101391>,  <36.106781, 33.006168, 38.327038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979301, 33.310852, 38.101391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322298, 0.472601, 0.820227,
		0.891378, 0.443219, 0.094880,
		-0.318700, 0.761712, -0.564115,
		35.883690, 33.539364, 37.932156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275097, 33.623268, 38.718975>,  <36.106781, 33.006168, 38.327038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275097, 33.623268, 38.718975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986759, 33.719093, 38.458824>,  <35.813755, 33.776588, 38.302734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986759, 33.719093, 38.458824>,  <36.275097, 33.623268, 38.718975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986759, 33.719093, 38.458824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480197, 0.504037, 0.717884,
		0.499796, 0.829792, -0.248292,
		-0.720843, 0.239567, -0.650379,
		35.770508, 33.790962, 38.263710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152313, 34.418842, 38.843613>,  <36.275097, 33.623268, 38.718975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152313, 34.418842, 38.843613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826756, 34.266487, 38.668110>,  <35.631420, 34.175076, 38.562809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826756, 34.266487, 38.668110>,  <36.152313, 34.418842, 38.843613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826756, 34.266487, 38.668110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581016, 0.531805, 0.616120,
		-0.001341, 0.756378, -0.654133,
		-0.813891, -0.380888, -0.438755,
		35.582588, 34.152222, 38.536484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758984, 34.959480, 38.639980>,  <36.152313, 34.418842, 38.843613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758984, 34.959480, 38.639980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488548, 34.666382, 38.670929>,  <35.326286, 34.490524, 38.689499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488548, 34.666382, 38.670929>,  <35.758984, 34.959480, 38.639980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488548, 34.666382, 38.670929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640245, 0.636203, 0.430503,
		-0.364673, 0.241522, -0.899267,
		-0.676092, -0.732744, 0.077373,
		35.285721, 34.446560, 38.694141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115089, 35.360897, 38.403324>,  <35.758984, 34.959480, 38.639980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115089, 35.360897, 38.403324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003181, 35.034332, 38.605392>,  <34.936039, 34.838394, 38.726635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003181, 35.034332, 38.605392>,  <35.115089, 35.360897, 38.403324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003181, 35.034332, 38.605392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647850, 0.548866, 0.528239,
		-0.708534, -0.179494, -0.682467,
		-0.279767, -0.816412, 0.505176,
		34.919250, 34.789410, 38.756947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459515, 35.491051, 38.412415>,  <35.115089, 35.360897, 38.403324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459515, 35.491051, 38.412415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530148, 35.212337, 38.690498>,  <34.572529, 35.045109, 38.857349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530148, 35.212337, 38.690498>,  <34.459515, 35.491051, 38.412415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530148, 35.212337, 38.690498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594185, 0.487626, 0.639660,
		-0.784705, -0.526036, -0.327910,
		0.176586, -0.696783, 0.695205,
		34.583122, 35.003304, 38.899059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833672, 35.529110, 38.694695>,  <34.459515, 35.491051, 38.412415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833672, 35.529110, 38.694695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053944, 35.323723, 38.957935>,  <34.186108, 35.200489, 39.115879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053944, 35.323723, 38.957935>,  <33.833672, 35.529110, 38.694695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053944, 35.323723, 38.957935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396182, 0.533174, 0.747506,
		-0.734704, -0.672366, 0.090181,
		0.550680, -0.513468, 0.658104,
		34.219147, 35.169682, 39.155365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386272, 35.085186, 39.018578>,  <33.833672, 35.529110, 38.694695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386272, 35.085186, 39.018578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715111, 35.131020, 39.241661>,  <33.912415, 35.158520, 39.375511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715111, 35.131020, 39.241661>,  <33.386272, 35.085186, 39.018578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715111, 35.131020, 39.241661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506460, 0.594693, 0.624371,
		-0.260123, -0.795746, 0.546923,
		0.822092, 0.114581, 0.557706,
		33.961739, 35.165394, 39.408974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313877, 34.733536, 39.766994>,  <33.386272, 35.085186, 39.018578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313877, 34.733536, 39.766994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579929, 35.027447, 39.820210>,  <33.739559, 35.203793, 39.852139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579929, 35.027447, 39.820210>,  <33.313877, 34.733536, 39.766994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579929, 35.027447, 39.820210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581423, 0.397816, 0.709711,
		0.468561, -0.549398, 0.691819,
		0.665130, 0.734782, 0.133032,
		33.779469, 35.247883, 39.860119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353821, 34.819241, 40.442768>,  <33.313877, 34.733536, 39.766994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353821, 34.819241, 40.442768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503376, 35.163784, 40.305210>,  <33.593109, 35.370510, 40.222675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503376, 35.163784, 40.305210>,  <33.353821, 34.819241, 40.442768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503376, 35.163784, 40.305210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529500, 0.502662, 0.683345,
		0.761470, -0.073404, 0.644031,
		0.373891, 0.861361, -0.343894,
		33.615543, 35.422192, 40.202042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119545, 34.276653, 40.863407>,  <33.353821, 34.819241, 40.442768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119545, 34.276653, 40.863407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729507, 34.188931, 40.850216>,  <32.495483, 34.136295, 40.842300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729507, 34.188931, 40.850216>,  <33.119545, 34.276653, 40.863407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729507, 34.188931, 40.850216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175699, -0.673199, -0.718284,
		0.135327, -0.706191, 0.694968,
		-0.975098, -0.219309, -0.032975,
		32.436977, 34.123138, 40.840324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088421, 33.476593, 40.910690>,  <33.119545, 34.276653, 40.863407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088421, 33.476593, 40.910690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733006, 33.600243, 40.775078>,  <32.519756, 33.674435, 40.693710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733006, 33.600243, 40.775078>,  <33.088421, 33.476593, 40.910690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733006, 33.600243, 40.775078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096382, -0.596694, -0.796660,
		-0.448565, -0.740539, 0.500391,
		-0.888538, 0.309125, -0.339031,
		32.466446, 33.692982, 40.673370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760651, 32.811047, 40.605289>,  <33.088421, 33.476593, 40.910690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760651, 32.811047, 40.605289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591373, 33.139854, 40.452873>,  <32.489807, 33.337139, 40.361423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591373, 33.139854, 40.452873>,  <32.760651, 32.811047, 40.605289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591373, 33.139854, 40.452873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111848, -0.369937, -0.922300,
		-0.899111, -0.432926, 0.064612,
		-0.423190, 0.822023, -0.381036,
		32.464417, 33.386459, 40.338562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255032, 32.483250, 40.167549>,  <32.760651, 32.811047, 40.605289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255032, 32.483250, 40.167549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326717, 32.848881, 40.022038>,  <32.369728, 33.068260, 39.934731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326717, 32.848881, 40.022038>,  <32.255032, 32.483250, 40.167549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326717, 32.848881, 40.022038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289301, -0.402384, -0.868557,
		-0.940312, 0.050416, -0.336558,
		0.179215, 0.914082, -0.363781,
		32.380482, 33.123104, 39.912903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020531, 32.444721, 39.541771>,  <32.255032, 32.483250, 40.167549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020531, 32.444721, 39.541771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235752, 32.779991, 39.506081>,  <32.364883, 32.981152, 39.484665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235752, 32.779991, 39.506081>,  <32.020531, 32.444721, 39.541771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235752, 32.779991, 39.506081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227228, -0.246170, -0.942214,
		-0.811706, 0.486685, -0.322909,
		0.538052, 0.838175, -0.089229,
		32.397167, 33.031445, 39.479313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847567, 32.812996, 38.828938>,  <32.020531, 32.444721, 39.541771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847567, 32.812996, 38.828938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191971, 32.973938, 38.953365>,  <32.398613, 33.070503, 39.028023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191971, 32.973938, 38.953365>,  <31.847567, 32.812996, 38.828938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191971, 32.973938, 38.953365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391303, -0.133395, -0.910542,
		-0.324870, 0.905711, -0.272299,
		0.861012, 0.402359, 0.311071,
		32.450275, 33.094646, 39.046688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022087, 33.312962, 38.424038>,  <31.847567, 32.812996, 38.828938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022087, 33.312962, 38.424038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366138, 33.179119, 38.578033>,  <32.572571, 33.098816, 38.670433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366138, 33.179119, 38.578033>,  <32.022087, 33.312962, 38.424038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366138, 33.179119, 38.578033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310687, -0.254933, -0.915687,
		0.404539, 0.907221, -0.115318,
		0.860129, -0.334603, 0.384992,
		32.624176, 33.078739, 38.693531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406258, 33.259953, 37.809532>,  <32.022087, 33.312962, 38.424038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406258, 33.259953, 37.809532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634388, 33.065460, 38.074352>,  <32.771267, 32.948765, 38.233246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634388, 33.065460, 38.074352>,  <32.406258, 33.259953, 37.809532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634388, 33.065460, 38.074352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281118, -0.641777, -0.713509,
		0.771815, 0.593048, -0.229336,
		0.570328, -0.486227, 0.662050,
		32.805485, 32.919594, 38.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998554, 33.289188, 37.537052>,  <32.406258, 33.259953, 37.809532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998554, 33.289188, 37.537052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994816, 32.963772, 37.769623>,  <32.992573, 32.768520, 37.909164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994816, 32.963772, 37.769623>,  <32.998554, 33.289188, 37.537052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994816, 32.963772, 37.769623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360366, -0.545120, -0.756955,
		0.932764, 0.202453, 0.298269,
		-0.009345, -0.813546, 0.581425,
		32.992012, 32.719707, 37.944050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569996, 32.939342, 37.420429>,  <32.998554, 33.289188, 37.537052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569996, 32.939342, 37.420429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328926, 32.660004, 37.574886>,  <33.184284, 32.492401, 37.667561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328926, 32.660004, 37.574886>,  <33.569996, 32.939342, 37.420429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328926, 32.660004, 37.574886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377718, -0.675896, -0.632846,
		0.702935, -0.235545, 0.671119,
		-0.602670, -0.698343, 0.386142,
		33.148125, 32.450500, 37.690727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053490, 32.367657, 37.623676>,  <33.569996, 32.939342, 37.420429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053490, 32.367657, 37.623676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681282, 32.229164, 37.575916>,  <33.457958, 32.146069, 37.547260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681282, 32.229164, 37.575916>,  <34.053490, 32.367657, 37.623676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681282, 32.229164, 37.575916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337344, -0.683343, -0.647488,
		0.142592, -0.642778, 0.752664,
		-0.930519, -0.346234, -0.119398,
		33.402126, 32.125294, 37.540096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103004, 31.594524, 37.556324>,  <34.053490, 32.367657, 37.623676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103004, 31.594524, 37.556324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736557, 31.687294, 37.425522>,  <33.516689, 31.742956, 37.347042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736557, 31.687294, 37.425522>,  <34.103004, 31.594524, 37.556324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736557, 31.687294, 37.425522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065316, -0.718436, -0.692520,
		-0.395544, -0.655791, 0.643026,
		-0.916122, 0.231922, -0.327006,
		33.461720, 31.756870, 37.327419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848705, 30.938784, 37.514061>,  <34.103004, 31.594524, 37.556324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848705, 30.938784, 37.514061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618198, 31.175020, 37.288097>,  <33.479893, 31.316761, 37.152519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618198, 31.175020, 37.288097>,  <33.848705, 30.938784, 37.514061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618198, 31.175020, 37.288097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085496, -0.643860, -0.760351,
		-0.812775, -0.486465, 0.320544,
		-0.576270, 0.590589, -0.564905,
		33.445316, 31.352198, 37.118626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590828, 30.839399, 37.543343>,  <33.848705, 30.938784, 37.514061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590828, 30.839399, 37.543343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639698, 30.472229, 37.694332>,  <34.669022, 30.251926, 37.784927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639698, 30.472229, 37.694332>,  <34.590828, 30.839399, 37.543343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639698, 30.472229, 37.694332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249855, 0.339628, 0.906767,
		-0.960544, -0.205099, -0.187854,
		0.122176, -0.917926, 0.377472,
		34.676350, 30.196852, 37.807575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430725, 30.952864, 38.264065>,  <34.590828, 30.839399, 37.543343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430725, 30.952864, 38.264065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538754, 30.568367, 38.241871>,  <34.603569, 30.337669, 38.228554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538754, 30.568367, 38.241871>,  <34.430725, 30.952864, 38.264065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538754, 30.568367, 38.241871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039015, -0.046652, 0.998149,
		-0.962051, -0.271732, 0.024904,
		0.270067, -0.961242, -0.055483,
		34.619774, 30.279995, 38.225227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966702, 30.500330, 38.540627>,  <34.430725, 30.952864, 38.264065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966702, 30.500330, 38.540627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350845, 30.394945, 38.577057>,  <34.581333, 30.331715, 38.598915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350845, 30.394945, 38.577057>,  <33.966702, 30.500330, 38.540627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350845, 30.394945, 38.577057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021895, 0.254410, 0.966848,
		-0.277900, -0.930517, 0.238556,
		0.960360, -0.263464, 0.091074,
		34.638954, 30.315907, 38.604378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096367, 30.032381, 39.147842>,  <33.966702, 30.500330, 38.540627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096367, 30.032381, 39.147842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445992, 30.217560, 39.088917>,  <34.655766, 30.328667, 39.053562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445992, 30.217560, 39.088917>,  <34.096367, 30.032381, 39.147842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445992, 30.217560, 39.088917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067188, 0.185128, 0.980415,
		0.481154, -0.866837, 0.130708,
		0.874058, 0.462948, -0.147316,
		34.708210, 30.356443, 39.044724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698181, 29.716148, 39.501312>,  <34.096367, 30.032381, 39.147842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698181, 29.716148, 39.501312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818840, 30.094412, 39.452747>,  <34.891235, 30.321369, 39.423607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818840, 30.094412, 39.452747>,  <34.698181, 29.716148, 39.501312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818840, 30.094412, 39.452747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209791, 0.058391, 0.976001,
		0.930053, -0.319876, -0.180778,
		0.301643, 0.945659, -0.121414,
		34.909332, 30.378109, 39.416325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248257, 29.883526, 39.978806>,  <34.698181, 29.716148, 39.501312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248257, 29.883526, 39.978806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098099, 30.240971, 39.880386>,  <35.008003, 30.455437, 39.821335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098099, 30.240971, 39.880386>,  <35.248257, 29.883526, 39.978806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098099, 30.240971, 39.880386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088845, 0.229545, 0.969235,
		0.922597, 0.385705, -0.006777,
		-0.375394, 0.893611, -0.246046,
		34.985481, 30.509054, 39.806572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715336, 30.467224, 40.309113>,  <35.248257, 29.883526, 39.978806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715336, 30.467224, 40.309113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379105, 30.669207, 40.230675>,  <35.177368, 30.790396, 40.183613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379105, 30.669207, 40.230675>,  <35.715336, 30.467224, 40.309113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379105, 30.669207, 40.230675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001072, 0.363558, 0.931571,
		0.541694, 0.782845, -0.306140,
		-0.840575, 0.504955, -0.196098,
		35.126930, 30.820692, 40.171844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788448, 31.140329, 40.611332>,  <35.715336, 30.467224, 40.309113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788448, 31.140329, 40.611332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403175, 31.038651, 40.576321>,  <35.172012, 30.977644, 40.555313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403175, 31.038651, 40.576321>,  <35.788448, 31.140329, 40.611332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403175, 31.038651, 40.576321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112222, 0.084292, 0.990102,
		-0.244302, 0.963473, -0.109715,
		-0.963184, -0.254196, -0.087530,
		35.114220, 30.962391, 40.550060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456413, 31.563625, 41.044399>,  <35.788448, 31.140329, 40.611332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456413, 31.563625, 41.044399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148975, 31.325424, 40.950901>,  <34.964512, 31.182503, 40.894802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148975, 31.325424, 40.950901>,  <35.456413, 31.563625, 41.044399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148975, 31.325424, 40.950901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338600, 0.068673, 0.938421,
		-0.542781, 0.800412, -0.254420,
		-0.768595, -0.595504, -0.233745,
		34.918396, 31.146772, 40.880779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824917, 31.925245, 41.183537>,  <35.456413, 31.563625, 41.044399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824917, 31.925245, 41.183537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757992, 31.532114, 41.214672>,  <34.717838, 31.296236, 41.233353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757992, 31.532114, 41.214672>,  <34.824917, 31.925245, 41.183537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757992, 31.532114, 41.214672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491168, 0.151546, 0.857781,
		-0.854845, 0.105289, -0.508088,
		-0.167313, -0.982827, 0.077834,
		34.707798, 31.237267, 41.238022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140087, 31.868132, 41.429317>,  <34.824917, 31.925245, 41.183537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140087, 31.868132, 41.429317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304440, 31.512373, 41.509468>,  <34.403049, 31.298918, 41.557556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304440, 31.512373, 41.509468>,  <34.140087, 31.868132, 41.429317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304440, 31.512373, 41.509468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356756, 0.045406, 0.933093,
		-0.838988, -0.454875, -0.298642,
		0.410881, -0.889397, 0.200375,
		34.427704, 31.245554, 41.569580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720337, 31.529634, 41.897358>,  <34.140087, 31.868132, 41.429317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720337, 31.529634, 41.897358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056667, 31.318785, 41.946587>,  <34.258465, 31.192274, 41.976124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056667, 31.318785, 41.946587>,  <33.720337, 31.529634, 41.897358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056667, 31.318785, 41.946587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216575, -0.119229, 0.968958,
		-0.496088, -0.841382, -0.214413,
		0.840828, -0.527125, 0.123075,
		34.308914, 31.160648, 41.983509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605873, 30.918901, 42.316078>,  <33.720337, 31.529634, 41.897358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605873, 30.918901, 42.316078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986687, 31.031982, 42.362926>,  <34.215176, 31.099831, 42.391037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986687, 31.031982, 42.362926>,  <33.605873, 30.918901, 42.316078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986687, 31.031982, 42.362926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117153, -0.016867, 0.992971,
		0.282690, -0.959059, 0.017061,
		0.952030, 0.282702, 0.117125,
		34.272297, 31.116793, 42.398064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834694, 30.654566, 42.993111>,  <33.605873, 30.918901, 42.316078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834694, 30.654566, 42.993111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138783, 30.906607, 42.929825>,  <34.321236, 31.057831, 42.891853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138783, 30.906607, 42.929825>,  <33.834694, 30.654566, 42.993111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138783, 30.906607, 42.929825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047051, 0.189492, 0.980754,
		0.647958, -0.753035, 0.114409,
		0.760222, 0.630104, -0.158214,
		34.366848, 31.095638, 42.882362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339424, 30.567896, 43.659019>,  <33.834694, 30.654566, 42.993111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339424, 30.567896, 43.659019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404949, 30.916483, 43.474102>,  <34.444263, 31.125635, 43.363152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404949, 30.916483, 43.474102>,  <34.339424, 30.567896, 43.659019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404949, 30.916483, 43.474102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090617, 0.479931, 0.872614,
		0.982322, -0.101050, 0.157586,
		0.163808, 0.871467, -0.462290,
		34.454090, 31.177923, 43.335415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980431, 30.820614, 43.966827>,  <34.339424, 30.567896, 43.659019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980431, 30.820614, 43.966827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778217, 31.133579, 43.821354>,  <34.656891, 31.321358, 43.734070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778217, 31.133579, 43.821354>,  <34.980431, 30.820614, 43.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778217, 31.133579, 43.821354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006360, 0.418123, 0.908368,
		0.862783, 0.461524, -0.206399,
		-0.505534, 0.782412, -0.363685,
		34.626556, 31.368303, 43.712250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222176, 31.459929, 44.353180>,  <34.980431, 30.820614, 43.966827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222176, 31.459929, 44.353180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879379, 31.578745, 44.184738>,  <34.673702, 31.650034, 44.083672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879379, 31.578745, 44.184738>,  <35.222176, 31.459929, 44.353180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879379, 31.578745, 44.184738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194165, 0.570817, 0.797790,
		0.477349, 0.765465, -0.431511,
		-0.856994, 0.297040, -0.421105,
		34.622280, 31.667856, 44.058407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127926, 32.075775, 44.660389>,  <35.222176, 31.459929, 44.353180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127926, 32.075775, 44.660389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759346, 32.051231, 44.506939>,  <34.538197, 32.036507, 44.414871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759346, 32.051231, 44.506939>,  <35.127926, 32.075775, 44.660389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759346, 32.051231, 44.506939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370916, 0.432633, 0.821736,
		0.115546, 0.899480, -0.421409,
		-0.921450, -0.061359, -0.383620,
		34.482910, 32.032825, 44.391853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902283, 32.706589, 44.652897>,  <35.127926, 32.075775, 44.660389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902283, 32.706589, 44.652897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574615, 32.477516, 44.640285>,  <34.378014, 32.340073, 44.632717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574615, 32.477516, 44.640285>,  <34.902283, 32.706589, 44.652897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574615, 32.477516, 44.640285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402897, 0.535443, 0.742278,
		-0.408209, 0.620753, -0.669351,
		-0.819170, -0.572684, -0.031527,
		34.328865, 32.305710, 44.630829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294765, 33.087467, 44.615303>,  <34.902283, 32.706589, 44.652897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294765, 33.087467, 44.615303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126778, 32.747463, 44.742496>,  <34.025986, 32.543461, 44.818813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126778, 32.747463, 44.742496>,  <34.294765, 33.087467, 44.615303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126778, 32.747463, 44.742496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591289, 0.522078, 0.614664,
		-0.688481, 0.070120, -0.721856,
		-0.419966, -0.850010, 0.317980,
		34.000790, 32.492458, 44.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514439, 33.186623, 44.500065>,  <34.294765, 33.087467, 44.615303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514439, 33.186623, 44.500065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575352, 32.906322, 44.778851>,  <33.611900, 32.738140, 44.946121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575352, 32.906322, 44.778851>,  <33.514439, 33.186623, 44.500065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575352, 32.906322, 44.778851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631440, 0.473516, 0.614057,
		-0.760325, -0.533599, -0.370376,
		0.152281, -0.700753, 0.696961,
		33.621037, 32.696098, 44.987938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759659, 32.953144, 44.776356>,  <33.514439, 33.186623, 44.500065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759659, 32.953144, 44.776356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030907, 32.865318, 45.056911>,  <33.193657, 32.812622, 45.225243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030907, 32.865318, 45.056911>,  <32.759659, 32.953144, 44.776356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030907, 32.865318, 45.056911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548257, 0.484432, 0.681718,
		-0.489453, -0.846829, 0.208129,
		0.678122, -0.219560, 0.701387,
		33.234344, 32.799450, 45.267326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366287, 32.861507, 45.367836>,  <32.759659, 32.953144, 44.776356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366287, 32.861507, 45.367836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724724, 32.890667, 45.542969>,  <32.939785, 32.908165, 45.648048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724724, 32.890667, 45.542969>,  <32.366287, 32.861507, 45.367836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724724, 32.890667, 45.542969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433120, 0.359303, 0.826624,
		-0.097052, -0.930369, 0.353546,
		0.896096, 0.072902, 0.437833,
		32.993553, 32.912537, 45.674320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192459, 32.739483, 46.050934>,  <32.366287, 32.861507, 45.367836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192459, 32.739483, 46.050934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548382, 32.921745, 46.060837>,  <32.761936, 33.031101, 46.066780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548382, 32.921745, 46.060837>,  <32.192459, 32.739483, 46.050934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548382, 32.921745, 46.060837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352288, 0.651443, 0.671948,
		0.290050, -0.606629, 0.740184,
		0.889811, 0.455657, 0.024757,
		32.815327, 33.058441, 46.068264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491474, 32.911015, 46.776878>,  <32.192459, 32.739483, 46.050934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491474, 32.911015, 46.776878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707706, 33.163975, 46.554943>,  <32.837444, 33.315750, 46.421783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707706, 33.163975, 46.554943>,  <32.491474, 32.911015, 46.776878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707706, 33.163975, 46.554943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202549, 0.737937, 0.643757,
		0.816547, -0.235619, 0.527005,
		0.540578, 0.632402, -0.554835,
		32.869881, 33.353695, 46.388493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885231, 33.224281, 47.253139>,  <32.491474, 32.911015, 46.776878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885231, 33.224281, 47.253139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882000, 33.479118, 46.944839>,  <32.880062, 33.632019, 46.759861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882000, 33.479118, 46.944839>,  <32.885231, 33.224281, 47.253139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882000, 33.479118, 46.944839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105198, 0.765956, 0.634229,
		0.994419, 0.086202, 0.060836,
		-0.008074, 0.637088, -0.770749,
		32.879578, 33.670246, 46.713615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237114, 33.775768, 47.501183>,  <32.885231, 33.224281, 47.253139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237114, 33.775768, 47.501183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056374, 33.926414, 47.177704>,  <32.947929, 34.016804, 46.983616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056374, 33.926414, 47.177704>,  <33.237114, 33.775768, 47.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056374, 33.926414, 47.177704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140983, 0.864975, 0.481603,
		0.880883, 0.331625, -0.337743,
		-0.451851, 0.376620, -0.808695,
		32.920818, 34.039402, 46.935097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528210, 34.452183, 47.276226>,  <33.237114, 33.775768, 47.501183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528210, 34.452183, 47.276226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175041, 34.471569, 47.089420>,  <32.963139, 34.483200, 46.977337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175041, 34.471569, 47.089420>,  <33.528210, 34.452183, 47.276226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175041, 34.471569, 47.089420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094757, 0.955799, 0.278334,
		0.459860, 0.290000, -0.839302,
		-0.882921, 0.048465, -0.467014,
		32.910164, 34.486107, 46.949318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485043, 35.092751, 46.879761>,  <33.528210, 34.452183, 47.276226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485043, 35.092751, 46.879761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117878, 34.970612, 46.981110>,  <32.897579, 34.897327, 47.041920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117878, 34.970612, 46.981110>,  <33.485043, 35.092751, 46.879761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117878, 34.970612, 46.981110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159752, 0.868931, 0.468443,
		-0.363199, 0.389514, -0.846384,
		-0.917914, -0.305350, 0.253369,
		32.842503, 34.879005, 47.057121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865540, 35.724644, 46.734745>,  <33.485043, 35.092751, 46.879761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865540, 35.724644, 46.734745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217819, 35.876171, 46.848495>,  <34.429188, 35.967087, 46.916744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217819, 35.876171, 46.848495>,  <33.865540, 35.724644, 46.734745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217819, 35.876171, 46.848495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396107, -0.259755, -0.880697,
		-0.259755, 0.888271, -0.378817,
		0.880697, 0.378817, 0.284377,
		34.482029, 35.989815, 46.933807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178772, 36.129944, 46.154488>,  <33.865540, 35.724644, 46.734745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178772, 36.129944, 46.154488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500523, 36.039013, 46.374050>,  <34.693573, 35.984455, 46.505787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500523, 36.039013, 46.374050>,  <34.178772, 36.129944, 46.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500523, 36.039013, 46.374050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477806, -0.301578, -0.825077,
		0.353101, 0.925945, -0.133964,
		0.804376, -0.227326, 0.548909,
		34.741837, 35.970814, 46.538723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675926, 36.463013, 45.829193>,  <34.178772, 36.129944, 46.154488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675926, 36.463013, 45.829193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875519, 36.180920, 46.030655>,  <34.995274, 36.011665, 46.151531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875519, 36.180920, 46.030655>,  <34.675926, 36.463013, 45.829193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875519, 36.180920, 46.030655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662756, -0.063908, -0.746103,
		0.558361, 0.706093, 0.435505,
		0.498986, -0.705229, 0.503652,
		35.025215, 35.969353, 46.181751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329617, 36.530834, 45.594700>,  <34.675926, 36.463013, 45.829193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329617, 36.530834, 45.594700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314621, 36.167320, 45.760929>,  <35.305622, 35.949211, 45.860668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314621, 36.167320, 45.760929>,  <35.329617, 36.530834, 45.594700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314621, 36.167320, 45.760929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751928, -0.299563, -0.587253,
		0.658179, 0.290468, 0.694571,
		-0.037490, -0.908785, 0.415577,
		35.303375, 35.894684, 45.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987122, 36.232796, 45.554577>,  <35.329617, 36.530834, 45.594700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987122, 36.232796, 45.554577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784737, 35.894836, 45.624027>,  <35.663303, 35.692062, 45.665699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784737, 35.894836, 45.624027>,  <35.987122, 36.232796, 45.554577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784737, 35.894836, 45.624027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665244, -0.510369, -0.544953,
		0.549045, -0.160221, 0.820292,
		-0.505964, -0.844898, 0.173630,
		35.632946, 35.641365, 45.676117>
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
