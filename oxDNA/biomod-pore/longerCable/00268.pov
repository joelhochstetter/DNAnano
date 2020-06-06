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
	<24.385202, 35.316319, 34.774979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509092, 35.076778, 35.070396>,  <24.583427, 34.933052, 35.247646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509092, 35.076778, 35.070396>,  <24.385202, 35.316319, 34.774979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509092, 35.076778, 35.070396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476658, 0.769878, 0.424365,
		-0.822719, 0.220595, 0.523900,
		0.309726, -0.598854, 0.738542,
		24.602011, 34.897121, 35.291958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270327, 35.680523, 35.355038>,  <24.385202, 35.316319, 34.774979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270327, 35.680523, 35.355038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545811, 35.407085, 35.451683>,  <24.711102, 35.243023, 35.509670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545811, 35.407085, 35.451683>,  <24.270327, 35.680523, 35.355038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545811, 35.407085, 35.451683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542762, 0.707046, 0.453315,
		-0.480715, -0.181065, 0.857979,
		0.688711, -0.683594, 0.241612,
		24.752424, 35.202007, 35.524166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.444796, 35.703129, 36.171028>,  <24.270327, 35.680523, 35.355038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.444796, 35.703129, 36.171028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734640, 35.581722, 35.923542>,  <24.908546, 35.508877, 35.775051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734640, 35.581722, 35.923542>,  <24.444796, 35.703129, 36.171028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734640, 35.581722, 35.923542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633924, 0.645725, 0.425652,
		0.270328, -0.700653, 0.660309,
		0.724613, -0.303520, -0.618718,
		24.952024, 35.490665, 35.737926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052013, 35.691822, 36.587662>,  <24.444796, 35.703129, 36.171028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052013, 35.691822, 36.587662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208683, 35.693390, 36.219624>,  <25.302685, 35.694328, 35.998802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208683, 35.693390, 36.219624>,  <25.052013, 35.691822, 36.587662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208683, 35.693390, 36.219624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711247, 0.633103, 0.305464,
		0.583711, -0.774058, 0.245186,
		0.391675, 0.003915, -0.920096,
		25.326185, 35.694565, 35.943596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769323, 35.518295, 36.672581>,  <25.052013, 35.691822, 36.587662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769323, 35.518295, 36.672581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726248, 35.728054, 36.334724>,  <25.700401, 35.853909, 36.132011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726248, 35.728054, 36.334724>,  <25.769323, 35.518295, 36.672581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726248, 35.728054, 36.334724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751363, 0.599276, 0.276265,
		0.651043, -0.604878, -0.458547,
		-0.107690, 0.524396, -0.844637,
		25.693941, 35.885372, 36.081333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394314, 35.637875, 36.412899>,  <25.769323, 35.518295, 36.672581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394314, 35.637875, 36.412899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172993, 35.930168, 36.252956>,  <26.040199, 36.105545, 36.156990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172993, 35.930168, 36.252956>,  <26.394314, 35.637875, 36.412899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172993, 35.930168, 36.252956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720496, 0.660739, 0.210497,
		0.418020, -0.171630, -0.892078,
		-0.553303, 0.730730, -0.399861,
		26.007002, 36.149387, 36.132999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852358, 35.972439, 35.876846>,  <26.394314, 35.637875, 36.412899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852358, 35.972439, 35.876846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569824, 36.219521, 36.015137>,  <26.400303, 36.367771, 36.098110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569824, 36.219521, 36.015137>,  <26.852358, 35.972439, 35.876846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569824, 36.219521, 36.015137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706679, 0.643712, 0.293665,
		-0.041148, 0.451742, -0.891199,
		-0.706336, 0.617709, 0.345724,
		26.357924, 36.404835, 36.118855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903519, 36.509140, 35.585438>,  <26.852358, 35.972439, 35.876846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903519, 36.509140, 35.585438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772636, 36.625023, 35.945217>,  <26.694107, 36.694553, 36.161083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772636, 36.625023, 35.945217>,  <26.903519, 36.509140, 35.585438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772636, 36.625023, 35.945217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656721, 0.754123, -0.003996,
		-0.679450, 0.589377, -0.437015,
		-0.327208, 0.289712, 0.899446,
		26.674475, 36.711937, 36.215050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717524, 37.213459, 35.517372>,  <26.903519, 36.509140, 35.585438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717524, 37.213459, 35.517372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789303, 37.152267, 35.906094>,  <26.832371, 37.115551, 36.139324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789303, 37.152267, 35.906094>,  <26.717524, 37.213459, 35.517372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789303, 37.152267, 35.906094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781120, 0.622668, -0.046217,
		-0.598038, 0.767386, 0.231232,
		0.179447, -0.152981, 0.971800,
		26.843138, 37.106373, 36.197632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768200, 37.894550, 35.872910>,  <26.717524, 37.213459, 35.517372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768200, 37.894550, 35.872910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950006, 37.633419, 36.115311>,  <27.059090, 37.476742, 36.260750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950006, 37.633419, 36.115311>,  <26.768200, 37.894550, 35.872910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950006, 37.633419, 36.115311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789853, 0.609885, 0.064603,
		-0.411764, 0.449287, 0.792838,
		0.454515, -0.652826, 0.605999,
		27.086361, 37.437572, 36.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044422, 38.301136, 36.476200>,  <26.768200, 37.894550, 35.872910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044422, 38.301136, 36.476200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244366, 37.954700, 36.478542>,  <27.364332, 37.746838, 36.479946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244366, 37.954700, 36.478542>,  <27.044422, 38.301136, 36.476200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244366, 37.954700, 36.478542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865506, 0.499750, 0.033919,
		-0.032302, -0.011889, 0.999407,
		0.499857, -0.866088, 0.005852,
		27.394323, 37.694874, 36.480297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559313, 38.320984, 37.031040>,  <27.044422, 38.301136, 36.476200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559313, 38.320984, 37.031040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643993, 38.123432, 36.693695>,  <27.694801, 38.004902, 36.491287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643993, 38.123432, 36.693695>,  <27.559313, 38.320984, 37.031040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643993, 38.123432, 36.693695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866638, 0.493772, -0.071608,
		0.451797, -0.715734, 0.532545,
		0.211703, -0.493876, -0.843367,
		27.707504, 37.975269, 36.440685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987152, 37.864429, 37.359661>,  <27.559313, 38.320984, 37.031040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987152, 37.864429, 37.359661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906778, 38.187622, 37.581219>,  <27.858555, 38.381538, 37.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906778, 38.187622, 37.581219>,  <27.987152, 37.864429, 37.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906778, 38.187622, 37.581219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405564, 0.446077, -0.797830,
		-0.891708, -0.384950, 0.238054,
		-0.200934, 0.807978, 0.553892,
		27.846498, 38.430016, 37.747387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702696, 37.879051, 37.465096>,  <27.987152, 37.864429, 37.359661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702696, 37.879051, 37.465096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968935, 37.769810, 37.187275>,  <29.128679, 37.704266, 37.020584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968935, 37.769810, 37.187275>,  <28.702696, 37.879051, 37.465096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968935, 37.769810, 37.187275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525246, -0.832553, -0.175990,
		-0.530185, 0.481947, -0.697590,
		0.665598, -0.273100, -0.694547,
		29.168615, 37.687881, 36.978912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486816, 37.789669, 36.786572>,  <28.702696, 37.879051, 37.465096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486816, 37.789669, 36.786572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786591, 37.533970, 36.855522>,  <28.966455, 37.380550, 36.896893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786591, 37.533970, 36.855522>,  <28.486816, 37.789669, 36.786572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786591, 37.533970, 36.855522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599230, -0.765620, -0.233985,
		0.281552, 0.072061, -0.956836,
		0.749434, -0.639245, 0.172381,
		29.011421, 37.342197, 36.907238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274820, 37.246433, 36.464783>,  <28.486816, 37.789669, 36.786572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274820, 37.246433, 36.464783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588503, 37.092140, 36.659199>,  <28.776712, 36.999565, 36.775848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588503, 37.092140, 36.659199>,  <28.274820, 37.246433, 36.464783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588503, 37.092140, 36.659199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370275, -0.919455, -0.132282,
		0.497914, -0.076232, -0.863869,
		0.784205, -0.385734, 0.486037,
		28.823765, 36.976421, 36.805008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091831, 36.531574, 36.456913>,  <28.274820, 37.246433, 36.464783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091831, 36.531574, 36.456913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888670, 36.875977, 36.467537>,  <27.766773, 37.082619, 36.473911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888670, 36.875977, 36.467537>,  <28.091831, 36.531574, 36.456913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888670, 36.875977, 36.467537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861294, -0.508106, 0.001149,
		0.014486, -0.022294, 0.999647,
		-0.507901, 0.861006, 0.026561,
		27.736300, 37.134277, 36.475506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586651, 36.506489, 37.027321>,  <28.091831, 36.531574, 36.456913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586651, 36.506489, 37.027321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455742, 36.767548, 36.753990>,  <27.377197, 36.924183, 36.589993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455742, 36.767548, 36.753990>,  <27.586651, 36.506489, 37.027321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455742, 36.767548, 36.753990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919538, -0.386486, 0.071265,
		-0.217586, 0.651671, 0.726623,
		-0.327271, 0.652651, -0.683331,
		27.357561, 36.963345, 36.548992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120567, 36.900570, 37.410236>,  <27.586651, 36.506489, 37.027321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120567, 36.900570, 37.410236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035885, 36.951702, 37.022663>,  <26.985075, 36.982384, 36.790119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035885, 36.951702, 37.022663>,  <27.120567, 36.900570, 37.410236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035885, 36.951702, 37.022663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933145, -0.321177, 0.161512,
		-0.290554, 0.938352, 0.187281,
		-0.211706, 0.127833, -0.968937,
		26.972374, 36.990051, 36.731983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359240, 37.184006, 37.344002>,  <27.120567, 36.900570, 37.410236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359240, 37.184006, 37.344002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468115, 37.028847, 36.991764>,  <26.533440, 36.935753, 36.780422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468115, 37.028847, 36.991764>,  <26.359240, 37.184006, 37.344002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468115, 37.028847, 36.991764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940874, -0.299086, -0.159072,
		-0.201670, 0.871827, -0.446371,
		0.272186, -0.387899, -0.880596,
		26.549770, 36.912476, 36.727585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719154, 36.945789, 37.118282>,  <26.359240, 37.184006, 37.344002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719154, 36.945789, 37.118282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986223, 36.901413, 36.823826>,  <26.146465, 36.874786, 36.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986223, 36.901413, 36.823826>,  <25.719154, 36.945789, 37.118282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986223, 36.901413, 36.823826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701803, -0.423694, -0.572674,
		-0.248363, 0.898985, -0.360751,
		0.667674, -0.110945, -0.736141,
		26.186525, 36.868130, 36.602985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451517, 37.292839, 36.505291>,  <25.719154, 36.945789, 37.118282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451517, 37.292839, 36.505291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710850, 37.005138, 36.405422>,  <25.866449, 36.832516, 36.345501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710850, 37.005138, 36.405422>,  <25.451517, 37.292839, 36.505291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710850, 37.005138, 36.405422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682623, -0.403911, -0.609001,
		0.337181, 0.565268, -0.752849,
		0.648333, -0.719255, -0.249674,
		25.905350, 36.789360, 36.330521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167784, 37.177097, 35.890587>,  <25.451517, 37.292839, 36.505291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167784, 37.177097, 35.890587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433676, 36.887875, 35.965775>,  <25.593210, 36.714340, 36.010887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433676, 36.887875, 35.965775>,  <25.167784, 37.177097, 35.890587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433676, 36.887875, 35.965775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474424, -0.602903, -0.641427,
		0.577112, 0.337198, -0.743801,
		0.664728, -0.723052, 0.187968,
		25.633095, 36.670959, 36.022163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264893, 36.829556, 35.328342>,  <25.167784, 37.177097, 35.890587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264893, 36.829556, 35.328342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570761, 36.658947, 35.521572>,  <25.754282, 36.556583, 35.637508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570761, 36.658947, 35.521572>,  <25.264893, 36.829556, 35.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570761, 36.658947, 35.521572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351062, -0.904336, -0.242760,
		0.540401, 0.016044, -0.841255,
		0.764671, -0.426520, 0.483072,
		25.800161, 36.530991, 35.666492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690645, 36.446369, 34.859051>,  <25.264893, 36.829556, 35.328342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690645, 36.446369, 34.859051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672808, 36.289986, 35.226780>,  <25.662106, 36.196156, 35.447418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672808, 36.289986, 35.226780>,  <25.690645, 36.446369, 34.859051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672808, 36.289986, 35.226780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569348, -0.746219, -0.344964,
		0.820886, -0.538800, -0.189317,
		-0.044594, -0.390963, 0.919326,
		25.659430, 36.172695, 35.502579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951973, 35.785877, 34.796219>,  <25.690645, 36.446369, 34.859051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951973, 35.785877, 34.796219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752634, 35.769825, 35.142639>,  <25.633030, 35.760193, 35.350491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752634, 35.769825, 35.142639>,  <25.951973, 35.785877, 34.796219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752634, 35.769825, 35.142639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439288, -0.849515, -0.292146,
		0.747445, -0.526035, 0.405724,
		-0.498348, -0.040133, 0.866047,
		25.603130, 35.757786, 35.402454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923960, 35.095623, 34.975739>,  <25.951973, 35.785877, 34.796219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923960, 35.095623, 34.975739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617546, 35.225128, 35.197865>,  <25.433699, 35.302830, 35.331139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617546, 35.225128, 35.197865>,  <25.923960, 35.095623, 34.975739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617546, 35.225128, 35.197865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534607, -0.800568, -0.270715,
		0.356916, -0.504250, 0.786348,
		-0.766033, 0.323764, 0.555311,
		25.387735, 35.322258, 35.364456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861094, 34.708145, 35.718864>,  <25.923960, 35.095623, 34.975739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861094, 34.708145, 35.718864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507795, 34.777977, 35.544788>,  <25.295816, 34.819878, 35.440342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507795, 34.777977, 35.544788>,  <25.861094, 34.708145, 35.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507795, 34.777977, 35.544788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167813, -0.984323, -0.054291,
		-0.437851, 0.025079, 0.898698,
		-0.883247, 0.174584, -0.435195,
		25.242821, 34.830353, 35.414230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235422, 34.474480, 36.109856>,  <25.861094, 34.708145, 35.718864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235422, 34.474480, 36.109856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174158, 34.450905, 35.715279>,  <25.137400, 34.436760, 35.478531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174158, 34.450905, 35.715279>,  <25.235422, 34.474480, 36.109856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174158, 34.450905, 35.715279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344814, -0.932293, 0.109241,
		-0.926091, 0.356871, 0.122468,
		-0.153161, -0.058938, -0.986442,
		25.128210, 34.433224, 35.419346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588970, 34.272125, 36.014938>,  <25.235422, 34.474480, 36.109856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588970, 34.272125, 36.014938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851093, 34.134785, 35.745811>,  <25.008368, 34.052380, 35.584335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851093, 34.134785, 35.745811>,  <24.588970, 34.272125, 36.014938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.851093, 34.134785, 35.745811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325105, -0.932202, 0.159081,
		-0.681822, 0.114489, -0.722504,
		0.655306, -0.343354, -0.672816,
		25.047686, 34.031780, 35.543968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207834, 33.882557, 35.547443>,  <24.588970, 34.272125, 36.014938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207834, 33.882557, 35.547443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582453, 33.748947, 35.504906>,  <24.807224, 33.668781, 35.479382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582453, 33.748947, 35.504906>,  <24.207834, 33.882557, 35.547443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582453, 33.748947, 35.504906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335157, -0.942131, 0.007608,
		-0.102733, 0.028517, -0.994300,
		0.936544, -0.334028, -0.106346,
		24.863417, 33.648739, 35.473003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357216, 33.308823, 35.073174>,  <24.207834, 33.882557, 35.547443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357216, 33.308823, 35.073174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629431, 33.269169, 35.363564>,  <24.792759, 33.245377, 35.537800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629431, 33.269169, 35.363564>,  <24.357216, 33.308823, 35.073174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629431, 33.269169, 35.363564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162679, -0.986519, 0.017786,
		0.714427, -0.130205, -0.687489,
		0.680536, -0.099133, 0.725977,
		24.833591, 33.239429, 35.581356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810249, 32.804028, 34.885494>,  <24.357216, 33.308823, 35.073174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810249, 32.804028, 34.885494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805611, 32.845913, 35.283268>,  <24.802828, 32.871044, 35.521931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805611, 32.845913, 35.283268>,  <24.810249, 32.804028, 34.885494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805611, 32.845913, 35.283268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047003, -0.993459, 0.104066,
		0.998827, -0.045535, 0.016441,
		-0.011595, 0.104716, 0.994435,
		24.802132, 32.877327, 35.581600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210802, 32.218002, 35.047142>,  <24.810249, 32.804028, 34.885494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210802, 32.218002, 35.047142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017344, 32.324459, 35.380669>,  <24.901268, 32.388332, 35.580784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017344, 32.324459, 35.380669>,  <25.210802, 32.218002, 35.047142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017344, 32.324459, 35.380669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286632, -0.948278, 0.136419,
		0.827000, -0.173021, 0.534916,
		-0.483646, 0.266143, 0.833820,
		24.872250, 32.404301, 35.630814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680296, 32.789177, 35.117928>,  <25.210802, 32.218002, 35.047142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680296, 32.789177, 35.117928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478371, 32.837585, 35.459808>,  <25.357216, 32.866631, 35.664936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478371, 32.837585, 35.459808>,  <25.680296, 32.789177, 35.117928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478371, 32.837585, 35.459808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081444, -0.992385, 0.092410,
		0.859379, -0.022961, 0.510824,
		-0.504812, 0.121019, 0.854704,
		25.326927, 32.873890, 35.716221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849764, 32.273792, 35.457649>,  <25.680296, 32.789177, 35.117928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849764, 32.273792, 35.457649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519169, 32.383591, 35.654247>,  <25.320812, 32.449471, 35.772205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519169, 32.383591, 35.654247>,  <25.849764, 32.273792, 35.457649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519169, 32.383591, 35.654247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138021, -0.945222, 0.295811,
		0.545772, 0.176648, 0.819102,
		-0.826488, 0.274499, 0.491495,
		25.271223, 32.465939, 35.801697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808777, 31.818405, 35.953667>,  <25.849764, 32.273792, 35.457649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808777, 31.818405, 35.953667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431057, 31.943705, 35.994011>,  <25.204426, 32.018883, 36.018219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431057, 31.943705, 35.994011>,  <25.808777, 31.818405, 35.953667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431057, 31.943705, 35.994011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268146, -0.910083, 0.315986,
		0.190773, 0.271340, 0.943388,
		-0.944300, 0.313248, 0.100860,
		25.147766, 32.037678, 36.024269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673138, 31.579241, 36.570370>,  <25.808777, 31.818405, 35.953667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673138, 31.579241, 36.570370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311283, 31.656527, 36.418423>,  <25.094170, 31.702898, 36.327255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311283, 31.656527, 36.418423>,  <25.673138, 31.579241, 36.570370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311283, 31.656527, 36.418423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298477, -0.923461, 0.241105,
		-0.304210, 0.331495, 0.893066,
		-0.904637, 0.193214, -0.379869,
		25.039892, 31.714491, 36.304462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245468, 31.401291, 37.067257>,  <25.673138, 31.579241, 36.570370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245468, 31.401291, 37.067257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063778, 31.386913, 36.711193>,  <24.954763, 31.378286, 36.497555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063778, 31.386913, 36.711193>,  <25.245468, 31.401291, 37.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063778, 31.386913, 36.711193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172488, -0.976730, 0.127458,
		-0.874029, 0.211437, 0.437457,
		-0.454226, -0.035946, -0.890161,
		24.927509, 31.376129, 36.444145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687546, 30.832426, 37.099052>,  <25.245468, 31.401291, 37.067257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687546, 30.832426, 37.099052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784492, 30.910311, 36.718876>,  <24.842661, 30.957043, 36.490768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784492, 30.910311, 36.718876>,  <24.687546, 30.832426, 37.099052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784492, 30.910311, 36.718876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038465, -0.980811, -0.191126,
		-0.969422, 0.009764, -0.245207,
		0.242368, 0.194714, -0.950444,
		24.857203, 30.968725, 36.433743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644688, 30.247660, 36.552010>,  <24.687546, 30.832426, 37.099052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644688, 30.247660, 36.552010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351980, 30.035784, 36.723564>,  <24.176355, 29.908659, 36.826496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351980, 30.035784, 36.723564>,  <24.644688, 30.247660, 36.552010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351980, 30.035784, 36.723564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670669, -0.671651, 0.314784,
		0.121325, 0.517991, 0.846738,
		-0.731768, -0.529690, 0.428888,
		24.132450, 29.876877, 36.852230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878607, 30.381203, 35.851669>,  <24.644688, 30.247660, 36.552010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878607, 30.381203, 35.851669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542809, 30.542835, 35.996979>,  <24.341330, 30.639814, 36.084164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542809, 30.542835, 35.996979>,  <24.878607, 30.381203, 35.851669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542809, 30.542835, 35.996979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419734, 0.906821, -0.038715,
		-0.345070, 0.119978, -0.930877,
		-0.839494, 0.404080, 0.363276,
		24.290960, 30.664059, 36.105961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645308, 30.909090, 35.408489>,  <24.878607, 30.381203, 35.851669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645308, 30.909090, 35.408489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538687, 30.975103, 35.788322>,  <24.474714, 31.014711, 36.016224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538687, 30.975103, 35.788322>,  <24.645308, 30.909090, 35.408489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538687, 30.975103, 35.788322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264881, 0.959838, -0.092463,
		-0.926709, 0.226881, -0.299560,
		-0.266551, 0.165034, 0.949587,
		24.458721, 31.024614, 36.073200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213375, 31.492605, 35.322784>,  <24.645308, 30.909090, 35.408489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213375, 31.492605, 35.322784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362949, 31.441568, 35.690239>,  <24.452694, 31.410946, 35.910713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362949, 31.441568, 35.690239>,  <24.213375, 31.492605, 35.322784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362949, 31.441568, 35.690239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131899, 0.987740, 0.083502,
		-0.918027, 0.089942, 0.386182,
		0.373937, -0.127594, 0.918635,
		24.475130, 31.403290, 35.965828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.799227, 31.844580, 35.909115>,  <24.213375, 31.492605, 35.322784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.799227, 31.844580, 35.909115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176983, 31.810722, 36.036217>,  <24.403637, 31.790407, 36.112476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176983, 31.810722, 36.036217>,  <23.799227, 31.844580, 35.909115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.176983, 31.810722, 36.036217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065951, 0.995423, 0.069156,
		-0.322150, -0.044354, 0.945649,
		0.944389, -0.084645, 0.317751,
		24.460299, 31.785328, 36.131542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902609, 32.501678, 36.284519>,  <23.799227, 31.844580, 35.909115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902609, 32.501678, 36.284519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265635, 32.351974, 36.208355>,  <24.483450, 32.262150, 36.162659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265635, 32.351974, 36.208355>,  <23.902609, 32.501678, 36.284519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265635, 32.351974, 36.208355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385565, 0.922347, 0.024812,
		0.166335, -0.095933, 0.981392,
		0.907564, -0.374263, -0.190407,
		24.537903, 32.239697, 36.151234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312786, 32.864082, 36.789658>,  <23.902609, 32.501678, 36.284519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312786, 32.864082, 36.789658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502686, 32.716602, 36.469990>,  <24.616625, 32.628113, 36.278191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502686, 32.716602, 36.469990>,  <24.312786, 32.864082, 36.789658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502686, 32.716602, 36.469990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440028, 0.885823, -0.147283,
		0.762226, -0.281734, 0.582784,
		0.474749, -0.368704, -0.799169,
		24.645111, 32.605991, 36.230240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909739, 33.040920, 36.868011>,  <24.312786, 32.864082, 36.789658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909739, 33.040920, 36.868011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897778, 32.974701, 36.473713>,  <24.890600, 32.934967, 36.237133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897778, 32.974701, 36.473713>,  <24.909739, 33.040920, 36.868011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897778, 32.974701, 36.473713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421881, 0.891952, -0.162598,
		0.906158, -0.420730, 0.043173,
		-0.029902, -0.165553, -0.985748,
		24.888807, 32.925034, 36.177990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558998, 33.159813, 36.687389>,  <24.909739, 33.040920, 36.868011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558998, 33.159813, 36.687389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331814, 33.187386, 36.359325>,  <25.195503, 33.203930, 36.162487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331814, 33.187386, 36.359325>,  <25.558998, 33.159813, 36.687389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331814, 33.187386, 36.359325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279911, 0.953267, -0.113720,
		0.773996, -0.294162, -0.560713,
		-0.567961, 0.068931, -0.820164,
		25.161427, 33.208065, 36.113277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080818, 33.431957, 36.151016>,  <25.558998, 33.159813, 36.687389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080818, 33.431957, 36.151016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688299, 33.489529, 36.099880>,  <25.452787, 33.524071, 36.069199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688299, 33.489529, 36.099880>,  <26.080818, 33.431957, 36.151016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688299, 33.489529, 36.099880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129263, 0.984750, 0.116445,
		0.142650, 0.097742, -0.984935,
		-0.981296, 0.143926, -0.127840,
		25.393909, 33.532707, 36.061527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472717, 32.856377, 35.839977>,  <26.080818, 33.431957, 36.151016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472717, 32.856377, 35.839977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650980, 33.183720, 35.985130>,  <26.757936, 33.380123, 36.072224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650980, 33.183720, 35.985130>,  <26.472717, 32.856377, 35.839977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650980, 33.183720, 35.985130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061606, -0.376368, 0.924420,
		0.893082, -0.434329, -0.117315,
		0.445656, 0.818355, 0.362885,
		26.784678, 33.429226, 36.093994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027666, 32.666332, 36.315315>,  <26.472717, 32.856377, 35.839977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027666, 32.666332, 36.315315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916628, 33.037548, 36.414658>,  <26.850006, 33.260277, 36.474262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916628, 33.037548, 36.414658>,  <27.027666, 32.666332, 36.315315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916628, 33.037548, 36.414658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019674, -0.252973, 0.967273,
		0.960497, 0.273395, 0.051966,
		-0.277594, 0.928041, 0.248359,
		26.833349, 33.315960, 36.489166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539534, 32.995880, 36.761913>,  <27.027666, 32.666332, 36.315315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539534, 32.995880, 36.761913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179573, 33.141556, 36.857868>,  <26.963596, 33.228962, 36.915440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179573, 33.141556, 36.857868>,  <27.539534, 32.995880, 36.761913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179573, 33.141556, 36.857868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165688, -0.223297, 0.960565,
		0.403393, 0.904160, 0.140604,
		-0.899901, 0.364189, 0.239885,
		26.909603, 33.250813, 36.929832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284660, 33.074059, 36.713234>,  <27.539534, 32.995880, 36.761913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284660, 33.074059, 36.713234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355322, 33.099201, 36.320328>,  <28.397718, 33.114288, 36.084583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355322, 33.099201, 36.320328>,  <28.284660, 33.074059, 36.713234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355322, 33.099201, 36.320328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981567, 0.062700, 0.180542,
		0.072936, -0.996051, -0.050624,
		0.176655, 0.062859, -0.982263,
		28.408318, 33.118057, 36.025650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832024, 32.702091, 36.556435>,  <28.284660, 33.074059, 36.713234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832024, 32.702091, 36.556435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801487, 33.005619, 36.297710>,  <28.783165, 33.187737, 36.142475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801487, 33.005619, 36.297710>,  <28.832024, 32.702091, 36.556435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801487, 33.005619, 36.297710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937650, 0.275250, 0.212248,
		0.339093, -0.590279, -0.732521,
		-0.076341, 0.758820, -0.646811,
		28.778585, 33.233265, 36.103668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321730, 32.671459, 35.880596>,  <28.832024, 32.702091, 36.556435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321730, 32.671459, 35.880596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220877, 33.039978, 35.999012>,  <29.160366, 33.261089, 36.070061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220877, 33.039978, 35.999012>,  <29.321730, 32.671459, 35.880596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220877, 33.039978, 35.999012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964760, 0.215514, 0.150972,
		0.075290, 0.323668, -0.943170,
		-0.252131, 0.921299, 0.296036,
		29.145237, 33.316368, 36.087822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686876, 33.236225, 35.462440>,  <29.321730, 32.671459, 35.880596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686876, 33.236225, 35.462440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609655, 33.406887, 35.815868>,  <29.563322, 33.509285, 36.027924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609655, 33.406887, 35.815868>,  <29.686876, 33.236225, 35.462440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609655, 33.406887, 35.815868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964194, 0.249366, 0.090256,
		-0.181824, 0.869358, -0.459517,
		-0.193053, 0.426653, 0.883571,
		29.551739, 33.534882, 36.080940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914370, 33.980751, 35.555634>,  <29.686876, 33.236225, 35.462440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914370, 33.980751, 35.555634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874243, 33.829647, 35.923817>,  <29.850166, 33.738987, 36.144726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874243, 33.829647, 35.923817>,  <29.914370, 33.980751, 35.555634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874243, 33.829647, 35.923817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989114, 0.062235, 0.133343,
		-0.107656, 0.923810, 0.367402,
		-0.100319, -0.377758, 0.920454,
		29.844147, 33.716320, 36.199951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557123, 34.195633, 35.891525>,  <29.914370, 33.980751, 35.555634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557123, 34.195633, 35.891525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401226, 33.923592, 36.139896>,  <30.307688, 33.760365, 36.288921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401226, 33.923592, 36.139896>,  <30.557123, 34.195633, 35.891525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401226, 33.923592, 36.139896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915494, -0.213022, 0.341311,
		-0.099855, 0.701483, 0.705656,
		-0.389744, -0.680106, 0.620932,
		30.284304, 33.719559, 36.326176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937473, 34.223518, 36.566933>,  <30.557123, 34.195633, 35.891525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937473, 34.223518, 36.566933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782072, 33.859104, 36.511673>,  <30.688831, 33.640457, 36.478519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782072, 33.859104, 36.511673>,  <30.937473, 34.223518, 36.566933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782072, 33.859104, 36.511673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888773, -0.410062, 0.204773,
		-0.243203, -0.043225, 0.969012,
		-0.388503, -0.911033, -0.138145,
		30.665522, 33.585793, 36.470230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553669, 34.795628, 36.888855>,  <30.937473, 34.223518, 36.566933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553669, 34.795628, 36.888855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311804, 34.907021, 37.187340>,  <30.166685, 34.973858, 37.366432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311804, 34.907021, 37.187340>,  <30.553669, 34.795628, 36.888855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311804, 34.907021, 37.187340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763903, -0.467982, -0.444347,
		0.225471, -0.838713, 0.495705,
		-0.604661, 0.278483, 0.746212,
		30.130405, 34.990566, 37.411201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377115, 34.132053, 37.190327>,  <30.553669, 34.795628, 36.888855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377115, 34.132053, 37.190327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128143, 34.445122, 37.189880>,  <29.978760, 34.632965, 37.189613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128143, 34.445122, 37.189880>,  <30.377115, 34.132053, 37.190327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128143, 34.445122, 37.189880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571656, -0.455589, -0.682384,
		-0.534593, -0.424099, 0.730993,
		-0.622430, 0.782674, -0.001116,
		29.941414, 34.679924, 37.189545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752703, 33.872959, 37.325375>,  <30.377115, 34.132053, 37.190327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752703, 33.872959, 37.325375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712772, 34.198978, 37.097084>,  <29.688814, 34.394592, 36.960110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712772, 34.198978, 37.097084>,  <29.752703, 33.872959, 37.325375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712772, 34.198978, 37.097084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501142, -0.536712, -0.678820,
		-0.859588, 0.218249, 0.462035,
		-0.099827, 0.815051, -0.570725,
		29.682823, 34.443493, 36.925865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103191, 34.041309, 37.182312>,  <29.752703, 33.872959, 37.325375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103191, 34.041309, 37.182312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272738, 33.880543, 36.857647>,  <29.374466, 33.784081, 36.662849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272738, 33.880543, 36.857647>,  <29.103191, 34.041309, 37.182312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272738, 33.880543, 36.857647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904210, -0.239584, -0.353557,
		-0.052359, 0.883775, -0.464972,
		0.423865, -0.401921, -0.811664,
		29.399897, 33.759968, 36.614147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619604, 34.421261, 36.632988>,  <29.103191, 34.041309, 37.182312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619604, 34.421261, 36.632988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793135, 34.084885, 36.503613>,  <28.897253, 33.883057, 36.425987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793135, 34.084885, 36.503613>,  <28.619604, 34.421261, 36.632988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793135, 34.084885, 36.503613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895183, -0.361584, -0.260585,
		0.102188, 0.402583, -0.909662,
		0.433826, -0.840942, -0.323436,
		28.923283, 33.832603, 36.406582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472521, 34.268150, 35.930386>,  <28.619604, 34.421261, 36.632988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472521, 34.268150, 35.930386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532537, 33.936970, 36.146526>,  <28.568548, 33.738262, 36.276211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532537, 33.936970, 36.146526>,  <28.472521, 34.268150, 35.930386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532537, 33.936970, 36.146526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899657, -0.340986, -0.272662,
		0.410004, -0.445219, -0.796038,
		0.150044, -0.827954, 0.540351,
		28.577551, 33.688583, 36.308632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374500, 33.609436, 35.538986>,  <28.472521, 34.268150, 35.930386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374500, 33.609436, 35.538986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272375, 33.586784, 35.925064>,  <28.211100, 33.573193, 36.156712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272375, 33.586784, 35.925064>,  <28.374500, 33.609436, 35.538986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272375, 33.586784, 35.925064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893392, -0.367881, -0.257902,
		0.369683, -0.928147, 0.043335,
		-0.255313, -0.056627, 0.965199,
		28.195782, 33.569798, 36.214622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631548, 33.283707, 34.849361>,  <28.374500, 33.609436, 35.538986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631548, 33.283707, 34.849361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894104, 33.582645, 34.808121>,  <29.051638, 33.762009, 34.783379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894104, 33.582645, 34.808121>,  <28.631548, 33.283707, 34.849361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894104, 33.582645, 34.808121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202224, 0.042637, -0.978411,
		-0.726813, 0.663068, 0.179117,
		0.656390, 0.747344, -0.103099,
		29.091021, 33.806850, 34.777191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328007, 33.820091, 34.462456>,  <28.631548, 33.283707, 34.849361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328007, 33.820091, 34.462456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719667, 33.881939, 34.409767>,  <28.954664, 33.919048, 34.378155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719667, 33.881939, 34.409767>,  <28.328007, 33.820091, 34.462456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719667, 33.881939, 34.409767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141195, 0.051903, -0.988620,
		-0.146024, 0.986610, 0.072652,
		0.979153, 0.154621, -0.131725,
		29.013412, 33.928326, 34.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384182, 34.464531, 34.032570>,  <28.328007, 33.820091, 34.462456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384182, 34.464531, 34.032570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704842, 34.225891, 34.017429>,  <28.897238, 34.082706, 34.008343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704842, 34.225891, 34.017429>,  <28.384182, 34.464531, 34.032570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704842, 34.225891, 34.017429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057045, 0.139377, -0.988595,
		0.595068, 0.790346, 0.145764,
		0.801648, -0.596597, -0.037854,
		28.945335, 34.046913, 34.006073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842392, 34.899166, 33.635315>,  <28.384182, 34.464531, 34.032570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842392, 34.899166, 33.635315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004410, 34.533447, 33.635670>,  <29.101622, 34.314014, 33.635883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004410, 34.533447, 33.635670>,  <28.842392, 34.899166, 33.635315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004410, 34.533447, 33.635670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209542, 0.091883, -0.973473,
		0.889961, 0.394487, 0.228800,
		0.405046, -0.914296, 0.000889,
		29.125923, 34.259159, 33.635937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449488, 34.908642, 33.282265>,  <28.842392, 34.899166, 33.635315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449488, 34.908642, 33.282265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361397, 34.518463, 33.283638>,  <29.308542, 34.284355, 33.284462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361397, 34.518463, 33.283638>,  <29.449488, 34.908642, 33.282265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361397, 34.518463, 33.283638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266206, -0.063491, -0.961823,
		0.938422, -0.210902, 0.273651,
		-0.220225, -0.975443, 0.003437,
		29.295330, 34.225830, 33.284668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982231, 34.449657, 33.051514>,  <29.449488, 34.908642, 33.282265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982231, 34.449657, 33.051514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656275, 34.230858, 32.974834>,  <29.460701, 34.099579, 32.928829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656275, 34.230858, 32.974834>,  <29.982231, 34.449657, 33.051514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656275, 34.230858, 32.974834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236817, -0.012347, -0.971476,
		0.529031, -0.837041, 0.139600,
		-0.814889, -0.547000, -0.191694,
		29.411808, 34.066757, 32.917328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192377, 33.838745, 32.661892>,  <29.982231, 34.449657, 33.051514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192377, 33.838745, 32.661892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805298, 33.911610, 32.592171>,  <29.573051, 33.955330, 32.550339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805298, 33.911610, 32.592171>,  <30.192377, 33.838745, 32.661892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805298, 33.911610, 32.592171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163979, -0.070388, -0.983949,
		-0.191507, -0.980746, 0.038244,
		-0.967696, 0.182162, -0.174301,
		29.514988, 33.966259, 32.539879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109787, 33.385326, 32.115952>,  <30.192377, 33.838745, 32.661892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109787, 33.385326, 32.115952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792820, 33.628857, 32.100948>,  <29.602640, 33.774975, 32.091946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792820, 33.628857, 32.100948>,  <30.109787, 33.385326, 32.115952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792820, 33.628857, 32.100948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015446, -0.041451, -0.999021,
		-0.609781, -0.792223, 0.023443,
		-0.792420, 0.608822, -0.037513,
		29.555094, 33.811504, 32.089695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723030, 33.168671, 31.580244>,  <30.109787, 33.385326, 32.115952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723030, 33.168671, 31.580244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563868, 33.534061, 31.614250>,  <29.468370, 33.753296, 31.634655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563868, 33.534061, 31.614250>,  <29.723030, 33.168671, 31.580244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563868, 33.534061, 31.614250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291319, -0.037935, -0.955873,
		-0.869945, -0.405114, 0.281208,
		-0.397905, 0.913479, 0.085016,
		29.444496, 33.808105, 31.639755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090103, 33.117298, 31.290501>,  <29.723030, 33.168671, 31.580244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090103, 33.117298, 31.290501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214199, 33.497372, 31.278446>,  <29.288656, 33.725414, 31.271214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214199, 33.497372, 31.278446>,  <29.090103, 33.117298, 31.290501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214199, 33.497372, 31.278446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070041, -0.008767, -0.997505,
		-0.948075, 0.311576, 0.063832,
		0.310239, 0.950181, -0.030135,
		29.307270, 33.782425, 31.269405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579042, 33.422619, 30.831839>,  <29.090103, 33.117298, 31.290501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579042, 33.422619, 30.831839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895607, 33.667027, 30.839037>,  <29.085546, 33.813671, 30.843355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895607, 33.667027, 30.839037>,  <28.579042, 33.422619, 30.831839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895607, 33.667027, 30.839037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185058, 0.267544, -0.945608,
		-0.582596, 0.745037, 0.324812,
		0.791414, 0.611016, 0.017995,
		29.133032, 33.850330, 30.844435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443766, 33.852192, 30.179333>,  <28.579042, 33.422619, 30.831839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443766, 33.852192, 30.179333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802460, 33.963028, 30.317369>,  <29.017675, 34.029530, 30.400190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802460, 33.963028, 30.317369>,  <28.443766, 33.852192, 30.179333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802460, 33.963028, 30.317369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191806, 0.459385, -0.867281,
		-0.398844, 0.843911, 0.358799,
		0.896735, 0.277090, 0.345090,
		29.071480, 34.046154, 30.420897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535561, 34.545715, 30.109001>,  <28.443766, 33.852192, 30.179333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535561, 34.545715, 30.109001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903769, 34.390881, 30.087801>,  <29.124693, 34.297981, 30.075081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903769, 34.390881, 30.087801>,  <28.535561, 34.545715, 30.109001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903769, 34.390881, 30.087801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190592, 0.563325, -0.803953,
		0.341052, 0.729954, 0.592327,
		0.920520, -0.387083, -0.053000,
		29.179924, 34.274757, 30.071901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944702, 35.062046, 29.933943>,  <28.535561, 34.545715, 30.109001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944702, 35.062046, 29.933943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178871, 34.754105, 29.832279>,  <29.319372, 34.569340, 29.771280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178871, 34.754105, 29.832279>,  <28.944702, 35.062046, 29.933943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178871, 34.754105, 29.832279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326911, 0.511042, -0.794962,
		0.741895, 0.382302, 0.550851,
		0.585424, -0.769858, -0.254161,
		29.354498, 34.523148, 29.756031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511694, 35.462460, 29.801050>,  <28.944702, 35.062046, 29.933943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511694, 35.462460, 29.801050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548687, 35.101204, 29.633339>,  <29.570883, 34.884453, 29.532711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548687, 35.101204, 29.633339>,  <29.511694, 35.462460, 29.801050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548687, 35.101204, 29.633339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179725, 0.429308, -0.885095,
		0.979360, 0.006499, 0.202019,
		0.092481, -0.903135, -0.419279,
		29.576431, 34.830265, 29.507555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078022, 35.532963, 29.383846>,  <29.511694, 35.462460, 29.801050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078022, 35.532963, 29.383846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887533, 35.210606, 29.243130>,  <29.773241, 35.017193, 29.158699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887533, 35.210606, 29.243130>,  <30.078022, 35.532963, 29.383846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887533, 35.210606, 29.243130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162632, 0.312447, -0.935910,
		0.864156, -0.502911, -0.017730,
		-0.476220, -0.805889, -0.351792,
		29.744667, 34.968838, 29.137592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465946, 35.220688, 28.791229>,  <30.078022, 35.532963, 29.383846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465946, 35.220688, 28.791229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092880, 35.081848, 28.751926>,  <29.869040, 34.998543, 28.728344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092880, 35.081848, 28.751926>,  <30.465946, 35.220688, 28.791229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092880, 35.081848, 28.751926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035351, 0.359005, -0.932666,
		0.359005, -0.866392, -0.347102,
		0.932666, 0.347102, 0.098257,
		29.813080, 34.977718, 28.722448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583988, 34.774445, 28.130816>,  <30.465946, 35.220688, 28.791229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583988, 34.774445, 28.130816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205585, 34.880993, 28.204702>,  <29.978544, 34.944923, 28.249035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205585, 34.880993, 28.204702>,  <30.583988, 34.774445, 28.130816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205585, 34.880993, 28.204702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063619, 0.406199, -0.911568,
		-0.317846, -0.874100, -0.367320,
		-0.946006, 0.266369, 0.184717,
		29.921783, 34.960903, 28.260118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246204, 34.481113, 27.545937>,  <30.583988, 34.774445, 28.130816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246204, 34.481113, 27.545937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996778, 34.760075, 27.687246>,  <29.847124, 34.927452, 27.772032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996778, 34.760075, 27.687246>,  <30.246204, 34.481113, 27.545937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996778, 34.760075, 27.687246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015095, 0.462548, -0.886466,
		-0.781627, -0.547435, -0.298955,
		-0.623564, 0.697398, 0.353276,
		29.809710, 34.969296, 27.793228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651003, 34.562653, 27.032808>,  <30.246204, 34.481113, 27.545937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651003, 34.562653, 27.032808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703060, 34.893787, 27.251074>,  <29.734295, 35.092468, 27.382032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703060, 34.893787, 27.251074>,  <29.651003, 34.562653, 27.032808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703060, 34.893787, 27.251074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035754, 0.553905, -0.831812,
		-0.990850, 0.088744, 0.101685,
		0.130143, 0.827836, 0.545664,
		29.742104, 35.142139, 27.414774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276508, 35.048706, 26.654461>,  <29.651003, 34.562653, 27.032808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276508, 35.048706, 26.654461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520529, 35.274601, 26.876780>,  <29.666941, 35.410137, 27.010172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520529, 35.274601, 26.876780>,  <29.276508, 35.048706, 26.654461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520529, 35.274601, 26.876780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020216, 0.712309, -0.701575,
		-0.792105, 0.416759, 0.445960,
		0.610049, 0.564736, 0.555799,
		29.703543, 35.444023, 27.043520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175446, 35.762024, 26.560146>,  <29.276508, 35.048706, 26.654461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175446, 35.762024, 26.560146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538340, 35.789955, 26.726063>,  <29.756077, 35.806713, 26.825613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538340, 35.789955, 26.726063>,  <29.175446, 35.762024, 26.560146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538340, 35.789955, 26.726063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214046, 0.772254, -0.598171,
		-0.362091, 0.631465, 0.685669,
		0.907234, 0.069828, 0.414789,
		29.810511, 35.810905, 26.850500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399952, 36.447414, 26.683485>,  <29.175446, 35.762024, 26.560146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399952, 36.447414, 26.683485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745993, 36.246780, 26.684540>,  <29.953617, 36.126400, 26.685173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745993, 36.246780, 26.684540>,  <29.399952, 36.447414, 26.683485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745993, 36.246780, 26.684540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404703, 0.694881, -0.594437,
		0.296329, 0.515317, 0.804138,
		0.865104, -0.501586, 0.002636,
		30.005524, 36.096306, 26.685331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854282, 36.950813, 26.756002>,  <29.399952, 36.447414, 26.683485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854282, 36.950813, 26.756002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048586, 36.645760, 26.585159>,  <30.165169, 36.462727, 26.482653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048586, 36.645760, 26.585159>,  <29.854282, 36.950813, 26.756002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048586, 36.645760, 26.585159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429474, 0.633821, -0.643290,
		0.761307, 0.129054, 0.635418,
		0.485761, -0.762637, -0.427107,
		30.194315, 36.416969, 26.457027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521519, 37.106468, 26.768684>,  <29.854282, 36.950813, 26.756002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521519, 37.106468, 26.768684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513775, 36.820415, 26.489195>,  <30.509129, 36.648785, 26.321501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513775, 36.820415, 26.489195>,  <30.521519, 37.106468, 26.768684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513775, 36.820415, 26.489195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312665, 0.659474, -0.683619,
		0.949666, -0.231702, 0.210828,
		-0.019360, -0.715128, -0.698725,
		30.507967, 36.605877, 26.279577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106188, 37.233967, 26.266937>,  <30.521519, 37.106468, 26.768684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106188, 37.233967, 26.266937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866985, 37.005203, 26.042326>,  <30.723465, 36.867947, 25.907558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866985, 37.005203, 26.042326>,  <31.106188, 37.233967, 26.266937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866985, 37.005203, 26.042326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386083, 0.408416, -0.827125,
		0.702374, -0.711422, -0.023432,
		-0.598005, -0.571904, -0.561529,
		30.687584, 36.833633, 25.873867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481560, 37.194023, 25.598930>,  <31.106188, 37.233967, 26.266937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481560, 37.194023, 25.598930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133322, 37.045113, 25.470261>,  <30.924379, 36.955765, 25.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133322, 37.045113, 25.470261>,  <31.481560, 37.194023, 25.598930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133322, 37.045113, 25.470261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128949, 0.458309, -0.879389,
		0.474808, -0.807069, -0.350995,
		-0.870592, -0.372281, -0.321679,
		30.872143, 36.933430, 25.373758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530359, 36.659447, 24.959803>,  <31.481560, 37.194023, 25.598930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530359, 36.659447, 24.959803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152483, 36.790352, 24.951212>,  <30.925756, 36.868893, 24.946056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152483, 36.790352, 24.951212>,  <31.530359, 36.659447, 24.959803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152483, 36.790352, 24.951212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198509, 0.518445, -0.831750,
		-0.261062, -0.790010, -0.554734,
		-0.944691, 0.327259, -0.021478,
		30.869076, 36.888531, 24.944769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230686, 36.506485, 24.270958>,  <31.530359, 36.659447, 24.959803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230686, 36.506485, 24.270958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019100, 36.811382, 24.420189>,  <30.892149, 36.994320, 24.509727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019100, 36.811382, 24.420189>,  <31.230686, 36.506485, 24.270958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019100, 36.811382, 24.420189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091135, 0.488094, -0.868020,
		-0.843736, -0.425152, -0.327652,
		-0.528966, 0.762240, 0.373076,
		30.860411, 37.040054, 24.532112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772205, 36.774879, 23.738813>,  <31.230686, 36.506485, 24.270958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772205, 36.774879, 23.738813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786324, 37.077637, 23.999847>,  <30.794794, 37.259293, 24.156467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786324, 37.077637, 23.999847>,  <30.772205, 36.774879, 23.738813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786324, 37.077637, 23.999847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084391, 0.648403, -0.756605,
		-0.995807, 0.081778, -0.040989,
		0.035296, 0.756892, 0.652586,
		30.796913, 37.304703, 24.195623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533083, 37.384415, 23.367914>,  <30.772205, 36.774879, 23.738813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533083, 37.384415, 23.367914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689861, 37.556240, 23.693331>,  <30.783928, 37.659336, 23.888580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689861, 37.556240, 23.693331>,  <30.533083, 37.384415, 23.367914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689861, 37.556240, 23.693331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268751, 0.792262, -0.547808,
		-0.879858, 0.433351, 0.195079,
		0.391947, 0.429566, 0.813542,
		30.807446, 37.685108, 23.937393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330910, 38.022583, 23.352123>,  <30.533083, 37.384415, 23.367914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330910, 38.022583, 23.352123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654055, 38.037910, 23.587374>,  <30.847940, 38.047108, 23.728523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654055, 38.037910, 23.587374>,  <30.330910, 38.022583, 23.352123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654055, 38.037910, 23.587374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345422, 0.777756, -0.525147,
		-0.477540, 0.627398, 0.615083,
		0.807861, 0.038316, 0.588127,
		30.896412, 38.049404, 23.763811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592897, 38.766029, 23.469482>,  <30.330910, 38.022583, 23.352123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592897, 38.766029, 23.469482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903843, 38.559036, 23.612541>,  <31.090410, 38.434841, 23.698378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903843, 38.559036, 23.612541>,  <30.592897, 38.766029, 23.469482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903843, 38.559036, 23.612541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619817, 0.727162, -0.295065,
		-0.107377, 0.451050, 0.886016,
		0.777366, -0.517484, 0.357649,
		31.137053, 38.403790, 23.719835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976809, 39.308071, 23.814945>,  <30.592897, 38.766029, 23.469482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976809, 39.308071, 23.814945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232634, 39.019707, 23.708174>,  <31.386129, 38.846687, 23.644112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232634, 39.019707, 23.708174>,  <30.976809, 39.308071, 23.814945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232634, 39.019707, 23.708174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651035, 0.692583, -0.310616,
		0.408795, 0.024880, 0.912287,
		0.639563, -0.720909, -0.266927,
		31.424501, 38.803432, 23.628096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588629, 39.505703, 23.989433>,  <30.976809, 39.308071, 23.814945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588629, 39.505703, 23.989433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734211, 39.210251, 23.762466>,  <31.821560, 39.032982, 23.626286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734211, 39.210251, 23.762466>,  <31.588629, 39.505703, 23.989433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734211, 39.210251, 23.762466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820162, 0.542877, -0.180607,
		0.441440, -0.399643, 0.803378,
		0.363957, -0.738627, -0.567419,
		31.843397, 38.988663, 23.592241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294060, 39.364952, 24.212448>,  <31.588629, 39.505703, 23.989433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294060, 39.364952, 24.212448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298977, 39.202431, 23.846987>,  <32.301926, 39.104919, 23.627710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298977, 39.202431, 23.846987>,  <32.294060, 39.364952, 24.212448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298977, 39.202431, 23.846987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870637, 0.453726, -0.190060,
		0.491772, -0.793126, 0.359320,
		0.012292, -0.406304, -0.913655,
		32.302666, 39.080540, 23.572889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980831, 39.309338, 24.164452>,  <32.294060, 39.364952, 24.212448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980831, 39.309338, 24.164452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806507, 39.304657, 23.804466>,  <32.701912, 39.301849, 23.588476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806507, 39.304657, 23.804466>,  <32.980831, 39.309338, 24.164452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806507, 39.304657, 23.804466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683621, 0.646094, -0.339448,
		0.585431, -0.763168, -0.273578,
		-0.435813, -0.011700, -0.899961,
		32.675762, 39.301147, 23.534477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501118, 39.110294, 23.617661>,  <32.980831, 39.309338, 24.164452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501118, 39.110294, 23.617661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205704, 39.339031, 23.474802>,  <33.028454, 39.476273, 23.389088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205704, 39.339031, 23.474802>,  <33.501118, 39.110294, 23.617661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205704, 39.339031, 23.474802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670766, 0.676687, -0.303590,
		0.068070, -0.463775, -0.883334,
		-0.738539, 0.571845, -0.357146,
		32.984142, 39.510586, 23.367659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871712, 39.450371, 23.227999>,  <33.501118, 39.110294, 23.617661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871712, 39.450371, 23.227999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534431, 39.664970, 23.241728>,  <33.332062, 39.793728, 23.249966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534431, 39.664970, 23.241728>,  <33.871712, 39.450371, 23.227999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534431, 39.664970, 23.241728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513890, 0.823130, -0.241605,
		-0.157870, -0.186085, -0.969768,
		-0.843204, 0.536496, 0.034321,
		33.281471, 39.825920, 23.252024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720783, 39.782272, 22.535114>,  <33.871712, 39.450371, 23.227999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720783, 39.782272, 22.535114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536354, 39.995098, 22.819176>,  <33.425697, 40.122791, 22.989613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536354, 39.995098, 22.819176>,  <33.720783, 39.782272, 22.535114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536354, 39.995098, 22.819176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460174, 0.827645, -0.321315,
		-0.758716, 0.178644, -0.626448,
		-0.461076, 0.532062, 0.710155,
		33.398033, 40.154716, 23.032223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644577, 40.474186, 22.243679>,  <33.720783, 39.782272, 22.535114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644577, 40.474186, 22.243679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579708, 40.555481, 22.629921>,  <33.540787, 40.604259, 22.861666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579708, 40.555481, 22.629921>,  <33.644577, 40.474186, 22.243679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579708, 40.555481, 22.629921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502541, 0.859158, -0.096434,
		-0.849207, 0.469618, -0.241466,
		-0.162171, 0.203239, 0.965606,
		33.531055, 40.616451, 22.919603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461090, 41.175110, 22.214771>,  <33.644577, 40.474186, 22.243679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461090, 41.175110, 22.214771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556614, 41.078968, 22.591112>,  <33.613926, 41.021282, 22.816917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556614, 41.078968, 22.591112>,  <33.461090, 41.175110, 22.214771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556614, 41.078968, 22.591112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512383, 0.854219, 0.088167,
		-0.824885, 0.461022, 0.327145,
		0.238807, -0.240351, 0.940852,
		33.628258, 41.006863, 22.873367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536568, 41.784126, 22.496540>,  <33.461090, 41.175110, 22.214771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536568, 41.784126, 22.496540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732586, 41.576706, 22.776817>,  <33.850197, 41.452255, 22.944983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732586, 41.576706, 22.776817>,  <33.536568, 41.784126, 22.496540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732586, 41.576706, 22.776817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626601, 0.768354, 0.130395,
		-0.605995, 0.375154, 0.701448,
		0.490043, -0.518546, 0.700691,
		33.879601, 41.421143, 22.987024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282505, 42.017555, 22.241148>,  <33.536568, 41.784126, 22.496540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282505, 42.017555, 22.241148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571579, 42.293766, 22.229176>,  <34.745022, 42.459492, 22.221992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571579, 42.293766, 22.229176>,  <34.282505, 42.017555, 22.241148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571579, 42.293766, 22.229176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146876, 0.111111, -0.982895,
		-0.675390, 0.714721, 0.181720,
		0.722686, 0.690528, -0.029932,
		34.788383, 42.500923, 22.220196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981354, 42.531700, 21.904720>,  <34.282505, 42.017555, 22.241148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981354, 42.531700, 21.904720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375809, 42.589359, 21.871832>,  <34.612480, 42.623955, 21.852098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375809, 42.589359, 21.871832>,  <33.981354, 42.531700, 21.904720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375809, 42.589359, 21.871832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085093, 0.013869, -0.996276,
		-0.142475, 0.989459, 0.025943,
		0.986134, 0.144152, -0.082220,
		34.671650, 42.632607, 21.847166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905193, 43.141476, 21.611984>,  <33.981354, 42.531700, 21.904720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905193, 43.141476, 21.611984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279148, 43.038448, 21.514290>,  <34.503521, 42.976631, 21.455673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279148, 43.038448, 21.514290>,  <33.905193, 43.141476, 21.611984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279148, 43.038448, 21.514290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247122, 0.021636, -0.968743,
		0.254805, 0.966017, -0.043424,
		0.934882, -0.257572, -0.244237,
		34.559612, 42.961178, 21.441019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210449, 43.796261, 21.252161>,  <33.905193, 43.141476, 21.611984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210449, 43.796261, 21.252161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276272, 43.403835, 21.211296>,  <34.315765, 43.168381, 21.186777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276272, 43.403835, 21.211296>,  <34.210449, 43.796261, 21.252161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276272, 43.403835, 21.211296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349508, 0.038862, -0.936127,
		0.922370, 0.189749, -0.336495,
		0.164552, -0.981063, -0.102164,
		34.325638, 43.109516, 21.180647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545227, 43.595123, 20.631407>,  <34.210449, 43.796261, 21.252161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545227, 43.595123, 20.631407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323151, 43.279877, 20.737719>,  <34.189903, 43.090729, 20.801506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323151, 43.279877, 20.737719>,  <34.545227, 43.595123, 20.631407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323151, 43.279877, 20.737719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401615, -0.025800, -0.915445,
		0.728331, -0.614990, -0.302194,
		-0.555193, -0.788113, 0.265780,
		34.156593, 43.043442, 20.817453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585705, 43.064064, 20.174761>,  <34.545227, 43.595123, 20.631407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585705, 43.064064, 20.174761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214413, 43.030437, 20.319717>,  <33.991638, 43.010262, 20.406693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214413, 43.030437, 20.319717>,  <34.585705, 43.064064, 20.174761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214413, 43.030437, 20.319717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367580, 0.057273, -0.928227,
		0.057273, -0.994813, -0.084062,
		0.928227, 0.084062, -0.362394,
		33.935944, 43.005219, 20.428436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537457, 42.407181, 20.517149>,  <34.585705, 43.064064, 20.174761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537457, 42.407181, 20.517149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771854, 42.728886, 20.556679>,  <34.912495, 42.921909, 20.580397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771854, 42.728886, 20.556679>,  <34.537457, 42.407181, 20.517149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771854, 42.728886, 20.556679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197914, -0.260322, 0.945020,
		0.785773, -0.534218, -0.311723,
		0.585995, 0.804266, 0.098824,
		34.947655, 42.970165, 20.586327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161774, 42.247185, 20.702261>,  <34.537457, 42.407181, 20.517149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161774, 42.247185, 20.702261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040359, 42.599941, 20.846554>,  <34.967510, 42.811596, 20.933130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040359, 42.599941, 20.846554>,  <35.161774, 42.247185, 20.702261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040359, 42.599941, 20.846554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265634, -0.285262, 0.920904,
		0.915043, 0.375353, -0.147673,
		-0.303538, 0.881893, 0.360733,
		34.949299, 42.864510, 20.954773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744991, 42.384190, 21.171772>,  <35.161774, 42.247185, 20.702261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744991, 42.384190, 21.171772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404076, 42.562798, 21.280745>,  <35.199524, 42.669960, 21.346128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404076, 42.562798, 21.280745>,  <35.744991, 42.384190, 21.171772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404076, 42.562798, 21.280745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280929, -0.048580, 0.958498,
		0.441219, 0.893456, -0.084035,
		-0.852294, 0.446516, 0.272432,
		35.148388, 42.696751, 21.362474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847908, 43.038399, 21.519358>,  <35.744991, 42.384190, 21.171772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847908, 43.038399, 21.519358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483555, 42.920139, 21.634512>,  <35.264942, 42.849186, 21.703604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483555, 42.920139, 21.634512>,  <35.847908, 43.038399, 21.519358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483555, 42.920139, 21.634512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271652, 0.095543, 0.957641,
		-0.310627, 0.950508, -0.006716,
		-0.910887, -0.295645, 0.287885,
		35.210289, 42.831448, 21.720877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764885, 43.385849, 22.157169>,  <35.847908, 43.038399, 21.519358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764885, 43.385849, 22.157169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465736, 43.120495, 22.167051>,  <35.286247, 42.961281, 22.172981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465736, 43.120495, 22.167051>,  <35.764885, 43.385849, 22.157169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465736, 43.120495, 22.167051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055981, 0.100105, 0.993401,
		-0.661480, 0.741553, -0.112002,
		-0.747871, -0.663384, 0.024705,
		35.241375, 42.921478, 22.174463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328999, 43.653004, 22.531609>,  <35.764885, 43.385849, 22.157169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328999, 43.653004, 22.531609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223736, 43.268341, 22.562519>,  <35.160580, 43.037544, 22.581066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223736, 43.268341, 22.562519>,  <35.328999, 43.653004, 22.531609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223736, 43.268341, 22.562519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033647, 0.089201, 0.995445,
		-0.964166, 0.259359, -0.055831,
		-0.263158, -0.961653, 0.077278,
		35.144787, 42.979847, 22.585703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696327, 43.636089, 23.037447>,  <35.328999, 43.653004, 22.531609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696327, 43.636089, 23.037447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869728, 43.277287, 23.002895>,  <34.973770, 43.062004, 22.982164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869728, 43.277287, 23.002895>,  <34.696327, 43.636089, 23.037447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869728, 43.277287, 23.002895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073476, -0.130718, 0.988693,
		-0.898152, -0.422254, -0.122575,
		0.433503, -0.897003, -0.086379,
		34.999779, 43.008186, 22.976982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278271, 43.171913, 23.346861>,  <34.696327, 43.636089, 23.037447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278271, 43.171913, 23.346861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636387, 42.994038, 23.336195>,  <34.851257, 42.887314, 23.329796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636387, 42.994038, 23.336195>,  <34.278271, 43.171913, 23.346861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636387, 42.994038, 23.336195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078437, -0.216270, 0.973178,
		-0.438529, -0.869182, -0.228504,
		0.895288, -0.444690, -0.026665,
		34.904972, 42.860630, 23.328196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092949, 42.760475, 23.917120>,  <34.278271, 43.171913, 23.346861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092949, 42.760475, 23.917120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488110, 42.714031, 23.876005>,  <34.725208, 42.686165, 23.851337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488110, 42.714031, 23.876005>,  <34.092949, 42.760475, 23.917120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488110, 42.714031, 23.876005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062052, -0.311459, 0.948231,
		-0.142112, -0.943140, -0.300487,
		0.987904, -0.116109, -0.102786,
		34.784481, 42.679199, 23.845169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362953, 42.082497, 24.251837>,  <34.092949, 42.760475, 23.917120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362953, 42.082497, 24.251837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683479, 42.320156, 24.223896>,  <34.875797, 42.462749, 24.207132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683479, 42.320156, 24.223896>,  <34.362953, 42.082497, 24.251837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683479, 42.320156, 24.223896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305261, -0.305672, 0.901876,
		0.514495, -0.744012, -0.426310,
		0.801318, 0.594147, -0.069852,
		34.923874, 42.498402, 24.202940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951427, 41.686562, 24.499073>,  <34.362953, 42.082497, 24.251837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951427, 41.686562, 24.499073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049965, 42.072720, 24.533298>,  <35.109089, 42.304417, 24.553833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049965, 42.072720, 24.533298>,  <34.951427, 41.686562, 24.499073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049965, 42.072720, 24.533298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340394, -0.168843, 0.924999,
		0.907439, -0.198744, -0.370209,
		0.246345, 0.965398, 0.085563,
		35.123867, 42.362339, 24.558968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533642, 41.676083, 24.884598>,  <34.951427, 41.686562, 24.499073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533642, 41.676083, 24.884598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448093, 42.066734, 24.893066>,  <35.396767, 42.301125, 24.898148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448093, 42.066734, 24.893066>,  <35.533642, 41.676083, 24.884598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448093, 42.066734, 24.893066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323941, 0.050457, 0.944731,
		0.921587, 0.208908, -0.327163,
		-0.213869, 0.976633, 0.021174,
		35.383934, 42.359726, 24.899418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179165, 41.968369, 25.181799>,  <35.533642, 41.676083, 24.884598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179165, 41.968369, 25.181799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877506, 42.227989, 25.221767>,  <35.696510, 42.383762, 25.245749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877506, 42.227989, 25.221767>,  <36.179165, 41.968369, 25.181799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877506, 42.227989, 25.221767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184268, 0.063101, 0.980848,
		0.630320, 0.758120, -0.167188,
		-0.754150, 0.649055, 0.099923,
		35.651260, 42.422707, 25.251745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392826, 42.668900, 25.571886>,  <36.179165, 41.968369, 25.181799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392826, 42.668900, 25.571886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005798, 42.600704, 25.646439>,  <35.773582, 42.559788, 25.691170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005798, 42.600704, 25.646439>,  <36.392826, 42.668900, 25.571886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005798, 42.600704, 25.646439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186110, 0.017724, 0.982369,
		-0.170782, 0.985201, 0.014579,
		-0.967573, -0.170484, 0.186382,
		35.715527, 42.549561, 25.702353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259590, 43.011669, 26.170174>,  <36.392826, 42.668900, 25.571886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259590, 43.011669, 26.170174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936302, 42.776554, 26.155878>,  <35.742329, 42.635483, 26.147301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936302, 42.776554, 26.155878>,  <36.259590, 43.011669, 26.170174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936302, 42.776554, 26.155878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030172, -0.101948, 0.994332,
		-0.588102, 0.802564, 0.100132,
		-0.808223, -0.587790, -0.035741,
		35.693836, 42.600216, 26.145155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860687, 43.175289, 26.840349>,  <36.259590, 43.011669, 26.170174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860687, 43.175289, 26.840349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735458, 42.822952, 26.698309>,  <35.660320, 42.611549, 26.613085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735458, 42.822952, 26.698309>,  <35.860687, 43.175289, 26.840349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735458, 42.822952, 26.698309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201528, -0.303769, 0.931188,
		-0.928102, 0.363090, -0.082414,
		-0.313069, -0.880846, -0.355102,
		35.641537, 42.558697, 26.591778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161789, 43.087761, 27.226501>,  <35.860687, 43.175289, 26.840349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161789, 43.087761, 27.226501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243523, 42.714870, 27.107029>,  <35.292561, 42.491138, 27.035345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243523, 42.714870, 27.107029>,  <35.161789, 43.087761, 27.226501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243523, 42.714870, 27.107029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461894, -0.360834, 0.810218,
		-0.863077, -0.027594, -0.504318,
		0.204332, -0.932222, -0.298682,
		35.304821, 42.435204, 27.017424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523453, 42.753941, 27.237574>,  <35.161789, 43.087761, 27.226501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523453, 42.753941, 27.237574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786034, 42.452293, 27.229815>,  <34.943581, 42.271305, 27.225159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786034, 42.452293, 27.229815>,  <34.523453, 42.753941, 27.237574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786034, 42.452293, 27.229815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467851, -0.427159, 0.773725,
		-0.591770, -0.498833, -0.633225,
		0.656447, -0.754122, -0.019400,
		34.982967, 42.226055, 27.223995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177425, 42.086399, 27.083914>,  <34.523453, 42.753941, 27.237574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177425, 42.086399, 27.083914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511642, 42.021568, 27.293905>,  <34.712173, 41.982670, 27.419901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511642, 42.021568, 27.293905>,  <34.177425, 42.086399, 27.083914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511642, 42.021568, 27.293905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539528, -0.422631, 0.728212,
		0.103845, -0.891691, -0.440571,
		0.835540, -0.162079, 0.524980,
		34.762306, 41.972946, 27.451399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052357, 41.510674, 27.389950>,  <34.177425, 42.086399, 27.083914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052357, 41.510674, 27.389950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367088, 41.608437, 27.616636>,  <34.555927, 41.667095, 27.752647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367088, 41.608437, 27.616636>,  <34.052357, 41.510674, 27.389950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367088, 41.608437, 27.616636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412430, -0.474888, 0.777420,
		0.459132, -0.845427, -0.272856,
		0.786829, 0.244405, 0.566716,
		34.603138, 41.681759, 27.786652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137844, 40.960110, 27.660614>,  <34.052357, 41.510674, 27.389950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137844, 40.960110, 27.660614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319901, 41.237175, 27.884424>,  <34.429134, 41.403416, 28.018709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319901, 41.237175, 27.884424>,  <34.137844, 40.960110, 27.660614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319901, 41.237175, 27.884424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357601, -0.433288, 0.827274,
		0.815458, -0.576609, 0.050492,
		0.455137, 0.692664, 0.559525,
		34.456440, 41.444973, 28.052282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522869, 40.550369, 28.185772>,  <34.137844, 40.960110, 27.660614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522869, 40.550369, 28.185772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488613, 40.921173, 28.331827>,  <34.468060, 41.143654, 28.419460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488613, 40.921173, 28.331827>,  <34.522869, 40.550369, 28.185772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488613, 40.921173, 28.331827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055900, -0.361436, 0.930720,
		0.994757, 0.100117, -0.020867,
		-0.085639, 0.927006, 0.365137,
		34.462921, 41.199276, 28.441368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982853, 40.521572, 28.805384>,  <34.522869, 40.550369, 28.185772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982853, 40.521572, 28.805384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713058, 40.816319, 28.823681>,  <34.551182, 40.993168, 28.834660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713058, 40.816319, 28.823681>,  <34.982853, 40.521572, 28.805384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713058, 40.816319, 28.823681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280593, -0.313163, 0.907302,
		0.682884, 0.599131, 0.417984,
		-0.674490, 0.736865, 0.045742,
		34.510712, 41.037376, 28.837404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910847, 40.491165, 29.526598>,  <34.982853, 40.521572, 28.805384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910847, 40.491165, 29.526598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621754, 40.740852, 29.407928>,  <34.448299, 40.890663, 29.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621754, 40.740852, 29.407928>,  <34.910847, 40.491165, 29.526598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621754, 40.740852, 29.407928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601421, -0.356534, 0.714966,
		0.340521, 0.695152, 0.633095,
		-0.722730, 0.624218, -0.296672,
		34.404934, 40.928116, 29.318928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748089, 40.872204, 30.101112>,  <34.910847, 40.491165, 29.526598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748089, 40.872204, 30.101112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433994, 40.872555, 29.853436>,  <34.245537, 40.872765, 29.704830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433994, 40.872555, 29.853436>,  <34.748089, 40.872204, 30.101112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433994, 40.872555, 29.853436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552774, -0.451570, 0.700376,
		-0.278996, 0.892235, 0.355073,
		-0.785240, 0.000873, -0.619191,
		34.198421, 40.872818, 29.667679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145119, 41.068428, 30.431881>,  <34.748089, 40.872204, 30.101112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145119, 41.068428, 30.431881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999836, 40.859886, 30.123007>,  <33.912666, 40.734760, 29.937683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999836, 40.859886, 30.123007>,  <34.145119, 41.068428, 30.431881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999836, 40.859886, 30.123007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608333, -0.495043, 0.620374,
		-0.705702, 0.695067, -0.137359,
		-0.363202, -0.521359, -0.772184,
		33.890877, 40.703480, 29.891352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441010, 40.869209, 30.649174>,  <34.145119, 41.068428, 30.431881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441010, 40.869209, 30.649174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520027, 40.607288, 30.357363>,  <33.567436, 40.450134, 30.182276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520027, 40.607288, 30.357363>,  <33.441010, 40.869209, 30.649174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520027, 40.607288, 30.357363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695082, -0.618331, 0.366781,
		-0.691258, 0.434625, -0.577290,
		0.197544, -0.654804, -0.729526,
		33.579292, 40.410847, 30.138504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788982, 40.702419, 30.385769>,  <33.441010, 40.869209, 30.649174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788982, 40.702419, 30.385769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043026, 40.410431, 30.284752>,  <33.195450, 40.235237, 30.224142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043026, 40.410431, 30.284752>,  <32.788982, 40.702419, 30.385769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043026, 40.410431, 30.284752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638692, -0.680160, 0.359798,
		-0.434411, -0.067214, -0.898203,
		0.635106, -0.729975, -0.252540,
		33.233559, 40.191437, 30.208990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382626, 40.166386, 29.999081>,  <32.788982, 40.702419, 30.385769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382626, 40.166386, 29.999081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695148, 39.965828, 30.147758>,  <32.882664, 39.845493, 30.236965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695148, 39.965828, 30.147758>,  <32.382626, 40.166386, 29.999081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695148, 39.965828, 30.147758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623359, -0.656700, 0.424464,
		0.031269, -0.563337, -0.825635,
		0.781311, -0.501394, 0.371695,
		32.929543, 39.815411, 30.259268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154209, 39.382153, 29.946165>,  <32.382626, 40.166386, 29.999081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154209, 39.382153, 29.946165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456722, 39.385834, 30.207838>,  <32.638229, 39.388042, 30.364841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456722, 39.385834, 30.207838>,  <32.154209, 39.382153, 29.946165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456722, 39.385834, 30.207838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510740, -0.616596, 0.599128,
		0.408880, -0.787226, -0.461620,
		0.756282, 0.009204, 0.654181,
		32.683605, 39.388596, 30.404093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098820, 38.732189, 30.081665>,  <32.154209, 39.382153, 29.946165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098820, 38.732189, 30.081665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347424, 38.869373, 30.363401>,  <32.496586, 38.951683, 30.532444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347424, 38.869373, 30.363401>,  <32.098820, 38.732189, 30.081665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347424, 38.869373, 30.363401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330862, -0.700046, 0.632824,
		0.710108, -0.626348, -0.321614,
		0.621512, 0.342964, 0.704343,
		32.533878, 38.972263, 30.574703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468666, 38.140579, 30.373152>,  <32.098820, 38.732189, 30.081665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468666, 38.140579, 30.373152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528980, 38.446545, 30.623646>,  <32.565170, 38.630123, 30.773943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528980, 38.446545, 30.623646>,  <32.468666, 38.140579, 30.373152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528980, 38.446545, 30.623646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144152, -0.609694, 0.779418,
		0.978000, -0.207798, 0.018331,
		0.150785, 0.764914, 0.626235,
		32.574215, 38.676018, 30.811516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918137, 37.921394, 30.839001>,  <32.468666, 38.140579, 30.373152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918137, 37.921394, 30.839001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729008, 38.208073, 31.044048>,  <32.615528, 38.380081, 31.167078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729008, 38.208073, 31.044048>,  <32.918137, 37.921394, 30.839001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729008, 38.208073, 31.044048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122478, -0.629567, 0.767232,
		0.872602, 0.299982, 0.385456,
		-0.472826, 0.716698, 0.512620,
		32.587158, 38.423080, 31.197834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163765, 37.912563, 31.516611>,  <32.918137, 37.921394, 30.839001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163765, 37.912563, 31.516611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808395, 38.091282, 31.558687>,  <32.595173, 38.198513, 31.583933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808395, 38.091282, 31.558687>,  <33.163765, 37.912563, 31.516611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808395, 38.091282, 31.558687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199470, -0.582194, 0.788202,
		0.413409, 0.679278, 0.606361,
		-0.888428, 0.446801, 0.105189,
		32.541866, 38.225323, 31.590244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151081, 38.070312, 32.225952>,  <33.163765, 37.912563, 31.516611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151081, 38.070312, 32.225952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772076, 38.078991, 32.098362>,  <32.544674, 38.084198, 32.021809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772076, 38.078991, 32.098362>,  <33.151081, 38.070312, 32.225952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772076, 38.078991, 32.098362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282246, -0.525434, 0.802656,
		-0.150184, 0.850558, 0.503980,
		-0.947514, 0.021700, -0.318978,
		32.487820, 38.085503, 32.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769009, 38.250050, 32.749424>,  <33.151081, 38.070312, 32.225952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769009, 38.250050, 32.749424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531250, 38.051399, 32.496426>,  <32.388596, 37.932209, 32.344627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531250, 38.051399, 32.496426>,  <32.769009, 38.250050, 32.749424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531250, 38.051399, 32.496426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371783, -0.527706, 0.763743,
		-0.713069, 0.689119, 0.129029,
		-0.594399, -0.496630, -0.632493,
		32.352932, 37.902409, 32.306679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325291, 38.017864, 33.140839>,  <32.769009, 38.250050, 32.749424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325291, 38.017864, 33.140839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243835, 37.805603, 32.811733>,  <32.194962, 37.678246, 32.614269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243835, 37.805603, 32.811733>,  <32.325291, 38.017864, 33.140839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243835, 37.805603, 32.811733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635585, -0.567556, 0.523366,
		-0.744690, 0.629513, -0.221699,
		-0.203639, -0.530654, -0.822762,
		32.182743, 37.646408, 32.564903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497450, 37.984810, 33.039600>,  <32.325291, 38.017864, 33.140839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497450, 37.984810, 33.039600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649429, 37.670319, 32.844669>,  <31.740618, 37.481625, 32.727711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649429, 37.670319, 32.844669>,  <31.497450, 37.984810, 33.039600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649429, 37.670319, 32.844669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508296, -0.617628, 0.600142,
		-0.772835, 0.019684, -0.634302,
		0.379949, -0.786224, -0.487330,
		31.763414, 37.434452, 32.698471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910715, 37.534855, 32.924400>,  <31.497450, 37.984810, 33.039600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910715, 37.534855, 32.924400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225281, 37.290123, 32.890419>,  <31.414021, 37.143284, 32.870029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225281, 37.290123, 32.890419>,  <30.910715, 37.534855, 32.924400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225281, 37.290123, 32.890419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504443, -0.715495, 0.483327,
		-0.356499, -0.337240, -0.871308,
		0.786414, -0.611831, -0.084955,
		31.461205, 37.106575, 32.864933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608162, 36.854065, 32.827106>,  <30.910715, 37.534855, 32.924400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608162, 36.854065, 32.827106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987278, 36.766945, 32.920277>,  <31.214748, 36.714672, 32.976181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987278, 36.766945, 32.920277>,  <30.608162, 36.854065, 32.827106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987278, 36.766945, 32.920277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311924, -0.785063, 0.535144,
		0.066308, -0.579860, -0.812013,
		0.947790, -0.217802, 0.232928,
		31.271616, 36.701603, 32.990154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835495, 36.082783, 32.747681>,  <30.608162, 36.854065, 32.827106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835495, 36.082783, 32.747681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116570, 36.211281, 33.001621>,  <31.285215, 36.288380, 33.153984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116570, 36.211281, 33.001621>,  <30.835495, 36.082783, 32.747681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116570, 36.211281, 33.001621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085396, -0.847739, 0.523494,
		0.706355, -0.422066, -0.568263,
		0.702688, 0.321246, 0.634848,
		31.327375, 36.307655, 33.192074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298464, 35.549831, 32.842873>,  <30.835495, 36.082783, 32.747681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298464, 35.549831, 32.842873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333666, 35.779366, 33.168564>,  <31.354786, 35.917088, 33.363979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333666, 35.779366, 33.168564>,  <31.298464, 35.549831, 32.842873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333666, 35.779366, 33.168564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022547, -0.818336, 0.574298,
		0.995865, -0.032181, -0.084954,
		0.088003, 0.573838, 0.814227,
		31.360067, 35.951515, 33.412830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893843, 35.248497, 33.189449>,  <31.298464, 35.549831, 32.842873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893843, 35.248497, 33.189449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699005, 35.470634, 33.459068>,  <31.582102, 35.603916, 33.620838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699005, 35.470634, 33.459068>,  <31.893843, 35.248497, 33.189449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699005, 35.470634, 33.459068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223654, -0.825375, 0.518398,
		0.844227, 0.101755, 0.526238,
		-0.487093, 0.555340, 0.674046,
		31.552877, 35.637238, 33.661282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365944, 34.963074, 33.714989>,  <31.893843, 35.248497, 33.189449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365944, 34.963074, 33.714989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721821, 34.870052, 33.872147>,  <32.935349, 34.814240, 33.966442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721821, 34.870052, 33.872147>,  <32.365944, 34.963074, 33.714989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721821, 34.870052, 33.872147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455892, 0.499114, -0.736918,
		-0.024725, 0.834747, 0.550078,
		0.889692, -0.232556, 0.392895,
		32.988728, 34.800285, 33.990017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820889, 35.606865, 33.646122>,  <32.365944, 34.963074, 33.714989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820889, 35.606865, 33.646122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102318, 35.328003, 33.701210>,  <33.271175, 35.160686, 33.734264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102318, 35.328003, 33.701210>,  <32.820889, 35.606865, 33.646122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102318, 35.328003, 33.701210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671373, 0.588585, -0.450362,
		0.232908, 0.409326, 0.882160,
		0.703571, -0.697152, 0.137724,
		33.313389, 35.118858, 33.742527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435879, 35.910915, 33.922142>,  <32.820889, 35.606865, 33.646122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435879, 35.910915, 33.922142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546623, 35.564171, 33.756298>,  <33.613071, 35.356125, 33.656792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546623, 35.564171, 33.756298>,  <33.435879, 35.910915, 33.922142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546623, 35.564171, 33.756298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679614, 0.481684, -0.553268,
		0.679317, -0.128596, 0.722490,
		0.276863, -0.866859, -0.414612,
		33.629681, 35.304111, 33.631916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214737, 35.790184, 34.117409>,  <33.435879, 35.910915, 33.922142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214737, 35.790184, 34.117409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148735, 35.539845, 33.812492>,  <34.109135, 35.389641, 33.629543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148735, 35.539845, 33.812492>,  <34.214737, 35.790184, 34.117409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148735, 35.539845, 33.812492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837680, 0.319061, -0.443276,
		0.520641, -0.711697, 0.471615,
		-0.165004, -0.625850, -0.762290,
		34.099236, 35.352089, 33.583805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798824, 35.445076, 34.010670>,  <34.214737, 35.790184, 34.117409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798824, 35.445076, 34.010670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615185, 35.443245, 33.655319>,  <34.505001, 35.442146, 33.442108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615185, 35.443245, 33.655319>,  <34.798824, 35.445076, 34.010670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615185, 35.443245, 33.655319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847640, 0.297119, -0.439576,
		0.265963, -0.954829, -0.132531,
		-0.459098, -0.004572, -0.888374,
		34.477455, 35.441872, 33.388805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275486, 35.246971, 33.514114>,  <34.798824, 35.445076, 34.010670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275486, 35.246971, 33.514114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005383, 35.427052, 33.280418>,  <34.843319, 35.535099, 33.140202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005383, 35.427052, 33.280418>,  <35.275486, 35.246971, 33.514114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005383, 35.427052, 33.280418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731863, 0.310542, -0.606581,
		-0.091652, -0.837187, -0.539183,
		-0.675260, 0.450202, -0.584244,
		34.802803, 35.562111, 33.105145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487698, 35.001205, 32.854435>,  <35.275486, 35.246971, 33.514114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487698, 35.001205, 32.854435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267883, 35.317520, 32.746609>,  <35.135994, 35.507309, 32.681911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267883, 35.317520, 32.746609>,  <35.487698, 35.001205, 32.854435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267883, 35.317520, 32.746609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724141, 0.289908, -0.625758,
		-0.416691, -0.539081, -0.731957,
		-0.549534, 0.790788, -0.269568,
		35.103024, 35.554756, 32.665737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506245, 35.071507, 32.095341>,  <35.487698, 35.001205, 32.854435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506245, 35.071507, 32.095341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371677, 35.430656, 32.208935>,  <35.290939, 35.646145, 32.277092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371677, 35.430656, 32.208935>,  <35.506245, 35.071507, 32.095341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371677, 35.430656, 32.208935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456445, 0.419238, -0.784791,
		-0.823701, -0.134391, -0.550868,
		-0.336413, 0.897874, 0.283985,
		35.270752, 35.700020, 32.294128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231411, 35.457630, 31.511513>,  <35.506245, 35.071507, 32.095341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231411, 35.457630, 31.511513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311153, 35.729527, 31.793850>,  <35.359001, 35.892662, 31.963253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311153, 35.729527, 31.793850>,  <35.231411, 35.457630, 31.511513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311153, 35.729527, 31.793850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314129, 0.637958, -0.703087,
		-0.928212, 0.361893, -0.086341,
		0.199360, 0.679737, 0.705842,
		35.370960, 35.933449, 32.005604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906590, 35.987621, 31.260439>,  <35.231411, 35.457630, 31.511513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906590, 35.987621, 31.260439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191631, 36.138069, 31.497328>,  <35.362656, 36.228340, 31.639462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191631, 36.138069, 31.497328>,  <34.906590, 35.987621, 31.260439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191631, 36.138069, 31.497328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201876, 0.698508, -0.686537,
		-0.671895, 0.608784, 0.421828,
		0.712603, 0.376124, 0.592223,
		35.405411, 36.250908, 31.674995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907310, 36.681965, 31.188808>,  <34.906590, 35.987621, 31.260439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907310, 36.681965, 31.188808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267151, 36.641590, 31.358765>,  <35.483055, 36.617367, 31.460739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267151, 36.641590, 31.358765>,  <34.907310, 36.681965, 31.188808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267151, 36.641590, 31.358765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364982, 0.708018, -0.604565,
		-0.239809, 0.698944, 0.673772,
		0.899600, -0.100935, 0.424891,
		35.537029, 36.611309, 31.486233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148823, 37.372719, 31.518250>,  <34.907310, 36.681965, 31.188808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148823, 37.372719, 31.518250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462574, 37.138905, 31.435244>,  <35.650826, 36.998615, 31.385441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462574, 37.138905, 31.435244>,  <35.148823, 37.372719, 31.518250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462574, 37.138905, 31.435244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365262, 0.705674, -0.607130,
		0.501328, 0.400424, 0.767027,
		0.784381, -0.584537, -0.207515,
		35.697887, 36.963543, 31.372990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640427, 37.854736, 31.471058>,  <35.148823, 37.372719, 31.518250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640427, 37.854736, 31.471058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811008, 37.525398, 31.321270>,  <35.913357, 37.327793, 31.231398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811008, 37.525398, 31.321270>,  <35.640427, 37.854736, 31.471058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811008, 37.525398, 31.321270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442932, 0.551065, -0.707204,
		0.788635, 0.135727, 0.599694,
		0.426457, -0.823350, -0.374472,
		35.938946, 37.278393, 31.208929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371292, 38.000748, 31.449295>,  <35.640427, 37.854736, 31.471058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371292, 38.000748, 31.449295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274704, 37.711357, 31.190598>,  <36.216751, 37.537724, 31.035379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274704, 37.711357, 31.190598>,  <36.371292, 38.000748, 31.449295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274704, 37.711357, 31.190598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361239, 0.551554, -0.751860,
		0.900666, -0.415180, 0.128164,
		-0.241469, -0.723473, -0.646746,
		36.202263, 37.494316, 30.996574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886936, 38.144688, 30.948980>,  <36.371292, 38.000748, 31.449295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886936, 38.144688, 30.948980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634171, 37.893333, 30.767513>,  <36.482510, 37.742519, 30.658632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634171, 37.893333, 30.767513>,  <36.886936, 38.144688, 30.948980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634171, 37.893333, 30.767513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095649, 0.517645, -0.850232,
		0.769112, -0.580668, -0.267004,
		-0.631916, -0.628385, -0.453668,
		36.444595, 37.704819, 30.631413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231514, 37.870220, 30.357677>,  <36.886936, 38.144688, 30.948980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231514, 37.870220, 30.357677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835255, 37.840324, 30.312004>,  <36.597500, 37.822388, 30.284601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835255, 37.840324, 30.312004>,  <37.231514, 37.870220, 30.357677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835255, 37.840324, 30.312004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083100, 0.333313, -0.939147,
		0.108249, -0.939850, -0.323984,
		-0.990644, -0.074738, -0.114182,
		36.538063, 37.817902, 30.277750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147137, 37.585560, 29.711298>,  <37.231514, 37.870220, 30.357677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147137, 37.585560, 29.711298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801247, 37.776505, 29.773746>,  <36.593712, 37.891071, 29.811214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801247, 37.776505, 29.773746>,  <37.147137, 37.585560, 29.711298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801247, 37.776505, 29.773746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178212, 0.582255, -0.793234,
		-0.469558, -0.658110, -0.588563,
		-0.864729, 0.477358, 0.156120,
		36.541828, 37.919712, 29.820581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706017, 37.485485, 29.133554>,  <37.147137, 37.585560, 29.711298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706017, 37.485485, 29.133554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599243, 37.829002, 29.308470>,  <36.535179, 38.035114, 29.413418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599243, 37.829002, 29.308470>,  <36.706017, 37.485485, 29.133554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599243, 37.829002, 29.308470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077978, 0.471510, -0.878406,
		-0.960556, -0.200373, -0.192827,
		-0.266929, 0.858795, 0.437287,
		36.519165, 38.086639, 29.439655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110317, 37.708706, 28.725574>,  <36.706017, 37.485485, 29.133554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110317, 37.708706, 28.725574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251595, 38.021244, 28.931391>,  <36.336361, 38.208767, 29.054880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251595, 38.021244, 28.931391>,  <36.110317, 37.708706, 28.725574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251595, 38.021244, 28.931391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078546, 0.572809, -0.815917,
		-0.932249, 0.247758, 0.263683,
		0.353190, 0.781348, 0.514540,
		36.357552, 38.255650, 29.085752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682858, 38.280933, 28.553415>,  <36.110317, 37.708706, 28.725574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682858, 38.280933, 28.553415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009777, 38.460789, 28.697552>,  <36.205929, 38.568703, 28.784033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009777, 38.460789, 28.697552>,  <35.682858, 38.280933, 28.553415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009777, 38.460789, 28.697552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010942, 0.637362, -0.770487,
		-0.576107, 0.625777, 0.525836,
		0.817301, 0.449637, 0.360341,
		36.254967, 38.595680, 28.805655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626759, 39.101036, 28.424730>,  <35.682858, 38.280933, 28.553415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626759, 39.101036, 28.424730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019478, 39.070122, 28.494122>,  <36.255112, 39.051575, 28.535757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019478, 39.070122, 28.494122>,  <35.626759, 39.101036, 28.424730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019478, 39.070122, 28.494122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181401, 0.652056, -0.736150,
		-0.056225, 0.754221, 0.654208,
		0.981801, -0.077284, 0.173478,
		36.314018, 39.046936, 28.546165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866970, 39.746635, 28.333212>,  <35.626759, 39.101036, 28.424730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866970, 39.746635, 28.333212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196941, 39.527187, 28.278805>,  <36.394924, 39.395519, 28.246161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196941, 39.527187, 28.278805>,  <35.866970, 39.746635, 28.333212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196941, 39.527187, 28.278805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205045, 0.514707, -0.832486,
		0.526728, 0.658856, 0.537091,
		0.824933, -0.548622, -0.136016,
		36.444420, 39.362602, 28.238001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593250, 40.180054, 28.375294>,  <35.866970, 39.746635, 28.333212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593250, 40.180054, 28.375294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573685, 39.857903, 28.138998>,  <36.561943, 39.664612, 27.997221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573685, 39.857903, 28.138998>,  <36.593250, 40.180054, 28.375294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573685, 39.857903, 28.138998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334238, 0.544151, -0.769536,
		0.941219, -0.235091, 0.242570,
		-0.048916, -0.805377, -0.590741,
		36.559010, 39.616291, 27.961775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318718, 40.015217, 28.080544>,  <36.593250, 40.180054, 28.375294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318718, 40.015217, 28.080544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026165, 39.878876, 27.844273>,  <36.850632, 39.797070, 27.702509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026165, 39.878876, 27.844273>,  <37.318718, 40.015217, 28.080544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026165, 39.878876, 27.844273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454744, 0.401717, -0.794878,
		0.508224, -0.849965, -0.138806,
		-0.731380, -0.340855, -0.590679,
		36.806751, 39.776619, 27.667068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640110, 39.958141, 27.489716>,  <37.318718, 40.015217, 28.080544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640110, 39.958141, 27.489716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260899, 39.910767, 27.371584>,  <37.033371, 39.882339, 27.300705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260899, 39.910767, 27.371584>,  <37.640110, 39.958141, 27.489716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260899, 39.910767, 27.371584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240435, 0.341298, -0.908684,
		0.208419, -0.932463, -0.295083,
		-0.948025, -0.118439, -0.295330,
		36.976490, 39.875233, 27.282986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629990, 39.500324, 26.913181>,  <37.640110, 39.958141, 27.489716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629990, 39.500324, 26.913181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302998, 39.728519, 26.881498>,  <37.106804, 39.865437, 26.862488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302998, 39.728519, 26.881498>,  <37.629990, 39.500324, 26.913181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302998, 39.728519, 26.881498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204481, 0.158904, -0.965887,
		-0.538442, -0.805786, -0.246555,
		-0.817477, 0.570489, -0.079207,
		37.057755, 39.899666, 26.857737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497810, 39.421093, 26.227854>,  <37.629990, 39.500324, 26.913181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497810, 39.421093, 26.227854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275253, 39.743267, 26.309530>,  <37.141720, 39.936573, 26.358536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275253, 39.743267, 26.309530>,  <37.497810, 39.421093, 26.227854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275253, 39.743267, 26.309530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075786, 0.293907, -0.952825,
		-0.827456, -0.514670, -0.224569,
		-0.556393, 0.805440, 0.204190,
		37.108334, 39.984898, 26.370787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846203, 39.411816, 25.708740>,  <37.497810, 39.421093, 26.227854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846203, 39.411816, 25.708740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929958, 39.781147, 25.837500>,  <36.980213, 40.002747, 25.914755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929958, 39.781147, 25.837500>,  <36.846203, 39.411816, 25.708740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929958, 39.781147, 25.837500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072318, 0.313673, -0.946773,
		-0.975154, 0.221527, -0.001092,
		0.209393, 0.923328, 0.321900,
		36.992775, 40.058144, 25.934071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242104, 39.843140, 25.395525>,  <36.846203, 39.411816, 25.708740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242104, 39.843140, 25.395525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537769, 40.093872, 25.494095>,  <36.715168, 40.244312, 25.553236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537769, 40.093872, 25.494095>,  <36.242104, 39.843140, 25.395525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537769, 40.093872, 25.494095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055615, 0.307818, -0.949818,
		-0.671230, 0.715772, 0.192666,
		0.739159, 0.626832, 0.246425,
		36.759518, 40.281921, 25.568022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109188, 40.473381, 24.957888>,  <36.242104, 39.843140, 25.395525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109188, 40.473381, 24.957888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497841, 40.481411, 25.052149>,  <36.731033, 40.486229, 25.108706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497841, 40.481411, 25.052149>,  <36.109188, 40.473381, 24.957888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497841, 40.481411, 25.052149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224721, 0.232227, -0.946346,
		-0.073725, 0.972454, 0.221127,
		0.971630, 0.020077, 0.235651,
		36.789330, 40.487434, 25.122845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376408, 41.106220, 24.678612>,  <36.109188, 40.473381, 24.957888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376408, 41.106220, 24.678612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698971, 40.873222, 24.719410>,  <36.892509, 40.733425, 24.743889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698971, 40.873222, 24.719410>,  <36.376408, 41.106220, 24.678612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698971, 40.873222, 24.719410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375581, 0.371266, -0.849176,
		0.456773, 0.723092, 0.518166,
		0.806410, -0.582494, 0.101996,
		36.940895, 40.698475, 24.750010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911194, 41.638847, 24.617649>,  <36.376408, 41.106220, 24.678612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911194, 41.638847, 24.617649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066113, 41.275051, 24.557224>,  <37.159065, 41.056774, 24.520969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066113, 41.275051, 24.557224>,  <36.911194, 41.638847, 24.617649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066113, 41.275051, 24.557224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656280, 0.387045, -0.647683,
		0.647532, 0.151708, 0.746785,
		0.387298, -0.909495, -0.151061,
		37.182301, 41.002201, 24.511906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737637, 41.661182, 24.619791>,  <36.911194, 41.638847, 24.617649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737637, 41.661182, 24.619791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602901, 41.354115, 24.401716>,  <37.522060, 41.169876, 24.270872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602901, 41.354115, 24.401716>,  <37.737637, 41.661182, 24.619791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602901, 41.354115, 24.401716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654423, 0.225425, -0.721743,
		0.676957, -0.599892, 0.426448,
		-0.336837, -0.767667, -0.545187,
		37.501850, 41.123814, 24.238161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309235, 41.465099, 24.286316>,  <37.737637, 41.661182, 24.619791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309235, 41.465099, 24.286316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061703, 41.245480, 24.061604>,  <37.913185, 41.113708, 23.926777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061703, 41.245480, 24.061604>,  <38.309235, 41.465099, 24.286316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061703, 41.245480, 24.061604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588430, 0.149770, -0.794556,
		0.520390, -0.822260, 0.230396,
		-0.618825, -0.549051, -0.561782,
		37.876057, 41.080765, 23.893068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781311, 41.287720, 23.773924>,  <38.309235, 41.465099, 24.286316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781311, 41.287720, 23.773924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427002, 41.200043, 23.610285>,  <38.214417, 41.147438, 23.512100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427002, 41.200043, 23.610285>,  <38.781311, 41.287720, 23.773924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427002, 41.200043, 23.610285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408619, 0.049683, -0.911352,
		0.220085, -0.974416, 0.045557,
		-0.885773, -0.219190, -0.409100,
		38.161270, 41.134285, 23.487555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879555, 40.739677, 23.315762>,  <38.781311, 41.287720, 23.773924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879555, 40.739677, 23.315762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538284, 40.896568, 23.178209>,  <38.333523, 40.990704, 23.095678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538284, 40.896568, 23.178209>,  <38.879555, 40.739677, 23.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538284, 40.896568, 23.178209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421315, 0.129456, -0.897627,
		-0.307556, -0.910714, -0.275699,
		-0.853172, 0.392227, -0.343883,
		38.282333, 41.014236, 23.075045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765514, 40.358025, 22.626905>,  <38.879555, 40.739677, 23.315762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765514, 40.358025, 22.626905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554939, 40.698078, 22.622213>,  <38.428593, 40.902111, 22.619398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554939, 40.698078, 22.622213>,  <38.765514, 40.358025, 22.626905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554939, 40.698078, 22.622213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249357, 0.141194, -0.958063,
		-0.812825, -0.507286, -0.286316,
		-0.526438, 0.850132, -0.011729,
		38.397007, 40.953117, 22.618694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290401, 40.379314, 22.067858>,  <38.765514, 40.358025, 22.626905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290401, 40.379314, 22.067858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377537, 40.762447, 22.142801>,  <38.429817, 40.992329, 22.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377537, 40.762447, 22.142801>,  <38.290401, 40.379314, 22.067858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377537, 40.762447, 22.142801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116013, 0.165196, -0.979414,
		-0.969066, 0.235086, -0.075135,
		0.217835, 0.957834, 0.187358,
		38.442886, 41.049797, 22.199009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394432, 40.107948, 21.355072>,  <38.290401, 40.379314, 22.067858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394432, 40.107948, 21.355072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370472, 39.711498, 21.307610>,  <38.356094, 39.473629, 21.279133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370472, 39.711498, 21.307610>,  <38.394432, 40.107948, 21.355072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370472, 39.711498, 21.307610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510836, -0.071685, 0.856684,
		-0.857589, 0.111932, -0.502009,
		-0.059904, -0.991127, -0.118655,
		38.352501, 39.414162, 21.272013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821476, 39.973789, 21.674501>,  <38.394432, 40.107948, 21.355072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821476, 39.973789, 21.674501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034657, 39.636654, 21.644634>,  <38.162567, 39.434372, 21.626713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034657, 39.636654, 21.644634>,  <37.821476, 39.973789, 21.674501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034657, 39.636654, 21.644634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444445, -0.353941, 0.822918,
		-0.720018, -0.405392, -0.563232,
		0.532955, -0.842842, -0.074670,
		38.194542, 39.383801, 21.622232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308189, 39.343388, 21.765715>,  <37.821476, 39.973789, 21.674501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308189, 39.343388, 21.765715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677937, 39.220127, 21.855679>,  <37.899784, 39.146172, 21.909657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677937, 39.220127, 21.855679>,  <37.308189, 39.343388, 21.765715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677937, 39.220127, 21.855679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341176, -0.403930, 0.848787,
		-0.170710, -0.861325, -0.478515,
		0.924369, -0.308154, 0.224909,
		37.955246, 39.127682, 21.923151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292400, 38.590145, 21.914942>,  <37.308189, 39.343388, 21.765715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292400, 38.590145, 21.914942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643929, 38.678329, 22.084208>,  <37.854847, 38.731239, 22.185766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643929, 38.678329, 22.084208>,  <37.292400, 38.590145, 21.914942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643929, 38.678329, 22.084208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258949, -0.524532, 0.811056,
		0.400768, -0.822352, -0.403883,
		0.878823, 0.220460, 0.423163,
		37.907578, 38.744469, 22.211157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477802, 37.882263, 22.261806>,  <37.292400, 38.590145, 21.914942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477802, 37.882263, 22.261806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688728, 38.173016, 22.437799>,  <37.815285, 38.347469, 22.543394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688728, 38.173016, 22.437799>,  <37.477802, 37.882263, 22.261806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688728, 38.173016, 22.437799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211780, -0.389042, 0.896546,
		0.822857, -0.565937, -0.051206,
		0.527310, 0.726884, 0.439980,
		37.846920, 38.391083, 22.569794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061569, 37.572964, 22.718809>,  <37.477802, 37.882263, 22.261806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061569, 37.572964, 22.718809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974361, 37.947731, 22.828100>,  <37.922035, 38.172592, 22.893675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974361, 37.947731, 22.828100>,  <38.061569, 37.572964, 22.718809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974361, 37.947731, 22.828100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160063, -0.310498, 0.937001,
		0.962728, 0.160555, 0.217661,
		-0.218024, 0.936917, 0.273226,
		37.908955, 38.228806, 22.910069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397621, 37.553547, 23.454155>,  <38.061569, 37.572964, 22.718809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397621, 37.553547, 23.454155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154339, 37.871048, 23.456663>,  <38.008369, 38.061550, 23.458168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154339, 37.871048, 23.456663>,  <38.397621, 37.553547, 23.454155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154339, 37.871048, 23.456663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231203, -0.184699, 0.955213,
		0.759364, 0.579515, 0.295853,
		-0.608204, 0.793756, 0.006268,
		37.971878, 38.109177, 23.458544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529846, 37.901173, 24.050695>,  <38.397621, 37.553547, 23.454155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529846, 37.901173, 24.050695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174637, 38.051945, 23.945366>,  <37.961514, 38.142410, 23.882168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174637, 38.051945, 23.945366>,  <38.529846, 37.901173, 24.050695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174637, 38.051945, 23.945366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333060, -0.132482, 0.933552,
		0.317002, 0.916717, 0.243188,
		-0.888021, 0.376934, -0.263325,
		37.908230, 38.165024, 23.866369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389194, 38.262440, 24.627445>,  <38.529846, 37.901173, 24.050695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389194, 38.262440, 24.627445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049236, 38.209423, 24.423443>,  <37.845261, 38.177612, 24.301043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049236, 38.209423, 24.423443>,  <38.389194, 38.262440, 24.627445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049236, 38.209423, 24.423443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484757, -0.182810, 0.855331,
		-0.206597, 0.974174, 0.091122,
		-0.849899, -0.132537, -0.510005,
		37.794266, 38.169662, 24.270441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923538, 38.613338, 24.934175>,  <38.389194, 38.262440, 24.627445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923538, 38.613338, 24.934175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694878, 38.353310, 24.733927>,  <37.557682, 38.197292, 24.613777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694878, 38.353310, 24.733927>,  <37.923538, 38.613338, 24.934175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694878, 38.353310, 24.733927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557557, -0.139855, 0.818273,
		-0.601953, 0.746889, -0.282505,
		-0.571649, -0.650074, -0.500620,
		37.523384, 38.158287, 24.583740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292770, 38.627151, 25.394213>,  <37.923538, 38.613338, 24.934175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292770, 38.627151, 25.394213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266369, 38.308216, 25.154249>,  <37.250530, 38.116856, 25.010271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266369, 38.308216, 25.154249>,  <37.292770, 38.627151, 25.394213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266369, 38.308216, 25.154249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463148, -0.508051, 0.726208,
		-0.883820, 0.325777, -0.335756,
		-0.066000, -0.797342, -0.599908,
		37.246571, 38.069012, 24.974277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673840, 38.362152, 25.532833>,  <37.292770, 38.627151, 25.394213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673840, 38.362152, 25.532833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867390, 38.053066, 25.368502>,  <36.983521, 37.867615, 25.269903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867390, 38.053066, 25.368502>,  <36.673840, 38.362152, 25.532833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867390, 38.053066, 25.368502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279566, -0.581329, 0.764133,
		-0.829282, -0.254891, -0.497315,
		0.483874, -0.772714, -0.410827,
		37.012550, 37.821251, 25.245255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292641, 37.702175, 25.446795>,  <36.673840, 38.362152, 25.532833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292641, 37.702175, 25.446795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669678, 37.576942, 25.493263>,  <36.895901, 37.501804, 25.521145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669678, 37.576942, 25.493263>,  <36.292641, 37.702175, 25.446795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669678, 37.576942, 25.493263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281414, -0.557444, 0.781065,
		-0.179775, -0.768921, -0.613549,
		0.942596, -0.313077, 0.116170,
		36.952457, 37.483021, 25.528114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264122, 36.993343, 25.646988>,  <36.292641, 37.702175, 25.446795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264122, 36.993343, 25.646988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631435, 37.112171, 25.751678>,  <36.851826, 37.183468, 25.814493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631435, 37.112171, 25.751678>,  <36.264122, 36.993343, 25.646988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631435, 37.112171, 25.751678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115443, -0.431432, 0.894728,
		0.378712, -0.851831, -0.361884,
		0.918286, 0.297068, 0.261727,
		36.906921, 37.201290, 25.830196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472141, 36.377350, 25.924580>,  <36.264122, 36.993343, 25.646988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472141, 36.377350, 25.924580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722401, 36.656982, 26.063051>,  <36.872559, 36.824760, 26.146135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722401, 36.656982, 26.063051>,  <36.472141, 36.377350, 25.924580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722401, 36.656982, 26.063051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003626, -0.446365, 0.894844,
		0.780093, -0.558606, -0.281805,
		0.625653, 0.699083, 0.346181,
		36.910095, 36.866707, 26.166906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930515, 35.945858, 26.271063>,  <36.472141, 36.377350, 25.924580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930515, 35.945858, 26.271063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986542, 36.315575, 26.413084>,  <37.020157, 36.537407, 26.498297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986542, 36.315575, 26.413084>,  <36.930515, 35.945858, 26.271063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986542, 36.315575, 26.413084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293870, -0.381237, 0.876527,
		0.945527, -0.018434, -0.325021,
		0.140068, 0.924294, 0.355052,
		37.028561, 36.592861, 26.519600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527615, 35.929356, 26.636644>,  <36.930515, 35.945858, 26.271063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527615, 35.929356, 26.636644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345768, 36.251793, 26.788189>,  <37.236660, 36.445255, 26.879116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345768, 36.251793, 26.788189>,  <37.527615, 35.929356, 26.636644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345768, 36.251793, 26.788189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140277, -0.355252, 0.924185,
		0.879570, 0.473298, 0.048429,
		-0.454620, 0.806092, 0.378862,
		37.209381, 36.493622, 26.901848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943913, 36.114544, 27.195848>,  <37.527615, 35.929356, 26.636644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943913, 36.114544, 27.195848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583454, 36.279198, 27.250237>,  <37.367180, 36.377991, 27.282869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583454, 36.279198, 27.250237>,  <37.943913, 36.114544, 27.195848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583454, 36.279198, 27.250237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094172, -0.492032, 0.865469,
		0.423162, 0.767110, 0.482158,
		-0.901147, 0.411639, 0.135969,
		37.313110, 36.402691, 27.291027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015373, 36.423565, 27.878933>,  <37.943913, 36.114544, 27.195848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015373, 36.423565, 27.878933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625469, 36.370594, 27.807039>,  <37.391525, 36.338810, 27.763903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625469, 36.370594, 27.807039>,  <38.015373, 36.423565, 27.878933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625469, 36.370594, 27.807039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096359, -0.476653, 0.873794,
		-0.201387, 0.869059, 0.451862,
		-0.974760, -0.132430, -0.179734,
		37.333042, 36.330864, 27.753119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610481, 36.638721, 28.450491>,  <38.015373, 36.423565, 27.878933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610481, 36.638721, 28.450491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357262, 36.379818, 28.280642>,  <37.205330, 36.224476, 28.178732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357262, 36.379818, 28.280642>,  <37.610481, 36.638721, 28.450491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357262, 36.379818, 28.280642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091983, -0.481749, 0.871468,
		-0.768625, 0.590743, 0.245435,
		-0.633052, -0.647256, -0.424623,
		37.167347, 36.185642, 28.153255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947414, 36.837181, 28.783804>,  <37.610481, 36.638721, 28.450491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947414, 36.837181, 28.783804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917458, 36.465553, 28.638910>,  <36.899483, 36.242577, 28.551973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917458, 36.465553, 28.638910>,  <36.947414, 36.837181, 28.783804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917458, 36.465553, 28.638910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226841, -0.337859, 0.913452,
		-0.971048, 0.150583, -0.185448,
		-0.074895, -0.929073, -0.362236,
		36.894989, 36.186832, 28.530239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355232, 36.585442, 29.120781>,  <36.947414, 36.837181, 28.783804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355232, 36.585442, 29.120781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573879, 36.274715, 28.995708>,  <36.705067, 36.088280, 28.920664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573879, 36.274715, 28.995708>,  <36.355232, 36.585442, 29.120781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573879, 36.274715, 28.995708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167064, -0.467063, 0.868298,
		-0.820550, -0.422387, -0.385081,
		0.546615, -0.776815, -0.312683,
		36.737865, 36.041672, 28.901903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964188, 35.993935, 29.299187>,  <36.355232, 36.585442, 29.120781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964188, 35.993935, 29.299187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344387, 35.880135, 29.249222>,  <36.572506, 35.811855, 29.219242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344387, 35.880135, 29.249222>,  <35.964188, 35.993935, 29.299187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344387, 35.880135, 29.249222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016040, -0.446408, 0.894686,
		-0.310300, -0.848398, -0.428876,
		0.950503, -0.284500, -0.124912,
		36.629539, 35.794785, 29.211748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984764, 35.272350, 29.635994>,  <35.964188, 35.993935, 29.299187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984764, 35.272350, 29.635994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370632, 35.353134, 29.568312>,  <36.602154, 35.401604, 29.527702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370632, 35.353134, 29.568312>,  <35.984764, 35.272350, 29.635994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370632, 35.353134, 29.568312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256062, -0.567408, 0.782611,
		0.062045, -0.798286, -0.599074,
		0.964667, 0.201957, -0.169206,
		36.660034, 35.413723, 29.517550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263378, 34.694687, 29.695354>,  <35.984764, 35.272350, 29.635994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263378, 34.694687, 29.695354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545296, 34.968822, 29.768650>,  <36.714447, 35.133305, 29.812628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545296, 34.968822, 29.768650>,  <36.263378, 34.694687, 29.695354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545296, 34.968822, 29.768650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336333, -0.550230, 0.764282,
		0.624613, -0.477034, -0.618301,
		0.704797, 0.685336, 0.183239,
		36.756733, 35.174423, 29.823622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908566, 34.359360, 29.649670>,  <36.263378, 34.694687, 29.695354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908566, 34.359360, 29.649670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950333, 34.684467, 29.878927>,  <36.975391, 34.879532, 30.016481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950333, 34.684467, 29.878927>,  <36.908566, 34.359360, 29.649670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950333, 34.684467, 29.878927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552398, -0.526623, 0.646162,
		0.827015, 0.249134, -0.503963,
		0.104418, 0.812774, 0.573146,
		36.981659, 34.928299, 30.050871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494946, 34.120842, 30.067192>,  <36.908566, 34.359360, 29.649670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494946, 34.120842, 30.067192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327377, 34.429028, 30.259392>,  <37.226837, 34.613941, 30.374712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327377, 34.429028, 30.259392>,  <37.494946, 34.120842, 30.067192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327377, 34.429028, 30.259392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188753, -0.443722, 0.876061,
		0.888186, 0.457699, 0.040458,
		-0.418924, 0.770469, 0.480500,
		37.201698, 34.660168, 30.403542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765141, 34.073662, 30.833866>,  <37.494946, 34.120842, 30.067192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765141, 34.073662, 30.833866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480942, 34.349602, 30.889439>,  <37.310425, 34.515167, 30.922783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480942, 34.349602, 30.889439>,  <37.765141, 34.073662, 30.833866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480942, 34.349602, 30.889439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230037, -0.414267, 0.880606,
		0.665042, 0.593706, 0.453025,
		-0.710494, 0.689852, 0.138930,
		37.267792, 34.556557, 30.931118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892597, 34.396805, 31.474909>,  <37.765141, 34.073662, 30.833866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892597, 34.396805, 31.474909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502174, 34.434742, 31.396612>,  <37.267921, 34.457504, 31.349634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502174, 34.434742, 31.396612>,  <37.892597, 34.396805, 31.474909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502174, 34.434742, 31.396612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217163, -0.374156, 0.901581,
		0.012270, 0.922503, 0.385794,
		-0.976058, 0.094843, -0.195743,
		37.209358, 34.463196, 31.337889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589706, 34.700325, 32.075363>,  <37.892597, 34.396805, 31.474909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589706, 34.700325, 32.075363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295799, 34.497429, 31.895222>,  <37.119453, 34.375690, 31.787136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295799, 34.497429, 31.895222>,  <37.589706, 34.700325, 32.075363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295799, 34.497429, 31.895222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381571, -0.239844, 0.892680,
		-0.560814, 0.827760, -0.017316,
		-0.734772, -0.507236, -0.450357,
		37.075367, 34.345257, 31.760115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028652, 34.907135, 32.477623>,  <37.589706, 34.700325, 32.075363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028652, 34.907135, 32.477623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895298, 34.578430, 32.292774>,  <36.815285, 34.381207, 32.181866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895298, 34.578430, 32.292774>,  <37.028652, 34.907135, 32.477623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895298, 34.578430, 32.292774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454467, -0.289379, 0.842448,
		-0.826022, 0.490882, -0.276988,
		-0.333388, -0.821763, -0.462123,
		36.795280, 34.331902, 32.154137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288498, 34.858131, 32.674244>,  <37.028652, 34.907135, 32.477623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288498, 34.858131, 32.674244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405647, 34.499207, 32.542152>,  <36.475937, 34.283852, 32.462898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405647, 34.499207, 32.542152>,  <36.288498, 34.858131, 32.674244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405647, 34.499207, 32.542152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394476, -0.428005, 0.813143,
		-0.870985, -0.107879, -0.479320,
		0.292872, -0.897315, -0.330230,
		36.493507, 34.230011, 32.443085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709854, 34.338570, 32.710449>,  <36.288498, 34.858131, 32.674244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709854, 34.338570, 32.710449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045300, 34.121552, 32.729954>,  <36.246567, 33.991341, 32.741657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045300, 34.121552, 32.729954>,  <35.709854, 34.338570, 32.710449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045300, 34.121552, 32.729954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294349, -0.376007, 0.878622,
		-0.458354, -0.751177, -0.475021,
		0.838612, -0.542542, 0.048764,
		36.296883, 33.958790, 32.744583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526100, 33.743004, 32.916340>,  <35.709854, 34.338570, 32.710449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526100, 33.743004, 32.916340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920639, 33.707714, 32.971966>,  <36.157364, 33.686543, 33.005341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920639, 33.707714, 32.971966>,  <35.526100, 33.743004, 32.916340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920639, 33.707714, 32.971966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164334, -0.472167, 0.866055,
		-0.010744, -0.877083, -0.480218,
		0.986346, -0.088221, 0.139062,
		36.216541, 33.681248, 33.013683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629753, 33.138958, 33.190540>,  <35.526100, 33.743004, 32.916340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629753, 33.138958, 33.190540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982906, 33.300549, 33.286304>,  <36.194798, 33.397503, 33.343761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982906, 33.300549, 33.286304>,  <35.629753, 33.138958, 33.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982906, 33.300549, 33.286304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057126, -0.413649, 0.908643,
		0.466100, -0.815904, -0.342127,
		0.882886, 0.403974, 0.239411,
		36.247772, 33.421741, 33.358128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012241, 32.621674, 33.513439>,  <35.629753, 33.138958, 33.190540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012241, 32.621674, 33.513439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233818, 32.931313, 33.636024>,  <36.366764, 33.117096, 33.709576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233818, 32.931313, 33.636024>,  <36.012241, 32.621674, 33.513439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233818, 32.931313, 33.636024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064763, -0.407049, 0.911108,
		0.830030, -0.484857, -0.275616,
		0.553946, 0.774096, 0.306461,
		36.400002, 33.163540, 33.727962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594433, 32.245499, 33.773975>,  <36.012241, 32.621674, 33.513439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594433, 32.245499, 33.773975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564186, 32.613922, 33.926777>,  <36.546040, 32.834976, 34.018459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564186, 32.613922, 33.926777>,  <36.594433, 32.245499, 33.773975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564186, 32.613922, 33.926777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070394, -0.377214, 0.923447,
		0.994649, 0.096718, -0.036314,
		-0.075615, 0.921062, 0.382004,
		36.541500, 32.890240, 34.041378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096603, 32.263008, 34.362984>,  <36.594433, 32.245499, 33.773975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096603, 32.263008, 34.362984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865505, 32.572056, 34.468262>,  <36.726845, 32.757484, 34.531429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865505, 32.572056, 34.468262>,  <37.096603, 32.263008, 34.362984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865505, 32.572056, 34.468262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094403, -0.257042, 0.961778,
		0.810738, 0.580511, 0.075568,
		-0.577747, 0.772616, 0.263196,
		36.692181, 32.803841, 34.547222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427151, 32.499798, 34.875629>,  <37.096603, 32.263008, 34.362984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427151, 32.499798, 34.875629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050411, 32.628670, 34.913837>,  <36.824368, 32.705994, 34.936764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050411, 32.628670, 34.913837>,  <37.427151, 32.499798, 34.875629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050411, 32.628670, 34.913837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051963, -0.420475, 0.905815,
		0.332000, 0.848176, 0.412765,
		-0.941847, 0.322179, 0.095523,
		36.767857, 32.725323, 34.942493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305878, 32.993187, 35.518124>,  <37.427151, 32.499798, 34.875629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305878, 32.993187, 35.518124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972023, 32.799351, 35.413391>,  <36.771709, 32.683048, 35.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972023, 32.799351, 35.413391>,  <37.305878, 32.993187, 35.518124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972023, 32.799351, 35.413391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129122, -0.289974, 0.948284,
		-0.535452, 0.825281, 0.179452,
		-0.834637, -0.484589, -0.261829,
		36.721630, 32.653973, 35.334843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028957, 33.567852, 34.969894>,  <37.305878, 32.993187, 35.518124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028957, 33.567852, 34.969894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260159, 33.818787, 35.178650>,  <37.398880, 33.969349, 35.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260159, 33.818787, 35.178650>,  <37.028957, 33.567852, 34.969894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260159, 33.818787, 35.178650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564931, -0.769117, 0.298851,
		0.588872, 0.122094, -0.798951,
		0.577999, 0.627337, 0.521886,
		37.433559, 34.006989, 35.335217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739017, 33.389828, 34.895660>,  <37.028957, 33.567852, 34.969894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739017, 33.389828, 34.895660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733814, 33.593922, 35.239635>,  <37.730694, 33.716377, 35.446022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733814, 33.593922, 35.239635>,  <37.739017, 33.389828, 34.895660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733814, 33.593922, 35.239635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443116, -0.768012, 0.462392,
		0.896370, 0.387067, -0.216102,
		-0.013008, 0.510233, 0.859938,
		37.729912, 33.746990, 35.497616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441338, 33.361496, 35.162128>,  <37.739017, 33.389828, 34.895660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441338, 33.361496, 35.162128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210400, 33.425335, 35.482426>,  <38.071835, 33.463638, 35.674606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210400, 33.425335, 35.482426>,  <38.441338, 33.361496, 35.162128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210400, 33.425335, 35.482426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455658, -0.750812, 0.478181,
		0.677528, 0.640944, 0.360758,
		-0.577348, 0.159599, 0.800748,
		38.037193, 33.473213, 35.722649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902554, 33.411232, 35.773762>,  <38.441338, 33.361496, 35.162128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902554, 33.411232, 35.773762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536480, 33.338390, 35.917583>,  <38.316837, 33.294685, 36.003876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536480, 33.338390, 35.917583>,  <38.902554, 33.411232, 35.773762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536480, 33.338390, 35.917583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358900, -0.774133, 0.521449,
		0.183386, 0.606266, 0.773829,
		-0.915184, -0.182101, 0.359553,
		38.261925, 33.283760, 36.025448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921326, 33.327297, 36.567860>,  <38.902554, 33.411232, 35.773762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921326, 33.327297, 36.567860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576584, 33.149826, 36.469593>,  <38.369740, 33.043343, 36.410633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576584, 33.149826, 36.469593>,  <38.921326, 33.327297, 36.567860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576584, 33.149826, 36.469593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178743, -0.719059, 0.671570,
		-0.474611, 0.534885, 0.699030,
		-0.861856, -0.443681, -0.245666,
		38.318027, 33.016720, 36.395893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716324, 33.155823, 37.190056>,  <38.921326, 33.327297, 36.567860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716324, 33.155823, 37.190056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483402, 32.948990, 36.939121>,  <38.343651, 32.824890, 36.788563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483402, 32.948990, 36.939121>,  <38.716324, 33.155823, 37.190056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483402, 32.948990, 36.939121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029255, -0.784482, 0.619461,
		-0.812445, 0.342362, 0.471934,
		-0.582304, -0.517084, -0.627333,
		38.308712, 32.793865, 36.750923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284515, 32.846931, 37.594574>,  <38.716324, 33.155823, 37.190056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284515, 32.846931, 37.594574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274544, 32.627186, 37.260490>,  <38.268562, 32.495338, 37.060040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274544, 32.627186, 37.260490>,  <38.284515, 32.846931, 37.594574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274544, 32.627186, 37.260490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081786, -0.831549, 0.549397,
		-0.996338, 0.082003, -0.024203,
		-0.024926, -0.549365, -0.835211,
		38.267067, 32.462376, 37.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681675, 32.450039, 37.594147>,  <38.284515, 32.846931, 37.594574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681675, 32.450039, 37.594147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931080, 32.235916, 37.366226>,  <38.080723, 32.107441, 37.229473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931080, 32.235916, 37.366226>,  <37.681675, 32.450039, 37.594147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931080, 32.235916, 37.366226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047627, -0.701464, 0.711112,
		-0.780364, -0.470524, -0.411874,
		0.623510, -0.535309, -0.569807,
		38.118134, 32.075325, 37.195286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426750, 31.727974, 37.566536>,  <37.681675, 32.450039, 37.594147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426750, 31.727974, 37.566536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821373, 31.760107, 37.509613>,  <38.058147, 31.779387, 37.475460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821373, 31.760107, 37.509613>,  <37.426750, 31.727974, 37.566536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821373, 31.760107, 37.509613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153578, -0.753350, 0.639435,
		-0.055840, -0.652695, -0.755560,
		0.986558, 0.080331, -0.142307,
		38.117340, 31.784206, 37.466923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655540, 31.172052, 37.260590>,  <37.426750, 31.727974, 37.566536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655540, 31.172052, 37.260590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982178, 31.290197, 37.458958>,  <38.178158, 31.361084, 37.577980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982178, 31.290197, 37.458958>,  <37.655540, 31.172052, 37.260590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982178, 31.290197, 37.458958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126414, -0.929819, 0.345624,
		0.563204, -0.219541, -0.796620,
		0.816591, 0.295361, 0.495925,
		38.227154, 31.378805, 37.607735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204834, 30.649902, 37.166710>,  <37.655540, 31.172052, 37.260590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204834, 30.649902, 37.166710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251816, 30.854998, 37.506897>,  <38.280006, 30.978056, 37.711010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251816, 30.854998, 37.506897>,  <38.204834, 30.649902, 37.166710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251816, 30.854998, 37.506897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496006, -0.772219, 0.397059,
		0.860338, 0.375201, -0.345025,
		0.117458, 0.512740, 0.850471,
		38.287052, 31.008820, 37.762039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934689, 30.638063, 37.345894>,  <38.204834, 30.649902, 37.166710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934689, 30.638063, 37.345894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719688, 30.718479, 37.673473>,  <38.590691, 30.766727, 37.870022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719688, 30.718479, 37.673473>,  <38.934689, 30.638063, 37.345894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719688, 30.718479, 37.673473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617366, -0.567728, 0.544558,
		0.574419, 0.798291, 0.181037,
		-0.537496, 0.201038, 0.818951,
		38.558441, 30.778791, 37.919159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469948, 30.420593, 37.917229>,  <38.934689, 30.638063, 37.345894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469948, 30.420593, 37.917229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130501, 30.514290, 38.106960>,  <38.926834, 30.570507, 38.220798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130501, 30.514290, 38.106960>,  <39.469948, 30.420593, 37.917229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130501, 30.514290, 38.106960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213324, -0.668970, 0.712020,
		0.484094, 0.705416, 0.517728,
		-0.848614, 0.234240, 0.474326,
		38.875916, 30.584562, 38.249260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711365, 30.518324, 38.633827>,  <39.469948, 30.420593, 37.917229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711365, 30.518324, 38.633827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336269, 30.379894, 38.622005>,  <39.111210, 30.296837, 38.614914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336269, 30.379894, 38.622005>,  <39.711365, 30.518324, 38.633827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336269, 30.379894, 38.622005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225943, -0.672420, 0.704841,
		-0.263802, 0.654280, 0.708749,
		-0.937741, -0.346076, -0.029556,
		39.054947, 30.276072, 38.613140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512833, 30.317110, 39.340893>,  <39.711365, 30.518324, 38.633827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512833, 30.317110, 39.340893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238605, 30.122547, 39.124226>,  <39.074070, 30.005810, 38.994225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238605, 30.122547, 39.124226>,  <39.512833, 30.317110, 39.340893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238605, 30.122547, 39.124226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270880, -0.861052, 0.430365,
		-0.675733, 0.148321, 0.722071,
		-0.685572, -0.486406, -0.541664,
		39.032932, 29.976625, 38.961727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147663, 29.916155, 39.817398>,  <39.512833, 30.317110, 39.340893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147663, 29.916155, 39.817398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058384, 29.747034, 39.466076>,  <39.004818, 29.645561, 39.255283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058384, 29.747034, 39.466076>,  <39.147663, 29.916155, 39.817398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058384, 29.747034, 39.466076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230908, -0.898323, 0.373760,
		-0.947029, -0.119386, 0.298131,
		-0.223196, -0.422803, -0.878306,
		38.991425, 29.620193, 39.202583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849464, 29.343267, 40.057480>,  <39.147663, 29.916155, 39.817398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849464, 29.343267, 40.057480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953739, 29.265869, 39.679146>,  <39.016304, 29.219429, 39.452145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953739, 29.265869, 39.679146>,  <38.849464, 29.343267, 40.057480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953739, 29.265869, 39.679146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328114, -0.903633, 0.275298,
		-0.907955, -0.382109, -0.172078,
		0.260689, -0.193497, -0.945833,
		39.031944, 29.207821, 39.395397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451187, 28.751366, 39.814323>,  <38.849464, 29.343267, 40.057480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451187, 28.751366, 39.814323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804153, 28.775227, 39.627655>,  <39.015934, 28.789543, 39.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804153, 28.775227, 39.627655>,  <38.451187, 28.751366, 39.814323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804153, 28.775227, 39.627655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149792, -0.975932, 0.158493,
		-0.445982, -0.209760, -0.870116,
		0.882419, 0.059651, -0.466668,
		39.068878, 28.793121, 39.487656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545956, 28.005335, 39.700321>,  <38.451187, 28.751366, 39.814323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545956, 28.005335, 39.700321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892967, 28.186155, 39.617325>,  <39.101173, 28.294647, 39.567528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892967, 28.186155, 39.617325>,  <38.545956, 28.005335, 39.700321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892967, 28.186155, 39.617325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488235, -0.853606, 0.181611,
		-0.095017, -0.258856, -0.961231,
		0.867524, 0.452051, -0.207489,
		39.153225, 28.321770, 39.555077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790791, 27.619234, 39.131157>,  <38.545956, 28.005335, 39.700321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790791, 27.619234, 39.131157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067329, 27.789049, 39.365013>,  <39.233253, 27.890938, 39.505329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067329, 27.789049, 39.365013>,  <38.790791, 27.619234, 39.131157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067329, 27.789049, 39.365013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331718, -0.905348, 0.265157,
		0.641876, 0.010622, -0.766735,
		0.691346, 0.424537, 0.584645,
		39.274734, 27.916410, 39.540405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474350, 27.339588, 38.987183>,  <38.790791, 27.619234, 39.131157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474350, 27.339588, 38.987183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468349, 27.489033, 39.358170>,  <39.464748, 27.578699, 39.580761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468349, 27.489033, 39.358170>,  <39.474350, 27.339588, 38.987183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468349, 27.489033, 39.358170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240275, -0.899041, 0.366050,
		0.970589, 0.228339, -0.076279,
		-0.015005, 0.373612, 0.927464,
		39.463848, 27.601116, 39.636410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030079, 27.265484, 39.305046>,  <39.474350, 27.339588, 38.987183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030079, 27.265484, 39.305046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760826, 27.215786, 39.596649>,  <39.599274, 27.185966, 39.771610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760826, 27.215786, 39.596649>,  <40.030079, 27.265484, 39.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760826, 27.215786, 39.596649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404384, -0.887190, 0.222189,
		0.619162, 0.444363, 0.647442,
		-0.673136, -0.124244, 0.729007,
		39.558884, 27.178513, 39.815350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461769, 27.223703, 39.966568>,  <40.030079, 27.265484, 39.305046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461769, 27.223703, 39.966568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095539, 27.063169, 39.956402>,  <39.875801, 26.966848, 39.950302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095539, 27.063169, 39.956402>,  <40.461769, 27.223703, 39.966568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095539, 27.063169, 39.956402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388706, -0.899425, 0.199856,
		-0.103069, 0.173104, 0.979496,
		-0.915579, -0.401335, -0.025416,
		39.820866, 26.942768, 39.948776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787918, 27.631786, 40.378456>,  <40.461769, 27.223703, 39.966568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787918, 27.631786, 40.378456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726715, 27.285660, 40.569378>,  <40.689991, 27.077984, 40.683929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726715, 27.285660, 40.569378>,  <40.787918, 27.631786, 40.378456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726715, 27.285660, 40.569378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882519, -0.336987, -0.328023,
		0.444688, 0.371036, 0.815221,
		-0.153011, -0.865316, 0.477300,
		40.680813, 27.026066, 40.712566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199993, 28.009565, 40.529720>,  <40.787918, 27.631786, 40.378456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199993, 28.009565, 40.529720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040127, 27.923958, 40.173191>,  <39.944206, 27.872593, 39.959274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040127, 27.923958, 40.173191>,  <40.199993, 28.009565, 40.529720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040127, 27.923958, 40.173191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170435, 0.972757, -0.157151,
		0.900679, 0.089106, -0.425251,
		-0.399662, -0.214020, -0.891328,
		39.920227, 27.859753, 39.905792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146206, 28.697155, 40.110226>,  <40.199993, 28.009565, 40.529720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146206, 28.697155, 40.110226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920937, 28.459478, 39.880524>,  <39.785774, 28.316872, 39.742702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920937, 28.459478, 39.880524>,  <40.146206, 28.697155, 40.110226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920937, 28.459478, 39.880524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368246, 0.802586, -0.469308,
		0.739747, -0.052836, -0.670807,
		-0.563177, -0.594191, -0.574255,
		39.751984, 28.281221, 39.708248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296799, 28.907322, 39.393353>,  <40.146206, 28.697155, 40.110226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296799, 28.907322, 39.393353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949654, 28.715931, 39.446823>,  <39.741367, 28.601095, 39.478905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949654, 28.715931, 39.446823>,  <40.296799, 28.907322, 39.393353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949654, 28.715931, 39.446823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480580, 0.740367, -0.470000,
		0.125915, -0.472139, -0.872485,
		-0.867864, -0.478479, 0.133677,
		39.689293, 28.572388, 39.486927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991856, 28.792221, 38.617031>,  <40.296799, 28.907322, 39.393353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991856, 28.792221, 38.617031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707283, 28.799761, 38.898033>,  <39.536541, 28.804285, 39.066635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707283, 28.799761, 38.898033>,  <39.991856, 28.792221, 38.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707283, 28.799761, 38.898033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488296, 0.705658, -0.513434,
		-0.505405, -0.708302, -0.492822,
		-0.711431, 0.018849, 0.702504,
		39.493855, 28.805416, 39.108784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299397, 28.844807, 38.221882>,  <39.991856, 28.792221, 38.617031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299397, 28.844807, 38.221882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218819, 28.956665, 38.597374>,  <39.170471, 29.023781, 38.822670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218819, 28.956665, 38.597374>,  <39.299397, 28.844807, 38.221882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218819, 28.956665, 38.597374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573910, 0.742941, -0.344480,
		-0.793754, -0.608142, 0.010829,
		-0.201448, 0.279647, 0.938731,
		39.158386, 29.040560, 38.878994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619610, 28.936760, 38.220123>,  <39.299397, 28.844807, 38.221882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619610, 28.936760, 38.220123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773106, 29.169815, 38.506699>,  <38.865204, 29.309649, 38.678642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773106, 29.169815, 38.506699>,  <38.619610, 28.936760, 38.220123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773106, 29.169815, 38.506699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556655, 0.764975, -0.323956,
		-0.736805, -0.274495, 0.617875,
		0.383735, 0.582636, 0.716437,
		38.888226, 29.344606, 38.721630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054859, 29.381771, 38.367493>,  <38.619610, 28.936760, 38.220123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054859, 29.381771, 38.367493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356937, 29.562372, 38.557575>,  <38.538185, 29.670732, 38.671623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356937, 29.562372, 38.557575>,  <38.054859, 29.381771, 38.367493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356937, 29.562372, 38.557575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228554, 0.860832, -0.454677,
		-0.614360, 0.234761, 0.753292,
		0.755198, 0.451503, 0.475206,
		38.583496, 29.697823, 38.700138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798992, 30.028942, 38.660240>,  <38.054859, 29.381771, 38.367493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798992, 30.028942, 38.660240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194908, 30.077202, 38.629860>,  <38.432457, 30.106157, 38.611633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194908, 30.077202, 38.629860>,  <37.798992, 30.028942, 38.660240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194908, 30.077202, 38.629860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142552, 0.844105, -0.516880,
		0.001750, 0.522427, 0.852682,
		0.989786, 0.120647, -0.075950,
		38.491844, 30.113396, 38.607075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835293, 30.637093, 38.959671>,  <37.798992, 30.028942, 38.660240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835293, 30.637093, 38.959671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115452, 30.555788, 38.685989>,  <38.283546, 30.507006, 38.521782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115452, 30.555788, 38.685989>,  <37.835293, 30.637093, 38.959671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115452, 30.555788, 38.685989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215485, 0.853649, -0.474184,
		0.680449, 0.479552, 0.554093,
		0.700396, -0.203259, -0.684201,
		38.325569, 30.494810, 38.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104679, 31.338095, 38.827267>,  <37.835293, 30.637093, 38.959671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104679, 31.338095, 38.827267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378738, 31.131199, 38.622116>,  <38.543175, 31.007061, 38.499027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378738, 31.131199, 38.622116>,  <38.104679, 31.338095, 38.827267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378738, 31.131199, 38.622116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087760, 0.757592, -0.646802,
		0.723102, 0.398142, 0.564453,
		0.685144, -0.517240, -0.512875,
		38.584282, 30.976027, 38.468254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674534, 31.808111, 38.729359>,  <38.104679, 31.338095, 38.827267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674534, 31.808111, 38.729359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638783, 31.543756, 38.431301>,  <38.617332, 31.385143, 38.252468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638783, 31.543756, 38.431301>,  <38.674534, 31.808111, 38.729359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638783, 31.543756, 38.431301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088766, 0.739876, -0.666861,
		0.992034, -0.125746, -0.007464,
		-0.089377, -0.660887, -0.745145,
		38.611969, 31.345491, 38.207756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196575, 31.925663, 38.278881>,  <38.674534, 31.808111, 38.729359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196575, 31.925663, 38.278881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892769, 31.752356, 38.084801>,  <38.710487, 31.648371, 37.968353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892769, 31.752356, 38.084801>,  <39.196575, 31.925663, 38.278881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892769, 31.752356, 38.084801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019028, 0.730775, -0.682353,
		0.650213, -0.527489, -0.546789,
		-0.759513, -0.433271, -0.485196,
		38.664913, 31.622374, 37.939243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392307, 31.865604, 37.546341>,  <39.196575, 31.925663, 38.278881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392307, 31.865604, 37.546341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992321, 31.867634, 37.548874>,  <38.752331, 31.868851, 37.550396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992321, 31.867634, 37.548874>,  <39.392307, 31.865604, 37.546341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992321, 31.867634, 37.548874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001097, 0.689086, -0.724679,
		-0.008043, -0.724662, -0.689057,
		-0.999967, 0.005073, 0.006337,
		38.692329, 31.869156, 37.550774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197662, 31.787401, 36.753788>,  <39.392307, 31.865604, 37.546341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197662, 31.787401, 36.753788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928535, 31.955135, 36.997581>,  <38.767059, 32.055775, 37.143856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928535, 31.955135, 36.997581>,  <39.197662, 31.787401, 36.753788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928535, 31.955135, 36.997581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017029, 0.832402, -0.553910,
		-0.739610, -0.362303, -0.567198,
		-0.672820, 0.419336, 0.609483,
		38.726688, 32.080936, 37.180428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786770, 31.505465, 36.227604>,  <39.197662, 31.787401, 36.753788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786770, 31.505465, 36.227604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577759, 31.666786, 36.528088>,  <38.452354, 31.763578, 36.708378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577759, 31.666786, 36.528088>,  <38.786770, 31.505465, 36.227604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577759, 31.666786, 36.528088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311476, 0.729867, -0.608504,
		-0.793693, -0.551942, -0.255754,
		-0.522526, 0.403304, 0.751207,
		38.421001, 31.787777, 36.753448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228287, 31.760473, 35.894260>,  <38.786770, 31.505465, 36.227604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228287, 31.760473, 35.894260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229622, 31.967691, 36.236397>,  <38.230423, 32.092022, 36.441681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229622, 31.967691, 36.236397>,  <38.228287, 31.760473, 35.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229622, 31.967691, 36.236397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555794, 0.712029, -0.429077,
		-0.831313, -0.473963, 0.290306,
		0.003340, 0.518047, 0.855345,
		38.230625, 32.123104, 36.493000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522015, 31.987583, 36.064575>,  <38.228287, 31.760473, 35.894260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522015, 31.987583, 36.064575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758030, 32.252075, 36.249889>,  <37.899639, 32.410770, 36.361076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758030, 32.252075, 36.249889>,  <37.522015, 31.987583, 36.064575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758030, 32.252075, 36.249889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388651, 0.735574, -0.554870,
		-0.707678, 0.147337, 0.691002,
		0.590036, 0.661228, 0.463287,
		37.935040, 32.450443, 36.388874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128475, 32.589314, 36.105122>,  <37.522015, 31.987583, 36.064575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128475, 32.589314, 36.105122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492218, 32.724705, 36.201870>,  <37.710464, 32.805939, 36.259918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492218, 32.724705, 36.201870>,  <37.128475, 32.589314, 36.105122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492218, 32.724705, 36.201870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275473, 0.925596, -0.259590,
		-0.311740, 0.169432, 0.934939,
		0.909358, 0.338475, 0.241871,
		37.765026, 32.826248, 36.274433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009216, 33.258789, 36.453987>,  <37.128475, 32.589314, 36.105122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009216, 33.258789, 36.453987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385120, 33.232933, 36.319725>,  <37.610664, 33.217419, 36.239166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385120, 33.232933, 36.319725>,  <37.009216, 33.258789, 36.453987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385120, 33.232933, 36.319725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073716, 0.920524, -0.383668,
		0.333782, 0.385301, 0.860310,
		0.939764, -0.064643, -0.335657,
		37.667049, 33.213539, 36.219028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157997, 33.849129, 36.648266>,  <37.009216, 33.258789, 36.453987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157997, 33.849129, 36.648266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436798, 33.746712, 36.380348>,  <37.604080, 33.685261, 36.219597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436798, 33.746712, 36.380348>,  <37.157997, 33.849129, 36.648266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436798, 33.746712, 36.380348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243265, 0.794248, -0.556770,
		0.674543, 0.551009, 0.491306,
		0.697004, -0.256047, -0.669795,
		37.645901, 33.669899, 36.179409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648109, 34.347004, 36.627670>,  <37.157997, 33.849129, 36.648266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648109, 34.347004, 36.627670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679966, 34.151382, 36.280224>,  <37.699078, 34.034012, 36.071758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679966, 34.151382, 36.280224>,  <37.648109, 34.347004, 36.627670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679966, 34.151382, 36.280224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300735, 0.818991, -0.488684,
		0.950377, 0.300140, -0.081852,
		0.079638, -0.489050, -0.868613,
		37.703857, 34.004669, 36.019642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154289, 34.715454, 36.160480>,  <37.648109, 34.347004, 36.627670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154289, 34.715454, 36.160480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889492, 34.504314, 35.947636>,  <37.730614, 34.377632, 35.819931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889492, 34.504314, 35.947636>,  <38.154289, 34.715454, 36.160480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889492, 34.504314, 35.947636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167005, 0.795976, -0.581835,
		0.730667, -0.296306, -0.615085,
		-0.661994, -0.527850, -0.532108,
		37.690895, 34.345959, 35.788002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260620, 34.895126, 35.564175>,  <38.154289, 34.715454, 36.160480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260620, 34.895126, 35.564175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881882, 34.766880, 35.574688>,  <37.654640, 34.689934, 35.580997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881882, 34.766880, 35.574688>,  <38.260620, 34.895126, 35.564175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881882, 34.766880, 35.574688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268732, 0.743417, -0.612466,
		0.176822, -0.586975, -0.790060,
		-0.946846, -0.320612, 0.026287,
		37.597828, 34.670696, 35.582573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934383, 35.188251, 35.627865>,  <38.260620, 34.895126, 35.564175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934383, 35.188251, 35.627865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132034, 35.415638, 35.364746>,  <39.250626, 35.552071, 35.206875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132034, 35.415638, 35.364746>,  <38.934383, 35.188251, 35.627865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132034, 35.415638, 35.364746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307758, 0.593252, 0.743867,
		0.813097, -0.570003, 0.118191,
		0.494124, 0.568462, -0.657794,
		39.280270, 35.586178, 35.167408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648453, 35.181969, 35.715885>,  <38.934383, 35.188251, 35.627865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648453, 35.181969, 35.715885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546265, 35.530125, 35.547527>,  <39.484951, 35.739017, 35.446510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546265, 35.530125, 35.547527>,  <39.648453, 35.181969, 35.715885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546265, 35.530125, 35.547527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355772, 0.489428, 0.796169,
		0.898978, 0.053653, -0.434695,
		-0.255469, 0.870391, -0.420897,
		39.469624, 35.791241, 35.421257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225941, 35.781887, 35.672592>,  <39.648453, 35.181969, 35.715885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225941, 35.781887, 35.672592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852180, 35.922276, 35.696987>,  <39.627926, 36.006508, 35.711624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852180, 35.922276, 35.696987>,  <40.225941, 35.781887, 35.672592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852180, 35.922276, 35.696987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222866, 0.442393, 0.868688,
		0.277903, 0.825293, -0.491591,
		-0.934399, 0.350970, 0.060987,
		39.571861, 36.027565, 35.715282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871017, 35.706364, 35.316620>,  <40.225941, 35.781887, 35.672592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871017, 35.706364, 35.316620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864548, 36.061066, 35.501404>,  <40.860664, 36.273888, 35.612274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864548, 36.061066, 35.501404>,  <40.871017, 35.706364, 35.316620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864548, 36.061066, 35.501404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035729, -0.462238, 0.886036,
		0.999231, -0.002174, 0.039160,
		-0.016175, 0.886753, 0.461960,
		40.859695, 36.327091, 35.639992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359005, 35.680901, 35.784908>,  <40.871017, 35.706364, 35.316620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359005, 35.680901, 35.784908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071304, 35.923012, 35.921333>,  <40.898685, 36.068275, 36.003189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071304, 35.923012, 35.921333>,  <41.359005, 35.680901, 35.784908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071304, 35.923012, 35.921333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033092, -0.520205, 0.853400,
		0.693964, 0.602521, 0.394186,
		-0.719249, 0.605273, 0.341065,
		40.855530, 36.104595, 36.023651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348106, 35.752819, 36.548012>,  <41.359005, 35.680901, 35.784908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348106, 35.752819, 36.548012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957375, 35.820755, 36.495930>,  <40.722935, 35.861515, 36.464680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957375, 35.820755, 36.495930>,  <41.348106, 35.752819, 36.548012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957375, 35.820755, 36.495930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194224, -0.448116, 0.872622,
		0.089856, 0.877695, 0.470720,
		-0.976833, 0.169836, -0.130203,
		40.664326, 35.871704, 36.456867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571274, 36.182369, 37.161438>,  <41.348106, 35.752819, 36.548012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571274, 36.182369, 37.161438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218525, 36.140347, 36.977589>,  <41.006874, 36.115131, 36.867279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218525, 36.140347, 36.977589>,  <41.571274, 36.182369, 37.161438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218525, 36.140347, 36.977589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315530, -0.592866, 0.740912,
		-0.350334, 0.798419, 0.489686,
		-0.881877, -0.105056, -0.459626,
		40.953960, 36.108829, 36.839703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120506, 36.239437, 37.587788>,  <41.571274, 36.182369, 37.161438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120506, 36.239437, 37.587788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287899, 36.232700, 37.951015>,  <42.388336, 36.228661, 38.168953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287899, 36.232700, 37.951015>,  <42.120506, 36.239437, 37.587788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287899, 36.232700, 37.951015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680358, -0.656522, -0.325718,
		0.601651, 0.754119, -0.263288,
		0.418485, -0.016838, 0.908068,
		42.413445, 36.227650, 38.223434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891933, 36.393219, 37.522038>,  <42.120506, 36.239437, 37.587788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891933, 36.393219, 37.522038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850151, 36.194981, 37.866936>,  <42.825081, 36.076038, 38.073875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850151, 36.194981, 37.866936>,  <42.891933, 36.393219, 37.522038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850151, 36.194981, 37.866936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877958, -0.453241, -0.154153,
		0.467203, 0.740914, 0.482460,
		-0.104457, -0.495601, 0.862246,
		42.818813, 36.046299, 38.125610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374584, 35.684925, 37.396988>,  <42.891933, 36.393219, 37.522038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374584, 35.684925, 37.396988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472790, 35.297314, 37.386299>,  <43.531712, 35.064747, 37.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472790, 35.297314, 37.386299>,  <43.374584, 35.684925, 37.396988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472790, 35.297314, 37.386299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935918, 0.244124, -0.253892,
		0.252551, 0.037325, 0.966863,
		0.245511, -0.969026, -0.026721,
		43.546444, 35.006607, 37.378284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079483, 35.525444, 37.786190>,  <43.374584, 35.684925, 37.396988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079483, 35.525444, 37.786190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001629, 35.289906, 37.472404>,  <43.954914, 35.148582, 37.284134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001629, 35.289906, 37.472404>,  <44.079483, 35.525444, 37.786190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001629, 35.289906, 37.472404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917827, 0.172768, -0.357415,
		0.345991, -0.789567, 0.506828,
		-0.194639, -0.588843, -0.784461,
		43.943237, 35.113255, 37.237064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634270, 35.231899, 37.538536>,  <44.079483, 35.525444, 37.786190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634270, 35.231899, 37.538536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474339, 35.162231, 37.178581>,  <44.378380, 35.120430, 36.962608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474339, 35.162231, 37.178581>,  <44.634270, 35.231899, 37.538536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474339, 35.162231, 37.178581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906325, 0.071406, -0.416504,
		0.136799, -0.982124, 0.129303,
		-0.399826, -0.174168, -0.899891,
		44.354389, 35.109982, 36.908615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037956, 34.728680, 37.172195>,  <44.634270, 35.231899, 37.538536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037956, 34.728680, 37.172195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837936, 34.946201, 36.902607>,  <44.717926, 35.076714, 36.740856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837936, 34.946201, 36.902607>,  <45.037956, 34.728680, 37.172195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837936, 34.946201, 36.902607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855285, 0.188082, -0.482818,
		-0.135796, -0.817866, -0.559155,
		-0.500047, 0.543801, -0.673968,
		44.687923, 35.109341, 36.700417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304558, 34.630928, 36.441330>,  <45.037956, 34.728680, 37.172195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304558, 34.630928, 36.441330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101486, 34.975521, 36.437225>,  <44.979645, 35.182278, 36.434761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101486, 34.975521, 36.437225>,  <45.304558, 34.630928, 36.441330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101486, 34.975521, 36.437225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763254, 0.444200, -0.469180,
		-0.399632, -0.246027, -0.883043,
		-0.507679, 0.861485, -0.010265,
		44.949184, 35.233967, 36.434147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863689, 35.094421, 36.344849>,  <45.304558, 34.630928, 36.441330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863689, 35.094421, 36.344849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141499, 35.354610, 36.467831>,  <46.308186, 35.510723, 36.541618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141499, 35.354610, 36.467831>,  <45.863689, 35.094421, 36.344849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141499, 35.354610, 36.467831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642960, -0.369378, -0.670941,
		-0.322861, 0.663663, -0.674769,
		0.694523, 0.650470, 0.307451,
		46.349857, 35.549751, 36.560066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069885, 35.644047, 35.839165>,  <45.863689, 35.094421, 36.344849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069885, 35.644047, 35.839165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390335, 35.597321, 36.073959>,  <46.582603, 35.569286, 36.214836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390335, 35.597321, 36.073959>,  <46.069885, 35.644047, 35.839165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390335, 35.597321, 36.073959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563860, -0.181507, -0.805678,
		0.200659, 0.976427, -0.079541,
		0.801123, -0.116817, 0.586989,
		46.630672, 35.562275, 36.250057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496960, 35.202938, 35.604897>,  <46.069885, 35.644047, 35.839165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496960, 35.202938, 35.604897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784264, 35.098637, 35.862926>,  <46.956646, 35.036057, 36.017742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784264, 35.098637, 35.862926>,  <46.496960, 35.202938, 35.604897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784264, 35.098637, 35.862926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532708, -0.390310, -0.750920,
		0.447584, 0.882986, -0.141436,
		0.718256, -0.260755, 0.645070,
		46.999741, 35.020409, 36.056446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116993, 35.681892, 35.682686>,  <46.496960, 35.202938, 35.604897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116993, 35.681892, 35.682686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.153370, 35.288513, 35.745380>,  <47.175194, 35.052486, 35.782997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.153370, 35.288513, 35.745380>,  <47.116993, 35.681892, 35.682686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.153370, 35.288513, 35.745380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553786, -0.080867, -0.828722,
		0.827678, 0.162159, 0.537265,
		0.090938, -0.983445, 0.156734,
		47.180653, 34.993481, 35.792400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.825382, 35.325043, 35.781136>,  <47.116993, 35.681892, 35.682686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.825382, 35.325043, 35.781136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539455, 35.113842, 35.597725>,  <47.367897, 34.987122, 35.487679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539455, 35.113842, 35.597725>,  <47.825382, 35.325043, 35.781136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539455, 35.113842, 35.597725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486986, 0.094725, -0.868258,
		0.501874, -0.843945, 0.189417,
		-0.714819, -0.528000, -0.458529,
		47.325008, 34.955441, 35.460167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.224396, 35.128933, 35.208218>,  <47.825382, 35.325043, 35.781136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.224396, 35.128933, 35.208218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862003, 35.019279, 35.079193>,  <47.644566, 34.953487, 35.001778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862003, 35.019279, 35.079193>,  <48.224396, 35.128933, 35.208218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.862003, 35.019279, 35.079193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340082, -0.017616, -0.940231,
		0.252066, -0.961530, 0.109188,
		-0.905984, -0.274133, -0.322559,
		47.590210, 34.937038, 34.982426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.510311, 33.995621, 25.668215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154087, 34.097622, 25.517548>,  <32.940353, 34.158821, 25.427147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154087, 34.097622, 25.517548>,  <33.510311, 33.995621, 25.668215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154087, 34.097622, 25.517548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452080, -0.404685, 0.794892,
		0.050266, 0.878183, 0.475677,
		-0.890560, 0.255000, -0.376666,
		32.886917, 34.174122, 25.404549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153255, 34.298260, 26.237541>,  <33.510311, 33.995621, 25.668215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153255, 34.298260, 26.237541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.871422, 34.202522, 25.970325>,  <32.702320, 34.145081, 25.809996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.871422, 34.202522, 25.970325>,  <33.153255, 34.298260, 26.237541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871422, 34.202522, 25.970325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583134, -0.341165, 0.737266,
		-0.404372, 0.909022, 0.100810,
		-0.704584, -0.239344, -0.668039,
		32.660046, 34.130718, 25.769915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541786, 34.593342, 26.427444>,  <33.153255, 34.298260, 26.237541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541786, 34.593342, 26.427444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.408169, 34.284756, 26.210833>,  <32.327999, 34.099602, 26.080866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.408169, 34.284756, 26.210833>,  <32.541786, 34.593342, 26.427444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408169, 34.284756, 26.210833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658032, -0.220471, 0.719991,
		-0.674841, 0.596850, -0.434004,
		-0.334041, -0.771468, -0.541530,
		32.307957, 34.053314, 26.048374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739925, 34.609020, 26.375364>,  <32.541786, 34.593342, 26.427444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739925, 34.609020, 26.375364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.874432, 34.238861, 26.305429>,  <31.955135, 34.016766, 26.263468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.874432, 34.238861, 26.305429>,  <31.739925, 34.609020, 26.375364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874432, 34.238861, 26.305429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762553, -0.376487, 0.526089,
		-0.552665, -0.043582, -0.832263,
		0.336264, -0.925396, -0.174838,
		31.975311, 33.961243, 26.252977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180992, 34.266678, 26.178608>,  <31.739925, 34.609020, 26.375364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180992, 34.266678, 26.178608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437361, 33.988297, 26.308142>,  <31.591183, 33.821270, 26.385862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.437361, 33.988297, 26.308142>,  <31.180992, 34.266678, 26.178608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437361, 33.988297, 26.308142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677119, -0.313880, 0.665574,
		-0.361560, -0.645859, -0.672414,
		0.640924, -0.695950, 0.323837,
		31.629637, 33.779510, 26.405293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749155, 33.747143, 26.298676>,  <31.180992, 34.266678, 26.178608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749155, 33.747143, 26.298676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.069496, 33.634239, 26.509945>,  <31.261702, 33.566498, 26.636707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.069496, 33.634239, 26.509945>,  <30.749155, 33.747143, 26.298676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069496, 33.634239, 26.509945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589287, -0.214337, 0.778974,
		-0.106661, -0.935090, -0.337980,
		0.800853, -0.282254, 0.528175,
		31.309752, 33.549564, 26.668398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566519, 33.156631, 26.598038>,  <30.749155, 33.747143, 26.298676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566519, 33.156631, 26.598038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883120, 33.271183, 26.814005>,  <31.073080, 33.339912, 26.943586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883120, 33.271183, 26.814005>,  <30.566519, 33.156631, 26.598038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883120, 33.271183, 26.814005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456772, -0.309762, 0.833911,
		0.406062, -0.906661, -0.114367,
		0.791501, 0.286380, 0.539920,
		31.120569, 33.357098, 26.975981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806189, 32.548119, 27.022617>,  <30.566519, 33.156631, 26.598038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806189, 32.548119, 27.022617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.987295, 32.848717, 27.214558>,  <31.095959, 33.029076, 27.329721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.987295, 32.848717, 27.214558>,  <30.806189, 32.548119, 27.022617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987295, 32.848717, 27.214558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199425, -0.439185, 0.875983,
		0.869041, -0.492310, -0.048982,
		0.452767, 0.751496, 0.479849,
		31.123125, 33.074165, 27.358513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203457, 32.211395, 27.510233>,  <30.806189, 32.548119, 27.022617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203457, 32.211395, 27.510233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.190594, 32.583733, 27.655838>,  <31.182877, 32.807133, 27.743200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.190594, 32.583733, 27.655838>,  <31.203457, 32.211395, 27.510233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190594, 32.583733, 27.655838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057580, -0.365320, 0.929100,
		0.997823, 0.008918, 0.065346,
		-0.032158, 0.930839, 0.364011,
		31.180946, 32.862984, 27.765041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535131, 32.123005, 28.107290>,  <31.203457, 32.211395, 27.510233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535131, 32.123005, 28.107290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.347504, 32.474846, 28.138971>,  <31.234928, 32.685951, 28.157980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.347504, 32.474846, 28.138971>,  <31.535131, 32.123005, 28.107290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347504, 32.474846, 28.138971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037389, -0.109380, 0.993297,
		0.882370, 0.462962, 0.084194,
		-0.469068, 0.879604, 0.079204,
		31.206783, 32.738728, 28.162733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066689, 32.545261, 28.418039>,  <31.535131, 32.123005, 28.107290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066689, 32.545261, 28.418039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694698, 32.679260, 28.478600>,  <31.471504, 32.759659, 28.514935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694698, 32.679260, 28.478600>,  <32.066689, 32.545261, 28.418039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694698, 32.679260, 28.478600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177536, 0.048635, 0.982912,
		0.321908, 0.940964, -0.104703,
		-0.929976, 0.334996, 0.151399,
		31.415705, 32.779758, 28.524019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089184, 33.140160, 28.972935>,  <32.066689, 32.545261, 28.418039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089184, 33.140160, 28.972935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736053, 32.952328, 28.968723>,  <31.524174, 32.839630, 28.966196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736053, 32.952328, 28.968723>,  <32.089184, 33.140160, 28.972935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736053, 32.952328, 28.968723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082451, -0.177004, 0.980750,
		-0.462401, 0.864967, 0.194982,
		-0.882829, -0.469577, -0.010529,
		31.471205, 32.811455, 28.965565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860390, 33.326626, 29.631882>,  <32.089184, 33.140160, 28.972935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860390, 33.326626, 29.631882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611946, 33.035416, 29.515806>,  <31.462879, 32.860691, 29.446161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611946, 33.035416, 29.515806>,  <31.860390, 33.326626, 29.631882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611946, 33.035416, 29.515806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118700, -0.278611, 0.953040,
		-0.774682, 0.626388, 0.086632,
		-0.621110, -0.728021, -0.290187,
		31.425613, 32.817009, 29.428751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324121, 33.297581, 30.173580>,  <31.860390, 33.326626, 29.631882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324121, 33.297581, 30.173580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.282070, 32.940979, 29.997322>,  <31.256840, 32.727016, 29.891567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.282070, 32.940979, 29.997322>,  <31.324121, 33.297581, 30.173580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282070, 32.940979, 29.997322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017111, -0.444656, 0.895538,
		-0.994312, 0.086605, 0.062000,
		-0.105127, -0.891505, -0.440644,
		31.250532, 32.673527, 29.865129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896009, 32.879189, 30.517075>,  <31.324121, 33.297581, 30.173580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896009, 32.879189, 30.517075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066711, 32.600533, 30.286398>,  <31.169132, 32.433338, 30.147991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066711, 32.600533, 30.286398>,  <30.896009, 32.879189, 30.517075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066711, 32.600533, 30.286398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007845, -0.640503, 0.767915,
		-0.904333, -0.323187, -0.278803,
		0.426755, -0.696639, -0.576693,
		31.194738, 32.391541, 30.113390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391586, 32.360291, 30.516335>,  <30.896009, 32.879189, 30.517075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391586, 32.360291, 30.516335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.767368, 32.243263, 30.444975>,  <30.992838, 32.173046, 30.402159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.767368, 32.243263, 30.444975>,  <30.391586, 32.360291, 30.516335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767368, 32.243263, 30.444975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042445, -0.615956, 0.786636,
		-0.340034, -0.731437, -0.591082,
		0.939455, -0.292572, -0.178400,
		31.049204, 32.155491, 30.391455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399902, 31.668736, 30.589382>,  <30.391586, 32.360291, 30.516335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399902, 31.668736, 30.589382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.795481, 31.714903, 30.626616>,  <31.032827, 31.742603, 30.648954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.795481, 31.714903, 30.626616>,  <30.399902, 31.668736, 30.589382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795481, 31.714903, 30.626616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003767, -0.607992, 0.793935,
		0.148230, -0.785509, -0.600836,
		0.988946, 0.115421, 0.093082,
		31.092165, 31.749529, 30.654539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625381, 31.054356, 30.597857>,  <30.399902, 31.668736, 30.589382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625381, 31.054356, 30.597857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930532, 31.264660, 30.748371>,  <31.113623, 31.390842, 30.838680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930532, 31.264660, 30.748371>,  <30.625381, 31.054356, 30.597857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930532, 31.264660, 30.748371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011610, -0.593046, 0.805084,
		0.646438, -0.609813, -0.458526,
		0.762878, 0.525761, 0.376288,
		31.159395, 31.422388, 30.861258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988726, 30.541803, 30.846704>,  <30.625381, 31.054356, 30.597857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988726, 30.541803, 30.846704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.130630, 30.880142, 31.006048>,  <31.215773, 31.083145, 31.101654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.130630, 30.880142, 31.006048>,  <30.988726, 30.541803, 30.846704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130630, 30.880142, 31.006048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300661, -0.506650, 0.808028,
		0.885295, -0.166887, -0.434053,
		0.354762, 0.845845, 0.398358,
		31.237059, 31.133896, 31.125555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661671, 30.410759, 30.996080>,  <30.988726, 30.541803, 30.846704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661671, 30.410759, 30.996080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.527664, 30.682981, 31.256727>,  <31.447260, 30.846315, 31.413116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.527664, 30.682981, 31.256727>,  <31.661671, 30.410759, 30.996080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527664, 30.682981, 31.256727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509560, -0.450855, 0.732856,
		0.792535, 0.577559, -0.195740,
		-0.335017, 0.680555, 0.651619,
		31.427158, 30.887148, 31.452213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232029, 30.497732, 31.460009>,  <31.661671, 30.410759, 30.996080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232029, 30.497732, 31.460009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.901064, 30.638893, 31.634756>,  <31.702486, 30.723589, 31.739605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.901064, 30.638893, 31.634756>,  <32.232029, 30.497732, 31.460009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901064, 30.638893, 31.634756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311679, -0.358549, 0.879943,
		0.467173, 0.864235, 0.186674,
		-0.827409, 0.352903, 0.436868,
		31.652842, 30.744764, 31.765816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384434, 30.926888, 32.103165>,  <32.232029, 30.497732, 31.460009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384434, 30.926888, 32.103165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.032097, 30.737617, 32.109215>,  <31.820696, 30.624056, 32.112846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.032097, 30.737617, 32.109215>,  <32.384434, 30.926888, 32.103165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032097, 30.737617, 32.109215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188511, -0.321256, 0.928040,
		-0.434264, 0.820306, 0.372174,
		-0.880840, -0.473173, 0.015127,
		31.767845, 30.595665, 32.113754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553337, 31.597668, 32.409996>,  <32.384434, 30.926888, 32.103165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553337, 31.597668, 32.409996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823349, 31.754330, 32.660099>,  <32.985355, 31.848328, 32.810162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823349, 31.754330, 32.660099>,  <32.553337, 31.597668, 32.409996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823349, 31.754330, 32.660099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670206, 0.028835, -0.741615,
		-0.308488, 0.919659, -0.243026,
		0.675025, 0.391657, 0.625257,
		33.025856, 31.871826, 32.847675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910816, 32.111542, 32.031013>,  <32.553337, 31.597668, 32.409996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910816, 32.111542, 32.031013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115189, 31.938196, 32.327969>,  <33.237812, 31.834188, 32.506142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115189, 31.938196, 32.327969>,  <32.910816, 32.111542, 32.031013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115189, 31.938196, 32.327969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787295, -0.110831, -0.606533,
		0.345130, 0.894377, 0.284560,
		0.510932, -0.433366, 0.742390,
		33.268467, 31.808186, 32.550686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549095, 32.440090, 32.060837>,  <32.910816, 32.111542, 32.031013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549095, 32.440090, 32.060837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626919, 32.081123, 32.219223>,  <33.673615, 31.865744, 32.314255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626919, 32.081123, 32.219223>,  <33.549095, 32.440090, 32.060837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626919, 32.081123, 32.219223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749196, -0.124599, -0.650524,
		0.633128, 0.423220, 0.648100,
		0.194562, -0.897419, 0.395962,
		33.685287, 31.811897, 32.338013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235043, 32.516766, 32.245625>,  <33.549095, 32.440090, 32.060837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235043, 32.516766, 32.245625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139450, 32.130810, 32.202019>,  <34.082096, 31.899237, 32.175854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139450, 32.130810, 32.202019>,  <34.235043, 32.516766, 32.245625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139450, 32.130810, 32.202019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762213, -0.116846, -0.636694,
		0.601599, -0.235249, 0.763372,
		-0.238978, -0.964886, -0.109015,
		34.067757, 31.841345, 32.169315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842396, 32.038391, 32.229431>,  <34.235043, 32.516766, 32.245625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842396, 32.038391, 32.229431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555523, 31.821177, 32.054726>,  <34.383400, 31.690849, 31.949902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555523, 31.821177, 32.054726>,  <34.842396, 32.038391, 32.229431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555523, 31.821177, 32.054726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657228, -0.318639, -0.683023,
		0.231733, -0.776906, 0.585419,
		-0.717182, -0.543033, -0.436765,
		34.340366, 31.658266, 31.923697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222176, 31.511797, 32.050095>,  <34.842396, 32.038391, 32.229431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222176, 31.511797, 32.050095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.891747, 31.509609, 31.824680>,  <34.693489, 31.508297, 31.689432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.891747, 31.509609, 31.824680>,  <35.222176, 31.511797, 32.050095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891747, 31.509609, 31.824680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560187, -0.117228, -0.820029,
		-0.061572, -0.993090, 0.099907,
		-0.826075, -0.005475, -0.563534,
		34.643925, 31.507969, 31.655621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297253, 31.007076, 31.501839>,  <35.222176, 31.511797, 32.050095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297253, 31.007076, 31.501839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013565, 31.244059, 31.348995>,  <34.843353, 31.386248, 31.257290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013565, 31.244059, 31.348995>,  <35.297253, 31.007076, 31.501839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013565, 31.244059, 31.348995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514980, 0.065222, -0.854717,
		-0.481458, -0.802960, -0.351359,
		-0.709220, 0.592454, -0.382107,
		34.800800, 31.421795, 31.234364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322834, 30.883718, 30.815666>,  <35.297253, 31.007076, 31.501839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322834, 30.883718, 30.815666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105721, 31.219112, 30.796360>,  <34.975452, 31.420349, 30.784777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105721, 31.219112, 30.796360>,  <35.322834, 30.883718, 30.815666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105721, 31.219112, 30.796360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490869, 0.270078, -0.828314,
		-0.681495, -0.473285, -0.558180,
		-0.542781, 0.838486, -0.048264,
		34.942886, 31.470657, 30.781881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196354, 30.939959, 30.053061>,  <35.322834, 30.883718, 30.815666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196354, 30.939959, 30.053061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107590, 31.304188, 30.192554>,  <35.054333, 31.522724, 30.276251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107590, 31.304188, 30.192554>,  <35.196354, 30.939959, 30.053061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107590, 31.304188, 30.192554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322066, 0.406028, -0.855228,
		-0.920342, -0.077470, -0.383366,
		-0.221911, 0.910571, 0.348734,
		35.041016, 31.577358, 30.297174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747013, 31.272360, 29.540136>,  <35.196354, 30.939959, 30.053061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747013, 31.272360, 29.540136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926712, 31.561859, 29.749653>,  <35.034531, 31.735559, 29.875362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926712, 31.561859, 29.749653>,  <34.747013, 31.272360, 29.540136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926712, 31.561859, 29.749653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258283, 0.456039, -0.851656,
		-0.855257, 0.517894, 0.017943,
		0.449250, 0.723750, 0.523793,
		35.061485, 31.778984, 29.906792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528999, 31.817238, 29.213318>,  <34.747013, 31.272360, 29.540136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528999, 31.817238, 29.213318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832844, 31.963516, 29.428448>,  <35.015152, 32.051285, 29.557526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832844, 31.963516, 29.428448>,  <34.528999, 31.817238, 29.213318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832844, 31.963516, 29.428448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405181, 0.380761, -0.831173,
		-0.508739, 0.849286, 0.141058,
		0.759614, 0.365696, 0.537823,
		35.060726, 32.073223, 29.589794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568703, 32.522495, 29.085617>,  <34.528999, 31.817238, 29.213318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568703, 32.522495, 29.085617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935165, 32.397545, 29.186075>,  <35.155045, 32.322575, 29.246349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935165, 32.397545, 29.186075>,  <34.568703, 32.522495, 29.085617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935165, 32.397545, 29.186075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380714, 0.482286, -0.788960,
		0.125326, 0.818428, 0.560776,
		0.916161, -0.312372, 0.251144,
		35.210014, 32.303833, 29.261417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177143, 33.024654, 29.187952>,  <34.568703, 32.522495, 29.085617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177143, 33.024654, 29.187952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307384, 32.682888, 29.025984>,  <35.385529, 32.477829, 28.928802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307384, 32.682888, 29.025984>,  <35.177143, 33.024654, 29.187952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307384, 32.682888, 29.025984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384266, 0.510877, -0.768989,
		0.863898, 0.094792, 0.494667,
		0.325608, -0.854411, -0.404921,
		35.405067, 32.426563, 28.904507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896683, 33.058376, 29.041664>,  <35.177143, 33.024654, 29.187952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896683, 33.058376, 29.041664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729568, 32.792274, 28.794151>,  <35.629299, 32.632614, 28.645643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729568, 32.792274, 28.794151>,  <35.896683, 33.058376, 29.041664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729568, 32.792274, 28.794151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454134, 0.436971, -0.776414,
		0.786901, -0.605387, 0.119552,
		-0.417790, -0.665254, -0.618780,
		35.604233, 32.592697, 28.608517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342045, 32.992558, 28.630997>,  <35.896683, 33.058376, 29.041664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342045, 32.992558, 28.630997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062553, 32.815136, 28.406487>,  <35.894859, 32.708683, 28.271780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062553, 32.815136, 28.406487>,  <36.342045, 32.992558, 28.630997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062553, 32.815136, 28.406487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349287, 0.473179, -0.808765,
		0.624317, -0.761156, -0.175697,
		-0.698732, -0.443557, -0.561276,
		35.852932, 32.682068, 28.238104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701839, 32.724079, 28.064667>,  <36.342045, 32.992558, 28.630997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701839, 32.724079, 28.064667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.331814, 32.716076, 27.912951>,  <36.109798, 32.711273, 27.821920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.331814, 32.716076, 27.912951>,  <36.701839, 32.724079, 28.064667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331814, 32.716076, 27.912951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331667, 0.444080, -0.832340,
		0.185091, -0.895764, -0.404164,
		-0.925061, -0.020011, -0.379291,
		36.054295, 32.710072, 27.799164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691029, 32.471741, 27.428837>,  <36.701839, 32.724079, 28.064667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691029, 32.471741, 27.428837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344807, 32.671650, 27.415926>,  <36.137074, 32.791595, 27.408180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344807, 32.671650, 27.415926>,  <36.691029, 32.471741, 27.428837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344807, 32.671650, 27.415926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186830, 0.262432, -0.946691,
		-0.464663, -0.825442, -0.320522,
		-0.865553, 0.499775, -0.032275,
		36.085140, 32.821583, 27.406244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289497, 32.328049, 26.802771>,  <36.691029, 32.471741, 27.428837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289497, 32.328049, 26.802771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165535, 32.685303, 26.933161>,  <36.091156, 32.899654, 27.011395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165535, 32.685303, 26.933161>,  <36.289497, 32.328049, 26.802771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165535, 32.685303, 26.933161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008826, 0.345541, -0.938362,
		-0.950725, -0.287930, -0.114969,
		-0.309909, 0.893139, 0.325974,
		36.072563, 32.953243, 27.030952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.650764, 32.452049, 26.313717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684788, 32.822788, 26.459990>,  <35.705200, 33.045231, 26.547752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684788, 32.822788, 26.459990>,  <35.650764, 32.452049, 26.313717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684788, 32.822788, 26.459990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068079, 0.360747, -0.930176,
		-0.994047, 0.104014, -0.032414,
		0.085058, 0.926846, 0.365681,
		35.710304, 33.100842, 26.569695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092125, 32.973747, 25.921591>,  <35.650764, 32.452049, 26.313717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092125, 32.973747, 25.921591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363979, 33.203472, 26.104136>,  <35.527092, 33.341309, 26.213661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363979, 33.203472, 26.104136>,  <35.092125, 32.973747, 25.921591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363979, 33.203472, 26.104136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104420, 0.540044, -0.835134,
		-0.726084, 0.615237, 0.307061,
		0.679632, 0.574314, 0.456360,
		35.567867, 33.375767, 26.241043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791618, 33.586823, 26.215963>,  <35.092125, 32.973747, 25.921591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791618, 33.586823, 26.215963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166393, 33.726547, 26.211460>,  <35.391258, 33.810383, 26.208757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166393, 33.726547, 26.211460>,  <34.791618, 33.586823, 26.215963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166393, 33.726547, 26.211460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284655, 0.744031, -0.604474,
		-0.202774, 0.569560, 0.796545,
		0.936939, 0.349312, -0.011259,
		35.447475, 33.831341, 26.208082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851757, 34.342358, 26.429594>,  <34.791618, 33.586823, 26.215963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851757, 34.342358, 26.429594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141800, 34.238064, 26.174648>,  <35.315826, 34.175488, 26.021681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141800, 34.238064, 26.174648>,  <34.851757, 34.342358, 26.429594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141800, 34.238064, 26.174648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157264, 0.838391, -0.521889,
		0.670438, 0.478660, 0.566919,
		0.725107, -0.260738, -0.637365,
		35.359333, 34.159843, 25.983438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335049, 34.870903, 26.440994>,  <34.851757, 34.342358, 26.429594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335049, 34.870903, 26.440994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420029, 34.659447, 26.112263>,  <35.471016, 34.532574, 25.915024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420029, 34.659447, 26.112263>,  <35.335049, 34.870903, 26.440994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420029, 34.659447, 26.112263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072714, 0.847251, -0.526192,
		0.974462, 0.052033, 0.218442,
		0.212455, -0.528638, -0.821830,
		35.483765, 34.500854, 25.865713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712006, 35.307240, 25.945278>,  <35.335049, 34.870903, 26.440994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712006, 35.307240, 25.945278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631340, 35.002716, 25.698788>,  <35.582939, 34.820000, 25.550894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631340, 35.002716, 25.698788>,  <35.712006, 35.307240, 25.945278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631340, 35.002716, 25.698788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034075, 0.623318, -0.781226,
		0.978861, -0.178546, -0.099761,
		-0.201668, -0.761313, -0.616225,
		35.570839, 34.774323, 25.513920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163925, 35.441437, 25.433029>,  <35.712006, 35.307240, 25.945278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163925, 35.441437, 25.433029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899940, 35.185047, 25.276258>,  <35.741550, 35.031212, 25.182196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899940, 35.185047, 25.276258>,  <36.163925, 35.441437, 25.433029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899940, 35.185047, 25.276258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156294, 0.393120, -0.906107,
		0.734866, -0.659248, -0.159262,
		-0.659958, -0.640975, -0.391926,
		35.701954, 34.992756, 25.158680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523163, 35.123394, 24.824883>,  <36.163925, 35.441437, 25.433029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523163, 35.123394, 24.824883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129124, 35.103947, 24.758884>,  <35.892700, 35.092278, 24.719286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129124, 35.103947, 24.758884>,  <36.523163, 35.123394, 24.824883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129124, 35.103947, 24.758884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153811, 0.180449, -0.971484,
		0.077001, -0.982382, -0.170282,
		-0.985095, -0.048614, -0.164996,
		35.833595, 35.089363, 24.709385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343800, 34.712296, 24.195606>,  <36.523163, 35.123394, 24.824883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343800, 34.712296, 24.195606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.032627, 34.954758, 24.261814>,  <35.845924, 35.100235, 24.301538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.032627, 34.954758, 24.261814>,  <36.343800, 34.712296, 24.195606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032627, 34.954758, 24.261814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208693, 0.497713, -0.841861,
		-0.592683, -0.620366, -0.513687,
		-0.777930, 0.606159, 0.165520,
		35.799248, 35.136604, 24.311470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007259, 34.652988, 23.642992>,  <36.343800, 34.712296, 24.195606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007259, 34.652988, 23.642992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858067, 34.991135, 23.795963>,  <35.768551, 35.194023, 23.887747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858067, 34.991135, 23.795963>,  <36.007259, 34.652988, 23.642992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858067, 34.991135, 23.795963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086033, 0.441904, -0.892927,
		-0.923843, -0.300141, -0.237550,
		-0.372978, 0.845362, 0.382428,
		35.746174, 35.244743, 23.910692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522663, 34.878540, 23.149702>,  <36.007259, 34.652988, 23.642992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522663, 34.878540, 23.149702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591549, 35.208946, 23.364378>,  <35.632881, 35.407192, 23.493183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591549, 35.208946, 23.364378>,  <35.522663, 34.878540, 23.149702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591549, 35.208946, 23.364378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094677, 0.556187, -0.825646,
		-0.980500, 0.091374, 0.173987,
		0.172212, 0.826018, 0.536691,
		35.643211, 35.456753, 23.525385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084213, 35.313461, 22.854383>,  <35.522663, 34.878540, 23.149702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084213, 35.313461, 22.854383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346218, 35.561493, 23.027111>,  <35.503422, 35.710312, 23.130747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346218, 35.561493, 23.027111>,  <35.084213, 35.313461, 22.854383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346218, 35.561493, 23.027111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167706, 0.437923, -0.883232,
		-0.736776, 0.650942, 0.182852,
		0.655008, 0.620079, 0.431818,
		35.542721, 35.747517, 23.156656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837406, 35.955200, 22.583679>,  <35.084213, 35.313461, 22.854383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837406, 35.955200, 22.583679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207573, 36.023228, 22.719131>,  <35.429672, 36.064045, 22.800404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207573, 36.023228, 22.719131>,  <34.837406, 35.955200, 22.583679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207573, 36.023228, 22.719131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198020, 0.544865, -0.814807,
		-0.323085, 0.821095, 0.470552,
		0.925421, 0.170073, 0.338631,
		35.485199, 36.074249, 22.820721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890007, 36.680096, 22.579477>,  <34.837406, 35.955200, 22.583679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890007, 36.680096, 22.579477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253025, 36.514755, 22.549786>,  <35.470837, 36.415550, 22.531971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253025, 36.514755, 22.549786>,  <34.890007, 36.680096, 22.579477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253025, 36.514755, 22.549786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255130, 0.683055, -0.684357,
		0.333580, 0.602145, 0.725359,
		0.907543, -0.413348, -0.074228,
		35.525288, 36.390751, 22.527517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406528, 37.239094, 22.476542>,  <34.890007, 36.680096, 22.579477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406528, 37.239094, 22.476542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622673, 36.915844, 22.382780>,  <35.752361, 36.721893, 22.326523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622673, 36.915844, 22.382780>,  <35.406528, 37.239094, 22.476542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622673, 36.915844, 22.382780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463080, 0.518209, -0.719038,
		0.702543, 0.279992, 0.654246,
		0.540362, -0.808123, -0.234405,
		35.784782, 36.673409, 22.312458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080299, 37.501022, 22.383837>,  <35.406528, 37.239094, 22.476542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080299, 37.501022, 22.383837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042007, 37.167042, 22.167061>,  <36.019032, 36.966656, 22.036995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042007, 37.167042, 22.167061>,  <36.080299, 37.501022, 22.383837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042007, 37.167042, 22.167061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498988, 0.430839, -0.751923,
		0.861305, -0.342404, 0.375384,
		-0.095732, -0.834948, -0.541939,
		36.013287, 36.916557, 22.004478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761124, 37.433567, 22.142307>,  <36.080299, 37.501022, 22.383837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761124, 37.433567, 22.142307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541695, 37.222439, 21.882931>,  <36.410038, 37.095764, 21.727304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541695, 37.222439, 21.882931>,  <36.761124, 37.433567, 22.142307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541695, 37.222439, 21.882931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421100, 0.495592, -0.759647,
		0.722317, -0.689781, -0.049605,
		-0.548574, -0.527817, -0.648441,
		36.377121, 37.064095, 21.688398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148750, 37.273148, 21.483849>,  <36.761124, 37.433567, 22.142307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148750, 37.273148, 21.483849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779736, 37.188446, 21.354795>,  <36.558327, 37.137623, 21.277363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779736, 37.188446, 21.354795>,  <37.148750, 37.273148, 21.483849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779736, 37.188446, 21.354795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204945, 0.439564, -0.874518,
		0.327003, -0.872893, -0.362114,
		-0.922533, -0.211756, -0.322634,
		36.502975, 37.124920, 21.258005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292213, 37.008625, 20.816980>,  <37.148750, 37.273148, 21.483849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292213, 37.008625, 20.816980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914745, 37.137894, 20.845375>,  <36.688263, 37.215454, 20.862411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914745, 37.137894, 20.845375>,  <37.292213, 37.008625, 20.816980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914745, 37.137894, 20.845375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117845, 0.528749, -0.840558,
		-0.309178, -0.784847, -0.537051,
		-0.943675, 0.323171, 0.070987,
		36.631641, 37.234844, 20.866671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076786, 37.004009, 20.183971>,  <37.292213, 37.008625, 20.816980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076786, 37.004009, 20.183971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790733, 37.241768, 20.331093>,  <36.619102, 37.384422, 20.419367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790733, 37.241768, 20.331093>,  <37.076786, 37.004009, 20.183971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790733, 37.241768, 20.331093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012033, 0.515650, -0.856715,
		-0.698884, -0.617091, -0.361606,
		-0.715134, 0.594393, 0.367805,
		36.576195, 37.420086, 20.441435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510803, 36.994987, 19.702847>,  <37.076786, 37.004009, 20.183971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510803, 36.994987, 19.702847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480251, 37.332111, 19.915955>,  <36.461918, 37.534386, 20.043819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480251, 37.332111, 19.915955>,  <36.510803, 36.994987, 19.702847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480251, 37.332111, 19.915955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147853, 0.518850, -0.841983,
		-0.986055, -0.143084, 0.084980,
		-0.076382, 0.842806, 0.532770,
		36.457336, 37.584953, 20.075785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003380, 37.358559, 19.326067>,  <36.510803, 36.994987, 19.702847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003380, 37.358559, 19.326067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220306, 37.623302, 19.533077>,  <36.350464, 37.782150, 19.657284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220306, 37.623302, 19.533077>,  <36.003380, 37.358559, 19.326067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220306, 37.623302, 19.533077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107953, 0.665763, -0.738312,
		-0.833209, 0.344532, 0.432506,
		0.542319, 0.661858, 0.517527,
		36.383003, 37.821861, 19.688335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518875, 37.868599, 19.558210>,  <36.003380, 37.358559, 19.326067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518875, 37.868599, 19.558210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892570, 38.010818, 19.569368>,  <36.116787, 38.096149, 19.576063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892570, 38.010818, 19.569368>,  <35.518875, 37.868599, 19.558210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892570, 38.010818, 19.569368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217980, 0.631167, -0.744388,
		-0.282271, 0.689357, 0.667165,
		0.934241, 0.355548, 0.027894,
		36.172844, 38.117481, 19.577736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594509, 38.684521, 19.672016>,  <35.518875, 37.868599, 19.558210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594509, 38.684521, 19.672016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877228, 38.518242, 19.443062>,  <36.046860, 38.418472, 19.305689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877228, 38.518242, 19.443062>,  <35.594509, 38.684521, 19.672016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877228, 38.518242, 19.443062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215855, 0.643804, -0.734113,
		0.673675, 0.642425, 0.365311,
		0.706801, -0.415700, -0.572386,
		36.089268, 38.393532, 19.271345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619995, 39.310951, 20.069330>,  <35.594509, 38.684521, 19.672016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619995, 39.310951, 20.069330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312695, 39.307201, 19.813299>,  <35.128315, 39.304951, 19.659679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312695, 39.307201, 19.813299>,  <35.619995, 39.310951, 20.069330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312695, 39.307201, 19.813299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618986, -0.244084, 0.746511,
		-0.163233, 0.969709, 0.181714,
		-0.768252, -0.009377, -0.640079,
		35.082218, 39.304390, 19.621275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064869, 39.645760, 20.406628>,  <35.619995, 39.310951, 20.069330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064869, 39.645760, 20.406628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909760, 39.395554, 20.135817>,  <34.816696, 39.245430, 19.973330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909760, 39.395554, 20.135817>,  <35.064869, 39.645760, 20.406628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909760, 39.395554, 20.135817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730124, -0.239891, 0.639821,
		-0.562630, 0.742418, -0.363680,
		-0.387771, -0.625514, -0.677027,
		34.793427, 39.207901, 19.932709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346817, 39.856037, 20.395908>,  <35.064869, 39.645760, 20.406628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346817, 39.856037, 20.395908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351044, 39.491734, 20.230789>,  <34.353580, 39.273151, 20.131718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351044, 39.491734, 20.230789>,  <34.346817, 39.856037, 20.395908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351044, 39.491734, 20.230789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627050, -0.327600, 0.706743,
		-0.778907, 0.251377, -0.574555,
		0.010565, -0.910762, -0.412796,
		34.354214, 39.218506, 20.106951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615925, 39.629353, 20.365511>,  <34.346817, 39.856037, 20.395908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615925, 39.629353, 20.365511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836487, 39.297722, 20.328436>,  <33.968822, 39.098743, 20.306190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836487, 39.297722, 20.328436>,  <33.615925, 39.629353, 20.365511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836487, 39.297722, 20.328436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699758, -0.520142, 0.489684,
		-0.454195, -0.205154, -0.866959,
		0.551403, -0.829074, -0.092688,
		34.001907, 39.049000, 20.300629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140980, 39.156437, 20.374985>,  <33.615925, 39.629353, 20.365511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140980, 39.156437, 20.374985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467953, 38.934814, 20.438002>,  <33.664139, 38.801842, 20.475813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467953, 38.934814, 20.438002>,  <33.140980, 39.156437, 20.374985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467953, 38.934814, 20.438002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503709, -0.554890, 0.662099,
		-0.279420, -0.620580, -0.732670,
		0.817436, -0.554056, 0.157544,
		33.713184, 38.768597, 20.485266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059113, 38.358208, 20.272606>,  <33.140980, 39.156437, 20.374985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059113, 38.358208, 20.272606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363815, 38.405182, 20.527460>,  <33.546635, 38.433365, 20.680372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363815, 38.405182, 20.527460>,  <33.059113, 38.358208, 20.272606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363815, 38.405182, 20.527460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386440, -0.706969, 0.592333,
		0.519994, -0.697426, -0.493156,
		0.761755, 0.117434, 0.637133,
		33.592342, 38.440411, 20.718599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163307, 37.631229, 20.432030>,  <33.059113, 38.358208, 20.272606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163307, 37.631229, 20.432030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358208, 37.793476, 20.741367>,  <33.475147, 37.890823, 20.926970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358208, 37.793476, 20.741367>,  <33.163307, 37.631229, 20.432030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358208, 37.793476, 20.741367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329664, -0.734616, 0.593010,
		0.808647, -0.543888, -0.224223,
		0.487249, 0.405618, 0.773345,
		33.504383, 37.915161, 20.973372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497475, 37.141113, 20.792297>,  <33.163307, 37.631229, 20.432030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497475, 37.141113, 20.792297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513950, 37.420517, 21.078064>,  <33.523834, 37.588158, 21.249523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513950, 37.420517, 21.078064>,  <33.497475, 37.141113, 20.792297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513950, 37.420517, 21.078064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104980, -0.708040, 0.698326,
		0.993621, -0.103761, 0.044168,
		0.041187, 0.698508, 0.714416,
		33.526306, 37.630070, 21.292389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056175, 36.919815, 21.292229>,  <33.497475, 37.141113, 20.792297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056175, 36.919815, 21.292229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815052, 37.155731, 21.507175>,  <33.670376, 37.297283, 21.636143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815052, 37.155731, 21.507175>,  <34.056175, 36.919815, 21.292229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815052, 37.155731, 21.507175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008326, -0.668802, 0.743394,
		0.797842, 0.452599, 0.398250,
		-0.602809, 0.589795, 0.537366,
		33.634209, 37.332668, 21.668385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202896, 36.699604, 21.985085>,  <34.056175, 36.919815, 21.292229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202896, 36.699604, 21.985085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892059, 36.938839, 22.063478>,  <33.705555, 37.082382, 22.110516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892059, 36.938839, 22.063478>,  <34.202896, 36.699604, 21.985085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892059, 36.938839, 22.063478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061792, -0.382389, 0.921933,
		0.626343, 0.704319, 0.334110,
		-0.777094, 0.598092, 0.195986,
		33.658932, 37.118267, 22.122274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321239, 37.110855, 22.658140>,  <34.202896, 36.699604, 21.985085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321239, 37.110855, 22.658140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928387, 37.071941, 22.593693>,  <33.692677, 37.048592, 22.555025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928387, 37.071941, 22.593693>,  <34.321239, 37.110855, 22.658140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928387, 37.071941, 22.593693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095741, -0.478767, 0.872706,
		-0.162038, 0.872535, 0.460897,
		-0.982129, -0.097285, -0.161116,
		33.633747, 37.042755, 22.545359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965012, 37.399963, 23.323187>,  <34.321239, 37.110855, 22.658140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965012, 37.399963, 23.323187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695168, 37.177322, 23.129244>,  <33.533260, 37.043736, 23.012878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695168, 37.177322, 23.129244>,  <33.965012, 37.399963, 23.323187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695168, 37.177322, 23.129244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184538, -0.508811, 0.840867,
		-0.714732, 0.656735, 0.240536,
		-0.674614, -0.556606, -0.484856,
		33.492783, 37.010342, 22.983788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496071, 37.196648, 23.820452>,  <33.965012, 37.399963, 23.323187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496071, 37.196648, 23.820452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441463, 36.932285, 23.525274>,  <33.408699, 36.773666, 23.348167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441463, 36.932285, 23.525274>,  <33.496071, 37.196648, 23.820452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441463, 36.932285, 23.525274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273522, -0.690813, 0.669301,
		-0.952128, 0.293215, -0.086466,
		-0.136518, -0.660910, -0.737943,
		33.400509, 36.734013, 23.303892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817493, 36.915131, 23.829136>,  <33.496071, 37.196648, 23.820452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817493, 36.915131, 23.829136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040241, 36.629597, 23.659273>,  <33.173889, 36.458275, 23.557356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040241, 36.629597, 23.659273>,  <32.817493, 36.915131, 23.829136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040241, 36.629597, 23.659273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392384, -0.676704, 0.622981,
		-0.732076, -0.180288, -0.656932,
		0.556865, -0.713840, -0.424657,
		33.207302, 36.415443, 23.531876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377193, 36.303356, 23.880398>,  <32.817493, 36.915131, 23.829136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377193, 36.303356, 23.880398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707268, 36.108738, 23.765623>,  <32.905312, 35.991966, 23.696758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707268, 36.108738, 23.765623>,  <32.377193, 36.303356, 23.880398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707268, 36.108738, 23.765623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283338, -0.795996, 0.534892,
		-0.488652, -0.360087, -0.794706,
		0.825191, -0.486546, -0.286939,
		32.954826, 35.962772, 23.679541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102196, 35.658882, 23.788773>,  <32.377193, 36.303356, 23.880398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102196, 35.658882, 23.788773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496819, 35.609776, 23.831911>,  <32.733593, 35.580311, 23.857794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496819, 35.609776, 23.831911>,  <32.102196, 35.658882, 23.788773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496819, 35.609776, 23.831911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163170, -0.775760, 0.609567,
		0.008830, -0.618971, -0.785364,
		0.986558, -0.122765, 0.107848,
		32.792786, 35.572945, 23.864265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227196, 34.930496, 23.726362>,  <32.102196, 35.658882, 23.788773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227196, 34.930496, 23.726362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562466, 35.077915, 23.887175>,  <32.763630, 35.166367, 23.983662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562466, 35.077915, 23.887175>,  <32.227196, 34.930496, 23.726362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562466, 35.077915, 23.887175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019467, -0.716447, 0.697370,
		0.545052, -0.592346, -0.593334,
		0.838176, 0.368552, 0.402032,
		32.813919, 35.188480, 24.007784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774555, 34.325695, 23.788689>,  <32.227196, 34.930496, 23.726362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774555, 34.325695, 23.788689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872223, 34.609421, 24.053188>,  <32.930824, 34.779655, 24.211887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872223, 34.609421, 24.053188>,  <32.774555, 34.325695, 23.788689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872223, 34.609421, 24.053188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037562, -0.688293, 0.724459,
		0.969006, -0.152051, -0.194701,
		0.244167, 0.709318, 0.661249,
		32.945473, 34.822216, 24.251562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280426, 33.922188, 24.243099>,  <32.774555, 34.325695, 23.788689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280426, 33.922188, 24.243099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154793, 34.248592, 24.437202>,  <33.079414, 34.444435, 24.553665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154793, 34.248592, 24.437202>,  <33.280426, 33.922188, 24.243099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154793, 34.248592, 24.437202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178640, -0.552790, 0.813948,
		0.932438, 0.168960, 0.319394,
		-0.314082, 0.816012, 0.485260,
		33.060570, 34.493397, 24.582781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631496, 33.869946, 24.899515>,  <33.280426, 33.922188, 24.243099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631496, 33.869946, 24.899515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313229, 34.107128, 24.949020>,  <33.122269, 34.249439, 24.978724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313229, 34.107128, 24.949020>,  <33.631496, 33.869946, 24.899515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313229, 34.107128, 24.949020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211538, -0.463457, 0.860500,
		0.567598, 0.658490, 0.494190,
		-0.795666, 0.592958, 0.123762,
		33.074528, 34.285015, 24.986149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.312279, 31.810383, 29.730526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.980202, 31.996443, 29.607618>,  <35.780956, 32.108078, 29.533873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.980202, 31.996443, 29.607618>,  <36.312279, 31.810383, 29.730526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980202, 31.996443, 29.607618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457298, -0.252984, 0.852571,
		0.318837, 0.848314, 0.422737,
		-0.830194, 0.465148, -0.307271,
		35.731144, 32.135986, 29.515436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157482, 32.442410, 30.141069>,  <36.312279, 31.810383, 29.730526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157482, 32.442410, 30.141069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.800129, 32.355446, 29.983795>,  <35.585716, 32.303268, 29.889431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.800129, 32.355446, 29.983795>,  <36.157482, 32.442410, 30.141069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800129, 32.355446, 29.983795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355388, -0.193457, 0.914480,
		-0.274880, 0.956717, 0.095568,
		-0.893387, -0.217409, -0.393183,
		35.532112, 32.290222, 29.865841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614429, 32.734016, 30.565845>,  <36.157482, 32.442410, 30.141069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614429, 32.734016, 30.565845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.438637, 32.433369, 30.369101>,  <35.333160, 32.252979, 30.251053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.438637, 32.433369, 30.369101>,  <35.614429, 32.734016, 30.565845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438637, 32.433369, 30.369101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485364, -0.262051, 0.834117,
		-0.755828, 0.605313, -0.249640,
		-0.439484, -0.751616, -0.491862,
		35.306793, 32.207886, 30.221542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881420, 32.833881, 30.747120>,  <35.614429, 32.734016, 30.565845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881420, 32.833881, 30.747120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920189, 32.455933, 30.622011>,  <34.943451, 32.229164, 30.546946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920189, 32.455933, 30.622011>,  <34.881420, 32.833881, 30.747120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920189, 32.455933, 30.622011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474670, -0.320094, 0.819895,
		-0.874811, 0.068996, -0.479527,
		0.096924, -0.944870, -0.312772,
		34.949265, 32.172470, 30.528179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304276, 32.573540, 30.842306>,  <34.881420, 32.833881, 30.747120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304276, 32.573540, 30.842306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490128, 32.220245, 30.816982>,  <34.601639, 32.008266, 30.801788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490128, 32.220245, 30.816982>,  <34.304276, 32.573540, 30.842306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490128, 32.220245, 30.816982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543076, -0.340696, 0.767460,
		-0.699421, -0.322200, -0.637963,
		0.464627, -0.883240, -0.063311,
		34.629517, 31.955273, 30.797989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815132, 32.150757, 30.875937>,  <34.304276, 32.573540, 30.842306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815132, 32.150757, 30.875937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.113441, 31.897392, 30.958511>,  <34.292427, 31.745375, 31.008057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.113441, 31.897392, 30.958511>,  <33.815132, 32.150757, 30.875937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113441, 31.897392, 30.958511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552064, -0.414138, 0.723681,
		-0.372890, -0.653671, -0.658535,
		0.745773, -0.633407, 0.206440,
		34.337173, 31.707371, 31.020443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597065, 31.521402, 30.960537>,  <33.815132, 32.150757, 30.875937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597065, 31.521402, 30.960537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.925121, 31.498045, 31.188206>,  <34.121956, 31.484032, 31.324806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.925121, 31.498045, 31.188206>,  <33.597065, 31.521402, 30.960537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925121, 31.498045, 31.188206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569141, -0.185311, 0.801086,
		0.058698, -0.980944, -0.185214,
		0.820142, -0.058391, 0.569172,
		34.171165, 31.480528, 31.358957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441940, 30.953192, 31.457357>,  <33.597065, 31.521402, 30.960537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441940, 30.953192, 31.457357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.740559, 31.169569, 31.612301>,  <33.919731, 31.299395, 31.705267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.740559, 31.169569, 31.612301>,  <33.441940, 30.953192, 31.457357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740559, 31.169569, 31.612301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356248, -0.166714, 0.919398,
		0.561919, -0.824372, 0.068249,
		0.746548, 0.540941, 0.387361,
		33.964523, 31.331852, 31.728510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680672, 30.601519, 32.056660>,  <33.441940, 30.953192, 31.457357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680672, 30.601519, 32.056660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821281, 30.974022, 32.094994>,  <33.905647, 31.197525, 32.117992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821281, 30.974022, 32.094994>,  <33.680672, 30.601519, 32.056660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821281, 30.974022, 32.094994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618840, 0.154336, 0.770206,
		0.702471, -0.330054, 0.630554,
		0.351527, 0.931260, 0.095834,
		33.926739, 31.253401, 32.123745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944553, 30.638081, 32.775688>,  <33.680672, 30.601519, 32.056660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944553, 30.638081, 32.775688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.850677, 31.003832, 32.643726>,  <33.794353, 31.223282, 32.564548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.850677, 31.003832, 32.643726>,  <33.944553, 30.638081, 32.775688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850677, 31.003832, 32.643726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618883, 0.121161, 0.776082,
		0.749604, 0.386306, 0.537458,
		-0.234686, 0.914378, -0.329901,
		33.780273, 31.278145, 32.544754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055519, 31.260576, 33.352005>,  <33.944553, 30.638081, 32.775688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055519, 31.260576, 33.352005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.782246, 31.372438, 33.082172>,  <33.618282, 31.439556, 32.920273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.782246, 31.372438, 33.082172>,  <34.055519, 31.260576, 33.352005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782246, 31.372438, 33.082172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567008, 0.378986, 0.731350,
		0.460181, 0.882136, -0.100350,
		-0.683181, 0.279653, -0.674580,
		33.577290, 31.456335, 32.879799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360233, 30.932249, 33.994820>,  <34.055519, 31.260576, 33.352005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360233, 30.932249, 33.994820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.183308, 31.290829, 34.005657>,  <34.077152, 31.505978, 34.012161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.183308, 31.290829, 34.005657>,  <34.360233, 30.932249, 33.994820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183308, 31.290829, 34.005657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262332, 0.100427, 0.959738,
		0.857637, 0.431614, -0.279588,
		-0.442314, 0.896451, 0.027096,
		34.050613, 31.559765, 34.013786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836655, 31.414442, 34.202324>,  <34.360233, 30.932249, 33.994820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836655, 31.414442, 34.202324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.465488, 31.517773, 34.309830>,  <34.242786, 31.579771, 34.374332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.465488, 31.517773, 34.309830>,  <34.836655, 31.414442, 34.202324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465488, 31.517773, 34.309830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320345, 0.183849, 0.929289,
		0.190649, 0.948402, -0.253351,
		-0.927918, 0.258328, 0.268765,
		34.187115, 31.595270, 34.390461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870426, 32.087250, 34.608334>,  <34.836655, 31.414442, 34.202324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870426, 32.087250, 34.608334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.566521, 31.847334, 34.708736>,  <34.384178, 31.703384, 34.768978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.566521, 31.847334, 34.708736>,  <34.870426, 32.087250, 34.608334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566521, 31.847334, 34.708736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324360, -0.015058, 0.945814,
		-0.563510, 0.800016, 0.205988,
		-0.759768, -0.599790, 0.251008,
		34.338589, 31.667397, 34.784039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628506, 32.404427, 34.881863>,  <34.870426, 32.087250, 34.608334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628506, 32.404427, 34.881863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861805, 32.603165, 35.138912>,  <36.001785, 32.722408, 35.293140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861805, 32.603165, 35.138912>,  <35.628506, 32.404427, 34.881863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861805, 32.603165, 35.138912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431818, 0.480428, -0.763362,
		-0.688006, 0.722728, 0.065665,
		0.583251, 0.496843, 0.642624,
		36.036781, 32.752216, 35.331699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510212, 33.221497, 34.887386>,  <35.628506, 32.404427, 34.881863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510212, 33.221497, 34.887386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.886391, 33.097843, 34.943962>,  <36.112099, 33.023651, 34.977905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.886391, 33.097843, 34.943962>,  <35.510212, 33.221497, 34.887386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886391, 33.097843, 34.943962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300145, 0.559692, -0.772436,
		0.159623, 0.768884, 0.619143,
		0.940443, -0.309131, 0.141436,
		36.168522, 33.005104, 34.986393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933270, 33.784283, 34.807312>,  <35.510212, 33.221497, 34.887386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933270, 33.784283, 34.807312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.165527, 33.469780, 34.722786>,  <36.304882, 33.281078, 34.672070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.165527, 33.469780, 34.722786>,  <35.933270, 33.784283, 34.807312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165527, 33.469780, 34.722786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326035, 0.462381, -0.824564,
		0.746028, 0.409880, 0.524824,
		0.580641, -0.786259, -0.211314,
		36.339718, 33.233902, 34.659393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530834, 34.106953, 34.519180>,  <35.933270, 33.784283, 34.807312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530834, 34.106953, 34.519180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.523388, 33.726624, 34.395504>,  <36.518921, 33.498428, 34.321301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.523388, 33.726624, 34.395504>,  <36.530834, 34.106953, 34.519180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523388, 33.726624, 34.395504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060019, 0.307622, -0.949614,
		0.998024, -0.036231, 0.051342,
		-0.018612, -0.950819, -0.309188,
		36.517803, 33.441380, 34.302746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002834, 34.195343, 34.105225>,  <36.530834, 34.106953, 34.519180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002834, 34.195343, 34.105225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838203, 33.849991, 33.988483>,  <36.739426, 33.642780, 33.918438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838203, 33.849991, 33.988483>,  <37.002834, 34.195343, 34.105225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838203, 33.849991, 33.988483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035650, 0.304735, -0.951770,
		0.910675, -0.402135, -0.094644,
		-0.411582, -0.863379, -0.291851,
		36.714729, 33.590977, 33.900928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482464, 33.831440, 33.570183>,  <37.002834, 34.195343, 34.105225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482464, 33.831440, 33.570183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103855, 33.712978, 33.518970>,  <36.876690, 33.641899, 33.488243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103855, 33.712978, 33.518970>,  <37.482464, 33.831440, 33.570183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103855, 33.712978, 33.518970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027446, 0.321480, -0.946519,
		0.321480, -0.899411, -0.296158,
		0.946519, 0.296158, 0.128035,
		36.819901, 33.624130, 33.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507702, 33.561062, 32.940403>,  <37.482464, 33.831440, 33.570183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507702, 33.561062, 32.940403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109325, 33.566433, 32.976006>,  <36.870300, 33.569656, 32.997368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109325, 33.566433, 32.976006>,  <37.507702, 33.561062, 32.940403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109325, 33.566433, 32.976006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085613, 0.164081, -0.982725,
		-0.027796, -0.986356, -0.162265,
		-0.995941, 0.013424, 0.089005,
		36.810543, 33.570461, 33.002708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233868, 33.092884, 32.493156>,  <37.507702, 33.561062, 32.940403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233868, 33.092884, 32.493156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943848, 33.357182, 32.570850>,  <36.769836, 33.515759, 32.617466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943848, 33.357182, 32.570850>,  <37.233868, 33.092884, 32.493156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943848, 33.357182, 32.570850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178101, 0.092543, -0.979651,
		-0.665271, -0.744886, 0.050581,
		-0.725048, 0.660742, 0.194231,
		36.726334, 33.555405, 32.629120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798882, 32.993828, 31.982128>,  <37.233868, 33.092884, 32.493156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798882, 32.993828, 31.982128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.704048, 33.361534, 32.107819>,  <36.647148, 33.582157, 32.183231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.704048, 33.361534, 32.107819>,  <36.798882, 32.993828, 31.982128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704048, 33.361534, 32.107819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015464, 0.319834, -0.947347,
		-0.971366, -0.229460, -0.061612,
		-0.237084, 0.919268, 0.314224,
		36.632923, 33.637314, 32.202087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338024, 33.249561, 31.544069>,  <36.798882, 32.993828, 31.982128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338024, 33.249561, 31.544069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463139, 33.584167, 31.724024>,  <36.538208, 33.784931, 31.831997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463139, 33.584167, 31.724024>,  <36.338024, 33.249561, 31.544069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463139, 33.584167, 31.724024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047778, 0.486910, -0.872144,
		-0.948620, 0.251302, 0.192267,
		0.312788, 0.836520, 0.449886,
		36.556976, 33.835125, 31.858990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047401, 33.822723, 31.223721>,  <36.338024, 33.249561, 31.544069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047401, 33.822723, 31.223721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371330, 33.990341, 31.387959>,  <36.565689, 34.090912, 31.486502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371330, 33.990341, 31.387959>,  <36.047401, 33.822723, 31.223721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371330, 33.990341, 31.387959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213810, 0.440932, -0.871702,
		-0.546328, 0.793713, 0.267480,
		0.809821, 0.419046, 0.410597,
		36.614277, 34.116055, 31.511137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873081, 34.545952, 30.997215>,  <36.047401, 33.822723, 31.223721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873081, 34.545952, 30.997215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.258038, 34.507065, 31.098684>,  <36.489010, 34.483730, 31.159565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.258038, 34.507065, 31.098684>,  <35.873081, 34.545952, 30.997215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258038, 34.507065, 31.098684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258755, 0.612470, -0.746945,
		-0.082749, 0.784493, 0.614592,
		0.962392, -0.097219, 0.253673,
		36.546757, 34.477898, 31.174786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098312, 35.189804, 31.004601>,  <35.873081, 34.545952, 30.997215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098312, 35.189804, 31.004601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439198, 34.986012, 30.956995>,  <36.643730, 34.863735, 30.928431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439198, 34.986012, 30.956995>,  <36.098312, 35.189804, 31.004601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439198, 34.986012, 30.956995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260286, 0.610184, -0.748282,
		0.453856, 0.606717, 0.652617,
		0.852212, -0.509480, -0.119015,
		36.694862, 34.833168, 30.921289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662838, 35.663883, 30.992096>,  <36.098312, 35.189804, 31.004601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662838, 35.663883, 30.992096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.803539, 35.340099, 30.804037>,  <36.887959, 35.145828, 30.691202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.803539, 35.340099, 30.804037>,  <36.662838, 35.663883, 30.992096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803539, 35.340099, 30.804037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187772, 0.553049, -0.811714,
		0.917067, 0.197243, 0.346531,
		0.351754, -0.809464, -0.470146,
		36.909065, 35.097260, 30.662992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778740, 36.277538, 31.337099>,  <36.662838, 35.663883, 30.992096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778740, 36.277538, 31.337099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.453922, 36.509327, 31.364801>,  <36.259033, 36.648399, 31.381424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.453922, 36.509327, 31.364801>,  <36.778740, 36.277538, 31.337099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453922, 36.509327, 31.364801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261668, -0.467599, 0.844323,
		0.521649, 0.667503, 0.531340,
		-0.812042, 0.579475, 0.069258,
		36.210308, 36.683170, 31.385578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682911, 36.461681, 32.058064>,  <36.778740, 36.277538, 31.337099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682911, 36.461681, 32.058064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.325542, 36.539928, 31.896301>,  <36.111122, 36.586876, 31.799244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.325542, 36.539928, 31.896301>,  <36.682911, 36.461681, 32.058064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325542, 36.539928, 31.896301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446551, -0.484878, 0.751988,
		-0.048987, 0.852425, 0.520550,
		-0.893417, 0.195614, -0.404403,
		36.057518, 36.598614, 31.774981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316830, 36.664135, 32.529308>,  <36.682911, 36.461681, 32.058064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316830, 36.664135, 32.529308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.042980, 36.518700, 32.276611>,  <35.878670, 36.431438, 32.124992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.042980, 36.518700, 32.276611>,  <36.316830, 36.664135, 32.529308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042980, 36.518700, 32.276611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455406, -0.463356, 0.760202,
		-0.569119, 0.808151, 0.151645,
		-0.684623, -0.363585, -0.631741,
		35.837593, 36.409622, 32.087090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649319, 36.829197, 32.871082>,  <36.316830, 36.664135, 32.529308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649319, 36.829197, 32.871082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.568359, 36.553986, 32.592327>,  <35.519783, 36.388859, 32.425076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.568359, 36.553986, 32.592327>,  <35.649319, 36.829197, 32.871082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568359, 36.553986, 32.592327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785328, -0.311101, 0.535235,
		-0.585059, 0.655615, -0.477362,
		-0.202401, -0.688029, -0.696886,
		35.507641, 36.347576, 32.383263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937096, 36.878399, 32.678589>,  <35.649319, 36.829197, 32.871082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937096, 36.878399, 32.678589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030643, 36.508224, 32.559341>,  <35.086773, 36.286121, 32.487793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030643, 36.508224, 32.559341>,  <34.937096, 36.878399, 32.678589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030643, 36.508224, 32.559341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899985, -0.322075, 0.293760,
		-0.367873, 0.199604, -0.908201,
		0.233873, -0.925433, -0.298123,
		35.100807, 36.230595, 32.469906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370525, 36.597149, 32.392052>,  <34.937096, 36.878399, 32.678589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370525, 36.597149, 32.392052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.572578, 36.264053, 32.482731>,  <34.693810, 36.064198, 32.537140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.572578, 36.264053, 32.482731>,  <34.370525, 36.597149, 32.392052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572578, 36.264053, 32.482731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838551, -0.411439, 0.357143,
		-0.204134, -0.370503, -0.906122,
		0.505136, -0.832734, 0.226697,
		34.724121, 36.014233, 32.550739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015251, 36.037121, 32.275330>,  <34.370525, 36.597149, 32.392052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015251, 36.037121, 32.275330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272362, 35.848087, 32.516495>,  <34.426628, 35.734669, 32.661194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272362, 35.848087, 32.516495>,  <34.015251, 36.037121, 32.275330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272362, 35.848087, 32.516495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764603, -0.444181, 0.466995,
		0.047111, -0.761165, -0.646845,
		0.642777, -0.472580, 0.602915,
		34.465195, 35.706314, 32.697369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809330, 35.330715, 32.269634>,  <34.015251, 36.037121, 32.275330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809330, 35.330715, 32.269634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.028976, 35.346493, 32.603561>,  <34.160763, 35.355957, 32.803917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.028976, 35.346493, 32.603561>,  <33.809330, 35.330715, 32.269634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028976, 35.346493, 32.603561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723784, -0.476988, 0.498618,
		0.417864, -0.878025, -0.233373,
		0.549115, 0.039442, 0.834816,
		34.193710, 35.358326, 32.854008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708736, 34.628799, 32.576225>,  <33.809330, 35.330715, 32.269634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708736, 34.628799, 32.576225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.832836, 34.869198, 32.870857>,  <33.907295, 35.013439, 33.047634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.832836, 34.869198, 32.870857>,  <33.708736, 34.628799, 32.576225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832836, 34.869198, 32.870857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620982, -0.458547, 0.635701,
		0.719811, -0.654626, 0.230947,
		0.310246, 0.600999, 0.736578,
		33.925911, 35.049496, 33.091831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118824, 34.307484, 33.071430>,  <33.708736, 34.628799, 32.576225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118824, 34.307484, 33.071430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.944401, 34.620911, 33.248463>,  <33.839745, 34.808968, 33.354683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.944401, 34.620911, 33.248463>,  <34.118824, 34.307484, 33.071430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944401, 34.620911, 33.248463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359220, -0.602475, 0.712730,
		0.825113, 0.151812, 0.544189,
		-0.436061, 0.783567, 0.442577,
		33.813583, 34.855980, 33.381237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098495, 34.147984, 33.819763>,  <34.118824, 34.307484, 33.071430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098495, 34.147984, 33.819763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.839836, 34.452343, 33.798298>,  <33.684639, 34.634960, 33.785419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.839836, 34.452343, 33.798298>,  <34.098495, 34.147984, 33.819763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839836, 34.452343, 33.798298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499408, -0.369140, 0.783790,
		0.576573, 0.533639, 0.618702,
		-0.646649, 0.760897, -0.053667,
		33.645840, 34.680611, 33.782196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101528, 34.441010, 34.470188>,  <34.098495, 34.147984, 33.819763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101528, 34.441010, 34.470188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.755085, 34.510033, 34.282536>,  <33.547218, 34.551445, 34.169945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.755085, 34.510033, 34.282536>,  <34.101528, 34.441010, 34.470188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755085, 34.510033, 34.282536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498838, -0.358297, 0.789166,
		-0.031913, 0.917523, 0.396401,
		-0.866107, 0.172556, -0.469130,
		33.495255, 34.561798, 34.141796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.561760, 38.833546, 28.848604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181034, 38.905048, 28.748936>,  <36.952599, 38.947948, 28.689135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181034, 38.905048, 28.748936>,  <37.561760, 38.833546, 28.848604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181034, 38.905048, 28.748936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298685, -0.356307, 0.885343,
		0.069478, 0.917111, 0.392532,
		-0.951819, 0.178755, -0.249171,
		36.895489, 38.958675, 28.674185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256565, 39.269199, 29.384695>,  <37.561760, 38.833546, 28.848604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256565, 39.269199, 29.384695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955402, 39.075363, 29.206570>,  <36.774704, 38.959061, 29.099693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955402, 39.075363, 29.206570>,  <37.256565, 39.269199, 29.384695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955402, 39.075363, 29.206570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179414, -0.499878, 0.847309,
		-0.633204, 0.717838, 0.289416,
		-0.752903, -0.484594, -0.445315,
		36.729530, 38.929985, 29.072975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729671, 39.291409, 29.822706>,  <37.256565, 39.269199, 29.384695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729671, 39.291409, 29.822706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595196, 38.990410, 29.596176>,  <36.514511, 38.809811, 29.460258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595196, 38.990410, 29.596176>,  <36.729671, 39.291409, 29.822706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595196, 38.990410, 29.596176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190266, -0.534660, 0.823370,
		-0.922373, 0.384565, 0.036575,
		-0.336194, -0.752495, -0.566325,
		36.494339, 38.764660, 29.426279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063431, 39.113354, 30.056519>,  <36.729671, 39.291409, 29.822706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063431, 39.113354, 30.056519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191257, 38.795700, 29.849739>,  <36.267952, 38.605110, 29.725672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191257, 38.795700, 29.849739>,  <36.063431, 39.113354, 30.056519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191257, 38.795700, 29.849739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338091, -0.605205, 0.720709,
		-0.885197, -0.055538, -0.461890,
		0.319565, -0.794130, -0.516949,
		36.287128, 38.557461, 29.694654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495808, 38.598740, 30.107559>,  <36.063431, 39.113354, 30.056519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495808, 38.598740, 30.107559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822998, 38.397236, 29.996456>,  <36.019310, 38.276333, 29.929794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822998, 38.397236, 29.996456>,  <35.495808, 38.598740, 30.107559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822998, 38.397236, 29.996456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219603, -0.719720, 0.658618,
		-0.531690, -0.477736, -0.699338,
		0.817973, -0.503757, -0.277756,
		36.068390, 38.246109, 29.913130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261959, 37.889931, 30.020447>,  <35.495808, 38.598740, 30.107559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261959, 37.889931, 30.020447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649162, 37.873955, 30.119528>,  <35.881485, 37.864368, 30.178976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649162, 37.873955, 30.119528>,  <35.261959, 37.889931, 30.020447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649162, 37.873955, 30.119528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194732, -0.742138, 0.641335,
		0.158214, -0.669056, -0.726176,
		0.968013, -0.039941, 0.247703,
		35.939568, 37.861973, 30.193838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384186, 37.126266, 30.099518>,  <35.261959, 37.889931, 30.020447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384186, 37.126266, 30.099518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708012, 37.295479, 30.262314>,  <35.902309, 37.397007, 30.359991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708012, 37.295479, 30.262314>,  <35.384186, 37.126266, 30.099518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708012, 37.295479, 30.262314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082359, -0.768306, 0.634762,
		0.581219, -0.480363, -0.656837,
		0.809568, 0.423033, 0.406992,
		35.950882, 37.422390, 30.384411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889629, 36.583206, 30.155502>,  <35.384186, 37.126266, 30.099518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889629, 36.583206, 30.155502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964294, 36.875187, 30.418510>,  <36.009094, 37.050373, 30.576315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964294, 36.875187, 30.418510>,  <35.889629, 36.583206, 30.155502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964294, 36.875187, 30.418510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195989, -0.683499, 0.703148,
		0.962677, -0.002382, -0.270643,
		0.186659, 0.729948, 0.657521,
		36.020290, 37.094170, 30.615767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459545, 36.275528, 30.655745>,  <35.889629, 36.583206, 30.155502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459545, 36.275528, 30.655745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284248, 36.596180, 30.818388>,  <36.179070, 36.788570, 30.915974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284248, 36.596180, 30.818388>,  <36.459545, 36.275528, 30.655745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284248, 36.596180, 30.818388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082985, -0.486514, 0.869723,
		0.895018, 0.347407, 0.279735,
		-0.438243, 0.801631, 0.406609,
		36.152775, 36.836670, 30.940371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180428, 36.072517, 30.700708>,  <36.459545, 36.275528, 30.655745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180428, 36.072517, 30.700708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119389, 35.731262, 30.501162>,  <37.082764, 35.526508, 30.381433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119389, 35.731262, 30.501162>,  <37.180428, 36.072517, 30.700708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119389, 35.731262, 30.501162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062124, 0.495501, -0.866383,
		0.986334, -0.163199, -0.022611,
		-0.152597, -0.853138, -0.498868,
		37.073608, 35.475319, 30.351501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670719, 36.092350, 30.054688>,  <37.180428, 36.072517, 30.700708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670719, 36.092350, 30.054688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386902, 35.817200, 29.993528>,  <37.216610, 35.652111, 29.956833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386902, 35.817200, 29.993528>,  <37.670719, 36.092350, 30.054688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386902, 35.817200, 29.993528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256467, 0.454190, -0.853192,
		0.656330, -0.566166, -0.498685,
		-0.709546, -0.687872, -0.152896,
		37.174038, 35.610840, 29.947660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946598, 35.765652, 29.461103>,  <37.670719, 36.092350, 30.054688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946598, 35.765652, 29.461103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555862, 35.681694, 29.477762>,  <37.321423, 35.631321, 29.487759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555862, 35.681694, 29.477762>,  <37.946598, 35.765652, 29.461103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555862, 35.681694, 29.477762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114382, 0.347668, -0.930615,
		0.180849, -0.913823, -0.363623,
		-0.976837, -0.209893, 0.041650,
		37.262810, 35.618725, 29.490257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863857, 35.323166, 28.884407>,  <37.946598, 35.765652, 29.461103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863857, 35.323166, 28.884407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498444, 35.460415, 28.971792>,  <37.279198, 35.542763, 29.024223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498444, 35.460415, 28.971792>,  <37.863857, 35.323166, 28.884407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498444, 35.460415, 28.971792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173070, 0.158164, -0.972127,
		-0.368113, -0.925878, -0.085104,
		-0.913531, 0.343124, 0.218464,
		37.224384, 35.563351, 29.037331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380714, 35.009117, 28.429775>,  <37.863857, 35.323166, 28.884407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380714, 35.009117, 28.429775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182297, 35.319836, 28.584969>,  <37.063244, 35.506268, 28.678083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182297, 35.319836, 28.584969>,  <37.380714, 35.009117, 28.429775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182297, 35.319836, 28.584969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350683, 0.229539, -0.907928,
		-0.794329, -0.586434, 0.158546,
		-0.496047, 0.776793, 0.387982,
		37.033482, 35.552872, 28.701363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776592, 35.029560, 27.920433>,  <37.380714, 35.009117, 28.429775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776592, 35.029560, 27.920433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839058, 35.368118, 28.124092>,  <36.876537, 35.571251, 28.246286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839058, 35.368118, 28.124092>,  <36.776592, 35.029560, 27.920433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839058, 35.368118, 28.124092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195134, 0.531748, -0.824116,
		-0.968264, 0.029346, 0.248200,
		0.156165, 0.846394, 0.509147,
		36.885906, 35.622036, 28.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284737, 35.469177, 27.593830>,  <36.776592, 35.029560, 27.920433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284737, 35.469177, 27.593830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563046, 35.684978, 27.783499>,  <36.730030, 35.814457, 27.897301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563046, 35.684978, 27.783499>,  <36.284737, 35.469177, 27.593830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563046, 35.684978, 27.783499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001251, 0.661078, -0.750316,
		-0.718261, 0.521456, 0.460635,
		0.695773, 0.539499, 0.474174,
		36.771778, 35.846828, 27.925751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027313, 36.185932, 27.636438>,  <36.284737, 35.469177, 27.593830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027313, 36.185932, 27.636438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426796, 36.182816, 27.656569>,  <36.666485, 36.180946, 27.668648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426796, 36.182816, 27.656569>,  <36.027313, 36.185932, 27.636438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426796, 36.182816, 27.656569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044935, 0.599800, -0.798887,
		-0.023963, 0.800112, 0.599372,
		0.998702, -0.007789, 0.050326,
		36.726406, 36.180477, 27.671667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168201, 36.958725, 27.458515>,  <36.027313, 36.185932, 27.636438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168201, 36.958725, 27.458515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532104, 36.795376, 27.428667>,  <36.750446, 36.697369, 27.410757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532104, 36.795376, 27.428667>,  <36.168201, 36.958725, 27.458515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532104, 36.795376, 27.428667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196994, 0.582908, -0.788296,
		0.365414, 0.702461, 0.610754,
		0.909761, -0.408370, -0.074622,
		36.805035, 36.672863, 27.406281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512867, 37.508133, 27.226030>,  <36.168201, 36.958725, 27.458515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512867, 37.508133, 27.226030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762367, 37.205563, 27.147285>,  <36.912067, 37.024021, 27.100039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762367, 37.205563, 27.147285>,  <36.512867, 37.508133, 27.226030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762367, 37.205563, 27.147285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362792, 0.503266, -0.784286,
		0.692331, 0.417777, 0.588337,
		0.623747, -0.756430, -0.196860,
		36.949490, 36.978634, 27.088228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261608, 37.805885, 27.021029>,  <36.512867, 37.508133, 27.226030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261608, 37.805885, 27.021029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221283, 37.434669, 26.877600>,  <37.197086, 37.211941, 26.791542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221283, 37.434669, 26.877600>,  <37.261608, 37.805885, 27.021029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221283, 37.434669, 26.877600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435204, 0.282963, -0.854710,
		0.894670, -0.242216, 0.375362,
		-0.100811, -0.928043, -0.358572,
		37.191040, 37.156258, 26.770029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804100, 37.676235, 26.655066>,  <37.261608, 37.805885, 27.021029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804100, 37.676235, 26.655066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538616, 37.420868, 26.499159>,  <37.379326, 37.267647, 26.405615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538616, 37.420868, 26.499159>,  <37.804100, 37.676235, 26.655066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538616, 37.420868, 26.499159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285886, 0.265008, -0.920891,
		0.691203, -0.722631, 0.006627,
		-0.663707, -0.638417, -0.389765,
		37.339504, 37.229343, 26.382229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138943, 37.286945, 26.111763>,  <37.804100, 37.676235, 26.655066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138943, 37.286945, 26.111763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749126, 37.277744, 26.022552>,  <37.515236, 37.272224, 25.969027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749126, 37.277744, 26.022552>,  <38.138943, 37.286945, 26.111763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749126, 37.277744, 26.022552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218247, 0.130523, -0.967126,
		0.051356, -0.991179, -0.122180,
		-0.974541, -0.023002, -0.223025,
		37.456764, 37.270844, 25.955645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095364, 36.839478, 25.573097>,  <38.138943, 37.286945, 26.111763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095364, 36.839478, 25.573097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758728, 37.055149, 25.560289>,  <37.556747, 37.184551, 25.552605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758728, 37.055149, 25.560289>,  <38.095364, 36.839478, 25.573097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758728, 37.055149, 25.560289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119169, 0.127531, -0.984649,
		-0.526816, -0.832481, -0.171582,
		-0.841584, 0.539176, -0.032020,
		37.506252, 37.216904, 25.550684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.654488, 37.314842, 25.134781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025534, 37.185188, 25.060522>,  <30.248161, 37.107395, 25.015966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025534, 37.185188, 25.060522>,  <29.654488, 37.314842, 25.134781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025534, 37.185188, 25.060522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072914, -0.644570, 0.761060,
		-0.366348, -0.692436, -0.621548,
		0.927617, -0.324133, -0.185649,
		30.303818, 37.087948, 25.004827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645481, 36.575249, 25.128929>,  <29.654488, 37.314842, 25.134781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645481, 36.575249, 25.128929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.023848, 36.683720, 25.200150>,  <30.250868, 36.748802, 25.242882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.023848, 36.683720, 25.200150>,  <29.645481, 36.575249, 25.128929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023848, 36.683720, 25.200150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031727, -0.623554, 0.781137,
		0.322853, -0.733241, -0.598434,
		0.945917, 0.271179, 0.178052,
		30.307623, 36.765072, 25.253565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153570, 35.960819, 25.122677>,  <29.645481, 36.575249, 25.128929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153570, 35.960819, 25.122677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.334848, 36.224396, 25.362812>,  <30.443615, 36.382542, 25.506893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.334848, 36.224396, 25.362812>,  <30.153570, 35.960819, 25.122677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334848, 36.224396, 25.362812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070173, -0.645007, 0.760948,
		0.888645, -0.386985, -0.246074,
		0.453195, 0.658945, 0.600338,
		30.470806, 36.422081, 25.542913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645359, 35.580097, 25.538322>,  <30.153570, 35.960819, 25.122677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645359, 35.580097, 25.538322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.591248, 35.902966, 25.768166>,  <30.558781, 36.096687, 25.906073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.591248, 35.902966, 25.768166>,  <30.645359, 35.580097, 25.538322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591248, 35.902966, 25.768166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238567, -0.589414, 0.771801,
		0.961658, -0.032675, 0.272299,
		-0.135278, 0.807170, 0.574610,
		30.550665, 36.145115, 25.940548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038235, 35.452381, 26.072706>,  <30.645359, 35.580097, 25.538322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038235, 35.452381, 26.072706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770231, 35.728378, 26.182247>,  <30.609430, 35.893978, 26.247972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770231, 35.728378, 26.182247>,  <31.038235, 35.452381, 26.072706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770231, 35.728378, 26.182247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154985, -0.490785, 0.857385,
		0.725996, 0.532011, 0.435768,
		-0.670007, 0.689996, 0.273854,
		30.569229, 35.935379, 26.264404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096664, 35.434895, 26.784323>,  <31.038235, 35.452381, 26.072706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096664, 35.434895, 26.784323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.759605, 35.648693, 26.758205>,  <30.557371, 35.776970, 26.742535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.759605, 35.648693, 26.758205>,  <31.096664, 35.434895, 26.784323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759605, 35.648693, 26.758205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383120, -0.509916, 0.770198,
		0.378374, 0.674019, 0.634454,
		-0.842646, 0.534494, -0.065291,
		30.506811, 35.809040, 26.738619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884243, 35.653904, 27.449112>,  <31.096664, 35.434895, 26.784323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884243, 35.653904, 27.449112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.546719, 35.707550, 27.241266>,  <30.344204, 35.739738, 27.116560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.546719, 35.707550, 27.241266>,  <30.884243, 35.653904, 27.449112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546719, 35.707550, 27.241266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533624, -0.312247, 0.785969,
		-0.056835, 0.940486, 0.335046,
		-0.843810, 0.134118, -0.519612,
		30.293575, 35.747784, 27.085382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475632, 36.204685, 27.877026>,  <30.884243, 35.653904, 27.449112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475632, 36.204685, 27.877026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.245518, 35.992310, 27.628139>,  <30.107449, 35.864883, 27.478807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.245518, 35.992310, 27.628139>,  <30.475632, 36.204685, 27.877026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245518, 35.992310, 27.628139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459011, -0.420080, 0.782842,
		-0.677019, 0.735962, -0.002039,
		-0.575286, -0.530935, -0.622217,
		30.072931, 35.833031, 27.441475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808891, 36.168400, 28.161356>,  <30.475632, 36.204685, 27.877026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808891, 36.168400, 28.161356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.773979, 35.855381, 27.914780>,  <29.753033, 35.667568, 27.766834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.773979, 35.855381, 27.914780>,  <29.808891, 36.168400, 28.161356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773979, 35.855381, 27.914780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409052, -0.536076, 0.738443,
		-0.908327, 0.316607, -0.273315,
		-0.087278, -0.782548, -0.616442,
		29.747795, 35.620617, 27.729847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093681, 35.968559, 28.285679>,  <29.808891, 36.168400, 28.161356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093681, 35.968559, 28.285679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.300125, 35.661991, 28.132719>,  <29.423990, 35.478050, 28.040943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.300125, 35.661991, 28.132719>,  <29.093681, 35.968559, 28.285679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300125, 35.661991, 28.132719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308376, -0.582786, 0.751841,
		-0.799085, -0.270108, -0.537126,
		0.516108, -0.766422, -0.382401,
		29.454958, 35.432064, 28.018000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656593, 35.228695, 28.354397>,  <29.093681, 35.968559, 28.285679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656593, 35.228695, 28.354397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.048244, 35.149811, 28.334709>,  <29.283236, 35.102482, 28.322897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.048244, 35.149811, 28.334709>,  <28.656593, 35.228695, 28.354397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048244, 35.149811, 28.334709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078833, -0.591654, 0.802329,
		-0.187345, -0.781701, -0.594850,
		0.979126, -0.197206, -0.049220,
		29.341982, 35.090649, 28.319942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603601, 34.547848, 28.448143>,  <28.656593, 35.228695, 28.354397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603601, 34.547848, 28.448143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.963888, 34.692902, 28.543818>,  <29.180059, 34.779934, 28.601221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.963888, 34.692902, 28.543818>,  <28.603601, 34.547848, 28.448143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963888, 34.692902, 28.543818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041993, -0.620704, 0.782919,
		0.432373, -0.695144, -0.574307,
		0.900716, 0.362631, 0.239185,
		29.234102, 34.801689, 28.615572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030071, 34.034111, 28.613869>,  <28.603601, 34.547848, 28.448143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030071, 34.034111, 28.613869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.213886, 34.346859, 28.782394>,  <29.324175, 34.534508, 28.883511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.213886, 34.346859, 28.782394>,  <29.030071, 34.034111, 28.613869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213886, 34.346859, 28.782394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000458, -0.474577, 0.880214,
		0.888160, -0.404296, -0.218443,
		0.459535, 0.781870, 0.421315,
		29.351748, 34.581421, 28.908789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730066, 33.758801, 28.821533>,  <29.030071, 34.034111, 28.613869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730066, 33.758801, 28.821533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.710863, 34.092350, 29.041477>,  <29.699341, 34.292480, 29.173443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.710863, 34.092350, 29.041477>,  <29.730066, 33.758801, 28.821533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710863, 34.092350, 29.041477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023203, -0.549416, 0.835227,
		0.998577, 0.052858, 0.007029,
		-0.048010, 0.833875, 0.549861,
		29.696461, 34.342514, 29.206436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452467, 33.727188, 28.355587>,  <29.730066, 33.758801, 28.821533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452467, 33.727188, 28.355587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720381, 33.433014, 28.314550>,  <30.881128, 33.256508, 28.289928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720381, 33.433014, 28.314550>,  <30.452467, 33.727188, 28.355587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720381, 33.433014, 28.314550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149766, 0.269115, -0.951392,
		0.727297, 0.621862, 0.290392,
		0.669783, -0.735435, -0.102593,
		30.921316, 33.212383, 28.283773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055542, 34.063740, 28.167639>,  <30.452467, 33.727188, 28.355587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055542, 34.063740, 28.167639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.092739, 33.685040, 28.044346>,  <31.115057, 33.457817, 27.970369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.092739, 33.685040, 28.044346>,  <31.055542, 34.063740, 28.167639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092739, 33.685040, 28.044346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362195, 0.320532, -0.875256,
		0.927452, -0.030248, 0.372717,
		0.092993, -0.946755, -0.308234,
		31.120638, 33.401012, 27.951876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630798, 34.189041, 27.914843>,  <31.055542, 34.063740, 28.167639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630798, 34.189041, 27.914843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.498035, 33.838772, 27.774534>,  <31.418377, 33.628613, 27.690350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.498035, 33.838772, 27.774534>,  <31.630798, 34.189041, 27.914843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498035, 33.838772, 27.774534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655649, 0.053196, -0.753190,
		0.678205, -0.479972, 0.556475,
		-0.331907, -0.875670, -0.350771,
		31.398462, 33.576073, 27.669302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148460, 33.729263, 27.675631>,  <31.630798, 34.189041, 27.914843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148460, 33.729263, 27.675631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.825962, 33.597176, 27.479296>,  <31.632462, 33.517921, 27.361496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.825962, 33.597176, 27.479296>,  <32.148460, 33.729263, 27.675631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825962, 33.597176, 27.479296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519385, 0.002070, -0.854538,
		0.283200, -0.943902, 0.169842,
		-0.806249, -0.330218, -0.490835,
		31.584087, 33.498112, 27.332045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367504, 33.138035, 27.312777>,  <32.148460, 33.729263, 27.675631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367504, 33.138035, 27.312777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041637, 33.251442, 27.110416>,  <31.846117, 33.319485, 26.989000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041637, 33.251442, 27.110416>,  <32.367504, 33.138035, 27.312777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041637, 33.251442, 27.110416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533552, 0.024605, -0.845409,
		-0.227238, -0.958652, -0.171315,
		-0.814669, 0.283515, -0.505900,
		31.797237, 33.336494, 26.958647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409527, 32.792374, 26.642414>,  <32.367504, 33.138035, 27.312777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409527, 32.792374, 26.642414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.167515, 33.099640, 26.558643>,  <32.022308, 33.284000, 26.508381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.167515, 33.099640, 26.558643>,  <32.409527, 32.792374, 26.642414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167515, 33.099640, 26.558643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599348, 0.266249, -0.754912,
		-0.524140, -0.582263, -0.621488,
		-0.605028, 0.768168, -0.209426,
		31.986006, 33.330090, 26.495815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308281, 32.746941, 25.823921>,  <32.409527, 32.792374, 26.642414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308281, 32.746941, 25.823921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.176685, 33.106030, 25.941124>,  <32.097729, 33.321484, 26.011446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.176685, 33.106030, 25.941124>,  <32.308281, 32.746941, 25.823921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176685, 33.106030, 25.941124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595501, 0.438032, -0.673429,
		-0.732901, -0.047066, -0.678705,
		-0.328991, 0.897726, 0.293007,
		32.077988, 33.375347, 26.029026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924030, 33.122589, 25.236607>,  <32.308281, 32.746941, 25.823921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924030, 33.122589, 25.236607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.048077, 33.407475, 25.488506>,  <32.122505, 33.578403, 25.639647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.048077, 33.407475, 25.488506>,  <31.924030, 33.122589, 25.236607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048077, 33.407475, 25.488506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452096, 0.472237, -0.756704,
		-0.836323, 0.519375, -0.175538,
		0.310118, 0.712209, 0.629750,
		32.141113, 33.621136, 25.677431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716482, 33.758762, 24.878443>,  <31.924030, 33.122589, 25.236607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716482, 33.758762, 24.878443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.998142, 33.861881, 25.143084>,  <32.167137, 33.923752, 25.301868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.998142, 33.861881, 25.143084>,  <31.716482, 33.758762, 24.878443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998142, 33.861881, 25.143084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451456, 0.556635, -0.697385,
		-0.548054, 0.789746, 0.275569,
		0.704148, 0.257797, 0.661601,
		32.209385, 33.939220, 25.341564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701149, 34.589973, 24.959789>,  <31.716482, 33.758762, 24.878443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701149, 34.589973, 24.959789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.054306, 34.456047, 25.091484>,  <32.266201, 34.375690, 25.170500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.054306, 34.456047, 25.091484>,  <31.701149, 34.589973, 24.959789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054306, 34.456047, 25.091484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468998, 0.594043, -0.653570,
		0.023247, 0.731443, 0.681506,
		0.882893, -0.334819, 0.329235,
		32.319176, 34.355602, 25.190254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073677, 35.173141, 25.116899>,  <31.701149, 34.589973, 24.959789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073677, 35.173141, 25.116899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350281, 34.887184, 25.075447>,  <32.516243, 34.715611, 25.050575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350281, 34.887184, 25.075447>,  <32.073677, 35.173141, 25.116899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350281, 34.887184, 25.075447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548245, 0.612813, -0.569111,
		0.470360, 0.336731, 0.815704,
		0.691512, -0.714893, -0.103631,
		32.557735, 34.672718, 25.044357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634480, 35.559036, 25.203470>,  <32.073677, 35.173141, 25.116899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634480, 35.559036, 25.203470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.751465, 35.233631, 25.002407>,  <32.821655, 35.038387, 24.881769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.751465, 35.233631, 25.002407>,  <32.634480, 35.559036, 25.203470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751465, 35.233631, 25.002407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645839, 0.555683, -0.523553,
		0.705234, -0.171515, 0.687915,
		0.292466, -0.813510, -0.502658,
		32.839203, 34.989578, 24.851610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425808, 35.627659, 25.145317>,  <32.634480, 35.559036, 25.203470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425808, 35.627659, 25.145317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.271698, 35.396687, 24.857389>,  <33.179230, 35.258102, 24.684633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.271698, 35.396687, 24.857389>,  <33.425808, 35.627659, 25.145317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271698, 35.396687, 24.857389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455219, 0.559595, -0.692553,
		0.802705, -0.594501, 0.047257,
		-0.385278, -0.577428, -0.719818,
		33.156113, 35.223457, 24.641443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880142, 35.612751, 24.656765>,  <33.425808, 35.627659, 25.145317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880142, 35.612751, 24.656765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566753, 35.495689, 24.437483>,  <33.378719, 35.425453, 24.305914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566753, 35.495689, 24.437483>,  <33.880142, 35.612751, 24.656765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566753, 35.495689, 24.437483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251125, 0.657826, -0.710071,
		0.568429, -0.693987, -0.441894,
		-0.783469, -0.292654, -0.548205,
		33.331711, 35.407894, 24.273022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472862, 35.042637, 24.646521>,  <33.880142, 35.612751, 24.656765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472862, 35.042637, 24.646521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.872776, 35.041725, 24.654709>,  <35.112724, 35.041176, 24.659622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.872776, 35.041725, 24.654709>,  <34.472862, 35.042637, 24.646521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872776, 35.041725, 24.654709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017029, -0.650635, 0.759199,
		0.011587, -0.759387, -0.650536,
		0.999788, -0.002281, 0.020471,
		35.172714, 35.041042, 24.660851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673546, 34.291737, 24.683695>,  <34.472862, 35.042637, 24.646521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673546, 34.291737, 24.683695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989090, 34.493256, 24.824480>,  <35.178417, 34.614166, 24.908951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989090, 34.493256, 24.824480>,  <34.673546, 34.291737, 24.683695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989090, 34.493256, 24.824480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063690, -0.636633, 0.768533,
		0.611258, -0.583852, -0.534304,
		0.788864, 0.503802, 0.351962,
		35.225750, 34.644398, 24.930069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294559, 33.785446, 24.752457>,  <34.673546, 34.291737, 24.683695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294559, 33.785446, 24.752457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365662, 34.097038, 24.992987>,  <35.408325, 34.283993, 25.137304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365662, 34.097038, 24.992987>,  <35.294559, 33.785446, 24.752457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365662, 34.097038, 24.992987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309504, -0.624303, 0.717253,
		0.934135, 0.058614, -0.352073,
		0.177759, 0.778980, 0.601325,
		35.418991, 34.330730, 25.173384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918468, 33.689980, 24.939032>,  <35.294559, 33.785446, 24.752457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918468, 33.689980, 24.939032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.754940, 33.943520, 25.201664>,  <35.656822, 34.095646, 25.359243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.754940, 33.943520, 25.201664>,  <35.918468, 33.689980, 24.939032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754940, 33.943520, 25.201664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444206, -0.490264, 0.749882,
		0.797211, 0.598225, -0.081130,
		-0.408822, 0.633852, 0.656579,
		35.632294, 34.133675, 25.398638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433929, 33.838924, 25.324921>,  <35.918468, 33.689980, 24.939032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433929, 33.838924, 25.324921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107834, 33.935452, 25.535501>,  <35.912174, 33.993366, 25.661850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107834, 33.935452, 25.535501>,  <36.433929, 33.838924, 25.324921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107834, 33.935452, 25.535501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300337, -0.601075, 0.740612,
		0.495156, 0.761890, 0.417545,
		-0.815241, 0.241314, 0.526450,
		35.863262, 34.007847, 25.693436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676205, 34.061390, 26.028429>,  <36.433929, 33.838924, 25.324921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676205, 34.061390, 26.028429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284855, 33.993423, 26.075617>,  <36.050045, 33.952644, 26.103930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284855, 33.993423, 26.075617>,  <36.676205, 34.061390, 26.028429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284855, 33.993423, 26.075617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182555, -0.441085, 0.878702,
		-0.097270, 0.881234, 0.462564,
		-0.978372, -0.169915, 0.117969,
		35.991344, 33.942448, 26.111008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555515, 34.111408, 26.690006>,  <36.676205, 34.061390, 26.028429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555515, 34.111408, 26.690006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244160, 33.895054, 26.562536>,  <36.057346, 33.765240, 26.486055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244160, 33.895054, 26.562536>,  <36.555515, 34.111408, 26.690006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244160, 33.895054, 26.562536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011072, -0.495708, 0.868419,
		-0.627687, 0.679494, 0.379864,
		-0.778387, -0.540889, -0.318673,
		36.010643, 33.732788, 26.466934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983578, 34.299171, 27.109852>,  <36.555515, 34.111408, 26.690006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983578, 34.299171, 27.109852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910198, 33.940231, 26.949293>,  <35.866173, 33.724869, 26.852959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910198, 33.940231, 26.949293>,  <35.983578, 34.299171, 27.109852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910198, 33.940231, 26.949293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004166, -0.407611, 0.913146,
		-0.983021, 0.169184, 0.071036,
		-0.183444, -0.897346, -0.401395,
		35.855164, 33.671028, 26.828875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449970, 33.993973, 27.402271>,  <35.983578, 34.299171, 27.109852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449970, 33.993973, 27.402271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658360, 33.684444, 27.258165>,  <35.783394, 33.498726, 27.171701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658360, 33.684444, 27.258165>,  <35.449970, 33.993973, 27.402271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658360, 33.684444, 27.258165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208195, -0.524514, 0.825554,
		-0.827796, -0.355083, -0.434362,
		0.520970, -0.773822, -0.360263,
		35.814651, 33.452297, 27.150087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997307, 33.483906, 27.587191>,  <35.449970, 33.993973, 27.402271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997307, 33.483906, 27.587191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344440, 33.295467, 27.524019>,  <35.552719, 33.182404, 27.486116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344440, 33.295467, 27.524019>,  <34.997307, 33.483906, 27.587191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344440, 33.295467, 27.524019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256104, -0.696498, 0.670300,
		-0.425771, -0.541260, -0.725091,
		0.867830, -0.471093, -0.157930,
		35.604790, 33.154140, 27.476641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782276, 32.853851, 27.491522>,  <34.997307, 33.483906, 27.587191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782276, 32.853851, 27.491522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171036, 32.807590, 27.573538>,  <35.404289, 32.779835, 27.622747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171036, 32.807590, 27.573538>,  <34.782276, 32.853851, 27.491522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171036, 32.807590, 27.573538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227966, -0.679655, 0.697209,
		0.058724, -0.724358, -0.686919,
		0.971897, -0.115651, 0.205041,
		35.462605, 32.772896, 27.635050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876213, 32.143581, 27.562645>,  <34.782276, 32.853851, 27.491522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876213, 32.143581, 27.562645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.169495, 32.323868, 27.766319>,  <35.345463, 32.432037, 27.888523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.169495, 32.323868, 27.766319>,  <34.876213, 32.143581, 27.562645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169495, 32.323868, 27.766319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212886, -0.559011, 0.801365,
		0.645825, -0.695963, -0.313919,
		0.733205, 0.450713, 0.509184,
		35.389458, 32.459084, 27.919075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257889, 31.564032, 27.926065>,  <34.876213, 32.143581, 27.562645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257889, 31.564032, 27.926065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373562, 31.883009, 28.137899>,  <35.442963, 32.074394, 28.264999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373562, 31.883009, 28.137899>,  <35.257889, 31.564032, 27.926065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373562, 31.883009, 28.137899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216002, -0.484597, 0.847649,
		0.932588, -0.359512, 0.032114,
		0.289178, 0.797444, 0.529584,
		35.460316, 32.122242, 28.296774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709152, 31.302986, 28.398470>,  <35.257889, 31.564032, 27.926065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709152, 31.302986, 28.398470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613808, 31.654528, 28.563782>,  <35.556599, 31.865452, 28.662970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613808, 31.654528, 28.563782>,  <35.709152, 31.302986, 28.398470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613808, 31.654528, 28.563782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142035, -0.452517, 0.880372,
		0.960733, 0.151149, 0.232692,
		-0.238365, 0.878853, 0.413279,
		35.542297, 31.918184, 28.687765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.639381, 36.711803, 25.007280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477665, 37.071278, 25.075300>,  <37.380634, 37.286961, 25.116112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477665, 37.071278, 25.075300>,  <37.639381, 36.711803, 25.007280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477665, 37.071278, 25.075300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011380, 0.190852, -0.981553,
		-0.914558, -0.394901, -0.087387,
		-0.404294, 0.898681, 0.170051,
		37.356377, 37.340881, 25.126316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370792, 36.849812, 24.355062>,  <37.639381, 36.711803, 25.007280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370792, 36.849812, 24.355062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333183, 37.221806, 24.497211>,  <37.310619, 37.445004, 24.582500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333183, 37.221806, 24.497211>,  <37.370792, 36.849812, 24.355062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333183, 37.221806, 24.497211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109112, 0.364429, -0.924817,
		-0.989573, -0.048179, -0.135737,
		-0.094024, 0.929984, 0.355372,
		37.304977, 37.500801, 24.603823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022091, 37.246773, 23.866312>,  <37.370792, 36.849812, 24.355062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022091, 37.246773, 23.866312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168579, 37.532787, 24.104507>,  <37.256470, 37.704395, 24.247425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168579, 37.532787, 24.104507>,  <37.022091, 37.246773, 23.866312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168579, 37.532787, 24.104507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182564, 0.572299, -0.799465,
		-0.912444, 0.401493, 0.079047,
		0.366218, 0.715036, 0.595489,
		37.278446, 37.747299, 24.283154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643589, 37.880642, 23.711449>,  <37.022091, 37.246773, 23.866312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643589, 37.880642, 23.711449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989304, 37.988319, 23.881413>,  <37.196732, 38.052925, 23.983391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989304, 37.988319, 23.881413>,  <36.643589, 37.880642, 23.711449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989304, 37.988319, 23.881413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172653, 0.634659, -0.753259,
		-0.472441, 0.724393, 0.502050,
		0.864286, 0.269190, 0.424908,
		37.248589, 38.069077, 24.008884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643185, 38.543930, 23.530130>,  <36.643589, 37.880642, 23.711449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643185, 38.543930, 23.530130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013283, 38.434757, 23.635534>,  <37.235340, 38.369255, 23.698776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013283, 38.434757, 23.635534>,  <36.643185, 38.543930, 23.530130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013283, 38.434757, 23.635534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376789, 0.580037, -0.722210,
		0.044268, 0.767506, 0.639511,
		0.925241, -0.272931, 0.263511,
		37.290855, 38.352879, 23.714588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133209, 39.086254, 23.317043>,  <36.643185, 38.543930, 23.530130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133209, 39.086254, 23.317043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.413929, 38.810890, 23.390322>,  <37.582363, 38.645672, 23.434288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.413929, 38.810890, 23.390322>,  <37.133209, 39.086254, 23.317043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413929, 38.810890, 23.390322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519466, 0.318575, -0.792884,
		0.487469, 0.651613, 0.581184,
		0.701804, -0.688412, 0.183195,
		37.624470, 38.604366, 23.445280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837711, 39.362629, 23.440006>,  <37.133209, 39.086254, 23.317043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837711, 39.362629, 23.440006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862358, 38.997410, 23.278736>,  <37.877144, 38.778278, 23.181974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862358, 38.997410, 23.278736>,  <37.837711, 39.362629, 23.440006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862358, 38.997410, 23.278736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498211, 0.378157, -0.780246,
		0.864864, -0.152792, 0.478189,
		0.061615, -0.913045, -0.403177,
		37.880844, 38.723495, 23.157784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554180, 39.320343, 23.204742>,  <37.837711, 39.362629, 23.440006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554180, 39.320343, 23.204742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339478, 39.039791, 23.017143>,  <38.210655, 38.871460, 22.904583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339478, 39.039791, 23.017143>,  <38.554180, 39.320343, 23.204742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339478, 39.039791, 23.017143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471234, 0.211882, -0.856180,
		0.699882, -0.680565, 0.216788,
		-0.536753, -0.701382, -0.468998,
		38.178452, 38.829376, 22.876444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982746, 39.071945, 22.823093>,  <38.554180, 39.320343, 23.204742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982746, 39.071945, 22.823093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.637650, 38.986217, 22.639900>,  <38.430592, 38.934780, 22.529984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.637650, 38.986217, 22.639900>,  <38.982746, 39.071945, 22.823093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637650, 38.986217, 22.639900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396349, 0.275796, -0.875696,
		0.313995, -0.937017, -0.152992,
		-0.862737, -0.214326, -0.457985,
		38.378830, 38.921921, 22.502504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161308, 38.768665, 22.249962>,  <38.982746, 39.071945, 22.823093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161308, 38.768665, 22.249962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.791698, 38.875172, 22.140213>,  <38.569931, 38.939075, 22.074364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.791698, 38.875172, 22.140213>,  <39.161308, 38.768665, 22.249962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791698, 38.875172, 22.140213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284216, -0.001621, -0.958759,
		-0.255727, -0.963899, -0.074179,
		-0.924026, 0.266263, -0.274370,
		38.514492, 38.955051, 22.057901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015942, 38.388382, 21.666458>,  <39.161308, 38.768665, 22.249962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015942, 38.388382, 21.666458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745472, 38.682423, 21.646795>,  <38.583191, 38.858845, 21.634998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745472, 38.682423, 21.646795>,  <39.015942, 38.388382, 21.666458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745472, 38.682423, 21.646795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158116, 0.079628, -0.984204,
		-0.719573, -0.673268, -0.170074,
		-0.676176, 0.735098, -0.049156,
		38.542618, 38.902950, 21.632048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421234, 38.123055, 21.304417>,  <39.015942, 38.388382, 21.666458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421234, 38.123055, 21.304417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443668, 38.521927, 21.284439>,  <38.457127, 38.761250, 21.272453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443668, 38.521927, 21.284439>,  <38.421234, 38.123055, 21.304417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443668, 38.521927, 21.284439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006130, -0.050364, -0.998712,
		-0.998408, 0.055703, -0.008937,
		0.056081, 0.997177, -0.049942,
		38.460491, 38.821079, 21.269457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806664, 38.311165, 20.737944>,  <38.421234, 38.123055, 21.304417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806664, 38.311165, 20.737944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.109783, 38.571957, 20.748266>,  <38.291653, 38.728432, 20.754459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.109783, 38.571957, 20.748266>,  <37.806664, 38.311165, 20.737944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109783, 38.571957, 20.748266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031018, 0.075504, -0.996663,
		-0.651755, 0.754466, 0.077439,
		0.757795, 0.651982, 0.025808,
		38.337120, 38.767551, 20.756008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415123, 38.421577, 20.071001>,  <37.806664, 38.311165, 20.737944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415123, 38.421577, 20.071001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.057064, 38.465359, 19.898153>,  <36.842228, 38.491627, 19.794445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.057064, 38.465359, 19.898153>,  <37.415123, 38.421577, 20.071001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057064, 38.465359, 19.898153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429429, -0.471791, 0.770068,
		-0.119583, 0.874890, 0.469326,
		-0.895149, 0.109456, -0.432121,
		36.788521, 38.498196, 19.768517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891182, 38.779411, 20.466274>,  <37.415123, 38.421577, 20.071001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891182, 38.779411, 20.466274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.733452, 38.496841, 20.231169>,  <36.638813, 38.327297, 20.090105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.733452, 38.496841, 20.231169>,  <36.891182, 38.779411, 20.466274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733452, 38.496841, 20.231169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288623, -0.512024, 0.809029,
		-0.872472, 0.488661, -0.001989,
		-0.394322, -0.706429, -0.587765,
		36.615154, 38.284912, 20.054840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246952, 38.671402, 20.765436>,  <36.891182, 38.779411, 20.466274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246952, 38.671402, 20.765436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307381, 38.345039, 20.542194>,  <36.343639, 38.149223, 20.408249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307381, 38.345039, 20.542194>,  <36.246952, 38.671402, 20.765436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307381, 38.345039, 20.542194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151609, -0.577026, 0.802531,
		-0.976828, -0.036626, -0.210870,
		0.151070, -0.815904, -0.558102,
		36.352703, 38.100269, 20.374763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666252, 38.237892, 20.919243>,  <36.246952, 38.671402, 20.765436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666252, 38.237892, 20.919243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930523, 37.985802, 20.756117>,  <36.089085, 37.834545, 20.658241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930523, 37.985802, 20.756117>,  <35.666252, 38.237892, 20.919243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930523, 37.985802, 20.756117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177440, -0.658987, 0.730925,
		-0.729398, -0.410542, -0.547205,
		0.660676, -0.630231, -0.407818,
		36.128727, 37.796734, 20.633772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352882, 37.555859, 20.868093>,  <35.666252, 38.237892, 20.919243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352882, 37.555859, 20.868093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739376, 37.455215, 20.845900>,  <35.971272, 37.394829, 20.832582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739376, 37.455215, 20.845900>,  <35.352882, 37.555859, 20.868093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739376, 37.455215, 20.845900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142537, -0.701380, 0.698390,
		-0.214637, -0.666902, -0.713563,
		0.966237, -0.251610, -0.055484,
		36.029247, 37.379734, 20.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299873, 36.884220, 20.950466>,  <35.352882, 37.555859, 20.868093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299873, 36.884220, 20.950466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.677872, 36.981495, 21.037954>,  <35.904671, 37.039860, 21.090446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.677872, 36.981495, 21.037954>,  <35.299873, 36.884220, 20.950466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677872, 36.981495, 21.037954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019746, -0.709917, 0.704008,
		0.326477, -0.660968, -0.675673,
		0.944999, 0.243184, 0.218720,
		35.961372, 37.054451, 21.103571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647430, 36.262215, 20.927263>,  <35.299873, 36.884220, 20.950466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647430, 36.262215, 20.927263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843864, 36.529404, 21.150923>,  <35.961723, 36.689716, 21.285118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843864, 36.529404, 21.150923>,  <35.647430, 36.262215, 20.927263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843864, 36.529404, 21.150923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029393, -0.628810, 0.777003,
		0.870616, -0.398009, -0.289164,
		0.491084, 0.667972, 0.559151,
		35.991188, 36.729794, 21.318668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947922, 35.773453, 21.446251>,  <35.647430, 36.262215, 20.927263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947922, 35.773453, 21.446251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.980549, 36.139076, 21.605169>,  <36.000126, 36.358452, 21.700520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.980549, 36.139076, 21.605169>,  <35.947922, 35.773453, 21.446251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980549, 36.139076, 21.605169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235062, -0.369737, 0.898911,
		0.968552, -0.166707, 0.184703,
		0.081563, 0.914059, 0.397296,
		36.005016, 36.413292, 21.724358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376415, 35.633011, 21.994127>,  <35.947922, 35.773453, 21.446251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376415, 35.633011, 21.994127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202843, 35.976543, 22.103020>,  <36.098698, 36.182663, 22.168354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202843, 35.976543, 22.103020>,  <36.376415, 35.633011, 21.994127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202843, 35.976543, 22.103020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201267, -0.386930, 0.899876,
		0.878177, 0.335694, 0.340756,
		-0.433932, 0.858833, 0.272229,
		36.072662, 36.234192, 22.184689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724857, 35.957081, 22.564783>,  <36.376415, 35.633011, 21.994127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724857, 35.957081, 22.564783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333828, 36.038437, 22.542929>,  <36.099213, 36.087250, 22.529816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333828, 36.038437, 22.542929>,  <36.724857, 35.957081, 22.564783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333828, 36.038437, 22.542929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100862, -0.224398, 0.969264,
		0.184882, 0.953035, 0.239880,
		-0.977571, 0.203394, -0.054637,
		36.040558, 36.099457, 22.526537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681190, 36.405365, 23.159883>,  <36.724857, 35.957081, 22.564783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681190, 36.405365, 23.159883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318707, 36.266891, 23.062775>,  <36.101215, 36.183807, 23.004509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318707, 36.266891, 23.062775>,  <36.681190, 36.405365, 23.159883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318707, 36.266891, 23.062775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172299, -0.221991, 0.959705,
		-0.386130, 0.911524, 0.141523,
		-0.906210, -0.346186, -0.242772,
		36.046844, 36.163036, 22.989943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367680, 36.592098, 23.684296>,  <36.681190, 36.405365, 23.159883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367680, 36.592098, 23.684296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120060, 36.320957, 23.525648>,  <35.971489, 36.158272, 23.430460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120060, 36.320957, 23.525648>,  <36.367680, 36.592098, 23.684296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120060, 36.320957, 23.525648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270092, -0.290458, 0.917978,
		-0.737450, 0.675393, -0.003275,
		-0.619045, -0.677848, -0.396617,
		35.934345, 36.117603, 23.406664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949558, 36.516518, 24.225023>,  <36.367680, 36.592098, 23.684296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949558, 36.516518, 24.225023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867420, 36.186485, 24.014471>,  <35.818138, 35.988464, 23.888140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867420, 36.186485, 24.014471>,  <35.949558, 36.516518, 24.225023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867420, 36.186485, 24.014471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253489, -0.474648, 0.842884,
		-0.945292, 0.306512, -0.111683,
		-0.205343, -0.825082, -0.526378,
		35.805817, 35.938961, 23.856558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201382, 36.331738, 24.409353>,  <35.949558, 36.516518, 24.225023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201382, 36.331738, 24.409353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400227, 36.010193, 24.278702>,  <35.519531, 35.817265, 24.200310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400227, 36.010193, 24.278702>,  <35.201382, 36.331738, 24.409353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400227, 36.010193, 24.278702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381168, -0.540484, 0.750059,
		-0.779482, -0.248360, -0.575086,
		0.497109, -0.803862, -0.326631,
		35.549358, 35.769035, 24.180712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667789, 35.712189, 24.498726>,  <35.201382, 36.331738, 24.409353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667789, 35.712189, 24.498726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022964, 35.532715, 24.458231>,  <35.236069, 35.425030, 24.433935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022964, 35.532715, 24.458231>,  <34.667789, 35.712189, 24.498726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022964, 35.532715, 24.458231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252948, -0.660157, 0.707255,
		-0.384165, -0.602392, -0.699672,
		0.887939, -0.448683, -0.101235,
		35.289345, 35.398109, 24.427860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095421, 35.448792, 23.999710>,  <34.667789, 35.712189, 24.498726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095421, 35.448792, 23.999710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699657, 35.484573, 23.953972>,  <33.462200, 35.506042, 23.926529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699657, 35.484573, 23.953972>,  <34.095421, 35.448792, 23.999710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699657, 35.484573, 23.953972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145159, 0.596967, -0.789024,
		-0.002323, -0.797263, -0.603628,
		-0.989405, 0.089455, -0.114344,
		33.402836, 35.511410, 23.919668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993767, 35.279476, 23.345638>,  <34.095421, 35.448792, 23.999710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993767, 35.279476, 23.345638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691715, 35.512310, 23.466272>,  <33.510483, 35.652012, 23.538652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691715, 35.512310, 23.466272>,  <33.993767, 35.279476, 23.345638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691715, 35.512310, 23.466272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155634, 0.606056, -0.780047,
		-0.636831, -0.542102, -0.548244,
		-0.755132, 0.582084, 0.301586,
		33.465176, 35.686935, 23.556747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771248, 35.579056, 22.749563>,  <33.993767, 35.279476, 23.345638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771248, 35.579056, 22.749563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576805, 35.831104, 22.991768>,  <33.460140, 35.982334, 23.137091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576805, 35.831104, 22.991768>,  <33.771248, 35.579056, 22.749563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576805, 35.831104, 22.991768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169638, 0.611668, -0.772713,
		-0.857277, -0.478338, -0.190443,
		-0.486106, 0.630122, 0.605514,
		33.430973, 36.020142, 23.173422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268444, 35.869583, 22.354271>,  <33.771248, 35.579056, 22.749563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268444, 35.869583, 22.354271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285336, 36.141022, 22.647589>,  <33.295471, 36.303886, 22.823580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285336, 36.141022, 22.647589>,  <33.268444, 35.869583, 22.354271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285336, 36.141022, 22.647589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075962, 0.734006, -0.674881,
		-0.996216, -0.027202, 0.082546,
		0.042231, 0.678598, 0.733295,
		33.298004, 36.344601, 22.867577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680988, 36.323410, 22.246807>,  <33.268444, 35.869583, 22.354271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680988, 36.323410, 22.246807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942795, 36.526047, 22.471298>,  <33.099880, 36.647629, 22.605993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942795, 36.526047, 22.471298>,  <32.680988, 36.323410, 22.246807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942795, 36.526047, 22.471298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042829, 0.765971, -0.641447,
		-0.754834, 0.395800, 0.523037,
		0.654516, 0.506587, 0.561229,
		33.139149, 36.678024, 22.639668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348026, 36.949306, 22.387962>,  <32.680988, 36.323410, 22.246807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348026, 36.949306, 22.387962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.743816, 36.977982, 22.438229>,  <32.981293, 36.995186, 22.468388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.743816, 36.977982, 22.438229>,  <32.348026, 36.949306, 22.387962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743816, 36.977982, 22.438229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029948, 0.748282, -0.662704,
		-0.141543, 0.659495, 0.738263,
		0.989479, 0.071692, 0.125665,
		33.040661, 36.999489, 22.475927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502750, 37.597004, 22.330740>,  <32.348026, 36.949306, 22.387962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502750, 37.597004, 22.330740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865795, 37.446270, 22.256733>,  <33.083622, 37.355831, 22.212330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865795, 37.446270, 22.256733>,  <32.502750, 37.597004, 22.330740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865795, 37.446270, 22.256733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176917, 0.743014, -0.645469,
		0.380706, 0.553104, 0.741039,
		0.907614, -0.376836, -0.185016,
		33.138081, 37.333218, 22.201227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137207, 38.153049, 22.740156>,  <32.502750, 37.597004, 22.330740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137207, 38.153049, 22.740156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061642, 38.418491, 23.029690>,  <32.016304, 38.577759, 23.203409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061642, 38.418491, 23.029690>,  <32.137207, 38.153049, 22.740156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061642, 38.418491, 23.029690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693730, -0.611884, 0.379917,
		0.695018, -0.430373, 0.575958,
		-0.188914, 0.663609, 0.723834,
		32.004967, 38.617573, 23.246840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154633, 37.771961, 23.339188>,  <32.137207, 38.153049, 22.740156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154633, 37.771961, 23.339188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947350, 38.098816, 23.440187>,  <31.822981, 38.294930, 23.500788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947350, 38.098816, 23.440187>,  <32.154633, 37.771961, 23.339188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947350, 38.098816, 23.440187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521048, -0.535751, 0.664440,
		0.678213, 0.212752, 0.703395,
		-0.518205, 0.817134, 0.252499,
		31.791887, 38.343956, 23.515938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178185, 37.717548, 24.056581>,  <32.154633, 37.771961, 23.339188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178185, 37.717548, 24.056581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860512, 37.943180, 23.966167>,  <31.669909, 38.078560, 23.911919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860512, 37.943180, 23.966167>,  <32.178185, 37.717548, 24.056581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860512, 37.943180, 23.966167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520566, -0.439622, 0.731945,
		0.313503, 0.698963, 0.642780,
		-0.794183, 0.564076, -0.226034,
		31.622257, 38.112404, 23.898357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867979, 37.901035, 24.657579>,  <32.178185, 37.717548, 24.056581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867979, 37.901035, 24.657579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577494, 37.979122, 24.393911>,  <31.403202, 38.025974, 24.235710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577494, 37.979122, 24.393911>,  <31.867979, 37.901035, 24.657579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577494, 37.979122, 24.393911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676677, -0.372202, 0.635274,
		-0.121329, 0.907390, 0.402396,
		-0.726214, 0.195215, -0.659169,
		31.359629, 38.037685, 24.196161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337669, 38.155304, 25.013533>,  <31.867979, 37.901035, 24.657579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337669, 38.155304, 25.013533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.169352, 38.020752, 24.676540>,  <31.068361, 37.940022, 24.474344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.169352, 38.020752, 24.676540>,  <31.337669, 38.155304, 25.013533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169352, 38.020752, 24.676540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723103, -0.436406, 0.535417,
		-0.547770, 0.834503, -0.059602,
		-0.420796, -0.336384, -0.842482,
		31.043112, 37.919838, 24.423796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556009, 38.337967, 24.940424>,  <31.337669, 38.155304, 25.013533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556009, 38.337967, 24.940424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.646584, 38.009647, 24.730656>,  <30.700928, 37.812656, 24.604795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.646584, 38.009647, 24.730656>,  <30.556009, 38.337967, 24.940424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646584, 38.009647, 24.730656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630815, -0.533814, 0.563129,
		-0.742159, 0.203300, -0.638647,
		0.226435, -0.820800, -0.524419,
		30.714514, 37.763409, 24.573330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055054, 37.957951, 24.951725>,  <30.556009, 38.337967, 24.940424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055054, 37.957951, 24.951725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.297007, 37.667175, 24.821693>,  <30.442179, 37.492710, 24.743675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.297007, 37.667175, 24.821693>,  <30.055054, 37.957951, 24.951725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297007, 37.667175, 24.821693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433096, -0.642891, 0.631758,
		-0.668241, -0.241348, -0.703708,
		0.604881, -0.726940, -0.325079,
		30.478472, 37.449093, 24.724169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.576069, 42.247402, 22.569170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517387, 41.875122, 22.435144>,  <38.482178, 41.651752, 22.354729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517387, 41.875122, 22.435144>,  <38.576069, 42.247402, 22.569170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517387, 41.875122, 22.435144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596577, -0.186944, 0.780479,
		-0.789033, 0.314392, -0.527810,
		-0.146706, -0.930704, -0.335064,
		38.473377, 41.595909, 22.334625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836094, 42.100048, 22.721693>,  <38.576069, 42.247402, 22.569170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836094, 42.100048, 22.721693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006115, 41.740662, 22.677692>,  <38.108128, 41.525032, 22.651293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006115, 41.740662, 22.677692>,  <37.836094, 42.100048, 22.721693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006115, 41.740662, 22.677692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559701, -0.356384, 0.748148,
		-0.711386, -0.256430, -0.654350,
		0.425048, -0.898462, -0.110003,
		38.133629, 41.471123, 22.644691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208363, 41.595032, 22.643484>,  <37.836094, 42.100048, 22.721693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208363, 41.595032, 22.643484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537025, 41.420414, 22.790073>,  <37.734222, 41.315643, 22.878027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537025, 41.420414, 22.790073>,  <37.208363, 41.595032, 22.643484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537025, 41.420414, 22.790073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484743, -0.196977, 0.852188,
		-0.299836, -0.877852, -0.373462,
		0.821658, -0.436549, 0.366472,
		37.783524, 41.289448, 22.900015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062153, 40.998203, 22.919109>,  <37.208363, 41.595032, 22.643484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062153, 40.998203, 22.919109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.419113, 41.011940, 23.099087>,  <37.633289, 41.020180, 23.207073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.419113, 41.011940, 23.099087>,  <37.062153, 40.998203, 22.919109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419113, 41.011940, 23.099087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396359, -0.416982, 0.817940,
		0.215705, -0.908266, -0.358503,
		0.892396, 0.034338, 0.449945,
		37.686832, 41.022240, 23.234070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022068, 40.391308, 23.252354>,  <37.062153, 40.998203, 22.919109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022068, 40.391308, 23.252354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306980, 40.605358, 23.434036>,  <37.477928, 40.733788, 23.543047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306980, 40.605358, 23.434036>,  <37.022068, 40.391308, 23.252354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306980, 40.605358, 23.434036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448592, -0.150644, 0.880949,
		0.539841, -0.831233, 0.132752,
		0.712276, 0.535124, 0.454209,
		37.520664, 40.765896, 23.570299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341496, 39.941628, 23.681847>,  <37.022068, 40.391308, 23.252354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341496, 39.941628, 23.681847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.403263, 40.303345, 23.841053>,  <37.440323, 40.520374, 23.936577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.403263, 40.303345, 23.841053>,  <37.341496, 39.941628, 23.681847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403263, 40.303345, 23.841053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288097, -0.344130, 0.893630,
		0.945070, -0.252657, 0.207384,
		0.154415, 0.904289, 0.398017,
		37.449589, 40.574631, 23.960459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716324, 39.791008, 24.346149>,  <37.341496, 39.941628, 23.681847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716324, 39.791008, 24.346149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.570465, 40.162338, 24.375095>,  <37.482948, 40.385136, 24.392464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.570465, 40.162338, 24.375095>,  <37.716324, 39.791008, 24.346149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570465, 40.162338, 24.375095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281141, -0.183855, 0.941890,
		0.887689, 0.323113, 0.328034,
		-0.364647, 0.928329, 0.072366,
		37.461071, 40.440838, 24.396805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066273, 40.045910, 24.978310>,  <37.716324, 39.791008, 24.346149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066273, 40.045910, 24.978310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.744827, 40.269028, 24.895290>,  <37.551960, 40.402897, 24.845478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.744827, 40.269028, 24.895290>,  <38.066273, 40.045910, 24.978310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744827, 40.269028, 24.895290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220184, 0.045347, 0.974404,
		0.552925, 0.828742, 0.086375,
		-0.803613, 0.557790, -0.207550,
		37.503742, 40.436363, 24.833025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053661, 40.556782, 25.403097>,  <38.066273, 40.045910, 24.978310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053661, 40.556782, 25.403097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665321, 40.526760, 25.312044>,  <37.432316, 40.508747, 25.257412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665321, 40.526760, 25.312044>,  <38.053661, 40.556782, 25.403097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665321, 40.526760, 25.312044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231919, 0.054324, 0.971217,
		-0.060531, 0.995699, -0.070148,
		-0.970850, -0.075058, -0.227633,
		37.374065, 40.504242, 25.243753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755421, 41.058231, 25.835629>,  <38.053661, 40.556782, 25.403097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755421, 41.058231, 25.835629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.449863, 40.810516, 25.763025>,  <37.266529, 40.661888, 25.719463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.449863, 40.810516, 25.763025>,  <37.755421, 41.058231, 25.835629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449863, 40.810516, 25.763025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234961, 0.004940, 0.971992,
		-0.601045, 0.785149, -0.149282,
		-0.763897, -0.619287, -0.181510,
		37.220695, 40.624729, 25.708572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180897, 41.315071, 26.287701>,  <37.755421, 41.058231, 25.835629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180897, 41.315071, 26.287701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.086075, 40.939564, 26.187687>,  <37.029182, 40.714260, 26.127678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.086075, 40.939564, 26.187687>,  <37.180897, 41.315071, 26.287701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086075, 40.939564, 26.187687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175711, -0.211695, 0.961411,
		-0.955473, 0.271845, -0.114767,
		-0.237059, -0.938768, -0.250035,
		37.014957, 40.657932, 26.112677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448502, 41.070263, 26.582802>,  <37.180897, 41.315071, 26.287701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448502, 41.070263, 26.582802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652760, 40.729729, 26.534698>,  <36.775314, 40.525406, 26.505836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652760, 40.729729, 26.534698>,  <36.448502, 41.070263, 26.582802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652760, 40.729729, 26.534698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191997, -0.249250, 0.949216,
		-0.838079, -0.461625, -0.290734,
		0.510648, -0.851338, -0.120260,
		36.805954, 40.474327, 26.498621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743462, 41.232212, 26.600767>,  <36.448502, 41.070263, 26.582802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743462, 41.232212, 26.600767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.585068, 41.578552, 26.723083>,  <35.490032, 41.786354, 26.796473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.585068, 41.578552, 26.723083>,  <35.743462, 41.232212, 26.600767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585068, 41.578552, 26.723083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054886, 0.354734, -0.933355,
		-0.916616, -0.352809, -0.187991,
		-0.395983, 0.865846, 0.305791,
		35.466274, 41.838306, 26.814821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137592, 41.378441, 26.134867>,  <35.743462, 41.232212, 26.600767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137592, 41.378441, 26.134867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.222057, 41.734970, 26.295340>,  <35.272736, 41.948887, 26.391623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.222057, 41.734970, 26.295340>,  <35.137592, 41.378441, 26.134867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222057, 41.734970, 26.295340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129276, 0.381364, -0.915341,
		-0.968864, 0.245151, -0.034697,
		0.211165, 0.891326, 0.401182,
		35.285408, 42.002369, 26.415695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595787, 41.957462, 26.071783>,  <35.137592, 41.378441, 26.134867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595787, 41.957462, 26.071783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952274, 42.136814, 26.099176>,  <35.166164, 42.244427, 26.115612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952274, 42.136814, 26.099176>,  <34.595787, 41.957462, 26.071783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952274, 42.136814, 26.099176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058706, 0.263737, -0.962807,
		-0.449766, 0.854048, 0.261368,
		0.891215, 0.448381, 0.068482,
		35.219639, 42.271328, 26.119720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416325, 42.550148, 25.702650>,  <34.595787, 41.957462, 26.071783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416325, 42.550148, 25.702650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.816212, 42.542492, 25.708277>,  <35.056145, 42.537899, 25.711653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.816212, 42.542492, 25.708277>,  <34.416325, 42.550148, 25.702650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816212, 42.542492, 25.708277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019460, 0.320436, -0.947070,
		0.013618, 0.947077, 0.320718,
		0.999718, -0.019139, 0.014066,
		35.116127, 42.536751, 25.712496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685268, 43.312851, 25.500994>,  <34.416325, 42.550148, 25.702650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685268, 43.312851, 25.500994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.942768, 43.020023, 25.411846>,  <35.097267, 42.844326, 25.358358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.942768, 43.020023, 25.411846>,  <34.685268, 43.312851, 25.500994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942768, 43.020023, 25.411846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061344, 0.339669, -0.938543,
		0.762777, 0.590511, 0.263568,
		0.643746, -0.732067, -0.222867,
		35.135891, 42.800404, 25.344986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109245, 43.610836, 24.991072>,  <34.685268, 43.312851, 25.500994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109245, 43.610836, 24.991072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.196396, 43.221680, 24.960064>,  <35.248684, 42.988186, 24.941460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.196396, 43.221680, 24.960064>,  <35.109245, 43.610836, 24.991072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196396, 43.221680, 24.960064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234833, 0.129352, -0.963391,
		0.947304, 0.191692, 0.256650,
		0.217873, -0.972894, -0.077520,
		35.261757, 42.929813, 24.936808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672993, 43.581604, 24.541500>,  <35.109245, 43.610836, 24.991072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672993, 43.581604, 24.541500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523968, 43.210415, 24.544706>,  <35.434551, 42.987701, 24.546631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523968, 43.210415, 24.544706>,  <35.672993, 43.581604, 24.541500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523968, 43.210415, 24.544706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072168, -0.037584, -0.996684,
		0.925197, -0.370749, 0.080972,
		-0.372563, -0.927972, 0.008017,
		35.412197, 42.932022, 24.547112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040665, 43.237602, 24.057413>,  <35.672993, 43.581604, 24.541500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040665, 43.237602, 24.057413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707558, 43.022419, 24.109732>,  <35.507694, 42.893311, 24.141123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707558, 43.022419, 24.109732>,  <36.040665, 43.237602, 24.057413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707558, 43.022419, 24.109732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055375, -0.154129, -0.986498,
		0.550851, -0.828763, 0.098564,
		-0.832764, -0.537956, 0.130795,
		35.457729, 42.861031, 24.148970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111248, 42.560936, 23.854267>,  <36.040665, 43.237602, 24.057413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111248, 42.560936, 23.854267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.718235, 42.627895, 23.821768>,  <35.482426, 42.668072, 23.802267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.718235, 42.627895, 23.821768>,  <36.111248, 42.560936, 23.854267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718235, 42.627895, 23.821768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052952, -0.167059, -0.984524,
		-0.178398, -0.971630, 0.155276,
		-0.982533, 0.167415, -0.081253,
		35.423473, 42.678116, 23.797392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009800, 42.155617, 23.361124>,  <36.111248, 42.560936, 23.854267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009800, 42.155617, 23.361124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.671062, 42.368225, 23.368536>,  <35.467819, 42.495789, 23.372984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.671062, 42.368225, 23.368536>,  <36.009800, 42.155617, 23.361124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671062, 42.368225, 23.368536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114788, -0.148645, -0.982206,
		-0.519307, -0.833901, 0.186892,
		-0.846843, 0.531519, 0.018530,
		35.417007, 42.527679, 23.374094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551540, 41.840755, 22.948002>,  <36.009800, 42.155617, 23.361124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551540, 41.840755, 22.948002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.345940, 42.183861, 22.950624>,  <35.222580, 42.389725, 22.952198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.345940, 42.183861, 22.950624>,  <35.551540, 41.840755, 22.948002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345940, 42.183861, 22.950624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216002, -0.122030, -0.968737,
		-0.830149, -0.499347, 0.248003,
		-0.514000, 0.857765, 0.006557,
		35.191738, 42.441189, 22.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864849, 41.723679, 22.662165>,  <35.551540, 41.840755, 22.948002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864849, 41.723679, 22.662165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.942539, 42.113995, 22.621943>,  <34.989155, 42.348183, 22.597809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.942539, 42.113995, 22.621943>,  <34.864849, 41.723679, 22.662165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942539, 42.113995, 22.621943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241126, -0.051870, -0.969107,
		-0.950860, 0.212472, 0.225214,
		0.194226, 0.975790, -0.100554,
		35.000809, 42.406731, 22.591776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072948, 41.233341, 23.237663>,  <34.864849, 41.723679, 22.662165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072948, 41.233341, 23.237663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732853, 41.438374, 23.285603>,  <34.528797, 41.561394, 23.314365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732853, 41.438374, 23.285603>,  <35.072948, 41.233341, 23.237663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732853, 41.438374, 23.285603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523604, -0.800060, -0.292820,
		-0.054209, -0.311718, 0.948627,
		-0.850236, 0.512578, 0.119846,
		34.477783, 41.592148, 23.321556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628304, 40.648048, 23.667608>,  <35.072948, 41.233341, 23.237663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628304, 40.648048, 23.667608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.387241, 40.905724, 23.479216>,  <34.242603, 41.060329, 23.366180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.387241, 40.905724, 23.479216>,  <34.628304, 40.648048, 23.667608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387241, 40.905724, 23.479216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707755, -0.704119, -0.057432,
		-0.368625, 0.298728, 0.880271,
		-0.602659, 0.644187, -0.470983,
		34.206444, 41.098980, 23.337921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039928, 40.686382, 24.060122>,  <34.628304, 40.648048, 23.667608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039928, 40.686382, 24.060122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.896824, 40.802490, 23.705099>,  <33.810963, 40.872154, 23.492086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.896824, 40.802490, 23.705099>,  <34.039928, 40.686382, 24.060122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896824, 40.802490, 23.705099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735134, -0.673647, 0.076011,
		-0.575835, 0.679666, 0.454387,
		-0.357759, 0.290266, -0.887556,
		33.789497, 40.889568, 23.438833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335876, 40.941269, 24.140402>,  <34.039928, 40.686382, 24.060122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335876, 40.941269, 24.140402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.391029, 40.827171, 23.761009>,  <33.424122, 40.758713, 23.533373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.391029, 40.827171, 23.761009>,  <33.335876, 40.941269, 24.140402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391029, 40.827171, 23.761009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805741, -0.589214, 0.060065,
		-0.575994, 0.755950, -0.311079,
		0.137886, -0.285247, -0.948484,
		33.432396, 40.741596, 23.476463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699142, 40.825760, 23.853405>,  <33.335876, 40.941269, 24.140402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699142, 40.825760, 23.853405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900284, 40.624027, 23.572611>,  <33.020969, 40.502987, 23.404135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900284, 40.624027, 23.572611>,  <32.699142, 40.825760, 23.853405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900284, 40.624027, 23.572611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680270, -0.731947, 0.038560,
		-0.533263, 0.458150, -0.711146,
		0.502855, -0.504334, -0.701986,
		33.051140, 40.472729, 23.362015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282089, 40.641556, 23.232992>,  <32.699142, 40.825760, 23.853405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282089, 40.641556, 23.232992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575470, 40.369747, 23.239925>,  <32.751499, 40.206661, 23.244085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575470, 40.369747, 23.239925>,  <32.282089, 40.641556, 23.232992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575470, 40.369747, 23.239925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679106, -0.733626, -0.024654,
		0.029470, 0.006310, -0.999546,
		0.733448, -0.679524, 0.017335,
		32.795506, 40.165890, 23.245127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121159, 40.205853, 22.705807>,  <32.282089, 40.641556, 23.232992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121159, 40.205853, 22.705807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389240, 39.985233, 22.904451>,  <32.550091, 39.852863, 23.023638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389240, 39.985233, 22.904451>,  <32.121159, 40.205853, 22.705807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389240, 39.985233, 22.904451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609925, -0.790557, -0.054883,
		0.422871, -0.266114, -0.866235,
		0.670203, -0.551546, 0.496613,
		32.590302, 39.819771, 23.053434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161198, 39.542912, 22.346245>,  <32.121159, 40.205853, 22.705807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161198, 39.542912, 22.346245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304985, 39.457497, 22.709604>,  <32.391258, 39.406250, 22.927620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304985, 39.457497, 22.709604>,  <32.161198, 39.542912, 22.346245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304985, 39.457497, 22.709604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489339, -0.872020, -0.011343,
		0.794564, -0.440437, -0.417951,
		0.359466, -0.213533, 0.908399,
		32.412827, 39.393436, 22.982124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321445, 38.748867, 22.283518>,  <32.161198, 39.542912, 22.346245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321445, 38.748867, 22.283518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.290226, 38.858795, 22.666847>,  <32.271492, 38.924751, 22.896845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.290226, 38.858795, 22.666847>,  <32.321445, 38.748867, 22.283518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290226, 38.858795, 22.666847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715953, -0.684383, 0.137951,
		0.693771, -0.675347, 0.250177,
		-0.078052, 0.274821, 0.958322,
		32.266811, 38.941242, 22.954344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834686, 38.267818, 22.255455>,  <32.321445, 38.748867, 22.283518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834686, 38.267818, 22.255455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053318, 37.980392, 22.083447>,  <33.184498, 37.807938, 21.980242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053318, 37.980392, 22.083447>,  <32.834686, 38.267818, 22.255455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053318, 37.980392, 22.083447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373338, 0.668752, -0.642954,
		0.749580, 0.190882, 0.633793,
		0.546579, -0.718565, -0.430019,
		33.217293, 37.764824, 21.954441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520294, 38.497448, 22.225508>,  <32.834686, 38.267818, 22.255455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520294, 38.497448, 22.225508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.490089, 38.219479, 21.939466>,  <33.471966, 38.052696, 21.767841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.490089, 38.219479, 21.939466>,  <33.520294, 38.497448, 22.225508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490089, 38.219479, 21.939466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451883, 0.615435, -0.645787,
		0.888876, -0.371906, 0.267555,
		-0.075510, -0.694928, -0.715104,
		33.467438, 38.011002, 21.724936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948296, 38.797947, 21.846964>,  <33.520294, 38.497448, 22.225508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948296, 38.797947, 21.846964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.817913, 38.512959, 21.598404>,  <33.739685, 38.341965, 21.449268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.817913, 38.512959, 21.598404>,  <33.948296, 38.797947, 21.846964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817913, 38.512959, 21.598404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449600, 0.461383, -0.764844,
		0.831633, -0.528685, 0.169938,
		-0.325955, -0.712473, -0.621398,
		33.720127, 38.299217, 21.411985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573830, 38.503513, 21.525560>,  <33.948296, 38.797947, 21.846964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573830, 38.503513, 21.525560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.268864, 38.480480, 21.267754>,  <34.085884, 38.466660, 21.113070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.268864, 38.480480, 21.267754>,  <34.573830, 38.503513, 21.525560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268864, 38.480480, 21.267754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548313, 0.471425, -0.690732,
		0.343615, -0.880024, -0.327850,
		-0.762418, -0.057582, -0.644518,
		34.040138, 38.463207, 21.074398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889706, 38.208847, 20.870344>,  <34.573830, 38.503513, 21.525560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889706, 38.208847, 20.870344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527206, 38.326084, 20.748486>,  <34.309708, 38.396427, 20.675369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527206, 38.326084, 20.748486>,  <34.889706, 38.208847, 20.870344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527206, 38.326084, 20.748486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378189, 0.240065, -0.894059,
		-0.188905, -0.925455, -0.328402,
		-0.906250, 0.293090, -0.304648,
		34.255333, 38.414009, 20.657091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677174, 37.973236, 20.310196>,  <34.889706, 38.208847, 20.870344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677174, 37.973236, 20.310196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.462292, 38.309826, 20.287127>,  <34.333363, 38.511780, 20.273285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.462292, 38.309826, 20.287127>,  <34.677174, 37.973236, 20.310196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462292, 38.309826, 20.287127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497035, 0.260586, -0.827678,
		-0.681443, -0.473300, -0.558232,
		-0.537207, 0.841476, -0.057672,
		34.301128, 38.562267, 20.269825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416649, 38.040329, 19.605043>,  <34.677174, 37.973236, 20.310196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416649, 38.040329, 19.605043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405540, 38.403030, 19.773342>,  <34.398876, 38.620651, 19.874321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405540, 38.403030, 19.773342>,  <34.416649, 38.040329, 19.605043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405540, 38.403030, 19.773342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544006, 0.366831, -0.754647,
		-0.838622, 0.207928, -0.503468,
		-0.027776, 0.906753, 0.420746,
		34.397209, 38.675056, 19.899567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134647, 38.437225, 19.113615>,  <34.416649, 38.040329, 19.605043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134647, 38.437225, 19.113615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.347935, 38.658943, 19.369251>,  <34.475906, 38.791973, 19.522633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.347935, 38.658943, 19.369251>,  <34.134647, 38.437225, 19.113615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347935, 38.658943, 19.369251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644807, 0.222738, -0.731172,
		-0.547637, 0.801961, -0.238648,
		0.533215, 0.554298, 0.639089,
		34.507900, 38.825233, 19.560978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282726, 39.092468, 18.728079>,  <34.134647, 38.437225, 19.113615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282726, 39.092468, 18.728079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.558811, 38.996807, 19.001257>,  <34.724461, 38.939411, 19.165163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.558811, 38.996807, 19.001257>,  <34.282726, 39.092468, 18.728079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558811, 38.996807, 19.001257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723448, 0.247916, -0.644329,
		-0.015217, 0.938798, 0.344132,
		0.690211, -0.239157, 0.682944,
		34.765873, 38.925060, 19.206141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.759930, 30.471251, 32.467007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.110331, 30.658993, 32.422604>,  <31.320572, 30.771639, 32.395962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.110331, 30.658993, 32.422604>,  <30.759930, 30.471251, 32.467007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110331, 30.658993, 32.422604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369004, 0.504020, -0.780897,
		-0.310572, 0.725029, 0.614717,
		0.876003, 0.469358, -0.111004,
		31.373131, 30.799801, 32.389301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600561, 31.241938, 32.349712>,  <30.759930, 30.471251, 32.467007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600561, 31.241938, 32.349712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944014, 31.113739, 32.189697>,  <31.150085, 31.036819, 32.093689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944014, 31.113739, 32.189697>,  <30.600561, 31.241938, 32.349712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944014, 31.113739, 32.189697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179139, 0.543596, -0.820008,
		0.480270, 0.775748, 0.409336,
		0.858633, -0.320497, -0.400039,
		31.201603, 31.017590, 32.069687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010448, 31.837917, 32.183537>,  <30.600561, 31.241938, 32.349712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010448, 31.837917, 32.183537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138996, 31.528685, 31.964788>,  <31.216125, 31.343145, 31.833540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138996, 31.528685, 31.964788>,  <31.010448, 31.837917, 32.183537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138996, 31.528685, 31.964788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022295, 0.583518, -0.811794,
		0.946692, 0.248692, 0.204761,
		0.321369, -0.773084, -0.546867,
		31.235407, 31.296759, 31.800728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491871, 32.186966, 31.822666>,  <31.010448, 31.837917, 32.183537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491871, 32.186966, 31.822666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423340, 31.853334, 31.612919>,  <31.382221, 31.653156, 31.487072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423340, 31.853334, 31.612919>,  <31.491871, 32.186966, 31.822666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423340, 31.853334, 31.612919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257359, 0.475867, -0.841022,
		0.951006, -0.279040, 0.133129,
		-0.171328, -0.834079, -0.524366,
		31.371941, 31.603111, 31.455608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124729, 32.056526, 31.405128>,  <31.491871, 32.186966, 31.822666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124729, 32.056526, 31.405128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820448, 31.868221, 31.226368>,  <31.637880, 31.755239, 31.119112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820448, 31.868221, 31.226368>,  <32.124729, 32.056526, 31.405128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820448, 31.868221, 31.226368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300513, 0.354848, -0.885311,
		0.575351, -0.807755, -0.128462,
		-0.760699, -0.470760, -0.446903,
		31.592237, 31.726994, 31.092297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332115, 32.097897, 30.751335>,  <32.124729, 32.056526, 31.405128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332115, 32.097897, 30.751335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947140, 31.994280, 30.718790>,  <31.716156, 31.932110, 30.699263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947140, 31.994280, 30.718790>,  <32.332115, 32.097897, 30.751335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947140, 31.994280, 30.718790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035441, 0.416954, -0.908237,
		0.269191, -0.871234, -0.410471,
		-0.962434, -0.259037, -0.081363,
		31.658409, 31.916569, 30.694382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241653, 31.682983, 30.094233>,  <32.332115, 32.097897, 30.751335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241653, 31.682983, 30.094233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883196, 31.836075, 30.184071>,  <31.668121, 31.927931, 30.237974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883196, 31.836075, 30.184071>,  <32.241653, 31.682983, 30.094233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883196, 31.836075, 30.184071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133571, 0.250005, -0.958987,
		-0.423183, -0.889391, -0.172919,
		-0.896145, 0.382730, 0.224595,
		31.614353, 31.950893, 30.251450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804304, 31.505474, 29.445770>,  <32.241653, 31.682983, 30.094233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804304, 31.505474, 29.445770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616518, 31.780764, 29.667023>,  <31.503847, 31.945936, 29.799774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616518, 31.780764, 29.667023>,  <31.804304, 31.505474, 29.445770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616518, 31.780764, 29.667023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348743, 0.430987, -0.832243,
		-0.811160, -0.583610, 0.037680,
		-0.469466, 0.688222, 0.553129,
		31.475677, 31.987230, 29.832962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164658, 31.510271, 29.129314>,  <31.804304, 31.505474, 29.445770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164658, 31.510271, 29.129314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191942, 31.843672, 29.348629>,  <31.208313, 32.043713, 29.480219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191942, 31.843672, 29.348629>,  <31.164658, 31.510271, 29.129314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191942, 31.843672, 29.348629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443039, 0.517714, -0.731907,
		-0.893904, -0.192989, 0.404588,
		0.068211, 0.833503, 0.548288,
		31.212406, 32.093723, 29.513115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551249, 31.862497, 29.131720>,  <31.164658, 31.510271, 29.129314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551249, 31.862497, 29.131720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.829103, 32.142540, 29.197842>,  <30.995817, 32.310566, 29.237514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.829103, 32.142540, 29.197842>,  <30.551249, 31.862497, 29.131720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829103, 32.142540, 29.197842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325111, 0.510528, -0.796030,
		-0.641701, 0.499210, 0.582245,
		0.694639, 0.700108, 0.165307,
		31.037495, 32.352573, 29.247435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189926, 32.473625, 28.943895>,  <30.551249, 31.862497, 29.131720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189926, 32.473625, 28.943895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.583279, 32.545647, 28.953169>,  <30.819290, 32.588860, 28.958733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.583279, 32.545647, 28.953169>,  <30.189926, 32.473625, 28.943895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583279, 32.545647, 28.953169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079656, 0.542714, -0.836132,
		-0.163134, 0.820391, 0.548038,
		0.983383, 0.180056, 0.023186,
		30.878294, 32.599663, 28.960125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195009, 33.176262, 28.763296>,  <30.189926, 32.473625, 28.943895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195009, 33.176262, 28.763296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561609, 33.028564, 28.701727>,  <30.781569, 32.939945, 28.664785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561609, 33.028564, 28.701727>,  <30.195009, 33.176262, 28.763296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561609, 33.028564, 28.701727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047805, 0.483105, -0.874256,
		0.397171, 0.793897, 0.460417,
		0.916499, -0.369239, -0.153923,
		30.836559, 32.917793, 28.655550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061943, 33.514462, 29.437485>,  <30.195009, 33.176262, 28.763296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061943, 33.514462, 29.437485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.858694, 33.841045, 29.547182>,  <29.736744, 34.036995, 29.613001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.858694, 33.841045, 29.547182>,  <30.061943, 33.514462, 29.437485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858694, 33.841045, 29.547182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079268, -0.361391, 0.929039,
		0.857629, 0.450327, 0.248350,
		-0.508123, 0.816457, 0.274243,
		29.706257, 34.085983, 29.629456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342327, 33.652290, 30.072182>,  <30.061943, 33.514462, 29.437485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342327, 33.652290, 30.072182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.998913, 33.857327, 30.067118>,  <29.792864, 33.980350, 30.064079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.998913, 33.857327, 30.067118>,  <30.342327, 33.652290, 30.072182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998913, 33.857327, 30.067118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118848, -0.174914, 0.977384,
		0.498787, 0.840626, 0.211091,
		-0.858538, 0.512594, -0.012662,
		29.741352, 34.011105, 30.063318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424644, 34.214867, 30.599562>,  <30.342327, 33.652290, 30.072182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424644, 34.214867, 30.599562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.036472, 34.135216, 30.544985>,  <29.803570, 34.087425, 30.512238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.036472, 34.135216, 30.544985>,  <30.424644, 34.214867, 30.599562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036472, 34.135216, 30.544985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150443, 0.056878, 0.986981,
		-0.188773, 0.978322, -0.085154,
		-0.970429, -0.199126, -0.136444,
		29.745344, 34.075478, 30.504051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092516, 34.679020, 30.948380>,  <30.424644, 34.214867, 30.599562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092516, 34.679020, 30.948380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.785198, 34.423565, 30.931128>,  <29.600807, 34.270290, 30.920776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.785198, 34.423565, 30.931128>,  <30.092516, 34.679020, 30.948380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785198, 34.423565, 30.931128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137444, 0.098791, 0.985571,
		-0.625165, 0.763137, -0.163678,
		-0.768296, -0.638641, -0.043128,
		29.554710, 34.231972, 30.918190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551329, 35.043987, 31.308987>,  <30.092516, 34.679020, 30.948380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551329, 35.043987, 31.308987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482548, 34.650036, 31.300495>,  <29.441278, 34.413666, 31.295401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482548, 34.650036, 31.300495>,  <29.551329, 35.043987, 31.308987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482548, 34.650036, 31.300495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306197, 0.032951, 0.951398,
		-0.936309, 0.170098, -0.307232,
		-0.171955, -0.984876, -0.021231,
		29.430962, 34.354572, 31.294127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961325, 35.021141, 31.743982>,  <29.551329, 35.043987, 31.308987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961325, 35.021141, 31.743982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.079239, 34.640957, 31.704550>,  <29.149988, 34.412846, 31.680891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.079239, 34.640957, 31.704550>,  <28.961325, 35.021141, 31.743982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079239, 34.640957, 31.704550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360014, -0.206032, 0.909913,
		-0.885150, -0.232740, -0.402916,
		0.294787, -0.950465, -0.098579,
		29.167675, 34.355816, 31.674976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486383, 34.587681, 32.120174>,  <28.961325, 35.021141, 31.743982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486383, 34.587681, 32.120174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.810152, 34.353088, 32.108307>,  <29.004414, 34.212334, 32.101189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.810152, 34.353088, 32.108307>,  <28.486383, 34.587681, 32.120174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810152, 34.353088, 32.108307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267037, -0.412603, 0.870891,
		-0.523000, -0.696995, -0.490581,
		0.809421, -0.586479, -0.029668,
		29.052979, 34.177147, 32.099407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234045, 33.944725, 32.277340>,  <28.486383, 34.587681, 32.120174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234045, 33.944725, 32.277340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.621031, 33.987862, 32.368885>,  <28.853222, 34.013744, 32.423813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.621031, 33.987862, 32.368885>,  <28.234045, 33.944725, 32.277340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621031, 33.987862, 32.368885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189130, -0.292552, 0.937360,
		0.168044, -0.950149, -0.262637,
		0.967466, 0.107845, 0.228863,
		28.911270, 34.020214, 32.437546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324057, 33.374580, 32.754845>,  <28.234045, 33.944725, 32.277340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324057, 33.374580, 32.754845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654360, 33.596569, 32.795105>,  <28.852541, 33.729763, 32.819260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654360, 33.596569, 32.795105>,  <28.324057, 33.374580, 32.754845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654360, 33.596569, 32.795105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096415, -0.036931, 0.994656,
		0.555724, -0.831048, 0.023012,
		0.825757, 0.554973, 0.100649,
		28.902086, 33.763062, 32.825298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797810, 33.075733, 33.218678>,  <28.324057, 33.374580, 32.754845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797810, 33.075733, 33.218678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.974203, 33.434727, 33.221771>,  <29.080040, 33.650124, 33.223629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.974203, 33.434727, 33.221771>,  <28.797810, 33.075733, 33.218678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974203, 33.434727, 33.221771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068844, -0.042418, 0.996725,
		0.894871, -0.439006, -0.080492,
		0.440983, 0.897482, 0.007735,
		29.106499, 33.703972, 33.224091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583338, 33.045467, 33.500168>,  <28.797810, 33.075733, 33.218678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583338, 33.045467, 33.500168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.423426, 33.409355, 33.545036>,  <29.327478, 33.627689, 33.571957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.423426, 33.409355, 33.545036>,  <29.583338, 33.045467, 33.500168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423426, 33.409355, 33.545036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158438, -0.051948, 0.986001,
		0.902814, 0.411956, -0.123367,
		-0.399780, 0.909722, 0.112168,
		29.303492, 33.682270, 33.578686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051350, 33.364571, 33.867085>,  <29.583338, 33.045467, 33.500168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051350, 33.364571, 33.867085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709192, 33.567329, 33.909721>,  <29.503899, 33.688984, 33.935303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709192, 33.567329, 33.909721>,  <30.051350, 33.364571, 33.867085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709192, 33.567329, 33.909721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198911, 0.131445, 0.971163,
		0.478268, 0.851926, -0.213264,
		-0.855391, 0.506897, 0.106591,
		29.452576, 33.719398, 33.941700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321346, 34.057655, 34.210388>,  <30.051350, 33.364571, 33.867085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321346, 34.057655, 34.210388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928932, 34.002739, 34.265121>,  <29.693483, 33.969788, 34.297962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928932, 34.002739, 34.265121>,  <30.321346, 34.057655, 34.210388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928932, 34.002739, 34.265121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106877, 0.205816, 0.972737,
		-0.161710, 0.968912, -0.187239,
		-0.981034, -0.137290, 0.136837,
		29.634623, 33.961552, 34.306171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117344, 34.576679, 34.664867>,  <30.321346, 34.057655, 34.210388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117344, 34.576679, 34.664867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808619, 34.323479, 34.688896>,  <29.623383, 34.171558, 34.703316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808619, 34.323479, 34.688896>,  <30.117344, 34.576679, 34.664867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808619, 34.323479, 34.688896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048519, 0.152833, 0.987060,
		-0.633994, 0.758913, -0.148671,
		-0.771815, -0.633003, 0.060074,
		29.577074, 34.133579, 34.706917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370518, 35.187687, 34.160439>,  <30.117344, 34.576679, 34.664867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370518, 35.187687, 34.160439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.755302, 35.102993, 34.229488>,  <30.986174, 35.052177, 34.270916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.755302, 35.102993, 34.229488>,  <30.370518, 35.187687, 34.160439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755302, 35.102993, 34.229488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249813, 0.937520, -0.242177,
		-0.110559, 0.276089, 0.954752,
		0.961962, -0.211735, 0.172622,
		31.043890, 35.039471, 34.281277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624132, 35.716293, 34.606461>,  <30.370518, 35.187687, 34.160439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624132, 35.716293, 34.606461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918644, 35.563278, 34.383190>,  <31.095350, 35.471470, 34.249229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918644, 35.563278, 34.383190>,  <30.624132, 35.716293, 34.606461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918644, 35.563278, 34.383190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190036, 0.908571, -0.372002,
		0.649446, 0.167824, 0.741657,
		0.736279, -0.382537, -0.558175,
		31.139528, 35.448517, 34.215736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937923, 36.366516, 34.563038>,  <30.624132, 35.716293, 34.606461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937923, 36.366516, 34.563038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148773, 36.142582, 34.307312>,  <31.275284, 36.008221, 34.153877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148773, 36.142582, 34.307312>,  <30.937923, 36.366516, 34.563038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148773, 36.142582, 34.307312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168280, 0.806194, -0.567215,
		0.832958, 0.191410, 0.519175,
		0.527126, -0.559833, -0.639316,
		31.306911, 35.974632, 34.115517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562355, 36.644444, 34.466972>,  <30.937923, 36.366516, 34.563038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562355, 36.644444, 34.466972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528130, 36.428467, 34.132034>,  <31.507593, 36.298882, 33.931072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528130, 36.428467, 34.132034>,  <31.562355, 36.644444, 34.466972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528130, 36.428467, 34.132034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249420, 0.802056, -0.542675,
		0.964608, -0.255283, 0.066045,
		-0.085564, -0.539942, -0.837342,
		31.502460, 36.266483, 33.880833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122601, 36.920368, 33.928787>,  <31.562355, 36.644444, 34.466972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122601, 36.920368, 33.928787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879601, 36.704094, 33.696026>,  <31.733801, 36.574329, 33.556370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879601, 36.704094, 33.696026>,  <32.122601, 36.920368, 33.928787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879601, 36.704094, 33.696026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184380, 0.616581, -0.765396,
		0.772625, -0.572268, -0.274882,
		-0.607499, -0.540681, -0.581901,
		31.697351, 36.541889, 33.521454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564545, 36.489384, 33.380550>,  <32.122601, 36.920368, 33.928787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564545, 36.489384, 33.380550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188160, 36.561535, 33.265972>,  <31.962328, 36.604824, 33.197227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188160, 36.561535, 33.265972>,  <32.564545, 36.489384, 33.380550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188160, 36.561535, 33.265972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338362, 0.476644, -0.811370,
		-0.009820, -0.860392, -0.509538,
		-0.940965, 0.180376, -0.286444,
		31.905870, 36.615646, 33.180038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539143, 36.302074, 32.718769>,  <32.564545, 36.489384, 33.380550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539143, 36.302074, 32.718769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233627, 36.555252, 32.769371>,  <32.050316, 36.707157, 32.799732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233627, 36.555252, 32.769371>,  <32.539143, 36.302074, 32.718769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233627, 36.555252, 32.769371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272292, 0.493660, -0.825928,
		-0.585217, -0.596390, -0.549399,
		-0.763792, 0.632944, 0.126506,
		32.004490, 36.745136, 32.807323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348263, 36.452675, 32.038914>,  <32.539143, 36.302074, 32.718769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348263, 36.452675, 32.038914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164104, 36.742989, 32.243378>,  <32.053612, 36.917175, 32.366055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164104, 36.742989, 32.243378>,  <32.348263, 36.452675, 32.038914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164104, 36.742989, 32.243378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333986, 0.675120, -0.657773,
		-0.822492, -0.132114, -0.553221,
		-0.460392, 0.725781, 0.511157,
		32.025986, 36.960724, 32.396725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872555, 36.862560, 31.590097>,  <32.348263, 36.452675, 32.038914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872555, 36.862560, 31.590097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982210, 37.107853, 31.886421>,  <32.048004, 37.255028, 32.064217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982210, 37.107853, 31.886421>,  <31.872555, 36.862560, 31.590097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982210, 37.107853, 31.886421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329995, 0.663566, -0.671404,
		-0.903300, 0.428521, -0.020454,
		0.274139, 0.613229, 0.740809,
		32.064453, 37.291821, 32.108665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404547, 37.425804, 31.529512>,  <31.872555, 36.862560, 31.590097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404547, 37.425804, 31.529512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693529, 37.585117, 31.755585>,  <31.866919, 37.680706, 31.891228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693529, 37.585117, 31.755585>,  <31.404547, 37.425804, 31.529512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693529, 37.585117, 31.755585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118223, 0.734228, -0.668530,
		-0.681236, 0.549800, 0.483361,
		0.722455, 0.398282, 0.565181,
		31.910265, 37.704601, 31.925138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266962, 38.124180, 31.546961>,  <31.404547, 37.425804, 31.529512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266962, 38.124180, 31.546961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644268, 38.098736, 31.677319>,  <31.870651, 38.083469, 31.755533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644268, 38.098736, 31.677319>,  <31.266962, 38.124180, 31.546961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644268, 38.098736, 31.677319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236570, 0.817462, -0.525158,
		-0.233001, 0.572459, 0.786131,
		0.943263, -0.063612, 0.325896,
		31.927246, 38.079651, 31.775087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401114, 38.828373, 31.700129>,  <31.266962, 38.124180, 31.546961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401114, 38.828373, 31.700129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758690, 38.650932, 31.674555>,  <31.973236, 38.544468, 31.659210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758690, 38.650932, 31.674555>,  <31.401114, 38.828373, 31.700129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758690, 38.650932, 31.674555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361157, 0.797466, -0.483336,
		0.265394, 0.408983, 0.873097,
		0.893942, -0.443600, -0.063936,
		32.026871, 38.517853, 31.655375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876181, 39.381889, 31.726851>,  <31.401114, 38.828373, 31.700129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876181, 39.381889, 31.726851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092655, 39.084026, 31.570591>,  <32.222538, 38.905308, 31.476835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092655, 39.084026, 31.570591>,  <31.876181, 39.381889, 31.726851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092655, 39.084026, 31.570591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462504, 0.651568, -0.601290,
		0.702289, 0.144732, 0.697025,
		0.541185, -0.744656, -0.390649,
		32.255009, 38.860630, 31.453396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638027, 39.616398, 31.763466>,  <31.876181, 39.381889, 31.726851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638027, 39.616398, 31.763466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621056, 39.331085, 31.483627>,  <32.610874, 39.159897, 31.315723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621056, 39.331085, 31.483627>,  <32.638027, 39.616398, 31.763466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621056, 39.331085, 31.483627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594277, 0.544870, -0.591567,
		0.803141, -0.440852, 0.400767,
		-0.042428, -0.713278, -0.699595,
		32.608326, 39.117104, 31.273748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222336, 39.703426, 31.374191>,  <32.638027, 39.616398, 31.763466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222336, 39.703426, 31.374191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025234, 39.449699, 31.135921>,  <32.906975, 39.297462, 30.992960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025234, 39.449699, 31.135921>,  <33.222336, 39.703426, 31.374191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025234, 39.449699, 31.135921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467788, 0.384123, -0.796005,
		0.733736, -0.670884, 0.107451,
		-0.492753, -0.634322, -0.595677,
		32.877407, 39.259403, 30.957218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734760, 39.404896, 31.099197>,  <33.222336, 39.703426, 31.374191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734760, 39.404896, 31.099197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417809, 39.371887, 30.857426>,  <33.227638, 39.352081, 30.712362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417809, 39.371887, 30.857426>,  <33.734760, 39.404896, 31.099197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417809, 39.371887, 30.857426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527411, 0.405243, -0.746737,
		0.306560, -0.910477, -0.277583,
		-0.792376, -0.082519, -0.604426,
		33.180096, 39.347130, 30.676098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914841, 39.054283, 30.480135>,  <33.734760, 39.404896, 31.099197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914841, 39.054283, 30.480135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600239, 39.290440, 30.407642>,  <33.411476, 39.432133, 30.364147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600239, 39.290440, 30.407642>,  <33.914841, 39.054283, 30.480135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600239, 39.290440, 30.407642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581901, 0.610133, -0.537707,
		-0.206882, -0.528369, -0.823423,
		-0.786505, 0.590393, -0.181233,
		33.364288, 39.467556, 30.353271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988926, 39.205582, 29.754826>,  <33.914841, 39.054283, 30.480135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988926, 39.205582, 29.754826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770958, 39.501247, 29.913166>,  <33.640179, 39.678646, 30.008171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770958, 39.501247, 29.913166>,  <33.988926, 39.205582, 29.754826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770958, 39.501247, 29.913166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536427, 0.670165, -0.512956,
		-0.644445, -0.067174, -0.761694,
		-0.544918, 0.739166, 0.395851,
		33.607483, 39.722996, 30.031921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822960, 39.544327, 29.208652>,  <33.988926, 39.205582, 29.754826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822960, 39.544327, 29.208652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742119, 39.826225, 29.480679>,  <33.693615, 39.995365, 29.643894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742119, 39.826225, 29.480679>,  <33.822960, 39.544327, 29.208652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742119, 39.826225, 29.480679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405734, 0.692250, -0.596800,
		-0.891367, 0.155311, -0.425844,
		-0.202101, 0.704747, 0.680064,
		33.681488, 40.037651, 29.684698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432610, 40.101540, 28.803923>,  <33.822960, 39.544327, 29.208652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432610, 40.101540, 28.803923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554295, 40.276810, 29.142262>,  <33.627304, 40.381973, 29.345264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554295, 40.276810, 29.142262>,  <33.432610, 40.101540, 28.803923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554295, 40.276810, 29.142262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347137, 0.775883, -0.526784,
		-0.887103, 0.453879, 0.083924,
		0.304212, 0.438178, 0.845846,
		33.645557, 40.408264, 29.396015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247292, 40.804741, 28.676102>,  <33.432610, 40.101540, 28.803923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247292, 40.804741, 28.676102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512974, 40.813576, 28.974993>,  <33.672382, 40.818878, 29.154327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512974, 40.813576, 28.974993>,  <33.247292, 40.804741, 28.676102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512974, 40.813576, 28.974993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459655, 0.776209, -0.431528,
		-0.589536, 0.630088, 0.505407,
		0.664202, 0.022089, 0.747227,
		33.712234, 40.820202, 29.199162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344757, 41.502174, 28.862238>,  <33.247292, 40.804741, 28.676102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344757, 41.502174, 28.862238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684723, 41.348763, 29.006767>,  <33.888702, 41.256714, 29.093485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684723, 41.348763, 29.006767>,  <33.344757, 41.502174, 28.862238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684723, 41.348763, 29.006767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521184, 0.712836, -0.469289,
		-0.077578, 0.587171, 0.805737,
		0.849911, -0.383531, 0.361324,
		33.939697, 41.233704, 29.115164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754951, 42.090389, 28.971645>,  <33.344757, 41.502174, 28.862238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754951, 42.090389, 28.971645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991695, 41.768795, 28.948637>,  <34.133739, 41.575836, 28.934832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991695, 41.768795, 28.948637>,  <33.754951, 42.090389, 28.971645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991695, 41.768795, 28.948637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604177, 0.489738, -0.628591,
		0.533551, 0.337282, 0.775606,
		0.591856, -0.803989, -0.057522,
		34.169250, 41.527599, 28.931381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477627, 42.312607, 29.073141>,  <33.754951, 42.090389, 28.971645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477627, 42.312607, 29.073141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473675, 41.972996, 28.861841>,  <34.471306, 41.769230, 28.735062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473675, 41.972996, 28.861841>,  <34.477627, 42.312607, 29.073141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473675, 41.972996, 28.861841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616292, 0.410847, -0.671854,
		0.787455, -0.332192, 0.519194,
		-0.009876, -0.849031, -0.528251,
		34.470711, 41.718288, 28.703365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963917, 42.374672, 28.714487>,  <34.477627, 42.312607, 29.073141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963917, 42.374672, 28.714487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821686, 42.057629, 28.516359>,  <34.736347, 41.867405, 28.397484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821686, 42.057629, 28.516359>,  <34.963917, 42.374672, 28.714487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821686, 42.057629, 28.516359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526815, 0.267782, -0.806696,
		0.772028, -0.547787, 0.322338,
		-0.355582, -0.792605, -0.495317,
		34.715012, 41.819847, 28.367764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575405, 42.040749, 28.490181>,  <34.963917, 42.374672, 28.714487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575405, 42.040749, 28.490181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271347, 41.898655, 28.272562>,  <35.088913, 41.813400, 28.141991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271347, 41.898655, 28.272562>,  <35.575405, 42.040749, 28.490181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271347, 41.898655, 28.272562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546946, 0.102170, -0.830910,
		0.350750, -0.929178, 0.116627,
		-0.760148, -0.355231, -0.544047,
		35.043304, 41.792088, 28.109348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887630, 41.581772, 27.885687>,  <35.575405, 42.040749, 28.490181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887630, 41.581772, 27.885687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524471, 41.687851, 27.755833>,  <35.306576, 41.751499, 27.677919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524471, 41.687851, 27.755833>,  <35.887630, 41.581772, 27.885687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524471, 41.687851, 27.755833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368880, 0.137598, -0.919236,
		-0.199107, -0.954327, -0.222750,
		-0.907901, 0.265194, -0.324635,
		35.252102, 41.767410, 27.658442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772881, 41.156174, 27.303432>,  <35.887630, 41.581772, 27.885687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772881, 41.156174, 27.303432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556252, 41.490845, 27.270781>,  <35.426273, 41.691647, 27.251190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556252, 41.490845, 27.270781>,  <35.772881, 41.156174, 27.303432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556252, 41.490845, 27.270781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378495, 0.155982, -0.912366,
		-0.750626, -0.525009, -0.401155,
		-0.541573, 0.836681, -0.081629,
		35.393780, 41.741848, 27.246292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999882, 40.582394, 26.903442>,  <35.772881, 41.156174, 27.303432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999882, 40.582394, 26.903442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334080, 40.365761, 26.866259>,  <36.534599, 40.235783, 26.843948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334080, 40.365761, 26.866259>,  <35.999882, 40.582394, 26.903442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334080, 40.365761, 26.866259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399913, -0.715307, 0.573066,
		-0.376854, -0.441618, -0.814220,
		0.835494, -0.541580, -0.092958,
		36.584728, 40.203285, 26.838371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790752, 39.926933, 26.842630>,  <35.999882, 40.582394, 26.903442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790752, 39.926933, 26.842630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168552, 39.881458, 26.965921>,  <36.395233, 39.854172, 27.039896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168552, 39.881458, 26.965921>,  <35.790752, 39.926933, 26.842630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168552, 39.881458, 26.965921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311443, -0.608453, 0.729923,
		0.104555, -0.785404, -0.610089,
		0.944495, -0.113691, 0.308226,
		36.451900, 39.847351, 27.058390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892410, 39.200668, 26.941782>,  <35.790752, 39.926933, 26.842630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892410, 39.200668, 26.941782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205151, 39.337543, 27.150248>,  <36.392796, 39.419670, 27.275326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205151, 39.337543, 27.150248>,  <35.892410, 39.200668, 26.941782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205151, 39.337543, 27.150248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230600, -0.617918, 0.751666,
		0.579247, -0.707873, -0.404213,
		0.781855, 0.342189, 0.521163,
		36.439709, 39.440201, 27.306597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369778, 38.584309, 27.246979>,  <35.892410, 39.200668, 26.941782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369778, 38.584309, 27.246979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400509, 38.918983, 27.463882>,  <36.418945, 39.119789, 27.594025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400509, 38.918983, 27.463882>,  <36.369778, 38.584309, 27.246979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400509, 38.918983, 27.463882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433679, -0.461682, 0.773804,
		0.897787, -0.294614, 0.327386,
		0.076825, 0.836691, 0.542260,
		36.423557, 39.169991, 27.626560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644646, 38.389637, 27.912876>,  <36.369778, 38.584309, 27.246979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644646, 38.389637, 27.912876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447639, 38.737007, 27.935762>,  <36.329437, 38.945427, 27.949493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447639, 38.737007, 27.935762>,  <36.644646, 38.389637, 27.912876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447639, 38.737007, 27.935762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549127, -0.361086, 0.753708,
		0.675197, 0.339793, 0.654714,
		-0.492513, 0.868422, 0.057215,
		36.299885, 38.997536, 27.952927>
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
