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
	<24.232779, 34.985241, 34.256653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254450, 34.960617, 34.655304>,  <24.267452, 34.945843, 34.894497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254450, 34.960617, 34.655304>,  <24.232779, 34.985241, 34.256653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254450, 34.960617, 34.655304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071626, 0.995287, 0.065373,
		-0.995959, -0.074926, 0.049510,
		0.054175, -0.061562, 0.996632,
		24.270702, 34.942150, 34.954292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764265, 35.577969, 34.214058>,  <24.232779, 34.985241, 34.256653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764265, 35.577969, 34.214058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760855, 35.822289, 33.897362>,  <24.758808, 35.968880, 33.707344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760855, 35.822289, 33.897362>,  <24.764265, 35.577969, 34.214058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760855, 35.822289, 33.897362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751040, 0.526656, 0.398212,
		0.660202, -0.591232, -0.463227,
		-0.008526, 0.610802, -0.791738,
		24.758297, 36.005527, 33.659840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385620, 35.791683, 34.016068>,  <24.764265, 35.577969, 34.214058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385620, 35.791683, 34.016068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171225, 36.104805, 33.889622>,  <25.042587, 36.292679, 33.813755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171225, 36.104805, 33.889622>,  <25.385620, 35.791683, 34.016068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171225, 36.104805, 33.889622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741010, 0.615643, 0.268120,
		0.404502, -0.090538, -0.910044,
		-0.535987, 0.782807, -0.316119,
		25.010427, 36.339645, 33.794785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977003, 36.217491, 33.769913>,  <25.385620, 35.791683, 34.016068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977003, 36.217491, 33.769913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640951, 36.431931, 33.802849>,  <25.439320, 36.560593, 33.822613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640951, 36.431931, 33.802849>,  <25.977003, 36.217491, 33.769913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640951, 36.431931, 33.802849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535900, 0.797055, 0.278414,
		0.083624, 0.278033, -0.956925,
		-0.840130, 0.536098, 0.082345,
		25.388912, 36.592758, 33.827553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716450, 36.281639, 34.445553>,  <25.977003, 36.217491, 33.769913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716450, 36.281639, 34.445553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115501, 36.280594, 34.473053>,  <26.354933, 36.279968, 34.489552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115501, 36.280594, 34.473053>,  <25.716450, 36.281639, 34.445553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115501, 36.280594, 34.473053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063428, 0.421981, -0.904383,
		-0.026649, 0.906601, 0.421147,
		0.997630, -0.002612, 0.068750,
		26.414791, 36.279812, 34.493679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950241, 36.925591, 34.315022>,  <25.716450, 36.281639, 34.445553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950241, 36.925591, 34.315022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253057, 36.686142, 34.210297>,  <26.434748, 36.542473, 34.147461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253057, 36.686142, 34.210297>,  <25.950241, 36.925591, 34.315022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253057, 36.686142, 34.210297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012840, 0.387001, -0.921990,
		0.653239, 0.701347, 0.285290,
		0.757043, -0.598617, -0.261809,
		26.480171, 36.506557, 34.131752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329695, 37.324284, 33.995312>,  <25.950241, 36.925591, 34.315022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329695, 37.324284, 33.995312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504507, 36.984127, 33.878117>,  <26.609394, 36.780033, 33.807800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504507, 36.984127, 33.878117>,  <26.329695, 37.324284, 33.995312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504507, 36.984127, 33.878117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120252, 0.378060, -0.917938,
		0.891372, 0.365934, 0.267485,
		0.437030, -0.850390, -0.292988,
		26.635616, 36.729012, 33.790222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779854, 37.570351, 33.574669>,  <26.329695, 37.324284, 33.995312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779854, 37.570351, 33.574669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754463, 37.183109, 33.477726>,  <26.739229, 36.950764, 33.419559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754463, 37.183109, 33.477726>,  <26.779854, 37.570351, 33.574669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754463, 37.183109, 33.477726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058556, 0.238820, -0.969297,
		0.996264, -0.075718, 0.041529,
		-0.063475, -0.968107, -0.242362,
		26.735420, 36.892677, 33.405018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420633, 37.381119, 33.072788>,  <26.779854, 37.570351, 33.574669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420633, 37.381119, 33.072788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153383, 37.090584, 33.008236>,  <26.993032, 36.916264, 32.969505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153383, 37.090584, 33.008236>,  <27.420633, 37.381119, 33.072788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153383, 37.090584, 33.008236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135954, 0.094070, -0.986239,
		0.731522, -0.680872, 0.035898,
		-0.668126, -0.726336, -0.161381,
		26.952946, 36.872684, 32.959820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690300, 37.178986, 32.369873>,  <27.420633, 37.381119, 33.072788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690300, 37.178986, 32.369873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325655, 37.017811, 32.402370>,  <27.106867, 36.921104, 32.421871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325655, 37.017811, 32.402370>,  <27.690300, 37.178986, 32.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325655, 37.017811, 32.402370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152529, 0.148055, -0.977146,
		0.381699, -0.903173, -0.196429,
		-0.911614, -0.402937, 0.081248,
		27.052170, 36.896931, 32.426746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711477, 36.643467, 31.953747>,  <27.690300, 37.178986, 32.369873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711477, 36.643467, 31.953747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328831, 36.750336, 32.000229>,  <27.099243, 36.814457, 32.028118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328831, 36.750336, 32.000229>,  <27.711477, 36.643467, 31.953747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328831, 36.750336, 32.000229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102721, 0.063962, -0.992652,
		-0.272642, -0.961524, -0.033743,
		-0.956616, 0.267172, 0.116207,
		27.041845, 36.830486, 32.035091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327511, 36.184490, 31.486797>,  <27.711477, 36.643467, 31.953747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327511, 36.184490, 31.486797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075565, 36.489109, 31.547874>,  <26.924398, 36.671879, 31.584520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075565, 36.489109, 31.547874>,  <27.327511, 36.184490, 31.486797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075565, 36.489109, 31.547874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132296, 0.298910, -0.945066,
		-0.765355, -0.575063, -0.289023,
		-0.629864, 0.761548, 0.152694,
		26.886606, 36.717575, 31.593683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690859, 36.084656, 31.083902>,  <27.327511, 36.184490, 31.486797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690859, 36.084656, 31.083902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773285, 36.469105, 31.157415>,  <26.822741, 36.699776, 31.201523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773285, 36.469105, 31.157415>,  <26.690859, 36.084656, 31.083902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773285, 36.469105, 31.157415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072015, 0.172407, -0.982390,
		-0.975884, 0.215673, -0.033688,
		0.206067, 0.961125, 0.183781,
		26.835106, 36.757442, 31.212549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389944, 36.366661, 30.539145>,  <26.690859, 36.084656, 31.083902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389944, 36.366661, 30.539145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582989, 36.686539, 30.682013>,  <26.698816, 36.878468, 30.767733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582989, 36.686539, 30.682013>,  <26.389944, 36.366661, 30.539145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582989, 36.686539, 30.682013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168778, 0.315243, -0.933882,
		-0.859418, 0.510985, 0.017169,
		0.482612, 0.799697, 0.357169,
		26.727772, 36.926449, 30.789164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197723, 36.952126, 30.096800>,  <26.389944, 36.366661, 30.539145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197723, 36.952126, 30.096800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544176, 37.049171, 30.271593>,  <26.752048, 37.107399, 30.376469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544176, 37.049171, 30.271593>,  <26.197723, 36.952126, 30.096800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544176, 37.049171, 30.271593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305918, 0.434067, -0.847349,
		-0.395261, 0.867596, 0.301738,
		0.866131, 0.242616, 0.436983,
		26.804016, 37.121956, 30.402687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274908, 37.712498, 30.005428>,  <26.197723, 36.952126, 30.096800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274908, 37.712498, 30.005428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641193, 37.582249, 30.099607>,  <26.860966, 37.504101, 30.156115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641193, 37.582249, 30.099607>,  <26.274908, 37.712498, 30.005428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641193, 37.582249, 30.099607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347569, 0.347807, -0.870762,
		0.201650, 0.879204, 0.431669,
		0.915715, -0.325624, 0.235449,
		26.915907, 37.484562, 30.170242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700066, 38.259285, 29.826965>,  <26.274908, 37.712498, 30.005428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700066, 38.259285, 29.826965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925175, 37.929821, 29.854860>,  <27.060240, 37.732143, 29.871597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925175, 37.929821, 29.854860>,  <26.700066, 38.259285, 29.826965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925175, 37.929821, 29.854860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555525, 0.314390, -0.769773,
		0.612109, 0.471951, 0.634496,
		0.562774, -0.823664, 0.069740,
		27.094007, 37.682720, 29.875782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414839, 38.410652, 29.624357>,  <26.700066, 38.259285, 29.826965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414839, 38.410652, 29.624357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417147, 38.011486, 29.598656>,  <27.418531, 37.771984, 29.583235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417147, 38.011486, 29.598656>,  <27.414839, 38.410652, 29.624357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417147, 38.011486, 29.598656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709475, 0.049366, -0.702999,
		0.704707, -0.041529, 0.708282,
		0.005770, -0.997917, -0.064252,
		27.418879, 37.712112, 29.579380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167295, 38.131363, 29.723063>,  <27.414839, 38.410652, 29.624357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167295, 38.131363, 29.723063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942816, 37.888264, 29.498312>,  <27.808128, 37.742405, 29.363462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942816, 37.888264, 29.498312>,  <28.167295, 38.131363, 29.723063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942816, 37.888264, 29.498312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702260, 0.009654, -0.711856,
		0.438050, -0.794074, 0.421377,
		-0.561198, -0.607744, -0.561875,
		27.774456, 37.705940, 29.329750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647047, 37.650417, 29.688431>,  <28.167295, 38.131363, 29.723063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647047, 37.650417, 29.688431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371561, 37.601021, 29.402657>,  <28.206270, 37.571381, 29.231192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371561, 37.601021, 29.402657>,  <28.647047, 37.650417, 29.688431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371561, 37.601021, 29.402657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722914, -0.192227, -0.663660,
		-0.055374, -0.973549, 0.221667,
		-0.688715, -0.123496, -0.714437,
		28.164946, 37.563972, 29.188326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918451, 37.127895, 29.270485>,  <28.647047, 37.650417, 29.688431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918451, 37.127895, 29.270485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660456, 37.256458, 28.993158>,  <28.505657, 37.333595, 28.826763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660456, 37.256458, 28.993158>,  <28.918451, 37.127895, 29.270485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660456, 37.256458, 28.993158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700397, -0.114263, -0.704548,
		-0.305665, -0.940023, -0.151412,
		-0.644991, 0.321404, -0.693315,
		28.466959, 37.352879, 28.785164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097380, 36.834278, 28.752457>,  <28.918451, 37.127895, 29.270485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097380, 36.834278, 28.752457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866505, 37.104115, 28.568378>,  <28.727980, 37.266018, 28.457932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866505, 37.104115, 28.568378>,  <29.097380, 36.834278, 28.752457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866505, 37.104115, 28.568378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569896, -0.070868, -0.818655,
		-0.584872, -0.734781, -0.343543,
		-0.577186, 0.674592, -0.460197,
		28.693348, 37.306492, 28.430319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845900, 36.529354, 28.133337>,  <29.097380, 36.834278, 28.752457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845900, 36.529354, 28.133337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825628, 36.922638, 28.063217>,  <28.813465, 37.158607, 28.021145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825628, 36.922638, 28.063217>,  <28.845900, 36.529354, 28.133337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825628, 36.922638, 28.063217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447786, -0.134526, -0.883963,
		-0.892703, -0.123293, -0.433450,
		-0.050676, 0.983210, -0.175301,
		28.810425, 37.217602, 28.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840128, 36.701523, 27.423906>,  <28.845900, 36.529354, 28.133337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840128, 36.701523, 27.423906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948473, 37.071247, 27.531446>,  <29.013479, 37.293083, 27.595970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948473, 37.071247, 27.531446>,  <28.840128, 36.701523, 27.423906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948473, 37.071247, 27.531446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636736, 0.037427, -0.770173,
		-0.721942, 0.379799, -0.578405,
		0.270863, 0.924312, 0.268852,
		29.029732, 37.348541, 27.612103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775759, 37.241924, 26.858969>,  <28.840128, 36.701523, 27.423906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775759, 37.241924, 26.858969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039248, 37.398643, 27.115898>,  <29.197342, 37.492676, 27.270056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039248, 37.398643, 27.115898>,  <28.775759, 37.241924, 26.858969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039248, 37.398643, 27.115898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657913, 0.114224, -0.744381,
		-0.365014, 0.912934, -0.182525,
		0.658723, 0.391795, 0.642325,
		29.236864, 37.516182, 27.308596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032227, 38.076977, 26.814878>,  <28.775759, 37.241924, 26.858969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032227, 38.076977, 26.814878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307585, 37.820309, 26.950157>,  <29.472799, 37.666309, 27.031324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307585, 37.820309, 26.950157>,  <29.032227, 38.076977, 26.814878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307585, 37.820309, 26.950157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627293, 0.292573, -0.721737,
		0.364167, 0.708988, 0.603919,
		0.688393, -0.641667, 0.338198,
		29.514103, 37.627808, 27.051617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536703, 38.443520, 27.206472>,  <29.032227, 38.076977, 26.814878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536703, 38.443520, 27.206472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651745, 38.115215, 27.009035>,  <29.720770, 37.918232, 26.890574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651745, 38.115215, 27.009035>,  <29.536703, 38.443520, 27.206472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651745, 38.115215, 27.009035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388372, 0.571036, -0.723246,
		0.875472, 0.016312, 0.482994,
		0.287604, -0.820763, -0.493591,
		29.738026, 37.868988, 26.860958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923973, 38.733994, 26.722534>,  <29.536703, 38.443520, 27.206472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923973, 38.733994, 26.722534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916044, 38.350185, 26.610159>,  <29.911287, 38.119900, 26.542734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916044, 38.350185, 26.610159>,  <29.923973, 38.733994, 26.722534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916044, 38.350185, 26.610159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470090, 0.239050, -0.849630,
		0.882396, -0.148909, 0.446323,
		-0.019824, -0.959522, -0.280937,
		29.910097, 38.062328, 26.525877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353613, 39.312004, 27.005514>,  <29.923973, 38.733994, 26.722534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353613, 39.312004, 27.005514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510004, 38.946159, 27.046738>,  <30.603838, 38.726654, 27.071472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510004, 38.946159, 27.046738>,  <30.353613, 39.312004, 27.005514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510004, 38.946159, 27.046738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006812, -0.114842, -0.993360,
		0.920375, 0.387680, -0.051131,
		0.390978, -0.914612, 0.103057,
		30.627298, 38.671776, 27.077654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863586, 39.212814, 26.513563>,  <30.353613, 39.312004, 27.005514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863586, 39.212814, 26.513563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766470, 38.836266, 26.607256>,  <30.708200, 38.610336, 26.663471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766470, 38.836266, 26.607256>,  <30.863586, 39.212814, 26.513563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766470, 38.836266, 26.607256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257134, -0.295271, -0.920161,
		0.935379, -0.163179, 0.313749,
		-0.242792, -0.941375, 0.234232,
		30.693632, 38.553852, 26.677525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758821, 39.870544, 26.809244>,  <30.863586, 39.212814, 26.513563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758821, 39.870544, 26.809244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742388, 40.231564, 26.980692>,  <30.732529, 40.448177, 27.083561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742388, 40.231564, 26.980692>,  <30.758821, 39.870544, 26.809244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742388, 40.231564, 26.980692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809528, -0.221375, 0.543745,
		0.585643, 0.369319, -0.721544,
		-0.041083, 0.902550, 0.428620,
		30.730062, 40.502327, 27.109278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454914, 40.134094, 26.964533>,  <30.758821, 39.870544, 26.809244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454914, 40.134094, 26.964533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212999, 40.272221, 27.251585>,  <31.067850, 40.355095, 27.423817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212999, 40.272221, 27.251585>,  <31.454914, 40.134094, 26.964533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212999, 40.272221, 27.251585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646747, -0.312850, 0.695589,
		0.464708, 0.884806, -0.034125,
		-0.604785, 0.345316, 0.717629,
		31.031565, 40.375816, 27.466873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805460, 40.529835, 27.443357>,  <31.454914, 40.134094, 26.964533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805460, 40.529835, 27.443357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477573, 40.399883, 27.632046>,  <31.280842, 40.321911, 27.745258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477573, 40.399883, 27.632046>,  <31.805460, 40.529835, 27.443357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477573, 40.399883, 27.632046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567595, -0.350260, 0.745086,
		-0.076840, 0.878504, 0.471515,
		-0.819714, -0.324882, 0.471721,
		31.231659, 40.302418, 27.773561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871319, 40.839508, 28.065477>,  <31.805460, 40.529835, 27.443357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871319, 40.839508, 28.065477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660151, 40.500652, 28.089684>,  <31.533449, 40.297340, 28.104208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660151, 40.500652, 28.089684>,  <31.871319, 40.839508, 28.065477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660151, 40.500652, 28.089684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453330, -0.220819, 0.863557,
		-0.718186, 0.483323, 0.500607,
		-0.527921, -0.847135, 0.060516,
		31.501774, 40.246513, 28.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475779, 40.764713, 28.723186>,  <31.871319, 40.839508, 28.065477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475779, 40.764713, 28.723186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551489, 40.398952, 28.580055>,  <31.596914, 40.179497, 28.494177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551489, 40.398952, 28.580055>,  <31.475779, 40.764713, 28.723186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551489, 40.398952, 28.580055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577129, -0.191229, 0.793948,
		-0.794416, -0.356787, 0.491534,
		0.189274, -0.914404, -0.357827,
		31.608271, 40.124630, 28.472708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905270, 41.475822, 28.768919>,  <31.475779, 40.764713, 28.723186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905270, 41.475822, 28.768919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629097, 41.675133, 28.978689>,  <31.463394, 41.794720, 29.104551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629097, 41.675133, 28.978689>,  <31.905270, 41.475822, 28.768919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629097, 41.675133, 28.978689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360724, -0.865531, 0.347467,
		0.627044, 0.050728, 0.777330,
		-0.690430, 0.498279, 0.524427,
		31.421968, 41.824615, 29.136017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984926, 41.309280, 29.543203>,  <31.905270, 41.475822, 28.768919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984926, 41.309280, 29.543203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610819, 41.407841, 29.441572>,  <31.386354, 41.466976, 29.380592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610819, 41.407841, 29.441572>,  <31.984926, 41.309280, 29.543203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610819, 41.407841, 29.441572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352242, -0.718150, 0.600155,
		-0.034587, 0.650804, 0.758457,
		-0.935270, 0.246403, -0.254079,
		31.330238, 41.481762, 29.365349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644985, 41.411392, 30.186211>,  <31.984926, 41.309280, 29.543203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644985, 41.411392, 30.186211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364374, 41.361637, 29.905531>,  <31.196007, 41.331783, 29.737123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364374, 41.361637, 29.905531>,  <31.644985, 41.411392, 30.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364374, 41.361637, 29.905531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457089, -0.676889, 0.576967,
		-0.546740, 0.725499, 0.418002,
		-0.701530, -0.124386, -0.701701,
		31.153915, 41.324322, 29.695021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882591, 41.369999, 30.614748>,  <31.644985, 41.411392, 30.186211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882591, 41.369999, 30.614748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801107, 41.219368, 30.253263>,  <30.752216, 41.128990, 30.036373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801107, 41.219368, 30.253263>,  <30.882591, 41.369999, 30.614748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801107, 41.219368, 30.253263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515554, -0.743451, 0.426009,
		-0.832290, 0.552693, -0.042698,
		-0.203709, -0.376576, -0.903710,
		30.739994, 41.106396, 29.982151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191843, 41.287109, 30.641342>,  <30.882591, 41.369999, 30.614748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191843, 41.287109, 30.641342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323935, 41.033932, 30.361248>,  <30.403189, 40.882027, 30.193192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323935, 41.033932, 30.361248>,  <30.191843, 41.287109, 30.641342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323935, 41.033932, 30.361248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393374, -0.766645, 0.507458,
		-0.858025, 0.107878, -0.502151,
		0.330227, -0.632944, -0.700237,
		30.423002, 40.844048, 30.151176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633286, 40.817429, 30.586752>,  <30.191843, 41.287109, 30.641342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633286, 40.817429, 30.586752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935637, 40.621532, 30.412947>,  <30.117046, 40.503994, 30.308664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935637, 40.621532, 30.412947>,  <29.633286, 40.817429, 30.586752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935637, 40.621532, 30.412947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309632, -0.852160, 0.421843,
		-0.576869, -0.184323, -0.795768,
		0.755877, -0.489744, -0.434512,
		30.162399, 40.474609, 30.282593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360918, 40.195133, 30.241472>,  <29.633286, 40.817429, 30.586752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360918, 40.195133, 30.241472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749435, 40.134483, 30.314795>,  <29.982546, 40.098095, 30.358788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749435, 40.134483, 30.314795>,  <29.360918, 40.195133, 30.241472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749435, 40.134483, 30.314795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228697, -0.807269, 0.544072,
		0.065482, -0.570374, -0.818771,
		0.971293, -0.151624, 0.183304,
		30.040823, 40.088997, 30.369785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599638, 39.450626, 29.935913>,  <29.360918, 40.195133, 30.241472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599638, 39.450626, 29.935913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829889, 39.572094, 30.239607>,  <29.968040, 39.644974, 30.421824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829889, 39.572094, 30.239607>,  <29.599638, 39.450626, 29.935913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829889, 39.572094, 30.239607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085535, -0.901032, 0.425235,
		0.813226, -0.309718, -0.492684,
		0.575627, 0.303670, 0.759235,
		30.002577, 39.663197, 30.467377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999533, 38.887886, 30.072918>,  <29.599638, 39.450626, 29.935913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999533, 38.887886, 30.072918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098045, 39.098213, 30.398584>,  <30.157152, 39.224407, 30.593985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098045, 39.098213, 30.398584>,  <29.999533, 38.887886, 30.072918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098045, 39.098213, 30.398584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064956, -0.847106, 0.527438,
		0.967019, -0.077013, -0.242781,
		0.246281, 0.525813, 0.814166,
		30.171930, 39.255959, 30.642834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553637, 38.459965, 30.405270>,  <29.999533, 38.887886, 30.072918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553637, 38.459965, 30.405270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382008, 38.694752, 30.679895>,  <30.279030, 38.835625, 30.844671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382008, 38.694752, 30.679895>,  <30.553637, 38.459965, 30.405270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382008, 38.694752, 30.679895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050951, -0.774603, 0.630392,
		0.901832, 0.235502, 0.362267,
		-0.429072, 0.586966, 0.686562,
		30.253286, 38.870842, 30.885864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663691, 38.259693, 31.121786>,  <30.553637, 38.459965, 30.405270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663691, 38.259693, 31.121786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367193, 38.509853, 31.219301>,  <30.189295, 38.659950, 31.277811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367193, 38.509853, 31.219301>,  <30.663691, 38.259693, 31.121786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367193, 38.509853, 31.219301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137082, -0.496579, 0.857098,
		0.657092, 0.601898, 0.453817,
		-0.741241, 0.625403, 0.243789,
		30.144821, 38.697475, 31.292439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780857, 38.348495, 31.784176>,  <30.663691, 38.259693, 31.121786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780857, 38.348495, 31.784176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396069, 38.455612, 31.762629>,  <30.165195, 38.519882, 31.749701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396069, 38.455612, 31.762629>,  <30.780857, 38.348495, 31.784176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396069, 38.455612, 31.762629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185078, -0.493953, 0.849563,
		0.200896, 0.827224, 0.524730,
		-0.961970, 0.267790, -0.053867,
		30.107477, 38.535950, 31.746468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494455, 38.555309, 32.447868>,  <30.780857, 38.348495, 31.784176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494455, 38.555309, 32.447868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163698, 38.459660, 32.244274>,  <29.965244, 38.402267, 32.122116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163698, 38.459660, 32.244274>,  <30.494455, 38.555309, 32.447868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163698, 38.459660, 32.244274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308100, -0.564526, 0.765757,
		-0.470449, 0.790018, 0.393128,
		-0.826893, -0.239127, -0.508986,
		29.915630, 38.387920, 32.091579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080864, 38.629353, 33.018303>,  <30.494455, 38.555309, 32.447868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080864, 38.629353, 33.018303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884483, 38.429188, 32.733051>,  <29.766655, 38.309090, 32.561901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884483, 38.429188, 32.733051>,  <30.080864, 38.629353, 33.018303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884483, 38.429188, 32.733051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333325, -0.648390, 0.684460,
		-0.804899, 0.573740, 0.151527,
		-0.490950, -0.500414, -0.713130,
		29.737198, 38.279064, 32.519112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439579, 38.558697, 33.277390>,  <30.080864, 38.629353, 33.018303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439579, 38.558697, 33.277390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488409, 38.278545, 32.996090>,  <29.517708, 38.110455, 32.827309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488409, 38.278545, 32.996090>,  <29.439579, 38.558697, 33.277390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488409, 38.278545, 32.996090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448535, -0.671001, 0.590401,
		-0.885389, 0.243360, -0.396059,
		0.122076, -0.700381, -0.703252,
		29.525032, 38.068432, 32.785114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875450, 38.127327, 33.445515>,  <29.439579, 38.558697, 33.277390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875450, 38.127327, 33.445515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076685, 37.898598, 33.186310>,  <29.197426, 37.761360, 33.030788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076685, 37.898598, 33.186310>,  <28.875450, 38.127327, 33.445515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076685, 37.898598, 33.186310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472635, -0.809788, 0.347648,
		-0.723546, 0.131376, -0.677659,
		0.503088, -0.571824, -0.648012,
		29.227612, 37.727051, 32.991905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390402, 37.775127, 33.085838>,  <28.875450, 38.127327, 33.445515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390402, 37.775127, 33.085838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730808, 37.571896, 33.032734>,  <28.935051, 37.449955, 33.000870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730808, 37.571896, 33.032734>,  <28.390402, 37.775127, 33.085838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730808, 37.571896, 33.032734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437206, -0.825543, 0.356832,
		-0.290902, -0.245623, -0.924686,
		0.851015, -0.508082, -0.132764,
		28.986113, 37.419472, 32.992905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182585, 37.184368, 32.887573>,  <28.390402, 37.775127, 33.085838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182585, 37.184368, 32.887573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547300, 37.109459, 33.033764>,  <28.766129, 37.064514, 33.121479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547300, 37.109459, 33.033764>,  <28.182585, 37.184368, 32.887573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547300, 37.109459, 33.033764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361079, -0.789530, 0.496250,
		0.195618, -0.584440, -0.787505,
		0.911787, -0.187276, 0.365475,
		28.820837, 37.053276, 33.143406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275560, 36.505032, 32.694008>,  <28.182585, 37.184368, 32.887573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275560, 36.505032, 32.694008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516560, 36.584930, 33.003094>,  <28.661160, 36.632870, 33.188545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516560, 36.584930, 33.003094>,  <28.275560, 36.505032, 32.694008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516560, 36.584930, 33.003094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240892, -0.877509, 0.414666,
		0.760898, -0.435978, -0.480581,
		0.602500, 0.199751, 0.772718,
		28.697309, 36.644855, 33.234909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633049, 35.894432, 32.791748>,  <28.275560, 36.505032, 32.694008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633049, 35.894432, 32.791748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649107, 36.090752, 33.139885>,  <28.658741, 36.208546, 33.348766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649107, 36.090752, 33.139885>,  <28.633049, 35.894432, 32.791748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649107, 36.090752, 33.139885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239910, -0.840833, 0.485225,
		0.969965, -0.228284, 0.083993,
		0.040145, 0.490802, 0.870346,
		28.661150, 36.237991, 33.400990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804720, 35.402870, 33.188396>,  <28.633049, 35.894432, 32.791748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804720, 35.402870, 33.188396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698734, 35.668388, 33.468159>,  <28.635143, 35.827702, 33.636017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698734, 35.668388, 33.468159>,  <28.804720, 35.402870, 33.188396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698734, 35.668388, 33.468159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389033, -0.737265, 0.552353,
		0.882297, -0.125737, 0.453589,
		-0.264964, 0.663800, 0.699402,
		28.619246, 35.867527, 33.677979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984694, 35.067310, 33.824623>,  <28.804720, 35.402870, 33.188396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984694, 35.067310, 33.824623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716070, 35.350986, 33.910465>,  <28.554895, 35.521194, 33.961971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716070, 35.350986, 33.910465>,  <28.984694, 35.067310, 33.824623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716070, 35.350986, 33.910465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467889, -0.630474, 0.619340,
		0.574532, 0.315514, 0.755224,
		-0.671560, 0.709192, 0.214602,
		28.514603, 35.563744, 33.974846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935957, 35.234634, 34.643208>,  <28.984694, 35.067310, 33.824623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935957, 35.234634, 34.643208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590597, 35.260246, 34.443031>,  <28.383381, 35.275616, 34.322926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590597, 35.260246, 34.443031>,  <28.935957, 35.234634, 34.643208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590597, 35.260246, 34.443031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408335, -0.671270, 0.618594,
		-0.296323, 0.738442, 0.605720,
		-0.863397, 0.064034, -0.500444,
		28.331577, 35.279457, 34.292896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494484, 35.311062, 35.119705>,  <28.935957, 35.234634, 34.643208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494484, 35.311062, 35.119705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710335, 35.601856, 34.949860>,  <29.839846, 35.776333, 34.847954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710335, 35.601856, 34.949860>,  <29.494484, 35.311062, 35.119705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710335, 35.601856, 34.949860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786672, -0.255729, 0.561917,
		0.299918, -0.637258, -0.709895,
		0.539627, 0.726984, -0.424615,
		29.872223, 35.819950, 34.822475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109678, 35.007694, 34.714085>,  <29.494484, 35.311062, 35.119705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109678, 35.007694, 34.714085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190590, 35.386425, 34.814171>,  <30.239138, 35.613663, 34.874222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190590, 35.386425, 34.814171>,  <30.109678, 35.007694, 34.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190590, 35.386425, 34.814171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868900, -0.291378, 0.400139,
		0.451769, 0.136475, -0.881635,
		0.202280, 0.946823, 0.250218,
		30.251274, 35.670471, 34.889236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762079, 35.171215, 34.438038>,  <30.109678, 35.007694, 34.714085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762079, 35.171215, 34.438038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659267, 35.395405, 34.752949>,  <30.597580, 35.529919, 34.941895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659267, 35.395405, 34.752949>,  <30.762079, 35.171215, 34.438038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659267, 35.395405, 34.752949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879885, -0.201188, 0.430494,
		0.399671, 0.803365, -0.441439,
		-0.257031, 0.560471, 0.787278,
		30.582159, 35.563545, 34.989132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369389, 35.484406, 34.586849>,  <30.762079, 35.171215, 34.438038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369389, 35.484406, 34.586849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147543, 35.512959, 34.918465>,  <31.014435, 35.530090, 35.117435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147543, 35.512959, 34.918465>,  <31.369389, 35.484406, 34.586849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147543, 35.512959, 34.918465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804849, -0.206899, 0.556247,
		0.211233, 0.975755, 0.057299,
		-0.554616, 0.071381, 0.829039,
		30.981159, 35.534374, 35.167175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729740, 35.863247, 35.181702>,  <31.369389, 35.484406, 34.586849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729740, 35.863247, 35.181702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450434, 35.625896, 35.341862>,  <31.282848, 35.483486, 35.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450434, 35.625896, 35.341862>,  <31.729740, 35.863247, 35.181702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450434, 35.625896, 35.341862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685080, -0.391755, 0.614161,
		-0.207572, 0.703155, 0.680063,
		-0.698268, -0.593381, 0.400401,
		31.240953, 35.447884, 35.461983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443455, 35.623810, 35.472771>,  <31.729740, 35.863247, 35.181702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443455, 35.623810, 35.472771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382866, 35.412216, 35.806774>,  <32.346512, 35.285259, 36.007175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382866, 35.412216, 35.806774>,  <32.443455, 35.623810, 35.472771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382866, 35.412216, 35.806774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115262, 0.848442, 0.516586,
		-0.981719, -0.017998, -0.189484,
		-0.151468, -0.528983, 0.835006,
		32.337425, 35.253521, 36.057278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779352, 35.835918, 35.896042>,  <32.443455, 35.623810, 35.472771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779352, 35.835918, 35.896042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064831, 35.687698, 36.133808>,  <32.236118, 35.598766, 36.276466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064831, 35.687698, 36.133808>,  <31.779352, 35.835918, 35.896042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064831, 35.687698, 36.133808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012965, 0.855458, 0.517710,
		-0.700333, -0.361782, 0.615343,
		0.713698, -0.370547, 0.594415,
		32.278942, 35.576534, 36.312134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529173, 35.898998, 36.712723>,  <31.779352, 35.835918, 35.896042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529173, 35.898998, 36.712723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924965, 35.845074, 36.691727>,  <32.162441, 35.812717, 36.679131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924965, 35.845074, 36.691727>,  <31.529173, 35.898998, 36.712723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924965, 35.845074, 36.691727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134623, 0.725144, 0.675309,
		-0.052980, -0.675271, 0.735665,
		0.989479, -0.134816, -0.052489,
		32.221809, 35.804630, 36.675980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710760, 36.120644, 37.370354>,  <31.529173, 35.898998, 36.712723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710760, 36.120644, 37.370354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047600, 36.117973, 37.154640>,  <32.249702, 36.116371, 37.025211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047600, 36.117973, 37.154640>,  <31.710760, 36.120644, 37.370354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047600, 36.117973, 37.154640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391177, 0.695930, 0.602214,
		0.371278, -0.718078, 0.588656,
		0.842100, -0.006680, -0.539280,
		32.300228, 36.115971, 36.992855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232204, 36.058525, 37.838329>,  <31.710760, 36.120644, 37.370354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232204, 36.058525, 37.838329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414604, 36.196857, 37.510315>,  <32.524044, 36.279858, 37.313507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414604, 36.196857, 37.510315>,  <32.232204, 36.058525, 37.838329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414604, 36.196857, 37.510315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455133, 0.701193, 0.548800,
		0.764800, -0.623479, 0.162342,
		0.455999, 0.345835, -0.820038,
		32.551403, 36.300610, 37.264305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920830, 36.147373, 37.991722>,  <32.232204, 36.058525, 37.838329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920830, 36.147373, 37.991722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896126, 36.395817, 37.679207>,  <32.881302, 36.544884, 37.491699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896126, 36.395817, 37.679207>,  <32.920830, 36.147373, 37.991722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896126, 36.395817, 37.679207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355670, 0.745091, 0.564214,
		0.932569, -0.243033, -0.266928,
		-0.061763, 0.621107, -0.781289,
		32.877598, 36.582150, 37.444820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436543, 36.520622, 38.020039>,  <32.920830, 36.147373, 37.991722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436543, 36.520622, 38.020039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208218, 36.761631, 37.796921>,  <33.071224, 36.906239, 37.663048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208218, 36.761631, 37.796921>,  <33.436543, 36.520622, 38.020039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208218, 36.761631, 37.796921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207013, 0.763007, 0.612344,
		0.794556, 0.234062, -0.560265,
		-0.570812, 0.602524, -0.557798,
		33.036972, 36.942387, 37.629581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893574, 37.034443, 37.935524>,  <33.436543, 36.520622, 38.020039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893574, 37.034443, 37.935524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551991, 37.216530, 37.834698>,  <33.347042, 37.325783, 37.774200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551991, 37.216530, 37.834698>,  <33.893574, 37.034443, 37.935524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551991, 37.216530, 37.834698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227028, 0.761835, 0.606684,
		0.468204, 0.460856, -0.753921,
		-0.853958, 0.455213, -0.252067,
		33.295803, 37.353092, 37.759079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052982, 37.807026, 37.759232>,  <33.893574, 37.034443, 37.935524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052982, 37.807026, 37.759232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669838, 37.752060, 37.860119>,  <33.439953, 37.719078, 37.920650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669838, 37.752060, 37.860119>,  <34.052982, 37.807026, 37.759232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669838, 37.752060, 37.860119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012783, 0.856860, 0.515391,
		-0.286944, 0.496897, -0.818997,
		-0.957862, -0.137419, 0.252222,
		33.382481, 37.710835, 37.935787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869854, 38.474464, 37.706966>,  <34.052982, 37.807026, 37.759232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869854, 38.474464, 37.706966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586910, 38.293980, 37.924610>,  <33.417145, 38.185688, 38.055195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586910, 38.293980, 37.924610>,  <33.869854, 38.474464, 37.706966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586910, 38.293980, 37.924610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073096, 0.718939, 0.691219,
		-0.703066, 0.528711, -0.475566,
		-0.707358, -0.451211, 0.544108,
		33.374702, 38.158615, 38.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482906, 39.086174, 38.051437>,  <33.869854, 38.474464, 37.706966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482906, 39.086174, 38.051437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374084, 38.764874, 38.263390>,  <33.308792, 38.572094, 38.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374084, 38.764874, 38.263390>,  <33.482906, 39.086174, 38.051437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374084, 38.764874, 38.263390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099405, 0.571166, 0.814793,
		-0.957134, 0.168994, -0.235235,
		-0.272053, -0.803249, 0.529884,
		33.292469, 38.523899, 38.422356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841793, 39.249134, 38.523720>,  <33.482906, 39.086174, 38.051437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841793, 39.249134, 38.523720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046993, 38.938084, 38.669113>,  <33.170113, 38.751453, 38.756351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046993, 38.938084, 38.669113>,  <32.841793, 39.249134, 38.523720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046993, 38.938084, 38.669113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035565, 0.442344, 0.896140,
		-0.857652, -0.446792, 0.254578,
		0.512999, -0.777630, 0.363487,
		33.200893, 38.704796, 38.778160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457230, 39.045506, 39.180359>,  <32.841793, 39.249134, 38.523720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457230, 39.045506, 39.180359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827728, 38.896374, 39.202541>,  <33.050026, 38.806896, 39.215851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827728, 38.896374, 39.202541>,  <32.457230, 39.045506, 39.180359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827728, 38.896374, 39.202541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042687, 0.249926, 0.967323,
		-0.374502, -0.893610, 0.247407,
		0.926243, -0.372825, 0.055453,
		33.105602, 38.784527, 39.219177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428085, 38.576176, 39.727997>,  <32.457230, 39.045506, 39.180359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428085, 38.576176, 39.727997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801991, 38.700798, 39.659695>,  <33.026333, 38.775570, 39.618713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801991, 38.700798, 39.659695>,  <32.428085, 38.576176, 39.727997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801991, 38.700798, 39.659695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114981, 0.189478, 0.975129,
		0.336160, -0.931146, 0.141294,
		0.934760, 0.311553, -0.170759,
		33.082420, 38.794262, 39.608467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747459, 38.499893, 40.421040>,  <32.428085, 38.576176, 39.727997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747459, 38.499893, 40.421040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990528, 38.753105, 40.229206>,  <33.136372, 38.905033, 40.114105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990528, 38.753105, 40.229206>,  <32.747459, 38.499893, 40.421040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990528, 38.753105, 40.229206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225332, 0.441627, 0.868442,
		0.761549, -0.635797, 0.125724,
		0.607675, 0.633031, -0.479586,
		33.172832, 38.943016, 40.085331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471416, 38.379150, 40.649078>,  <32.747459, 38.499893, 40.421040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471416, 38.379150, 40.649078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491051, 38.758694, 40.524338>,  <33.502831, 38.986420, 40.449493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491051, 38.758694, 40.524338>,  <33.471416, 38.379150, 40.649078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491051, 38.758694, 40.524338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387549, 0.269669, 0.881524,
		0.920541, -0.164129, -0.354493,
		0.049088, 0.948863, -0.311849,
		33.505775, 39.043354, 40.430782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083420, 38.646706, 41.087776>,  <33.471416, 38.379150, 40.649078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083420, 38.646706, 41.087776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892689, 38.959038, 40.926315>,  <33.778252, 39.146439, 40.829437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892689, 38.959038, 40.926315>,  <34.083420, 38.646706, 41.087776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892689, 38.959038, 40.926315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212954, 0.548159, 0.808809,
		0.852813, 0.299700, -0.427657,
		-0.476824, 0.780834, -0.403655,
		33.749641, 39.193287, 40.805218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602184, 39.159145, 40.982292>,  <34.083420, 38.646706, 41.087776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602184, 39.159145, 40.982292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246010, 39.340370, 40.999538>,  <34.032307, 39.449104, 41.009884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246010, 39.340370, 40.999538>,  <34.602184, 39.159145, 40.982292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246010, 39.340370, 40.999538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275794, 0.461822, 0.843005,
		0.362021, 0.762533, -0.536175,
		-0.890437, 0.453059, 0.043113,
		33.978878, 39.476288, 41.012474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758007, 39.798950, 41.288326>,  <34.602184, 39.159145, 40.982292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758007, 39.798950, 41.288326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359425, 39.799675, 41.321972>,  <34.120277, 39.800110, 41.342159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359425, 39.799675, 41.321972>,  <34.758007, 39.798950, 41.288326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359425, 39.799675, 41.321972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073858, 0.497739, 0.864176,
		-0.040299, 0.867325, -0.496109,
		-0.996454, 0.001816, 0.084117,
		34.060490, 39.800220, 41.347206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466591, 40.468040, 41.425587>,  <34.758007, 39.798950, 41.288326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466591, 40.468040, 41.425587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177513, 40.233299, 41.571632>,  <34.004066, 40.092453, 41.659260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177513, 40.233299, 41.571632>,  <34.466591, 40.468040, 41.425587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177513, 40.233299, 41.571632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041358, 0.564027, 0.824720,
		-0.689925, 0.580923, -0.431892,
		-0.722698, -0.586858, 0.365111,
		33.960705, 40.057243, 41.681164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966896, 40.897079, 41.590286>,  <34.466591, 40.468040, 41.425587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966896, 40.897079, 41.590286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906319, 40.577957, 41.823719>,  <33.869972, 40.386482, 41.963779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906319, 40.577957, 41.823719>,  <33.966896, 40.897079, 41.590286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906319, 40.577957, 41.823719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187908, 0.556390, 0.809396,
		-0.970442, 0.232234, 0.065656,
		-0.151439, -0.797808, 0.583582,
		33.860886, 40.338615, 41.998795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619839, 41.162766, 42.163246>,  <33.966896, 40.897079, 41.590286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619839, 41.162766, 42.163246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774960, 40.809738, 42.269596>,  <33.868031, 40.597923, 42.333408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774960, 40.809738, 42.269596>,  <33.619839, 41.162766, 42.163246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774960, 40.809738, 42.269596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451549, 0.433369, 0.779933,
		-0.803564, -0.182401, 0.566581,
		0.387799, -0.882565, 0.265877,
		33.891300, 40.544968, 42.349358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529423, 41.158226, 42.799595>,  <33.619839, 41.162766, 42.163246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529423, 41.158226, 42.799595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779884, 40.846420, 42.792789>,  <33.930161, 40.659336, 42.788708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779884, 40.846420, 42.792789>,  <33.529423, 41.158226, 42.799595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779884, 40.846420, 42.792789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256958, 0.185712, 0.948411,
		-0.736138, -0.598226, 0.316587,
		0.626158, -0.779511, -0.017009,
		33.967731, 40.612568, 42.787685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361141, 40.801991, 43.351505>,  <33.529423, 41.158226, 42.799595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361141, 40.801991, 43.351505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730064, 40.684246, 43.251347>,  <33.951420, 40.613598, 43.191250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730064, 40.684246, 43.251347>,  <33.361141, 40.801991, 43.351505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730064, 40.684246, 43.251347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290658, 0.101355, 0.951443,
		-0.254691, -0.950304, 0.179040,
		0.922307, -0.294364, -0.250399,
		34.006756, 40.595936, 43.176228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625122, 40.259979, 43.820011>,  <33.361141, 40.801991, 43.351505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625122, 40.259979, 43.820011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965462, 40.394882, 43.658855>,  <34.169666, 40.475822, 43.562164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965462, 40.394882, 43.658855>,  <33.625122, 40.259979, 43.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965462, 40.394882, 43.658855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433329, -0.016795, 0.901079,
		0.297129, -0.941263, -0.160433,
		0.850847, 0.337257, -0.402886,
		34.220715, 40.496059, 43.537991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068779, 40.111855, 44.352383>,  <33.625122, 40.259979, 43.820011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068779, 40.111855, 44.352383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263939, 40.393959, 44.146645>,  <34.381035, 40.563221, 44.023201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263939, 40.393959, 44.146645>,  <34.068779, 40.111855, 44.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263939, 40.393959, 44.146645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464219, 0.289361, 0.837120,
		0.739223, -0.647203, -0.186218,
		0.487903, 0.705265, -0.514346,
		34.410309, 40.605537, 43.992340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722382, 40.125259, 44.618626>,  <34.068779, 40.111855, 44.352383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722382, 40.125259, 44.618626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707882, 40.483891, 44.442066>,  <34.699181, 40.699070, 44.336128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707882, 40.483891, 44.442066>,  <34.722382, 40.125259, 44.618626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707882, 40.483891, 44.442066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552831, 0.385944, 0.738529,
		0.832505, -0.217247, -0.509647,
		-0.036252, 0.896578, -0.441401,
		34.697006, 40.752865, 44.309647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475670, 40.410099, 44.503845>,  <34.722382, 40.125259, 44.618626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475670, 40.410099, 44.503845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229179, 40.725056, 44.497116>,  <35.081287, 40.914028, 44.493080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229179, 40.725056, 44.497116>,  <35.475670, 40.410099, 44.503845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229179, 40.725056, 44.497116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478076, 0.390951, 0.786512,
		0.625868, 0.476627, -0.617346,
		-0.616224, 0.787391, -0.016820,
		35.044312, 40.961273, 44.492069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850491, 40.933094, 44.374172>,  <35.475670, 40.410099, 44.503845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850491, 40.933094, 44.374172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540375, 41.100590, 44.563309>,  <35.354305, 41.201088, 44.676792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540375, 41.100590, 44.563309>,  <35.850491, 40.933094, 44.374172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540375, 41.100590, 44.563309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631597, 0.510962, 0.583097,
		0.002558, 0.750718, -0.660618,
		-0.775292, 0.418736, 0.472844,
		35.307789, 41.226212, 44.705162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031300, 41.635658, 44.581196>,  <35.850491, 40.933094, 44.374172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031300, 41.635658, 44.581196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694374, 41.606686, 44.794834>,  <35.492218, 41.589302, 44.923016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694374, 41.606686, 44.794834>,  <36.031300, 41.635658, 44.581196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694374, 41.606686, 44.794834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418253, 0.537165, 0.732474,
		-0.339948, 0.840362, -0.422171,
		-0.842318, -0.072429, 0.534092,
		35.441677, 41.584957, 44.955063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807365, 42.278236, 44.835430>,  <36.031300, 41.635658, 44.581196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807365, 42.278236, 44.835430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671505, 41.991272, 45.078728>,  <35.589989, 41.819096, 45.224709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671505, 41.991272, 45.078728>,  <35.807365, 42.278236, 44.835430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671505, 41.991272, 45.078728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371866, 0.491571, 0.787448,
		-0.863917, 0.493643, 0.099817,
		-0.339651, -0.717408, 0.608245,
		35.569611, 41.776051, 45.261200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753300, 42.731983, 45.376541>,  <35.807365, 42.278236, 44.835430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753300, 42.731983, 45.376541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697388, 42.356823, 45.503544>,  <35.663841, 42.131729, 45.579746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697388, 42.356823, 45.503544>,  <35.753300, 42.731983, 45.376541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697388, 42.356823, 45.503544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223074, 0.282584, 0.932944,
		-0.964728, 0.201231, 0.169722,
		-0.139777, -0.937898, 0.317506,
		35.655457, 42.075455, 45.598797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223331, 42.811039, 45.982525>,  <35.753300, 42.731983, 45.376541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223331, 42.811039, 45.982525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429737, 42.477734, 46.061924>,  <35.553581, 42.277752, 46.109562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429737, 42.477734, 46.061924>,  <35.223331, 42.811039, 45.982525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429737, 42.477734, 46.061924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110001, 0.294275, 0.949369,
		-0.849487, -0.468054, 0.243510,
		0.516015, -0.833263, 0.198496,
		35.584541, 42.227757, 46.121471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094257, 42.751118, 46.751072>,  <35.223331, 42.811039, 45.982525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094257, 42.751118, 46.751072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414845, 42.540295, 46.638031>,  <35.607197, 42.413803, 46.570206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414845, 42.540295, 46.638031>,  <35.094257, 42.751118, 46.751072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414845, 42.540295, 46.638031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457136, 0.235246, 0.857722,
		-0.385587, -0.816622, 0.429478,
		0.801468, -0.527056, -0.282599,
		35.655285, 42.382179, 46.553249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178890, 42.306393, 47.293530>,  <35.094257, 42.751118, 46.751072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178890, 42.306393, 47.293530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527039, 42.325741, 47.097523>,  <35.735928, 42.337349, 46.979919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527039, 42.325741, 47.097523>,  <35.178890, 42.306393, 47.293530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527039, 42.325741, 47.097523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487587, 0.054064, 0.871399,
		0.068651, -0.997365, 0.023467,
		0.870371, 0.048380, -0.490013,
		35.788151, 42.340252, 46.950520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602486, 41.810215, 47.467731>,  <35.178890, 42.306393, 47.293530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602486, 41.810215, 47.467731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849602, 42.100895, 47.347572>,  <35.997871, 42.275303, 47.275475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849602, 42.100895, 47.347572>,  <35.602486, 41.810215, 47.467731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849602, 42.100895, 47.347572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383479, 0.055091, 0.921905,
		0.686502, -0.684738, -0.244642,
		0.617786, 0.726705, -0.300402,
		36.034939, 42.318905, 47.257450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236118, 41.714752, 47.794647>,  <35.602486, 41.810215, 47.467731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236118, 41.714752, 47.794647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317692, 42.071964, 47.634197>,  <36.366638, 42.286293, 47.537926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317692, 42.071964, 47.634197>,  <36.236118, 41.714752, 47.794647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317692, 42.071964, 47.634197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566211, 0.226661, 0.792484,
		0.798634, -0.388738, -0.459420,
		0.203936, 0.893033, -0.401127,
		36.378872, 42.339874, 47.513859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892075, 41.776237, 47.862343>,  <36.236118, 41.714752, 47.794647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892075, 41.776237, 47.862343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773731, 42.156845, 47.828693>,  <36.702724, 42.385212, 47.808506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773731, 42.156845, 47.828693>,  <36.892075, 41.776237, 47.862343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773731, 42.156845, 47.828693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656748, 0.266565, 0.705426,
		0.693651, 0.153459, -0.703774,
		-0.295855, 0.951522, -0.084119,
		36.684975, 42.442303, 47.803459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438877, 42.205463, 47.972675>,  <36.892075, 41.776237, 47.862343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438877, 42.205463, 47.972675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125172, 42.440258, 48.053040>,  <36.936947, 42.581135, 48.101257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125172, 42.440258, 48.053040>,  <37.438877, 42.205463, 47.972675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125172, 42.440258, 48.053040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407151, 0.242593, 0.880555,
		0.468137, 0.772393, -0.429252,
		-0.784268, 0.586990, 0.200914,
		36.889893, 42.616356, 48.113312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741573, 42.593788, 48.369713>,  <37.438877, 42.205463, 47.972675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741573, 42.593788, 48.369713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358921, 42.668713, 48.458958>,  <37.129330, 42.713665, 48.512505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358921, 42.668713, 48.458958>,  <37.741573, 42.593788, 48.369713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358921, 42.668713, 48.458958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259229, 0.197944, 0.945314,
		0.132900, 0.962151, -0.237915,
		-0.956628, 0.187307, 0.223111,
		37.071934, 42.724903, 48.525890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727451, 43.281799, 48.736645>,  <37.741573, 42.593788, 48.369713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727451, 43.281799, 48.736645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436005, 43.024292, 48.830185>,  <37.261139, 42.869789, 48.886311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436005, 43.024292, 48.830185>,  <37.727451, 43.281799, 48.736645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436005, 43.024292, 48.830185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304411, 0.001481, 0.952540,
		-0.613561, 0.765220, 0.194891,
		-0.728613, -0.643768, 0.233850,
		37.217422, 42.831161, 48.900341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572071, 43.603352, 49.319469>,  <37.727451, 43.281799, 48.736645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572071, 43.603352, 49.319469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432739, 43.228416, 49.316257>,  <37.349140, 43.003456, 49.314331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432739, 43.228416, 49.316257>,  <37.572071, 43.603352, 49.319469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432739, 43.228416, 49.316257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204483, -0.084347, 0.975230,
		-0.914798, 0.338054, 0.221050,
		-0.348326, -0.937339, -0.008034,
		37.328243, 42.947216, 49.313847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267830, 43.612125, 49.908630>,  <37.572071, 43.603352, 49.319469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267830, 43.612125, 49.908630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327541, 43.231735, 49.800293>,  <37.363369, 43.003502, 49.735291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327541, 43.231735, 49.800293>,  <37.267830, 43.612125, 49.908630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327541, 43.231735, 49.800293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306593, -0.215894, 0.927033,
		-0.940062, -0.221421, 0.259336,
		0.149275, -0.950980, -0.270840,
		37.372326, 42.946442, 49.719040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410805, 43.214619, 50.548504>,  <37.267830, 43.612125, 49.908630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410805, 43.214619, 50.548504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750725, 43.414597, 50.615318>,  <37.954678, 43.534584, 50.655407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750725, 43.414597, 50.615318>,  <37.410805, 43.214619, 50.548504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750725, 43.414597, 50.615318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513003, -0.857253, -0.044106,
		0.121138, 0.123169, -0.984965,
		0.849796, 0.499947, 0.167032,
		38.005665, 43.564579, 50.665428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910160, 42.760876, 50.260361>,  <37.410805, 43.214619, 50.548504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910160, 42.760876, 50.260361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123447, 43.000221, 50.499573>,  <38.251419, 43.143829, 50.643101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123447, 43.000221, 50.499573>,  <37.910160, 42.760876, 50.260361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123447, 43.000221, 50.499573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779822, -0.621699, -0.073267,
		0.327957, 0.505426, -0.798116,
		0.533219, 0.598360, 0.598033,
		38.283413, 43.179729, 50.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494389, 43.138458, 49.865490>,  <37.910160, 42.760876, 50.260361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494389, 43.138458, 49.865490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571720, 43.107552, 50.256725>,  <38.618118, 43.089008, 50.491467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571720, 43.107552, 50.256725>,  <38.494389, 43.138458, 49.865490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571720, 43.107552, 50.256725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730074, -0.654649, -0.196028,
		0.655450, 0.751973, -0.070151,
		0.193332, -0.077271, 0.978086,
		38.629719, 43.084370, 50.550152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200386, 43.339520, 49.921215>,  <38.494389, 43.138458, 49.865490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200386, 43.339520, 49.921215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040184, 43.068253, 50.167690>,  <38.944061, 42.905491, 50.315575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040184, 43.068253, 50.167690>,  <39.200386, 43.339520, 49.921215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040184, 43.068253, 50.167690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623435, -0.694508, -0.359148,
		0.671509, 0.240312, 0.700947,
		-0.400505, -0.678166, 0.616187,
		38.920033, 42.864803, 50.352547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638832, 42.823849, 50.279144>,  <39.200386, 43.339520, 49.921215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638832, 42.823849, 50.279144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274776, 42.658131, 50.277729>,  <39.056343, 42.558701, 50.276878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274776, 42.658131, 50.277729>,  <39.638832, 42.823849, 50.279144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274776, 42.658131, 50.277729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385452, -0.843579, -0.373900,
		0.151916, -0.341666, 0.927462,
		-0.910136, -0.414294, -0.003542,
		39.001736, 42.533844, 50.276665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484680, 42.222488, 50.808571>,  <39.638832, 42.823849, 50.279144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484680, 42.222488, 50.808571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301788, 42.178547, 50.455555>,  <39.192055, 42.152184, 50.243744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301788, 42.178547, 50.455555>,  <39.484680, 42.222488, 50.808571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301788, 42.178547, 50.455555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423333, -0.899592, -0.107346,
		-0.782135, -0.422689, 0.457820,
		-0.457225, -0.109851, -0.882540,
		39.164619, 42.145592, 50.190792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063759, 41.570316, 50.811638>,  <39.484680, 42.222488, 50.808571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063759, 41.570316, 50.811638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192459, 41.650703, 50.441536>,  <39.269680, 41.698936, 50.219475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192459, 41.650703, 50.441536>,  <39.063759, 41.570316, 50.811638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192459, 41.650703, 50.441536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381695, -0.921821, -0.067491,
		-0.866479, -0.331448, -0.373304,
		0.321750, 0.200968, -0.925251,
		39.288982, 41.710995, 50.163960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914001, 41.006256, 50.414062>,  <39.063759, 41.570316, 50.811638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914001, 41.006256, 50.414062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256447, 41.158035, 50.273727>,  <39.461914, 41.249104, 50.189526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256447, 41.158035, 50.273727>,  <38.914001, 41.006256, 50.414062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256447, 41.158035, 50.273727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364043, -0.924656, -0.111730,
		-0.366801, -0.032067, -0.929747,
		0.856113, 0.379451, -0.350839,
		39.513279, 41.271870, 50.168476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271381, 40.729546, 50.447151>,  <38.914001, 41.006256, 50.414062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271381, 40.729546, 50.447151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923393, 40.917099, 50.386082>,  <37.714600, 41.029629, 50.349442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923393, 40.917099, 50.386082>,  <38.271381, 40.729546, 50.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923393, 40.917099, 50.386082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084156, -0.446246, -0.890944,
		-0.485880, -0.762242, 0.427678,
		-0.869965, 0.468884, -0.152674,
		37.662403, 41.057762, 50.340279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610195, 40.254509, 50.330906>,  <38.271381, 40.729546, 50.447151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610195, 40.254509, 50.330906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542908, 40.598171, 50.137596>,  <37.502533, 40.804367, 50.021610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542908, 40.598171, 50.137596>,  <37.610195, 40.254509, 50.330906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542908, 40.598171, 50.137596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163961, -0.507819, -0.845717,
		-0.972018, -0.063029, 0.226293,
		-0.168221, 0.859155, -0.483275,
		37.492443, 40.855919, 49.992615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986294, 40.214630, 49.990273>,  <37.610195, 40.254509, 50.330906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986294, 40.214630, 49.990273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168968, 40.507275, 49.787815>,  <37.278572, 40.682861, 49.666340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168968, 40.507275, 49.787815>,  <36.986294, 40.214630, 49.990273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168968, 40.507275, 49.787815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307573, -0.404008, -0.861496,
		-0.834768, 0.549108, 0.040520,
		0.456685, 0.731613, -0.506144,
		37.305973, 40.726757, 49.635971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532890, 40.350941, 49.389957>,  <36.986294, 40.214630, 49.990273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532890, 40.350941, 49.389957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892319, 40.494930, 49.289562>,  <37.107975, 40.581322, 49.229324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892319, 40.494930, 49.289562>,  <36.532890, 40.350941, 49.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892319, 40.494930, 49.289562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077990, -0.431850, -0.898567,
		-0.431850, 0.826998, -0.359972,
		0.898567, 0.359972, -0.250992,
		37.161888, 40.602921, 49.214264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398335, 40.434216, 48.698090>,  <36.532890, 40.350941, 49.389957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398335, 40.434216, 48.698090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797085, 40.445717, 48.727509>,  <37.036335, 40.452618, 48.745159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797085, 40.445717, 48.727509>,  <36.398335, 40.434216, 48.698090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797085, 40.445717, 48.727509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078740, -0.432369, -0.898252,
		0.005974, 0.901239, -0.433283,
		0.996877, 0.028751, 0.073546,
		37.096149, 40.454342, 48.749573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761433, 40.851208, 48.125233>,  <36.398335, 40.434216, 48.698090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761433, 40.851208, 48.125233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029545, 40.588333, 48.263119>,  <37.190411, 40.430607, 48.345852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029545, 40.588333, 48.263119>,  <36.761433, 40.851208, 48.125233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029545, 40.588333, 48.263119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255860, -0.231379, -0.938616,
		0.696608, 0.717334, 0.013060,
		0.670279, -0.657188, 0.344717,
		37.230629, 40.391178, 48.366535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455967, 40.925934, 47.715775>,  <36.761433, 40.851208, 48.125233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455967, 40.925934, 47.715775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452461, 40.553692, 47.862148>,  <37.450359, 40.330349, 47.949970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452461, 40.553692, 47.862148>,  <37.455967, 40.925934, 47.715775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452461, 40.553692, 47.862148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175323, -0.361705, -0.915659,
		0.984472, 0.056133, 0.166325,
		-0.008762, -0.930601, 0.365930,
		37.449833, 40.274513, 47.971928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029350, 40.619526, 47.290737>,  <37.455967, 40.925934, 47.715775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029350, 40.619526, 47.290737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870026, 40.303123, 47.476490>,  <37.774429, 40.113281, 47.587940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870026, 40.303123, 47.476490>,  <38.029350, 40.619526, 47.290737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870026, 40.303123, 47.476490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256715, -0.582177, -0.771471,
		0.880592, -0.188076, 0.434955,
		-0.398316, -0.791010, 0.464379,
		37.750530, 40.065819, 47.615803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432365, 40.017635, 47.016083>,  <38.029350, 40.619526, 47.290737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432365, 40.017635, 47.016083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095974, 39.854763, 47.158607>,  <37.894138, 39.757038, 47.244122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095974, 39.854763, 47.158607>,  <38.432365, 40.017635, 47.016083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095974, 39.854763, 47.158607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031610, -0.620435, -0.783620,
		0.540147, -0.670269, 0.508901,
		-0.840977, -0.407184, 0.356313,
		37.843681, 39.732609, 47.265503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525177, 39.312298, 47.004826>,  <38.432365, 40.017635, 47.016083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525177, 39.312298, 47.004826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127769, 39.355728, 47.018322>,  <37.889324, 39.381786, 47.026421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127769, 39.355728, 47.018322>,  <38.525177, 39.312298, 47.004826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127769, 39.355728, 47.018322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101965, -0.719594, -0.686868,
		-0.050299, -0.685854, 0.725999,
		-0.993516, 0.108575, 0.033738,
		37.829716, 39.388302, 47.028442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215672, 38.577686, 47.029861>,  <38.525177, 39.312298, 47.004826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215672, 38.577686, 47.029861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934246, 38.836109, 46.911472>,  <37.765388, 38.991165, 46.840439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934246, 38.836109, 46.911472>,  <38.215672, 38.577686, 47.029861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934246, 38.836109, 46.911472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325574, -0.663264, -0.673857,
		-0.631660, -0.377742, 0.676991,
		-0.703567, 0.646059, -0.295974,
		37.723175, 39.029926, 46.822681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616497, 38.156498, 46.915791>,  <38.215672, 38.577686, 47.029861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616497, 38.156498, 46.915791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512325, 38.480427, 46.705509>,  <37.449821, 38.674786, 46.579338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512325, 38.480427, 46.705509>,  <37.616497, 38.156498, 46.915791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512325, 38.480427, 46.705509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056678, -0.556377, -0.828994,
		-0.963829, -0.186095, 0.190794,
		-0.260425, 0.809823, -0.525705,
		37.434196, 38.723373, 46.547798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004536, 38.003525, 46.574757>,  <37.616497, 38.156498, 46.915791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004536, 38.003525, 46.574757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145596, 38.301155, 46.347778>,  <37.230232, 38.479733, 46.211594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145596, 38.301155, 46.347778>,  <37.004536, 38.003525, 46.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145596, 38.301155, 46.347778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397017, -0.430144, -0.810773,
		-0.847358, 0.511204, 0.143720,
		0.352650, 0.744074, -0.567443,
		37.251392, 38.524376, 46.177544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489235, 38.102711, 46.132992>,  <37.004536, 38.003525, 46.574757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489235, 38.102711, 46.132992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810749, 38.273254, 45.967030>,  <37.003658, 38.375580, 45.867455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810749, 38.273254, 45.967030>,  <36.489235, 38.102711, 46.132992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810749, 38.273254, 45.967030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204464, -0.456952, -0.865672,
		-0.558676, 0.780650, -0.280119,
		0.803789, 0.426356, -0.414903,
		37.051888, 38.401161, 45.842560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134762, 38.443661, 45.665253>,  <36.489235, 38.102711, 46.132992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134762, 38.443661, 45.665253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514751, 38.417416, 45.543110>,  <36.742744, 38.401669, 45.469826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514751, 38.417416, 45.543110>,  <36.134762, 38.443661, 45.665253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514751, 38.417416, 45.543110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304704, -0.409360, -0.859989,
		-0.068576, 0.910011, -0.408873,
		0.949975, -0.065611, -0.305356,
		36.799744, 38.397732, 45.451504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190769, 38.782688, 45.056831>,  <36.134762, 38.443661, 45.665253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190769, 38.782688, 45.056831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492504, 38.520103, 45.054413>,  <36.673546, 38.362553, 45.052959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492504, 38.520103, 45.054413>,  <36.190769, 38.782688, 45.056831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492504, 38.520103, 45.054413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396751, -0.448527, -0.800882,
		0.523034, 0.606535, -0.598792,
		0.754337, -0.656459, -0.006048,
		36.718803, 38.323166, 45.052597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318665, 38.704304, 44.348755>,  <36.190769, 38.782688, 45.056831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318665, 38.704304, 44.348755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513210, 38.382343, 44.484745>,  <36.629936, 38.189167, 44.566338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513210, 38.382343, 44.484745>,  <36.318665, 38.704304, 44.348755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513210, 38.382343, 44.484745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430048, -0.559220, -0.708754,
		0.760600, 0.198504, -0.618129,
		0.486360, -0.804904, 0.339976,
		36.659119, 38.140873, 44.586739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642857, 38.306114, 43.776157>,  <36.318665, 38.704304, 44.348755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642857, 38.306114, 43.776157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602993, 38.044636, 44.076225>,  <36.579075, 37.887749, 44.256268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602993, 38.044636, 44.076225>,  <36.642857, 38.306114, 43.776157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602993, 38.044636, 44.076225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453126, -0.641394, -0.619104,
		0.885858, -0.401619, -0.232286,
		-0.099657, -0.653694, 0.750169,
		36.573097, 37.848526, 44.301277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043339, 37.749641, 43.637104>,  <36.642857, 38.306114, 43.776157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043339, 37.749641, 43.637104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761974, 37.618961, 43.889603>,  <36.593155, 37.540554, 44.041103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761974, 37.618961, 43.889603>,  <37.043339, 37.749641, 43.637104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761974, 37.618961, 43.889603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275446, -0.693418, -0.665809,
		0.655238, -0.642215, 0.397773,
		-0.703415, -0.326698, 0.631249,
		36.550949, 37.520950, 44.078976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208355, 37.049320, 43.742386>,  <37.043339, 37.749641, 43.637104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208355, 37.049320, 43.742386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825676, 37.103203, 43.845604>,  <36.596069, 37.135532, 43.907536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825676, 37.103203, 43.845604>,  <37.208355, 37.049320, 43.742386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825676, 37.103203, 43.845604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270088, -0.741393, -0.614320,
		0.108566, -0.657413, 0.745669,
		-0.956695, 0.134702, 0.258049,
		36.538666, 37.143612, 43.923019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914528, 36.451385, 43.570042>,  <37.208355, 37.049320, 43.742386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914528, 36.451385, 43.570042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579578, 36.655235, 43.649120>,  <36.378609, 36.777546, 43.696568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579578, 36.655235, 43.649120>,  <36.914528, 36.451385, 43.570042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579578, 36.655235, 43.649120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495829, -0.555892, -0.667186,
		-0.230114, -0.656711, 0.718177,
		-0.837377, 0.509622, 0.197697,
		36.328365, 36.808121, 43.708431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455799, 35.881680, 43.702339>,  <36.914528, 36.451385, 43.570042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455799, 35.881680, 43.702339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280827, 36.221436, 43.584232>,  <36.175842, 36.425289, 43.513367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280827, 36.221436, 43.584232>,  <36.455799, 35.881680, 43.702339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280827, 36.221436, 43.584232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434781, -0.487188, -0.757373,
		-0.787161, -0.202919, 0.582411,
		-0.437429, 0.849395, -0.295270,
		36.149597, 36.476254, 43.495651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891273, 35.524967, 43.412437>,  <36.455799, 35.881680, 43.702339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891273, 35.524967, 43.412437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922134, 35.896839, 43.268360>,  <35.940651, 36.119961, 43.181911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922134, 35.896839, 43.268360>,  <35.891273, 35.524967, 43.412437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922134, 35.896839, 43.268360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541518, -0.264269, -0.798073,
		-0.837142, 0.256623, 0.483051,
		0.077149, 0.929681, -0.360196,
		35.945278, 36.175743, 43.160301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222507, 35.681824, 43.267216>,  <35.891273, 35.524967, 43.412437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222507, 35.681824, 43.267216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441654, 35.925571, 43.037952>,  <35.573143, 36.071819, 42.900394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441654, 35.925571, 43.037952>,  <35.222507, 35.681824, 43.267216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441654, 35.925571, 43.037952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584022, -0.211941, -0.783580,
		-0.598967, 0.764034, 0.239771,
		0.547865, 0.609371, -0.573159,
		35.606014, 36.108383, 42.866005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740765, 36.043823, 42.791306>,  <35.222507, 35.681824, 43.267216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740765, 36.043823, 42.791306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076290, 36.068501, 42.574940>,  <35.277603, 36.083309, 42.445118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076290, 36.068501, 42.574940>,  <34.740765, 36.043823, 42.791306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076290, 36.068501, 42.574940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533737, -0.102715, -0.839390,
		-0.107347, 0.992796, -0.053229,
		0.838810, 0.061696, -0.540918,
		35.327934, 36.087009, 42.412666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499546, 36.404377, 42.177200>,  <34.740765, 36.043823, 42.791306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499546, 36.404377, 42.177200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846054, 36.216309, 42.109657>,  <35.053959, 36.103466, 42.069130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846054, 36.216309, 42.109657>,  <34.499546, 36.404377, 42.177200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846054, 36.216309, 42.109657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373904, -0.386038, -0.843309,
		0.331316, 0.793671, -0.510213,
		0.866271, -0.470172, -0.168857,
		35.105934, 36.075256, 42.059002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544674, 36.475941, 41.470055>,  <34.499546, 36.404377, 42.177200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544674, 36.475941, 41.470055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840923, 36.221691, 41.557194>,  <35.018673, 36.069141, 41.609478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840923, 36.221691, 41.557194>,  <34.544674, 36.475941, 41.470055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840923, 36.221691, 41.557194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106609, -0.431266, -0.895904,
		0.663410, 0.640303, -0.387169,
		0.740623, -0.635627, 0.217844,
		35.063110, 36.031002, 41.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072586, 36.477585, 40.954914>,  <34.544674, 36.475941, 41.470055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072586, 36.477585, 40.954914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108162, 36.120182, 41.130974>,  <35.129509, 35.905739, 41.236610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108162, 36.120182, 41.130974>,  <35.072586, 36.477585, 40.954914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108162, 36.120182, 41.130974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048975, -0.445288, -0.894047,
		0.994832, 0.057963, -0.083365,
		0.088943, -0.893509, 0.440148,
		35.134846, 35.852131, 41.263020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484062, 36.045364, 40.523800>,  <35.072586, 36.477585, 40.954914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484062, 36.045364, 40.523800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273182, 35.783882, 40.740959>,  <35.146652, 35.626995, 40.871254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273182, 35.783882, 40.740959>,  <35.484062, 36.045364, 40.523800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273182, 35.783882, 40.740959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140094, -0.563285, -0.814299,
		0.838112, -0.505356, 0.205385,
		-0.527202, -0.653701, 0.542894,
		35.115021, 35.587772, 40.903828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581997, 35.448391, 40.098831>,  <35.484062, 36.045364, 40.523800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581997, 35.448391, 40.098831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275101, 35.330830, 40.326855>,  <35.090965, 35.260292, 40.463669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275101, 35.330830, 40.326855>,  <35.581997, 35.448391, 40.098831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275101, 35.330830, 40.326855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323441, -0.590222, -0.739611,
		0.553836, -0.751837, 0.357779,
		-0.767236, -0.293903, 0.570061,
		35.044930, 35.242661, 40.497871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502098, 34.723404, 39.942360>,  <35.581997, 35.448391, 40.098831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502098, 34.723404, 39.942360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152401, 34.810009, 40.116173>,  <34.942581, 34.861973, 40.220463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152401, 34.810009, 40.116173>,  <35.502098, 34.723404, 39.942360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152401, 34.810009, 40.116173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475666, -0.561111, -0.677419,
		0.097154, -0.798923, 0.593535,
		-0.874244, 0.216510, 0.434535,
		34.890129, 34.874962, 40.246532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132099, 34.225449, 40.219189>,  <35.502098, 34.723404, 39.942360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132099, 34.225449, 40.219189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826069, 34.467171, 40.130219>,  <34.642452, 34.612206, 40.076836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826069, 34.467171, 40.130219>,  <35.132099, 34.225449, 40.219189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826069, 34.467171, 40.130219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371037, -0.696009, -0.614738,
		-0.526297, -0.387796, 0.756721,
		-0.765077, 0.604306, -0.222421,
		34.596546, 34.648464, 40.063492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529541, 33.794014, 40.292263>,  <35.132099, 34.225449, 40.219189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529541, 33.794014, 40.292263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416222, 34.110519, 40.075504>,  <34.348228, 34.300423, 39.945450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416222, 34.110519, 40.075504>,  <34.529541, 33.794014, 40.292263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416222, 34.110519, 40.075504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550953, -0.596775, -0.583361,
		-0.784979, 0.133292, 0.605013,
		-0.283300, 0.791260, -0.541894,
		34.331230, 34.347897, 39.912937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896587, 33.650509, 40.207981>,  <34.529541, 33.794014, 40.292263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896587, 33.650509, 40.207981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939735, 33.940807, 39.936199>,  <33.965622, 34.114986, 39.773132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939735, 33.940807, 39.936199>,  <33.896587, 33.650509, 40.207981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939735, 33.940807, 39.936199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617998, -0.486400, -0.617652,
		-0.778745, 0.486524, 0.396044,
		0.107867, 0.725747, -0.679452,
		33.972095, 34.158531, 39.732365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224422, 33.978249, 40.124485>,  <33.896587, 33.650509, 40.207981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224422, 33.978249, 40.124485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441078, 34.050335, 39.796059>,  <33.571072, 34.093586, 39.599003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441078, 34.050335, 39.796059>,  <33.224422, 33.978249, 40.124485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441078, 34.050335, 39.796059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718270, -0.408208, -0.563431,
		-0.436706, 0.894923, -0.091656,
		0.541642, 0.180220, -0.821063,
		33.603569, 34.104401, 39.549740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697372, 34.150856, 39.527702>,  <33.224422, 33.978249, 40.124485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697372, 34.150856, 39.527702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035694, 34.040848, 39.344849>,  <33.238689, 33.974842, 39.235138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035694, 34.040848, 39.344849>,  <32.697372, 34.150856, 39.527702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035694, 34.040848, 39.344849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533481, -0.431790, -0.727293,
		0.002638, 0.859022, -0.511932,
		0.845808, -0.275024, -0.457133,
		33.289436, 33.958340, 39.207710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628372, 34.375015, 38.856506>,  <32.697372, 34.150856, 39.527702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628372, 34.375015, 38.856506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913292, 34.099476, 38.802650>,  <33.084244, 33.934155, 38.770336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913292, 34.099476, 38.802650>,  <32.628372, 34.375015, 38.856506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913292, 34.099476, 38.802650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402670, -0.243933, -0.882243,
		0.574884, 0.682635, -0.451129,
		0.712295, -0.688844, -0.134643,
		33.126980, 33.892822, 38.762257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763222, 34.371552, 38.114319>,  <32.628372, 34.375015, 38.856506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763222, 34.371552, 38.114319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906704, 34.017384, 38.232552>,  <32.992794, 33.804882, 38.303490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906704, 34.017384, 38.232552>,  <32.763222, 34.371552, 38.114319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906704, 34.017384, 38.232552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379113, -0.427548, -0.820656,
		0.852998, 0.182313, -0.489036,
		0.358703, -0.885418, 0.295581,
		33.014317, 33.751759, 38.321224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164948, 34.128658, 37.616783>,  <32.763222, 34.371552, 38.114319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164948, 34.128658, 37.616783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032986, 33.816761, 37.829636>,  <32.953808, 33.629623, 37.957348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032986, 33.816761, 37.829636>,  <33.164948, 34.128658, 37.616783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032986, 33.816761, 37.829636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158276, -0.510020, -0.845475,
		0.930651, -0.363149, 0.044843,
		-0.329905, -0.779745, 0.532129,
		32.934013, 33.582836, 37.989273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470108, 33.518471, 37.222691>,  <33.164948, 34.128658, 37.616783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470108, 33.518471, 37.222691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168068, 33.399490, 37.456390>,  <32.986843, 33.328102, 37.596611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168068, 33.399490, 37.456390>,  <33.470108, 33.518471, 37.222691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168068, 33.399490, 37.456390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414967, -0.473078, -0.777174,
		0.507569, -0.829287, 0.233787,
		-0.755100, -0.297456, 0.584247,
		32.941540, 33.310253, 37.631664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918411, 33.775658, 37.657341>,  <33.470108, 33.518471, 37.222691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918411, 33.775658, 37.657341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214439, 33.558765, 37.816483>,  <34.392056, 33.428631, 37.911968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214439, 33.558765, 37.816483>,  <33.918411, 33.775658, 37.657341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214439, 33.558765, 37.816483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517746, 0.081779, -0.851617,
		0.429234, 0.836243, 0.341258,
		0.740066, -0.542227, 0.397859,
		34.436459, 33.396095, 37.935841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452774, 34.116158, 37.415279>,  <33.918411, 33.775658, 37.657341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452774, 34.116158, 37.415279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789204, 34.086971, 37.200890>,  <34.991062, 34.069458, 37.072254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789204, 34.086971, 37.200890>,  <34.452774, 34.116158, 37.415279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789204, 34.086971, 37.200890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540896, 0.123109, 0.832031,
		0.005270, -0.989707, 0.143013,
		0.841073, -0.072971, -0.535978,
		35.041527, 34.065079, 37.040096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852871, 33.662067, 37.738853>,  <34.452774, 34.116158, 37.415279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852871, 33.662067, 37.738853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102783, 33.896088, 37.532028>,  <35.252731, 34.036499, 37.407932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102783, 33.896088, 37.532028>,  <34.852871, 33.662067, 37.738853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102783, 33.896088, 37.532028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488777, 0.223359, 0.843331,
		0.608887, -0.779629, -0.146410,
		0.624783, 0.585056, -0.517065,
		35.290218, 34.071606, 37.376907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597176, 33.384598, 37.705803>,  <34.852871, 33.662067, 37.738853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597176, 33.384598, 37.705803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609352, 33.779102, 37.640854>,  <35.616657, 34.015804, 37.601883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609352, 33.779102, 37.640854>,  <35.597176, 33.384598, 37.705803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609352, 33.779102, 37.640854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627036, 0.107660, 0.771515,
		0.778395, -0.125302, -0.615143,
		0.030446, 0.986260, -0.162371,
		35.618484, 34.074982, 37.592144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223930, 33.567745, 37.730934>,  <35.597176, 33.384598, 37.705803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223930, 33.567745, 37.730934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053783, 33.924381, 37.793083>,  <35.951694, 34.138363, 37.830372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053783, 33.924381, 37.793083>,  <36.223930, 33.567745, 37.730934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053783, 33.924381, 37.793083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741346, 0.244794, 0.624885,
		0.519105, 0.380987, -0.765100,
		-0.425365, 0.891586, 0.155369,
		35.926174, 34.191856, 37.839695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874264, 34.029388, 37.831673>,  <36.223930, 33.567745, 37.730934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874264, 34.029388, 37.831673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561623, 34.246429, 37.954754>,  <36.374039, 34.376656, 38.028603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561623, 34.246429, 37.954754>,  <36.874264, 34.029388, 37.831673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561623, 34.246429, 37.954754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552631, 0.373566, 0.745015,
		0.289302, 0.752350, -0.591840,
		-0.781603, 0.542603, 0.307699,
		36.327141, 34.409210, 38.047062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070328, 34.766327, 37.743290>,  <36.874264, 34.029388, 37.831673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070328, 34.766327, 37.743290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785770, 34.719547, 38.020489>,  <36.615036, 34.691479, 38.186810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785770, 34.719547, 38.020489>,  <37.070328, 34.766327, 37.743290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785770, 34.719547, 38.020489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619486, 0.361324, 0.696909,
		-0.331902, 0.925077, -0.184592,
		-0.711392, -0.116954, 0.692996,
		36.572353, 34.684460, 38.228386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968376, 35.421127, 38.013420>,  <37.070328, 34.766327, 37.743290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968376, 35.421127, 38.013420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843601, 35.149975, 38.279705>,  <36.768734, 34.987282, 38.439476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843601, 35.149975, 38.279705>,  <36.968376, 35.421127, 38.013420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843601, 35.149975, 38.279705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602270, 0.400827, 0.690369,
		-0.734822, 0.616291, 0.283233,
		-0.311941, -0.677881, 0.665710,
		36.750019, 34.946609, 38.479420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872303, 35.824223, 38.639263>,  <36.968376, 35.421127, 38.013420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872303, 35.824223, 38.639263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851875, 35.451260, 38.782375>,  <36.839619, 35.227482, 38.868240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851875, 35.451260, 38.782375>,  <36.872303, 35.824223, 38.639263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851875, 35.451260, 38.782375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258290, 0.333724, 0.906595,
		-0.964717, 0.138707, 0.223790,
		-0.051067, -0.932410, 0.357776,
		36.836555, 35.171535, 38.889709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740124, 36.012924, 39.219273>,  <36.872303, 35.824223, 38.639263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740124, 36.012924, 39.219273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862347, 35.632080, 39.223774>,  <36.935680, 35.403576, 39.226475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862347, 35.632080, 39.223774>,  <36.740124, 36.012924, 39.219273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862347, 35.632080, 39.223774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486472, 0.166256, 0.857732,
		-0.818524, -0.256611, 0.513974,
		0.305554, -0.952108, 0.011250,
		36.954014, 35.346447, 39.227150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531006, 35.836399, 39.871639>,  <36.740124, 36.012924, 39.219273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531006, 35.836399, 39.871639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833282, 35.619530, 39.724674>,  <37.014648, 35.489410, 39.636497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833282, 35.619530, 39.724674>,  <36.531006, 35.836399, 39.871639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833282, 35.619530, 39.724674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485151, 0.086554, 0.870136,
		-0.439960, -0.835800, 0.328441,
		0.755687, -0.542169, -0.367409,
		37.059990, 35.456879, 39.614452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694977, 35.392262, 40.439152>,  <36.531006, 35.836399, 39.871639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694977, 35.392262, 40.439152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998234, 35.404385, 40.178600>,  <37.180187, 35.411659, 40.022270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998234, 35.404385, 40.178600>,  <36.694977, 35.392262, 40.439152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998234, 35.404385, 40.178600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648746, 0.065919, 0.758145,
		0.065919, -0.997365, 0.030312,
		-0.758145, -0.030312, 0.651381,
		37.225677, 35.413479, 39.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251343, 34.917313, 40.690186>,  <36.694977, 35.392262, 40.439152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251343, 34.917313, 40.690186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474884, 35.130314, 40.435902>,  <37.609009, 35.258114, 40.283333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474884, 35.130314, 40.435902>,  <37.251343, 34.917313, 40.690186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474884, 35.130314, 40.435902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735014, 0.036889, 0.677048,
		0.383979, -0.845626, -0.370779,
		0.558852, 0.532500, -0.635711,
		37.642540, 35.290062, 40.245190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023773, 34.664108, 40.637466>,  <37.251343, 34.917313, 40.690186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023773, 34.664108, 40.637466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032402, 35.039848, 40.500549>,  <38.037579, 35.265293, 40.418400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032402, 35.039848, 40.500549>,  <38.023773, 34.664108, 40.637466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032402, 35.039848, 40.500549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756140, 0.208652, 0.620255,
		0.654054, -0.272197, -0.705778,
		0.021570, 0.939347, -0.342289,
		38.038872, 35.321651, 40.397861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849747, 34.844498, 40.606709>,  <38.023773, 34.664108, 40.637466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849747, 34.844498, 40.606709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644653, 35.187904, 40.609444>,  <38.521599, 35.393948, 40.611084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644653, 35.187904, 40.609444>,  <38.849747, 34.844498, 40.606709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644653, 35.187904, 40.609444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654189, 0.385514, 0.650705,
		0.556006, 0.338114, -0.759300,
		-0.512733, 0.858521, 0.006843,
		38.490833, 35.445461, 40.611496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382378, 35.323624, 40.726280>,  <38.849747, 34.844498, 40.606709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382378, 35.323624, 40.726280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048470, 35.536072, 40.784344>,  <38.848125, 35.663540, 40.819183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048470, 35.536072, 40.784344>,  <39.382378, 35.323624, 40.726280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048470, 35.536072, 40.784344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505698, 0.635285, 0.583680,
		0.217790, 0.560643, -0.798904,
		-0.834768, 0.531123, 0.145157,
		38.798038, 35.695408, 40.827892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489666, 36.097420, 40.592564>,  <39.382378, 35.323624, 40.726280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489666, 36.097420, 40.592564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192791, 36.046459, 40.855751>,  <39.014664, 36.015884, 41.013664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192791, 36.046459, 40.855751>,  <39.489666, 36.097420, 40.592564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192791, 36.046459, 40.855751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395598, 0.709200, 0.583556,
		-0.540974, 0.693401, -0.475964,
		-0.742192, -0.127398, 0.657967,
		38.970135, 36.008240, 41.053143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187798, 36.744061, 40.706722>,  <39.489666, 36.097420, 40.592564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187798, 36.744061, 40.706722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068687, 36.523575, 41.018490>,  <38.997223, 36.391281, 41.205551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068687, 36.523575, 41.018490>,  <39.187798, 36.744061, 40.706722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068687, 36.523575, 41.018490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296620, 0.722619, 0.624370,
		-0.907385, 0.417111, -0.051674,
		-0.297772, -0.551217, 0.779417,
		38.979355, 36.358212, 41.252316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023655, 37.277882, 41.247356>,  <39.187798, 36.744061, 40.706722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023655, 37.277882, 41.247356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045399, 36.953625, 41.480560>,  <39.058445, 36.759071, 41.620483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045399, 36.953625, 41.480560>,  <39.023655, 37.277882, 41.247356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045399, 36.953625, 41.480560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069891, 0.585529, 0.807633,
		-0.996073, -0.003153, 0.088484,
		0.054357, -0.810645, 0.583009,
		39.061707, 36.710430, 41.655464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558743, 37.408100, 41.832256>,  <39.023655, 37.277882, 41.247356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558743, 37.408100, 41.832256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772430, 37.095333, 41.960766>,  <38.900642, 36.907673, 42.037872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772430, 37.095333, 41.960766>,  <38.558743, 37.408100, 41.832256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772430, 37.095333, 41.960766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047935, 0.407454, 0.911967,
		-0.843987, -0.471788, 0.255150,
		0.534217, -0.781919, 0.321271,
		38.932697, 36.860756, 42.057148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318588, 37.147938, 42.481674>,  <38.558743, 37.408100, 41.832256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318588, 37.147938, 42.481674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708591, 37.062164, 42.458443>,  <38.942593, 37.010700, 42.444504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708591, 37.062164, 42.458443>,  <38.318588, 37.147938, 42.481674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708591, 37.062164, 42.458443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130536, 0.341440, 0.930795,
		-0.179766, -0.915115, 0.360899,
		0.975009, -0.214436, -0.058076,
		39.001095, 36.997833, 42.441021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504704, 36.791847, 43.061020>,  <38.318588, 37.147938, 42.481674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504704, 36.791847, 43.061020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849190, 36.946201, 42.928711>,  <39.055882, 37.038815, 42.849327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849190, 36.946201, 42.928711>,  <38.504704, 36.791847, 43.061020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849190, 36.946201, 42.928711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185508, 0.367242, 0.911439,
		0.473186, -0.846300, 0.244687,
		0.861210, 0.385888, -0.330769,
		39.107552, 37.061966, 42.829479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086964, 36.520397, 43.458363>,  <38.504704, 36.791847, 43.061020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086964, 36.520397, 43.458363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150574, 36.888885, 43.316345>,  <39.188740, 37.109978, 43.231136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150574, 36.888885, 43.316345>,  <39.086964, 36.520397, 43.458363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150574, 36.888885, 43.316345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094419, 0.343781, 0.934291,
		0.982749, -0.182098, -0.032312,
		0.159025, 0.921225, -0.355044,
		39.198280, 37.165253, 43.209831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632877, 36.867786, 43.842152>,  <39.086964, 36.520397, 43.458363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632877, 36.867786, 43.842152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453346, 37.179462, 43.667149>,  <39.345627, 37.366470, 43.562145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453346, 37.179462, 43.667149>,  <39.632877, 36.867786, 43.842152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453346, 37.179462, 43.667149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006966, 0.492628, 0.870212,
		0.893592, 0.387526, -0.226532,
		-0.448826, 0.779193, -0.437509,
		39.318699, 37.413219, 43.535896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957771, 37.344688, 44.212151>,  <39.632877, 36.867786, 43.842152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957771, 37.344688, 44.212151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672699, 37.550724, 44.021671>,  <39.501656, 37.674347, 43.907383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672699, 37.550724, 44.021671>,  <39.957771, 37.344688, 44.212151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672699, 37.550724, 44.021671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064043, 0.723782, 0.687050,
		0.698558, 0.459151, -0.548814,
		-0.712681, 0.515092, -0.476199,
		39.458893, 37.705254, 43.878811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151443, 38.070873, 44.137386>,  <39.957771, 37.344688, 44.212151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151443, 38.070873, 44.137386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752777, 38.077168, 44.105343>,  <39.513577, 38.080944, 44.086117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752777, 38.077168, 44.105343>,  <40.151443, 38.070873, 44.137386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752777, 38.077168, 44.105343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041973, 0.742830, 0.668163,
		0.070023, 0.669295, -0.739689,
		-0.996662, 0.015740, -0.080108,
		39.453777, 38.081890, 44.081310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039566, 38.788944, 44.001625>,  <40.151443, 38.070873, 44.137386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039566, 38.788944, 44.001625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697433, 38.616035, 44.115849>,  <39.492153, 38.512291, 44.184383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697433, 38.616035, 44.115849>,  <40.039566, 38.788944, 44.001625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697433, 38.616035, 44.115849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086445, 0.662538, 0.744024,
		-0.510813, 0.611704, -0.604059,
		-0.855335, -0.432275, 0.285554,
		39.440834, 38.486355, 44.201515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634750, 39.365875, 44.077145>,  <40.039566, 38.788944, 44.001625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634750, 39.365875, 44.077145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453438, 39.069241, 44.274963>,  <39.344650, 38.891258, 44.393654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453438, 39.069241, 44.274963>,  <39.634750, 39.365875, 44.077145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453438, 39.069241, 44.274963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217695, 0.630122, 0.745356,
		-0.864376, 0.230193, -0.447062,
		-0.453280, -0.741591, 0.494551,
		39.317455, 38.846764, 44.423328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054707, 39.720314, 44.269539>,  <39.634750, 39.365875, 44.077145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054707, 39.720314, 44.269539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085358, 39.406837, 44.516102>,  <39.103748, 39.218754, 44.664040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085358, 39.406837, 44.516102>,  <39.054707, 39.720314, 44.269539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085358, 39.406837, 44.516102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005762, 0.617868, 0.786260,
		-0.997043, -0.063798, 0.042828,
		0.076624, -0.783689, 0.616409,
		39.108345, 39.171730, 44.701023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646263, 39.890919, 44.827660>,  <39.054707, 39.720314, 44.269539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646263, 39.890919, 44.827660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895222, 39.609089, 44.964008>,  <39.044598, 39.439991, 45.045818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895222, 39.609089, 44.964008>,  <38.646263, 39.890919, 44.827660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895222, 39.609089, 44.964008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098264, 0.502404, 0.859031,
		-0.776508, -0.501164, 0.381929,
		0.622398, -0.704574, 0.340874,
		39.081940, 39.397717, 45.066269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549915, 39.844570, 45.516468>,  <38.646263, 39.890919, 44.827660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549915, 39.844570, 45.516468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921638, 39.704315, 45.470097>,  <39.144672, 39.620163, 45.442276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921638, 39.704315, 45.470097>,  <38.549915, 39.844570, 45.516468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921638, 39.704315, 45.470097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247038, 0.356885, 0.900891,
		-0.274513, -0.865844, 0.418277,
		0.929309, -0.350637, -0.115927,
		39.200432, 39.599125, 45.435318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767139, 39.595364, 46.164120>,  <38.549915, 39.844570, 45.516468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767139, 39.595364, 46.164120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110252, 39.633457, 45.962074>,  <39.316120, 39.656315, 45.840847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110252, 39.633457, 45.962074>,  <38.767139, 39.595364, 46.164120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110252, 39.633457, 45.962074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437562, 0.380364, 0.814778,
		0.269725, -0.919920, 0.284597,
		0.857780, 0.095237, -0.505116,
		39.367588, 39.662029, 45.810539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330231, 39.160263, 46.590721>,  <38.767139, 39.595364, 46.164120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330231, 39.160263, 46.590721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473507, 39.455578, 46.362114>,  <39.559471, 39.632767, 46.224949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473507, 39.455578, 46.362114>,  <39.330231, 39.160263, 46.590721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473507, 39.455578, 46.362114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341521, 0.466108, 0.816154,
		0.868945, -0.487523, -0.085186,
		0.358187, 0.738285, -0.571521,
		39.580963, 39.677063, 46.190659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135231, 39.197178, 46.803837>,  <39.330231, 39.160263, 46.590721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135231, 39.197178, 46.803837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009480, 39.542534, 46.645992>,  <39.934029, 39.749748, 46.551285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009480, 39.542534, 46.645992>,  <40.135231, 39.197178, 46.803837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009480, 39.542534, 46.645992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216021, 0.469850, 0.855906,
		0.924391, 0.183836, -0.334223,
		-0.314381, 0.863392, -0.394613,
		39.915165, 39.801552, 46.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648392, 39.690655, 47.046886>,  <40.135231, 39.197178, 46.803837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648392, 39.690655, 47.046886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375462, 39.928257, 46.876434>,  <40.211704, 40.070820, 46.774162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375462, 39.928257, 46.876434>,  <40.648392, 39.690655, 47.046886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375462, 39.928257, 46.876434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144351, 0.680902, 0.718007,
		0.716656, 0.428401, -0.550342,
		-0.682325, 0.594007, -0.426132,
		40.170765, 40.106461, 46.748596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964840, 40.442833, 46.987896>,  <40.648392, 39.690655, 47.046886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964840, 40.442833, 46.987896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565411, 40.439083, 47.008904>,  <40.325752, 40.436832, 47.021507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565411, 40.439083, 47.008904>,  <40.964840, 40.442833, 46.987896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565411, 40.439083, 47.008904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024270, 0.796848, 0.603693,
		-0.047509, 0.604107, -0.795485,
		-0.998576, -0.009375, 0.052520,
		40.265839, 40.436272, 47.024658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780899, 41.151905, 47.255699>,  <40.964840, 40.442833, 46.987896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780899, 41.151905, 47.255699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428368, 40.971016, 47.310463>,  <40.216846, 40.862480, 47.343319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428368, 40.971016, 47.310463>,  <40.780899, 41.151905, 47.255699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428368, 40.971016, 47.310463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066916, 0.406292, 0.911290,
		-0.467734, 0.793988, -0.388340,
		-0.881333, -0.452227, 0.136906,
		40.163967, 40.835346, 47.351536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349693, 41.707119, 47.494831>,  <40.780899, 41.151905, 47.255699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349693, 41.707119, 47.494831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198242, 41.363792, 47.633358>,  <40.107372, 41.157795, 47.716473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198242, 41.363792, 47.633358>,  <40.349693, 41.707119, 47.494831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198242, 41.363792, 47.633358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051871, 0.393264, 0.917961,
		-0.924096, 0.329598, -0.193421,
		-0.378624, -0.858317, 0.346317,
		40.084656, 41.106297, 47.737251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658447, 41.850533, 47.787609>,  <40.349693, 41.707119, 47.494831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658447, 41.850533, 47.787609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756432, 41.499550, 47.952564>,  <39.815224, 41.288960, 48.051537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756432, 41.499550, 47.952564>,  <39.658447, 41.850533, 47.787609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756432, 41.499550, 47.952564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106833, 0.398323, 0.911002,
		-0.963628, -0.267218, 0.003833,
		0.244963, -0.877458, 0.412383,
		39.829922, 41.236313, 48.076279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595390, 42.537464, 47.436954>,  <39.658447, 41.850533, 47.787609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595390, 42.537464, 47.436954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732704, 42.891987, 47.312626>,  <39.815094, 43.104702, 47.238029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732704, 42.891987, 47.312626>,  <39.595390, 42.537464, 47.436954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732704, 42.891987, 47.312626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650184, -0.014571, -0.759637,
		-0.677801, 0.462869, 0.571260,
		0.343289, 0.886307, -0.310826,
		39.835690, 43.157879, 47.219379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018566, 42.933544, 47.272797>,  <39.595390, 42.537464, 47.436954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018566, 42.933544, 47.272797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324688, 43.091694, 47.069626>,  <39.508362, 43.186584, 46.947723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324688, 43.091694, 47.069626>,  <39.018566, 42.933544, 47.272797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324688, 43.091694, 47.069626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565230, 0.035279, -0.824178,
		-0.307940, 0.917842, 0.250477,
		0.765302, 0.395375, -0.507929,
		39.554279, 43.210308, 46.917248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766369, 43.432632, 46.784817>,  <39.018566, 42.933544, 47.272797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766369, 43.432632, 46.784817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110878, 43.274731, 46.656830>,  <39.317585, 43.179989, 46.580036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110878, 43.274731, 46.656830>,  <38.766369, 43.432632, 46.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110878, 43.274731, 46.656830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431972, -0.237175, -0.870143,
		0.267602, 0.887648, -0.374794,
		0.861272, -0.394752, -0.319971,
		39.369259, 43.156303, 46.560837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748428, 43.651093, 46.115696>,  <38.766369, 43.432632, 46.784817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748428, 43.651093, 46.115696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020901, 43.358376, 46.124325>,  <39.184387, 43.182747, 46.129501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020901, 43.358376, 46.124325>,  <38.748428, 43.651093, 46.115696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020901, 43.358376, 46.124325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236572, -0.247901, -0.939457,
		0.692834, 0.634842, -0.341989,
		0.681186, -0.731793, 0.021568,
		39.225258, 43.138836, 46.130795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081841, 43.650429, 45.418266>,  <38.748428, 43.651093, 46.115696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081841, 43.650429, 45.418266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169628, 43.294136, 45.577480>,  <39.222301, 43.080360, 45.673008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169628, 43.294136, 45.577480>,  <39.081841, 43.650429, 45.418266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169628, 43.294136, 45.577480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029030, -0.413759, -0.909923,
		0.975187, 0.188146, -0.116666,
		0.219470, -0.890732, 0.398031,
		39.235470, 43.026917, 45.696888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763134, 43.294525, 45.044598>,  <39.081841, 43.650429, 45.418266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763134, 43.294525, 45.044598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525120, 43.014095, 45.201786>,  <39.382313, 42.845837, 45.296097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525120, 43.014095, 45.201786>,  <39.763134, 43.294525, 45.044598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525120, 43.014095, 45.201786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088010, -0.542847, -0.835208,
		0.798868, -0.462391, 0.384713,
		-0.595033, -0.701079, 0.392968,
		39.346611, 42.803772, 45.319675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934277, 42.696907, 44.677692>,  <39.763134, 43.294525, 45.044598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934277, 42.696907, 44.677692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615845, 42.541077, 44.862942>,  <39.424786, 42.447578, 44.974091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615845, 42.541077, 44.862942>,  <39.934277, 42.696907, 44.677692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615845, 42.541077, 44.862942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092937, -0.677482, -0.729645,
		0.598014, -0.623897, 0.503123,
		-0.796080, -0.389579, 0.463126,
		39.377022, 42.424202, 45.001881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019711, 41.919170, 44.682163>,  <39.934277, 42.696907, 44.677692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019711, 41.919170, 44.682163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626904, 41.991524, 44.703793>,  <39.391220, 42.034935, 44.716770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626904, 41.991524, 44.703793>,  <40.019711, 41.919170, 44.682163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626904, 41.991524, 44.703793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156703, -0.621230, -0.767800,
		-0.105289, -0.762467, 0.638403,
		-0.982018, 0.180880, 0.054072,
		39.332298, 42.045788, 44.720013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741779, 41.318848, 44.647118>,  <40.019711, 41.919170, 44.682163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741779, 41.318848, 44.647118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455917, 41.576996, 44.539219>,  <39.284401, 41.731884, 44.474480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455917, 41.576996, 44.539219>,  <39.741779, 41.318848, 44.647118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455917, 41.576996, 44.539219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321145, -0.645324, -0.693126,
		-0.621393, -0.408722, 0.668444,
		-0.714659, 0.645370, -0.269741,
		39.241520, 41.770607, 44.458294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243420, 40.836365, 44.578388>,  <39.741779, 41.318848, 44.647118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243420, 40.836365, 44.578388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114502, 41.153435, 44.371391>,  <39.037151, 41.343678, 44.247192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114502, 41.153435, 44.371391>,  <39.243420, 40.836365, 44.578388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114502, 41.153435, 44.371391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317310, -0.605498, -0.729854,
		-0.891875, -0.071021, 0.446671,
		-0.322294, 0.792671, -0.517493,
		39.017815, 41.391235, 44.216145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556843, 40.697006, 44.437637>,  <39.243420, 40.836365, 44.578388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556843, 40.697006, 44.437637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695244, 40.959442, 44.169361>,  <38.778282, 41.116905, 44.008396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695244, 40.959442, 44.169361>,  <38.556843, 40.697006, 44.437637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695244, 40.959442, 44.169361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325123, -0.586713, -0.741662,
		-0.880102, 0.474672, 0.010309,
		0.345998, 0.656090, -0.670694,
		38.799042, 41.156269, 43.968151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037891, 40.853161, 43.894665>,  <38.556843, 40.697006, 44.437637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037891, 40.853161, 43.894665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390251, 40.939072, 43.725956>,  <38.601665, 40.990620, 43.624733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390251, 40.939072, 43.725956>,  <38.037891, 40.853161, 43.894665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390251, 40.939072, 43.725956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314063, -0.401424, -0.860362,
		-0.354098, 0.890352, -0.286159,
		0.880897, 0.214781, -0.421770,
		38.654522, 41.003506, 43.599426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877579, 41.121651, 43.277908>,  <38.037891, 40.853161, 43.894665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877579, 41.121651, 43.277908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249260, 40.978298, 43.241783>,  <38.472267, 40.892288, 43.220108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249260, 40.978298, 43.241783>,  <37.877579, 41.121651, 43.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249260, 40.978298, 43.241783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250949, -0.432421, -0.866047,
		0.271321, 0.827392, -0.491739,
		0.929198, -0.358378, -0.090309,
		38.528019, 40.870785, 43.214691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869965, 40.991013, 42.583683>,  <37.877579, 41.121651, 43.277908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869965, 40.991013, 42.583683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221451, 40.849251, 42.711597>,  <38.432343, 40.764194, 42.788345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221451, 40.849251, 42.711597>,  <37.869965, 40.991013, 42.583683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221451, 40.849251, 42.711597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097053, -0.523281, -0.846616,
		0.467379, 0.774969, -0.425418,
		0.878714, -0.354402, 0.319784,
		38.485065, 40.742931, 42.807533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327145, 41.170803, 42.023556>,  <37.869965, 40.991013, 42.583683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327145, 41.170803, 42.023556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421944, 40.841099, 42.229248>,  <38.478821, 40.643276, 42.352665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421944, 40.841099, 42.229248>,  <38.327145, 41.170803, 42.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421944, 40.841099, 42.229248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134171, -0.496469, -0.857623,
		0.962202, 0.272247, -0.007069,
		0.236995, -0.824258, 0.514230,
		38.493042, 40.593822, 42.383518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927269, 40.963249, 41.713856>,  <38.327145, 41.170803, 42.023556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927269, 40.963249, 41.713856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784119, 40.639111, 41.899437>,  <38.698227, 40.444626, 42.010788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784119, 40.639111, 41.899437>,  <38.927269, 40.963249, 41.713856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784119, 40.639111, 41.899437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107212, -0.529237, -0.841673,
		0.927593, -0.251475, 0.276282,
		-0.357879, -0.810351, 0.463955,
		38.676754, 40.396004, 42.038624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342239, 40.402596, 41.563217>,  <38.927269, 40.963249, 41.713856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342239, 40.402596, 41.563217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028408, 40.202293, 41.709465>,  <38.840111, 40.082111, 41.797215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028408, 40.202293, 41.709465>,  <39.342239, 40.402596, 41.563217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028408, 40.202293, 41.709465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137392, -0.715431, -0.685041,
		0.604614, -0.487236, 0.630113,
		-0.784580, -0.500758, 0.365618,
		38.793034, 40.052067, 41.819149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607491, 39.677261, 41.737595>,  <39.342239, 40.402596, 41.563217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607491, 39.677261, 41.737595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210926, 39.667011, 41.686306>,  <38.972988, 39.660862, 41.655533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210926, 39.667011, 41.686306>,  <39.607491, 39.677261, 41.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210926, 39.667011, 41.686306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101197, -0.771367, -0.628293,
		-0.082808, -0.635874, 0.767338,
		-0.991414, -0.025625, -0.128224,
		38.913502, 39.659325, 41.647839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471916, 39.037235, 41.866234>,  <39.607491, 39.677261, 41.737595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471916, 39.037235, 41.866234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146042, 39.175850, 41.680244>,  <38.950520, 39.259018, 41.568649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146042, 39.175850, 41.680244>,  <39.471916, 39.037235, 41.866234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146042, 39.175850, 41.680244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016935, -0.815691, -0.578240,
		-0.579658, -0.463208, 0.670399,
		-0.814683, 0.346535, -0.464978,
		38.901638, 39.279812, 41.540752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060654, 38.429676, 41.763298>,  <39.471916, 39.037235, 41.866234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060654, 38.429676, 41.763298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920151, 38.707237, 41.511868>,  <38.835850, 38.873775, 41.361008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920151, 38.707237, 41.511868>,  <39.060654, 38.429676, 41.763298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920151, 38.707237, 41.511868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192177, -0.710499, -0.676949,
		-0.916343, -0.116988, 0.382923,
		-0.351261, 0.693906, -0.628578,
		38.814774, 38.915409, 41.323296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332657, 38.324970, 41.493793>,  <39.060654, 38.429676, 41.763298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332657, 38.324970, 41.493793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526104, 38.541870, 41.218964>,  <38.642174, 38.672009, 41.054066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526104, 38.541870, 41.218964>,  <38.332657, 38.324970, 41.493793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526104, 38.541870, 41.218964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283176, -0.645835, -0.709019,
		-0.828203, 0.537462, -0.158789,
		0.483622, 0.542247, -0.687079,
		38.671192, 38.704544, 41.012840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049618, 38.081738, 40.889950>,  <38.332657, 38.324970, 41.493793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049618, 38.081738, 40.889950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353203, 38.291336, 40.735340>,  <38.535355, 38.417095, 40.642574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353203, 38.291336, 40.735340>,  <38.049618, 38.081738, 40.889950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353203, 38.291336, 40.735340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119659, -0.471260, -0.873840,
		-0.640043, 0.709464, -0.294968,
		0.758964, 0.524000, -0.386520,
		38.580891, 38.448536, 40.619385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778831, 38.322933, 40.323982>,  <38.049618, 38.081738, 40.889950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778831, 38.322933, 40.323982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174343, 38.308872, 40.265907>,  <38.411652, 38.300438, 40.231064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174343, 38.308872, 40.265907>,  <37.778831, 38.322933, 40.323982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174343, 38.308872, 40.265907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143957, -0.483754, -0.863283,
		-0.039892, 0.874498, -0.483386,
		0.988780, -0.035149, -0.145188,
		38.470978, 38.298328, 40.222351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839966, 38.289375, 39.595329>,  <37.778831, 38.322933, 40.323982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839966, 38.289375, 39.595329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214535, 38.227608, 39.721359>,  <38.439274, 38.190548, 39.796978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214535, 38.227608, 39.721359>,  <37.839966, 38.289375, 39.595329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214535, 38.227608, 39.721359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178236, -0.564147, -0.806207,
		0.302240, 0.811107, -0.500757,
		0.936420, -0.154415, 0.315076,
		38.495461, 38.181282, 39.815884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249962, 38.640251, 39.101727>,  <37.839966, 38.289375, 39.595329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249962, 38.640251, 39.101727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440098, 38.337963, 39.281921>,  <38.554180, 38.156590, 39.390038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440098, 38.337963, 39.281921>,  <38.249962, 38.640251, 39.101727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440098, 38.337963, 39.281921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143599, -0.438520, -0.887175,
		0.868004, 0.486399, -0.099924,
		0.475340, -0.755723, 0.450483,
		38.582699, 38.111248, 39.417065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845539, 38.469452, 38.732815>,  <38.249962, 38.640251, 39.101727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845539, 38.469452, 38.732815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790970, 38.133598, 38.943111>,  <38.758228, 37.932087, 39.069290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790970, 38.133598, 38.943111>,  <38.845539, 38.469452, 38.732815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790970, 38.133598, 38.943111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298543, -0.540872, -0.786339,
		0.944596, 0.049682, 0.324454,
		-0.136422, -0.839636, 0.525738,
		38.750042, 37.881706, 39.100834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360420, 38.113327, 38.578243>,  <38.845539, 38.469452, 38.732815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360420, 38.113327, 38.578243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112411, 37.850407, 38.749603>,  <38.963608, 37.692654, 38.852417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112411, 37.850407, 38.749603>,  <39.360420, 38.113327, 38.578243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112411, 37.850407, 38.749603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215654, -0.667761, -0.712452,
		0.754365, -0.349351, 0.555777,
		-0.620022, -0.657305, 0.428397,
		38.926403, 37.653214, 38.878120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695290, 37.478550, 38.582447>,  <39.360420, 38.113327, 38.578243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695290, 37.478550, 38.582447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308460, 37.380123, 38.608425>,  <39.076363, 37.321068, 38.624012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308460, 37.380123, 38.608425>,  <39.695290, 37.478550, 38.582447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308460, 37.380123, 38.608425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112110, -0.641009, -0.759301,
		0.228465, -0.727021, 0.647491,
		-0.967075, -0.246064, 0.064942,
		39.018337, 37.306305, 38.627907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631489, 36.851311, 38.560196>,  <39.695290, 37.478550, 38.582447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631489, 36.851311, 38.560196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271618, 36.958271, 38.422165>,  <39.055695, 37.022446, 38.339348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271618, 36.958271, 38.422165>,  <39.631489, 36.851311, 38.560196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271618, 36.958271, 38.422165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104377, -0.635769, -0.764790,
		-0.423893, -0.724082, 0.544077,
		-0.899678, 0.267399, -0.345076,
		39.001713, 37.038490, 38.318642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321491, 36.207840, 38.384666>,  <39.631489, 36.851311, 38.560196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321491, 36.207840, 38.384666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083405, 36.456528, 38.181026>,  <38.940552, 36.605740, 38.058842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083405, 36.456528, 38.181026>,  <39.321491, 36.207840, 38.384666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083405, 36.456528, 38.181026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204630, -0.495390, -0.844224,
		-0.777075, -0.606672, 0.167641,
		-0.595216, 0.621721, -0.509099,
		38.904839, 36.643044, 38.028297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959167, 35.797138, 37.946465>,  <39.321491, 36.207840, 38.384666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959167, 35.797138, 37.946465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936577, 36.161358, 37.782650>,  <38.923023, 36.379890, 37.684361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936577, 36.161358, 37.782650>,  <38.959167, 35.797138, 37.946465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936577, 36.161358, 37.782650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198859, -0.391711, -0.898342,
		-0.978400, -0.132172, -0.158949,
		-0.056473, 0.910546, -0.409533,
		38.919636, 36.434521, 37.659790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539783, 35.766071, 37.358555>,  <38.959167, 35.797138, 37.946465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539783, 35.766071, 37.358555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737640, 36.104919, 37.280872>,  <38.856354, 36.308228, 37.234264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737640, 36.104919, 37.280872>,  <38.539783, 35.766071, 37.358555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737640, 36.104919, 37.280872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102342, -0.278676, -0.954917,
		-0.863052, 0.452463, -0.224540,
		0.494639, 0.847123, -0.194205,
		38.886032, 36.359055, 37.222610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290035, 36.036537, 36.694466>,  <38.539783, 35.766071, 37.358555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290035, 36.036537, 36.694466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639687, 36.219692, 36.759258>,  <38.849480, 36.329586, 36.798134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639687, 36.219692, 36.759258>,  <38.290035, 36.036537, 36.694466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639687, 36.219692, 36.759258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264469, -0.169011, -0.949469,
		-0.407370, 0.872799, -0.268834,
		0.874131, 0.457884, 0.161978,
		38.901924, 36.357056, 36.807850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467293, 36.229706, 36.062107>,  <38.290035, 36.036537, 36.694466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467293, 36.229706, 36.062107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808666, 36.292164, 36.261009>,  <39.013493, 36.329639, 36.380352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808666, 36.292164, 36.261009>,  <38.467293, 36.229706, 36.062107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808666, 36.292164, 36.261009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518040, -0.149252, -0.842234,
		-0.057292, 0.976393, -0.208264,
		0.853436, 0.156142, 0.497260,
		39.064697, 36.339008, 36.410187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834171, 36.759903, 35.687840>,  <38.467293, 36.229706, 36.062107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834171, 36.759903, 35.687840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098591, 36.539185, 35.891228>,  <39.257240, 36.406754, 36.013260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098591, 36.539185, 35.891228>,  <38.834171, 36.759903, 35.687840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098591, 36.539185, 35.891228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562599, -0.083900, -0.822462,
		0.496490, 0.829750, 0.254976,
		0.661045, -0.551793, 0.508472,
		39.296906, 36.373646, 36.043770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484367, 36.940022, 35.459881>,  <38.834171, 36.759903, 35.687840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484367, 36.940022, 35.459881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551105, 36.590355, 35.642303>,  <39.591148, 36.380554, 35.751759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551105, 36.590355, 35.642303>,  <39.484367, 36.940022, 35.459881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551105, 36.590355, 35.642303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557502, -0.297863, -0.774899,
		0.813237, 0.383540, 0.437655,
		0.166844, -0.874171, 0.456058,
		39.601158, 36.328102, 35.779121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197498, 36.918133, 35.570110>,  <39.484367, 36.940022, 35.459881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197498, 36.918133, 35.570110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059246, 36.542809, 35.574383>,  <39.976295, 36.317616, 35.576946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059246, 36.542809, 35.574383>,  <40.197498, 36.918133, 35.570110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059246, 36.542809, 35.574383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646732, -0.246446, -0.721805,
		0.679908, -0.242571, 0.692014,
		-0.345633, -0.938309, 0.010683,
		39.955555, 36.261314, 35.577587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757404, 36.546600, 35.525780>,  <40.197498, 36.918133, 35.570110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757404, 36.546600, 35.525780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462849, 36.302750, 35.408417>,  <40.286118, 36.156441, 35.337997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462849, 36.302750, 35.408417>,  <40.757404, 36.546600, 35.525780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462849, 36.302750, 35.408417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582101, -0.349875, -0.733993,
		0.344807, -0.711296, 0.612509,
		-0.736388, -0.609628, -0.293407,
		40.241932, 36.119862, 35.320396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091579, 35.838058, 35.432629>,  <40.757404, 36.546600, 35.525780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091579, 35.838058, 35.432629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759666, 35.857227, 35.210217>,  <40.560520, 35.868729, 35.076771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759666, 35.857227, 35.210217>,  <41.091579, 35.838058, 35.432629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759666, 35.857227, 35.210217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491211, -0.410208, -0.768401,
		-0.264912, -0.910732, 0.316842,
		-0.829779, 0.047923, -0.556031,
		40.510735, 35.871605, 35.043407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180763, 35.301792, 34.972004>,  <41.091579, 35.838058, 35.432629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180763, 35.301792, 34.972004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909695, 35.549797, 34.813835>,  <40.747055, 35.698601, 34.718933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909695, 35.549797, 34.813835>,  <41.180763, 35.301792, 34.972004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909695, 35.549797, 34.813835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421772, -0.112777, -0.899661,
		-0.602392, -0.776447, -0.185077,
		-0.677667, 0.620009, -0.395420,
		40.706394, 35.735798, 34.695210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785164, 34.873966, 34.436253>,  <41.180763, 35.301792, 34.972004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785164, 34.873966, 34.436253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808640, 35.260639, 34.336582>,  <40.822723, 35.492641, 34.276779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808640, 35.260639, 34.336582>,  <40.785164, 34.873966, 34.436253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808640, 35.260639, 34.336582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365435, -0.253085, -0.895771,
		-0.928985, -0.038485, -0.368111,
		0.058690, 0.966678, -0.249176,
		40.826248, 35.550644, 34.261829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447586, 34.703579, 33.941750>,  <40.785164, 34.873966, 34.436253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447586, 34.703579, 33.941750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711723, 34.947643, 34.116867>,  <41.870205, 35.094082, 34.221935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711723, 34.947643, 34.116867>,  <41.447586, 34.703579, 33.941750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711723, 34.947643, 34.116867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748330, -0.485820, -0.451644,
		-0.062886, 0.625850, -0.777404,
		0.660340, 0.610156, 0.437791,
		41.909824, 35.130692, 34.248203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048267, 34.578583, 33.488113>,  <41.447586, 34.703579, 33.941750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048267, 34.578583, 33.488113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172726, 34.794136, 33.801239>,  <42.247402, 34.923470, 33.989113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172726, 34.794136, 33.801239>,  <42.048267, 34.578583, 33.488113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172726, 34.794136, 33.801239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950297, -0.186013, -0.249668,
		0.011072, 0.821587, -0.569976,
		0.311147, 0.538882, 0.782811,
		42.266071, 34.955799, 34.036083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501625, 35.179340, 33.264431>,  <42.048267, 34.578583, 33.488113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501625, 35.179340, 33.264431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592724, 35.052647, 33.632740>,  <42.647381, 34.976631, 33.853725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592724, 35.052647, 33.632740>,  <42.501625, 35.179340, 33.264431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592724, 35.052647, 33.632740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967945, -0.029201, -0.249458,
		0.105899, 0.948066, 0.299928,
		0.227744, -0.316731, 0.920768,
		42.661049, 34.957626, 33.908970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179581, 35.513641, 33.451099>,  <42.501625, 35.179340, 33.264431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179581, 35.513641, 33.451099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147041, 35.202827, 33.700771>,  <43.127518, 35.016338, 33.850574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147041, 35.202827, 33.700771>,  <43.179581, 35.513641, 33.451099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147041, 35.202827, 33.700771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996369, -0.047618, 0.070576,
		-0.025118, 0.627652, 0.778089,
		-0.081349, -0.777037, 0.624177,
		43.122635, 34.969715, 33.888023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536396, 35.619320, 34.123341>,  <43.179581, 35.513641, 33.451099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536396, 35.619320, 34.123341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543690, 35.243286, 33.987156>,  <43.548065, 35.017666, 33.905445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543690, 35.243286, 33.987156>,  <43.536396, 35.619320, 34.123341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543690, 35.243286, 33.987156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999363, 0.006690, 0.035048,
		-0.030670, -0.340887, 0.939604,
		0.018233, -0.940080, -0.340465,
		43.549160, 34.961262, 33.885017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944485, 35.074669, 34.567738>,  <43.536396, 35.619320, 34.123341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944485, 35.074669, 34.567738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943207, 35.010345, 34.172947>,  <43.942440, 34.971752, 33.936073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943207, 35.010345, 34.172947>,  <43.944485, 35.074669, 34.567738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943207, 35.010345, 34.172947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952922, 0.298765, -0.051766,
		0.303200, -0.940680, 0.152287,
		-0.003198, -0.160813, -0.986980,
		43.942249, 34.962101, 33.876854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545010, 35.127861, 35.156597>,  <43.944485, 35.074669, 34.567738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545010, 35.127861, 35.156597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414814, 34.866341, 35.429829>,  <43.336697, 34.709431, 35.593769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414814, 34.866341, 35.429829>,  <43.545010, 35.127861, 35.156597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414814, 34.866341, 35.429829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111568, -0.743932, -0.658876,
		0.938940, -0.138248, 0.315086,
		-0.325491, -0.653799, 0.683083,
		43.317165, 34.670200, 35.634754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040878, 34.520733, 35.381298>,  <43.545010, 35.127861, 35.156597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040878, 34.520733, 35.381298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696854, 34.353802, 35.498695>,  <43.490440, 34.253643, 35.569134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696854, 34.353802, 35.498695>,  <44.040878, 34.520733, 35.381298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696854, 34.353802, 35.498695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201369, -0.806222, -0.556288,
		0.468774, -0.419340, 0.777435,
		-0.860059, -0.417324, 0.293494,
		43.438835, 34.228603, 35.586742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189896, 33.726532, 35.419968>,  <44.040878, 34.520733, 35.381298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189896, 33.726532, 35.419968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793293, 33.778400, 35.416142>,  <43.555332, 33.809521, 35.413845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793293, 33.778400, 35.416142>,  <44.189896, 33.726532, 35.419968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793293, 33.778400, 35.416142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110404, -0.878480, -0.464848,
		-0.068680, -0.459846, 0.885339,
		-0.991511, 0.129671, -0.009565,
		43.495838, 33.817303, 35.413273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907394, 33.046036, 35.668255>,  <44.189896, 33.726532, 35.419968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907394, 33.046036, 35.668255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608414, 33.225842, 35.472599>,  <43.429024, 33.333725, 35.355206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608414, 33.225842, 35.472599>,  <43.907394, 33.046036, 35.668255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608414, 33.225842, 35.472599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206828, -0.857168, -0.471684,
		-0.631300, -0.251393, 0.733663,
		-0.747451, 0.449516, -0.489135,
		43.384178, 33.360695, 35.325859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458931, 32.581940, 35.682518>,  <43.907394, 33.046036, 35.668255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458931, 32.581940, 35.682518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342121, 32.809395, 35.374916>,  <43.272034, 32.945869, 35.190353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342121, 32.809395, 35.374916>,  <43.458931, 32.581940, 35.682518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342121, 32.809395, 35.374916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304768, -0.817468, -0.488736,
		-0.906553, 0.091646, 0.412024,
		-0.292025, 0.568636, -0.769008,
		43.254513, 32.979984, 35.144215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916012, 32.153023, 35.309513>,  <43.458931, 32.581940, 35.682518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916012, 32.153023, 35.309513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005718, 32.445496, 35.051807>,  <43.059544, 32.620979, 34.897186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005718, 32.445496, 35.051807>,  <42.916012, 32.153023, 35.309513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005718, 32.445496, 35.051807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246190, -0.597150, -0.763415,
		-0.942919, 0.329818, 0.046091,
		0.224265, 0.731185, -0.644262,
		43.072998, 32.664852, 34.858528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416458, 32.026123, 34.839748>,  <42.916012, 32.153023, 35.309513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416458, 32.026123, 34.839748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716034, 32.220093, 34.659107>,  <42.895779, 32.336475, 34.550724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716034, 32.220093, 34.659107>,  <42.416458, 32.026123, 34.839748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716034, 32.220093, 34.659107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017473, -0.666829, -0.745006,
		-0.662409, 0.565854, -0.490941,
		0.748939, 0.484920, -0.451601,
		42.940716, 32.365570, 34.523628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274364, 32.042042, 34.178951>,  <42.416458, 32.026123, 34.839748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274364, 32.042042, 34.178951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670372, 32.097507, 34.168823>,  <42.907974, 32.130787, 34.162746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670372, 32.097507, 34.168823>,  <42.274364, 32.042042, 34.178951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670372, 32.097507, 34.168823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086166, -0.737511, -0.669816,
		-0.111550, 0.660947, -0.742095,
		0.990016, 0.138661, -0.025318,
		42.967377, 32.139107, 34.161228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486237, 32.044010, 33.418236>,  <42.274364, 32.042042, 34.178951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486237, 32.044010, 33.418236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806602, 31.979118, 33.648788>,  <42.998821, 31.940182, 33.787121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806602, 31.979118, 33.648788>,  <42.486237, 32.044010, 33.418236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806602, 31.979118, 33.648788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291416, -0.735293, -0.611900,
		0.523080, 0.658047, -0.541629,
		0.800914, -0.162233, 0.576382,
		43.046875, 31.930449, 33.821705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983604, 31.913612, 32.967682>,  <42.486237, 32.044010, 33.418236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983604, 31.913612, 32.967682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163670, 31.773506, 33.296234>,  <43.271709, 31.689442, 33.493366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163670, 31.773506, 33.296234>,  <42.983604, 31.913612, 32.967682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163670, 31.773506, 33.296234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306669, -0.803264, -0.510609,
		0.838636, 0.481748, -0.254181,
		0.450159, -0.350266, 0.821383,
		43.298717, 31.668427, 33.542648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556370, 31.651941, 32.657639>,  <42.983604, 31.913612, 32.967682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556370, 31.651941, 32.657639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492065, 31.493256, 33.019138>,  <43.453484, 31.398045, 33.236038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492065, 31.493256, 33.019138>,  <43.556370, 31.651941, 32.657639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492065, 31.493256, 33.019138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089198, -0.917757, -0.386996,
		0.982954, 0.018398, 0.182929,
		-0.160765, -0.396716, 0.903754,
		43.443836, 31.374241, 33.290264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191799, 31.249413, 32.860291>,  <43.556370, 31.651941, 32.657639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191799, 31.249413, 32.860291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863503, 31.117508, 33.046898>,  <43.666527, 31.038364, 33.158863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863503, 31.117508, 33.046898>,  <44.191799, 31.249413, 32.860291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863503, 31.117508, 33.046898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081800, -0.876013, -0.475300,
		0.565416, -0.351937, 0.745953,
		-0.820740, -0.329761, 0.466523,
		43.617279, 31.018579, 33.186855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351284, 30.577890, 32.831535>,  <44.191799, 31.249413, 32.860291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351284, 30.577890, 32.831535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966972, 30.565649, 32.941788>,  <43.736385, 30.558304, 33.007938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966972, 30.565649, 32.941788>,  <44.351284, 30.577890, 32.831535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966972, 30.565649, 32.941788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106832, -0.876343, -0.469692,
		0.255916, -0.480715, 0.838701,
		-0.960778, -0.030601, 0.275626,
		43.678738, 30.556469, 33.024475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267506, 29.834976, 33.151588>,  <44.351284, 30.577890, 32.831535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267506, 29.834976, 33.151588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909752, 29.979734, 33.046432>,  <43.695099, 30.066589, 32.983337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909752, 29.979734, 33.046432>,  <44.267506, 29.834976, 33.151588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909752, 29.979734, 33.046432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184913, -0.834293, -0.519386,
		-0.407290, -0.415919, 0.813097,
		-0.894384, 0.361893, -0.262890,
		43.641438, 30.088303, 32.967564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697678, 29.333866, 33.407333>,  <44.267506, 29.834976, 33.151588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697678, 29.333866, 33.407333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543499, 29.534206, 33.097343>,  <43.450993, 29.654409, 32.911350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543499, 29.534206, 33.097343>,  <43.697678, 29.333866, 33.407333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543499, 29.534206, 33.097343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253291, -0.865036, -0.433077,
		-0.887288, 0.029370, 0.460279,
		-0.385438, 0.500848, -0.774976,
		43.427868, 29.684462, 32.864853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134651, 28.971119, 33.272449>,  <43.697678, 29.333866, 33.407333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134651, 28.971119, 33.272449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181599, 29.200495, 32.948132>,  <43.209766, 29.338120, 32.753540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181599, 29.200495, 32.948132>,  <43.134651, 28.971119, 33.272449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181599, 29.200495, 32.948132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226020, -0.779590, -0.584084,
		-0.967026, 0.251808, 0.038111,
		0.117366, 0.573438, -0.810798,
		43.216808, 29.372526, 32.704891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610355, 28.731058, 32.906654>,  <43.134651, 28.971119, 33.272449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610355, 28.731058, 32.906654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832497, 28.898806, 32.619404>,  <42.965782, 28.999454, 32.447052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832497, 28.898806, 32.619404>,  <42.610355, 28.731058, 32.906654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832497, 28.898806, 32.619404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004023, -0.864882, -0.501960,
		-0.831602, 0.275878, -0.482006,
		0.555358, 0.419370, -0.718127,
		42.999104, 29.024616, 32.403965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259056, 28.737690, 32.249687>,  <42.610355, 28.731058, 32.906654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259056, 28.737690, 32.249687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651096, 28.753500, 32.171871>,  <42.886318, 28.762985, 32.125179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651096, 28.753500, 32.171871>,  <42.259056, 28.737690, 32.249687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651096, 28.753500, 32.171871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068317, -0.852966, -0.517476,
		-0.186393, 0.520467, -0.833290,
		0.980097, 0.039526, -0.194544,
		42.945126, 28.765358, 32.113506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303413, 28.519554, 31.654768>,  <42.259056, 28.737690, 32.249687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303413, 28.519554, 31.654768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687328, 28.465816, 31.753365>,  <42.917679, 28.433575, 31.812523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687328, 28.465816, 31.753365>,  <42.303413, 28.519554, 31.654768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687328, 28.465816, 31.753365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010947, -0.895296, -0.445338,
		0.280509, 0.424732, -0.860765,
		0.959789, -0.134344, 0.246489,
		42.975266, 28.425512, 31.827311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695087, 28.390821, 31.022953>,  <42.303413, 28.519554, 31.654768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695087, 28.390821, 31.022953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936115, 28.237936, 31.303188>,  <43.080730, 28.146204, 31.471331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936115, 28.237936, 31.303188>,  <42.695087, 28.390821, 31.022953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936115, 28.237936, 31.303188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028327, -0.867060, -0.497398,
		0.797566, 0.319561, -0.511634,
		0.602566, -0.382215, 0.700589,
		43.116886, 28.123272, 31.513365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278049, 28.096222, 30.694408>,  <42.695087, 28.390821, 31.022953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278049, 28.096222, 30.694408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256557, 27.918196, 31.051962>,  <43.243664, 27.811380, 31.266495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256557, 27.918196, 31.051962>,  <43.278049, 28.096222, 30.694408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256557, 27.918196, 31.051962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237107, -0.875261, -0.421543,
		0.969997, 0.189298, 0.152555,
		-0.053728, -0.445067, 0.893884,
		43.240440, 27.784676, 31.320127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751431, 27.510492, 30.616545>,  <43.278049, 28.096222, 30.694408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751431, 27.510492, 30.616545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552620, 27.410200, 30.948833>,  <43.433334, 27.350025, 31.148207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552620, 27.410200, 30.948833>,  <43.751431, 27.510492, 30.616545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552620, 27.410200, 30.948833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300039, -0.947952, -0.106598,
		0.814214, 0.196268, 0.546383,
		-0.497024, -0.250730, 0.830724,
		43.403511, 27.334982, 31.198051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005440, 26.790260, 30.568855>,  <43.751431, 27.510492, 30.616545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005440, 26.790260, 30.568855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835018, 26.800871, 30.930578>,  <43.732765, 26.807238, 31.147612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835018, 26.800871, 30.930578>,  <44.005440, 26.790260, 30.568855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835018, 26.800871, 30.930578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024333, 0.998872, -0.040764,
		-0.904370, -0.039373, -0.424929,
		-0.426055, 0.026526, 0.904308,
		43.707203, 26.808828, 31.201870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290096, 26.683779, 31.273270>,  <44.005440, 26.790260, 30.568855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290096, 26.683779, 31.273270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544075, 26.451775, 31.477398>,  <44.696461, 26.312572, 31.599874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544075, 26.451775, 31.477398>,  <44.290096, 26.683779, 31.273270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544075, 26.451775, 31.477398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361558, 0.360659, 0.859768,
		-0.682728, -0.730418, 0.019292,
		0.634948, -0.580012, 0.510321,
		44.734558, 26.277771, 31.630495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909641, 26.171869, 31.741531>,  <44.290096, 26.683779, 31.273270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909641, 26.171869, 31.741531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264565, 26.293325, 31.880373>,  <44.477520, 26.366199, 31.963678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264565, 26.293325, 31.880373>,  <43.909641, 26.171869, 31.741531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264565, 26.293325, 31.880373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420367, 0.222987, 0.879527,
		0.189658, -0.926326, 0.325499,
		0.887311, 0.303638, 0.347105,
		44.530758, 26.384418, 31.984505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072151, 25.799231, 32.410263>,  <43.909641, 26.171869, 31.741531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072151, 25.799231, 32.410263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266022, 26.148441, 32.388687>,  <44.382343, 26.357967, 32.375740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266022, 26.148441, 32.388687>,  <44.072151, 25.799231, 32.410263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266022, 26.148441, 32.388687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475808, 0.314896, 0.821248,
		0.733960, -0.372372, 0.568016,
		0.484676, 0.873029, -0.053944,
		44.411423, 26.410351, 32.372505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589417, 25.900723, 32.953285>,  <44.072151, 25.799231, 32.410263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589417, 25.900723, 32.953285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403896, 26.219280, 32.798035>,  <44.292583, 26.410416, 32.704884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403896, 26.219280, 32.798035>,  <44.589417, 25.900723, 32.953285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403896, 26.219280, 32.798035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370917, 0.223296, 0.901421,
		0.804553, 0.562045, 0.191830,
		-0.463805, 0.796394, -0.388125,
		44.264755, 26.458199, 32.681599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350090, 25.725292, 33.693378>,  <44.589417, 25.900723, 32.953285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350090, 25.725292, 33.693378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742950, 25.792154, 33.658867>,  <44.978664, 25.832272, 33.638161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742950, 25.792154, 33.658867>,  <44.350090, 25.725292, 33.693378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742950, 25.792154, 33.658867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061397, 0.718412, 0.692903,
		0.177808, -0.675236, 0.715850,
		0.982148, 0.167155, -0.086282,
		45.037594, 25.842300, 33.632980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736534, 25.804489, 34.374973>,  <44.350090, 25.725292, 33.693378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736534, 25.804489, 34.374973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934643, 26.005543, 34.091545>,  <45.053509, 26.126175, 33.921490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934643, 26.005543, 34.091545>,  <44.736534, 25.804489, 34.374973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934643, 26.005543, 34.091545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071204, 0.789397, 0.609740,
		0.865817, -0.352438, 0.355174,
		0.495269, 0.502633, -0.708568,
		45.083225, 26.156332, 33.878975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343643, 26.214640, 34.730125>,  <44.736534, 25.804489, 34.374973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343643, 26.214640, 34.730125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128254, 26.341684, 34.417927>,  <44.999020, 26.417912, 34.230610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128254, 26.341684, 34.417927>,  <45.343643, 26.214640, 34.730125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128254, 26.341684, 34.417927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237899, 0.831262, 0.502402,
		0.808365, 0.456208, -0.372050,
		-0.538471, 0.317614, -0.780494,
		44.966713, 26.436968, 34.183777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643013, 26.787437, 34.226891>,  <45.343643, 26.214640, 34.730125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643013, 26.787437, 34.226891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252399, 26.812489, 34.309311>,  <45.018032, 26.827518, 34.358765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252399, 26.812489, 34.309311>,  <45.643013, 26.787437, 34.226891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252399, 26.812489, 34.309311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148094, 0.889936, 0.431372,
		-0.156357, 0.451765, -0.878328,
		-0.976535, 0.062627, 0.206052,
		44.959438, 26.831276, 34.371128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475662, 27.396624, 33.838486>,  <45.643013, 26.787437, 34.226891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475662, 27.396624, 33.838486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203331, 27.337093, 34.125351>,  <45.039932, 27.301374, 34.297470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203331, 27.337093, 34.125351>,  <45.475662, 27.396624, 33.838486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203331, 27.337093, 34.125351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131000, 0.938609, 0.319142,
		-0.720635, 0.311229, -0.619534,
		-0.680826, -0.148826, 0.717166,
		44.999084, 27.292446, 34.340500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115398, 28.037949, 33.865505>,  <45.475662, 27.396624, 33.838486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115398, 28.037949, 33.865505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022785, 27.870928, 34.216969>,  <44.967216, 27.770716, 34.427845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022785, 27.870928, 34.216969>,  <45.115398, 28.037949, 33.865505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022785, 27.870928, 34.216969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036017, 0.898903, 0.436664,
		-0.972161, 0.132747, -0.193084,
		-0.231530, -0.417554, 0.878660,
		44.953327, 27.745661, 34.480568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610619, 28.457623, 34.151150>,  <45.115398, 28.037949, 33.865505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610619, 28.457623, 34.151150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741791, 28.238977, 34.459351>,  <44.820492, 28.107790, 34.644272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741791, 28.238977, 34.459351>,  <44.610619, 28.457623, 34.151150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741791, 28.238977, 34.459351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136289, 0.834447, 0.533970,
		-0.934821, -0.070091, 0.348133,
		0.327925, -0.546613, 0.770506,
		44.840168, 28.074993, 34.690502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427109, 28.855442, 34.645100>,  <44.610619, 28.457623, 34.151150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427109, 28.855442, 34.645100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685535, 28.606400, 34.821716>,  <44.840591, 28.456974, 34.927685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685535, 28.606400, 34.821716>,  <44.427109, 28.855442, 34.645100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685535, 28.606400, 34.821716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169641, 0.681136, 0.712233,
		-0.744189, -0.385248, 0.545679,
		0.646068, -0.622606, 0.441540,
		44.879356, 28.419619, 34.954178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218334, 28.562119, 35.360874>,  <44.427109, 28.855442, 34.645100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218334, 28.562119, 35.360874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617542, 28.567043, 35.336212>,  <44.857067, 28.569998, 35.321415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617542, 28.567043, 35.336212>,  <44.218334, 28.562119, 35.360874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617542, 28.567043, 35.336212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031931, 0.745480, 0.665763,
		0.054157, -0.666414, 0.743612,
		0.998022, 0.012312, -0.061652,
		44.916950, 28.570736, 35.317715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359604, 28.654751, 36.057407>,  <44.218334, 28.562119, 35.360874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359604, 28.654751, 36.057407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701332, 28.766113, 35.881851>,  <44.906368, 28.832932, 35.776520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701332, 28.766113, 35.881851>,  <44.359604, 28.654751, 36.057407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701332, 28.766113, 35.881851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053377, 0.792968, 0.606921,
		0.516994, -0.541933, 0.662590,
		0.854323, 0.278407, -0.438887,
		44.957630, 28.849636, 35.750183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745850, 28.991215, 36.601158>,  <44.359604, 28.654751, 36.057407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745850, 28.991215, 36.601158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947662, 29.071030, 36.265152>,  <45.068752, 29.118919, 36.063549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947662, 29.071030, 36.265152>,  <44.745850, 28.991215, 36.601158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947662, 29.071030, 36.265152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272134, 0.886582, 0.374052,
		0.819381, -0.417320, 0.393012,
		0.504536, 0.199539, -0.840016,
		45.099022, 29.130892, 36.013145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467861, 29.196272, 36.791752>,  <44.745850, 28.991215, 36.601158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467861, 29.196272, 36.791752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377132, 29.346956, 36.432499>,  <45.322697, 29.437366, 36.216946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377132, 29.346956, 36.432499>,  <45.467861, 29.196272, 36.791752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377132, 29.346956, 36.432499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250027, 0.913784, 0.320132,
		0.941296, -0.151944, -0.301455,
		-0.226823, 0.376711, -0.898131,
		45.309086, 29.459970, 36.163059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031822, 29.666193, 36.673973>,  <45.467861, 29.196272, 36.791752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031822, 29.666193, 36.673973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727928, 29.760273, 36.431492>,  <45.545589, 29.816721, 36.286003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727928, 29.760273, 36.431492>,  <46.031822, 29.666193, 36.673973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727928, 29.760273, 36.431492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003541, 0.930776, 0.365573,
		0.650219, 0.279886, -0.706314,
		-0.759739, 0.235202, -0.606199,
		45.500008, 29.830833, 36.249634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227558, 30.183783, 36.390102>,  <46.031822, 29.666193, 36.673973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227558, 30.183783, 36.390102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847248, 30.239170, 36.279213>,  <45.619061, 30.272402, 36.212681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847248, 30.239170, 36.279213>,  <46.227558, 30.183783, 36.390102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847248, 30.239170, 36.279213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103918, 0.985281, 0.135726,
		0.291936, 0.100237, -0.951171,
		-0.950776, 0.138467, -0.277222,
		45.562016, 30.280710, 36.196045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265411, 30.743799, 35.902267>,  <46.227558, 30.183783, 36.390102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265411, 30.743799, 35.902267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886391, 30.725466, 36.028786>,  <45.658978, 30.714466, 36.104698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886391, 30.725466, 36.028786>,  <46.265411, 30.743799, 35.902267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886391, 30.725466, 36.028786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028093, 0.997778, 0.060417,
		-0.318360, 0.048362, -0.946735,
		-0.947553, -0.045831, 0.316294,
		45.602123, 30.711716, 36.123672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738815, 31.166998, 35.542747>,  <46.265411, 30.743799, 35.902267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738815, 31.166998, 35.542747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556904, 31.131863, 35.897251>,  <45.447758, 31.110783, 36.109955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556904, 31.131863, 35.897251>,  <45.738815, 31.166998, 35.542747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556904, 31.131863, 35.897251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243913, 0.969361, -0.029090,
		-0.856551, -0.229401, -0.462272,
		-0.454782, -0.087837, 0.886261,
		45.420467, 31.105511, 36.163128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092243, 31.609196, 35.469711>,  <45.738815, 31.166998, 35.542747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092243, 31.609196, 35.469711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147594, 31.570650, 35.863983>,  <45.180805, 31.547523, 36.100548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147594, 31.570650, 35.863983>,  <45.092243, 31.609196, 35.469711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147594, 31.570650, 35.863983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105059, 0.988211, 0.111360,
		-0.984792, -0.118964, 0.126620,
		0.138375, -0.096364, 0.985681,
		45.189106, 31.541740, 36.159687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639999, 32.181721, 35.742569>,  <45.092243, 31.609196, 35.469711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639999, 32.181721, 35.742569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891144, 32.076305, 36.035507>,  <45.041832, 32.013058, 36.211269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891144, 32.076305, 36.035507>,  <44.639999, 32.181721, 35.742569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891144, 32.076305, 36.035507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010542, 0.943726, 0.330560,
		-0.778252, -0.199826, 0.595309,
		0.627864, -0.263535, 0.732350,
		45.079502, 31.997246, 36.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392448, 32.284214, 36.419834>,  <44.639999, 32.181721, 35.742569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392448, 32.284214, 36.419834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790718, 32.296627, 36.454887>,  <45.029678, 32.304073, 36.475918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790718, 32.296627, 36.454887>,  <44.392448, 32.284214, 36.419834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790718, 32.296627, 36.454887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060028, 0.934404, 0.351122,
		-0.070987, -0.354862, 0.932220,
		0.995669, 0.031034, 0.087632,
		45.089420, 32.305939, 36.481178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475872, 32.408520, 37.146446>,  <44.392448, 32.284214, 36.419834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475872, 32.408520, 37.146446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811386, 32.517609, 36.957954>,  <45.012695, 32.583061, 36.844860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811386, 32.517609, 36.957954>,  <44.475872, 32.408520, 37.146446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811386, 32.517609, 36.957954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070432, 0.912579, 0.402790,
		0.539887, -0.304665, 0.784667,
		0.838786, 0.272727, -0.471231,
		45.063023, 32.599426, 36.816586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853813, 32.657421, 37.670197>,  <44.475872, 32.408520, 37.146446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853813, 32.657421, 37.670197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987137, 32.797344, 37.319988>,  <45.067131, 32.881298, 37.109863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987137, 32.797344, 37.319988>,  <44.853813, 32.657421, 37.670197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987137, 32.797344, 37.319988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006301, 0.929429, 0.368948,
		0.942797, -0.117457, 0.311990,
		0.333308, 0.349808, -0.875522,
		45.087132, 32.902287, 37.057331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348766, 32.991688, 37.861160>,  <44.853813, 32.657421, 37.670197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348766, 32.991688, 37.861160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262379, 33.147545, 37.503048>,  <45.210545, 33.241058, 37.288181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262379, 33.147545, 37.503048>,  <45.348766, 32.991688, 37.861160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262379, 33.147545, 37.503048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171463, 0.917811, 0.358083,
		0.961227, -0.076172, -0.265029,
		-0.215971, 0.389642, -0.895285,
		45.197586, 33.264439, 37.234463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820671, 33.575993, 37.707436>,  <45.348766, 32.991688, 37.861160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820671, 33.575993, 37.707436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506611, 33.651703, 37.471569>,  <45.318172, 33.697128, 37.330048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506611, 33.651703, 37.471569>,  <45.820671, 33.575993, 37.707436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506611, 33.651703, 37.471569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097407, 0.978043, 0.184239,
		0.611592, 0.087218, -0.786351,
		-0.785154, 0.189276, -0.589668,
		45.271065, 33.708485, 37.294670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079163, 34.101467, 37.261257>,  <45.820671, 33.575993, 37.707436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079163, 34.101467, 37.261257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680584, 34.123348, 37.235668>,  <45.441437, 34.136478, 37.220314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680584, 34.123348, 37.235668>,  <46.079163, 34.101467, 37.261257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680584, 34.123348, 37.235668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052497, 0.997981, 0.035737,
		0.065798, 0.032251, -0.997312,
		-0.996451, 0.054707, -0.063972,
		45.381649, 34.139759, 37.216476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883942, 34.703381, 36.818024>,  <46.079163, 34.101467, 37.261257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883942, 34.703381, 36.818024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579140, 34.615265, 37.061607>,  <45.396259, 34.562397, 37.207756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579140, 34.615265, 37.061607>,  <45.883942, 34.703381, 36.818024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579140, 34.615265, 37.061607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123350, 0.972520, 0.197456,
		-0.635720, 0.075347, -0.768234,
		-0.762001, -0.220289, 0.608956,
		45.350540, 34.549179, 37.244293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434795, 35.208721, 36.706306>,  <45.883942, 34.703381, 36.818024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434795, 35.208721, 36.706306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574162, 35.083656, 36.352844>,  <46.657784, 35.008617, 36.140766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574162, 35.083656, 36.352844>,  <46.434795, 35.208721, 36.706306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574162, 35.083656, 36.352844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215047, 0.944246, -0.249307,
		0.912337, -0.103165, 0.396230,
		0.348419, -0.312660, -0.883656,
		46.678688, 34.989857, 36.087746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154152, 35.444160, 36.453693>,  <46.434795, 35.208721, 36.706306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154152, 35.444160, 36.453693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873436, 35.402702, 36.171772>,  <46.705006, 35.377827, 36.002617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873436, 35.402702, 36.171772>,  <47.154152, 35.444160, 36.453693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873436, 35.402702, 36.171772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052780, 0.979077, -0.196525,
		0.710428, -0.175118, -0.681634,
		-0.701788, -0.103641, -0.704806,
		46.662899, 35.371609, 35.960331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.473526, 35.518215, 35.818619>,  <47.154152, 35.444160, 36.453693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.473526, 35.518215, 35.818619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092461, 35.639713, 35.813511>,  <46.863819, 35.712612, 35.810448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092461, 35.639713, 35.813511>,  <47.473526, 35.518215, 35.818619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092461, 35.639713, 35.813511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278618, 0.855502, -0.436450,
		-0.121650, -0.419348, -0.899638,
		-0.952666, 0.303749, -0.012766,
		46.806660, 35.730839, 35.809681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909210, 34.893520, 35.569546>,  <47.473526, 35.518215, 35.818619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909210, 34.893520, 35.569546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752785, 34.795696, 35.214634>,  <47.658928, 34.737003, 35.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752785, 34.795696, 35.214634>,  <47.909210, 34.893520, 35.569546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.752785, 34.795696, 35.214634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034168, -0.959529, 0.279530,
		-0.919729, 0.139631, 0.366880,
		-0.391063, -0.244556, -0.887278,
		47.635468, 34.722328, 34.948452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.401241, 42.921597, 41.522728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096069, 42.725872, 41.691727>,  <35.912964, 42.608437, 41.793125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096069, 42.725872, 41.691727>,  <36.401241, 42.921597, 41.522728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096069, 42.725872, 41.691727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090430, -0.566339, -0.819196,
		0.640121, -0.663199, 0.387831,
		-0.762934, -0.489313, 0.422498,
		35.867188, 42.579079, 41.818478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528255, 42.241604, 41.398636>,  <36.401241, 42.921597, 41.522728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528255, 42.241604, 41.398636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.137341, 42.242207, 41.483402>,  <35.902790, 42.242569, 41.534260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.137341, 42.242207, 41.483402>,  <36.528255, 42.241604, 41.398636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137341, 42.242207, 41.483402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177880, -0.549383, -0.816418,
		0.115189, -0.835570, 0.537173,
		-0.977287, 0.001510, 0.211914,
		35.844154, 42.242661, 41.546978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339005, 41.560440, 41.316406>,  <36.528255, 42.241604, 41.398636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339005, 41.560440, 41.316406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991554, 41.751839, 41.264992>,  <35.783085, 41.866680, 41.234142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991554, 41.751839, 41.264992>,  <36.339005, 41.560440, 41.316406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991554, 41.751839, 41.264992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127203, -0.466099, -0.875540,
		-0.478859, -0.744168, 0.465733,
		-0.868627, 0.478503, -0.128535,
		35.730965, 41.895390, 41.226433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978363, 40.940571, 41.062611>,  <36.339005, 41.560440, 41.316406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978363, 40.940571, 41.062611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767399, 41.267487, 40.969765>,  <35.640820, 41.463634, 40.914059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767399, 41.267487, 40.969765>,  <35.978363, 40.940571, 41.062611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767399, 41.267487, 40.969765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488768, -0.515331, -0.703946,
		-0.694941, -0.257821, 0.671256,
		-0.527411, 0.817289, -0.232111,
		35.609177, 41.512672, 40.900131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276337, 40.767841, 41.032951>,  <35.978363, 40.940571, 41.062611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276337, 40.767841, 41.032951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292767, 41.100231, 40.811031>,  <35.302624, 41.299664, 40.677879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292767, 41.100231, 40.811031>,  <35.276337, 40.767841, 41.032951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292767, 41.100231, 40.811031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412640, -0.491592, -0.766855,
		-0.909968, 0.260431, 0.322699,
		0.041076, 0.830971, -0.554796,
		35.305088, 41.349522, 40.644592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591427, 40.734100, 40.596935>,  <35.276337, 40.767841, 41.032951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591427, 40.734100, 40.596935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839848, 40.989811, 40.415554>,  <34.988899, 41.143238, 40.306725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839848, 40.989811, 40.415554>,  <34.591427, 40.734100, 40.596935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839848, 40.989811, 40.415554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267894, -0.370561, -0.889335,
		-0.736563, 0.673802, -0.058880,
		0.621055, 0.639277, -0.453449,
		35.026165, 41.181595, 40.279518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188541, 41.068047, 40.110523>,  <34.591427, 40.734100, 40.596935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188541, 41.068047, 40.110523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570198, 41.092911, 39.993397>,  <34.799194, 41.107830, 39.923122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570198, 41.092911, 39.993397>,  <34.188541, 41.068047, 40.110523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570198, 41.092911, 39.993397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261394, -0.303662, -0.916222,
		-0.145870, 0.950750, -0.273489,
		0.954146, 0.062161, -0.292816,
		34.856441, 41.111561, 39.905552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124016, 41.206253, 39.444458>,  <34.188541, 41.068047, 40.110523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124016, 41.206253, 39.444458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502281, 41.084534, 39.490273>,  <34.729240, 41.011501, 39.517761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502281, 41.084534, 39.490273>,  <34.124016, 41.206253, 39.444458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502281, 41.084534, 39.490273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049998, -0.484172, -0.873543,
		0.321268, 0.820355, -0.473080,
		0.945667, -0.304295, 0.114534,
		34.785980, 40.993244, 39.524632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355408, 41.135635, 38.722076>,  <34.124016, 41.206253, 39.444458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355408, 41.135635, 38.722076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651970, 40.934387, 38.899704>,  <34.829906, 40.813641, 39.006279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651970, 40.934387, 38.899704>,  <34.355408, 41.135635, 38.722076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651970, 40.934387, 38.899704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084737, -0.586250, -0.805686,
		0.665689, 0.634967, -0.392015,
		0.741403, -0.503118, 0.444066,
		34.874390, 40.783451, 39.032925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958935, 41.076645, 38.394970>,  <34.355408, 41.135635, 38.722076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958935, 41.076645, 38.394970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000271, 40.758503, 38.633877>,  <35.025074, 40.567616, 38.777222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000271, 40.758503, 38.633877>,  <34.958935, 41.076645, 38.394970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000271, 40.758503, 38.633877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373081, -0.525641, -0.764534,
		0.922026, 0.301836, 0.242413,
		0.103342, -0.795359, 0.597264,
		35.031273, 40.519894, 38.813057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646244, 40.891933, 38.399532>,  <34.958935, 41.076645, 38.394970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646244, 40.891933, 38.399532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432289, 40.556049, 38.437031>,  <35.303917, 40.354519, 38.459530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432289, 40.556049, 38.437031>,  <35.646244, 40.891933, 38.399532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432289, 40.556049, 38.437031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372833, -0.334132, -0.865651,
		0.758217, -0.428072, 0.491793,
		-0.534885, -0.839708, 0.093745,
		35.271824, 40.304138, 38.465153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094597, 40.436031, 38.167339>,  <35.646244, 40.891933, 38.399532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094597, 40.436031, 38.167339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730297, 40.271553, 38.152107>,  <35.511715, 40.172867, 38.142967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730297, 40.271553, 38.152107>,  <36.094597, 40.436031, 38.167339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730297, 40.271553, 38.152107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236328, -0.443381, -0.864617,
		0.338641, -0.796451, 0.500987,
		-0.910753, -0.411192, -0.038076,
		35.457069, 40.148197, 38.140686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270905, 39.731827, 38.056469>,  <36.094597, 40.436031, 38.167339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270905, 39.731827, 38.056469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895164, 39.791954, 37.933170>,  <35.669720, 39.828030, 37.859192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895164, 39.791954, 37.933170>,  <36.270905, 39.731827, 38.056469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895164, 39.791954, 37.933170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185433, -0.533483, -0.825234,
		-0.288491, -0.832347, 0.473256,
		-0.939355, 0.150315, -0.308250,
		35.613358, 39.837048, 37.840694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049175, 39.115425, 37.837440>,  <36.270905, 39.731827, 38.056469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049175, 39.115425, 37.837440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788467, 39.349976, 37.645039>,  <35.632042, 39.490704, 37.529598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788467, 39.349976, 37.645039>,  <36.049175, 39.115425, 37.837440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788467, 39.349976, 37.645039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035052, -0.610252, -0.791432,
		-0.757608, -0.532690, 0.377189,
		-0.651768, 0.586374, -0.481003,
		35.592937, 39.525887, 37.500736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551868, 38.638340, 37.521366>,  <36.049175, 39.115425, 37.837440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551868, 38.638340, 37.521366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520573, 38.981091, 37.317547>,  <35.501797, 39.186741, 37.195255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520573, 38.981091, 37.317547>,  <35.551868, 38.638340, 37.521366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520573, 38.981091, 37.317547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124410, -0.498733, -0.857781,
		-0.989142, -0.130502, -0.067586,
		-0.078234, 0.856875, -0.509553,
		35.497101, 39.238152, 37.164680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021076, 38.535130, 37.086441>,  <35.551868, 38.638340, 37.521366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021076, 38.535130, 37.086441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216484, 38.845348, 36.926506>,  <35.333729, 39.031479, 36.830544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216484, 38.845348, 36.926506>,  <35.021076, 38.535130, 37.086441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216484, 38.845348, 36.926506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339826, -0.591167, -0.731464,
		-0.803656, 0.221462, -0.552350,
		0.488523, 0.775549, -0.399837,
		35.363041, 39.078014, 36.806557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818962, 38.548126, 36.396877>,  <35.021076, 38.535130, 37.086441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818962, 38.548126, 36.396877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148232, 38.775238, 36.395016>,  <35.345791, 38.911503, 36.393898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148232, 38.775238, 36.395016>,  <34.818962, 38.548126, 36.396877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148232, 38.775238, 36.395016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411560, -0.602300, -0.683998,
		-0.391162, 0.561130, -0.729469,
		0.823171, 0.567775, -0.004658,
		35.395184, 38.945572, 36.393620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908333, 38.728844, 35.693165>,  <34.818962, 38.548126, 36.396877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908333, 38.728844, 35.693165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267143, 38.758415, 35.867466>,  <35.482430, 38.776157, 35.972046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267143, 38.758415, 35.867466>,  <34.908333, 38.728844, 35.693165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267143, 38.758415, 35.867466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387495, -0.605773, -0.694901,
		0.212597, 0.792196, -0.572039,
		0.897023, 0.073928, 0.435757,
		35.536251, 38.780594, 35.998192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284481, 38.586460, 35.180107>,  <34.908333, 38.728844, 35.693165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284481, 38.586460, 35.180107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547527, 38.530994, 35.476299>,  <35.705357, 38.497715, 35.654015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547527, 38.530994, 35.476299>,  <35.284481, 38.586460, 35.180107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547527, 38.530994, 35.476299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598404, -0.500971, -0.625252,
		0.457659, 0.854284, -0.246472,
		0.657618, -0.138662, 0.740481,
		35.744812, 38.489395, 35.698444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863380, 38.558014, 34.839836>,  <35.284481, 38.586460, 35.180107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863380, 38.558014, 34.839836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991329, 38.406868, 35.187378>,  <36.068096, 38.316181, 35.395901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991329, 38.406868, 35.187378>,  <35.863380, 38.558014, 34.839836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991329, 38.406868, 35.187378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582747, -0.644598, -0.494873,
		0.747054, 0.664615, 0.014011,
		0.319869, -0.377862, 0.868852,
		36.087292, 38.293510, 35.448032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562931, 38.425583, 34.783764>,  <35.863380, 38.558014, 34.839836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562931, 38.425583, 34.783764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441902, 38.191990, 35.085072>,  <36.369286, 38.051834, 35.265858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441902, 38.191990, 35.085072>,  <36.562931, 38.425583, 34.783764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441902, 38.191990, 35.085072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574873, -0.742194, -0.344485,
		0.760245, 0.328804, 0.560282,
		-0.302570, -0.583983, 0.753269,
		36.351131, 38.016796, 35.311054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122730, 38.297390, 35.087330>,  <36.562931, 38.425583, 34.783764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122730, 38.297390, 35.087330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866257, 37.994499, 35.137112>,  <36.712372, 37.812763, 35.166981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866257, 37.994499, 35.137112>,  <37.122730, 38.297390, 35.087330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866257, 37.994499, 35.137112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650830, -0.622523, -0.434610,
		0.406577, -0.197664, 0.891978,
		-0.641183, -0.757228, 0.124458,
		36.673901, 37.767330, 35.174450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489742, 37.622429, 35.038311>,  <37.122730, 38.297390, 35.087330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489742, 37.622429, 35.038311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798893, 37.725815, 34.806496>,  <37.984383, 37.787846, 34.667408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798893, 37.725815, 34.806496>,  <37.489742, 37.622429, 35.038311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798893, 37.725815, 34.806496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339978, 0.602484, 0.722100,
		0.535797, -0.755122, 0.377773,
		0.772876, 0.258464, -0.579535,
		38.030754, 37.803356, 34.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236309, 37.511047, 35.415253>,  <37.489742, 37.622429, 35.038311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236309, 37.511047, 35.415253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331173, 37.767597, 35.123390>,  <38.388092, 37.921528, 34.948273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331173, 37.767597, 35.123390>,  <38.236309, 37.511047, 35.415253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331173, 37.767597, 35.123390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607808, 0.487956, 0.626473,
		0.757841, -0.592067, -0.274105,
		0.237163, 0.641370, -0.729656,
		38.402321, 37.960007, 34.904495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022270, 37.621521, 35.304844>,  <38.236309, 37.511047, 35.415253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022270, 37.621521, 35.304844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843872, 37.958626, 35.184280>,  <38.736832, 38.160889, 35.111942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843872, 37.958626, 35.184280>,  <39.022270, 37.621521, 35.304844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843872, 37.958626, 35.184280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608940, 0.532514, 0.587895,
		0.655955, 0.078663, -0.750690,
		-0.445999, 0.842758, -0.301404,
		38.710072, 38.211452, 35.093861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486164, 38.073463, 35.502621>,  <39.022270, 37.621521, 35.304844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486164, 38.073463, 35.502621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194859, 38.316586, 35.375999>,  <39.020077, 38.462460, 35.300026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194859, 38.316586, 35.375999>,  <39.486164, 38.073463, 35.502621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194859, 38.316586, 35.375999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292919, 0.693688, 0.658024,
		0.619539, 0.386491, -0.683225,
		-0.728265, 0.607801, -0.316556,
		38.976379, 38.498924, 35.281033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770935, 38.775005, 35.552486>,  <39.486164, 38.073463, 35.502621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770935, 38.775005, 35.552486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378113, 38.839603, 35.513519>,  <39.142422, 38.878365, 35.490139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378113, 38.839603, 35.513519>,  <39.770935, 38.775005, 35.552486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378113, 38.839603, 35.513519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069328, 0.789459, 0.609876,
		0.175402, 0.592177, -0.786486,
		-0.982053, 0.161499, -0.097418,
		39.083496, 38.888054, 35.484295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775391, 39.556992, 35.434727>,  <39.770935, 38.775005, 35.552486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775391, 39.556992, 35.434727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408718, 39.457150, 35.559563>,  <39.188717, 39.397243, 35.634464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408718, 39.457150, 35.559563>,  <39.775391, 39.556992, 35.434727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408718, 39.457150, 35.559563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033815, 0.826595, 0.561780,
		-0.398195, 0.504418, -0.766162,
		-0.916677, -0.249606, 0.312089,
		39.133717, 39.382267, 35.653191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381695, 40.145206, 35.446388>,  <39.775391, 39.556992, 35.434727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381695, 40.145206, 35.446388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193027, 39.884571, 35.684032>,  <39.079826, 39.728191, 35.826618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193027, 39.884571, 35.684032>,  <39.381695, 40.145206, 35.446388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193027, 39.884571, 35.684032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076298, 0.641076, 0.763676,
		-0.878471, 0.405528, -0.252657,
		-0.471664, -0.651590, 0.594108,
		39.051529, 39.689095, 35.862267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891617, 40.635674, 35.815090>,  <39.381695, 40.145206, 35.446388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891617, 40.635674, 35.815090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913280, 40.297169, 36.027092>,  <38.926277, 40.094067, 36.154293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913280, 40.297169, 36.027092>,  <38.891617, 40.635674, 35.815090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913280, 40.297169, 36.027092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025170, 0.529455, 0.847964,
		-0.998215, -0.059262, 0.007373,
		0.054156, -0.846265, 0.530002,
		38.929527, 40.043289, 36.186092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238808, 40.594818, 36.366024>,  <38.891617, 40.635674, 35.815090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238808, 40.594818, 36.366024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510674, 40.334999, 36.502342>,  <38.673794, 40.179108, 36.584133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510674, 40.334999, 36.502342>,  <38.238808, 40.594818, 36.366024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510674, 40.334999, 36.502342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049539, 0.422895, 0.904823,
		-0.731847, -0.631860, 0.255250,
		0.679666, -0.649548, 0.340797,
		38.714573, 40.140133, 36.604580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978275, 40.323524, 36.824490>,  <38.238808, 40.594818, 36.366024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978275, 40.323524, 36.824490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359921, 40.246643, 36.916332>,  <38.588909, 40.200516, 36.971439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359921, 40.246643, 36.916332>,  <37.978275, 40.323524, 36.824490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359921, 40.246643, 36.916332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096789, 0.527678, 0.843912,
		-0.283359, -0.827414, 0.484864,
		0.954117, -0.192201, 0.229607,
		38.646156, 40.188984, 36.985214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917862, 40.386433, 37.554546>,  <37.978275, 40.323524, 36.824490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917862, 40.386433, 37.554546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316013, 40.370739, 37.519478>,  <38.554905, 40.361324, 37.498436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316013, 40.370739, 37.519478>,  <37.917862, 40.386433, 37.554546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316013, 40.370739, 37.519478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095602, 0.492977, 0.864774,
		0.009292, -0.869157, 0.494449,
		0.995376, -0.039235, -0.087674,
		38.614628, 40.358967, 37.493176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263702, 40.061291, 38.109791>,  <37.917862, 40.386433, 37.554546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263702, 40.061291, 38.109791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531826, 40.311459, 37.950024>,  <38.692699, 40.461559, 37.854164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531826, 40.311459, 37.950024>,  <38.263702, 40.061291, 38.109791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531826, 40.311459, 37.950024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108110, 0.450193, 0.886362,
		0.734164, -0.637318, 0.234155,
		0.670310, 0.625421, -0.399416,
		38.732918, 40.499084, 37.830200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894672, 40.035435, 38.485695>,  <38.263702, 40.061291, 38.109791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894672, 40.035435, 38.485695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.823624, 40.392139, 38.319221>,  <38.780994, 40.606163, 38.219337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.823624, 40.392139, 38.319221>,  <38.894672, 40.035435, 38.485695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823624, 40.392139, 38.319221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081267, 0.434752, 0.896875,
		0.980738, 0.125482, -0.149692,
		-0.177620, 0.891765, -0.416181,
		38.770336, 40.659668, 38.194366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157070, 40.543358, 38.829556>,  <38.894672, 40.035435, 38.485695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157070, 40.543358, 38.829556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872162, 40.753437, 38.643291>,  <38.701218, 40.879486, 38.531532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872162, 40.753437, 38.643291>,  <39.157070, 40.543358, 38.829556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872162, 40.753437, 38.643291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084405, 0.594522, 0.799637,
		0.696814, 0.608860, -0.379130,
		-0.712268, 0.525198, -0.465662,
		38.658482, 40.910995, 38.503593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396229, 41.227768, 39.043060>,  <39.157070, 40.543358, 38.829556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396229, 41.227768, 39.043060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018272, 41.270592, 38.919308>,  <38.791500, 41.296288, 38.845055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018272, 41.270592, 38.919308>,  <39.396229, 41.227768, 39.043060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018272, 41.270592, 38.919308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223226, 0.480584, 0.848062,
		0.239478, 0.870389, -0.430201,
		-0.944892, 0.107060, -0.309383,
		38.734806, 41.302711, 38.826492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282314, 41.906658, 39.176258>,  <39.396229, 41.227768, 39.043060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282314, 41.906658, 39.176258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922146, 41.738850, 39.130226>,  <38.706043, 41.638165, 39.102608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922146, 41.738850, 39.130226>,  <39.282314, 41.906658, 39.176258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922146, 41.738850, 39.130226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316508, 0.450292, 0.834901,
		-0.298437, 0.788188, -0.538234,
		-0.900421, -0.419520, -0.115084,
		38.652020, 41.612995, 39.095699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822254, 42.425301, 39.289822>,  <39.282314, 41.906658, 39.176258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822254, 42.425301, 39.289822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606777, 42.089970, 39.323349>,  <38.477489, 41.888771, 39.343464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606777, 42.089970, 39.323349>,  <38.822254, 42.425301, 39.289822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606777, 42.089970, 39.323349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480327, 0.387328, 0.786933,
		-0.692168, 0.383656, -0.611320,
		-0.538693, -0.838323, 0.083816,
		38.445168, 41.838474, 39.348495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151829, 42.629784, 39.127647>,  <38.822254, 42.425301, 39.289822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151829, 42.629784, 39.127647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.163551, 42.329479, 39.391613>,  <38.170586, 42.149296, 39.549992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.163551, 42.329479, 39.391613>,  <38.151829, 42.629784, 39.127647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163551, 42.329479, 39.391613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313959, 0.619877, 0.719154,
		-0.948984, -0.228260, -0.217546,
		0.029303, -0.750766, 0.659918,
		38.172340, 42.104248, 39.589588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.678288, 42.752575, 39.670269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876434, 42.470135, 39.872669>,  <37.995323, 42.300671, 39.994110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876434, 42.470135, 39.872669>,  <37.678288, 42.752575, 39.670269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876434, 42.470135, 39.872669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239836, 0.448681, 0.860909,
		-0.834917, -0.547826, 0.052916,
		0.495371, -0.706096, 0.506000,
		38.025047, 42.258305, 40.024467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209385, 42.632454, 40.138096>,  <37.678288, 42.752575, 39.670269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209385, 42.632454, 40.138096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565056, 42.493206, 40.256870>,  <37.778458, 42.409657, 40.328136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565056, 42.493206, 40.256870>,  <37.209385, 42.632454, 40.138096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565056, 42.493206, 40.256870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181540, 0.327279, 0.927325,
		-0.420004, -0.878464, 0.227812,
		0.889179, -0.348123, 0.296935,
		37.831810, 42.388771, 40.345951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082691, 42.503471, 40.761673>,  <37.209385, 42.632454, 40.138096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082691, 42.503471, 40.761673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482529, 42.503819, 40.750294>,  <37.722431, 42.504028, 40.743465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482529, 42.503819, 40.750294>,  <37.082691, 42.503471, 40.761673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482529, 42.503819, 40.750294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024466, 0.484709, 0.874333,
		0.014550, -0.874675, 0.484491,
		0.999595, 0.000868, -0.028452,
		37.782406, 42.504078, 40.741756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281200, 42.301346, 41.392735>,  <37.082691, 42.503471, 40.761673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281200, 42.301346, 41.392735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610836, 42.490822, 41.268475>,  <37.808617, 42.604507, 41.193920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610836, 42.490822, 41.268475>,  <37.281200, 42.301346, 41.392735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610836, 42.490822, 41.268475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066987, 0.463061, 0.883791,
		0.562492, -0.749128, 0.349871,
		0.824085, 0.473689, -0.310650,
		37.858063, 42.632927, 41.175282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910870, 42.237167, 41.975899>,  <37.281200, 42.301346, 41.392735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910870, 42.237167, 41.975899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021297, 42.534786, 41.732529>,  <38.087555, 42.713356, 41.586506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021297, 42.534786, 41.732529>,  <37.910870, 42.237167, 41.975899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021297, 42.534786, 41.732529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447219, 0.460882, 0.766539,
		0.850753, -0.483717, -0.205517,
		0.276069, 0.744047, -0.608424,
		38.104118, 42.757999, 41.550003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626148, 42.404610, 42.137833>,  <37.910870, 42.237167, 41.975899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626148, 42.404610, 42.137833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456558, 42.718414, 41.956821>,  <38.354805, 42.906696, 41.848213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456558, 42.718414, 41.956821>,  <38.626148, 42.404610, 42.137833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456558, 42.718414, 41.956821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443503, 0.615495, 0.651514,
		0.789650, 0.075531, -0.608891,
		-0.423979, 0.784513, -0.452528,
		38.329365, 42.953770, 41.821064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127724, 42.858997, 42.189075>,  <38.626148, 42.404610, 42.137833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127724, 42.858997, 42.189075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812172, 43.092762, 42.113037>,  <38.622841, 43.233021, 42.067413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812172, 43.092762, 42.113037>,  <39.127724, 42.858997, 42.189075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812172, 43.092762, 42.113037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395164, 0.719283, 0.571382,
		0.470655, 0.375631, -0.798364,
		-0.788879, 0.584409, -0.190098,
		38.575508, 43.268085, 42.056007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429207, 43.571815, 42.146626>,  <39.127724, 42.858997, 42.189075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429207, 43.571815, 42.146626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036236, 43.579327, 42.220913>,  <38.800453, 43.583832, 42.265484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036236, 43.579327, 42.220913>,  <39.429207, 43.571815, 42.146626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036236, 43.579327, 42.220913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137242, 0.747014, 0.650488,
		-0.126518, 0.664544, -0.736461,
		-0.982424, 0.018775, 0.185714,
		38.741508, 43.584961, 42.276627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171825, 44.282738, 41.913246>,  <39.429207, 43.571815, 42.146626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171825, 44.282738, 41.913246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920029, 44.128223, 42.182919>,  <38.768951, 44.035515, 42.344723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920029, 44.128223, 42.182919>,  <39.171825, 44.282738, 41.913246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920029, 44.128223, 42.182919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209585, 0.751092, 0.626047,
		-0.748208, 0.535390, -0.391845,
		-0.629491, -0.386288, 0.674183,
		38.731182, 44.012337, 42.385174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860817, 44.913235, 42.060337>,  <39.171825, 44.282738, 41.913246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860817, 44.913235, 42.060337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752415, 44.659122, 42.349606>,  <38.687374, 44.506653, 42.523167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752415, 44.659122, 42.349606>,  <38.860817, 44.913235, 42.060337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752415, 44.659122, 42.349606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014242, 0.753847, 0.656896,
		-0.962473, 0.167722, -0.213343,
		-0.271004, -0.635283, 0.723168,
		38.671112, 44.468536, 42.566555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352436, 45.284973, 42.477627>,  <38.860817, 44.913235, 42.060337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352436, 45.284973, 42.477627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473866, 44.984928, 42.712635>,  <38.546722, 44.804901, 42.853638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473866, 44.984928, 42.712635>,  <38.352436, 45.284973, 42.477627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473866, 44.984928, 42.712635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005257, 0.617925, 0.786220,
		-0.952794, -0.235585, 0.191528,
		0.303572, -0.750112, 0.587516,
		38.564938, 44.759895, 42.888889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988544, 45.339550, 43.111393>,  <38.352436, 45.284973, 42.477627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988544, 45.339550, 43.111393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316799, 45.125019, 43.190289>,  <38.513752, 44.996300, 43.237625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316799, 45.125019, 43.190289>,  <37.988544, 45.339550, 43.111393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316799, 45.125019, 43.190289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157378, 0.543934, 0.824238,
		-0.549345, -0.645362, 0.530780,
		0.820641, -0.536324, 0.197242,
		38.562992, 44.964123, 43.249462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896091, 45.050186, 43.807037>,  <37.988544, 45.339550, 43.111393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896091, 45.050186, 43.807037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281982, 45.067360, 43.703144>,  <38.513515, 45.077663, 43.640808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281982, 45.067360, 43.703144>,  <37.896091, 45.050186, 43.807037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281982, 45.067360, 43.703144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200959, 0.517215, 0.831928,
		0.170057, -0.854778, 0.490342,
		0.964726, 0.042937, -0.259731,
		38.571400, 45.080242, 43.625225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176140, 44.899632, 44.437153>,  <37.896091, 45.050186, 43.807037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176140, 44.899632, 44.437153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472866, 45.055405, 44.218777>,  <38.650902, 45.148869, 44.087753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472866, 45.055405, 44.218777>,  <38.176140, 44.899632, 44.437153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472866, 45.055405, 44.218777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452492, 0.310161, 0.836093,
		0.494931, -0.867261, 0.053868,
		0.741819, 0.389433, -0.545937,
		38.695412, 45.172234, 44.054996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815685, 44.924442, 44.931042>,  <38.176140, 44.899632, 44.437153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815685, 44.924442, 44.931042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980385, 45.153599, 44.647560>,  <39.079205, 45.291092, 44.477470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980385, 45.153599, 44.647560>,  <38.815685, 44.924442, 44.931042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980385, 45.153599, 44.647560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581540, 0.433570, 0.688352,
		0.701625, -0.695564, -0.154641,
		0.411745, 0.572895, -0.708701,
		39.103909, 45.325466, 44.434948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600304, 44.856884, 44.950031>,  <38.815685, 44.924442, 44.931042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600304, 44.856884, 44.950031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476028, 45.215698, 44.824299>,  <39.401463, 45.430988, 44.748859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476028, 45.215698, 44.824299>,  <39.600304, 44.856884, 44.950031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476028, 45.215698, 44.824299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609229, 0.441763, 0.658548,
		0.729600, 0.013102, -0.683749,
		-0.310683, 0.897036, -0.314328,
		39.382824, 45.484810, 44.730000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232506, 45.239418, 44.745350>,  <39.600304, 44.856884, 44.950031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232506, 45.239418, 44.745350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941509, 45.494934, 44.845516>,  <39.766911, 45.648243, 44.905617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941509, 45.494934, 44.845516>,  <40.232506, 45.239418, 44.745350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941509, 45.494934, 44.845516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622442, 0.460890, 0.632571,
		0.288663, 0.616060, -0.732901,
		-0.727489, 0.638788, 0.250420,
		39.723263, 45.686569, 44.920643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594784, 45.753052, 45.080460>,  <40.232506, 45.239418, 44.745350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594784, 45.753052, 45.080460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.233452, 45.903404, 45.163124>,  <40.016651, 45.993614, 45.212723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.233452, 45.903404, 45.163124>,  <40.594784, 45.753052, 45.080460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233452, 45.903404, 45.163124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391867, 0.527226, 0.753972,
		0.174447, 0.762069, -0.623554,
		-0.903332, 0.375878, 0.206657,
		39.962452, 46.016167, 45.225121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687752, 46.467724, 45.223198>,  <40.594784, 45.753052, 45.080460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687752, 46.467724, 45.223198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341206, 46.372219, 45.398655>,  <40.133278, 46.314915, 45.503929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341206, 46.372219, 45.398655>,  <40.687752, 46.467724, 45.223198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341206, 46.372219, 45.398655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269928, 0.515096, 0.813520,
		-0.420181, 0.823206, -0.381811,
		-0.866364, -0.238765, 0.438640,
		40.081295, 46.300591, 45.530247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565132, 46.962681, 45.566196>,  <40.687752, 46.467724, 45.223198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565132, 46.962681, 45.566196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.306568, 46.720219, 45.751553>,  <40.151428, 46.574741, 45.862766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.306568, 46.720219, 45.751553>,  <40.565132, 46.962681, 45.566196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306568, 46.720219, 45.751553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212490, 0.440292, 0.872348,
		-0.732803, 0.662362, -0.155808,
		-0.646411, -0.606151, 0.463393,
		40.112644, 46.538372, 45.890572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277752, 47.406338, 46.067764>,  <40.565132, 46.962681, 45.566196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277752, 47.406338, 46.067764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.175308, 47.047615, 46.212070>,  <40.113842, 46.832382, 46.298653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.175308, 47.047615, 46.212070>,  <40.277752, 47.406338, 46.067764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175308, 47.047615, 46.212070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011431, 0.375994, 0.926551,
		-0.966580, 0.233175, -0.106548,
		-0.256110, -0.896804, 0.360763,
		40.098476, 46.778572, 46.320301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479164, 47.357841, 46.358669>,  <40.277752, 47.406338, 46.067764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479164, 47.357841, 46.358669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755394, 47.121479, 46.525494>,  <39.921131, 46.979660, 46.625587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755394, 47.121479, 46.525494>,  <39.479164, 47.357841, 46.358669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755394, 47.121479, 46.525494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132475, 0.463537, 0.876119,
		-0.711025, -0.660275, 0.241827,
		0.690575, -0.590907, 0.417057,
		39.962566, 46.944206, 46.650612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477551, 47.386730, 47.020237>,  <39.479164, 47.357841, 46.358669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477551, 47.386730, 47.020237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402168, 47.031563, 46.852386>,  <39.356937, 46.818462, 46.751675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402168, 47.031563, 46.852386>,  <39.477551, 47.386730, 47.020237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402168, 47.031563, 46.852386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255923, -0.456921, 0.851896,
		-0.948150, 0.053151, 0.313348,
		-0.188455, -0.887918, -0.419627,
		39.345631, 46.765186, 46.726498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862904, 46.894100, 47.135029>,  <39.477551, 47.386730, 47.020237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862904, 46.894100, 47.135029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182755, 46.668781, 47.051800>,  <39.374664, 46.533592, 47.001862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182755, 46.668781, 47.051800>,  <38.862904, 46.894100, 47.135029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182755, 46.668781, 47.051800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029742, -0.383226, 0.923176,
		-0.599758, -0.732009, -0.323192,
		0.799628, -0.563295, -0.208072,
		39.422642, 46.499794, 46.989380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850204, 46.292389, 47.619972>,  <38.862904, 46.894100, 47.135029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850204, 46.292389, 47.619972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653584, 46.196918, 47.954975>,  <38.535610, 46.139637, 48.155975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653584, 46.196918, 47.954975>,  <38.850204, 46.292389, 47.619972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653584, 46.196918, 47.954975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403699, -0.789682, -0.461985,
		0.771626, -0.565188, 0.291816,
		-0.491550, -0.238674, 0.837504,
		38.506119, 46.125317, 48.206226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987419, 45.569263, 47.801323>,  <38.850204, 46.292389, 47.619972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987419, 45.569263, 47.801323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637295, 45.672783, 47.964710>,  <38.427219, 45.734894, 48.062744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637295, 45.672783, 47.964710>,  <38.987419, 45.569263, 47.801323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637295, 45.672783, 47.964710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455775, -0.723747, -0.518131,
		0.161536, -0.639698, 0.751460,
		-0.875314, 0.258800, 0.408470,
		38.374699, 45.750423, 48.087250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640564, 44.949810, 47.958000>,  <38.987419, 45.569263, 47.801323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640564, 44.949810, 47.958000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375168, 45.247608, 47.928303>,  <38.215931, 45.426285, 47.910484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375168, 45.247608, 47.928303>,  <38.640564, 44.949810, 47.958000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375168, 45.247608, 47.928303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635773, -0.613332, -0.468632,
		-0.394428, -0.263731, 0.880268,
		-0.663490, 0.744493, -0.074242,
		38.176121, 45.470955, 47.906029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079006, 44.574245, 48.142620>,  <38.640564, 44.949810, 47.958000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079006, 44.574245, 48.142620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951649, 44.906742, 47.960342>,  <37.875233, 45.106239, 47.850975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951649, 44.906742, 47.960342>,  <38.079006, 44.574245, 48.142620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951649, 44.906742, 47.960342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684713, -0.534114, -0.495873,
		-0.655584, 0.154137, 0.739223,
		-0.318397, 0.831242, -0.455697,
		37.856129, 45.156116, 47.823635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377468, 44.456554, 48.033642>,  <38.079006, 44.574245, 48.142620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377468, 44.456554, 48.033642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486233, 44.748489, 47.782757>,  <37.551491, 44.923653, 47.632225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486233, 44.748489, 47.782757>,  <37.377468, 44.456554, 48.033642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486233, 44.748489, 47.782757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557885, -0.411515, -0.720708,
		-0.784110, 0.545882, 0.295271,
		0.271913, 0.729841, -0.627212,
		37.567806, 44.967442, 47.594593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792000, 44.524506, 47.668072>,  <37.377468, 44.456554, 48.033642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792000, 44.524506, 47.668072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077717, 44.688732, 47.441364>,  <37.249146, 44.787266, 47.305340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077717, 44.688732, 47.441364>,  <36.792000, 44.524506, 47.668072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077717, 44.688732, 47.441364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375485, -0.458597, -0.805419,
		-0.590594, 0.788116, -0.173411,
		0.714290, 0.410562, -0.566771,
		37.292004, 44.811901, 47.271332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520393, 44.895889, 47.064865>,  <36.792000, 44.524506, 47.668072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520393, 44.895889, 47.064865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888771, 44.772617, 46.969452>,  <37.109798, 44.698654, 46.912205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888771, 44.772617, 46.969452>,  <36.520393, 44.895889, 47.064865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888771, 44.772617, 46.969452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357807, -0.426144, -0.830888,
		0.154413, 0.850546, -0.502721,
		0.920940, -0.308177, -0.238529,
		37.165054, 44.680164, 46.897892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464649, 45.062946, 46.362450>,  <36.520393, 44.895889, 47.064865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464649, 45.062946, 46.362450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791252, 44.833294, 46.386749>,  <36.987213, 44.695503, 46.401329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791252, 44.833294, 46.386749>,  <36.464649, 45.062946, 46.362450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791252, 44.833294, 46.386749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195781, -0.374336, -0.906390,
		0.543122, 0.728184, -0.418052,
		0.816510, -0.574126, 0.060745,
		37.036205, 44.661057, 46.404972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895626, 45.278839, 45.842453>,  <36.464649, 45.062946, 46.362450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895626, 45.278839, 45.842453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004185, 44.905003, 45.934433>,  <37.069321, 44.680698, 45.989620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004185, 44.905003, 45.934433>,  <36.895626, 45.278839, 45.842453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004185, 44.905003, 45.934433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129907, -0.272303, -0.953402,
		0.953660, 0.228880, -0.195313,
		0.271399, -0.934594, 0.229951,
		37.085606, 44.624626, 46.003418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396828, 45.037716, 45.302891>,  <36.895626, 45.278839, 45.842453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396828, 45.037716, 45.302891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239563, 44.707737, 45.465313>,  <37.145203, 44.509750, 45.562767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239563, 44.707737, 45.465313>,  <37.396828, 45.037716, 45.302891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239563, 44.707737, 45.465313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011962, -0.446170, -0.894868,
		0.919390, -0.346973, 0.185286,
		-0.393164, -0.824950, 0.406054,
		37.121613, 44.460251, 45.587128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737598, 44.521576, 44.959183>,  <37.396828, 45.037716, 45.302891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737598, 44.521576, 44.959183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416698, 44.337563, 45.111378>,  <37.224159, 44.227154, 45.202694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416698, 44.337563, 45.111378>,  <37.737598, 44.521576, 44.959183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416698, 44.337563, 45.111378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131699, -0.485266, -0.864391,
		0.582287, -0.743564, 0.328716,
		-0.802245, -0.460032, 0.380491,
		37.176025, 44.199554, 45.225525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865761, 43.796276, 44.870892>,  <37.737598, 44.521576, 44.959183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865761, 43.796276, 44.870892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472706, 43.849136, 44.922985>,  <37.236874, 43.880852, 44.954243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472706, 43.849136, 44.922985>,  <37.865761, 43.796276, 44.870892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472706, 43.849136, 44.922985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180347, -0.515416, -0.837748,
		-0.043583, -0.846690, 0.530299,
		-0.982637, 0.132149, 0.130235,
		37.177914, 43.888783, 44.962055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507927, 43.140602, 44.540077>,  <37.865761, 43.796276, 44.870892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507927, 43.140602, 44.540077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180050, 43.367653, 44.570843>,  <36.983326, 43.503883, 44.589302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180050, 43.367653, 44.570843>,  <37.507927, 43.140602, 44.540077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180050, 43.367653, 44.570843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367448, -0.418042, -0.830796,
		-0.439436, -0.709248, 0.551238,
		-0.819681, 0.567633, 0.076909,
		36.934143, 43.537941, 44.593918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084068, 42.639053, 44.320278>,  <37.507927, 43.140602, 44.540077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084068, 42.639053, 44.320278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878578, 42.980984, 44.290997>,  <36.755283, 43.186142, 44.273426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878578, 42.980984, 44.290997>,  <37.084068, 42.639053, 44.320278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878578, 42.980984, 44.290997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256206, -0.234284, -0.937800,
		-0.818810, -0.463012, 0.339369,
		-0.513721, 0.854828, -0.073208,
		36.724461, 43.237431, 44.269035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418045, 42.478928, 44.077919>,  <37.084068, 42.639053, 44.320278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418045, 42.478928, 44.077919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.459755, 42.864223, 43.978882>,  <36.484783, 43.095402, 43.919460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.459755, 42.864223, 43.978882>,  <36.418045, 42.478928, 44.077919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459755, 42.864223, 43.978882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399835, -0.187341, -0.897238,
		-0.910636, 0.192558, 0.365600,
		0.104279, 0.963237, -0.247591,
		36.491039, 43.153194, 43.904606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720230, 42.780834, 44.041962>,  <36.418045, 42.478928, 44.077919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720230, 42.780834, 44.041962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003262, 42.959259, 43.822739>,  <36.173080, 43.066315, 43.691204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003262, 42.959259, 43.822739>,  <35.720230, 42.780834, 44.041962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003262, 42.959259, 43.822739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509357, -0.215620, -0.833105,
		-0.489786, 0.868642, 0.074635,
		0.707577, 0.446059, -0.548056,
		36.215534, 43.093079, 43.658321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284317, 43.356544, 43.707531>,  <35.720230, 42.780834, 44.041962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284317, 43.356544, 43.707531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611816, 43.291843, 43.487175>,  <35.808315, 43.253021, 43.354961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.611816, 43.291843, 43.487175>,  <35.284317, 43.356544, 43.707531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611816, 43.291843, 43.487175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572705, -0.162148, -0.803565,
		0.040652, 0.973419, -0.225395,
		0.818753, -0.161751, -0.550890,
		35.857441, 43.243317, 43.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155544, 43.636471, 42.959007>,  <35.284317, 43.356544, 43.707531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155544, 43.636471, 42.959007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.469765, 43.390511, 42.931278>,  <35.658295, 43.242935, 42.914642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.469765, 43.390511, 42.931278>,  <35.155544, 43.636471, 42.959007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469765, 43.390511, 42.931278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370316, -0.377396, -0.848786,
		0.495762, 0.692433, -0.524172,
		0.785548, -0.614905, -0.069321,
		35.705429, 43.206039, 42.910480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307194, 43.666107, 42.305950>,  <35.155544, 43.636471, 42.959007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307194, 43.666107, 42.305950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527668, 43.351532, 42.417458>,  <35.659954, 43.162788, 42.484364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527668, 43.351532, 42.417458>,  <35.307194, 43.666107, 42.305950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527668, 43.351532, 42.417458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088352, -0.387236, -0.917738,
		0.829691, 0.481215, -0.282923,
		0.551187, -0.786435, 0.278769,
		35.693024, 43.115601, 42.501087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867786, 43.484509, 41.761189>,  <35.307194, 43.666107, 42.305950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867786, 43.484509, 41.761189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787964, 43.147461, 41.961254>,  <35.740070, 42.945232, 42.081295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787964, 43.147461, 41.961254>,  <35.867786, 43.484509, 41.761189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787964, 43.147461, 41.961254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073716, -0.496076, -0.865144,
		0.977109, -0.209518, 0.036882,
		-0.199559, -0.842621, 0.500165,
		35.728096, 42.894676, 42.111305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.249290, 27.416172, 32.519302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291912, 27.513306, 32.133621>,  <43.317486, 27.571585, 31.902214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291912, 27.513306, 32.133621>,  <43.249290, 27.416172, 32.519302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291912, 27.513306, 32.133621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154452, 0.953906, 0.257309,
		0.982238, -0.176339, 0.064134,
		0.106552, 0.242833, -0.964199,
		43.323879, 27.586155, 31.844362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923836, 27.712633, 32.418098>,  <43.249290, 27.416172, 32.519302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923836, 27.712633, 32.418098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.655460, 27.839178, 32.149841>,  <43.494434, 27.915104, 31.988888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.655460, 27.839178, 32.149841>,  <43.923836, 27.712633, 32.418098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655460, 27.839178, 32.149841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142570, 0.942583, 0.302010,
		0.727680, 0.107016, -0.677517,
		-0.670937, 0.316360, -0.670641,
		43.454178, 27.934086, 31.948648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203876, 28.248413, 32.229946>,  <43.923836, 27.712633, 32.418098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203876, 28.248413, 32.229946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828682, 28.317430, 32.109669>,  <43.603565, 28.358841, 32.037502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828682, 28.317430, 32.109669>,  <44.203876, 28.248413, 32.229946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828682, 28.317430, 32.109669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022967, 0.896368, 0.442715,
		0.345921, 0.408353, -0.844740,
		-0.937982, 0.172545, -0.300694,
		43.547287, 28.369194, 32.019459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225613, 28.932333, 31.866055>,  <44.203876, 28.248413, 32.229946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225613, 28.932333, 31.866055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840527, 28.863510, 31.949549>,  <43.609474, 28.822216, 31.999645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840527, 28.863510, 31.949549>,  <44.225613, 28.932333, 31.866055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840527, 28.863510, 31.949549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108320, 0.952277, 0.285369,
		-0.247875, 0.252119, -0.935411,
		-0.962718, -0.172059, 0.208736,
		43.551712, 28.811892, 32.012169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934364, 29.559385, 31.665106>,  <44.225613, 28.932333, 31.866055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934364, 29.559385, 31.665106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.652073, 29.402407, 31.901051>,  <43.482697, 29.308220, 32.042618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.652073, 29.402407, 31.901051>,  <43.934364, 29.559385, 31.665106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652073, 29.402407, 31.901051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195616, 0.908139, 0.370160,
		-0.680942, 0.145846, -0.717667,
		-0.705728, -0.392445, 0.589860,
		43.440353, 29.284674, 32.078007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250740, 30.004795, 31.579521>,  <43.934364, 29.559385, 31.665106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250740, 30.004795, 31.579521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279449, 29.817226, 31.931648>,  <43.296673, 29.704685, 32.142925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279449, 29.817226, 31.931648>,  <43.250740, 30.004795, 31.579521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279449, 29.817226, 31.931648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022245, 0.881622, 0.471431,
		-0.997173, -0.053417, 0.052842,
		0.071769, -0.468923, 0.880318,
		43.300980, 29.676550, 32.195744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827534, 30.428493, 31.949789>,  <43.250740, 30.004795, 31.579521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827534, 30.428493, 31.949789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005894, 30.200958, 32.226223>,  <43.112907, 30.064438, 32.392082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005894, 30.200958, 32.226223>,  <42.827534, 30.428493, 31.949789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005894, 30.200958, 32.226223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072864, 0.746460, 0.661429,
		-0.892113, -0.345285, 0.291397,
		0.445898, -0.568837, 0.691086,
		43.139664, 30.030308, 32.433548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472843, 30.520948, 32.541687>,  <42.827534, 30.428493, 31.949789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472843, 30.520948, 32.541687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826618, 30.399925, 32.683804>,  <43.038883, 30.327311, 32.769073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826618, 30.399925, 32.683804>,  <42.472843, 30.520948, 32.541687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826618, 30.399925, 32.683804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001250, 0.762875, 0.646545,
		-0.466659, -0.571384, 0.675092,
		0.884436, -0.302560, 0.355288,
		43.091949, 30.309156, 32.790390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390614, 30.507681, 33.290291>,  <42.472843, 30.520948, 32.541687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390614, 30.507681, 33.290291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780994, 30.521420, 33.204178>,  <43.015221, 30.529663, 33.152512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780994, 30.521420, 33.204178>,  <42.390614, 30.507681, 33.290291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780994, 30.521420, 33.204178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140258, 0.657068, 0.740668,
		0.166893, -0.753048, 0.636447,
		0.975947, 0.034346, -0.215282,
		43.073780, 30.531723, 33.139595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737976, 30.378763, 33.895420>,  <42.390614, 30.507681, 33.290291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737976, 30.378763, 33.895420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.992199, 30.587500, 33.667824>,  <43.144733, 30.712742, 33.531265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.992199, 30.587500, 33.667824>,  <42.737976, 30.378763, 33.895420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992199, 30.587500, 33.667824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168127, 0.625748, 0.761691,
		0.753527, -0.579759, 0.309961,
		0.635555, 0.521842, -0.568991,
		43.182865, 30.744051, 33.497128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193218, 30.744202, 34.426567>,  <42.737976, 30.378763, 33.895420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193218, 30.744202, 34.426567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267956, 30.939053, 34.085323>,  <43.312798, 31.055964, 33.880577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267956, 30.939053, 34.085323>,  <43.193218, 30.744202, 34.426567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267956, 30.939053, 34.085323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187424, 0.834776, 0.517709,
		0.964345, -0.256625, 0.064675,
		0.186845, 0.487128, -0.853109,
		43.324009, 31.085192, 33.829391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716549, 31.176384, 34.658611>,  <43.193218, 30.744202, 34.426567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716549, 31.176384, 34.658611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615932, 31.326422, 34.301731>,  <43.555561, 31.416445, 34.087601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615932, 31.326422, 34.301731>,  <43.716549, 31.176384, 34.658611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615932, 31.326422, 34.301731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131286, 0.900101, 0.415430,
		0.958901, 0.221632, -0.177169,
		-0.251542, 0.375096, -0.892205,
		43.540470, 31.438951, 34.034069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156807, 31.704397, 34.467541>,  <43.716549, 31.176384, 34.658611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156807, 31.704397, 34.467541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.814892, 31.775434, 34.272480>,  <43.609745, 31.818056, 34.155441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.814892, 31.775434, 34.272480>,  <44.156807, 31.704397, 34.467541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814892, 31.775434, 34.272480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157984, 0.805997, 0.570448,
		0.494355, 0.564651, -0.660896,
		-0.854783, 0.177593, -0.487654,
		43.558456, 31.828712, 34.126183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246552, 32.371433, 34.092918>,  <44.156807, 31.704397, 34.467541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246552, 32.371433, 34.092918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852882, 32.303078, 34.111675>,  <43.616680, 32.262062, 34.122929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852882, 32.303078, 34.111675>,  <44.246552, 32.371433, 34.092918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852882, 32.303078, 34.111675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138199, 0.905801, 0.400531,
		-0.110927, 0.387711, -0.915082,
		-0.984173, -0.170893, 0.046897,
		43.557632, 32.251808, 34.125744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004246, 32.967213, 33.986534>,  <44.246552, 32.371433, 34.092918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004246, 32.967213, 33.986534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682377, 32.798416, 34.153587>,  <43.489254, 32.697140, 34.253819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682377, 32.798416, 34.153587>,  <44.004246, 32.967213, 33.986534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682377, 32.798416, 34.153587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192500, 0.850867, 0.488845,
		-0.561641, 0.312967, -0.765906,
		-0.804676, -0.421992, 0.417635,
		43.440975, 32.671818, 34.278877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462090, 33.456726, 33.915745>,  <44.004246, 32.967213, 33.986534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462090, 33.456726, 33.915745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361866, 33.219234, 34.221607>,  <43.301731, 33.076740, 34.405125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361866, 33.219234, 34.221607>,  <43.462090, 33.456726, 33.915745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361866, 33.219234, 34.221607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187713, 0.804661, 0.563281,
		-0.949728, -0.002401, -0.313067,
		-0.250560, -0.593730, 0.764660,
		43.286697, 33.041115, 34.451004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940704, 33.808102, 34.098156>,  <43.462090, 33.456726, 33.915745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940704, 33.808102, 34.098156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037472, 33.579098, 34.411514>,  <43.095531, 33.441696, 34.599529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037472, 33.579098, 34.411514>,  <42.940704, 33.808102, 34.098156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037472, 33.579098, 34.411514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134617, 0.779764, 0.611430,
		-0.960912, -0.253376, 0.111572,
		0.241922, -0.572511, 0.783393,
		43.110046, 33.407345, 34.646534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478745, 34.011658, 34.642960>,  <42.940704, 33.808102, 34.098156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478745, 34.011658, 34.642960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750450, 33.812187, 34.858334>,  <42.913475, 33.692505, 34.987556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750450, 33.812187, 34.858334>,  <42.478745, 34.011658, 34.642960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750450, 33.812187, 34.858334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126126, 0.802081, 0.583744,
		-0.722971, -0.328608, 0.607725,
		0.679268, -0.498680, 0.538435,
		42.954231, 33.662582, 35.019863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207249, 34.000824, 35.368557>,  <42.478745, 34.011658, 34.642960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207249, 34.000824, 35.368557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602707, 33.944790, 35.390278>,  <42.839981, 33.911167, 35.403309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602707, 33.944790, 35.390278>,  <42.207249, 34.000824, 35.368557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602707, 33.944790, 35.390278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066428, 0.731737, 0.678343,
		-0.134761, -0.667036, 0.732736,
		0.988649, -0.140088, 0.054300,
		42.899303, 33.902763, 35.406567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273632, 33.946480, 36.029102>,  <42.207249, 34.000824, 35.368557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273632, 33.946480, 36.029102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631828, 34.031456, 35.872654>,  <42.846745, 34.082443, 35.778786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631828, 34.031456, 35.872654>,  <42.273632, 33.946480, 36.029102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631828, 34.031456, 35.872654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101592, 0.757985, 0.644312,
		0.433340, -0.616707, 0.657183,
		0.895486, 0.212442, -0.391118,
		42.900475, 34.095188, 35.755318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700706, 34.021511, 36.589588>,  <42.273632, 33.946480, 36.029102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700706, 34.021511, 36.589588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873562, 34.228222, 36.293968>,  <42.977276, 34.352249, 36.116596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873562, 34.228222, 36.293968>,  <42.700706, 34.021511, 36.589588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873562, 34.228222, 36.293968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000005, 0.819526, 0.573042,
		0.901805, -0.247632, 0.354155,
		0.432142, 0.516774, -0.739052,
		43.003204, 34.383255, 36.072254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461372, 34.077293, 36.590710>,  <42.700706, 34.021511, 36.589588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461372, 34.077293, 36.590710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267963, 34.392902, 36.439102>,  <43.151920, 34.582268, 36.348137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267963, 34.392902, 36.439102>,  <43.461372, 34.077293, 36.590710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267963, 34.392902, 36.439102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375513, 0.578109, 0.724417,
		0.790694, 0.207943, -0.575814,
		-0.483521, 0.789018, -0.379022,
		43.122906, 34.629608, 36.325394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114563, 34.164253, 36.956028>,  <43.461372, 34.077293, 36.590710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114563, 34.164253, 36.956028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505272, 34.175343, 37.041023>,  <44.739697, 34.181995, 37.092022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505272, 34.175343, 37.041023>,  <44.114563, 34.164253, 36.956028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505272, 34.175343, 37.041023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100132, -0.935734, -0.338194,
		0.189455, 0.351614, -0.916774,
		0.976771, 0.027726, 0.212487,
		44.798302, 34.183659, 37.104771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358852, 33.906261, 36.367599>,  <44.114563, 34.164253, 36.956028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358852, 33.906261, 36.367599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627251, 33.852276, 36.659229>,  <44.788292, 33.819885, 36.834206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627251, 33.852276, 36.659229>,  <44.358852, 33.906261, 36.367599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627251, 33.852276, 36.659229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281950, -0.862982, -0.419245,
		0.685760, 0.486874, -0.541005,
		0.670997, -0.134965, 0.729073,
		44.828548, 33.811787, 36.877953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046089, 33.752865, 36.030785>,  <44.358852, 33.906261, 36.367599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046089, 33.752865, 36.030785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049122, 33.593380, 36.397602>,  <45.050941, 33.497688, 36.617695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049122, 33.593380, 36.397602>,  <45.046089, 33.752865, 36.030785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049122, 33.593380, 36.397602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338395, -0.861943, -0.377548,
		0.940974, 0.313187, 0.128384,
		0.007584, -0.398708, 0.917047,
		45.051395, 33.473766, 36.672714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562996, 33.244160, 35.861217>,  <45.046089, 33.752865, 36.030785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562996, 33.244160, 35.861217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454964, 33.151863, 36.235130>,  <45.390144, 33.096485, 36.459476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454964, 33.151863, 36.235130>,  <45.562996, 33.244160, 35.861217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454964, 33.151863, 36.235130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127536, -0.970878, -0.202806,
		0.954355, 0.064445, 0.291639,
		-0.270076, -0.230744, 0.934781,
		45.373940, 33.082642, 36.515564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178246, 32.904148, 36.251381>,  <45.562996, 33.244160, 35.861217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178246, 32.904148, 36.251381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818676, 32.813526, 36.401375>,  <45.602936, 32.759155, 36.491371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818676, 32.813526, 36.401375>,  <46.178246, 32.904148, 36.251381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818676, 32.813526, 36.401375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165145, -0.968002, -0.188940,
		0.405795, -0.107914, 0.907571,
		-0.898920, -0.226552, 0.374989,
		45.549000, 32.745560, 36.513870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316582, 32.284603, 36.751232>,  <46.178246, 32.904148, 36.251381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316582, 32.284603, 36.751232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.923306, 32.286747, 36.678238>,  <45.687340, 32.288033, 36.634441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.923306, 32.286747, 36.678238>,  <46.316582, 32.284603, 36.751232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923306, 32.286747, 36.678238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001396, -0.999318, -0.036897,
		-0.182558, -0.036532, 0.982516,
		-0.983194, 0.005364, -0.182485,
		45.628345, 32.288357, 36.623493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929108, 31.782724, 37.241535>,  <46.316582, 32.284603, 36.751232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929108, 31.782724, 37.241535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695099, 31.852070, 36.924625>,  <45.554691, 31.893677, 36.734482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695099, 31.852070, 36.924625>,  <45.929108, 31.782724, 37.241535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695099, 31.852070, 36.924625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225026, -0.973228, -0.046796,
		-0.779173, 0.150904, 0.608373,
		-0.585024, 0.173362, -0.792270,
		45.519592, 31.904078, 36.686943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453587, 31.438833, 37.423283>,  <45.929108, 31.782724, 37.241535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453587, 31.438833, 37.423283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392269, 31.463703, 37.028793>,  <45.355480, 31.478624, 36.792099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.392269, 31.463703, 37.028793>,  <45.453587, 31.438833, 37.423283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392269, 31.463703, 37.028793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271657, -0.962218, -0.018437,
		-0.950107, 0.265088, 0.164393,
		-0.153294, 0.062175, -0.986223,
		45.346279, 31.482355, 36.732925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790112, 30.974026, 37.295826>,  <45.453587, 31.438833, 37.423283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790112, 30.974026, 37.295826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.002281, 31.019106, 36.959743>,  <45.129581, 31.046154, 36.758095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.002281, 31.019106, 36.959743>,  <44.790112, 30.974026, 37.295826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002281, 31.019106, 36.959743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185079, -0.951820, -0.244510,
		-0.827284, 0.285198, -0.484007,
		0.530421, 0.112700, -0.840210,
		45.161407, 31.052916, 36.707680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467537, 30.573946, 36.761997>,  <44.790112, 30.974026, 37.295826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467537, 30.573946, 36.761997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810589, 30.622124, 36.562012>,  <45.016422, 30.651031, 36.442020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810589, 30.622124, 36.562012>,  <44.467537, 30.573946, 36.761997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810589, 30.622124, 36.562012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125430, -0.893834, -0.430498,
		-0.498733, 0.431919, -0.751473,
		0.857632, 0.120447, -0.499960,
		45.067879, 30.658258, 36.412025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362926, 30.562611, 36.063950>,  <44.467537, 30.573946, 36.761997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362926, 30.562611, 36.063950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746948, 30.453947, 36.090744>,  <44.977364, 30.388748, 36.106819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746948, 30.453947, 36.090744>,  <44.362926, 30.562611, 36.063950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746948, 30.453947, 36.090744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161477, -0.733474, -0.660259,
		0.228499, 0.623070, -0.748045,
		0.960059, -0.271660, 0.066987,
		45.034966, 30.372450, 36.110840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606483, 30.307735, 35.381268>,  <44.362926, 30.562611, 36.063950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606483, 30.307735, 35.381268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.869198, 30.154211, 35.640903>,  <45.026829, 30.062096, 35.796684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.869198, 30.154211, 35.640903>,  <44.606483, 30.307735, 35.381268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869198, 30.154211, 35.640903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165006, -0.766767, -0.620356,
		0.735799, 0.514547, -0.440273,
		0.656789, -0.383811, 0.649090,
		45.066235, 30.039068, 35.835629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063633, 30.003534, 34.994534>,  <44.606483, 30.307735, 35.381268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063633, 30.003534, 34.994534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107613, 29.833300, 35.353817>,  <45.133999, 29.731159, 35.569389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107613, 29.833300, 35.353817>,  <45.063633, 30.003534, 34.994534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107613, 29.833300, 35.353817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077913, -0.897220, -0.434656,
		0.990879, 0.117772, -0.065488,
		0.109948, -0.425589, 0.898213,
		45.140598, 29.705624, 35.623280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615795, 29.527847, 34.869675>,  <45.063633, 30.003534, 34.994534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615795, 29.527847, 34.869675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439190, 29.399775, 35.204948>,  <45.333225, 29.322931, 35.406113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439190, 29.399775, 35.204948>,  <45.615795, 29.527847, 34.869675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439190, 29.399775, 35.204948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206802, -0.945326, -0.252175,
		0.873096, 0.061998, 0.483591,
		-0.441516, -0.320181, 0.838181,
		45.306736, 29.303720, 35.456402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084930, 29.109718, 35.184555>,  <45.615795, 29.527847, 34.869675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084930, 29.109718, 35.184555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730377, 28.989788, 35.325653>,  <45.517647, 28.917830, 35.410313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730377, 28.989788, 35.325653>,  <46.084930, 29.109718, 35.184555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730377, 28.989788, 35.325653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213291, -0.940741, -0.263653,
		0.410893, -0.158460, 0.897807,
		-0.886382, -0.299827, 0.352746,
		45.464462, 28.899839, 35.431477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244961, 28.455507, 35.243534>,  <46.084930, 29.109718, 35.184555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244961, 28.455507, 35.243534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848919, 28.495731, 35.282673>,  <45.611294, 28.519865, 35.306156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848919, 28.495731, 35.282673>,  <46.244961, 28.455507, 35.243534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848919, 28.495731, 35.282673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119266, -0.970519, -0.209447,
		0.073897, -0.219045, 0.972912,
		-0.990108, 0.100558, 0.097843,
		45.551888, 28.525898, 35.312027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909729, 27.788628, 35.530445>,  <46.244961, 28.455507, 35.243534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909729, 27.788628, 35.530445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581673, 27.962797, 35.381969>,  <45.384838, 28.067299, 35.292885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581673, 27.962797, 35.381969>,  <45.909729, 27.788628, 35.530445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581673, 27.962797, 35.381969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367115, -0.898056, -0.242326,
		-0.438863, -0.062471, 0.896379,
		-0.820137, 0.435422, -0.371190,
		45.335632, 28.093424, 35.270611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369865, 27.346006, 35.709385>,  <45.909729, 27.788628, 35.530445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369865, 27.346006, 35.709385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212357, 27.566298, 35.415001>,  <45.117851, 27.698471, 35.238369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212357, 27.566298, 35.415001>,  <45.369865, 27.346006, 35.709385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212357, 27.566298, 35.415001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510115, -0.796973, -0.323444,
		-0.764671, 0.248061, 0.594764,
		-0.393777, 0.550726, -0.735962,
		45.094223, 27.731516, 35.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676266, 27.189598, 35.622173>,  <45.369865, 27.346006, 35.709385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676266, 27.189598, 35.622173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788990, 27.347124, 35.272205>,  <44.856625, 27.441639, 35.062225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788990, 27.347124, 35.272205>,  <44.676266, 27.189598, 35.622173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788990, 27.347124, 35.272205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433922, -0.760988, -0.482296,
		-0.855741, 0.515566, -0.043572,
		0.281813, 0.393813, -0.874924,
		44.873535, 27.465267, 35.009727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066776, 27.220098, 35.193188>,  <44.676266, 27.189598, 35.622173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066776, 27.220098, 35.193188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.355320, 27.247272, 34.917500>,  <44.528446, 27.263577, 34.752087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.355320, 27.247272, 34.917500>,  <44.066776, 27.220098, 35.193188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355320, 27.247272, 34.917500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410133, -0.759998, -0.504176,
		-0.558055, 0.646365, -0.520372,
		0.721364, 0.067936, -0.689216,
		44.571728, 27.267653, 34.710735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.544018, 41.324936, 37.361725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339500, 41.023304, 37.526619>,  <39.216789, 40.842323, 37.625553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339500, 41.023304, 37.526619>,  <39.544018, 41.324936, 37.361725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339500, 41.023304, 37.526619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174456, -0.378613, -0.908965,
		0.841510, -0.536668, 0.062029,
		-0.511298, -0.754082, 0.412232,
		39.186111, 40.797081, 37.650288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808140, 40.694809, 37.191513>,  <39.544018, 41.324936, 37.361725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808140, 40.694809, 37.191513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435558, 40.576637, 37.276474>,  <39.212009, 40.505733, 37.327450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435558, 40.576637, 37.276474>,  <39.808140, 40.694809, 37.191513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435558, 40.576637, 37.276474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012551, -0.557322, -0.830201,
		0.363643, -0.775960, 0.515412,
		-0.931454, -0.295428, 0.212405,
		39.156120, 40.488010, 37.340195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912453, 40.033318, 37.037445>,  <39.808140, 40.694809, 37.191513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912453, 40.033318, 37.037445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518780, 40.103920, 37.031357>,  <39.282578, 40.146282, 37.027702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518780, 40.103920, 37.031357>,  <39.912453, 40.033318, 37.037445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518780, 40.103920, 37.031357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119957, -0.727177, -0.675887,
		-0.130367, -0.663370, 0.736848,
		-0.984182, 0.176504, -0.015224,
		39.223526, 40.156872, 37.026791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636192, 39.333282, 37.028252>,  <39.912453, 40.033318, 37.037445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636192, 39.333282, 37.028252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352676, 39.590260, 36.911713>,  <39.182568, 39.744446, 36.841789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352676, 39.590260, 36.911713>,  <39.636192, 39.333282, 37.028252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352676, 39.590260, 36.911713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162715, -0.550774, -0.818640,
		-0.686397, -0.532837, 0.494918,
		-0.708790, 0.642443, -0.291349,
		39.140041, 39.782993, 36.824306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111774, 38.915813, 36.829224>,  <39.636192, 39.333282, 37.028252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111774, 38.915813, 36.829224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036110, 39.259850, 36.639717>,  <38.990711, 39.466270, 36.526012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036110, 39.259850, 36.639717>,  <39.111774, 38.915813, 36.829224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036110, 39.259850, 36.639717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387883, -0.508691, -0.768622,
		-0.902088, 0.038371, 0.429842,
		-0.189164, 0.860094, -0.473768,
		38.979362, 39.517879, 36.497585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465942, 38.809143, 36.662239>,  <39.111774, 38.915813, 36.829224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465942, 38.809143, 36.662239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609089, 39.095188, 36.422058>,  <38.694977, 39.266815, 36.277950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609089, 39.095188, 36.422058>,  <38.465942, 38.809143, 36.662239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609089, 39.095188, 36.422058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308248, -0.516524, -0.798866,
		-0.881429, 0.470974, 0.035587,
		0.357864, 0.715113, -0.600456,
		38.716450, 39.309723, 36.241920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072243, 38.815128, 36.135948>,  <38.465942, 38.809143, 36.662239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072243, 38.815128, 36.135948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381374, 39.008980, 35.972057>,  <38.566853, 39.125290, 35.873722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381374, 39.008980, 35.972057>,  <38.072243, 38.815128, 36.135948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381374, 39.008980, 35.972057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038010, -0.609113, -0.792172,
		-0.633480, 0.627784, -0.452316,
		0.772824, 0.484633, -0.409723,
		38.613220, 39.154369, 35.849140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800213, 39.129631, 35.541985>,  <38.072243, 38.815128, 36.135948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800213, 39.129631, 35.541985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189968, 39.051037, 35.498245>,  <38.423820, 39.003880, 35.472000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189968, 39.051037, 35.498245>,  <37.800213, 39.129631, 35.541985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189968, 39.051037, 35.498245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207905, -0.601927, -0.771012,
		0.085677, 0.774000, -0.627362,
		0.974389, -0.196490, -0.109347,
		38.482285, 38.992088, 35.465443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026585, 39.312405, 34.930389>,  <37.800213, 39.129631, 35.541985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026585, 39.312405, 34.930389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312378, 39.054131, 35.038174>,  <38.483852, 38.899166, 35.102844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312378, 39.054131, 35.038174>,  <38.026585, 39.312405, 34.930389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312378, 39.054131, 35.038174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172269, -0.535622, -0.826699,
		0.678115, 0.544242, -0.493924,
		0.714481, -0.645685, 0.269457,
		38.526722, 38.860424, 35.119011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426548, 39.139542, 34.284935>,  <38.026585, 39.312405, 34.930389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426548, 39.139542, 34.284935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482227, 38.866829, 34.572212>,  <38.515636, 38.703201, 34.744579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482227, 38.866829, 34.572212>,  <38.426548, 39.139542, 34.284935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482227, 38.866829, 34.572212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140482, -0.731514, -0.667197,
		0.980249, -0.008020, -0.197603,
		0.139199, -0.681779, 0.718193,
		38.523987, 38.662296, 34.787670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894920, 38.724857, 34.016163>,  <38.426548, 39.139542, 34.284935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894920, 38.724857, 34.016163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695621, 38.505539, 34.284824>,  <38.576042, 38.373947, 34.446022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695621, 38.505539, 34.284824>,  <38.894920, 38.724857, 34.016163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695621, 38.505539, 34.284824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057565, -0.752030, -0.656610,
		0.865123, -0.365817, 0.343133,
		-0.498246, -0.548296, 0.671657,
		38.546146, 38.341049, 34.486320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961670, 38.005253, 33.778946>,  <38.894920, 38.724857, 34.016163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961670, 38.005253, 33.778946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677544, 37.949898, 34.055004>,  <38.507069, 37.916687, 34.220638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677544, 37.949898, 34.055004>,  <38.961670, 38.005253, 33.778946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677544, 37.949898, 34.055004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222768, -0.885888, -0.406911,
		0.667704, -0.442777, 0.598431,
		-0.710314, -0.138385, 0.690147,
		38.464451, 37.908382, 34.262047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028503, 37.342896, 34.034046>,  <38.961670, 38.005253, 33.778946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028503, 37.342896, 34.034046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651276, 37.473110, 34.061329>,  <38.424938, 37.551239, 34.077698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651276, 37.473110, 34.061329>,  <39.028503, 37.342896, 34.034046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651276, 37.473110, 34.061329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318054, -0.822648, -0.471267,
		-0.097304, -0.466129, 0.879349,
		-0.943066, 0.325536, 0.068207,
		38.368355, 37.570770, 34.081791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205479, 36.656342, 33.727951>,  <39.028503, 37.342896, 34.034046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205479, 36.656342, 33.727951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546730, 36.814384, 33.864223>,  <39.751480, 36.909210, 33.945988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546730, 36.814384, 33.864223>,  <39.205479, 36.656342, 33.727951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546730, 36.814384, 33.864223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215870, 0.861839, -0.458948,
		-0.474944, 0.317999, 0.820551,
		0.853128, 0.395107, 0.340679,
		39.802670, 36.932919, 33.966427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889080, 36.386314, 34.027672>,  <39.205479, 36.656342, 33.727951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889080, 36.386314, 34.027672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108776, 36.120152, 34.229889>,  <40.240593, 35.960453, 34.351219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108776, 36.120152, 34.229889>,  <39.889080, 36.386314, 34.027672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108776, 36.120152, 34.229889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477489, 0.246586, 0.843327,
		-0.685815, -0.704577, -0.182290,
		0.549239, -0.665407, 0.505540,
		40.273548, 35.920528, 34.381550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420124, 35.780418, 34.361965>,  <39.889080, 36.386314, 34.027672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420124, 35.780418, 34.361965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757507, 35.821823, 34.572815>,  <39.959938, 35.846664, 34.699326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757507, 35.821823, 34.572815>,  <39.420124, 35.780418, 34.361965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757507, 35.821823, 34.572815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535927, 0.094750, 0.838931,
		0.036895, -0.990105, 0.135393,
		0.843458, 0.103513, 0.527128,
		40.010544, 35.852875, 34.730953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235184, 35.370079, 34.971897>,  <39.420124, 35.780418, 34.361965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235184, 35.370079, 34.971897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560375, 35.584641, 35.062519>,  <39.755489, 35.713379, 35.116894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560375, 35.584641, 35.062519>,  <39.235184, 35.370079, 34.971897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560375, 35.584641, 35.062519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325047, 0.095246, 0.940889,
		0.483118, -0.838569, 0.251791,
		0.812983, 0.536405, 0.226560,
		39.804272, 35.745564, 35.130486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561779, 34.986538, 35.524136>,  <39.235184, 35.370079, 34.971897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561779, 34.986538, 35.524136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656288, 35.375172, 35.529743>,  <39.712994, 35.608353, 35.533108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656288, 35.375172, 35.529743>,  <39.561779, 34.986538, 35.524136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656288, 35.375172, 35.529743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449711, 0.096549, 0.887941,
		0.861356, -0.216103, 0.459744,
		0.236275, 0.971585, 0.014021,
		39.727169, 35.666649, 35.533951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746391, 35.111588, 36.265591>,  <39.561779, 34.986538, 35.524136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746391, 35.111588, 36.265591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713211, 35.483494, 36.122112>,  <39.693302, 35.706638, 36.036026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713211, 35.483494, 36.122112>,  <39.746391, 35.111588, 36.265591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713211, 35.483494, 36.122112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512018, 0.269031, 0.815757,
		0.854960, 0.251327, 0.453738,
		-0.082952, 0.929762, -0.358695,
		39.688324, 35.762421, 36.014503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961124, 35.607944, 36.782970>,  <39.746391, 35.111588, 36.265591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961124, 35.607944, 36.782970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754944, 35.861416, 36.552231>,  <39.631233, 36.013500, 36.413788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754944, 35.861416, 36.552231>,  <39.961124, 35.607944, 36.782970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754944, 35.861416, 36.552231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313955, 0.486704, 0.815200,
		0.797332, 0.601304, -0.051927,
		-0.515456, 0.633682, -0.576847,
		39.600307, 36.051521, 36.379177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187950, 36.190155, 37.114357>,  <39.961124, 35.607944, 36.782970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187950, 36.190155, 37.114357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865978, 36.276806, 36.893391>,  <39.672794, 36.328796, 36.760811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865978, 36.276806, 36.893391>,  <40.187950, 36.190155, 37.114357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865978, 36.276806, 36.893391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378996, 0.528641, 0.759540,
		0.456572, 0.820737, -0.343414,
		-0.804925, 0.216632, -0.552418,
		39.624500, 36.341797, 36.727665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029606, 36.930271, 36.890327>,  <40.187950, 36.190155, 37.114357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029606, 36.930271, 36.890327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675308, 36.744717, 36.896896>,  <39.462730, 36.633385, 36.900837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675308, 36.744717, 36.896896>,  <40.029606, 36.930271, 36.890327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675308, 36.744717, 36.896896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346763, 0.684796, 0.640945,
		-0.308577, 0.562014, -0.767411,
		-0.885740, -0.463891, 0.016426,
		39.409588, 36.605549, 36.901825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484352, 37.434189, 36.924427>,  <40.029606, 36.930271, 36.890327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484352, 37.434189, 36.924427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324436, 37.089573, 37.049591>,  <39.228489, 36.882801, 37.124687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324436, 37.089573, 37.049591>,  <39.484352, 37.434189, 36.924427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324436, 37.089573, 37.049591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449930, 0.481872, 0.751905,
		-0.798581, 0.159816, -0.580282,
		-0.399788, -0.861544, 0.312908,
		39.204498, 36.831108, 37.143463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824341, 37.687233, 37.111092>,  <39.484352, 37.434189, 36.924427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824341, 37.687233, 37.111092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868252, 37.326710, 37.278709>,  <38.894600, 37.110397, 37.379280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868252, 37.326710, 37.278709>,  <38.824341, 37.687233, 37.111092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868252, 37.326710, 37.278709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493190, 0.316640, 0.810249,
		-0.862967, -0.295616, -0.409754,
		0.109778, -0.901305, 0.419045,
		38.901184, 37.056320, 37.404423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196514, 37.446579, 37.369572>,  <38.824341, 37.687233, 37.111092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196514, 37.446579, 37.369572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435982, 37.209026, 37.584568>,  <38.579662, 37.066494, 37.713566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435982, 37.209026, 37.584568>,  <38.196514, 37.446579, 37.369572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435982, 37.209026, 37.584568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446629, 0.309526, 0.839474,
		-0.664917, -0.742627, -0.079941,
		0.598672, -0.593884, 0.537487,
		38.615585, 37.030861, 37.745815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764675, 37.113621, 37.931755>,  <38.196514, 37.446579, 37.369572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764675, 37.113621, 37.931755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148067, 37.096775, 38.044559>,  <38.378105, 37.086666, 38.112244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148067, 37.096775, 38.044559>,  <37.764675, 37.113621, 37.931755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148067, 37.096775, 38.044559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254922, 0.316547, 0.913681,
		-0.127753, -0.947641, 0.292669,
		0.958485, -0.042118, 0.282014,
		38.435612, 37.084141, 38.129166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772953, 36.945454, 38.733795>,  <37.764675, 37.113621, 37.931755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772953, 36.945454, 38.733795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154911, 37.059349, 38.700096>,  <38.384087, 37.127686, 38.679878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154911, 37.059349, 38.700096>,  <37.772953, 36.945454, 38.733795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154911, 37.059349, 38.700096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010528, 0.316007, 0.948699,
		0.296743, -0.905025, 0.304752,
		0.954899, 0.284728, -0.084245,
		38.441380, 37.144772, 38.674820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096676, 36.705151, 39.257988>,  <37.772953, 36.945454, 38.733795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096676, 36.705151, 39.257988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335007, 37.006638, 39.147068>,  <38.478004, 37.187531, 39.080517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335007, 37.006638, 39.147068>,  <38.096676, 36.705151, 39.257988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335007, 37.006638, 39.147068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007670, 0.339924, 0.940422,
		0.803075, -0.562457, 0.196756,
		0.595829, 0.753720, -0.277298,
		38.513756, 37.232754, 39.063877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198452, 36.101871, 39.443340>,  <38.096676, 36.705151, 39.257988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198452, 36.101871, 39.443340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004074, 35.865437, 39.700859>,  <37.887447, 35.723576, 39.855370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004074, 35.865437, 39.700859>,  <38.198452, 36.101871, 39.443340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004074, 35.865437, 39.700859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554077, -0.361323, -0.749963,
		0.675913, -0.721152, -0.151926,
		-0.485943, -0.591089, 0.643796,
		37.858292, 35.688110, 39.893997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219879, 35.421345, 39.108120>,  <38.198452, 36.101871, 39.443340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219879, 35.421345, 39.108120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923145, 35.407295, 39.375984>,  <37.745106, 35.398865, 39.536705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923145, 35.407295, 39.375984>,  <38.219879, 35.421345, 39.108120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923145, 35.407295, 39.375984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597703, -0.418127, -0.684048,
		0.304031, -0.907709, 0.289187,
		-0.741833, -0.035124, 0.669664,
		37.700596, 35.396759, 39.576885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929775, 34.777447, 38.816689>,  <38.219879, 35.421345, 39.108120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929775, 34.777447, 38.816689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696480, 34.916409, 39.110394>,  <37.556503, 34.999786, 39.286617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696480, 34.916409, 39.110394>,  <37.929775, 34.777447, 38.816689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696480, 34.916409, 39.110394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797191, -0.418341, -0.435291,
		0.155954, -0.839229, 0.520935,
		-0.583237, 0.347399, 0.734267,
		37.521507, 35.020630, 39.330673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597408, 34.210800, 39.073502>,  <37.929775, 34.777447, 38.816689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597408, 34.210800, 39.073502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385151, 34.543621, 39.138130>,  <37.257797, 34.743313, 39.176907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385151, 34.543621, 39.138130>,  <37.597408, 34.210800, 39.073502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385151, 34.543621, 39.138130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783179, -0.408427, -0.468847,
		-0.324118, -0.375326, 0.868377,
		-0.530639, 0.832056, 0.161569,
		37.225960, 34.793240, 39.186600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925728, 34.006504, 39.455128>,  <37.597408, 34.210800, 39.073502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925728, 34.006504, 39.455128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888405, 34.359547, 39.270821>,  <36.866013, 34.571373, 39.160236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888405, 34.359547, 39.270821>,  <36.925728, 34.006504, 39.455128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888405, 34.359547, 39.270821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767252, -0.358674, -0.531675,
		-0.634523, 0.303919, 0.710644,
		-0.093304, 0.882602, -0.460769,
		36.860413, 34.624329, 39.132591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198753, 34.094898, 39.331413>,  <36.925728, 34.006504, 39.455128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198753, 34.094898, 39.331413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373703, 34.354084, 39.081982>,  <36.478672, 34.509594, 38.932323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373703, 34.354084, 39.081982>,  <36.198753, 34.094898, 39.331413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373703, 34.354084, 39.081982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651153, -0.250067, -0.716565,
		-0.620245, 0.719450, 0.312551,
		0.437374, 0.647964, -0.623575,
		36.504917, 34.548473, 38.894909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609962, 34.436714, 39.125553>,  <36.198753, 34.094898, 39.331413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609962, 34.436714, 39.125553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899940, 34.524673, 38.864449>,  <36.073929, 34.577450, 38.707787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899940, 34.524673, 38.864449>,  <35.609962, 34.436714, 39.125553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899940, 34.524673, 38.864449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670788, 0.010033, -0.741581,
		-0.156521, 0.975472, 0.154776,
		0.724944, 0.219895, -0.652765,
		36.117424, 34.590641, 38.668617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311382, 34.885006, 38.614468>,  <35.609962, 34.436714, 39.125553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311382, 34.885006, 38.614468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643604, 34.784271, 38.415771>,  <35.842937, 34.723831, 38.296555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643604, 34.784271, 38.415771>,  <35.311382, 34.885006, 38.614468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643604, 34.784271, 38.415771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492701, 0.083575, -0.866176,
		0.259649, 0.964155, -0.054666,
		0.830559, -0.251835, -0.496740,
		35.892773, 34.708721, 38.266750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453060, 35.325100, 38.065399>,  <35.311382, 34.885006, 38.614468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453060, 35.325100, 38.065399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616352, 34.971321, 37.974972>,  <35.714329, 34.759056, 37.920715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616352, 34.971321, 37.974972>,  <35.453060, 35.325100, 38.065399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616352, 34.971321, 37.974972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489578, -0.003103, -0.871954,
		0.770493, 0.466635, -0.434271,
		0.408232, -0.884444, -0.226064,
		35.738823, 34.705986, 37.907154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637791, 35.357063, 37.333172>,  <35.453060, 35.325100, 38.065399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637791, 35.357063, 37.333172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636608, 34.963608, 37.405231>,  <35.635899, 34.727535, 37.448467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636608, 34.963608, 37.405231>,  <35.637791, 35.357063, 37.333172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636608, 34.963608, 37.405231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261227, -0.173139, -0.949623,
		0.965273, -0.049869, -0.256440,
		-0.002957, -0.983634, 0.180153,
		35.635719, 34.668518, 37.459278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902119, 35.049072, 36.808144>,  <35.637791, 35.357063, 37.333172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902119, 35.049072, 36.808144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714523, 34.737614, 36.974880>,  <35.601967, 34.550739, 37.074921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714523, 34.737614, 36.974880>,  <35.902119, 35.049072, 36.808144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714523, 34.737614, 36.974880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332713, -0.281435, -0.900053,
		0.818138, -0.560805, -0.127076,
		-0.468991, -0.778647, 0.416840,
		35.573826, 34.504021, 37.099934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152855, 34.395851, 36.488705>,  <35.902119, 35.049072, 36.808144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152855, 34.395851, 36.488705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780869, 34.415302, 36.634476>,  <35.557678, 34.426975, 36.721939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780869, 34.415302, 36.634476>,  <36.152855, 34.395851, 36.488705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780869, 34.415302, 36.634476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354674, -0.379730, -0.854407,
		0.096833, -0.923818, 0.370382,
		-0.929962, 0.048629, 0.364425,
		35.501881, 34.429890, 36.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.253380, 37.465626, 42.421463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899231, 37.327587, 42.546055>,  <39.686741, 37.244766, 42.620811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899231, 37.327587, 42.546055>,  <40.253380, 37.465626, 42.421463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899231, 37.327587, 42.546055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082125, -0.543382, -0.835459,
		0.457564, -0.765276, 0.452756,
		-0.885376, -0.345093, 0.311480,
		39.633617, 37.224060, 42.639500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248032, 36.791718, 42.414192>,  <40.253380, 37.465626, 42.421463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248032, 36.791718, 42.414192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851814, 36.845287, 42.402222>,  <39.614086, 36.877430, 42.395039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851814, 36.845287, 42.402222>,  <40.248032, 36.791718, 42.414192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851814, 36.845287, 42.402222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061624, -0.628982, -0.774974,
		-0.122608, -0.765798, 0.631285,
		-0.990541, 0.133920, -0.029926,
		39.554653, 36.885464, 42.393242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874504, 36.130219, 42.467590>,  <40.248032, 36.791718, 42.414192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874504, 36.130219, 42.467590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583233, 36.365662, 42.327133>,  <39.408470, 36.506927, 42.242859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583233, 36.365662, 42.327133>,  <39.874504, 36.130219, 42.467590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583233, 36.365662, 42.327133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287947, -0.727646, -0.622590,
		-0.621971, -0.352243, 0.699341,
		-0.728175, 0.588606, -0.351147,
		39.364780, 36.542244, 42.221790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308247, 35.674500, 42.372478>,  <39.874504, 36.130219, 42.467590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308247, 35.674500, 42.372478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.214275, 35.990654, 42.146168>,  <39.157894, 36.180347, 42.010380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.214275, 35.990654, 42.146168>,  <39.308247, 35.674500, 42.372478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214275, 35.990654, 42.146168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588729, -0.578860, -0.564198,
		-0.773438, 0.200545, 0.601311,
		-0.234928, 0.790382, -0.565779,
		39.143799, 36.227768, 41.976433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608994, 35.562927, 42.236134>,  <39.308247, 35.674500, 42.372478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608994, 35.562927, 42.236134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723690, 35.804104, 41.938343>,  <38.792507, 35.948811, 41.759670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723690, 35.804104, 41.938343>,  <38.608994, 35.562927, 42.236134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723690, 35.804104, 41.938343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608421, -0.485654, -0.627665,
		-0.740002, 0.632931, 0.227586,
		0.286741, 0.602942, -0.744474,
		38.809711, 35.984985, 41.715000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057957, 35.627392, 41.847290>,  <38.608994, 35.562927, 42.236134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057957, 35.627392, 41.847290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331120, 35.771160, 41.592903>,  <38.495018, 35.857422, 41.440269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331120, 35.771160, 41.592903>,  <38.057957, 35.627392, 41.847290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331120, 35.771160, 41.592903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536215, -0.344596, -0.770536,
		-0.496100, 0.867220, -0.042599,
		0.682904, 0.359421, -0.635971,
		38.535992, 35.878986, 41.402111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736378, 36.173237, 41.328667>,  <38.057957, 35.627392, 41.847290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736378, 36.173237, 41.328667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070240, 36.034466, 41.157558>,  <38.270557, 35.951202, 41.054893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070240, 36.034466, 41.157558>,  <37.736378, 36.173237, 41.328667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070240, 36.034466, 41.157558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484790, -0.094171, -0.869546,
		0.261382, 0.933154, -0.246786,
		0.834660, -0.346924, -0.427769,
		38.320637, 35.930389, 41.029228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857307, 36.552044, 40.719971>,  <37.736378, 36.173237, 41.328667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857307, 36.552044, 40.719971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053883, 36.208103, 40.664627>,  <38.171829, 36.001740, 40.631420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053883, 36.208103, 40.664627>,  <37.857307, 36.552044, 40.719971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053883, 36.208103, 40.664627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545197, -0.179853, -0.818788,
		0.679152, 0.477815, -0.557175,
		0.491439, -0.859852, -0.138356,
		38.201313, 35.950146, 40.623119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020874, 36.551342, 40.064861>,  <37.857307, 36.552044, 40.719971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020874, 36.551342, 40.064861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012192, 36.165707, 40.170742>,  <38.006985, 35.934326, 40.234272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012192, 36.165707, 40.170742>,  <38.020874, 36.551342, 40.064861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012192, 36.165707, 40.170742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552245, -0.209146, -0.807021,
		0.833399, -0.163693, -0.527873,
		-0.021701, -0.964086, 0.264700,
		38.005680, 35.876480, 40.250153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593384, 36.803875, 39.775383>,  <38.020874, 36.551342, 40.064861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593384, 36.803875, 39.775383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624447, 37.146832, 39.571877>,  <38.643085, 37.352608, 39.449772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624447, 37.146832, 39.571877>,  <38.593384, 36.803875, 39.775383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624447, 37.146832, 39.571877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183564, 0.489287, 0.852586,
		0.979935, -0.159601, -0.119390,
		0.077657, 0.857395, -0.508766,
		38.647743, 37.404049, 39.419247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155251, 37.145546, 40.111267>,  <38.593384, 36.803875, 39.775383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155251, 37.145546, 40.111267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011036, 37.443554, 39.886784>,  <38.924507, 37.622360, 39.752094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011036, 37.443554, 39.886784>,  <39.155251, 37.145546, 40.111267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011036, 37.443554, 39.886784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050994, 0.585030, 0.809407,
		0.931351, 0.320437, -0.172931,
		-0.360534, 0.745024, -0.561208,
		38.902874, 37.667061, 39.718422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517548, 37.670280, 40.375362>,  <39.155251, 37.145546, 40.111267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517548, 37.670280, 40.375362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210953, 37.849407, 40.191208>,  <39.026997, 37.956882, 40.080715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210953, 37.849407, 40.191208>,  <39.517548, 37.670280, 40.375362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210953, 37.849407, 40.191208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035929, 0.745599, 0.665425,
		0.641250, 0.493501, -0.587584,
		-0.766490, 0.447816, -0.460385,
		38.981007, 37.983753, 40.053093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699257, 38.346539, 39.929241>,  <39.517548, 37.670280, 40.375362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699257, 38.346539, 39.929241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325485, 38.315769, 40.068336>,  <39.101223, 38.297310, 40.151794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325485, 38.315769, 40.068336>,  <39.699257, 38.346539, 39.929241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325485, 38.315769, 40.068336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162163, 0.777408, 0.607734,
		-0.317079, 0.624276, -0.713961,
		-0.934432, -0.076922, 0.347735,
		39.045155, 38.292694, 40.172657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581123, 39.034031, 40.052570>,  <39.699257, 38.346539, 39.929241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581123, 39.034031, 40.052570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271248, 38.852058, 40.228249>,  <39.085323, 38.742874, 40.333656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271248, 38.852058, 40.228249>,  <39.581123, 39.034031, 40.052570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271248, 38.852058, 40.228249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015242, 0.680916, 0.732203,
		-0.632160, 0.573923, -0.520563,
		-0.774688, -0.454935, 0.439196,
		39.038841, 38.715576, 40.360008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208145, 39.579388, 40.210827>,  <39.581123, 39.034031, 40.052570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208145, 39.579388, 40.210827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049702, 39.307957, 40.458256>,  <38.954636, 39.145096, 40.606712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049702, 39.307957, 40.458256>,  <39.208145, 39.579388, 40.210827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049702, 39.307957, 40.458256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132078, 0.708773, 0.692962,
		-0.908656, 0.192787, -0.370375,
		-0.396106, -0.678582, 0.618568,
		38.930870, 39.104382, 40.643826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548443, 39.880978, 40.474518>,  <39.208145, 39.579388, 40.210827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548443, 39.880978, 40.474518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614338, 39.584888, 40.735268>,  <38.653873, 39.407234, 40.891716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614338, 39.584888, 40.735268>,  <38.548443, 39.880978, 40.474518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614338, 39.584888, 40.735268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239382, 0.611136, 0.754460,
		-0.956848, -0.280334, -0.076519,
		0.164738, -0.740220, 0.651871,
		38.663761, 39.362823, 40.930828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939098, 39.833576, 40.801708>,  <38.548443, 39.880978, 40.474518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939098, 39.833576, 40.801708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.198528, 39.636177, 41.033504>,  <38.354187, 39.517738, 41.172581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.198528, 39.636177, 41.033504>,  <37.939098, 39.833576, 40.801708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198528, 39.636177, 41.033504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300474, 0.533498, 0.790629,
		-0.699334, -0.686903, 0.197728,
		0.648574, -0.493502, 0.579490,
		38.393101, 39.488125, 41.207352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645527, 39.514809, 41.482838>,  <37.939098, 39.833576, 40.801708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645527, 39.514809, 41.482838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033985, 39.598167, 41.529221>,  <38.267059, 39.648182, 41.557053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033985, 39.598167, 41.529221>,  <37.645527, 39.514809, 41.482838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033985, 39.598167, 41.529221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205064, 0.481447, 0.852149,
		0.121751, -0.851341, 0.510289,
		0.971147, 0.208392, 0.115962,
		38.325329, 39.660686, 41.564011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747971, 39.457497, 42.163925>,  <37.645527, 39.514809, 41.482838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747971, 39.457497, 42.163925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073582, 39.657078, 42.044991>,  <38.268948, 39.776825, 41.973629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073582, 39.657078, 42.044991>,  <37.747971, 39.457497, 42.163925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073582, 39.657078, 42.044991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112093, 0.367344, 0.923306,
		0.569909, -0.784924, 0.243099,
		0.814026, 0.498951, -0.297337,
		38.317791, 39.806763, 41.955788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263428, 39.252289, 42.599628>,  <37.747971, 39.457497, 42.163925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263428, 39.252289, 42.599628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.344269, 39.610901, 42.441952>,  <38.392773, 39.826069, 42.347347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.344269, 39.610901, 42.441952>,  <38.263428, 39.252289, 42.599628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344269, 39.610901, 42.441952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168565, 0.364643, 0.915763,
		0.964748, -0.251526, -0.077427,
		0.202105, 0.896532, -0.394187,
		38.404900, 39.879860, 42.323696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747101, 39.572933, 43.074329>,  <38.263428, 39.252289, 42.599628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747101, 39.572933, 43.074329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694794, 39.895023, 42.842979>,  <38.663410, 40.088276, 42.704170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694794, 39.895023, 42.842979>,  <38.747101, 39.572933, 43.074329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694794, 39.895023, 42.842979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193397, 0.592891, 0.781714,
		0.972367, -0.009634, -0.233259,
		-0.130766, 0.805225, -0.578371,
		38.655563, 40.136589, 42.669468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379360, 39.909000, 42.960903>,  <38.747101, 39.572933, 43.074329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379360, 39.909000, 42.960903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.150780, 40.225945, 42.875473>,  <39.013634, 40.416111, 42.824215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.150780, 40.225945, 42.875473>,  <39.379360, 39.909000, 42.960903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150780, 40.225945, 42.875473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425056, 0.508411, 0.748896,
		0.701979, 0.337173, -0.627327,
		-0.571448, 0.792359, -0.213576,
		38.979347, 40.463654, 42.811401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770920, 40.467976, 43.118526>,  <39.379360, 39.909000, 42.960903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770920, 40.467976, 43.118526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392696, 40.596100, 43.141567>,  <39.165764, 40.672974, 43.155392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392696, 40.596100, 43.141567>,  <39.770920, 40.467976, 43.118526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392696, 40.596100, 43.141567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172090, 0.341880, 0.923852,
		0.276232, 0.883468, -0.378391,
		-0.945559, 0.320315, 0.057598,
		39.109028, 40.692196, 43.158848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.246044, 41.975769, 44.462608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481003, 41.652447, 44.478630>,  <34.621979, 41.458454, 44.488243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481003, 41.652447, 44.478630>,  <34.246044, 41.975769, 44.462608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481003, 41.652447, 44.478630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376919, -0.317034, -0.870300,
		0.716171, 0.496109, -0.490891,
		0.587393, -0.808310, 0.040057,
		34.657219, 41.409954, 44.490646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527306, 41.967209, 43.745022>,  <34.246044, 41.975769, 44.462608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527306, 41.967209, 43.745022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.580688, 41.604465, 43.904922>,  <34.612717, 41.386822, 44.000862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.580688, 41.604465, 43.904922>,  <34.527306, 41.967209, 43.745022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580688, 41.604465, 43.904922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226580, -0.420594, -0.878500,
		0.964806, 0.026668, -0.261608,
		0.133458, -0.906857, 0.399750,
		34.620728, 41.332409, 44.024849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884380, 41.526558, 43.233284>,  <34.527306, 41.967209, 43.745022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884380, 41.526558, 43.233284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761707, 41.232388, 43.474976>,  <34.688103, 41.055885, 43.619991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761707, 41.232388, 43.474976>,  <34.884380, 41.526558, 43.233284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761707, 41.232388, 43.474976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250588, -0.550036, -0.796659,
		0.918233, -0.395734, -0.015603,
		-0.306682, -0.735428, 0.604228,
		34.669704, 41.011761, 43.656242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281513, 40.957905, 42.997746>,  <34.884380, 41.526558, 43.233284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281513, 40.957905, 42.997746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947643, 40.820316, 43.169796>,  <34.747322, 40.737762, 43.273026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947643, 40.820316, 43.169796>,  <35.281513, 40.957905, 42.997746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947643, 40.820316, 43.169796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216040, -0.513905, -0.830198,
		0.506607, -0.785866, 0.354630,
		-0.834671, -0.343970, 0.430127,
		34.697243, 40.717125, 43.298836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260468, 40.242550, 42.835014>,  <35.281513, 40.957905, 42.997746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260468, 40.242550, 42.835014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888336, 40.343765, 42.941189>,  <34.665058, 40.404495, 43.004894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888336, 40.343765, 42.941189>,  <35.260468, 40.242550, 42.835014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888336, 40.343765, 42.941189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364634, -0.561161, -0.743062,
		-0.039073, -0.788079, 0.614332,
		-0.930331, 0.253040, 0.265434,
		34.609238, 40.419678, 43.020821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881466, 39.706215, 42.713470>,  <35.260468, 40.242550, 42.835014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881466, 39.706215, 42.713470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585205, 39.972862, 42.747070>,  <34.407448, 40.132851, 42.767231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585205, 39.972862, 42.747070>,  <34.881466, 39.706215, 42.713470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585205, 39.972862, 42.747070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507539, -0.473166, -0.720082,
		-0.440271, -0.575965, 0.688786,
		-0.740652, 0.666617, 0.084003,
		34.363010, 40.172848, 42.772270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220119, 39.348930, 42.784386>,  <34.881466, 39.706215, 42.713470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220119, 39.348930, 42.784386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117802, 39.714222, 42.657532>,  <34.056412, 39.933399, 42.581417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117802, 39.714222, 42.657532>,  <34.220119, 39.348930, 42.784386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117802, 39.714222, 42.657532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672461, -0.403767, -0.620298,
		-0.694525, 0.054593, 0.717394,
		-0.255796, 0.913232, -0.317138,
		34.041061, 39.988190, 42.562389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532360, 39.301754, 42.695454>,  <34.220119, 39.348930, 42.784386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532360, 39.301754, 42.695454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654861, 39.614151, 42.477737>,  <33.728363, 39.801590, 42.347107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654861, 39.614151, 42.477737>,  <33.532360, 39.301754, 42.695454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654861, 39.614151, 42.477737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469138, -0.373689, -0.800166,
		-0.828323, 0.500402, 0.251951,
		0.306254, 0.780996, -0.544293,
		33.746738, 39.848450, 42.314449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988178, 39.331421, 42.195145>,  <33.532360, 39.301754, 42.695454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988178, 39.331421, 42.195145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304726, 39.516964, 42.035862>,  <33.494656, 39.628288, 41.940292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304726, 39.516964, 42.035862>,  <32.988178, 39.331421, 42.195145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304726, 39.516964, 42.035862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312756, -0.252485, -0.915661,
		-0.525274, 0.849171, -0.054737,
		0.791373, 0.463853, -0.398207,
		33.542137, 39.656120, 41.916401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697529, 39.614117, 41.567383>,  <32.988178, 39.331421, 42.195145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697529, 39.614117, 41.567383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090698, 39.651756, 41.504120>,  <33.326599, 39.674339, 41.466160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090698, 39.651756, 41.504120>,  <32.697529, 39.614117, 41.567383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090698, 39.651756, 41.504120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143209, -0.148672, -0.978462,
		-0.115588, 0.984399, -0.132657,
		0.982919, 0.094101, -0.158159,
		33.385574, 39.679985, 41.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822445, 40.069519, 40.990101>,  <32.697529, 39.614117, 41.567383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822445, 40.069519, 40.990101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169899, 39.871346, 40.991608>,  <33.378372, 39.752441, 40.992512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169899, 39.871346, 40.991608>,  <32.822445, 40.069519, 40.990101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169899, 39.871346, 40.991608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123255, -0.223460, -0.966889,
		0.479872, 0.839411, -0.255171,
		0.868638, -0.495434, 0.003770,
		33.430489, 39.722717, 40.992737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166008, 40.277115, 40.339706>,  <32.822445, 40.069519, 40.990101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166008, 40.277115, 40.339706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344341, 39.948399, 40.481632>,  <33.451340, 39.751167, 40.566788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344341, 39.948399, 40.481632>,  <33.166008, 40.277115, 40.339706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344341, 39.948399, 40.481632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065613, -0.425330, -0.902657,
		0.892710, 0.379151, -0.243545,
		0.445830, -0.821790, 0.354819,
		33.478088, 39.701862, 40.588078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722652, 40.208328, 39.878025>,  <33.166008, 40.277115, 40.339706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722652, 40.208328, 39.878025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648254, 39.849899, 40.039249>,  <33.603615, 39.634842, 40.135983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648254, 39.849899, 40.039249>,  <33.722652, 40.208328, 39.878025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648254, 39.849899, 40.039249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068134, -0.420992, -0.904502,
		0.980186, -0.140768, 0.139354,
		-0.185992, -0.896075, 0.403059,
		33.592457, 39.581078, 40.160168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185265, 39.718758, 39.586151>,  <33.722652, 40.208328, 39.878025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185265, 39.718758, 39.586151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873398, 39.506252, 39.718742>,  <33.686279, 39.378750, 39.798298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873398, 39.506252, 39.718742>,  <34.185265, 39.718758, 39.586151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873398, 39.506252, 39.718742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034877, -0.491683, -0.870076,
		0.625222, -0.689930, 0.364820,
		-0.779667, -0.531266, 0.331474,
		33.639496, 39.346874, 39.818184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934937, 39.477222, 39.486740>,  <34.185265, 39.718758, 39.586151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934937, 39.477222, 39.486740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007439, 39.811069, 39.278679>,  <35.050941, 40.011379, 39.153843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007439, 39.811069, 39.278679>,  <34.934937, 39.477222, 39.486740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007439, 39.811069, 39.278679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037263, 0.522707, 0.851697,
		0.982729, -0.173759, 0.063644,
		0.181257, 0.834617, -0.520154,
		35.061817, 40.061455, 39.122631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532806, 39.860832, 39.538483>,  <34.934937, 39.477222, 39.486740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532806, 39.860832, 39.538483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291233, 40.148376, 39.400780>,  <35.146290, 40.320904, 39.318157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291233, 40.148376, 39.400780>,  <35.532806, 39.860832, 39.538483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291233, 40.148376, 39.400780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354193, 0.628983, 0.692047,
		0.714015, 0.296013, -0.634475,
		-0.603929, 0.718858, -0.344258,
		35.110054, 40.364033, 39.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956528, 40.521679, 39.528156>,  <35.532806, 39.860832, 39.538483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956528, 40.521679, 39.528156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.583294, 40.664440, 39.545929>,  <35.359352, 40.750095, 39.556595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.583294, 40.664440, 39.545929>,  <35.956528, 40.521679, 39.528156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583294, 40.664440, 39.545929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291427, 0.677868, 0.674956,
		0.210772, 0.642740, -0.736519,
		-0.933084, 0.356903, 0.044436,
		35.303368, 40.771511, 39.559261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115143, 41.221416, 39.559235>,  <35.956528, 40.521679, 39.528156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115143, 41.221416, 39.559235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.728851, 41.187019, 39.657192>,  <35.497078, 41.166382, 39.715965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.728851, 41.187019, 39.657192>,  <36.115143, 41.221416, 39.559235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728851, 41.187019, 39.657192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095573, 0.759412, 0.643552,
		-0.241315, 0.644902, -0.725168,
		-0.965729, -0.085992, 0.244893,
		35.439133, 41.161221, 39.730659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841053, 41.958641, 39.587578>,  <36.115143, 41.221416, 39.559235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841053, 41.958641, 39.587578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600513, 41.724598, 39.805214>,  <35.456192, 41.584171, 39.935795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600513, 41.724598, 39.805214>,  <35.841053, 41.958641, 39.587578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600513, 41.724598, 39.805214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041694, 0.657066, 0.752679,
		-0.797901, 0.475305, -0.370728,
		-0.601345, -0.585106, 0.544091,
		35.420109, 41.549065, 39.968441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425430, 42.391144, 39.933609>,  <35.841053, 41.958641, 39.587578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425430, 42.391144, 39.933609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402199, 42.062973, 40.161129>,  <35.388260, 41.866070, 40.297642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402199, 42.062973, 40.161129>,  <35.425430, 42.391144, 39.933609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402199, 42.062973, 40.161129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034055, 0.567800, 0.822462,
		-0.997731, 0.067135, -0.005035,
		-0.058075, -0.820424, 0.568798,
		35.384777, 41.816845, 40.331768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113480, 42.701500, 40.589409>,  <35.425430, 42.391144, 39.933609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113480, 42.701500, 40.589409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235394, 42.330132, 40.674393>,  <35.308540, 42.107311, 40.725384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235394, 42.330132, 40.674393>,  <35.113480, 42.701500, 40.589409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235394, 42.330132, 40.674393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092872, 0.250979, 0.963527,
		-0.947882, -0.273938, 0.162720,
		0.304786, -0.928422, 0.212457,
		35.326828, 42.051605, 40.738129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600716, 42.446598, 41.112156>,  <35.113480, 42.701500, 40.589409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600716, 42.446598, 41.112156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948521, 42.254539, 41.158489>,  <35.157204, 42.139305, 41.186291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948521, 42.254539, 41.158489>,  <34.600716, 42.446598, 41.112156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948521, 42.254539, 41.158489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094864, 0.392498, 0.914847,
		-0.484721, -0.784480, 0.386829,
		0.869509, -0.480142, 0.115833,
		35.209373, 42.110497, 41.193237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561707, 42.142479, 41.740269>,  <34.600716, 42.446598, 41.112156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561707, 42.142479, 41.740269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952866, 42.200462, 41.679989>,  <35.187561, 42.235252, 41.643822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952866, 42.200462, 41.679989>,  <34.561707, 42.142479, 41.740269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952866, 42.200462, 41.679989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097220, 0.322887, 0.941431,
		0.185124, -0.935271, 0.301657,
		0.977894, 0.144955, -0.150701,
		35.246235, 42.243950, 41.634777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851250, 41.923466, 42.449024>,  <34.561707, 42.142479, 41.740269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851250, 41.923466, 42.449024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155159, 42.105415, 42.263187>,  <35.337505, 42.214584, 42.151684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155159, 42.105415, 42.263187>,  <34.851250, 41.923466, 42.449024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155159, 42.105415, 42.263187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290784, 0.401387, 0.868523,
		0.581547, -0.794972, 0.172692,
		0.759768, 0.454871, -0.464591,
		35.383091, 42.241875, 42.123810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464668, 41.811638, 42.757523>,  <34.851250, 41.923466, 42.449024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464668, 41.811638, 42.757523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558998, 42.151527, 42.568905>,  <35.615597, 42.355461, 42.455734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558998, 42.151527, 42.568905>,  <35.464668, 41.811638, 42.757523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558998, 42.151527, 42.568905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486157, 0.316996, 0.814350,
		0.841451, -0.421287, -0.338345,
		0.235821, 0.849724, -0.471548,
		35.629745, 42.406445, 42.427441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206844, 41.966827, 42.905834>,  <35.464668, 41.811638, 42.757523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206844, 41.966827, 42.905834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046043, 42.310135, 42.778233>,  <35.949562, 42.516121, 42.701672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046043, 42.310135, 42.778233>,  <36.206844, 41.966827, 42.905834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046043, 42.310135, 42.778233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399606, 0.477920, 0.782245,
		0.823839, 0.186985, -0.535095,
		-0.402001, 0.858271, -0.319008,
		35.925442, 42.567616, 42.682529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736832, 42.421333, 42.895760>,  <36.206844, 41.966827, 42.905834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736832, 42.421333, 42.895760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401020, 42.638390, 42.906601>,  <36.199532, 42.768623, 42.913105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401020, 42.638390, 42.906601>,  <36.736832, 42.421333, 42.895760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401020, 42.638390, 42.906601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438879, 0.647907, 0.622577,
		0.320276, 0.534565, -0.782089,
		-0.839529, 0.542639, 0.027100,
		36.149162, 42.801182, 42.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925282, 43.234203, 42.657848>,  <36.736832, 42.421333, 42.895760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925282, 43.234203, 42.657848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591942, 43.188713, 42.874218>,  <36.391937, 43.161419, 43.004040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591942, 43.188713, 42.874218>,  <36.925282, 43.234203, 42.657848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591942, 43.188713, 42.874218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325688, 0.689665, 0.646753,
		-0.446606, 0.715143, -0.537693,
		-0.833349, -0.113724, 0.540922,
		36.341938, 43.154594, 43.036495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488220, 43.808846, 42.446209>,  <36.925282, 43.234203, 42.657848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488220, 43.808846, 42.446209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876743, 43.731804, 42.390392>,  <38.109856, 43.685577, 42.356903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876743, 43.731804, 42.390392>,  <37.488220, 43.808846, 42.446209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876743, 43.731804, 42.390392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219182, -0.497038, -0.839590,
		0.092353, 0.846082, -0.524991,
		0.971303, -0.192607, -0.139543,
		38.168133, 43.674023, 42.348530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515987, 43.925396, 41.720631>,  <37.488220, 43.808846, 42.446209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515987, 43.925396, 41.720631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842300, 43.718372, 41.823891>,  <38.038086, 43.594158, 41.885845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842300, 43.718372, 41.823891>,  <37.515987, 43.925396, 41.720631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842300, 43.718372, 41.823891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028007, -0.481165, -0.876182,
		0.577684, 0.707542, -0.407020,
		0.815780, -0.517556, 0.258146,
		38.087036, 43.563107, 41.901333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901939, 44.011997, 41.157955>,  <37.515987, 43.925396, 41.720631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901939, 44.011997, 41.157955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020878, 43.673195, 41.334209>,  <38.092243, 43.469913, 41.439960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020878, 43.673195, 41.334209>,  <37.901939, 44.011997, 41.157955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020878, 43.673195, 41.334209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049690, -0.474611, -0.878792,
		0.953475, 0.239412, -0.183213,
		0.297348, -0.847010, 0.440633,
		38.110081, 43.419090, 41.466400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515793, 43.712666, 40.786770>,  <37.901939, 44.011997, 41.157955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515793, 43.712666, 40.786770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.383533, 43.413918, 41.017544>,  <38.304180, 43.234669, 41.156010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.383533, 43.413918, 41.017544>,  <38.515793, 43.712666, 40.786770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383533, 43.413918, 41.017544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046552, -0.623483, -0.780450,
		0.942606, -0.231195, 0.240921,
		-0.330646, -0.746872, 0.576936,
		38.284340, 43.189857, 41.190624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878510, 43.223755, 40.563065>,  <38.515793, 43.712666, 40.786770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878510, 43.223755, 40.563065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612747, 43.030083, 40.790798>,  <38.453289, 42.913879, 40.927437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612747, 43.030083, 40.790798>,  <38.878510, 43.223755, 40.563065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612747, 43.030083, 40.790798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000655, -0.761401, -0.648281,
		0.747373, -0.431093, 0.505561,
		-0.664404, -0.484177, 0.569333,
		38.413425, 42.884830, 40.961597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128548, 42.475681, 40.698540>,  <38.878510, 43.223755, 40.563065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128548, 42.475681, 40.698540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.730190, 42.496593, 40.728088>,  <38.491177, 42.509140, 40.745819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.730190, 42.496593, 40.728088>,  <39.128548, 42.475681, 40.698540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730190, 42.496593, 40.728088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090488, -0.563148, -0.821387,
		-0.001340, -0.824701, 0.565568,
		-0.995897, 0.052278, 0.073871,
		38.431419, 42.512276, 40.750248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922340, 41.837269, 40.835308>,  <39.128548, 42.475681, 40.698540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922340, 41.837269, 40.835308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602299, 42.014458, 40.673512>,  <38.410275, 42.120770, 40.576435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602299, 42.014458, 40.673512>,  <38.922340, 41.837269, 40.835308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602299, 42.014458, 40.673512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033233, -0.640535, -0.767209,
		-0.598938, -0.627291, 0.497775,
		-0.800106, 0.442968, -0.404487,
		38.362267, 42.147346, 40.552166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481590, 41.306011, 40.737526>,  <38.922340, 41.837269, 40.835308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481590, 41.306011, 40.737526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334805, 41.596573, 40.505089>,  <38.246731, 41.770908, 40.365627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334805, 41.596573, 40.505089>,  <38.481590, 41.306011, 40.737526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334805, 41.596573, 40.505089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133327, -0.659300, -0.739965,
		-0.920630, -0.194067, 0.338790,
		-0.366967, 0.726403, -0.581096,
		38.224712, 41.814495, 40.330761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956879, 41.063797, 40.333912>,  <38.481590, 41.306011, 40.737526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956879, 41.063797, 40.333912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047279, 41.375801, 40.100502>,  <38.101521, 41.563004, 39.960457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047279, 41.375801, 40.100502>,  <37.956879, 41.063797, 40.333912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047279, 41.375801, 40.100502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027653, -0.593645, -0.804251,
		-0.973734, 0.197898, -0.112595,
		0.226001, 0.780013, -0.583526,
		38.115078, 41.609806, 39.925446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704460, 40.838650, 39.688324>,  <37.956879, 41.063797, 40.333912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704460, 40.838650, 39.688324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940094, 41.143909, 39.582050>,  <38.081474, 41.327065, 39.518288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940094, 41.143909, 39.582050>,  <37.704460, 40.838650, 39.688324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940094, 41.143909, 39.582050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107719, -0.400010, -0.910158,
		-0.800862, 0.507538, -0.317844,
		0.589081, 0.763149, -0.265682,
		38.116817, 41.372852, 39.502346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610756, 40.829388, 38.944008>,  <37.704460, 40.838650, 39.688324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610756, 40.829388, 38.944008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.879921, 41.122204, 38.986546>,  <38.041420, 41.297894, 39.012066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.879921, 41.122204, 38.986546>,  <37.610756, 40.829388, 38.944008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879921, 41.122204, 38.986546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287790, -0.126645, -0.949283,
		-0.681443, 0.669390, -0.295893,
		0.672913, 0.732037, 0.106342,
		38.081795, 41.341816, 39.018448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544235, 41.386433, 38.419674>,  <37.610756, 40.829388, 38.944008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544235, 41.386433, 38.419674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.930405, 41.368916, 38.522465>,  <38.162106, 41.358406, 38.584141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.930405, 41.368916, 38.522465>,  <37.544235, 41.386433, 38.419674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930405, 41.368916, 38.522465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235825, -0.273406, -0.932543,
		0.111102, 0.960901, -0.253624,
		0.965424, -0.043796, 0.256981,
		38.220032, 41.355778, 38.599560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881130, 41.891010, 37.989159>,  <37.544235, 41.386433, 38.419674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881130, 41.891010, 37.989159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111759, 41.588001, 38.111614>,  <38.250137, 41.406197, 38.185089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111759, 41.588001, 38.111614>,  <37.881130, 41.891010, 37.989159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111759, 41.588001, 38.111614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300092, -0.152164, -0.941696,
		0.759941, 0.634826, 0.139593,
		0.576572, -0.757523, 0.306142,
		38.284729, 41.360744, 38.203457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479275, 41.802048, 37.587605>,  <37.881130, 41.891010, 37.989159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479275, 41.802048, 37.587605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516548, 41.441681, 37.757153>,  <38.538914, 41.225460, 37.858883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516548, 41.441681, 37.757153>,  <38.479275, 41.802048, 37.587605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516548, 41.441681, 37.757153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193715, -0.401181, -0.895281,
		0.976622, 0.165537, 0.137137,
		0.093185, -0.900917, 0.423869,
		38.544502, 41.171406, 37.884312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.910872, 37.937790, 28.235241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701393, 37.869190, 27.901455>,  <29.575706, 37.828030, 27.701183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701393, 37.869190, 27.901455>,  <29.910872, 37.937790, 28.235241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701393, 37.869190, 27.901455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851205, 0.145084, 0.504382,
		0.034565, 0.974443, -0.221962,
		-0.523695, -0.171501, -0.834465,
		29.544285, 37.817741, 27.651115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314417, 38.502914, 28.148180>,  <29.910872, 37.937790, 28.235241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314417, 38.502914, 28.148180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227770, 38.164783, 27.952831>,  <29.175781, 37.961906, 27.835623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227770, 38.164783, 27.952831>,  <29.314417, 38.502914, 28.148180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227770, 38.164783, 27.952831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900453, -0.020268, 0.434480,
		-0.377175, 0.533871, -0.756783,
		-0.216618, -0.845323, -0.488371,
		29.162785, 37.911186, 27.806320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633368, 38.534767, 27.730860>,  <29.314417, 38.502914, 28.148180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633368, 38.534767, 27.730860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703913, 38.156250, 27.839254>,  <28.746241, 37.929142, 27.904291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703913, 38.156250, 27.839254>,  <28.633368, 38.534767, 27.730860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703913, 38.156250, 27.839254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872661, -0.022955, 0.487787,
		-0.455367, -0.322508, -0.829837,
		0.176364, -0.946288, 0.270987,
		28.756823, 37.872364, 27.920551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098583, 38.140289, 27.579889>,  <28.633368, 38.534767, 27.730860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098583, 38.140289, 27.579889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286201, 37.946175, 27.875048>,  <28.398773, 37.829704, 28.052143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286201, 37.946175, 27.875048>,  <28.098583, 38.140289, 27.579889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286201, 37.946175, 27.875048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830982, 0.040462, 0.554826,
		-0.299108, -0.873417, -0.384288,
		0.469046, -0.485289, 0.737896,
		28.426916, 37.800587, 28.096416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538267, 38.006546, 28.073465>,  <28.098583, 38.140289, 27.579889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538267, 38.006546, 28.073465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828123, 37.809048, 28.265760>,  <28.002037, 37.690548, 28.381138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828123, 37.809048, 28.265760>,  <27.538267, 38.006546, 28.073465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828123, 37.809048, 28.265760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659581, -0.294849, 0.691388,
		-0.199624, -0.818094, -0.539325,
		0.724640, -0.493746, 0.480741,
		28.045515, 37.660923, 28.409981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222054, 37.254555, 28.254919>,  <27.538267, 38.006546, 28.073465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222054, 37.254555, 28.254919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505898, 37.342892, 28.522556>,  <27.676203, 37.395893, 28.683138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505898, 37.342892, 28.522556>,  <27.222054, 37.254555, 28.254919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505898, 37.342892, 28.522556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689699, 0.023477, 0.723715,
		0.144123, -0.975026, 0.168979,
		0.709608, 0.220849, 0.669091,
		27.718781, 37.409145, 28.723284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046904, 36.716118, 28.797615>,  <27.222054, 37.254555, 28.254919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046904, 36.716118, 28.797615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270691, 37.013184, 28.944826>,  <27.404964, 37.191422, 29.033154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270691, 37.013184, 28.944826>,  <27.046904, 36.716118, 28.797615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270691, 37.013184, 28.944826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503024, -0.048671, 0.862901,
		0.658756, -0.667895, 0.346347,
		0.559470, 0.742662, 0.368030,
		27.438532, 37.235981, 29.055235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251467, 36.464024, 29.443039>,  <27.046904, 36.716118, 28.797615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251467, 36.464024, 29.443039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338131, 36.852303, 29.484634>,  <27.390129, 37.085270, 29.509592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338131, 36.852303, 29.484634>,  <27.251467, 36.464024, 29.443039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338131, 36.852303, 29.484634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376871, -0.015098, 0.926143,
		0.900571, -0.239847, 0.362555,
		0.216659, 0.970693, 0.103988,
		27.403130, 37.143509, 29.515831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716856, 36.564072, 30.016052>,  <27.251467, 36.464024, 29.443039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716856, 36.564072, 30.016052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556278, 36.927162, 29.967278>,  <27.459930, 37.145016, 29.938013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556278, 36.927162, 29.967278>,  <27.716856, 36.564072, 30.016052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556278, 36.927162, 29.967278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298311, -0.003712, 0.954462,
		0.865940, 0.419540, 0.272276,
		-0.401446, 0.907729, -0.121939,
		27.435844, 37.199482, 29.930696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975794, 36.921246, 30.563471>,  <27.716856, 36.564072, 30.016052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975794, 36.921246, 30.563471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639938, 37.102867, 30.444248>,  <27.438425, 37.211842, 30.372715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639938, 37.102867, 30.444248>,  <27.975794, 36.921246, 30.563471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639938, 37.102867, 30.444248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344824, -0.021637, 0.938418,
		0.419646, 0.890710, 0.174737,
		-0.839639, 0.454057, -0.298058,
		27.388046, 37.239086, 30.354830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908871, 37.570026, 30.983734>,  <27.975794, 36.921246, 30.563471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908871, 37.570026, 30.983734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559683, 37.449715, 30.830132>,  <27.350170, 37.377529, 30.737970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559683, 37.449715, 30.830132>,  <27.908871, 37.570026, 30.983734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559683, 37.449715, 30.830132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403383, 0.002542, 0.915027,
		-0.274242, 0.953692, -0.123547,
		-0.872968, -0.300776, -0.384006,
		27.297792, 37.359482, 30.714930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398365, 37.951637, 31.315735>,  <27.908871, 37.570026, 30.983734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398365, 37.951637, 31.315735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193823, 37.641632, 31.167210>,  <27.071098, 37.455627, 31.078094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193823, 37.641632, 31.167210>,  <27.398365, 37.951637, 31.315735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193823, 37.641632, 31.167210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457975, -0.119848, 0.880849,
		-0.727170, 0.620477, -0.293652,
		-0.511353, -0.775012, -0.371313,
		27.040417, 37.409130, 31.055815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708635, 37.954044, 31.552250>,  <27.398365, 37.951637, 31.315735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708635, 37.954044, 31.552250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.763226, 37.569508, 31.456589>,  <26.795980, 37.338787, 31.399193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.763226, 37.569508, 31.456589>,  <26.708635, 37.954044, 31.552250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763226, 37.569508, 31.456589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467655, -0.275340, 0.839933,
		-0.873312, -0.002788, -0.487154,
		0.136475, -0.961343, -0.239153,
		26.804169, 37.281105, 31.384842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104847, 37.677692, 31.879091>,  <26.708635, 37.954044, 31.552250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104847, 37.677692, 31.879091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353907, 37.373253, 31.806391>,  <26.503342, 37.190590, 31.762770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353907, 37.373253, 31.806391>,  <26.104847, 37.677692, 31.879091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353907, 37.373253, 31.806391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219124, -0.392569, 0.893238,
		-0.751196, -0.516346, -0.411207,
		0.622647, -0.761102, -0.181752,
		26.540701, 37.144920, 31.751865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844301, 37.257687, 32.296124>,  <26.104847, 37.677692, 31.879091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844301, 37.257687, 32.296124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.197680, 37.088882, 32.214710>,  <26.409706, 36.987598, 32.165863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.197680, 37.088882, 32.214710>,  <25.844301, 37.257687, 32.296124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197680, 37.088882, 32.214710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003788, -0.427964, 0.903788,
		-0.468518, -0.799219, -0.376484,
		0.883446, -0.422015, -0.203536,
		26.462713, 36.962280, 32.153648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806330, 36.465187, 32.516811>,  <25.844301, 37.257687, 32.296124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806330, 36.465187, 32.516811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188335, 36.580982, 32.491039>,  <26.417538, 36.650459, 32.475578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188335, 36.580982, 32.491039>,  <25.806330, 36.465187, 32.516811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188335, 36.580982, 32.491039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156138, -0.306093, 0.939110,
		0.252137, -0.906921, -0.337522,
		0.955012, 0.289484, -0.064428,
		26.474838, 36.667828, 32.471710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139877, 35.923683, 32.711624>,  <25.806330, 36.465187, 32.516811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139877, 35.923683, 32.711624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.358017, 36.247593, 32.798214>,  <26.488901, 36.441940, 32.850166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.358017, 36.247593, 32.798214>,  <26.139877, 35.923683, 32.711624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358017, 36.247593, 32.798214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125778, -0.334388, 0.934005,
		0.828717, -0.482133, -0.284210,
		0.545351, 0.809773, 0.216471,
		26.521622, 36.490524, 32.863155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570515, 35.638870, 33.124561>,  <26.139877, 35.923683, 32.711624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570515, 35.638870, 33.124561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.587620, 36.024788, 33.228359>,  <26.597883, 36.256340, 33.290638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.587620, 36.024788, 33.228359>,  <26.570515, 35.638870, 33.124561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587620, 36.024788, 33.228359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016928, -0.258995, 0.965730,
		0.998942, -0.045689, 0.005257,
		0.042762, 0.964797, 0.259495,
		26.600449, 36.314228, 33.306206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231842, 35.685295, 33.382652>,  <26.570515, 35.638870, 33.124561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231842, 35.685295, 33.382652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020666, 35.999088, 33.512806>,  <26.893961, 36.187363, 33.590897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020666, 35.999088, 33.512806>,  <27.231842, 35.685295, 33.382652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020666, 35.999088, 33.512806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257502, -0.217234, 0.941542,
		0.809304, 0.580863, -0.087319,
		-0.527939, 0.784479, 0.325382,
		26.862284, 36.234432, 33.610420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530983, 35.782116, 33.903721>,  <27.231842, 35.685295, 33.382652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530983, 35.782116, 33.903721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.189135, 35.979511, 33.968330>,  <26.984026, 36.097950, 34.007095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.189135, 35.979511, 33.968330>,  <27.530983, 35.782116, 33.903721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189135, 35.979511, 33.968330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054847, -0.223539, 0.973151,
		0.516347, 0.840534, 0.163974,
		-0.854621, 0.493490, 0.161525,
		26.932749, 36.127560, 34.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616470, 36.471695, 34.185307>,  <27.530983, 35.782116, 33.903721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616470, 36.471695, 34.185307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888319, 36.180046, 34.153057>,  <28.051428, 36.005058, 34.133709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888319, 36.180046, 34.153057>,  <27.616470, 36.471695, 34.185307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888319, 36.180046, 34.153057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689773, 0.672585, -0.268033,
		0.249654, 0.126549, 0.960030,
		0.679622, -0.729119, -0.080624,
		28.092205, 35.961311, 34.128868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175831, 36.651264, 34.546379>,  <27.616470, 36.471695, 34.185307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175831, 36.651264, 34.546379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312614, 36.413353, 34.255363>,  <28.394684, 36.270607, 34.080753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312614, 36.413353, 34.255363>,  <28.175831, 36.651264, 34.546379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312614, 36.413353, 34.255363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554599, 0.752732, -0.354703,
		0.758608, -0.282196, 0.587265,
		0.341957, -0.594777, -0.727534,
		28.415201, 36.234921, 34.037102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815868, 36.888287, 34.466698>,  <28.175831, 36.651264, 34.546379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815868, 36.888287, 34.466698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743057, 36.665043, 34.142876>,  <28.699371, 36.531097, 33.948582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743057, 36.665043, 34.142876>,  <28.815868, 36.888287, 34.466698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743057, 36.665043, 34.142876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476141, 0.670319, -0.569176,
		0.860323, -0.489068, 0.143723,
		-0.182025, -0.558108, -0.809557,
		28.688450, 36.497612, 33.900009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532503, 36.756569, 34.208771>,  <28.815868, 36.888287, 34.466698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532503, 36.756569, 34.208771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280067, 36.743153, 33.898777>,  <29.128607, 36.735104, 33.712780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280067, 36.743153, 33.898777>,  <29.532503, 36.756569, 34.208771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280067, 36.743153, 33.898777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505513, 0.740004, -0.443678,
		0.588373, -0.671766, -0.450054,
		-0.631089, -0.033540, -0.774985,
		29.090740, 36.733089, 33.666283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978214, 36.870903, 33.716881>,  <29.532503, 36.756569, 34.208771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978214, 36.870903, 33.716881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620480, 36.939056, 33.551407>,  <29.405840, 36.979950, 33.452122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620480, 36.939056, 33.551407>,  <29.978214, 36.870903, 33.716881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620480, 36.939056, 33.551407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423335, 0.621435, -0.659247,
		0.144749, -0.764714, -0.627902,
		-0.894335, 0.170388, -0.413682,
		29.352179, 36.990173, 33.427303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122931, 36.834518, 33.062294>,  <29.978214, 36.870903, 33.716881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122931, 36.834518, 33.062294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771879, 37.023716, 33.031185>,  <29.561249, 37.137234, 33.012520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771879, 37.023716, 33.031185>,  <30.122931, 36.834518, 33.062294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771879, 37.023716, 33.031185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381231, 0.590395, -0.711405,
		-0.290573, -0.653997, -0.698466,
		-0.877627, 0.472992, -0.077771,
		29.508591, 37.165615, 33.007854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020123, 36.945900, 32.375694>,  <30.122931, 36.834518, 33.062294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020123, 36.945900, 32.375694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769236, 37.199390, 32.556797>,  <29.618704, 37.351486, 32.665459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769236, 37.199390, 32.556797>,  <30.020123, 36.945900, 32.375694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769236, 37.199390, 32.556797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173402, 0.680352, -0.712076,
		-0.759296, -0.368117, -0.536618,
		-0.627217, 0.633727, 0.452757,
		29.581070, 37.389507, 32.692623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580612, 37.183697, 31.834753>,  <30.020123, 36.945900, 32.375694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580612, 37.183697, 31.834753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538664, 37.459209, 32.121693>,  <29.513494, 37.624516, 32.293858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538664, 37.459209, 32.121693>,  <29.580612, 37.183697, 31.834753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538664, 37.459209, 32.121693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043422, 0.723808, -0.688634,
		-0.993538, -0.041068, -0.105814,
		-0.104870, 0.688779, 0.717347,
		29.507202, 37.665844, 32.336895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988829, 37.539509, 31.696581>,  <29.580612, 37.183697, 31.834753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988829, 37.539509, 31.696581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246431, 37.775299, 31.891628>,  <29.400993, 37.916775, 32.008656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246431, 37.775299, 31.891628>,  <28.988829, 37.539509, 31.696581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246431, 37.775299, 31.891628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102024, 0.697879, -0.708912,
		-0.758185, 0.406797, 0.509581,
		0.644009, 0.589476, 0.487618,
		29.439634, 37.952141, 32.037914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781326, 38.287766, 31.538521>,  <28.988829, 37.539509, 31.696581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781326, 38.287766, 31.538521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137375, 38.327351, 31.716461>,  <29.351004, 38.351101, 31.823225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137375, 38.327351, 31.716461>,  <28.781326, 38.287766, 31.538521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137375, 38.327351, 31.716461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189957, 0.806726, -0.559562,
		-0.414249, 0.582580, 0.699284,
		0.890120, 0.098965, 0.444850,
		29.404411, 38.357040, 31.849916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877354, 39.022591, 31.546398>,  <28.781326, 38.287766, 31.538521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877354, 39.022591, 31.546398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239988, 38.874157, 31.626795>,  <29.457569, 38.785099, 31.675032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239988, 38.874157, 31.626795>,  <28.877354, 39.022591, 31.546398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239988, 38.874157, 31.626795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407186, 0.644010, -0.647650,
		0.110891, 0.668992, 0.734951,
		0.906589, -0.371080, 0.200989,
		29.511965, 38.762833, 31.687092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326460, 39.587551, 31.717876>,  <28.877354, 39.022591, 31.546398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326460, 39.587551, 31.717876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578863, 39.302143, 31.596081>,  <29.730305, 39.130898, 31.523003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578863, 39.302143, 31.596081>,  <29.326460, 39.587551, 31.717876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578863, 39.302143, 31.596081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493685, 0.672096, -0.551871,
		0.598420, 0.197912, 0.776353,
		0.631006, -0.713525, -0.304490,
		29.768166, 39.088085, 31.504734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959629, 39.566635, 31.930365>,  <29.326460, 39.587551, 31.717876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959629, 39.566635, 31.930365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.016151, 39.392345, 31.574797>,  <30.050066, 39.287773, 31.361456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.016151, 39.392345, 31.574797>,  <29.959629, 39.566635, 31.930365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016151, 39.392345, 31.574797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624430, 0.736005, -0.261503,
		0.768192, -0.518117, 0.376079,
		0.141307, -0.435720, -0.888921,
		30.058544, 39.261631, 31.308121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421257, 39.985023, 31.691906>,  <29.959629, 39.566635, 31.930365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421257, 39.985023, 31.691906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342821, 39.762405, 31.368967>,  <30.295759, 39.628834, 31.175203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342821, 39.762405, 31.368967>,  <30.421257, 39.985023, 31.691906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342821, 39.762405, 31.368967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414885, 0.698917, -0.582568,
		0.888492, -0.449192, 0.093851,
		-0.196090, -0.556545, -0.807345,
		30.283995, 39.595444, 31.126764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007931, 40.027485, 31.175007>,  <30.421257, 39.985023, 31.691906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007931, 40.027485, 31.175007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682697, 39.929874, 30.963593>,  <30.487556, 39.871307, 30.836744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682697, 39.929874, 30.963593>,  <31.007931, 40.027485, 31.175007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682697, 39.929874, 30.963593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273283, 0.641651, -0.716660,
		0.514015, -0.727143, -0.455029,
		-0.813084, -0.244022, -0.528534,
		30.438772, 39.856667, 30.805033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274879, 39.852108, 30.560839>,  <31.007931, 40.027485, 31.175007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274879, 39.852108, 30.560839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883873, 39.894127, 30.487709>,  <30.649269, 39.919338, 30.443832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883873, 39.894127, 30.487709>,  <31.274879, 39.852108, 30.560839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883873, 39.894127, 30.487709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204283, 0.686538, -0.697807,
		0.052215, -0.719466, -0.692561,
		-0.977518, 0.105043, -0.182823,
		30.590618, 39.925640, 30.432861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185005, 39.875694, 29.750887>,  <31.274879, 39.852108, 30.560839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185005, 39.875694, 29.750887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871759, 40.061443, 29.916338>,  <30.683811, 40.172894, 30.015608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871759, 40.061443, 29.916338>,  <31.185005, 39.875694, 29.750887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871759, 40.061443, 29.916338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048428, 0.708643, -0.703903,
		-0.619989, -0.531206, -0.577437,
		-0.783114, 0.464376, 0.413626,
		30.636826, 40.200756, 30.040426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824057, 40.149654, 29.150082>,  <31.185005, 39.875694, 29.750887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824057, 40.149654, 29.150082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704193, 40.360004, 29.468494>,  <30.632275, 40.486214, 29.659542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704193, 40.360004, 29.468494>,  <30.824057, 40.149654, 29.150082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704193, 40.360004, 29.468494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046207, 0.841393, -0.538445,
		-0.952927, -0.124568, -0.276431,
		-0.299660, 0.525871, 0.796030,
		30.614296, 40.517765, 29.707304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453436, 40.606052, 28.807909>,  <30.824057, 40.149654, 29.150082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453436, 40.606052, 28.807909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551317, 40.742153, 29.171083>,  <30.610046, 40.823814, 29.388988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551317, 40.742153, 29.171083>,  <30.453436, 40.606052, 28.807909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551317, 40.742153, 29.171083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274108, 0.873930, -0.401386,
		-0.930045, 0.347094, 0.120590,
		0.244705, 0.340252, 0.907936,
		30.624729, 40.844231, 29.443464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157148, 41.189396, 28.904341>,  <30.453436, 40.606052, 28.807909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157148, 41.189396, 28.904341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.460939, 41.250618, 29.157249>,  <30.643213, 41.287350, 29.308994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.460939, 41.250618, 29.157249>,  <30.157148, 41.189396, 28.904341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460939, 41.250618, 29.157249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185947, 0.880303, -0.436453,
		-0.623392, 0.449045, 0.640110,
		0.759477, 0.153055, 0.632272,
		30.688782, 41.296535, 29.346931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162767, 41.924637, 29.077225>,  <30.157148, 41.189396, 28.904341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162767, 41.924637, 29.077225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533144, 41.783554, 29.131237>,  <30.755369, 41.698906, 29.163645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533144, 41.783554, 29.131237>,  <30.162767, 41.924637, 29.077225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533144, 41.783554, 29.131237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367220, 0.757268, -0.540088,
		0.088237, 0.549676, 0.830705,
		0.925940, -0.352707, 0.135033,
		30.810926, 41.677742, 29.171747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519012, 42.391819, 29.404909>,  <30.162767, 41.924637, 29.077225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519012, 42.391819, 29.404909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772524, 42.185944, 29.173939>,  <30.924631, 42.062420, 29.035357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772524, 42.185944, 29.173939>,  <30.519012, 42.391819, 29.404909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772524, 42.185944, 29.173939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295954, 0.851046, -0.433741,
		0.714656, 0.104005, 0.691700,
		0.633780, -0.514688, -0.577425,
		30.962658, 42.031536, 29.000711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.692131, 41.381454, 42.926975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358246, 41.289654, 43.127213>,  <39.157917, 41.234573, 43.247353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358246, 41.289654, 43.127213>,  <39.692131, 41.381454, 42.926975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358246, 41.289654, 43.127213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237459, 0.670171, 0.703195,
		-0.496865, 0.705833, -0.504901,
		-0.834709, -0.229499, 0.500591,
		39.107834, 41.220802, 43.277390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200500, 42.039982, 43.085125>,  <39.692131, 41.381454, 42.926975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200500, 42.039982, 43.085125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074387, 41.768108, 43.350037>,  <38.998718, 41.604984, 43.508984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074387, 41.768108, 43.350037>,  <39.200500, 42.039982, 43.085125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074387, 41.768108, 43.350037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005718, 0.696504, 0.717530,
		-0.948980, 0.230014, -0.215711,
		-0.315286, -0.679688, 0.662283,
		38.979801, 41.564201, 43.548721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639553, 42.413349, 43.500015>,  <39.200500, 42.039982, 43.085125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639553, 42.413349, 43.500015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.771774, 42.105473, 43.718487>,  <38.851109, 41.920746, 43.849571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.771774, 42.105473, 43.718487>,  <38.639553, 42.413349, 43.500015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771774, 42.105473, 43.718487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015786, 0.583137, 0.812221,
		-0.943655, -0.259862, 0.204909,
		0.330555, -0.769690, 0.546178,
		38.870941, 41.874565, 43.882339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292103, 42.582073, 44.133549>,  <38.639553, 42.413349, 43.500015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292103, 42.582073, 44.133549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.548279, 42.293388, 44.238598>,  <38.701984, 42.120178, 44.301628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.548279, 42.293388, 44.238598>,  <38.292103, 42.582073, 44.133549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548279, 42.293388, 44.238598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096861, 0.415125, 0.904593,
		-0.761878, -0.553897, 0.335768,
		0.640437, -0.721713, 0.262624,
		38.740410, 42.076874, 44.317387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068287, 42.341774, 44.871155>,  <38.292103, 42.582073, 44.133549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068287, 42.341774, 44.871155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454811, 42.250397, 44.823711>,  <38.686726, 42.195572, 44.795246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454811, 42.250397, 44.823711>,  <38.068287, 42.341774, 44.871155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454811, 42.250397, 44.823711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203292, 0.394699, 0.896038,
		-0.157878, -0.889959, 0.427840,
		0.966306, -0.228441, -0.118607,
		38.744701, 42.181866, 44.788128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247490, 42.036385, 45.473763>,  <38.068287, 42.341774, 44.871155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247490, 42.036385, 45.473763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595451, 42.161835, 45.321495>,  <38.804230, 42.237103, 45.230137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595451, 42.161835, 45.321495>,  <38.247490, 42.036385, 45.473763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595451, 42.161835, 45.321495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194691, 0.490780, 0.849253,
		0.453163, -0.812883, 0.365875,
		0.869907, 0.313617, -0.380664,
		38.856422, 42.255920, 45.207294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779453, 41.779510, 45.856892>,  <38.247490, 42.036385, 45.473763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779453, 41.779510, 45.856892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.932625, 42.111141, 45.693924>,  <39.024529, 42.310120, 45.596142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.932625, 42.111141, 45.693924>,  <38.779453, 41.779510, 45.856892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932625, 42.111141, 45.693924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296259, 0.307525, 0.904245,
		0.874982, -0.466967, -0.127860,
		0.382933, 0.829078, -0.407422,
		39.047504, 42.359863, 45.571697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437191, 41.861385, 46.203079>,  <38.779453, 41.779510, 45.856892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437191, 41.861385, 46.203079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.383556, 42.218800, 46.031681>,  <39.351376, 42.433250, 45.928841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.383556, 42.218800, 46.031681>,  <39.437191, 41.861385, 46.203079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383556, 42.218800, 46.031681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481593, 0.436664, 0.759863,
		0.866076, -0.104471, -0.488874,
		-0.134090, 0.893538, -0.428497,
		39.343330, 42.486862, 45.903133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049259, 42.141491, 46.296551>,  <39.437191, 41.861385, 46.203079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049259, 42.141491, 46.296551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791588, 42.437508, 46.219223>,  <39.636986, 42.615120, 46.172829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791588, 42.437508, 46.219223>,  <40.049259, 42.141491, 46.296551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791588, 42.437508, 46.219223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400074, 0.541411, 0.739470,
		0.651903, 0.399008, -0.644837,
		-0.644176, 0.740045, -0.193315,
		39.598335, 42.659523, 46.161228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473900, 42.760269, 46.159519>,  <40.049259, 42.141491, 46.296551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473900, 42.760269, 46.159519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.110958, 42.874283, 46.283108>,  <39.893192, 42.942692, 46.357262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.110958, 42.874283, 46.283108>,  <40.473900, 42.760269, 46.159519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110958, 42.874283, 46.283108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419972, 0.646537, 0.636878,
		-0.018232, 0.707635, -0.706343,
		-0.907354, 0.285033, 0.308975,
		39.838753, 42.959793, 46.375801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464169, 43.469936, 46.037910>,  <40.473900, 42.760269, 46.159519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464169, 43.469936, 46.037910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.194569, 43.375927, 46.318050>,  <40.032810, 43.319523, 46.486134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.194569, 43.375927, 46.318050>,  <40.464169, 43.469936, 46.037910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194569, 43.375927, 46.318050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628126, 0.316669, 0.710759,
		-0.388823, 0.918959, -0.065811,
		-0.673999, -0.235021, 0.700350,
		39.992371, 43.305420, 46.528156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487667, 44.119621, 46.606228>,  <40.464169, 43.469936, 46.037910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487667, 44.119621, 46.606228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.313850, 43.812523, 46.794586>,  <40.209560, 43.628262, 46.907600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.313850, 43.812523, 46.794586>,  <40.487667, 44.119621, 46.606228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313850, 43.812523, 46.794586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612740, 0.131185, 0.779320,
		-0.660096, 0.627178, 0.413426,
		-0.434537, -0.767749, 0.470892,
		40.183491, 43.582199, 46.935852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243416, 44.371426, 47.261902>,  <40.487667, 44.119621, 46.606228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243416, 44.371426, 47.261902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318676, 43.978600, 47.257072>,  <40.363834, 43.742905, 47.254173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318676, 43.978600, 47.257072>,  <40.243416, 44.371426, 47.261902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318676, 43.978600, 47.257072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622571, 0.109751, 0.774829,
		-0.759608, -0.153305, 0.632055,
		0.188154, -0.982065, -0.012075,
		40.375122, 43.683979, 47.253448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238342, 45.079853, 47.186783>,  <40.243416, 44.371426, 47.261902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238342, 45.079853, 47.186783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295822, 45.390499, 47.432129>,  <40.330311, 45.576885, 47.579338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295822, 45.390499, 47.432129>,  <40.238342, 45.079853, 47.186783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295822, 45.390499, 47.432129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750260, -0.489668, 0.444225,
		0.645338, 0.396351, -0.653027,
		0.143698, 0.776615, 0.613367,
		40.338932, 45.623486, 47.616138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545761, 45.776142, 46.774082>,  <40.238342, 45.079853, 47.186783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545761, 45.776142, 46.774082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299892, 46.091160, 46.791748>,  <40.152370, 46.280170, 46.802345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299892, 46.091160, 46.791748>,  <40.545761, 45.776142, 46.774082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299892, 46.091160, 46.791748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322254, -0.199628, -0.925365,
		-0.719949, -0.583031, 0.376495,
		-0.614676, 0.787543, 0.044162,
		40.115490, 46.327423, 46.804996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875881, 45.542843, 46.657661>,  <40.545761, 45.776142, 46.774082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875881, 45.542843, 46.657661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936127, 45.925381, 46.557491>,  <39.972275, 46.154903, 46.497387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936127, 45.925381, 46.557491>,  <39.875881, 45.542843, 46.657661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936127, 45.925381, 46.557491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337898, -0.188261, -0.922162,
		-0.929053, 0.223511, 0.294793,
		0.150615, 0.956348, -0.250428,
		39.981312, 46.212284, 46.482365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254147, 45.788822, 46.457520>,  <39.875881, 45.542843, 46.657661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254147, 45.788822, 46.457520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508842, 46.038094, 46.275875>,  <39.661659, 46.187656, 46.166889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508842, 46.038094, 46.275875>,  <39.254147, 45.788822, 46.457520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508842, 46.038094, 46.275875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478124, -0.142959, -0.866580,
		-0.604951, 0.768905, 0.206928,
		0.636735, 0.623176, -0.454115,
		39.699863, 46.225048, 46.139641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893742, 46.156685, 45.986683>,  <39.254147, 45.788822, 46.457520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893742, 46.156685, 45.986683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.254314, 46.231209, 45.830368>,  <39.470657, 46.275925, 45.736580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.254314, 46.231209, 45.830368>,  <38.893742, 46.156685, 45.986683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254314, 46.231209, 45.830368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401816, 0.024060, -0.915404,
		-0.161146, 0.982196, 0.096550,
		0.901430, 0.186309, -0.390785,
		39.524742, 46.287102, 45.713131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793438, 46.547161, 45.456100>,  <38.893742, 46.156685, 45.986683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793438, 46.547161, 45.456100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.154556, 46.391888, 45.382042>,  <39.371227, 46.298721, 45.337605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.154556, 46.391888, 45.382042>,  <38.793438, 46.547161, 45.456100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154556, 46.391888, 45.382042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283092, -0.212276, -0.935306,
		0.323770, 0.896800, -0.301533,
		0.902791, -0.388186, -0.185148,
		39.425392, 46.275433, 45.326496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820076, 46.660686, 44.835144>,  <38.793438, 46.547161, 45.456100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820076, 46.660686, 44.835144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104225, 46.380951, 44.866886>,  <39.274715, 46.213108, 44.885929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104225, 46.380951, 44.866886>,  <38.820076, 46.660686, 44.835144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104225, 46.380951, 44.866886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334947, -0.435067, -0.835780,
		0.619017, 0.567135, -0.543301,
		0.710372, -0.699339, 0.079354,
		39.317337, 46.171150, 44.890694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148041, 46.622242, 44.164078>,  <38.820076, 46.660686, 44.835144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148041, 46.622242, 44.164078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215042, 46.260754, 44.321674>,  <39.255241, 46.043861, 44.416233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215042, 46.260754, 44.321674>,  <39.148041, 46.622242, 44.164078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215042, 46.260754, 44.321674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319015, -0.427824, -0.845693,
		0.932831, 0.015962, -0.359960,
		0.167499, -0.903721, 0.393996,
		39.265293, 45.989635, 44.439873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558964, 46.221806, 43.630985>,  <39.148041, 46.622242, 44.164078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558964, 46.221806, 43.630985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405602, 45.942287, 43.872543>,  <39.313583, 45.774578, 44.017479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405602, 45.942287, 43.872543>,  <39.558964, 46.221806, 43.630985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405602, 45.942287, 43.872543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086905, -0.623666, -0.776845,
		0.919483, -0.350328, 0.178388,
		-0.383405, -0.698792, 0.603895,
		39.290581, 45.732651, 44.053711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703899, 45.641586, 43.304672>,  <39.558964, 46.221806, 43.630985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703899, 45.641586, 43.304672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409931, 45.491776, 43.530811>,  <39.233551, 45.401890, 43.666496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409931, 45.491776, 43.530811>,  <39.703899, 45.641586, 43.304672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409931, 45.491776, 43.530811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056265, -0.797114, -0.601201,
		0.675811, -0.473646, 0.564746,
		-0.734924, -0.374524, 0.565348,
		39.189453, 45.379417, 43.700417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790058, 44.898388, 43.308060>,  <39.703899, 45.641586, 43.304672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790058, 44.898388, 43.308060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.410149, 44.945122, 43.424187>,  <39.182205, 44.973164, 43.493862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.410149, 44.945122, 43.424187>,  <39.790058, 44.898388, 43.308060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410149, 44.945122, 43.424187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266004, -0.790099, -0.552255,
		0.164856, -0.601741, 0.781492,
		-0.949771, 0.116837, 0.290318,
		39.125217, 44.980171, 43.511284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578682, 44.266815, 43.486069>,  <39.790058, 44.898388, 43.308060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578682, 44.266815, 43.486069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.236614, 44.461273, 43.414135>,  <39.031372, 44.577950, 43.370975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.236614, 44.461273, 43.414135>,  <39.578682, 44.266815, 43.486069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236614, 44.461273, 43.414135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313307, -0.761190, -0.567828,
		-0.412936, -0.429248, 0.803262,
		-0.855174, 0.486144, -0.179837,
		38.980061, 44.607117, 43.360184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992348, 43.739365, 43.594944>,  <39.578682, 44.266815, 43.486069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992348, 43.739365, 43.594944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.851772, 44.053917, 43.391735>,  <38.767426, 44.242649, 43.269810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.851772, 44.053917, 43.391735>,  <38.992348, 43.739365, 43.594944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851772, 44.053917, 43.391735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376940, -0.615566, -0.692094,
		-0.856975, -0.051736, 0.512755,
		-0.351441, 0.786385, -0.508023,
		38.746342, 44.289833, 43.239326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356503, 43.564915, 43.462494>,  <38.992348, 43.739365, 43.594944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356503, 43.564915, 43.462494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446945, 43.842083, 43.188637>,  <38.501213, 44.008385, 43.024323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446945, 43.842083, 43.188637>,  <38.356503, 43.564915, 43.462494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446945, 43.842083, 43.188637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471700, -0.537061, -0.699331,
		-0.852275, 0.481074, 0.205414,
		0.226110, 0.692917, -0.684647,
		38.514778, 44.049957, 42.983242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747971, 43.770794, 43.108765>,  <38.356503, 43.564915, 43.462494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747971, 43.770794, 43.108765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063705, 43.839748, 42.873058>,  <38.253147, 43.881119, 42.731636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063705, 43.839748, 42.873058>,  <37.747971, 43.770794, 43.108765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063705, 43.839748, 42.873058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416493, -0.554823, -0.720212,
		-0.451089, 0.813913, -0.366146,
		0.789336, 0.172383, -0.589264,
		38.300507, 43.891464, 42.696278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033802, 43.930595, 43.050541>,  <37.747971, 43.770794, 43.108765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033802, 43.930595, 43.050541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761501, 43.698593, 43.229504>,  <36.598122, 43.559391, 43.336880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761501, 43.698593, 43.229504>,  <37.033802, 43.930595, 43.050541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761501, 43.698593, 43.229504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102486, 0.529355, 0.842187,
		-0.725312, 0.619171, -0.300915,
		-0.680749, -0.580009, 0.447404,
		36.557278, 43.524590, 43.363724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625343, 44.380943, 43.516273>,  <37.033802, 43.930595, 43.050541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625343, 44.380943, 43.516273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572048, 44.006927, 43.647701>,  <36.540070, 43.782520, 43.726559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572048, 44.006927, 43.647701>,  <36.625343, 44.380943, 43.516273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572048, 44.006927, 43.647701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155816, 0.307637, 0.938659,
		-0.978759, 0.176259, 0.104705,
		-0.133236, -0.935036, 0.328566,
		36.532078, 43.726418, 43.746273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215660, 44.404816, 44.040855>,  <36.625343, 44.380943, 43.516273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215660, 44.404816, 44.040855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375710, 44.046635, 44.118893>,  <36.471737, 43.831726, 44.165718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375710, 44.046635, 44.118893>,  <36.215660, 44.404816, 44.040855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375710, 44.046635, 44.118893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100316, 0.254396, 0.961883,
		-0.910956, -0.365298, 0.191618,
		0.400121, -0.895455, 0.195098,
		36.495747, 43.778000, 44.177422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913895, 44.311848, 44.657810>,  <36.215660, 44.404816, 44.040855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913895, 44.311848, 44.657810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238926, 44.079609, 44.637321>,  <36.433945, 43.940266, 44.625027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238926, 44.079609, 44.637321>,  <35.913895, 44.311848, 44.657810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238926, 44.079609, 44.637321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313288, 0.360970, 0.878380,
		-0.491494, -0.729800, 0.475211,
		0.812578, -0.580597, -0.051223,
		36.482700, 43.905430, 44.621956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823933, 43.816116, 45.160305>,  <35.913895, 44.311848, 44.657810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823933, 43.816116, 45.160305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.217678, 43.834457, 45.092270>,  <36.453926, 43.845463, 45.051449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.217678, 43.834457, 45.092270>,  <35.823933, 43.816116, 45.160305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217678, 43.834457, 45.092270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141172, 0.372233, 0.917340,
		0.105376, -0.927006, 0.359939,
		0.984361, 0.045853, -0.170092,
		36.512985, 43.848213, 45.041241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156635, 43.573177, 45.720917>,  <35.823933, 43.816116, 45.160305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156635, 43.573177, 45.720917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472080, 43.754280, 45.554497>,  <36.661346, 43.862942, 45.454647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472080, 43.754280, 45.554497>,  <36.156635, 43.573177, 45.720917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472080, 43.754280, 45.554497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301741, 0.304595, 0.903424,
		0.535758, -0.837993, 0.103593,
		0.788617, 0.452758, -0.416046,
		36.708664, 43.890106, 45.429684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670074, 43.371738, 46.098804>,  <36.156635, 43.573177, 45.720917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670074, 43.371738, 46.098804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824886, 43.694637, 45.920567>,  <36.917774, 43.888378, 45.813625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824886, 43.694637, 45.920567>,  <36.670074, 43.371738, 46.098804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824886, 43.694637, 45.920567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465527, 0.246072, 0.850137,
		0.795922, -0.536465, -0.280559,
		0.387031, 0.807251, -0.445593,
		36.940994, 43.936813, 45.786888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815224, 42.591156, 46.207829>,  <36.670074, 43.371738, 46.098804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815224, 42.591156, 46.207829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515705, 42.495411, 46.455055>,  <36.335995, 42.437965, 46.603394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515705, 42.495411, 46.455055>,  <36.815224, 42.591156, 46.207829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515705, 42.495411, 46.455055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348399, -0.651147, -0.674259,
		0.563843, -0.720219, 0.404186,
		-0.748798, -0.239358, 0.618069,
		36.291065, 42.423603, 46.640476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792004, 41.788433, 46.278725>,  <36.815224, 42.591156, 46.207829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792004, 41.788433, 46.278725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437286, 41.951294, 46.366203>,  <36.224457, 42.049011, 46.418690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437286, 41.951294, 46.366203>,  <36.792004, 41.788433, 46.278725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437286, 41.951294, 46.366203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454133, -0.679766, -0.575918,
		-0.085823, -0.610037, 0.787712,
		-0.886791, 0.407153, 0.218698,
		36.171249, 42.073441, 46.431812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344273, 41.256104, 46.444328>,  <36.792004, 41.788433, 46.278725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344273, 41.256104, 46.444328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106617, 41.542690, 46.298084>,  <35.964024, 41.714642, 46.210339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106617, 41.542690, 46.298084>,  <36.344273, 41.256104, 46.444328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106617, 41.542690, 46.298084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351526, -0.640110, -0.683146,
		-0.723487, -0.277359, 0.632169,
		-0.594135, 0.716472, -0.365613,
		35.928375, 41.757633, 46.188400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702923, 40.914478, 46.175838>,  <36.344273, 41.256104, 46.444328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702923, 40.914478, 46.175838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628078, 41.270786, 46.010181>,  <35.583172, 41.484573, 45.910789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628078, 41.270786, 46.010181>,  <35.702923, 40.914478, 46.175838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628078, 41.270786, 46.010181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496312, -0.449543, -0.742687,
		-0.847740, 0.066578, 0.526216,
		-0.187110, 0.890774, -0.414140,
		35.571945, 41.538017, 45.885941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988750, 41.047062, 46.131310>,  <35.702923, 40.914478, 46.175838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988750, 41.047062, 46.131310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164078, 41.261345, 45.842617>,  <35.269276, 41.389915, 45.669403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164078, 41.261345, 45.842617>,  <34.988750, 41.047062, 46.131310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164078, 41.261345, 45.842617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641049, -0.376519, -0.668797,
		-0.630025, 0.755810, 0.178381,
		0.438319, 0.535710, -0.721728,
		35.295574, 41.422058, 45.626099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454224, 41.274197, 45.704304>,  <34.988750, 41.047062, 46.131310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454224, 41.274197, 45.704304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767303, 41.363937, 45.472084>,  <34.955154, 41.417782, 45.332752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767303, 41.363937, 45.472084>,  <34.454224, 41.274197, 45.704304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767303, 41.363937, 45.472084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572385, -0.106873, -0.812991,
		-0.244438, 0.968631, 0.044763,
		0.782704, 0.224347, -0.580553,
		35.002113, 41.431240, 45.297916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182163, 41.684959, 45.223976>,  <34.454224, 41.274197, 45.704304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182163, 41.684959, 45.223976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523335, 41.533291, 45.080456>,  <34.728039, 41.442287, 44.994343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523335, 41.533291, 45.080456>,  <34.182163, 41.684959, 45.223976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523335, 41.533291, 45.080456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460631, -0.223274, -0.859051,
		0.245621, 0.897983, -0.365097,
		0.852930, -0.379176, -0.358798,
		34.779213, 41.419537, 44.972816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.122421, 40.090836, 48.601700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.032383, 40.450214, 48.450905>,  <39.978359, 40.665844, 48.360428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.032383, 40.450214, 48.450905>,  <40.122421, 40.090836, 48.601700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032383, 40.450214, 48.450905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256041, -0.427864, -0.866819,
		-0.940093, -0.098592, 0.326351,
		-0.225095, 0.898450, -0.376988,
		39.964855, 40.719749, 48.337807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733986, 39.894016, 48.061295>,  <40.122421, 40.090836, 48.601700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733986, 39.894016, 48.061295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.822201, 40.266903, 47.946526>,  <39.875130, 40.490635, 47.877663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.822201, 40.266903, 47.946526>,  <39.733986, 39.894016, 48.061295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822201, 40.266903, 47.946526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226449, -0.237195, -0.944700,
		-0.948727, 0.273319, 0.158789,
		0.220540, 0.932221, -0.286926,
		39.888363, 40.546570, 47.860447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173969, 40.183529, 47.702778>,  <39.733986, 39.894016, 48.061295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173969, 40.183529, 47.702778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.494038, 40.383709, 47.570549>,  <39.686077, 40.503815, 47.491211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.494038, 40.383709, 47.570549>,  <39.173969, 40.183529, 47.702778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494038, 40.383709, 47.570549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219083, -0.269202, -0.937834,
		-0.558328, 0.822851, -0.105768,
		0.800170, 0.500447, -0.330576,
		39.734089, 40.533844, 47.471375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929001, 40.534561, 47.010796>,  <39.173969, 40.183529, 47.702778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929001, 40.534561, 47.010796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.327866, 40.504684, 47.006943>,  <39.567184, 40.486759, 47.004631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.327866, 40.504684, 47.006943>,  <38.929001, 40.534561, 47.010796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327866, 40.504684, 47.006943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037989, -0.388435, -0.920693,
		0.065027, 0.918444, -0.390170,
		0.997160, -0.074692, -0.009632,
		39.627014, 40.482277, 47.004055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059834, 40.723564, 46.410755>,  <38.929001, 40.534561, 47.010796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059834, 40.723564, 46.410755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.401245, 40.545334, 46.518791>,  <39.606094, 40.438396, 46.583614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.401245, 40.545334, 46.518791>,  <39.059834, 40.723564, 46.410755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401245, 40.545334, 46.518791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001768, -0.515893, -0.856651,
		0.521039, 0.731656, -0.439543,
		0.853531, -0.445572, 0.270094,
		39.657303, 40.411663, 46.599819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554100, 40.887897, 45.954262>,  <39.059834, 40.723564, 46.410755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554100, 40.887897, 45.954262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.703613, 40.561951, 46.131481>,  <39.793320, 40.366383, 46.237812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.703613, 40.561951, 46.131481>,  <39.554100, 40.887897, 45.954262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703613, 40.561951, 46.131481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056425, -0.456805, -0.887776,
		0.925800, 0.356830, -0.124765,
		0.373778, -0.814863, 0.443044,
		39.815746, 40.317493, 46.264393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160236, 40.643452, 45.546223>,  <39.554100, 40.887897, 45.954262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160236, 40.643452, 45.546223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.974209, 40.338974, 45.727016>,  <39.862591, 40.156288, 45.835495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.974209, 40.338974, 45.727016>,  <40.160236, 40.643452, 45.546223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974209, 40.338974, 45.727016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040496, -0.528319, -0.848080,
		0.884348, -0.376111, 0.276530,
		-0.465068, -0.761196, 0.451987,
		39.834690, 40.110615, 45.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456608, 39.986500, 45.178268>,  <40.160236, 40.643452, 45.546223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456608, 39.986500, 45.178268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.120670, 39.887173, 45.371346>,  <39.919106, 39.827576, 45.487194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.120670, 39.887173, 45.371346>,  <40.456608, 39.986500, 45.178268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120670, 39.887173, 45.371346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159882, -0.736628, -0.657128,
		0.518742, -0.629062, 0.578955,
		-0.839848, -0.248315, 0.482695,
		39.868717, 39.812679, 45.516155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405151, 39.142406, 45.292206>,  <40.456608, 39.986500, 45.178268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405151, 39.142406, 45.292206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.035160, 39.289810, 45.329323>,  <39.813164, 39.378254, 45.351593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.035160, 39.289810, 45.329323>,  <40.405151, 39.142406, 45.292206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035160, 39.289810, 45.329323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329988, -0.657801, -0.677057,
		-0.188462, -0.656886, 0.730057,
		-0.924981, 0.368510, 0.092794,
		39.757668, 39.400364, 45.357162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982056, 38.573444, 45.404842>,  <40.405151, 39.142406, 45.292206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982056, 38.573444, 45.404842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.699795, 38.843880, 45.320019>,  <39.530437, 39.006142, 45.269123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.699795, 38.843880, 45.320019>,  <39.982056, 38.573444, 45.404842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699795, 38.843880, 45.320019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435609, -0.649979, -0.622714,
		-0.558840, -0.347043, 0.753166,
		-0.705650, 0.676083, -0.212059,
		39.488098, 39.046703, 45.256401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338257, 38.237770, 45.571339>,  <39.982056, 38.573444, 45.404842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338257, 38.237770, 45.571339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.255081, 38.522911, 45.303429>,  <39.205177, 38.693996, 45.142681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.255081, 38.522911, 45.303429>,  <39.338257, 38.237770, 45.571339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255081, 38.522911, 45.303429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348439, -0.693811, -0.630251,
		-0.913975, 0.102323, 0.392657,
		-0.207940, 0.712851, -0.669779,
		39.192699, 38.736767, 45.102493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724934, 37.997581, 45.215904>,  <39.338257, 38.237770, 45.571339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724934, 37.997581, 45.215904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.871029, 38.285446, 44.979706>,  <38.958687, 38.458168, 44.837986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.871029, 38.285446, 44.979706>,  <38.724934, 37.997581, 45.215904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871029, 38.285446, 44.979706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320568, -0.498286, -0.805573,
		-0.873977, 0.483519, 0.048708,
		0.365239, 0.719666, -0.590492,
		38.980602, 38.501347, 44.802559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033318, 38.269836, 45.093147>,  <38.724934, 37.997581, 45.215904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033318, 38.269836, 45.093147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.649929, 38.296162, 45.204151>,  <37.419895, 38.311954, 45.270752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.649929, 38.296162, 45.204151>,  <38.033318, 38.269836, 45.093147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649929, 38.296162, 45.204151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251879, 0.651740, 0.715396,
		-0.133783, 0.755582, -0.641247,
		-0.958467, 0.065809, 0.277507,
		37.362389, 38.315903, 45.287403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092724, 38.861877, 45.264694>,  <38.033318, 38.269836, 45.093147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092724, 38.861877, 45.264694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.754894, 38.718517, 45.423809>,  <37.552197, 38.632500, 45.519279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.754894, 38.718517, 45.423809>,  <38.092724, 38.861877, 45.264694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754894, 38.718517, 45.423809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111800, 0.608510, 0.785631,
		-0.523632, 0.707999, -0.473864,
		-0.844577, -0.358404, 0.397789,
		37.501522, 38.610996, 45.543144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728813, 39.509750, 45.531937>,  <38.092724, 38.861877, 45.264694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728813, 39.509750, 45.531937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.590969, 39.200726, 45.745251>,  <37.508263, 39.015312, 45.873238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.590969, 39.200726, 45.745251>,  <37.728813, 39.509750, 45.531937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590969, 39.200726, 45.745251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060627, 0.585212, 0.808611,
		-0.936784, 0.246328, -0.248511,
		-0.344615, -0.772561, 0.533283,
		37.487583, 38.968956, 45.905235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138866, 39.788567, 45.861347>,  <37.728813, 39.509750, 45.531937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138866, 39.788567, 45.861347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.229343, 39.461189, 46.072624>,  <37.283630, 39.264763, 46.199390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.229343, 39.461189, 46.072624>,  <37.138866, 39.788567, 45.861347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229343, 39.461189, 46.072624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145746, 0.507703, 0.849114,
		-0.963118, -0.269043, -0.004447,
		0.226190, -0.818446, 0.528190,
		37.297199, 39.215656, 46.231083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622936, 39.709263, 46.427242>,  <37.138866, 39.788567, 45.861347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622936, 39.709263, 46.427242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.960049, 39.522427, 46.534237>,  <37.162315, 39.410324, 46.598434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.960049, 39.522427, 46.534237>,  <36.622936, 39.709263, 46.427242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960049, 39.522427, 46.534237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026896, 0.459776, 0.887627,
		-0.537584, -0.755270, 0.374928,
		0.842781, -0.467090, 0.267482,
		37.212883, 39.382301, 46.614483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536327, 39.475864, 47.099854>,  <36.622936, 39.709263, 46.427242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536327, 39.475864, 47.099854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933182, 39.459118, 47.052670>,  <37.171295, 39.449070, 47.024357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933182, 39.459118, 47.052670>,  <36.536327, 39.475864, 47.099854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933182, 39.459118, 47.052670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125118, 0.359578, 0.924689,
		0.003702, -0.932175, 0.361988,
		0.992135, -0.041868, -0.117963,
		37.230824, 39.446556, 47.017281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711082, 39.345478, 47.754517>,  <36.536327, 39.475864, 47.099854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711082, 39.345478, 47.754517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051228, 39.461926, 47.579185>,  <37.255314, 39.531796, 47.473988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051228, 39.461926, 47.579185>,  <36.711082, 39.345478, 47.754517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051228, 39.461926, 47.579185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234623, 0.535854, 0.811056,
		0.470993, -0.792535, 0.387368,
		0.850363, 0.291117, -0.438331,
		37.306335, 39.549259, 47.447685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208954, 39.086388, 48.251694>,  <36.711082, 39.345478, 47.754517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208954, 39.086388, 48.251694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.341579, 39.393993, 48.033089>,  <37.421154, 39.578556, 47.901924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.341579, 39.393993, 48.033089>,  <37.208954, 39.086388, 48.251694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341579, 39.393993, 48.033089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221268, 0.499736, 0.837439,
		0.917118, -0.398590, -0.004465,
		0.331563, 0.769019, -0.546512,
		37.441048, 39.624699, 47.869137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784370, 39.243301, 48.568642>,  <37.208954, 39.086388, 48.251694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784370, 39.243301, 48.568642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658546, 39.570011, 48.375179>,  <37.583054, 39.766037, 48.259102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658546, 39.570011, 48.375179>,  <37.784370, 39.243301, 48.568642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658546, 39.570011, 48.375179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056588, 0.524753, 0.849371,
		0.947551, 0.239806, -0.211284,
		-0.314556, 0.816779, -0.483660,
		37.564178, 39.815044, 48.230080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158749, 39.684010, 48.960461>,  <37.784370, 39.243301, 48.568642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158749, 39.684010, 48.960461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874939, 39.886372, 48.764240>,  <37.704655, 40.007790, 48.646507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874939, 39.886372, 48.764240>,  <38.158749, 39.684010, 48.960461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874939, 39.886372, 48.764240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064081, 0.739566, 0.670026,
		0.701763, 0.443963, -0.557158,
		-0.709522, 0.505903, -0.490551,
		37.662083, 40.038143, 48.617077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415634, 40.373966, 48.820049>,  <38.158749, 39.684010, 48.960461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415634, 40.373966, 48.820049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017288, 40.406105, 48.803085>,  <37.778282, 40.425388, 48.792908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017288, 40.406105, 48.803085>,  <38.415634, 40.373966, 48.820049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017288, 40.406105, 48.803085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033449, 0.758277, 0.651074,
		0.084469, 0.646963, -0.757829,
		-0.995865, 0.080344, -0.042411,
		37.718529, 40.430206, 48.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320919, 41.146778, 48.824352>,  <38.415634, 40.373966, 48.820049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320919, 41.146778, 48.824352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.978386, 40.978592, 48.944283>,  <37.772865, 40.877678, 49.016243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.978386, 40.978592, 48.944283>,  <38.320919, 41.146778, 48.824352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978386, 40.978592, 48.944283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021448, 0.609044, 0.792846,
		-0.515976, 0.672511, -0.530564,
		-0.856335, -0.420470, 0.299828,
		37.721485, 40.852451, 49.034229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844406, 41.699474, 48.999744>,  <38.320919, 41.146778, 48.824352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844406, 41.699474, 48.999744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.677265, 41.384865, 49.181637>,  <37.576981, 41.196098, 49.290771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.677265, 41.384865, 49.181637>,  <37.844406, 41.699474, 48.999744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677265, 41.384865, 49.181637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081961, 0.531111, 0.843328,
		-0.904808, 0.315121, -0.286393,
		-0.417857, -0.786523, 0.454726,
		37.551907, 41.148907, 49.318054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354156, 42.001369, 49.365532>,  <37.844406, 41.699474, 48.999744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354156, 42.001369, 49.365532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.420414, 41.650661, 49.546127>,  <37.460167, 41.440239, 49.654484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.420414, 41.650661, 49.546127>,  <37.354156, 42.001369, 49.365532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420414, 41.650661, 49.546127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051037, 0.449580, 0.891781,
		-0.984865, -0.170758, 0.029721,
		0.165641, -0.876766, 0.451491,
		37.470108, 41.387630, 49.681576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572544, 41.926479, 49.428490>,  <37.354156, 42.001369, 49.365532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572544, 41.926479, 49.428490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736771, 42.291054, 49.417805>,  <36.835308, 42.509800, 49.411396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736771, 42.291054, 49.417805>,  <36.572544, 41.926479, 49.428490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736771, 42.291054, 49.417805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222000, 0.071505, -0.972421,
		-0.884391, 0.405177, 0.231697,
		0.410570, 0.911438, -0.026711,
		36.859943, 42.564484, 49.409790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132809, 42.164032, 49.015736>,  <36.572544, 41.926479, 49.428490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132809, 42.164032, 49.015736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429550, 42.432014, 49.027157>,  <36.607594, 42.592804, 49.034008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429550, 42.432014, 49.027157>,  <36.132809, 42.164032, 49.015736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429550, 42.432014, 49.027157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230964, 0.295262, -0.927079,
		-0.629529, 0.681164, 0.373776,
		0.741855, 0.669952, 0.028552,
		36.652107, 42.632999, 49.035721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872135, 42.985840, 48.939850>,  <36.132809, 42.164032, 49.015736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872135, 42.985840, 48.939850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.240143, 42.901779, 48.807549>,  <36.460949, 42.851341, 48.728168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.240143, 42.901779, 48.807549>,  <35.872135, 42.985840, 48.939850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240143, 42.901779, 48.807549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269854, 0.272269, -0.923606,
		0.284154, 0.938991, 0.193782,
		0.920019, -0.210154, -0.330757,
		36.516148, 42.838734, 48.708321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792408, 43.277054, 48.313965>,  <35.872135, 42.985840, 48.939850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792408, 43.277054, 48.313965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146439, 43.095985, 48.270649>,  <36.358856, 42.987343, 48.244659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146439, 43.095985, 48.270649>,  <35.792408, 43.277054, 48.313965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146439, 43.095985, 48.270649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091772, 0.058374, -0.994067,
		0.456308, 0.889764, 0.010123,
		0.885077, -0.452672, -0.108292,
		36.411961, 42.960182, 48.238163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121819, 43.598267, 47.845139>,  <35.792408, 43.277054, 48.313965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121819, 43.598267, 47.845139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.322071, 43.252266, 47.831619>,  <36.442223, 43.044666, 47.823509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.322071, 43.252266, 47.831619>,  <36.121819, 43.598267, 47.845139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322071, 43.252266, 47.831619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233119, -0.097116, -0.967587,
		0.833683, 0.492280, -0.250267,
		0.500628, -0.865002, -0.033796,
		36.472260, 42.992764, 47.821480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623608, 43.588966, 47.220394>,  <36.121819, 43.598267, 47.845139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623608, 43.588966, 47.220394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.531776, 43.207413, 47.297752>,  <36.476677, 42.978481, 47.344166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.531776, 43.207413, 47.297752>,  <36.623608, 43.588966, 47.220394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531776, 43.207413, 47.297752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280946, -0.125293, -0.951510,
		0.931860, -0.272780, -0.239225,
		-0.229579, -0.953883, 0.193392,
		36.462902, 42.921249, 47.355770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012199, 43.122955, 46.784264>,  <36.623608, 43.588966, 47.220394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012199, 43.122955, 46.784264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.681870, 42.936344, 46.910980>,  <36.483673, 42.824375, 46.987011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.681870, 42.936344, 46.910980>,  <37.012199, 43.122955, 46.784264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681870, 42.936344, 46.910980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257460, -0.187888, -0.947846,
		0.501723, -0.864318, 0.035050,
		-0.825826, -0.466532, 0.316795,
		36.434120, 42.796383, 47.006020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478386, 43.445499, 46.379349>,  <37.012199, 43.122955, 46.784264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478386, 43.445499, 46.379349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.368519, 43.807774, 46.250175>,  <37.302597, 44.025139, 46.172672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.368519, 43.807774, 46.250175>,  <37.478386, 43.445499, 46.379349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368519, 43.807774, 46.250175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421552, 0.415280, 0.806124,
		0.864205, 0.085285, -0.495860,
		-0.274671, 0.905687, -0.322935,
		37.286118, 44.079479, 46.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061821, 43.908070, 46.479187>,  <37.478386, 43.445499, 46.379349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061821, 43.908070, 46.479187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.740543, 44.144318, 46.448067>,  <37.547779, 44.286068, 46.429394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.740543, 44.144318, 46.448067>,  <38.061821, 43.908070, 46.479187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740543, 44.144318, 46.448067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358528, 0.583548, 0.728649,
		0.475754, 0.557351, -0.680454,
		-0.803191, 0.590620, -0.077800,
		37.499584, 44.321503, 46.424728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344208, 44.571117, 46.441719>,  <38.061821, 43.908070, 46.479187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344208, 44.571117, 46.441719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967442, 44.625328, 46.564636>,  <37.741383, 44.657856, 46.638386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967442, 44.625328, 46.564636>,  <38.344208, 44.571117, 46.441719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967442, 44.625328, 46.564636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318050, 0.653869, 0.686512,
		-0.107890, 0.744371, -0.658993,
		-0.941915, 0.135525, 0.307293,
		37.684868, 44.665985, 46.656826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249676, 45.250374, 46.529339>,  <38.344208, 44.571117, 46.441719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249676, 45.250374, 46.529339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.963909, 45.099842, 46.765301>,  <37.792450, 45.009525, 46.906879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.963909, 45.099842, 46.765301>,  <38.249676, 45.250374, 46.529339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963909, 45.099842, 46.765301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165787, 0.728015, 0.665213,
		-0.679797, 0.573038, -0.457717,
		-0.714417, -0.376326, 0.589904,
		37.749584, 44.986946, 46.942272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895500, 45.791824, 46.685444>,  <38.249676, 45.250374, 46.529339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895500, 45.791824, 46.685444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.794888, 45.531624, 46.972103>,  <37.734520, 45.375504, 47.144096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.794888, 45.531624, 46.972103>,  <37.895500, 45.791824, 46.685444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794888, 45.531624, 46.972103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141396, 0.707808, 0.692109,
		-0.957464, 0.275421, -0.086061,
		-0.251536, -0.650501, 0.716644,
		37.719425, 45.336475, 47.187096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381508, 46.163929, 47.128666>,  <37.895500, 45.791824, 46.685444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381508, 46.163929, 47.128666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536289, 45.854984, 47.330151>,  <37.629158, 45.669617, 47.451042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536289, 45.854984, 47.330151>,  <37.381508, 46.163929, 47.128666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536289, 45.854984, 47.330151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285163, 0.619718, 0.731185,
		-0.876898, -0.139294, 0.460050,
		0.386951, -0.772365, 0.503708,
		37.652374, 45.623276, 47.481262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194328, 46.295643, 47.793415>,  <37.381508, 46.163929, 47.128666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194328, 46.295643, 47.793415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.502468, 46.043663, 47.832878>,  <37.687351, 45.892475, 47.856556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.502468, 46.043663, 47.832878>,  <37.194328, 46.295643, 47.793415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502468, 46.043663, 47.832878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371250, 0.568916, 0.733831,
		-0.518403, -0.528677, 0.672130,
		0.770346, -0.629948, 0.098657,
		37.733570, 45.854679, 47.862476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289593, 46.309803, 48.555428>,  <37.194328, 46.295643, 47.793415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289593, 46.309803, 48.555428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.624146, 46.141727, 48.414631>,  <37.824879, 46.040882, 48.330154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.624146, 46.141727, 48.414631>,  <37.289593, 46.309803, 48.555428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624146, 46.141727, 48.414631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526949, 0.439534, 0.727417,
		-0.150943, -0.793882, 0.589040,
		0.836386, -0.420192, -0.351991,
		37.875061, 46.015671, 48.309032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638893, 46.031475, 49.137318>,  <37.289593, 46.309803, 48.555428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638893, 46.031475, 49.137318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.926403, 46.060688, 48.860760>,  <38.098907, 46.078217, 48.694824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.926403, 46.060688, 48.860760>,  <37.638893, 46.031475, 49.137318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926403, 46.060688, 48.860760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583296, 0.477806, 0.656862,
		0.378322, -0.875425, 0.300839,
		0.718776, 0.073027, -0.691396,
		38.142036, 46.082596, 48.653339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.541111, 37.155006, 35.679955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900673, 37.298557, 35.579407>,  <36.116409, 37.384689, 35.519077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900673, 37.298557, 35.579407>,  <35.541111, 37.155006, 35.679955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900673, 37.298557, 35.579407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195054, 0.841478, 0.503855,
		0.392341, -0.403885, 0.826405,
		0.898901, 0.358877, -0.251367,
		36.170341, 37.406219, 35.503998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874645, 37.342876, 36.243748>,  <35.541111, 37.155006, 35.679955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874645, 37.342876, 36.243748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068230, 37.560246, 35.969383>,  <36.184380, 37.690666, 35.804764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068230, 37.560246, 35.969383>,  <35.874645, 37.342876, 36.243748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068230, 37.560246, 35.969383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205702, 0.832498, 0.514425,
		0.850573, -0.107865, 0.514675,
		0.483955, 0.543426, -0.685913,
		36.213417, 37.723274, 35.763611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354515, 37.832199, 36.610558>,  <35.874645, 37.342876, 36.243748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354515, 37.832199, 36.610558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267212, 37.964245, 36.243214>,  <36.214828, 38.043472, 36.022808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267212, 37.964245, 36.243214>,  <36.354515, 37.832199, 36.610558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267212, 37.964245, 36.243214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199831, 0.905990, 0.373162,
		0.955212, 0.264963, -0.131774,
		-0.218260, 0.330116, -0.918360,
		36.201733, 38.063278, 35.967705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498962, 38.474312, 36.710350>,  <36.354515, 37.832199, 36.610558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498962, 38.474312, 36.710350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301796, 38.508560, 36.364010>,  <36.183495, 38.529110, 36.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301796, 38.508560, 36.364010>,  <36.498962, 38.474312, 36.710350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301796, 38.508560, 36.364010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368895, 0.880709, 0.297101,
		0.788003, 0.465855, -0.402531,
		-0.492918, 0.085625, -0.865852,
		36.153919, 38.534248, 36.104256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695236, 39.098110, 36.581787>,  <36.498962, 38.474312, 36.710350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695236, 39.098110, 36.581787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355064, 39.017220, 36.387516>,  <36.150963, 38.968685, 36.270954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355064, 39.017220, 36.387516>,  <36.695236, 39.098110, 36.581787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355064, 39.017220, 36.387516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450336, 0.757079, 0.473317,
		0.271978, 0.621238, -0.734909,
		-0.850427, -0.202224, -0.485675,
		36.099937, 38.956551, 36.241814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460587, 39.668598, 36.227272>,  <36.695236, 39.098110, 36.581787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460587, 39.668598, 36.227272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135471, 39.442612, 36.284111>,  <35.940403, 39.307018, 36.318214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135471, 39.442612, 36.284111>,  <36.460587, 39.668598, 36.227272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135471, 39.442612, 36.284111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428506, 0.745035, 0.511180,
		-0.394669, 0.354589, -0.847645,
		-0.812785, -0.564968, 0.142099,
		35.891636, 39.273121, 36.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893841, 40.133949, 36.236580>,  <36.460587, 39.668598, 36.227272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893841, 40.133949, 36.236580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754910, 39.800220, 36.407822>,  <35.671551, 39.599983, 36.510567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754910, 39.800220, 36.407822>,  <35.893841, 40.133949, 36.236580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754910, 39.800220, 36.407822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564332, 0.550575, 0.615139,
		-0.748926, -0.027936, -0.662064,
		-0.347332, -0.834318, 0.428106,
		35.650711, 39.549927, 36.536255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343060, 40.365715, 36.488396>,  <35.893841, 40.133949, 36.236580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343060, 40.365715, 36.488396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391998, 40.028988, 36.698677>,  <35.421364, 39.826950, 36.824848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391998, 40.028988, 36.698677>,  <35.343060, 40.365715, 36.488396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391998, 40.028988, 36.698677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425155, 0.434171, 0.794190,
		-0.896813, -0.320676, -0.304784,
		0.122349, -0.841821, 0.525707,
		35.428703, 39.776443, 36.856388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754890, 40.288479, 36.900379>,  <35.343060, 40.365715, 36.488396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754890, 40.288479, 36.900379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015762, 40.050129, 37.087826>,  <35.172287, 39.907120, 37.200294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015762, 40.050129, 37.087826>,  <34.754890, 40.288479, 36.900379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015762, 40.050129, 37.087826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358671, 0.302047, 0.883245,
		-0.667844, -0.744113, -0.016732,
		0.652181, -0.595871, 0.468612,
		35.211418, 39.871368, 37.228409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367283, 39.939789, 37.433887>,  <34.754890, 40.288479, 36.900379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367283, 39.939789, 37.433887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740578, 39.895298, 37.570526>,  <34.964554, 39.868603, 37.652512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740578, 39.895298, 37.570526>,  <34.367283, 39.939789, 37.433887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740578, 39.895298, 37.570526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310887, 0.226465, 0.923072,
		-0.180036, -0.967647, 0.176765,
		0.933240, -0.111232, 0.341601,
		35.020550, 39.861927, 37.673008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329643, 39.569378, 37.976620>,  <34.367283, 39.939789, 37.433887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329643, 39.569378, 37.976620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691814, 39.724564, 38.045528>,  <34.909119, 39.817677, 38.086872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691814, 39.724564, 38.045528>,  <34.329643, 39.569378, 37.976620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691814, 39.724564, 38.045528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250428, 0.160510, 0.954737,
		0.342756, -0.907589, 0.242488,
		0.905431, 0.387968, 0.172270,
		34.963444, 39.840954, 38.097210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621540, 39.175816, 38.608501>,  <34.329643, 39.569378, 37.976620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621540, 39.175816, 38.608501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817959, 39.519909, 38.553543>,  <34.935810, 39.726364, 38.520569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817959, 39.519909, 38.553543>,  <34.621540, 39.175816, 38.608501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817959, 39.519909, 38.553543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276907, 0.303677, 0.911648,
		0.825950, -0.409618, 0.387324,
		0.491049, 0.860229, -0.137396,
		34.965275, 39.777977, 38.512325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338516, 38.954395, 39.271397>,  <34.621540, 39.175816, 38.608501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338516, 38.954395, 39.271397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972198, 38.890110, 39.418633>,  <33.752407, 38.851540, 39.506973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972198, 38.890110, 39.418633>,  <34.338516, 38.954395, 39.271397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972198, 38.890110, 39.418633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203190, -0.605149, -0.769746,
		0.346462, -0.779721, 0.521536,
		-0.915794, -0.160717, 0.368092,
		33.697460, 38.841896, 39.529060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275078, 38.235210, 39.350880>,  <34.338516, 38.954395, 39.271397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275078, 38.235210, 39.350880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907478, 38.385937, 39.304478>,  <33.686920, 38.476372, 39.276638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907478, 38.385937, 39.304478>,  <34.275078, 38.235210, 39.350880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907478, 38.385937, 39.304478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186663, -0.674987, -0.713827,
		-0.347283, -0.634350, 0.690648,
		-0.918995, 0.376818, -0.116002,
		33.631779, 38.498981, 39.269676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829758, 37.681728, 39.263523>,  <34.275078, 38.235210, 39.350880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829758, 37.681728, 39.263523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652298, 38.000797, 39.100117>,  <33.545822, 38.192238, 39.002071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652298, 38.000797, 39.100117>,  <33.829758, 37.681728, 39.263523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652298, 38.000797, 39.100117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319907, -0.566758, -0.759239,
		-0.837158, -0.206149, 0.506625,
		-0.443650, 0.797676, -0.408518,
		33.519203, 38.240101, 38.977562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130535, 37.472618, 39.184921>,  <33.829758, 37.681728, 39.263523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130535, 37.472618, 39.184921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176903, 37.781124, 38.934574>,  <33.204723, 37.966228, 38.784367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176903, 37.781124, 38.934574>,  <33.130535, 37.472618, 39.184921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176903, 37.781124, 38.934574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316991, -0.568439, -0.759206,
		-0.941317, 0.286405, 0.178589,
		0.115923, 0.771265, -0.625870,
		33.211681, 38.012505, 38.746815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519096, 37.545826, 38.861298>,  <33.130535, 37.472618, 39.184921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519096, 37.545826, 38.861298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782547, 37.728149, 38.621815>,  <32.940617, 37.837543, 38.478127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782547, 37.728149, 38.621815>,  <32.519096, 37.545826, 38.861298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782547, 37.728149, 38.621815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249135, -0.618688, -0.745088,
		-0.710033, 0.639892, -0.293925,
		0.658624, 0.455810, -0.598708,
		32.980133, 37.864891, 38.442204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159863, 37.633835, 38.311668>,  <32.519096, 37.545826, 38.861298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159863, 37.633835, 38.311668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546524, 37.646439, 38.210007>,  <32.778519, 37.654003, 38.149010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546524, 37.646439, 38.210007>,  <32.159863, 37.633835, 38.311668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546524, 37.646439, 38.210007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167594, -0.672563, -0.720813,
		-0.193652, 0.739369, -0.644851,
		0.966650, 0.031513, -0.254157,
		32.836517, 37.655891, 38.133759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066761, 37.703854, 37.580723>,  <32.159863, 37.633835, 38.311668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066761, 37.703854, 37.580723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441730, 37.573380, 37.629459>,  <32.666710, 37.495094, 37.658699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441730, 37.573380, 37.629459>,  <32.066761, 37.703854, 37.580723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441730, 37.573380, 37.629459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153424, -0.701052, -0.696410,
		0.312574, 0.634137, -0.707226,
		0.937421, -0.326185, 0.121839,
		32.722958, 37.475525, 37.666012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332470, 37.765011, 36.934425>,  <32.066761, 37.703854, 37.580723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332470, 37.765011, 36.934425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537270, 37.497013, 37.149448>,  <32.660149, 37.336216, 37.278461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537270, 37.497013, 37.149448>,  <32.332470, 37.765011, 36.934425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537270, 37.497013, 37.149448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202407, -0.702285, -0.682515,
		0.834801, 0.240638, -0.495178,
		0.511995, -0.669991, 0.537562,
		32.690868, 37.296017, 37.310719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672962, 37.354980, 36.426304>,  <32.332470, 37.765011, 36.934425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672962, 37.354980, 36.426304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736691, 37.128754, 36.749969>,  <32.774925, 36.993015, 36.944168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736691, 37.128754, 36.749969>,  <32.672962, 37.354980, 36.426304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736691, 37.128754, 36.749969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232365, -0.818090, -0.526057,
		0.959492, -0.104211, -0.261755,
		0.159318, -0.565570, 0.809165,
		32.784485, 36.959084, 36.992718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097023, 36.740978, 36.204456>,  <32.672962, 37.354980, 36.426304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097023, 36.740978, 36.204456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911327, 36.615288, 36.535694>,  <32.799911, 36.539871, 36.734436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911327, 36.615288, 36.535694>,  <33.097023, 36.740978, 36.204456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911327, 36.615288, 36.535694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137781, -0.897949, -0.417977,
		0.874929, -0.308137, 0.373567,
		-0.464237, -0.314229, 0.828096,
		32.772057, 36.521019, 36.784122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348373, 36.118263, 36.233841>,  <33.097023, 36.740978, 36.204456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348373, 36.118263, 36.233841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032890, 36.101414, 36.479168>,  <32.843601, 36.091305, 36.626366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032890, 36.101414, 36.479168>,  <33.348373, 36.118263, 36.233841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032890, 36.101414, 36.479168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132248, -0.962669, -0.236178,
		0.600372, -0.267386, 0.753697,
		-0.788711, -0.042119, 0.613320,
		32.796276, 36.088779, 36.663162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476868, 35.657715, 36.794174>,  <33.348373, 36.118263, 36.233841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476868, 35.657715, 36.794174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081726, 35.695992, 36.745209>,  <32.844643, 35.718956, 36.715828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081726, 35.695992, 36.745209>,  <33.476868, 35.657715, 36.794174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081726, 35.695992, 36.745209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052291, -0.946647, -0.318001,
		-0.146315, -0.307738, 0.940154,
		-0.987855, 0.095690, -0.122417,
		32.785370, 35.724697, 36.708485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181107, 35.013012, 37.109726>,  <33.476868, 35.657715, 36.794174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181107, 35.013012, 37.109726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900330, 35.170872, 36.872566>,  <32.731865, 35.265587, 36.730270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900330, 35.170872, 36.872566>,  <33.181107, 35.013012, 37.109726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900330, 35.170872, 36.872566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159505, -0.898412, -0.409162,
		-0.694147, -0.192636, 0.693579,
		-0.701939, 0.394648, -0.592903,
		32.689747, 35.289265, 36.694695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712090, 34.519192, 37.026566>,  <33.181107, 35.013012, 37.109726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712090, 34.519192, 37.026566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582371, 34.736115, 36.716537>,  <32.504539, 34.866268, 36.530521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582371, 34.736115, 36.716537>,  <32.712090, 34.519192, 37.026566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582371, 34.736115, 36.716537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235425, -0.839842, -0.489122,
		-0.916193, 0.023852, 0.400028,
		-0.324294, 0.542306, -0.775072,
		32.485081, 34.898808, 36.484016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390041, 33.809158, 36.912159>,  <32.712090, 34.519192, 37.026566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390041, 33.809158, 36.912159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327507, 33.416416, 36.869225>,  <32.289986, 33.180771, 36.843464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327507, 33.416416, 36.869225>,  <32.390041, 33.809158, 36.912159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327507, 33.416416, 36.869225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093442, -0.093484, 0.991226,
		-0.983274, 0.164993, -0.077131,
		-0.156335, -0.981854, -0.107338,
		32.280605, 33.121861, 36.837025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862366, 33.616703, 37.391346>,  <32.390041, 33.809158, 36.912159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862366, 33.616703, 37.391346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067333, 33.279888, 37.323940>,  <32.190315, 33.077797, 37.283497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067333, 33.279888, 37.323940>,  <31.862366, 33.616703, 37.391346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067333, 33.279888, 37.323940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179021, -0.087172, 0.979976,
		-0.839867, -0.532326, 0.106074,
		0.512420, -0.842039, -0.168511,
		32.221058, 33.027275, 37.273388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734861, 33.189529, 37.918346>,  <31.862366, 33.616703, 37.391346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734861, 33.189529, 37.918346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085697, 33.083420, 37.758175>,  <32.296200, 33.019753, 37.662071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085697, 33.083420, 37.758175>,  <31.734861, 33.189529, 37.918346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085697, 33.083420, 37.758175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419064, 0.015204, 0.907829,
		-0.234738, -0.964052, 0.124503,
		0.877088, -0.265277, -0.400431,
		32.348824, 33.003838, 37.638046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051659, 32.735859, 38.392113>,  <31.734861, 33.189529, 37.918346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051659, 32.735859, 38.392113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304333, 32.937965, 38.156937>,  <32.455936, 33.059231, 38.015831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304333, 32.937965, 38.156937>,  <32.051659, 32.735859, 38.392113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304333, 32.937965, 38.156937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457581, 0.369189, 0.808900,
		0.625771, -0.780004, 0.002012,
		0.631688, 0.505266, -0.587943,
		32.493839, 33.089546, 37.980553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711960, 32.513382, 38.653473>,  <32.051659, 32.735859, 38.392113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711960, 32.513382, 38.653473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804150, 32.847366, 38.453583>,  <32.859463, 33.047756, 38.333649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804150, 32.847366, 38.453583>,  <32.711960, 32.513382, 38.653473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804150, 32.847366, 38.453583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618194, 0.270963, 0.737845,
		0.751478, -0.478980, -0.453718,
		0.230473, 0.834959, -0.499725,
		32.873291, 33.097855, 38.303665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449177, 32.552738, 38.674999>,  <32.711960, 32.513382, 38.653473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449177, 32.552738, 38.674999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330959, 32.924156, 38.585152>,  <33.260029, 33.147007, 38.531242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330959, 32.924156, 38.585152>,  <33.449177, 32.552738, 38.674999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330959, 32.924156, 38.585152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690026, 0.370090, 0.622011,
		0.660695, 0.028841, -0.750100,
		-0.295545, 0.928548, -0.224615,
		33.242294, 33.202721, 38.517769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038097, 32.978287, 38.653683>,  <33.449177, 32.552738, 38.674999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038097, 32.978287, 38.653683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738445, 33.241138, 38.687119>,  <33.558655, 33.398849, 38.707180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738445, 33.241138, 38.687119>,  <34.038097, 32.978287, 38.653683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738445, 33.241138, 38.687119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500666, 0.479045, 0.721006,
		0.433750, 0.581977, -0.687869,
		-0.749129, 0.657129, 0.083591,
		33.513706, 33.438278, 38.712196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466366, 33.635311, 38.693295>,  <34.038097, 32.978287, 38.653683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466366, 33.635311, 38.693295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104061, 33.728348, 38.834995>,  <33.886677, 33.784172, 38.920013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104061, 33.728348, 38.834995>,  <34.466366, 33.635311, 38.693295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104061, 33.728348, 38.834995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398382, 0.752393, 0.524591,
		-0.144518, 0.616282, -0.774152,
		-0.905763, 0.232596, 0.354250,
		33.832333, 33.798126, 38.941269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395668, 34.399487, 38.531963>,  <34.466366, 33.635311, 38.693295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395668, 34.399487, 38.531963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140438, 34.309128, 38.826401>,  <33.987301, 34.254913, 39.003063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140438, 34.309128, 38.826401>,  <34.395668, 34.399487, 38.531963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140438, 34.309128, 38.826401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398120, 0.721499, 0.566515,
		-0.659065, 0.654532, -0.370435,
		-0.638070, -0.225892, 0.736097,
		33.949017, 34.241360, 39.047230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208805, 35.019627, 38.798409>,  <34.395668, 34.399487, 38.531963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208805, 35.019627, 38.798409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127113, 34.758495, 39.090191>,  <34.078098, 34.601818, 39.265263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127113, 34.758495, 39.090191>,  <34.208805, 35.019627, 38.798409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127113, 34.758495, 39.090191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355908, 0.644654, 0.676573,
		-0.911932, 0.397797, 0.100687,
		-0.204230, -0.652824, 0.729460,
		34.065845, 34.562649, 39.309029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800526, 35.371197, 39.408356>,  <34.208805, 35.019627, 38.798409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800526, 35.371197, 39.408356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985901, 35.043030, 39.542305>,  <34.097126, 34.846130, 39.622673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985901, 35.043030, 39.542305>,  <33.800526, 35.371197, 39.408356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985901, 35.043030, 39.542305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356748, 0.518667, 0.776991,
		-0.811144, -0.240624, 0.533053,
		0.463439, -0.820418, 0.334872,
		34.124931, 34.796906, 39.642765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640430, 35.489296, 39.980667>,  <33.800526, 35.371197, 39.408356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640430, 35.489296, 39.980667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933609, 35.217587, 39.995468>,  <34.109516, 35.054562, 40.004349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933609, 35.217587, 39.995468>,  <33.640430, 35.489296, 39.980667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933609, 35.217587, 39.995468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400542, 0.474881, 0.783616,
		-0.549864, -0.559529, 0.620142,
		0.732950, -0.679275, 0.037005,
		34.153496, 35.013805, 40.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722527, 35.198891, 40.658245>,  <33.640430, 35.489296, 39.980667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722527, 35.198891, 40.658245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081879, 35.101917, 40.511749>,  <34.297489, 35.043732, 40.423851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081879, 35.101917, 40.511749>,  <33.722527, 35.198891, 40.658245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081879, 35.101917, 40.511749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433569, 0.356319, 0.827681,
		-0.070163, -0.902364, 0.425224,
		0.898385, -0.242437, -0.366236,
		34.351395, 35.029186, 40.401878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023655, 34.872482, 41.255112>,  <33.722527, 35.198891, 40.658245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023655, 34.872482, 41.255112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327015, 34.972439, 41.014317>,  <34.509029, 35.032413, 40.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327015, 34.972439, 41.014317>,  <34.023655, 34.872482, 41.255112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327015, 34.972439, 41.014317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461983, 0.445435, 0.766916,
		0.459787, -0.859736, 0.222374,
		0.758398, 0.249885, -0.601988,
		34.554535, 35.047405, 40.833721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540794, 34.743370, 41.637527>,  <34.023655, 34.872482, 41.255112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540794, 34.743370, 41.637527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742046, 34.971069, 41.377430>,  <34.862797, 35.107689, 41.221371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742046, 34.971069, 41.377430>,  <34.540794, 34.743370, 41.637527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742046, 34.971069, 41.377430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541933, 0.378279, 0.750476,
		0.673181, -0.729975, -0.118172,
		0.503127, 0.569247, -0.650247,
		34.892986, 35.141842, 41.182354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334316, 34.655937, 41.584431>,  <34.540794, 34.743370, 41.637527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334316, 34.655937, 41.584431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238888, 35.040474, 41.529430>,  <35.181629, 35.271194, 41.496429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238888, 35.040474, 41.529430>,  <35.334316, 34.655937, 41.584431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238888, 35.040474, 41.529430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516582, 0.245521, 0.820282,
		0.822329, 0.124669, -0.555187,
		-0.238574, 0.961341, -0.137497,
		35.167316, 35.328876, 41.488182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848686, 34.965389, 41.910248>,  <35.334316, 34.655937, 41.584431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848686, 34.965389, 41.910248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617500, 35.283409, 41.836658>,  <35.478790, 35.474220, 41.792503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617500, 35.283409, 41.836658>,  <35.848686, 34.965389, 41.910248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617500, 35.283409, 41.836658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561855, 0.551184, 0.616859,
		0.591841, 0.253155, -0.765269,
		-0.577965, 0.795053, -0.183977,
		35.444111, 35.521923, 41.781464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258698, 35.545170, 41.779892>,  <35.848686, 34.965389, 41.910248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258698, 35.545170, 41.779892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897182, 35.697216, 41.858566>,  <35.680275, 35.788445, 41.905773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897182, 35.697216, 41.858566>,  <36.258698, 35.545170, 41.779892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897182, 35.697216, 41.858566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387763, 0.532739, 0.752216,
		0.181144, 0.756110, -0.628876,
		-0.903785, 0.380114, 0.196689,
		35.626045, 35.811249, 41.917572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375874, 36.227177, 41.764538>,  <36.258698, 35.545170, 41.779892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375874, 36.227177, 41.764538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052940, 36.142937, 41.985035>,  <35.859180, 36.092392, 42.117332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052940, 36.142937, 41.985035>,  <36.375874, 36.227177, 41.764538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052940, 36.142937, 41.985035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394332, 0.502405, 0.769475,
		-0.439000, 0.838591, -0.322558,
		-0.807330, -0.210604, 0.551239,
		35.810741, 36.079754, 42.150406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394836, 36.799267, 42.112614>,  <36.375874, 36.227177, 41.764538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394836, 36.799267, 42.112614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153156, 36.589993, 42.353016>,  <36.008148, 36.464428, 42.497257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153156, 36.589993, 42.353016>,  <36.394836, 36.799267, 42.112614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153156, 36.589993, 42.353016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258528, 0.584735, 0.768927,
		-0.753725, 0.619965, -0.218040,
		-0.604203, -0.523190, 0.601008,
		35.971897, 36.433037, 42.533318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070896, 37.305843, 42.503124>,  <36.394836, 36.799267, 42.112614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070896, 37.305843, 42.503124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013813, 36.967609, 42.708889>,  <35.979565, 36.764668, 42.832348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013813, 36.967609, 42.708889>,  <36.070896, 37.305843, 42.503124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013813, 36.967609, 42.708889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177099, 0.489525, 0.853815,
		-0.973792, 0.212944, 0.079895,
		-0.142704, -0.845588, 0.514408,
		35.971001, 36.713932, 42.863213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520451, 37.487316, 43.009975>,  <36.070896, 37.305843, 42.503124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520451, 37.487316, 43.009975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679996, 37.160370, 43.176258>,  <35.775723, 36.964203, 43.276028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679996, 37.160370, 43.176258>,  <35.520451, 37.487316, 43.009975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679996, 37.160370, 43.176258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133413, 0.500232, 0.855552,
		-0.907253, -0.285789, 0.308572,
		0.398865, -0.817370, 0.415709,
		35.799656, 36.915157, 43.300972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236832, 37.457569, 43.742481>,  <35.520451, 37.487316, 43.009975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236832, 37.457569, 43.742481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579136, 37.250694, 43.747913>,  <35.784519, 37.126568, 43.751175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579136, 37.250694, 43.747913>,  <35.236832, 37.457569, 43.742481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579136, 37.250694, 43.747913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254800, 0.444160, 0.858952,
		-0.450275, -0.731598, 0.511876,
		0.855762, -0.517191, 0.013583,
		35.835865, 37.095535, 43.751987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340668, 37.117260, 44.378784>,  <35.236832, 37.457569, 43.742481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340668, 37.117260, 44.378784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699245, 37.179298, 44.212730>,  <35.914391, 37.216522, 44.113098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699245, 37.179298, 44.212730>,  <35.340668, 37.117260, 44.378784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699245, 37.179298, 44.212730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304817, 0.464180, 0.831639,
		0.321681, -0.872056, 0.368834,
		0.896441, 0.155096, -0.415136,
		35.968178, 37.225826, 44.088188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783855, 37.034210, 44.985428>,  <35.340668, 37.117260, 44.378784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783855, 37.034210, 44.985428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032516, 37.161777, 44.699257>,  <36.181713, 37.238319, 44.527554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032516, 37.161777, 44.699257>,  <35.783855, 37.034210, 44.985428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032516, 37.161777, 44.699257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489782, 0.554521, 0.672770,
		0.611282, -0.768632, 0.188516,
		0.621649, 0.318920, -0.715431,
		36.219009, 37.257454, 44.484627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549370, 36.996834, 45.310577>,  <35.783855, 37.034210, 44.985428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549370, 36.996834, 45.310577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573391, 37.239155, 44.993237>,  <36.587803, 37.384548, 44.802834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573391, 37.239155, 44.993237>,  <36.549370, 36.996834, 45.310577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573391, 37.239155, 44.993237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570421, 0.631400, 0.525313,
		0.819154, -0.484088, -0.307645,
		0.060050, 0.605799, -0.793348,
		36.591408, 37.420895, 44.755234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186176, 37.077862, 45.061340>,  <36.549370, 36.996834, 45.310577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186176, 37.077862, 45.061340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031647, 37.414261, 44.909828>,  <36.938931, 37.616100, 44.818920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031647, 37.414261, 44.909828>,  <37.186176, 37.077862, 45.061340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031647, 37.414261, 44.909828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627380, 0.540625, 0.560464,
		0.676128, -0.021121, -0.736481,
		-0.386322, 0.840999, -0.378782,
		36.915749, 37.666561, 44.796192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712708, 37.522713, 44.830521>,  <37.186176, 37.077862, 45.061340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712708, 37.522713, 44.830521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421139, 37.778381, 44.928608>,  <37.246197, 37.931782, 44.987461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421139, 37.778381, 44.928608>,  <37.712708, 37.522713, 44.830521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421139, 37.778381, 44.928608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631695, 0.489907, 0.600793,
		0.263874, 0.592836, -0.760865,
		-0.728925, 0.639169, 0.245218,
		37.202461, 37.970131, 45.002174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346172, 37.859894, 44.549397>,  <37.712708, 37.522713, 44.830521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346172, 37.859894, 44.549397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667660, 38.073288, 44.444000>,  <38.860554, 38.201324, 44.380760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667660, 38.073288, 44.444000>,  <38.346172, 37.859894, 44.549397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667660, 38.073288, 44.444000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014389, -0.460137, -0.887731,
		-0.594833, 0.709697, -0.377498,
		0.803721, 0.533483, -0.263493,
		38.908775, 38.233334, 44.364952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186741, 38.112476, 43.915970>,  <38.346172, 37.859894, 44.549397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186741, 38.112476, 43.915970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585632, 38.124947, 43.942978>,  <38.824966, 38.132427, 43.959183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585632, 38.124947, 43.942978>,  <38.186741, 38.112476, 43.915970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585632, 38.124947, 43.942978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073162, -0.574201, -0.815439,
		0.013349, 0.818121, -0.574892,
		0.997231, 0.031175, 0.067521,
		38.884800, 38.134300, 43.963234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518047, 38.388226, 43.345142>,  <38.186741, 38.112476, 43.915970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518047, 38.388226, 43.345142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837685, 38.197708, 43.491890>,  <39.029469, 38.083397, 43.579941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837685, 38.197708, 43.491890>,  <38.518047, 38.388226, 43.345142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837685, 38.197708, 43.491890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048125, -0.557590, -0.828720,
		0.599279, 0.679880, -0.422645,
		0.799093, -0.476295, 0.366871,
		39.077412, 38.054821, 43.601952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012733, 38.471790, 42.884903>,  <38.518047, 38.388226, 43.345142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012733, 38.471790, 42.884903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083145, 38.135807, 43.090225>,  <39.125393, 37.934216, 43.213417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083145, 38.135807, 43.090225>,  <39.012733, 38.471790, 42.884903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083145, 38.135807, 43.090225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147807, -0.492983, -0.857392,
		0.973224, 0.226799, 0.037371,
		0.176033, -0.839958, 0.513306,
		39.135956, 37.883820, 43.244217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681908, 38.199718, 42.684025>,  <39.012733, 38.471790, 42.884903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681908, 38.199718, 42.684025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469318, 37.900070, 42.842194>,  <39.341766, 37.720284, 42.937096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469318, 37.900070, 42.842194>,  <39.681908, 38.199718, 42.684025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469318, 37.900070, 42.842194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021730, -0.478716, -0.877701,
		0.846796, -0.457882, 0.270703,
		-0.531473, -0.749116, 0.395425,
		39.309875, 37.675335, 42.960819>
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
