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
	<24.283871, 34.468018, 35.354595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256136, 34.683540, 35.018768>,  <24.239494, 34.812855, 34.817272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256136, 34.683540, 35.018768>,  <24.283871, 34.468018, 35.354595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256136, 34.683540, 35.018768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747665, 0.585236, 0.313839,
		0.660446, -0.605957, -0.443427,
		-0.069336, 0.538809, -0.839570,
		24.235334, 34.845184, 34.766899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877581, 34.638836, 34.954842>,  <24.283871, 34.468018, 35.354595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877581, 34.638836, 34.954842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615614, 34.940002, 34.928921>,  <24.458433, 35.120701, 34.913368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615614, 34.940002, 34.928921>,  <24.877581, 34.638836, 34.954842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615614, 34.940002, 34.928921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687002, 0.628910, 0.364008,
		0.314821, 0.193877, -0.929139,
		-0.654917, 0.752917, -0.064800,
		24.419138, 35.165878, 34.909481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986847, 35.307476, 34.837524>,  <24.877581, 34.638836, 34.954842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986847, 35.307476, 34.837524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094362, 35.112652, 35.169914>,  <25.158871, 34.995758, 35.369347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094362, 35.112652, 35.169914>,  <24.986847, 35.307476, 34.837524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094362, 35.112652, 35.169914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300424, -0.862081, -0.408121,
		0.915149, -0.139947, -0.378043,
		0.268789, -0.487065, 0.830976,
		25.174999, 34.966534, 35.419209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348312, 35.608276, 34.282063>,  <24.986847, 35.307476, 34.837524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348312, 35.608276, 34.282063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443602, 35.612949, 34.670517>,  <25.500774, 35.615753, 34.903591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443602, 35.612949, 34.670517>,  <25.348312, 35.608276, 34.282063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443602, 35.612949, 34.670517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957766, 0.162979, -0.236903,
		-0.161042, 0.986560, 0.027640,
		0.238224, 0.011678, 0.971140,
		25.515068, 35.616451, 34.961861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758625, 36.316521, 34.542263>,  <25.348312, 35.608276, 34.282063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758625, 36.316521, 34.542263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875727, 35.989422, 34.740494>,  <25.945988, 35.793163, 34.859432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875727, 35.989422, 34.740494>,  <25.758625, 36.316521, 34.542263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875727, 35.989422, 34.740494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942694, 0.160070, -0.292754,
		0.160070, 0.552878, 0.817743,
		0.292754, -0.817743, 0.495573,
		25.963552, 35.744099, 34.889164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384752, 36.536579, 34.989094>,  <25.758625, 36.316521, 34.542263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384752, 36.536579, 34.989094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369381, 36.157913, 34.861122>,  <26.360159, 35.930714, 34.784340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369381, 36.157913, 34.861122>,  <26.384752, 36.536579, 34.989094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369381, 36.157913, 34.861122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879568, 0.119899, -0.460417,
		0.474219, -0.299094, 0.828046,
		-0.038426, -0.946661, -0.319932,
		26.357853, 35.873917, 34.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047644, 36.045185, 35.193462>,  <26.384752, 36.536579, 34.989094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047644, 36.045185, 35.193462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865175, 35.912842, 34.863022>,  <26.755695, 35.833435, 34.664757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865175, 35.912842, 34.863022>,  <27.047644, 36.045185, 35.193462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865175, 35.912842, 34.863022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883035, -0.053265, -0.466274,
		0.110267, -0.942177, 0.316454,
		-0.456169, -0.330855, -0.826102,
		26.728325, 35.813587, 34.615192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308277, 35.440331, 34.886299>,  <27.047644, 36.045185, 35.193462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308277, 35.440331, 34.886299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183672, 35.689091, 34.598911>,  <27.108908, 35.838348, 34.426479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183672, 35.689091, 34.598911>,  <27.308277, 35.440331, 34.886299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183672, 35.689091, 34.598911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701343, -0.359676, -0.615427,
		-0.641152, -0.695606, -0.324124,
		-0.311515, 0.621905, -0.718466,
		27.090218, 35.875664, 34.383373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135223, 35.083118, 34.296204>,  <27.308277, 35.440331, 34.886299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135223, 35.083118, 34.296204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328018, 35.428082, 34.234314>,  <27.443695, 35.635059, 34.197178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328018, 35.428082, 34.234314>,  <27.135223, 35.083118, 34.296204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328018, 35.428082, 34.234314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708345, -0.487474, -0.510507,
		-0.515690, 0.136458, -0.845838,
		0.481987, 0.862408, -0.154726,
		27.472614, 35.686806, 34.187897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322119, 35.104576, 33.579075>,  <27.135223, 35.083118, 34.296204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322119, 35.104576, 33.579075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580448, 35.311047, 33.804096>,  <27.735447, 35.434929, 33.939110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580448, 35.311047, 33.804096>,  <27.322119, 35.104576, 33.579075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580448, 35.311047, 33.804096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763278, -0.453653, -0.460005,
		0.017761, 0.726470, -0.686969,
		0.645826, 0.516178, 0.562556,
		27.774197, 35.465900, 33.972862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837088, 35.283649, 33.173969>,  <27.322119, 35.104576, 33.579075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837088, 35.283649, 33.173969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007479, 35.282375, 33.535862>,  <28.109713, 35.281612, 33.752998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007479, 35.282375, 33.535862>,  <27.837088, 35.283649, 33.173969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007479, 35.282375, 33.535862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803064, -0.459236, -0.379723,
		0.416692, 0.888309, -0.193068,
		0.425975, -0.003182, 0.904729,
		28.135271, 35.281422, 33.807281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541281, 35.595901, 33.055050>,  <27.837088, 35.283649, 33.173969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541281, 35.595901, 33.055050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563335, 35.385361, 33.394440>,  <28.576569, 35.259037, 33.598076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563335, 35.385361, 33.394440>,  <28.541281, 35.595901, 33.055050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563335, 35.385361, 33.394440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770713, -0.517813, -0.371310,
		0.634793, 0.674405, 0.377116,
		0.055137, -0.526353, 0.848476,
		28.579876, 35.227455, 33.648983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271397, 35.790024, 33.365177>,  <28.541281, 35.595901, 33.055050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271397, 35.790024, 33.365177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144054, 35.426834, 33.474155>,  <29.067648, 35.208920, 33.539543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144054, 35.426834, 33.474155>,  <29.271397, 35.790024, 33.365177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144054, 35.426834, 33.474155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884336, -0.387979, -0.259658,
		0.341466, 0.158268, 0.926473,
		-0.318357, -0.907978, 0.272444,
		29.048548, 35.154442, 33.555889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901012, 35.554653, 33.350315>,  <29.271397, 35.790024, 33.365177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901012, 35.554653, 33.350315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675089, 35.231766, 33.418888>,  <29.539536, 35.038033, 33.460033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675089, 35.231766, 33.418888>,  <29.901012, 35.554653, 33.350315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675089, 35.231766, 33.418888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736659, -0.586819, -0.336120,
		0.371923, -0.063556, 0.926085,
		-0.564807, -0.807220, 0.171433,
		29.505648, 34.989601, 33.470318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295809, 35.172760, 33.817959>,  <29.901012, 35.554653, 33.350315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295809, 35.172760, 33.817959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042456, 34.956329, 33.596668>,  <29.890444, 34.826469, 33.463894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042456, 34.956329, 33.596668>,  <30.295809, 35.172760, 33.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042456, 34.956329, 33.596668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766546, -0.536625, -0.352763,
		-0.106003, -0.647508, 0.754650,
		-0.633381, -0.541080, -0.553228,
		29.852442, 34.794006, 33.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563177, 34.516758, 33.826416>,  <30.295809, 35.172760, 33.817959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563177, 34.516758, 33.826416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296497, 34.473965, 33.531372>,  <30.136490, 34.448288, 33.354347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296497, 34.473965, 33.531372>,  <30.563177, 34.516758, 33.826416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296497, 34.473965, 33.531372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635111, -0.599466, -0.487108,
		-0.390061, -0.793218, 0.467608,
		-0.666698, -0.106981, -0.737610,
		30.096489, 34.441872, 33.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636723, 33.859608, 33.637375>,  <30.563177, 34.516758, 33.826416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636723, 33.859608, 33.637375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458225, 34.045528, 33.331478>,  <30.351128, 34.157082, 33.147942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458225, 34.045528, 33.331478>,  <30.636723, 33.859608, 33.637375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458225, 34.045528, 33.331478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567378, -0.513899, -0.643421,
		-0.692062, -0.721018, -0.034394,
		-0.446243, 0.464802, -0.764740,
		30.324352, 34.184971, 33.102055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408484, 33.387875, 33.113838>,  <30.636723, 33.859608, 33.637375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408484, 33.387875, 33.113838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418797, 33.707382, 32.873405>,  <30.424984, 33.899086, 32.729145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418797, 33.707382, 32.873405>,  <30.408484, 33.387875, 33.113838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418797, 33.707382, 32.873405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493619, -0.533035, -0.687178,
		-0.869296, -0.278988, -0.408032,
		0.025781, 0.798774, -0.601079,
		30.426531, 33.947014, 32.693081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267189, 33.119843, 32.515598>,  <30.408484, 33.387875, 33.113838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267189, 33.119843, 32.515598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453537, 33.465603, 32.439941>,  <30.565346, 33.673058, 32.394547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453537, 33.465603, 32.439941>,  <30.267189, 33.119843, 32.515598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453537, 33.465603, 32.439941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563225, -0.454540, -0.690052,
		-0.682453, 0.214948, -0.698610,
		0.465871, 0.864402, -0.189138,
		30.593298, 33.724922, 32.383202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432896, 33.121002, 31.758738>,  <30.267189, 33.119843, 32.515598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432896, 33.121002, 31.758738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683851, 33.406273, 31.883810>,  <30.834425, 33.577435, 31.958853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683851, 33.406273, 31.883810>,  <30.432896, 33.121002, 31.758738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683851, 33.406273, 31.883810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720313, -0.378939, -0.580994,
		-0.295863, 0.589736, -0.751450,
		0.627387, 0.713174, 0.312680,
		30.872066, 33.620224, 31.977613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752571, 33.287277, 31.179462>,  <30.432896, 33.121002, 31.758738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752571, 33.287277, 31.179462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995676, 33.413013, 31.471165>,  <31.141539, 33.488457, 31.646187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995676, 33.413013, 31.471165>,  <30.752571, 33.287277, 31.179462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995676, 33.413013, 31.471165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792215, -0.176469, -0.584170,
		-0.054938, 0.932764, -0.356277,
		0.607764, 0.314341, 0.729255,
		31.178005, 33.507317, 31.689941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287127, 33.489292, 30.832268>,  <30.752571, 33.287277, 31.179462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287127, 33.489292, 30.832268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416098, 33.512341, 31.210203>,  <31.493481, 33.526169, 31.436964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416098, 33.512341, 31.210203>,  <31.287127, 33.489292, 30.832268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416098, 33.512341, 31.210203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899182, -0.330578, -0.286686,
		0.295824, 0.942018, -0.158400,
		0.322427, 0.057622, 0.944839,
		31.512825, 33.529629, 31.493654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904713, 33.852161, 30.828459>,  <31.287127, 33.489292, 30.832268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904713, 33.852161, 30.828459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952852, 33.625366, 31.154411>,  <31.981737, 33.489288, 31.349983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952852, 33.625366, 31.154411>,  <31.904713, 33.852161, 30.828459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952852, 33.625366, 31.154411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914048, -0.256987, -0.313806,
		0.387340, 0.782609, 0.487330,
		0.120350, -0.566993, 0.814884,
		31.988956, 33.455269, 31.398876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484428, 34.100529, 31.058130>,  <31.904713, 33.852161, 30.828459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484428, 34.100529, 31.058130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428734, 33.731533, 31.202147>,  <32.395317, 33.510136, 31.288557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428734, 33.731533, 31.202147>,  <32.484428, 34.100529, 31.058130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428734, 33.731533, 31.202147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932282, -0.244693, -0.266414,
		0.333863, 0.298565, 0.894089,
		-0.139235, -0.922488, 0.360040,
		32.386963, 33.454788, 31.310158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073376, 33.976276, 31.584221>,  <32.484428, 34.100529, 31.058130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073376, 33.976276, 31.584221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950130, 33.610260, 31.480085>,  <32.876183, 33.390652, 31.417604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950130, 33.610260, 31.480085>,  <33.073376, 33.976276, 31.584221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950130, 33.610260, 31.480085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914276, -0.209149, -0.346924,
		0.262999, -0.344911, 0.901037,
		-0.308109, -0.915037, -0.260338,
		32.857697, 33.335751, 31.401983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432404, 33.446331, 31.928310>,  <33.073376, 33.976276, 31.584221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432404, 33.446331, 31.928310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317024, 33.331154, 31.563040>,  <33.247795, 33.262047, 31.343878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317024, 33.331154, 31.563040>,  <33.432404, 33.446331, 31.928310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317024, 33.331154, 31.563040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955692, -0.145094, -0.256126,
		-0.058746, -0.946593, 0.317035,
		-0.288447, -0.287941, -0.913175,
		33.230492, 33.244770, 31.289087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584248, 32.708618, 31.711750>,  <33.432404, 33.446331, 31.928310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584248, 32.708618, 31.711750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593288, 32.963516, 31.403618>,  <33.598713, 33.116455, 31.218739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593288, 32.963516, 31.403618>,  <33.584248, 32.708618, 31.711750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593288, 32.963516, 31.403618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907467, -0.336409, -0.251659,
		-0.419514, -0.693362, -0.585882,
		0.022605, 0.637243, -0.770331,
		33.600071, 33.154690, 31.172518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857769, 32.334030, 31.027866>,  <33.584248, 32.708618, 31.711750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857769, 32.334030, 31.027866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939575, 32.725464, 31.018524>,  <33.988659, 32.960323, 31.012918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939575, 32.725464, 31.018524>,  <33.857769, 32.334030, 31.027866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939575, 32.725464, 31.018524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965786, -0.205613, -0.158055,
		-0.159473, 0.009767, -0.987154,
		0.204516, 0.978585, -0.023357,
		34.000931, 33.019039, 31.011517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013573, 32.744564, 30.300861>,  <33.857769, 32.334030, 31.027866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013573, 32.744564, 30.300861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182705, 32.800167, 30.659054>,  <34.284184, 32.833530, 30.873970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182705, 32.800167, 30.659054>,  <34.013573, 32.744564, 30.300861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182705, 32.800167, 30.659054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879252, -0.302152, -0.368266,
		0.219378, 0.943069, -0.249987,
		0.422835, 0.139012, 0.895481,
		34.309555, 32.841869, 30.927698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638519, 33.081821, 30.218491>,  <34.013573, 32.744564, 30.300861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638519, 33.081821, 30.218491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676292, 32.888409, 30.566578>,  <34.698956, 32.772362, 30.775431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676292, 32.888409, 30.566578>,  <34.638519, 33.081821, 30.218491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676292, 32.888409, 30.566578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883477, -0.362199, -0.297120,
		0.458859, 0.796876, 0.392985,
		0.094429, -0.483529, 0.870220,
		34.704620, 32.743351, 30.827644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335209, 33.227844, 30.425812>,  <34.638519, 33.081821, 30.218491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335209, 33.227844, 30.425812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219421, 32.871685, 30.566330>,  <35.149948, 32.657990, 30.650640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219421, 32.871685, 30.566330>,  <35.335209, 33.227844, 30.425812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219421, 32.871685, 30.566330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924350, -0.355335, -0.138976,
		0.248571, 0.284490, 0.925893,
		-0.289465, -0.890394, 0.351295,
		35.132584, 32.604568, 30.671719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865383, 33.057976, 30.862669>,  <35.335209, 33.227844, 30.425812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865383, 33.057976, 30.862669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669971, 32.715855, 30.793627>,  <35.552723, 32.510582, 30.752201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669971, 32.715855, 30.793627>,  <35.865383, 33.057976, 30.862669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669971, 32.715855, 30.793627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871559, -0.487745, -0.049898,
		-0.041509, -0.174812, 0.983726,
		-0.488530, -0.855305, -0.172605,
		35.523411, 32.459263, 30.741846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033985, 32.554611, 31.330301>,  <35.865383, 33.057976, 30.862669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033985, 32.554611, 31.330301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950760, 32.437195, 30.957088>,  <35.900826, 32.366745, 30.733162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950760, 32.437195, 30.957088>,  <36.033985, 32.554611, 31.330301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950760, 32.437195, 30.957088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930853, -0.352359, -0.096725,
		-0.300368, -0.888639, 0.346554,
		-0.208065, -0.293538, -0.933030,
		35.888340, 32.349133, 30.677179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696121, 32.931046, 31.282537>,  <36.033985, 32.554611, 31.330301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696121, 32.931046, 31.282537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649506, 32.617168, 31.039003>,  <36.621536, 32.428841, 30.892883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649506, 32.617168, 31.039003>,  <36.696121, 32.931046, 31.282537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649506, 32.617168, 31.039003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945226, 0.275818, -0.174562,
		0.304905, 0.555143, -0.773854,
		-0.116536, -0.784691, -0.608834,
		36.614544, 32.381760, 30.856354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487831, 33.519444, 30.967083>,  <36.696121, 32.931046, 31.282537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487831, 33.519444, 30.967083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677784, 33.868061, 30.918262>,  <36.791756, 34.077232, 30.888969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677784, 33.868061, 30.918262>,  <36.487831, 33.519444, 30.967083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677784, 33.868061, 30.918262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547369, 0.401106, 0.734507,
		0.689113, -0.281994, 0.667534,
		0.474879, 0.871546, -0.122053,
		36.820248, 34.129524, 30.881647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752274, 33.724075, 31.582989>,  <36.487831, 33.519444, 30.967083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752274, 33.724075, 31.582989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656975, 34.041195, 31.358595>,  <36.599796, 34.231468, 31.223959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656975, 34.041195, 31.358595>,  <36.752274, 33.724075, 31.582989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656975, 34.041195, 31.358595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605862, 0.330121, 0.723845,
		0.759059, 0.512331, 0.401679,
		-0.238246, 0.792803, -0.560983,
		36.585503, 34.279037, 31.190300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777054, 34.256001, 31.988441>,  <36.752274, 33.724075, 31.582989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777054, 34.256001, 31.988441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559326, 34.407375, 31.688974>,  <36.428688, 34.498199, 31.509295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559326, 34.407375, 31.688974>,  <36.777054, 34.256001, 31.988441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559326, 34.407375, 31.688974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488773, 0.582253, 0.649679,
		0.681777, 0.719560, -0.131961,
		-0.544318, 0.378437, -0.748668,
		36.396030, 34.520905, 31.464375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638573, 34.931385, 32.242386>,  <36.777054, 34.256001, 31.988441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638573, 34.931385, 32.242386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400127, 34.897141, 31.923056>,  <36.257061, 34.876595, 31.731457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400127, 34.897141, 31.923056>,  <36.638573, 34.931385, 32.242386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400127, 34.897141, 31.923056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719940, 0.497167, 0.484263,
		0.355442, 0.863421, -0.358003,
		-0.596110, -0.085613, -0.798326,
		36.221294, 34.871456, 31.683558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251392, 35.609978, 32.032482>,  <36.638573, 34.931385, 32.242386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251392, 35.609978, 32.032482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031158, 35.304039, 31.898695>,  <35.899017, 35.120476, 31.818422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031158, 35.304039, 31.898695>,  <36.251392, 35.609978, 32.032482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031158, 35.304039, 31.898695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830954, 0.463834, 0.307204,
		-0.079827, 0.447069, -0.890930,
		-0.550585, -0.764845, -0.334468,
		35.865982, 35.074585, 31.798355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732002, 35.865295, 31.566008>,  <36.251392, 35.609978, 32.032482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732002, 35.865295, 31.566008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597725, 35.522110, 31.721550>,  <35.517159, 35.316200, 31.814877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597725, 35.522110, 31.721550>,  <35.732002, 35.865295, 31.566008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597725, 35.522110, 31.721550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838647, 0.460192, 0.291367,
		-0.428931, -0.228305, -0.874011,
		-0.335692, -0.857963, 0.388858,
		35.497017, 35.264721, 31.838207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056168, 35.818401, 31.365395>,  <35.732002, 35.865295, 31.566008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056168, 35.818401, 31.365395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071037, 35.559151, 31.669645>,  <35.079960, 35.403603, 31.852196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071037, 35.559151, 31.669645>,  <35.056168, 35.818401, 31.365395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071037, 35.559151, 31.669645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903559, 0.303319, 0.302620,
		-0.426848, -0.698522, -0.574342,
		0.037178, -0.648124, 0.760626,
		35.082191, 35.364712, 31.897833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389202, 35.526577, 31.353333>,  <35.056168, 35.818401, 31.365395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389202, 35.526577, 31.353333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558010, 35.474457, 31.712202>,  <34.659294, 35.443184, 31.927525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558010, 35.474457, 31.712202>,  <34.389202, 35.526577, 31.353333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558010, 35.474457, 31.712202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902920, 0.028512, 0.428862,
		-0.081460, -0.991065, -0.105616,
		0.422019, -0.130298, 0.897175,
		34.684616, 35.435368, 31.981354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777935, 35.439575, 31.806190>,  <34.389202, 35.526577, 31.353333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777935, 35.439575, 31.806190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059071, 35.456497, 32.090225>,  <34.227753, 35.466652, 32.260647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059071, 35.456497, 32.090225>,  <33.777935, 35.439575, 31.806190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059071, 35.456497, 32.090225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706462, 0.158301, 0.689821,
		-0.083226, -0.986484, 0.141147,
		0.702841, 0.042304, 0.710088,
		34.269924, 35.469189, 32.303253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563740, 35.041264, 32.344017>,  <33.777935, 35.439575, 31.806190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563740, 35.041264, 32.344017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828568, 35.290264, 32.510944>,  <33.987465, 35.439663, 32.611103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828568, 35.290264, 32.510944>,  <33.563740, 35.041264, 32.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828568, 35.290264, 32.510944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674038, 0.251169, 0.694685,
		0.327622, -0.741222, 0.585879,
		0.662070, 0.622499, 0.417323,
		34.027187, 35.477013, 32.636143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511410, 34.938324, 32.961369>,  <33.563740, 35.041264, 32.344017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511410, 34.938324, 32.961369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695469, 35.292500, 32.987461>,  <33.805904, 35.505005, 33.003117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695469, 35.292500, 32.987461>,  <33.511410, 34.938324, 32.961369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695469, 35.292500, 32.987461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603143, 0.257839, 0.754810,
		0.651520, -0.386671, 0.652692,
		0.460152, 0.885440, 0.065230,
		33.833515, 35.558132, 33.007030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379948, 35.160767, 33.650967>,  <33.511410, 34.938324, 32.961369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379948, 35.160767, 33.650967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460304, 35.496063, 33.448193>,  <33.508518, 35.697243, 33.326527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460304, 35.496063, 33.448193>,  <33.379948, 35.160767, 33.650967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460304, 35.496063, 33.448193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604148, 0.513372, 0.609471,
		0.771134, 0.183827, 0.609557,
		0.200893, 0.838246, -0.506937,
		33.520573, 35.747536, 33.296112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341908, 35.645470, 34.128811>,  <33.379948, 35.160767, 33.650967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341908, 35.645470, 34.128811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306671, 35.876804, 33.804401>,  <33.285530, 36.015606, 33.609756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306671, 35.876804, 33.804401>,  <33.341908, 35.645470, 34.128811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306671, 35.876804, 33.804401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599932, 0.619157, 0.506681,
		0.795186, 0.531196, 0.292420,
		-0.088093, 0.578338, -0.811027,
		33.280243, 36.050304, 33.561092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315716, 36.349823, 34.354427>,  <33.341908, 35.645470, 34.128811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315716, 36.349823, 34.354427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131954, 36.341969, 33.999222>,  <33.021698, 36.337257, 33.786098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131954, 36.341969, 33.999222>,  <33.315716, 36.349823, 34.354427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131954, 36.341969, 33.999222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782021, 0.483000, 0.393895,
		0.421176, 0.875400, -0.237245,
		-0.459405, -0.019632, -0.888010,
		32.994133, 36.336079, 33.732819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143562, 36.991871, 34.368382>,  <33.315716, 36.349823, 34.354427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143562, 36.991871, 34.368382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934116, 36.814049, 34.077675>,  <32.808449, 36.707355, 33.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934116, 36.814049, 34.077675>,  <33.143562, 36.991871, 34.368382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934116, 36.814049, 34.077675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809533, 0.525452, 0.261835,
		0.265484, 0.725446, -0.635017,
		-0.523618, -0.444554, -0.726771,
		32.777031, 36.680683, 33.859642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670834, 37.552994, 33.991089>,  <33.143562, 36.991871, 34.368382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670834, 37.552994, 33.991089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507275, 37.191658, 33.939262>,  <32.409142, 36.974857, 33.908165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507275, 37.191658, 33.939262>,  <32.670834, 37.552994, 33.991089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507275, 37.191658, 33.939262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869436, 0.342476, 0.356078,
		-0.277284, 0.258250, -0.925430,
		-0.408895, -0.903337, -0.129569,
		32.384605, 36.920658, 33.900391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972929, 37.647938, 33.640327>,  <32.670834, 37.552994, 33.991089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972929, 37.647938, 33.640327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981035, 37.308571, 33.851906>,  <31.985899, 37.104950, 33.978851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981035, 37.308571, 33.851906>,  <31.972929, 37.647938, 33.640327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981035, 37.308571, 33.851906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861858, 0.253328, 0.439347,
		-0.506745, -0.464780, -0.726078,
		0.020264, -0.848413, 0.528947,
		31.987114, 37.054047, 34.010590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237135, 37.480080, 33.576839>,  <31.972929, 37.647938, 33.640327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237135, 37.480080, 33.576839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349005, 37.226166, 33.864960>,  <31.416126, 37.073818, 34.037830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349005, 37.226166, 33.864960>,  <31.237135, 37.480080, 33.576839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349005, 37.226166, 33.864960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836964, 0.206377, 0.506853,
		-0.470397, -0.744616, -0.473576,
		0.279675, -0.634788, 0.720296,
		31.432907, 37.035728, 34.081047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637835, 37.059906, 33.717117>,  <31.237135, 37.480080, 33.576839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637835, 37.059906, 33.717117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864815, 37.016006, 34.043541>,  <31.001003, 36.989666, 34.239395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864815, 37.016006, 34.043541>,  <30.637835, 37.059906, 33.717117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864815, 37.016006, 34.043541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812402, 0.086884, 0.576589,
		-0.134180, -0.990155, -0.039855,
		0.567450, -0.109745, 0.816062,
		31.035049, 36.983082, 34.288361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308271, 36.525623, 34.210426>,  <30.637835, 37.059906, 33.717117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308271, 36.525623, 34.210426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550198, 36.744064, 34.442280>,  <30.695354, 36.875130, 34.581390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550198, 36.744064, 34.442280>,  <30.308271, 36.525623, 34.210426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550198, 36.744064, 34.442280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749870, 0.145478, 0.645393,
		0.268127, -0.824990, 0.497493,
		0.604817, 0.546102, 0.579629,
		30.731642, 36.907894, 34.616169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218369, 36.197674, 34.846886>,  <30.308271, 36.525623, 34.210426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218369, 36.197674, 34.846886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362265, 36.563290, 34.921841>,  <30.448603, 36.782661, 34.966812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362265, 36.563290, 34.921841>,  <30.218369, 36.197674, 34.846886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362265, 36.563290, 34.921841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713850, 0.140293, 0.686102,
		0.600837, -0.380584, 0.702958,
		0.359740, 0.914042, 0.187387,
		30.470186, 36.837502, 34.978058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961065, 36.277199, 35.568539>,  <30.218369, 36.197674, 34.846886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961065, 36.277199, 35.568539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051304, 36.631763, 35.406853>,  <30.105448, 36.844501, 35.309841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051304, 36.631763, 35.406853>,  <29.961065, 36.277199, 35.568539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051304, 36.631763, 35.406853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676455, 0.441106, 0.589775,
		0.701081, 0.140380, 0.699127,
		0.225596, 0.886408, -0.404211,
		30.118982, 36.897686, 35.285591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891525, 36.728355, 36.097099>,  <29.961065, 36.277199, 35.568539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891525, 36.728355, 36.097099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874475, 36.978638, 35.785542>,  <29.864244, 37.128807, 35.598606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874475, 36.978638, 35.785542>,  <29.891525, 36.728355, 36.097099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874475, 36.978638, 35.785542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725285, 0.516792, 0.454848,
		0.687127, 0.584306, 0.431789,
		-0.042626, 0.625709, -0.778891,
		29.861689, 37.166351, 35.551876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811735, 37.407883, 36.408421>,  <29.891525, 36.728355, 36.097099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811735, 37.407883, 36.408421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691235, 37.458981, 36.030441>,  <29.618935, 37.489639, 35.803654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691235, 37.458981, 36.030441>,  <29.811735, 37.407883, 36.408421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691235, 37.458981, 36.030441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833929, 0.445258, 0.326049,
		0.462396, 0.886244, -0.027607,
		-0.301251, 0.127742, -0.944950,
		29.600859, 37.497303, 35.746956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529987, 37.653862, 36.245930>,  <29.811735, 37.407883, 36.408421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529987, 37.653862, 36.245930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772978, 37.340073, 36.295853>,  <30.918772, 37.151798, 36.325806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772978, 37.340073, 36.295853>,  <30.529987, 37.653862, 36.245930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772978, 37.340073, 36.295853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732679, 0.614055, 0.293458,
		-0.306846, -0.086827, 0.947790,
		0.607475, -0.784473, 0.124804,
		30.955221, 37.104733, 36.333294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039700, 37.810802, 36.725117>,  <30.529987, 37.653862, 36.245930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039700, 37.810802, 36.725117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223890, 37.483719, 36.586952>,  <31.334404, 37.287468, 36.504055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223890, 37.483719, 36.586952>,  <31.039700, 37.810802, 36.725117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223890, 37.483719, 36.586952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886557, 0.404162, 0.225099,
		-0.044464, -0.409878, 0.911056,
		0.460477, -0.817712, -0.345410,
		31.362034, 37.238407, 36.483330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524746, 37.581299, 37.175758>,  <31.039700, 37.810802, 36.725117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524746, 37.581299, 37.175758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664730, 37.387554, 36.855030>,  <31.748720, 37.271309, 36.662594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664730, 37.387554, 36.855030>,  <31.524746, 37.581299, 37.175758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664730, 37.387554, 36.855030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931875, 0.267348, 0.245225,
		0.095587, -0.833017, 0.544927,
		0.349962, -0.484363, -0.801823,
		31.769718, 37.242245, 36.614483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172634, 37.569431, 37.427193>,  <31.524746, 37.581299, 37.175758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172634, 37.569431, 37.427193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171082, 37.466019, 37.040794>,  <32.170151, 37.403973, 36.808956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171082, 37.466019, 37.040794>,  <32.172634, 37.569431, 37.427193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171082, 37.466019, 37.040794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986983, 0.154325, -0.045266,
		0.160780, -0.953597, 0.254563,
		-0.003880, -0.258527, -0.965996,
		32.169918, 37.388462, 36.750996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543987, 36.830601, 37.420635>,  <32.172634, 37.569431, 37.427193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543987, 36.830601, 37.420635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568985, 37.095524, 37.121986>,  <32.583984, 37.254478, 36.942799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568985, 37.095524, 37.121986>,  <32.543987, 36.830601, 37.420635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568985, 37.095524, 37.121986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995894, 0.007701, 0.090193,
		0.065485, -0.749191, -0.659108,
		0.062496, 0.662309, -0.746620,
		32.587734, 37.294216, 36.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021770, 36.567291, 36.944302>,  <32.543987, 36.830601, 37.420635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021770, 36.567291, 36.944302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025368, 36.967010, 36.958797>,  <33.027527, 37.206844, 36.967495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025368, 36.967010, 36.958797>,  <33.021770, 36.567291, 36.944302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025368, 36.967010, 36.958797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976950, -0.016512, 0.212830,
		0.213280, 0.033490, -0.976417,
		0.008995, 0.999303, 0.036239,
		33.028065, 37.266800, 36.969669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457279, 36.630154, 36.394436>,  <33.021770, 36.567291, 36.944302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457279, 36.630154, 36.394436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656090, 36.361305, 36.174904>,  <33.775375, 36.199997, 36.043186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656090, 36.361305, 36.174904>,  <33.457279, 36.630154, 36.394436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656090, 36.361305, 36.174904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132477, -0.683845, 0.717500,
		-0.857565, -0.283907, -0.428928,
		0.497023, -0.672126, -0.548831,
		33.805199, 36.159668, 36.010254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210136, 36.005543, 36.489265>,  <33.457279, 36.630154, 36.394436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210136, 36.005543, 36.489265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577732, 35.921947, 36.355526>,  <33.798290, 35.871792, 36.275284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577732, 35.921947, 36.355526>,  <33.210136, 36.005543, 36.489265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577732, 35.921947, 36.355526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111552, -0.675522, 0.728852,
		-0.378182, -0.707102, -0.597482,
		0.918985, -0.208989, -0.334349,
		33.853428, 35.859249, 36.255222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290432, 35.323120, 36.418785>,  <33.210136, 36.005543, 36.489265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290432, 35.323120, 36.418785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643703, 35.485188, 36.513298>,  <33.855667, 35.582428, 36.570007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643703, 35.485188, 36.513298>,  <33.290432, 35.323120, 36.418785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643703, 35.485188, 36.513298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036323, -0.561347, 0.826783,
		0.467621, -0.721618, -0.510489,
		0.883182, 0.405164, 0.236286,
		33.908657, 35.606735, 36.584183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578178, 34.781059, 36.784817>,  <33.290432, 35.323120, 36.418785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578178, 34.781059, 36.784817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825497, 35.080017, 36.882069>,  <33.973888, 35.259392, 36.940422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825497, 35.080017, 36.882069>,  <33.578178, 34.781059, 36.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825497, 35.080017, 36.882069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173477, -0.431501, 0.885275,
		0.766561, -0.505184, -0.396451,
		0.618295, 0.747393, 0.243134,
		34.010986, 35.304234, 36.955009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070625, 34.447281, 37.139816>,  <33.578178, 34.781059, 36.784817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070625, 34.447281, 37.139816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100903, 34.822010, 37.276421>,  <34.119068, 35.046848, 37.358383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100903, 34.822010, 37.276421>,  <34.070625, 34.447281, 37.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100903, 34.822010, 37.276421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098075, -0.347829, 0.932414,
		0.992297, -0.037080, -0.118206,
		0.075689, 0.936824, 0.341513,
		34.123608, 35.103058, 37.378876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664944, 34.472904, 37.596531>,  <34.070625, 34.447281, 37.139816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664944, 34.472904, 37.596531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404667, 34.763023, 37.686459>,  <34.248501, 34.937096, 37.740414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404667, 34.763023, 37.686459>,  <34.664944, 34.472904, 37.596531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404667, 34.763023, 37.686459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078232, -0.358525, 0.930236,
		0.755301, 0.587710, 0.290031,
		-0.650692, 0.725298, 0.224816,
		34.209457, 34.980614, 37.753902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963169, 34.726608, 38.232952>,  <34.664944, 34.472904, 37.596531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963169, 34.726608, 38.232952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578125, 34.834072, 38.219105>,  <34.347099, 34.898548, 38.210796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578125, 34.834072, 38.219105>,  <34.963169, 34.726608, 38.232952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578125, 34.834072, 38.219105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118730, -0.303591, 0.945376,
		0.243471, 0.914142, 0.324139,
		-0.962614, 0.268656, -0.034620,
		34.289341, 34.914669, 38.208717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911007, 35.130154, 38.841602>,  <34.963169, 34.726608, 38.232952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911007, 35.130154, 38.841602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542133, 35.032124, 38.721928>,  <34.320808, 34.973305, 38.650124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542133, 35.032124, 38.721928>,  <34.911007, 35.130154, 38.841602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542133, 35.032124, 38.721928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249631, -0.213677, 0.944471,
		-0.295399, 0.945663, 0.135870,
		-0.922184, -0.245078, -0.299187,
		34.265476, 34.958599, 38.632172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412865, 35.461704, 39.381088>,  <34.911007, 35.130154, 38.841602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412865, 35.461704, 39.381088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236809, 35.171131, 39.169968>,  <34.131176, 34.996788, 39.043293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236809, 35.171131, 39.169968>,  <34.412865, 35.461704, 39.381088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236809, 35.171131, 39.169968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307476, -0.430335, 0.848688,
		-0.843643, 0.535830, -0.033950,
		-0.440143, -0.726428, -0.527804,
		34.104767, 34.953201, 39.011627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756702, 35.387833, 39.767448>,  <34.412865, 35.461704, 39.381088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756702, 35.387833, 39.767448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818340, 35.059082, 39.548080>,  <33.855324, 34.861832, 39.416458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818340, 35.059082, 39.548080>,  <33.756702, 35.387833, 39.767448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818340, 35.059082, 39.548080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312063, -0.567124, 0.762226,
		-0.937482, 0.053692, -0.343867,
		0.154090, -0.821881, -0.548423,
		33.864567, 34.812519, 39.383553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144142, 34.929142, 39.854210>,  <33.756702, 35.387833, 39.767448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144142, 34.929142, 39.854210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457699, 34.717815, 39.723736>,  <33.645832, 34.591019, 39.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457699, 34.717815, 39.723736>,  <33.144142, 34.929142, 39.854210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457699, 34.717815, 39.723736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188443, -0.703003, 0.685767,
		-0.591613, -0.476097, -0.650634,
		0.783889, -0.528317, -0.326189,
		33.692867, 34.559319, 39.625877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941826, 34.272579, 39.903488>,  <33.144142, 34.929142, 39.854210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941826, 34.272579, 39.903488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327026, 34.202396, 39.821655>,  <33.558147, 34.160286, 39.772556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327026, 34.202396, 39.821655>,  <32.941826, 34.272579, 39.903488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327026, 34.202396, 39.821655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047889, -0.858391, 0.510755,
		-0.265225, -0.482059, -0.835030,
		0.962997, -0.175454, -0.204582,
		33.615925, 34.149761, 39.760281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960236, 33.536972, 39.617382>,  <32.941826, 34.272579, 39.903488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960236, 33.536972, 39.617382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316826, 33.644604, 39.763184>,  <33.530781, 33.709183, 39.850662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316826, 33.644604, 39.763184>,  <32.960236, 33.536972, 39.617382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316826, 33.644604, 39.763184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002297, -0.801836, 0.597540,
		0.453055, -0.533532, -0.714203,
		0.891480, 0.269077, 0.364501,
		33.584270, 33.725327, 39.872536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379627, 32.922337, 39.725422>,  <32.960236, 33.536972, 39.617382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379627, 32.922337, 39.725422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546818, 33.189182, 39.972080>,  <33.647133, 33.349289, 40.120075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546818, 33.189182, 39.972080>,  <33.379627, 32.922337, 39.725422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546818, 33.189182, 39.972080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196102, -0.596523, 0.778270,
		0.887038, -0.446227, -0.118513,
		0.417981, 0.667114, 0.616645,
		33.672211, 33.389317, 40.157074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042179, 32.642044, 39.975433>,  <33.379627, 32.922337, 39.725422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042179, 32.642044, 39.975433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934460, 32.911110, 40.251114>,  <33.869827, 33.072548, 40.416523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934460, 32.911110, 40.251114>,  <34.042179, 32.642044, 39.975433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934460, 32.911110, 40.251114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034066, -0.721846, 0.691215,
		0.962455, 0.162661, 0.217304,
		-0.269294, 0.672666, 0.689203,
		33.853672, 33.112911, 40.457874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400578, 32.434383, 40.481586>,  <34.042179, 32.642044, 39.975433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400578, 32.434383, 40.481586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165413, 32.700912, 40.665051>,  <34.024315, 32.860828, 40.775131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165413, 32.700912, 40.665051>,  <34.400578, 32.434383, 40.481586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165413, 32.700912, 40.665051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061489, -0.602177, 0.795991,
		0.806583, 0.439772, 0.395000,
		-0.587914, 0.666321, 0.458664,
		33.989040, 32.900810, 40.802650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703281, 32.426167, 41.150124>,  <34.400578, 32.434383, 40.481586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703281, 32.426167, 41.150124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342091, 32.589314, 41.204197>,  <34.125374, 32.687202, 41.236641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342091, 32.589314, 41.204197>,  <34.703281, 32.426167, 41.150124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342091, 32.589314, 41.204197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175420, -0.637118, 0.750538,
		0.392246, 0.654007, 0.646852,
		-0.902979, 0.407866, 0.135181,
		34.071198, 32.711674, 41.244751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634670, 32.668728, 41.897621>,  <34.703281, 32.426167, 41.150124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634670, 32.668728, 41.897621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262196, 32.600548, 41.768726>,  <34.038712, 32.559639, 41.691391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262196, 32.600548, 41.768726>,  <34.634670, 32.668728, 41.897621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262196, 32.600548, 41.768726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206060, -0.483072, 0.850989,
		-0.300711, 0.858831, 0.414709,
		-0.931189, -0.170447, -0.322235,
		33.982838, 32.549416, 41.672054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169998, 32.791428, 42.473454>,  <34.634670, 32.668728, 41.897621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169998, 32.791428, 42.473454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926929, 32.594746, 42.223984>,  <33.781090, 32.476738, 42.074303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926929, 32.594746, 42.223984>,  <34.169998, 32.791428, 42.473454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926929, 32.594746, 42.223984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347686, -0.541335, 0.765553,
		-0.714040, 0.682045, 0.157994,
		-0.607669, -0.491703, -0.623672,
		33.744629, 32.447235, 42.036880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452953, 32.880600, 42.716053>,  <34.169998, 32.791428, 42.473454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452953, 32.880600, 42.716053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440681, 32.551792, 42.488602>,  <33.433319, 32.354507, 42.352131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440681, 32.551792, 42.488602>,  <33.452953, 32.880600, 42.716053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440681, 32.551792, 42.488602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517275, -0.473731, 0.712745,
		-0.855269, 0.316007, -0.410675,
		-0.030683, -0.822021, -0.568630,
		33.431477, 32.305187, 42.318012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798847, 32.656597, 42.716419>,  <33.452953, 32.880600, 42.716053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798847, 32.656597, 42.716419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011787, 32.329388, 42.629303>,  <33.139553, 32.133060, 42.577034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011787, 32.329388, 42.629303>,  <32.798847, 32.656597, 42.716419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011787, 32.329388, 42.629303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612651, -0.549850, 0.567736,
		-0.584178, -0.168802, -0.793878,
		0.532349, -0.818028, -0.217794,
		33.171494, 32.083981, 42.563965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246765, 32.201530, 42.733330>,  <32.798847, 32.656597, 42.716419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246765, 32.201530, 42.733330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595947, 32.006783, 42.745331>,  <32.805458, 31.889935, 42.752533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595947, 32.006783, 42.745331>,  <32.246765, 32.201530, 42.733330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595947, 32.006783, 42.745331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410928, -0.700862, 0.583036,
		-0.262831, -0.521297, -0.811892,
		0.872959, -0.486869, 0.030007,
		32.857834, 31.860722, 42.754333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099388, 31.456564, 42.710506>,  <32.246765, 32.201530, 42.733330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099388, 31.456564, 42.710506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466824, 31.400913, 42.858475>,  <32.687283, 31.367523, 42.947258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466824, 31.400913, 42.858475>,  <32.099388, 31.456564, 42.710506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466824, 31.400913, 42.858475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361281, -0.675078, 0.643231,
		0.160236, -0.724509, -0.670381,
		0.918586, -0.139127, 0.369923,
		32.742401, 31.359175, 42.969452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071934, 30.752222, 42.877724>,  <32.099388, 31.456564, 42.710506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071934, 30.752222, 42.877724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352390, 30.950626, 43.082615>,  <32.520664, 31.069670, 43.205547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352390, 30.950626, 43.082615>,  <32.071934, 30.752222, 42.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352390, 30.950626, 43.082615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292657, -0.454892, 0.841086,
		0.650197, -0.739624, -0.173781,
		0.701139, 0.496013, 0.512226,
		32.562733, 31.099430, 43.236282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439354, 30.253065, 43.303772>,  <32.071934, 30.752222, 42.877724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439354, 30.253065, 43.303772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541042, 30.594864, 43.484970>,  <32.602055, 30.799942, 43.593689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541042, 30.594864, 43.484970>,  <32.439354, 30.253065, 43.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541042, 30.594864, 43.484970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001085, -0.468135, 0.883656,
		0.967145, -0.225138, -0.118083,
		0.254223, 0.854495, 0.452999,
		32.617310, 30.851213, 43.620869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013687, 30.053776, 43.665672>,  <32.439354, 30.253065, 43.303772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013687, 30.053776, 43.665672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862099, 30.388418, 43.823898>,  <32.771145, 30.589205, 43.918835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862099, 30.388418, 43.823898>,  <33.013687, 30.053776, 43.665672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862099, 30.388418, 43.823898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019418, -0.420163, 0.907241,
		0.925205, 0.351497, 0.142983,
		-0.378969, 0.836607, 0.395563,
		32.748409, 30.639400, 43.942566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552471, 30.263769, 44.250984>,  <33.013687, 30.053776, 43.665672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552471, 30.263769, 44.250984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227299, 30.476093, 44.346806>,  <33.032196, 30.603487, 44.404301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227299, 30.476093, 44.346806>,  <33.552471, 30.263769, 44.250984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227299, 30.476093, 44.346806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083581, -0.300751, 0.950033,
		0.576332, 0.792333, 0.200124,
		-0.812930, 0.530809, 0.239556,
		32.983421, 30.635336, 44.418671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656540, 30.710558, 44.943096>,  <33.552471, 30.263769, 44.250984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656540, 30.710558, 44.943096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262020, 30.658709, 44.902275>,  <33.025311, 30.627600, 44.877781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262020, 30.658709, 44.902275>,  <33.656540, 30.710558, 44.943096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262020, 30.658709, 44.902275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038009, -0.423421, 0.905135,
		-0.160537, 0.896612, 0.412692,
		-0.986298, -0.129622, -0.102054,
		32.966129, 30.619822, 44.871658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414093, 31.033936, 45.501335>,  <33.656540, 30.710558, 44.943096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414093, 31.033936, 45.501335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151379, 30.763706, 45.367329>,  <32.993752, 30.601568, 45.286926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151379, 30.763706, 45.367329>,  <33.414093, 31.033936, 45.501335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151379, 30.763706, 45.367329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148770, -0.319453, 0.935851,
		-0.739255, 0.664495, 0.109308,
		-0.656787, -0.675571, -0.335014,
		32.954342, 30.561035, 45.266823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179329, 30.861574, 46.040314>,  <33.414093, 31.033936, 45.501335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179329, 30.861574, 46.040314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008877, 30.568916, 45.827484>,  <32.906605, 30.393322, 45.699787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008877, 30.568916, 45.827484>,  <33.179329, 30.861574, 46.040314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008877, 30.568916, 45.827484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286698, -0.448617, 0.846491,
		-0.858028, 0.513266, -0.018590,
		-0.426135, -0.731643, -0.532078,
		32.881035, 30.349422, 45.667862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420757, 30.883869, 46.094128>,  <33.179329, 30.861574, 46.040314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420757, 30.883869, 46.094128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525276, 30.506416, 46.012852>,  <32.587986, 30.279945, 45.964085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525276, 30.506416, 46.012852>,  <32.420757, 30.883869, 46.094128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525276, 30.506416, 46.012852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525097, -0.315590, 0.790364,
		-0.809936, -0.099826, -0.577960,
		0.261297, -0.943630, -0.203190,
		32.603664, 30.223328, 45.951897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795044, 30.392746, 46.139599>,  <32.420757, 30.883869, 46.094128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795044, 30.392746, 46.139599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113991, 30.154079, 46.175800>,  <32.305359, 30.010880, 46.197521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113991, 30.154079, 46.175800>,  <31.795044, 30.392746, 46.139599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113991, 30.154079, 46.175800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344652, -0.327119, 0.879891,
		-0.495397, -0.732790, -0.466477,
		0.797369, -0.596667, 0.090503,
		32.353203, 29.975079, 46.202953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597542, 29.795523, 46.562939>,  <31.795044, 30.392746, 46.139599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597542, 29.795523, 46.562939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993382, 29.746996, 46.593861>,  <32.230885, 29.717880, 46.612415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993382, 29.746996, 46.593861>,  <31.597542, 29.795523, 46.562939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993382, 29.746996, 46.593861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137398, -0.637928, 0.757740,
		-0.042613, -0.760480, -0.647962,
		0.989599, -0.121318, 0.077304,
		32.290260, 29.710600, 46.617050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682871, 29.134043, 46.671982>,  <31.597542, 29.795523, 46.562939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682871, 29.134043, 46.671982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038219, 29.269712, 46.795761>,  <32.251427, 29.351114, 46.870029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038219, 29.269712, 46.795761>,  <31.682871, 29.134043, 46.671982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038219, 29.269712, 46.795761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037674, -0.617871, 0.785376,
		0.457579, -0.709363, -0.536120,
		0.888370, 0.339174, 0.309449,
		32.304729, 29.371464, 46.888596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115238, 28.475031, 46.734211>,  <31.682871, 29.134043, 46.671982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115238, 28.475031, 46.734211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261822, 28.775604, 46.953686>,  <32.349773, 28.955948, 47.085369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261822, 28.775604, 46.953686>,  <32.115238, 28.475031, 46.734211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261822, 28.775604, 46.953686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112455, -0.621160, 0.775574,
		0.923613, -0.222513, -0.312132,
		0.366459, 0.751431, 0.548688,
		32.371761, 29.001034, 47.118294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695873, 28.180237, 46.955311>,  <32.115238, 28.475031, 46.734211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695873, 28.180237, 46.955311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587486, 28.474007, 47.204212>,  <32.522453, 28.650269, 47.353554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587486, 28.474007, 47.204212>,  <32.695873, 28.180237, 46.955311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587486, 28.474007, 47.204212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038414, -0.654172, 0.755370,
		0.961823, 0.180775, 0.205469,
		-0.270964, 0.734425, 0.622253,
		32.506199, 28.694334, 47.390888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041668, 28.085045, 47.615620>,  <32.695873, 28.180237, 46.955311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041668, 28.085045, 47.615620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762619, 28.331308, 47.762199>,  <32.595188, 28.479067, 47.850147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762619, 28.331308, 47.762199>,  <33.041668, 28.085045, 47.615620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762619, 28.331308, 47.762199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115513, -0.601424, 0.790535,
		0.707089, 0.509169, 0.490686,
		-0.697626, 0.615659, 0.366445,
		32.553329, 28.516006, 47.872131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220257, 28.194347, 48.373268>,  <33.041668, 28.085045, 47.615620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220257, 28.194347, 48.373268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839314, 28.236578, 48.258820>,  <32.610748, 28.261915, 48.190151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839314, 28.236578, 48.258820>,  <33.220257, 28.194347, 48.373268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839314, 28.236578, 48.258820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272455, -0.716077, 0.642652,
		-0.137036, 0.689991, 0.710727,
		-0.952360, 0.105575, -0.286120,
		32.553604, 28.268250, 48.172985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901520, 28.049721, 48.949436>,  <33.220257, 28.194347, 48.373268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901520, 28.049721, 48.949436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614746, 28.027027, 48.671505>,  <32.442680, 28.013411, 48.504745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614746, 28.027027, 48.671505>,  <32.901520, 28.049721, 48.949436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614746, 28.027027, 48.671505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484953, -0.675429, 0.555533,
		-0.500826, 0.735239, 0.456723,
		-0.716934, -0.056736, -0.694829,
		32.399666, 28.010006, 48.463055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351547, 28.084694, 49.331917>,  <32.901520, 28.049721, 48.949436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351547, 28.084694, 49.331917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222099, 27.911930, 48.995174>,  <32.144432, 27.808271, 48.793129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222099, 27.911930, 48.995174>,  <32.351547, 28.084694, 49.331917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222099, 27.911930, 48.995174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557487, -0.631866, 0.538474,
		-0.764513, 0.643585, -0.036300,
		-0.323617, -0.431908, -0.841860,
		32.125015, 27.782358, 48.742615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652058, 28.161608, 49.478886>,  <32.351547, 28.084694, 49.331917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652058, 28.161608, 49.478886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710346, 27.898243, 49.183517>,  <31.745319, 27.740225, 49.006298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710346, 27.898243, 49.183517>,  <31.652058, 28.161608, 49.478886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710346, 27.898243, 49.183517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630402, -0.637031, 0.443604,
		-0.762469, 0.400858, -0.507892,
		0.145721, -0.658410, -0.738418,
		31.754063, 27.700720, 48.961990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173405, 27.926561, 50.053802>,  <31.652058, 28.161608, 49.478886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173405, 27.926561, 50.053802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100010, 27.622284, 50.302860>,  <31.055973, 27.439718, 50.452293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100010, 27.622284, 50.302860>,  <31.173405, 27.926561, 50.053802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100010, 27.622284, 50.302860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722313, -0.533958, -0.439491,
		0.666781, 0.369101, 0.647431,
		-0.183485, -0.760692, 0.622640,
		31.044964, 27.394075, 50.489651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876354, 27.681528, 50.176113>,  <31.173405, 27.926561, 50.053802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876354, 27.681528, 50.176113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654137, 27.384832, 50.326412>,  <31.520805, 27.206814, 50.416592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654137, 27.384832, 50.326412>,  <31.876354, 27.681528, 50.176113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654137, 27.384832, 50.326412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762189, -0.634894, -0.126403,
		0.332320, 0.216170, 0.918060,
		-0.555546, -0.741741, 0.375750,
		31.487473, 27.162310, 50.439137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279148, 27.189016, 50.708256>,  <31.876354, 27.681528, 50.176113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279148, 27.189016, 50.708256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979481, 27.020195, 50.504055>,  <31.799681, 26.918903, 50.381535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979481, 27.020195, 50.504055>,  <32.279148, 27.189016, 50.708256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979481, 27.020195, 50.504055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577761, -0.793297, -0.192021,
		-0.323940, -0.438806, 0.838160,
		-0.749170, -0.422052, -0.510506,
		31.754730, 26.893579, 50.350903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134285, 26.483719, 50.965176>,  <32.279148, 27.189016, 50.708256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134285, 26.483719, 50.965176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018017, 26.536985, 50.586170>,  <31.948257, 26.568945, 50.358768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018017, 26.536985, 50.586170>,  <32.134285, 26.483719, 50.965176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018017, 26.536985, 50.586170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705113, -0.639578, -0.306194,
		-0.646782, -0.757105, 0.092012,
		-0.290670, 0.133162, -0.947512,
		31.930817, 26.576935, 50.301918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166489, 25.834242, 50.574322>,  <32.134285, 26.483719, 50.965176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166489, 25.834242, 50.574322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193123, 26.133266, 50.309982>,  <32.209103, 26.312681, 50.151379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193123, 26.133266, 50.309982>,  <32.166489, 25.834242, 50.574322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193123, 26.133266, 50.309982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684491, -0.516118, -0.514873,
		-0.725974, -0.418057, -0.546068,
		0.066589, 0.747563, -0.660844,
		32.213100, 26.357536, 50.111729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246357, 25.559673, 49.901260>,  <32.166489, 25.834242, 50.574322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246357, 25.559673, 49.901260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417812, 25.919474, 49.867390>,  <32.520687, 26.135353, 49.847069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417812, 25.919474, 49.867390>,  <32.246357, 25.559673, 49.901260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417812, 25.919474, 49.867390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775961, -0.414527, -0.475450,
		-0.462767, 0.138090, -0.875658,
		0.428639, 0.899499, -0.084677,
		32.546406, 26.189323, 49.841988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551167, 25.901640, 49.200092>,  <32.246357, 25.559673, 49.901260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551167, 25.901640, 49.200092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766926, 26.068697, 49.492565>,  <32.896381, 26.168932, 49.668049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766926, 26.068697, 49.492565>,  <32.551167, 25.901640, 49.200092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766926, 26.068697, 49.492565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833068, -0.391189, -0.391112,
		0.122686, 0.820089, -0.558930,
		0.539394, 0.417642, 0.731183,
		32.928745, 26.193989, 49.711922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897652, 25.433474, 48.669178>,  <32.551167, 25.901640, 49.200092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897652, 25.433474, 48.669178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049389, 25.171766, 48.407482>,  <33.140430, 25.014742, 48.250465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049389, 25.171766, 48.407482>,  <32.897652, 25.433474, 48.669178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049389, 25.171766, 48.407482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148958, 0.741054, -0.654714,
		0.913187, 0.150907, 0.378572,
		0.379343, -0.654267, -0.654242,
		33.163193, 24.975487, 48.211208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618362, 25.572323, 48.507477>,  <32.897652, 25.433474, 48.669178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618362, 25.572323, 48.507477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425709, 25.420193, 48.191662>,  <33.310116, 25.328915, 48.002171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425709, 25.420193, 48.191662>,  <33.618362, 25.572323, 48.507477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425709, 25.420193, 48.191662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261658, 0.797421, -0.543741,
		0.836398, -0.468475, -0.284550,
		-0.481636, -0.380329, -0.789542,
		33.281216, 25.306095, 47.954800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068775, 25.535519, 47.920361>,  <33.618362, 25.572323, 48.507477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068775, 25.535519, 47.920361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687584, 25.542997, 47.799370>,  <33.458870, 25.547483, 47.726776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687584, 25.542997, 47.799370>,  <34.068775, 25.535519, 47.920361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687584, 25.542997, 47.799370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229496, 0.696363, -0.680008,
		0.197918, -0.717446, -0.667907,
		-0.952975, 0.018696, -0.302473,
		33.401691, 25.548607, 47.708630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173725, 25.586161, 47.211758>,  <34.068775, 25.535519, 47.920361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173725, 25.586161, 47.211758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820774, 25.744776, 47.313076>,  <33.609001, 25.839945, 47.373867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820774, 25.744776, 47.313076>,  <34.173725, 25.586161, 47.211758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820774, 25.744776, 47.313076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115682, 0.704616, -0.700096,
		-0.456091, -0.588450, -0.667613,
		-0.882382, 0.396538, 0.253296,
		33.556061, 25.863737, 47.389065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815868, 25.513422, 46.620003>,  <34.173725, 25.586161, 47.211758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815868, 25.513422, 46.620003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639557, 25.801235, 46.834660>,  <33.533768, 25.973923, 46.963455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639557, 25.801235, 46.834660>,  <33.815868, 25.513422, 46.620003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639557, 25.801235, 46.834660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061766, 0.620749, -0.781572,
		-0.895487, -0.311356, -0.318057,
		-0.440781, 0.719533, 0.536642,
		33.507324, 26.017096, 46.995651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333172, 25.785973, 46.209641>,  <33.815868, 25.513422, 46.620003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333172, 25.785973, 46.209641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397903, 26.062511, 46.491306>,  <33.436741, 26.228436, 46.660305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397903, 26.062511, 46.491306>,  <33.333172, 25.785973, 46.209641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397903, 26.062511, 46.491306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168296, 0.683783, -0.710013,
		-0.972362, 0.233407, -0.005697,
		0.161827, 0.691348, 0.704166,
		33.446453, 26.269917, 46.702557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036213, 26.292725, 45.962875>,  <33.333172, 25.785973, 46.209641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036213, 26.292725, 45.962875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297417, 26.461601, 46.214378>,  <33.454140, 26.562927, 46.365280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297417, 26.461601, 46.214378>,  <33.036213, 26.292725, 45.962875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297417, 26.461601, 46.214378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267132, 0.648449, -0.712850,
		-0.708674, 0.633459, 0.310663,
		0.653010, 0.422190, 0.628756,
		33.493320, 26.588259, 46.403004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941330, 27.067762, 45.934616>,  <33.036213, 26.292725, 45.962875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941330, 27.067762, 45.934616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310585, 26.988533, 46.066429>,  <33.532139, 26.940994, 46.145515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310585, 26.988533, 46.066429>,  <32.941330, 27.067762, 45.934616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310585, 26.988533, 46.066429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381151, 0.583962, -0.716737,
		-0.050464, 0.787245, 0.614572,
		0.923134, -0.198075, 0.329529,
		33.587524, 26.929110, 46.165287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206131, 27.638105, 45.842869>,  <32.941330, 27.067762, 45.934616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206131, 27.638105, 45.842869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521706, 27.399267, 45.900921>,  <33.711048, 27.255964, 45.935753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521706, 27.399267, 45.900921>,  <33.206131, 27.638105, 45.842869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521706, 27.399267, 45.900921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451031, 0.402301, -0.796697,
		0.417319, 0.693997, 0.586697,
		0.788934, -0.597095, 0.145126,
		33.758385, 27.220139, 45.944458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773609, 28.083485, 45.916897>,  <33.206131, 27.638105, 45.842869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773609, 28.083485, 45.916897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910351, 27.726629, 45.798759>,  <33.992397, 27.512516, 45.727879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910351, 27.726629, 45.798759>,  <33.773609, 28.083485, 45.916897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910351, 27.726629, 45.798759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520219, 0.441384, -0.731131,
		0.782628, 0.096297, 0.614996,
		0.341855, -0.892136, -0.295344,
		34.012909, 27.458988, 45.710155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548332, 28.091038, 45.910732>,  <33.773609, 28.083485, 45.916897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548332, 28.091038, 45.910732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480576, 27.779917, 45.668633>,  <34.439922, 27.593245, 45.523373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480576, 27.779917, 45.668633>,  <34.548332, 28.091038, 45.910732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480576, 27.779917, 45.668633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687561, 0.346721, -0.638000,
		0.706092, -0.524220, 0.476055,
		-0.169394, -0.777804, -0.605250,
		34.429756, 27.546576, 45.487057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221249, 27.807198, 45.830490>,  <34.548332, 28.091038, 45.910732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221249, 27.807198, 45.830490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973377, 27.683868, 45.541786>,  <34.824654, 27.609871, 45.368565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973377, 27.683868, 45.541786>,  <35.221249, 27.807198, 45.830490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973377, 27.683868, 45.541786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665245, 0.281643, -0.691467,
		0.416475, -0.908633, 0.030584,
		-0.619676, -0.308324, -0.721761,
		34.787476, 27.591372, 45.325256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635555, 27.408850, 45.417805>,  <35.221249, 27.807198, 45.830490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635555, 27.408850, 45.417805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307610, 27.502350, 45.208740>,  <35.110840, 27.558451, 45.083302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307610, 27.502350, 45.208740>,  <35.635555, 27.408850, 45.417805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307610, 27.502350, 45.208740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572318, 0.308373, -0.759841,
		-0.016438, -0.922099, -0.386605,
		-0.819867, 0.233752, -0.522665,
		35.061649, 27.572475, 45.051941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849537, 27.153419, 44.716030>,  <35.635555, 27.408850, 45.417805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849537, 27.153419, 44.716030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536499, 27.398607, 44.672546>,  <35.348679, 27.545721, 44.646458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536499, 27.398607, 44.672546>,  <35.849537, 27.153419, 44.716030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536499, 27.398607, 44.672546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436895, 0.416386, -0.797336,
		-0.443479, -0.671483, -0.593665,
		-0.782591, 0.612971, -0.108709,
		35.301720, 27.582499, 44.639935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601562, 27.011902, 43.975925>,  <35.849537, 27.153419, 44.716030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601562, 27.011902, 43.975925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490963, 27.368443, 44.119614>,  <35.424603, 27.582367, 44.205826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490963, 27.368443, 44.119614>,  <35.601562, 27.011902, 43.975925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490963, 27.368443, 44.119614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411628, 0.447619, -0.793851,
		-0.868395, -0.071635, -0.490672,
		-0.276502, 0.891350, 0.359223,
		35.408012, 27.635847, 44.227379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293858, 27.347439, 43.434273>,  <35.601562, 27.011902, 43.975925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293858, 27.347439, 43.434273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434326, 27.613001, 43.698368>,  <35.518608, 27.772339, 43.856823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434326, 27.613001, 43.698368>,  <35.293858, 27.347439, 43.434273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434326, 27.613001, 43.698368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361471, 0.554347, -0.749692,
		-0.863724, 0.501924, -0.045314,
		0.351169, 0.663907, 0.660234,
		35.539677, 27.812172, 43.896439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392345, 27.940920, 43.016075>,  <35.293858, 27.347439, 43.434273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392345, 27.940920, 43.016075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572487, 28.083298, 43.343609>,  <35.680573, 28.168724, 43.540127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572487, 28.083298, 43.343609>,  <35.392345, 27.940920, 43.016075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572487, 28.083298, 43.343609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157129, 0.871188, -0.465127,
		-0.878914, 0.338134, 0.336415,
		0.450356, 0.355946, 0.818830,
		35.707592, 28.190083, 43.589256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003433, 28.533365, 43.320740>,  <35.392345, 27.940920, 43.016075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003433, 28.533365, 43.320740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389374, 28.567390, 43.420200>,  <35.620937, 28.587805, 43.479877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389374, 28.567390, 43.420200>,  <35.003433, 28.533365, 43.320740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389374, 28.567390, 43.420200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016713, 0.964112, -0.264970,
		-0.262267, 0.251500, 0.931646,
		0.964850, 0.085063, 0.248652,
		35.678829, 28.592909, 43.494797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130459, 29.121426, 43.625546>,  <35.003433, 28.533365, 43.320740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130459, 29.121426, 43.625546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486919, 29.034288, 43.466351>,  <35.700794, 28.982006, 43.370834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486919, 29.034288, 43.466351>,  <35.130459, 29.121426, 43.625546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486919, 29.034288, 43.466351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026892, 0.850288, -0.525631,
		0.452907, 0.479120, 0.751878,
		0.891152, -0.217842, -0.397985,
		35.754265, 28.968935, 43.346954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646679, 29.745415, 43.722702>,  <35.130459, 29.121426, 43.625546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646679, 29.745415, 43.722702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797226, 29.510105, 43.436409>,  <35.887554, 29.368919, 43.264633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797226, 29.510105, 43.436409>,  <35.646679, 29.745415, 43.722702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797226, 29.510105, 43.436409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119136, 0.796859, -0.592302,
		0.918777, 0.137656, 0.370000,
		0.376372, -0.588274, -0.715736,
		35.910137, 29.333622, 43.221687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126747, 30.208023, 43.383125>,  <35.646679, 29.745415, 43.722702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126747, 30.208023, 43.383125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089340, 29.897863, 43.133320>,  <36.066895, 29.711767, 42.983437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089340, 29.897863, 43.133320>,  <36.126747, 30.208023, 43.383125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089340, 29.897863, 43.133320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260730, 0.586295, -0.766993,
		0.960871, -0.234559, 0.147338,
		-0.093522, -0.775397, -0.624510,
		36.061283, 29.665245, 42.945969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674831, 30.295828, 42.941727>,  <36.126747, 30.208023, 43.383125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674831, 30.295828, 42.941727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417732, 30.065338, 42.739803>,  <36.263474, 29.927044, 42.618649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417732, 30.065338, 42.739803>,  <36.674831, 30.295828, 42.941727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417732, 30.065338, 42.739803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032400, 0.637919, -0.769421,
		0.765388, -0.510903, -0.391355,
		-0.642753, -0.576226, -0.504809,
		36.224907, 29.892469, 42.588360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959816, 30.199219, 42.294342>,  <36.674831, 30.295828, 42.941727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959816, 30.199219, 42.294342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568027, 30.134274, 42.246571>,  <36.332954, 30.095306, 42.217907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568027, 30.134274, 42.246571>,  <36.959816, 30.199219, 42.294342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568027, 30.134274, 42.246571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021437, 0.505266, -0.862697,
		0.200417, -0.847552, -0.491415,
		-0.979476, -0.162365, -0.119433,
		36.274185, 30.085564, 42.210739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918266, 30.008707, 41.544930>,  <36.959816, 30.199219, 42.294342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918266, 30.008707, 41.544930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580479, 30.144033, 41.711025>,  <36.377808, 30.225229, 41.810680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580479, 30.144033, 41.711025>,  <36.918266, 30.008707, 41.544930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580479, 30.144033, 41.711025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238384, 0.456840, -0.857012,
		-0.479638, -0.822702, -0.305136,
		-0.844465, 0.338316, 0.415237,
		36.327141, 30.245527, 41.835598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530685, 30.008175, 41.021420>,  <36.918266, 30.008707, 41.544930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530685, 30.008175, 41.021420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343254, 30.263605, 41.265602>,  <36.230793, 30.416862, 41.412109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343254, 30.263605, 41.265602>,  <36.530685, 30.008175, 41.021420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343254, 30.263605, 41.265602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191551, 0.601130, -0.775855,
		-0.862404, -0.480483, -0.159358,
		-0.468580, 0.638576, 0.610454,
		36.202679, 30.455177, 41.448738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803288, 30.022242, 40.702255>,  <36.530685, 30.008175, 41.021420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803288, 30.022242, 40.702255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848068, 30.346653, 40.931934>,  <35.874939, 30.541300, 41.069740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848068, 30.346653, 40.931934>,  <35.803288, 30.022242, 40.702255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848068, 30.346653, 40.931934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391504, 0.567092, -0.724659,
		-0.913341, -0.143671, 0.381009,
		0.111954, 0.811027, 0.574196,
		35.881653, 30.589962, 41.104195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129257, 30.320414, 40.654461>,  <35.803288, 30.022242, 40.702255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129257, 30.320414, 40.654461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399868, 30.598089, 40.752773>,  <35.562237, 30.764694, 40.811760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399868, 30.598089, 40.752773>,  <35.129257, 30.320414, 40.654461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399868, 30.598089, 40.752773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358042, 0.601716, -0.713964,
		-0.643517, 0.395017, 0.655627,
		0.676529, 0.694190, 0.245782,
		35.602825, 30.806347, 40.826508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883595, 30.921808, 40.359348>,  <35.129257, 30.320414, 40.654461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883595, 30.921808, 40.359348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233303, 31.073229, 40.480904>,  <35.443127, 31.164082, 40.553837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233303, 31.073229, 40.480904>,  <34.883595, 30.921808, 40.359348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233303, 31.073229, 40.480904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051357, 0.694625, -0.717537,
		-0.482712, 0.611715, 0.626732,
		0.874272, 0.378550, 0.303888,
		35.495586, 31.186794, 40.572071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870945, 31.677172, 40.550579>,  <34.883595, 30.921808, 40.359348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870945, 31.677172, 40.550579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245220, 31.587942, 40.441231>,  <35.469784, 31.534405, 40.375622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245220, 31.587942, 40.441231>,  <34.870945, 31.677172, 40.550579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245220, 31.587942, 40.441231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045848, 0.845082, -0.532667,
		0.349844, 0.485875, 0.800959,
		0.935686, -0.223072, -0.273370,
		35.525925, 31.521021, 40.359219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210114, 32.297382, 40.586304>,  <34.870945, 31.677172, 40.550579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210114, 32.297382, 40.586304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426678, 32.055855, 40.352287>,  <35.556618, 31.910938, 40.211876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426678, 32.055855, 40.352287>,  <35.210114, 32.297382, 40.586304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426678, 32.055855, 40.352287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006153, 0.692989, -0.720922,
		0.840734, 0.393916, 0.371478,
		0.541413, -0.603818, -0.585044,
		35.589100, 31.874710, 40.176773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609921, 32.779701, 40.192112>,  <35.210114, 32.297382, 40.586304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609921, 32.779701, 40.192112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656300, 32.420582, 40.022163>,  <35.684128, 32.205109, 39.920193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656300, 32.420582, 40.022163>,  <35.609921, 32.779701, 40.192112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656300, 32.420582, 40.022163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163122, 0.439162, -0.883475,
		0.979769, 0.033131, 0.197370,
		0.115948, -0.897797, -0.424873,
		35.691086, 32.151241, 39.894703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297585, 32.751850, 39.773155>,  <35.609921, 32.779701, 40.192112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297585, 32.751850, 39.773155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072716, 32.461617, 39.614418>,  <35.937794, 32.287476, 39.519176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072716, 32.461617, 39.614418>,  <36.297585, 32.751850, 39.773155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072716, 32.461617, 39.614418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200376, 0.346054, -0.916568,
		0.802377, -0.594790, -0.049153,
		-0.562175, -0.725584, -0.396847,
		35.904064, 32.243942, 39.495365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598255, 32.667645, 39.072906>,  <36.297585, 32.751850, 39.773155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598255, 32.667645, 39.072906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259037, 32.461197, 39.024849>,  <36.055504, 32.337330, 38.996014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259037, 32.461197, 39.024849>,  <36.598255, 32.667645, 39.072906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259037, 32.461197, 39.024849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004245, 0.220089, -0.975470,
		0.529900, -0.827757, -0.184456,
		-0.848050, -0.516119, -0.120139,
		36.004623, 32.306362, 38.988808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737202, 32.230766, 38.501743>,  <36.598255, 32.667645, 39.072906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737202, 32.230766, 38.501743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343189, 32.295330, 38.525940>,  <36.106781, 32.334068, 38.540459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343189, 32.295330, 38.525940>,  <36.737202, 32.230766, 38.501743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343189, 32.295330, 38.525940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061233, 0.000386, -0.998123,
		-0.161135, -0.986887, 0.009504,
		-0.985031, 0.161415, 0.060492,
		36.047680, 32.343754, 38.544086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441582, 31.763239, 37.933849>,  <36.737202, 32.230766, 38.501743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441582, 31.763239, 37.933849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176540, 32.036732, 38.056141>,  <36.017517, 32.200829, 38.129517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176540, 32.036732, 38.056141>,  <36.441582, 31.763239, 37.933849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176540, 32.036732, 38.056141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333038, 0.096650, -0.937947,
		-0.670853, -0.723304, 0.163669,
		-0.662602, 0.683733, 0.305726,
		35.977760, 32.241852, 38.147858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866058, 31.536039, 37.702442>,  <36.441582, 31.763239, 37.933849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866058, 31.536039, 37.702442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809788, 31.927227, 37.764133>,  <35.776024, 32.161942, 37.801147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809788, 31.927227, 37.764133>,  <35.866058, 31.536039, 37.702442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809788, 31.927227, 37.764133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171225, 0.129393, -0.976698,
		-0.975136, -0.163810, 0.149250,
		-0.140681, 0.977969, 0.154224,
		35.767582, 32.220619, 37.810402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232533, 31.713570, 37.233959>,  <35.866058, 31.536039, 37.702442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232533, 31.713570, 37.233959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426769, 32.053413, 37.316284>,  <35.543312, 32.257320, 37.365681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426769, 32.053413, 37.316284>,  <35.232533, 31.713570, 37.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426769, 32.053413, 37.316284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176191, 0.325724, -0.928903,
		-0.856244, 0.414808, 0.307864,
		0.485595, 0.849611, 0.205814,
		35.572449, 32.308296, 37.378029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810501, 32.274872, 36.974308>,  <35.232533, 31.713570, 37.233959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810501, 32.274872, 36.974308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177242, 32.428947, 37.016289>,  <35.397285, 32.521393, 37.041477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177242, 32.428947, 37.016289>,  <34.810501, 32.274872, 36.974308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177242, 32.428947, 37.016289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047088, 0.365392, -0.929662,
		-0.396441, 0.847420, 0.353148,
		0.916852, 0.385185, 0.104953,
		35.452297, 32.544502, 37.047775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774639, 33.047199, 36.692799>,  <34.810501, 32.274872, 36.974308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774639, 33.047199, 36.692799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162971, 32.952381, 36.707169>,  <35.395973, 32.895489, 36.715790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162971, 32.952381, 36.707169>,  <34.774639, 33.047199, 36.692799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162971, 32.952381, 36.707169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144355, 0.458315, -0.876988,
		0.191425, 0.856595, 0.479167,
		0.970834, -0.237048, 0.035921,
		35.454220, 32.881268, 36.717945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102894, 33.589638, 36.418266>,  <34.774639, 33.047199, 36.692799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102894, 33.589638, 36.418266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388973, 33.310726, 36.399128>,  <35.560623, 33.143379, 36.387646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388973, 33.310726, 36.399128>,  <35.102894, 33.589638, 36.418266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388973, 33.310726, 36.399128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265863, 0.334726, -0.904033,
		0.646377, 0.633847, 0.424777,
		0.715202, -0.697279, -0.047842,
		35.603535, 33.101543, 36.384777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750160, 33.940022, 36.406433>,  <35.102894, 33.589638, 36.418266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750160, 33.940022, 36.406433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786293, 33.574463, 36.248123>,  <35.807972, 33.355129, 36.153137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786293, 33.574463, 36.248123>,  <35.750160, 33.940022, 36.406433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786293, 33.574463, 36.248123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323429, 0.402784, -0.856247,
		0.941931, -0.050657, 0.331965,
		0.090335, -0.913892, -0.395778,
		35.813393, 33.300297, 36.129391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344368, 33.899590, 36.069275>,  <35.750160, 33.940022, 36.406433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344368, 33.899590, 36.069275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143341, 33.604252, 35.889374>,  <36.022724, 33.427048, 35.781433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143341, 33.604252, 35.889374>,  <36.344368, 33.899590, 36.069275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143341, 33.604252, 35.889374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261053, 0.366339, -0.893111,
		0.824185, -0.566256, 0.008638,
		-0.502565, -0.738343, -0.449754,
		35.992573, 33.382748, 35.754448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863022, 33.497272, 35.649609>,  <36.344368, 33.899590, 36.069275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863022, 33.497272, 35.649609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486050, 33.474174, 35.517853>,  <36.259869, 33.460316, 35.438801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486050, 33.474174, 35.517853>,  <36.863022, 33.497272, 35.649609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486050, 33.474174, 35.517853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278335, 0.410532, -0.868328,
		0.185363, -0.910016, -0.370825,
		-0.942428, -0.057742, -0.329386,
		36.203320, 33.456852, 35.419037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412163, 33.410732, 36.231533>,  <36.863022, 33.497272, 35.649609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412163, 33.410732, 36.231533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804836, 33.481571, 36.259621>,  <38.040440, 33.524075, 36.276474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804836, 33.481571, 36.259621>,  <37.412163, 33.410732, 36.231533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804836, 33.481571, 36.259621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009355, -0.412955, 0.910703,
		0.190281, -0.893367, -0.407048,
		0.981685, 0.177098, 0.070220,
		38.099342, 33.534698, 36.280685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746185, 32.828072, 36.556454>,  <37.412163, 33.410732, 36.231533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746185, 32.828072, 36.556454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007000, 33.129025, 36.593933>,  <38.163486, 33.309597, 36.616421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007000, 33.129025, 36.593933>,  <37.746185, 32.828072, 36.556454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007000, 33.129025, 36.593933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180842, -0.274345, 0.944474,
		0.736308, -0.598883, -0.314943,
		0.652033, 0.752379, 0.093699,
		38.202610, 33.354736, 36.622044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396893, 32.528873, 36.764103>,  <37.746185, 32.828072, 36.556454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396893, 32.528873, 36.764103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346214, 32.898468, 36.908436>,  <38.315807, 33.120224, 36.995037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346214, 32.898468, 36.908436>,  <38.396893, 32.528873, 36.764103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346214, 32.898468, 36.908436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155401, -0.340784, 0.927209,
		0.979693, 0.173551, -0.100410,
		-0.126700, 0.923984, 0.360833,
		38.308205, 33.175663, 37.016685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993546, 32.713562, 37.104313>,  <38.396893, 32.528873, 36.764103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993546, 32.713562, 37.104313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714592, 32.939659, 37.280563>,  <38.547218, 33.075317, 37.386314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714592, 32.939659, 37.280563>,  <38.993546, 32.713562, 37.104313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714592, 32.939659, 37.280563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316254, -0.309004, 0.896939,
		0.643142, 0.764865, 0.036735,
		-0.697389, 0.565242, 0.440625,
		38.505375, 33.109230, 37.412750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335548, 32.850319, 37.656300>,  <38.993546, 32.713562, 37.104313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335548, 32.850319, 37.656300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968281, 32.982765, 37.743320>,  <38.747921, 33.062233, 37.795532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968281, 32.982765, 37.743320>,  <39.335548, 32.850319, 37.656300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968281, 32.982765, 37.743320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162651, -0.185686, 0.969054,
		0.361265, 0.925140, 0.116635,
		-0.918168, 0.331114, 0.217556,
		38.692829, 33.082100, 37.808586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432236, 33.416115, 38.045731>,  <39.335548, 32.850319, 37.656300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432236, 33.416115, 38.045731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082268, 33.251068, 38.147125>,  <38.872288, 33.152039, 38.207962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082268, 33.251068, 38.147125>,  <39.432236, 33.416115, 38.045731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082268, 33.251068, 38.147125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342356, -0.156814, 0.926392,
		-0.342494, 0.897306, 0.278462,
		-0.874923, -0.412616, 0.253490,
		38.819790, 33.127285, 38.223171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184906, 33.767036, 38.560829>,  <39.432236, 33.416115, 38.045731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184906, 33.767036, 38.560829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011379, 33.408829, 38.600536>,  <38.907261, 33.193905, 38.624359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011379, 33.408829, 38.600536>,  <39.184906, 33.767036, 38.560829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011379, 33.408829, 38.600536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418550, -0.102731, 0.902365,
		-0.797883, 0.433012, 0.419384,
		-0.433819, -0.895515, 0.099269,
		38.881233, 33.140175, 38.630318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248386, 33.613403, 39.279926>,  <39.184906, 33.767036, 38.560829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248386, 33.613403, 39.279926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086796, 33.278713, 39.132038>,  <38.989841, 33.077900, 39.043304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086796, 33.278713, 39.132038>,  <39.248386, 33.613403, 39.279926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086796, 33.278713, 39.132038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136767, -0.454870, 0.879993,
		-0.904486, 0.304934, 0.298194,
		-0.403980, -0.836725, -0.369718,
		38.965603, 33.027695, 39.021122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744785, 33.263874, 39.809929>,  <39.248386, 33.613403, 39.279926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744785, 33.263874, 39.809929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839546, 32.949451, 39.581543>,  <38.896404, 32.760799, 39.444511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839546, 32.949451, 39.581543>,  <38.744785, 33.263874, 39.809929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839546, 32.949451, 39.581543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022580, -0.591988, 0.805631,
		-0.971270, -0.177966, -0.157995,
		0.236906, -0.786053, -0.570961,
		38.910618, 32.713634, 39.410255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367348, 32.696888, 40.111511>,  <38.744785, 33.263874, 39.809929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367348, 32.696888, 40.111511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635441, 32.483723, 39.904903>,  <38.796295, 32.355824, 39.780937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635441, 32.483723, 39.904903>,  <38.367348, 32.696888, 40.111511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635441, 32.483723, 39.904903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126866, -0.603465, 0.787233,
		-0.731232, -0.593154, -0.336850,
		0.670228, -0.532915, -0.516524,
		38.836510, 32.323849, 39.749947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193604, 31.983017, 40.131374>,  <38.367348, 32.696888, 40.111511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193604, 31.983017, 40.131374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578949, 32.005444, 40.026470>,  <38.810158, 32.018898, 39.963528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578949, 32.005444, 40.026470>,  <38.193604, 31.983017, 40.131374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578949, 32.005444, 40.026470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195195, -0.817180, 0.542325,
		-0.183906, -0.573649, -0.798189,
		0.963368, 0.056065, -0.262257,
		38.867958, 32.022263, 39.947792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348507, 31.312977, 39.914474>,  <38.193604, 31.983017, 40.131374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348507, 31.312977, 39.914474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699043, 31.492207, 39.985203>,  <38.909363, 31.599745, 40.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699043, 31.492207, 39.985203>,  <38.348507, 31.312977, 39.914474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699043, 31.492207, 39.985203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281986, -0.774794, 0.565842,
		0.390535, -0.446008, -0.805331,
		0.876336, 0.448074, 0.176816,
		38.961945, 31.626629, 40.038246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967262, 30.800827, 39.667076>,  <38.348507, 31.312977, 39.914474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967262, 30.800827, 39.667076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103519, 31.058846, 39.940681>,  <39.185276, 31.213657, 40.104843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103519, 31.058846, 39.940681>,  <38.967262, 30.800827, 39.667076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103519, 31.058846, 39.940681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017705, -0.731799, 0.681291,
		0.940025, -0.219969, -0.260706,
		0.340646, 0.645046, 0.684014,
		39.205715, 31.252359, 40.145885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457714, 30.515280, 40.099644>,  <38.967262, 30.800827, 39.667076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457714, 30.515280, 40.099644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341198, 30.806765, 40.347553>,  <39.271286, 30.981655, 40.496300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341198, 30.806765, 40.347553>,  <39.457714, 30.515280, 40.099644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341198, 30.806765, 40.347553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123187, -0.671054, 0.731103,
		0.948669, 0.136617, 0.285242,
		-0.291294, 0.728713, 0.619778,
		39.253811, 31.025379, 40.533485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878849, 30.369574, 40.738964>,  <39.457714, 30.515280, 40.099644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878849, 30.369574, 40.738964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548405, 30.569586, 40.842896>,  <39.350140, 30.689594, 40.905254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548405, 30.569586, 40.842896>,  <39.878849, 30.369574, 40.738964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548405, 30.569586, 40.842896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150429, -0.640042, 0.753470,
		0.543058, 0.583365, 0.603965,
		-0.826111, 0.500032, 0.259825,
		39.300571, 30.719595, 40.920841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875492, 30.475567, 41.471214>,  <39.878849, 30.369574, 40.738964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875492, 30.475567, 41.471214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491257, 30.529234, 41.373825>,  <39.260715, 30.561434, 41.315392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491257, 30.529234, 41.373825>,  <39.875492, 30.475567, 41.471214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491257, 30.529234, 41.373825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277659, -0.505766, 0.816766,
		-0.013554, 0.852174, 0.523084,
		-0.960584, 0.134168, -0.243469,
		39.203083, 30.569485, 41.300785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658100, 30.527754, 42.150738>,  <39.875492, 30.475567, 41.471214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658100, 30.527754, 42.150738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337894, 30.476126, 41.916637>,  <39.145771, 30.445148, 41.776176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337894, 30.476126, 41.916637>,  <39.658100, 30.527754, 42.150738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337894, 30.476126, 41.916637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433770, -0.549064, 0.714403,
		-0.413550, 0.825754, 0.383545,
		-0.800512, -0.129071, -0.585253,
		39.097740, 30.437405, 41.741062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170116, 30.711166, 42.495739>,  <39.658100, 30.527754, 42.150738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170116, 30.711166, 42.495739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003189, 30.469101, 42.224556>,  <38.903034, 30.323862, 42.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003189, 30.469101, 42.224556>,  <39.170116, 30.711166, 42.495739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003189, 30.469101, 42.224556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422651, -0.531182, 0.734311,
		-0.804496, 0.592979, -0.034101,
		-0.417317, -0.605163, -0.677956,
		38.877995, 30.287552, 42.021168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377846, 30.752970, 42.668526>,  <39.170116, 30.711166, 42.495739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377846, 30.752970, 42.668526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484207, 30.429157, 42.459164>,  <38.548023, 30.234871, 42.333546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484207, 30.429157, 42.459164>,  <38.377846, 30.752970, 42.668526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484207, 30.429157, 42.459164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412429, -0.586287, 0.697259,
		-0.871319, 0.030463, -0.489771,
		0.265905, -0.809530, -0.523407,
		38.563980, 30.186298, 42.302143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692448, 30.313908, 42.705666>,  <38.377846, 30.752970, 42.668526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692448, 30.313908, 42.705666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023605, 30.108274, 42.615944>,  <38.222298, 29.984896, 42.562111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023605, 30.108274, 42.615944>,  <37.692448, 30.313908, 42.705666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023605, 30.108274, 42.615944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201142, -0.645437, 0.736853,
		-0.523579, -0.564918, -0.637756,
		0.827893, -0.514081, -0.224308,
		38.271973, 29.954050, 42.548653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493198, 29.629606, 42.742752>,  <37.692448, 30.313908, 42.705666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493198, 29.629606, 42.742752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892731, 29.622404, 42.760693>,  <38.132450, 29.618084, 42.771458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892731, 29.622404, 42.760693>,  <37.493198, 29.629606, 42.742752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892731, 29.622404, 42.760693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046183, -0.628996, 0.776036,
		0.014240, -0.777200, -0.629092,
		0.998832, -0.018003, 0.044850,
		38.192379, 29.617002, 42.774147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692036, 28.914085, 42.852859>,  <37.493198, 29.629606, 42.742752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692036, 28.914085, 42.852859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013420, 29.113951, 42.982342>,  <38.206249, 29.233870, 43.060032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013420, 29.113951, 42.982342>,  <37.692036, 28.914085, 42.852859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013420, 29.113951, 42.982342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035817, -0.583300, 0.811467,
		0.594280, -0.640387, -0.486555,
		0.803460, 0.499665, 0.323707,
		38.254459, 29.263851, 43.079453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093681, 28.375010, 43.068447>,  <37.692036, 28.914085, 42.852859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093681, 28.375010, 43.068447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198032, 28.718845, 43.244194>,  <38.260643, 28.925148, 43.349644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198032, 28.718845, 43.244194>,  <38.093681, 28.375010, 43.068447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198032, 28.718845, 43.244194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202679, -0.396218, 0.895507,
		0.943856, -0.322668, 0.070858,
		0.260876, 0.859591, 0.439371,
		38.276295, 28.976723, 43.376007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455719, 28.196838, 43.601917>,  <38.093681, 28.375010, 43.068447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455719, 28.196838, 43.601917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337101, 28.568756, 43.689137>,  <38.265930, 28.791906, 43.741467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337101, 28.568756, 43.689137>,  <38.455719, 28.196838, 43.601917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337101, 28.568756, 43.689137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260459, -0.298400, 0.918215,
		0.918817, 0.215496, 0.330661,
		-0.296541, 0.929795, 0.218047,
		38.248138, 28.847694, 43.754551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852715, 28.358900, 44.115364>,  <38.455719, 28.196838, 43.601917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852715, 28.358900, 44.115364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512081, 28.567657, 44.135094>,  <38.307701, 28.692913, 44.146931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512081, 28.567657, 44.135094>,  <38.852715, 28.358900, 44.115364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512081, 28.567657, 44.135094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136862, -0.312161, 0.940119,
		0.506039, 0.793839, 0.337258,
		-0.851583, 0.521895, 0.049320,
		38.256607, 28.724226, 44.149891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887581, 28.480791, 44.815269>,  <38.852715, 28.358900, 44.115364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887581, 28.480791, 44.815269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512024, 28.578663, 44.718433>,  <38.286690, 28.637386, 44.660332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512024, 28.578663, 44.718433>,  <38.887581, 28.480791, 44.815269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512024, 28.578663, 44.718433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257680, -0.033364, 0.965654,
		0.228198, 0.969030, 0.094374,
		-0.938897, 0.244679, -0.242086,
		38.230354, 28.652067, 44.645809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646717, 28.938431, 45.239513>,  <38.887581, 28.480791, 44.815269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646717, 28.938431, 45.239513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292839, 28.803137, 45.111191>,  <38.080513, 28.721960, 45.034199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292839, 28.803137, 45.111191>,  <38.646717, 28.938431, 45.239513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292839, 28.803137, 45.111191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292769, -0.132408, 0.946971,
		-0.362775, 0.931701, 0.018116,
		-0.884692, -0.338234, -0.320807,
		38.027431, 28.701666, 45.014950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174332, 29.285666, 45.586815>,  <38.646717, 28.938431, 45.239513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174332, 29.285666, 45.586815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001831, 28.949850, 45.454636>,  <37.898331, 28.748362, 45.375328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001831, 28.949850, 45.454636>,  <38.174332, 29.285666, 45.586815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001831, 28.949850, 45.454636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367703, -0.170914, 0.914102,
		-0.823902, 0.515717, -0.234994,
		-0.431254, -0.839539, -0.330447,
		37.872456, 28.697989, 45.355503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520176, 29.297182, 45.846672>,  <38.174332, 29.285666, 45.586815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520176, 29.297182, 45.846672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579506, 28.913334, 45.751068>,  <37.615105, 28.683025, 45.693707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579506, 28.913334, 45.751068>,  <37.520176, 29.297182, 45.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579506, 28.913334, 45.751068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420677, -0.279955, 0.862934,
		-0.895002, -0.027449, -0.445216,
		0.148327, -0.959620, -0.239013,
		37.624004, 28.625448, 45.679363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911427, 29.001333, 46.006748>,  <37.520176, 29.297182, 45.846672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911427, 29.001333, 46.006748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170471, 28.696667, 45.998131>,  <37.325897, 28.513866, 45.992962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170471, 28.696667, 45.998131>,  <36.911427, 29.001333, 46.006748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170471, 28.696667, 45.998131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271959, -0.257458, 0.927229,
		-0.711784, -0.594626, -0.373875,
		0.647612, -0.761666, -0.021540,
		37.364754, 28.468166, 45.991669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515953, 28.298527, 46.150539>,  <36.911427, 29.001333, 46.006748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515953, 28.298527, 46.150539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899055, 28.253685, 46.256470>,  <37.128918, 28.226780, 46.320030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899055, 28.253685, 46.256470>,  <36.515953, 28.298527, 46.150539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899055, 28.253685, 46.256470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287579, -0.373159, 0.882072,
		-0.000058, -0.920970, -0.389634,
		0.957757, -0.112102, 0.264830,
		37.186382, 28.220055, 46.335918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601604, 27.545736, 46.375835>,  <36.515953, 28.298527, 46.150539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601604, 27.545736, 46.375835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926743, 27.735706, 46.510731>,  <37.121826, 27.849689, 46.591667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926743, 27.735706, 46.510731>,  <36.601604, 27.545736, 46.375835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926743, 27.735706, 46.510731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174236, -0.354216, 0.918789,
		0.555813, -0.805590, -0.205173,
		0.812843, 0.474927, 0.337240,
		37.170597, 27.878185, 46.611904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873489, 27.005011, 46.776814>,  <36.601604, 27.545736, 46.375835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873489, 27.005011, 46.776814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034122, 27.345270, 46.912537>,  <37.130501, 27.549425, 46.993969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034122, 27.345270, 46.912537>,  <36.873489, 27.005011, 46.776814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034122, 27.345270, 46.912537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151876, -0.303509, 0.940647,
		0.903142, -0.429279, 0.007309,
		0.401582, 0.850648, 0.339309,
		37.154598, 27.600464, 47.014328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155762, 26.777584, 47.369255>,  <36.873489, 27.005011, 46.776814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155762, 26.777584, 47.369255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153522, 27.175022, 47.414394>,  <37.152180, 27.413485, 47.441479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153522, 27.175022, 47.414394>,  <37.155762, 26.777584, 47.369255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153522, 27.175022, 47.414394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081756, -0.112923, 0.990234,
		0.996637, -0.003679, 0.081865,
		-0.005602, 0.993597, 0.112844,
		37.151840, 27.473101, 47.448246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655903, 26.887972, 47.862106>,  <37.155762, 26.777584, 47.369255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655903, 26.887972, 47.862106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412628, 27.205488, 47.861744>,  <37.266663, 27.395998, 47.861526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412628, 27.205488, 47.861744>,  <37.655903, 26.887972, 47.862106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412628, 27.205488, 47.861744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032140, -0.023488, 0.999207,
		0.793142, 0.607735, 0.039797,
		-0.608188, 0.793792, -0.000903,
		37.230171, 27.443626, 47.861473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941364, 27.340818, 48.282440>,  <37.655903, 26.887972, 47.862106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941364, 27.340818, 48.282440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549881, 27.422821, 48.278423>,  <37.314991, 27.472023, 48.276012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549881, 27.422821, 48.278423>,  <37.941364, 27.340818, 48.282440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549881, 27.422821, 48.278423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054861, -0.214157, 0.975257,
		0.197785, 0.955044, 0.220845,
		-0.978709, 0.205007, -0.010038,
		37.256268, 27.484324, 48.275414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812634, 27.697382, 48.880424>,  <37.941364, 27.340818, 48.282440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812634, 27.697382, 48.880424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483944, 27.510490, 48.749908>,  <37.286732, 27.398355, 48.671600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483944, 27.510490, 48.749908>,  <37.812634, 27.697382, 48.880424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483944, 27.510490, 48.749908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173241, -0.340655, 0.924089,
		-0.542916, 0.815873, 0.198981,
		-0.821724, -0.467231, -0.326290,
		37.237427, 27.370321, 48.652020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017044, 27.954596, 48.968132>,  <37.812634, 27.697382, 48.880424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017044, 27.954596, 48.968132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136147, 28.246288, 49.214565>,  <37.207607, 28.421305, 49.362427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136147, 28.246288, 49.214565>,  <37.017044, 27.954596, 48.968132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136147, 28.246288, 49.214565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678162, 0.292634, -0.674137,
		-0.671890, 0.618536, -0.407403,
		0.297758, 0.729231, 0.616086,
		37.225475, 28.465057, 49.399391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930889, 28.602770, 48.643173>,  <37.017044, 27.954596, 48.968132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930889, 28.602770, 48.643173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228157, 28.630419, 48.909382>,  <37.406517, 28.647009, 49.069107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228157, 28.630419, 48.909382>,  <36.930889, 28.602770, 48.643173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228157, 28.630419, 48.909382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545167, 0.514130, -0.662165,
		-0.387937, 0.854923, 0.344401,
		0.743167, 0.069123, 0.665526,
		37.451107, 28.651155, 49.109039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060146, 29.284815, 48.695988>,  <36.930889, 28.602770, 48.643173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060146, 29.284815, 48.695988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398327, 29.112009, 48.821579>,  <37.601234, 29.008326, 48.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398327, 29.112009, 48.821579>,  <37.060146, 29.284815, 48.695988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398327, 29.112009, 48.821579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533954, 0.672075, -0.513039,
		0.010625, 0.601396, 0.798880,
		0.845447, -0.432016, 0.313977,
		37.651962, 28.982405, 48.915771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510574, 29.927277, 48.773861>,  <37.060146, 29.284815, 48.695988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510574, 29.927277, 48.773861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746330, 29.604214, 48.780983>,  <37.887783, 29.410376, 48.785255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746330, 29.604214, 48.780983>,  <37.510574, 29.927277, 48.773861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746330, 29.604214, 48.780983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760588, 0.547339, -0.349178,
		0.272268, 0.219346, 0.936887,
		0.589386, -0.807655, 0.017809,
		37.923145, 29.361917, 48.786327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082081, 30.002270, 49.267624>,  <37.510574, 29.927277, 48.773861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082081, 30.002270, 49.267624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189808, 29.754589, 48.972584>,  <38.254444, 29.605980, 48.795559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189808, 29.754589, 48.972584>,  <38.082081, 30.002270, 49.267624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189808, 29.754589, 48.972584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808278, 0.561741, -0.176446,
		0.523597, -0.548667, 0.651775,
		0.269319, -0.619202, -0.737601,
		38.270603, 29.568829, 48.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830502, 30.226433, 49.079823>,  <38.082081, 30.002270, 49.267624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830502, 30.226433, 49.079823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779957, 29.966179, 48.780300>,  <38.749630, 29.810026, 48.600586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779957, 29.966179, 48.780300>,  <38.830502, 30.226433, 49.079823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779957, 29.966179, 48.780300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729278, 0.450771, -0.514741,
		0.672448, -0.611130, 0.417533,
		-0.126362, -0.650635, -0.748804,
		38.742050, 29.770988, 48.555660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454346, 30.231091, 48.729923>,  <38.830502, 30.226433, 49.079823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454346, 30.231091, 48.729923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227451, 30.023813, 48.473888>,  <39.091312, 29.899446, 48.320267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227451, 30.023813, 48.473888>,  <39.454346, 30.231091, 48.729923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227451, 30.023813, 48.473888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416593, 0.489910, -0.765793,
		0.710415, -0.701045, -0.062021,
		-0.567240, -0.518193, -0.640090,
		39.057278, 29.868355, 48.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010952, 29.848585, 48.307938>,  <39.454346, 30.231091, 48.729923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010952, 29.848585, 48.307938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656414, 29.924437, 48.138973>,  <39.443691, 29.969948, 48.037594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656414, 29.924437, 48.138973>,  <40.010952, 29.848585, 48.307938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656414, 29.924437, 48.138973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452266, 0.550041, -0.702075,
		0.099206, -0.813323, -0.573292,
		-0.886349, 0.189630, -0.422406,
		39.390511, 29.981325, 48.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220078, 29.829611, 47.546204>,  <40.010952, 29.848585, 48.307938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220078, 29.829611, 47.546204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863194, 30.009010, 47.567406>,  <39.649063, 30.116650, 47.580128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863194, 30.009010, 47.567406>,  <40.220078, 29.829611, 47.546204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863194, 30.009010, 47.567406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226281, 0.545520, -0.806972,
		-0.390841, -0.707995, -0.588206,
		-0.892211, 0.448498, 0.053006,
		39.595531, 30.143560, 47.583309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873901, 29.769590, 46.869083>,  <40.220078, 29.829611, 47.546204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873901, 29.769590, 46.869083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749527, 30.100182, 47.056808>,  <39.674904, 30.298536, 47.169445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749527, 30.100182, 47.056808>,  <39.873901, 29.769590, 46.869083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749527, 30.100182, 47.056808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119432, 0.523852, -0.843395,
		-0.942897, -0.206191, -0.261592,
		-0.310936, 0.826477, 0.469313,
		39.656246, 30.348125, 47.197601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454578, 29.997978, 46.402534>,  <39.873901, 29.769590, 46.869083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454578, 29.997978, 46.402534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539425, 30.311451, 46.636063>,  <39.590332, 30.499535, 46.776180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539425, 30.311451, 46.636063>,  <39.454578, 29.997978, 46.402534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539425, 30.311451, 46.636063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242934, 0.536376, -0.808260,
		-0.946567, 0.313275, -0.076610,
		0.212116, 0.783684, 0.583821,
		39.603058, 30.546556, 46.811211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163536, 30.599712, 46.122818>,  <39.454578, 29.997978, 46.402534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163536, 30.599712, 46.122818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458473, 30.745506, 46.350315>,  <39.635437, 30.832983, 46.486813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458473, 30.745506, 46.350315>,  <39.163536, 30.599712, 46.122818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458473, 30.745506, 46.350315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302086, 0.575152, -0.760227,
		-0.604205, 0.732360, 0.313981,
		0.737347, 0.364484, 0.568745,
		39.679676, 30.854851, 46.520939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120262, 31.242754, 45.851093>,  <39.163536, 30.599712, 46.122818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120262, 31.242754, 45.851093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464645, 31.223392, 46.053642>,  <39.671276, 31.211777, 46.175171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464645, 31.223392, 46.053642>,  <39.120262, 31.242754, 45.851093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464645, 31.223392, 46.053642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451316, 0.531913, -0.716507,
		-0.234665, 0.845414, 0.479799,
		0.860956, -0.048401, 0.506371,
		39.722931, 31.208872, 46.205555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293987, 31.970137, 46.005913>,  <39.120262, 31.242754, 45.851093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293987, 31.970137, 46.005913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635502, 31.763083, 46.028214>,  <39.840408, 31.638849, 46.041592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635502, 31.763083, 46.028214>,  <39.293987, 31.970137, 46.005913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635502, 31.763083, 46.028214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462129, 0.704174, -0.539050,
		0.239774, 0.485995, 0.840427,
		0.853783, -0.517636, 0.055750,
		39.891636, 31.607792, 46.044937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757244, 32.435001, 46.210632>,  <39.293987, 31.970137, 46.005913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757244, 32.435001, 46.210632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939232, 32.124031, 46.036911>,  <40.048424, 31.937450, 45.932678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939232, 32.124031, 46.036911>,  <39.757244, 32.435001, 46.210632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939232, 32.124031, 46.036911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447821, 0.621289, -0.643006,
		0.769711, 0.098062, 0.630816,
		0.454973, -0.777421, -0.434298,
		40.075726, 31.890804, 45.906620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469845, 32.657887, 46.090908>,  <39.757244, 32.435001, 46.210632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469845, 32.657887, 46.090908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394772, 32.342876, 45.856106>,  <40.349728, 32.153870, 45.715225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394772, 32.342876, 45.856106>,  <40.469845, 32.657887, 46.090908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394772, 32.342876, 45.856106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195836, 0.555625, -0.808040,
		0.962510, -0.266609, 0.049947,
		-0.187679, -0.787528, -0.587007,
		40.338467, 32.106617, 45.680004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025291, 32.665348, 45.496025>,  <40.469845, 32.657887, 46.090908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025291, 32.665348, 45.496025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743267, 32.410042, 45.372410>,  <40.574055, 32.256859, 45.298241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743267, 32.410042, 45.372410>,  <41.025291, 32.665348, 45.496025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743267, 32.410042, 45.372410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124907, 0.317201, -0.940097,
		0.698063, -0.701423, -0.143921,
		-0.705057, -0.638270, -0.309039,
		40.531750, 32.218559, 45.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215614, 32.344376, 44.911591>,  <41.025291, 32.665348, 45.496025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215614, 32.344376, 44.911591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823322, 32.275581, 44.874512>,  <40.587948, 32.234303, 44.852264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823322, 32.275581, 44.874512>,  <41.215614, 32.344376, 44.911591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823322, 32.275581, 44.874512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038427, 0.295380, -0.954607,
		0.191559, -0.939772, -0.283079,
		-0.980729, -0.171985, -0.092696,
		40.529102, 32.223984, 44.846703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100220, 31.834114, 44.341454>,  <41.215614, 32.344376, 44.911591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100220, 31.834114, 44.341454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761387, 32.043385, 44.378830>,  <40.558086, 32.168945, 44.401257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761387, 32.043385, 44.378830>,  <41.100220, 31.834114, 44.341454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761387, 32.043385, 44.378830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037475, 0.234189, -0.971469,
		-0.530133, -0.819416, -0.217984,
		-0.847086, 0.523177, 0.093444,
		40.507259, 32.200336, 44.406864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660992, 31.490057, 43.908245>,  <41.100220, 31.834114, 44.341454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660992, 31.490057, 43.908245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497559, 31.851597, 43.959023>,  <40.399498, 32.068520, 43.989491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497559, 31.851597, 43.959023>,  <40.660992, 31.490057, 43.908245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497559, 31.851597, 43.959023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032603, 0.124543, -0.991679,
		-0.912138, -0.409323, -0.021418,
		-0.408584, 0.903850, 0.126946,
		40.374985, 32.122753, 43.997105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283848, 31.512403, 43.415760>,  <40.660992, 31.490057, 43.908245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283848, 31.512403, 43.415760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282913, 31.901350, 43.509140>,  <40.282352, 32.134716, 43.565170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282913, 31.901350, 43.509140>,  <40.283848, 31.512403, 43.415760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282913, 31.901350, 43.509140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056672, 0.232949, -0.970836,
		-0.998390, -0.015500, 0.054561,
		-0.002338, 0.972365, 0.233452,
		40.282211, 32.193058, 43.579174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764137, 31.766205, 42.959396>,  <40.283848, 31.512403, 43.415760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764137, 31.766205, 42.959396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009365, 32.048580, 43.101265>,  <40.156502, 32.218006, 43.186386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009365, 32.048580, 43.101265>,  <39.764137, 31.766205, 42.959396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009365, 32.048580, 43.101265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058897, 0.406851, -0.911594,
		-0.787830, 0.579760, 0.207851,
		0.613070, 0.705939, 0.354676,
		40.193287, 32.260361, 43.207668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665745, 32.209770, 42.479240>,  <39.764137, 31.766205, 42.959396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665745, 32.209770, 42.479240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994949, 32.330708, 42.671593>,  <40.192471, 32.403271, 42.787003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994949, 32.330708, 42.671593>,  <39.665745, 32.209770, 42.479240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994949, 32.330708, 42.671593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196705, 0.642500, -0.740608,
		-0.532881, 0.704120, 0.469312,
		0.823010, 0.302340, 0.480880,
		40.241852, 32.421410, 42.815857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596256, 32.937691, 42.498043>,  <39.665745, 32.209770, 42.479240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596256, 32.937691, 42.498043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981873, 32.838432, 42.536079>,  <40.213242, 32.778877, 42.558899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981873, 32.838432, 42.536079>,  <39.596256, 32.937691, 42.498043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981873, 32.838432, 42.536079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237852, 0.646158, -0.725194,
		0.118512, 0.721736, 0.681947,
		0.964044, -0.248147, 0.095088,
		40.271088, 32.763988, 42.564606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839943, 33.535770, 42.200909>,  <39.596256, 32.937691, 42.498043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839943, 33.535770, 42.200909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154343, 33.288757, 42.212593>,  <40.342983, 33.140549, 42.219604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154343, 33.288757, 42.212593>,  <39.839943, 33.535770, 42.200909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154343, 33.288757, 42.212593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399730, 0.471608, -0.786004,
		0.471608, 0.629477, 0.617532,
		0.786004, -0.617532, 0.029207,
		40.390144, 33.103497, 42.221355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447033, 33.911221, 42.337292>,  <39.839943, 33.535770, 42.200909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447033, 33.911221, 42.337292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541641, 33.569302, 42.152519>,  <40.598408, 33.364151, 42.041656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541641, 33.569302, 42.152519>,  <40.447033, 33.911221, 42.337292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541641, 33.569302, 42.152519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249387, 0.512904, -0.821423,
		0.939075, 0.079087, 0.334489,
		0.236525, -0.854795, -0.461932,
		40.612598, 33.312862, 42.013939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179230, 33.909611, 41.973381>,  <40.447033, 33.911221, 42.337292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179230, 33.909611, 41.973381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996586, 33.605888, 41.787926>,  <40.887001, 33.423653, 41.676651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996586, 33.605888, 41.787926>,  <41.179230, 33.909611, 41.973381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996586, 33.605888, 41.787926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386718, 0.299937, -0.872059,
		0.801225, -0.577485, 0.156685,
		-0.456605, -0.759309, -0.463640,
		40.859604, 33.378098, 41.648834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615955, 33.733891, 41.416157>,  <41.179230, 33.909611, 41.973381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615955, 33.733891, 41.416157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275810, 33.550549, 41.312786>,  <41.071724, 33.440544, 41.250763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275810, 33.550549, 41.312786>,  <41.615955, 33.733891, 41.416157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275810, 33.550549, 41.312786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167384, 0.229983, -0.958692,
		0.498860, -0.858495, -0.118848,
		-0.850366, -0.458360, -0.258428,
		41.020702, 33.413040, 41.235256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792973, 33.128773, 40.980282>,  <41.615955, 33.733891, 41.416157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792973, 33.128773, 40.980282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420181, 33.245998, 40.894932>,  <41.196507, 33.316334, 40.843723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420181, 33.245998, 40.894932>,  <41.792973, 33.128773, 40.980282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420181, 33.245998, 40.894932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284080, 0.224794, -0.932076,
		-0.225190, -0.929292, -0.292757,
		-0.931981, 0.293060, -0.213372,
		41.140587, 33.333916, 40.830921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654457, 32.903179, 40.304234>,  <41.792973, 33.128773, 40.980282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654457, 32.903179, 40.304234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409157, 33.212997, 40.366211>,  <41.261974, 33.398888, 40.403397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409157, 33.212997, 40.366211>,  <41.654457, 32.903179, 40.304234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409157, 33.212997, 40.366211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243214, 0.371783, -0.895893,
		-0.751510, -0.511726, -0.416376,
		-0.613253, 0.774541, 0.154940,
		41.225182, 33.445358, 40.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318268, 32.863903, 39.718418>,  <41.654457, 32.903179, 40.304234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318268, 32.863903, 39.718418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261189, 33.233753, 39.859669>,  <41.226940, 33.455666, 39.944420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261189, 33.233753, 39.859669>,  <41.318268, 32.863903, 39.718418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261189, 33.233753, 39.859669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074508, 0.365805, -0.927704,
		-0.986958, -0.106073, -0.121093,
		-0.142701, 0.924627, 0.353131,
		41.218380, 33.511143, 39.965607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086113, 33.114872, 39.223125>,  <41.318268, 32.863903, 39.718418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086113, 33.114872, 39.223125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184067, 33.442219, 39.431087>,  <41.242840, 33.638626, 39.555866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184067, 33.442219, 39.431087>,  <41.086113, 33.114872, 39.223125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184067, 33.442219, 39.431087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144846, 0.499339, -0.854213,
		-0.958672, 0.284489, 0.003742,
		0.244883, 0.818368, 0.519910,
		41.257530, 33.687729, 39.587059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651295, 33.689411, 38.850632>,  <41.086113, 33.114872, 39.223125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651295, 33.689411, 38.850632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933029, 33.865665, 39.073257>,  <41.102070, 33.971416, 39.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933029, 33.865665, 39.073257>,  <40.651295, 33.689411, 38.850632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933029, 33.865665, 39.073257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157248, 0.667706, -0.727627,
		-0.692235, 0.600009, 0.400998,
		0.704332, 0.440633, 0.556560,
		41.144329, 33.997856, 39.240227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424625, 34.434624, 38.779358>,  <40.651295, 33.689411, 38.850632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424625, 34.434624, 38.779358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807125, 34.389225, 38.887218>,  <41.036625, 34.361984, 38.951935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807125, 34.389225, 38.887218>,  <40.424625, 34.434624, 38.779358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807125, 34.389225, 38.887218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289309, 0.503995, -0.813812,
		-0.043537, 0.856217, 0.514779,
		0.956245, -0.113499, 0.269653,
		41.093998, 34.355175, 38.968113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748447, 35.164555, 38.732944>,  <40.424625, 34.434624, 38.779358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748447, 35.164555, 38.732944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016090, 34.867329, 38.728027>,  <41.176678, 34.688995, 38.725079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016090, 34.867329, 38.728027>,  <40.748447, 35.164555, 38.732944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016090, 34.867329, 38.728027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526736, 0.485853, -0.697492,
		0.524252, 0.460224, 0.716487,
		0.669110, -0.743061, -0.012293,
		41.216824, 34.644409, 38.724339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330872, 35.492184, 38.730171>,  <40.748447, 35.164555, 38.732944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330872, 35.492184, 38.730171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426712, 35.133877, 38.580402>,  <41.484215, 34.918892, 38.490540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426712, 35.133877, 38.580402>,  <41.330872, 35.492184, 38.730171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426712, 35.133877, 38.580402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548779, 0.443093, -0.708879,
		0.800895, -0.035628, 0.597744,
		0.239600, -0.895767, -0.374423,
		41.498592, 34.865147, 38.468075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016716, 35.617012, 38.412300>,  <41.330872, 35.492184, 38.730171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016716, 35.617012, 38.412300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924675, 35.260971, 38.254936>,  <41.869450, 35.047348, 38.160519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924675, 35.260971, 38.254936>,  <42.016716, 35.617012, 38.412300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924675, 35.260971, 38.254936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499403, 0.238967, -0.832761,
		0.835254, -0.388091, 0.389533,
		-0.230102, -0.890101, -0.393412,
		41.855644, 34.993942, 38.136913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636658, 35.269062, 38.139542>,  <42.016716, 35.617012, 38.412300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636658, 35.269062, 38.139542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323166, 35.114136, 37.945328>,  <42.135071, 35.021179, 37.828800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323166, 35.114136, 37.945328>,  <42.636658, 35.269062, 38.139542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323166, 35.114136, 37.945328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366809, 0.342209, -0.865069,
		0.501212, -0.856083, -0.126129,
		-0.783733, -0.387318, -0.485539,
		42.088047, 34.997940, 37.799667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980957, 35.002865, 37.558548>,  <42.636658, 35.269062, 38.139542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980957, 35.002865, 37.558548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594997, 35.032906, 37.457882>,  <42.363422, 35.050930, 37.397484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594997, 35.032906, 37.457882>,  <42.980957, 35.002865, 37.558548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594997, 35.032906, 37.457882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257557, 0.458050, -0.850796,
		0.051377, -0.885748, -0.461314,
		-0.964896, 0.075103, -0.251664,
		42.305527, 35.055435, 37.382381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967121, 34.713333, 36.857498>,  <42.980957, 35.002865, 37.558548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967121, 34.713333, 36.857498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631100, 34.928833, 36.882999>,  <42.429489, 35.058132, 36.898300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631100, 34.928833, 36.882999>,  <42.967121, 34.713333, 36.857498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631100, 34.928833, 36.882999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140749, 0.329928, -0.933454,
		-0.523934, -0.775174, -0.352985,
		-0.840049, 0.538751, 0.063755,
		42.379086, 35.090458, 36.902126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637218, 34.730576, 36.199009>,  <42.967121, 34.713333, 36.857498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637218, 34.730576, 36.199009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490101, 35.058521, 36.374535>,  <42.401829, 35.255287, 36.479851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490101, 35.058521, 36.374535>,  <42.637218, 34.730576, 36.199009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490101, 35.058521, 36.374535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056899, 0.490843, -0.869388,
		-0.928163, -0.294791, -0.227180,
		-0.367797, 0.819860, 0.438810,
		42.379761, 35.304478, 36.506176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152832, 34.836933, 35.660416>,  <42.637218, 34.730576, 36.199009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152832, 34.836933, 35.660416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255901, 35.155064, 35.879894>,  <42.317741, 35.345940, 36.011581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255901, 35.155064, 35.879894>,  <42.152832, 34.836933, 35.660416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255901, 35.155064, 35.879894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136874, 0.532101, -0.835544,
		-0.956488, 0.290399, 0.028249,
		0.257673, 0.795322, 0.548696,
		42.333202, 35.393661, 36.044502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679768, 35.370926, 35.507702>,  <42.152832, 34.836933, 35.660416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679768, 35.370926, 35.507702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072227, 35.419743, 35.567627>,  <42.307705, 35.449032, 35.603584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072227, 35.419743, 35.567627>,  <41.679768, 35.370926, 35.507702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072227, 35.419743, 35.567627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098599, 0.350581, -0.931328,
		-0.166187, 0.928546, 0.331939,
		0.981152, 0.122046, 0.149816,
		42.366573, 35.456356, 35.612572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838017, 36.049328, 35.253403>,  <41.679768, 35.370926, 35.507702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838017, 36.049328, 35.253403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166916, 35.821835, 35.245003>,  <42.364258, 35.685337, 35.239964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166916, 35.821835, 35.245003>,  <41.838017, 36.049328, 35.253403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166916, 35.821835, 35.245003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177297, 0.291036, -0.940140,
		0.540804, 0.769309, 0.340141,
		0.822251, -0.568737, -0.020997,
		42.413589, 35.651215, 35.238705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435616, 36.426029, 34.898827>,  <41.838017, 36.049328, 35.253403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435616, 36.426029, 34.898827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427078, 36.034176, 34.818962>,  <42.421955, 35.799065, 34.771042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427078, 36.034176, 34.818962>,  <42.435616, 36.426029, 34.898827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427078, 36.034176, 34.818962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186621, 0.192292, -0.963429,
		0.982200, -0.057819, 0.178717,
		-0.021339, -0.979633, -0.199660,
		42.420677, 35.740288, 34.759064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097923, 36.065907, 34.557903>,  <42.435616, 36.426029, 34.898827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097923, 36.065907, 34.557903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711250, 35.974934, 34.510910>,  <42.479248, 35.920349, 34.482712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711250, 35.974934, 34.510910>,  <43.097923, 36.065907, 34.557903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711250, 35.974934, 34.510910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028874, 0.359159, -0.932829,
		0.254349, -0.905141, -0.340626,
		-0.966681, -0.227429, -0.117487,
		42.421246, 35.906704, 34.475662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954376, 35.593266, 33.981888>,  <43.097923, 36.065907, 34.557903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954376, 35.593266, 33.981888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625668, 35.820450, 34.000305>,  <42.428444, 35.956760, 34.011356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625668, 35.820450, 34.000305>,  <42.954376, 35.593266, 33.981888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625668, 35.820450, 34.000305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143545, 0.284527, -0.947860,
		-0.551445, -0.772313, -0.315343,
		-0.821769, 0.567958, 0.046039,
		42.379135, 35.990837, 34.014118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388107, 36.173492, 33.871693>,  <42.954376, 35.593266, 33.981888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388107, 36.173492, 33.871693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733162, 35.972702, 33.846771>,  <43.940193, 35.852226, 33.831818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733162, 35.972702, 33.846771>,  <43.388107, 36.173492, 33.871693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733162, 35.972702, 33.846771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123852, 0.329034, -0.936161,
		0.490434, 0.799847, 0.346006,
		0.862633, -0.501979, -0.062307,
		43.991951, 35.822109, 33.828079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908806, 36.600891, 33.550846>,  <43.388107, 36.173492, 33.871693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908806, 36.600891, 33.550846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035946, 36.228416, 33.479450>,  <44.112228, 36.004932, 33.436611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035946, 36.228416, 33.479450>,  <43.908806, 36.600891, 33.550846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035946, 36.228416, 33.479450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035236, 0.199727, -0.979218,
		0.947486, 0.304955, 0.096294,
		0.317850, -0.931188, -0.178493,
		44.131302, 35.949059, 33.425903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559097, 36.619949, 33.178036>,  <43.908806, 36.600891, 33.550846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559097, 36.619949, 33.178036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408844, 36.254601, 33.115238>,  <44.318691, 36.035389, 33.077560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408844, 36.254601, 33.115238>,  <44.559097, 36.619949, 33.178036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408844, 36.254601, 33.115238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088294, 0.133355, -0.987128,
		0.922554, -0.384656, 0.030554,
		-0.375630, -0.913376, -0.156990,
		44.296154, 35.980587, 33.068142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920437, 36.382141, 32.661121>,  <44.559097, 36.619949, 33.178036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920437, 36.382141, 32.661121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592159, 36.153732, 32.653164>,  <44.395191, 36.016685, 32.648392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592159, 36.153732, 32.653164>,  <44.920437, 36.382141, 32.661121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592159, 36.153732, 32.653164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104286, 0.183929, -0.977392,
		0.561770, -0.800065, -0.210499,
		-0.820694, -0.571022, -0.019890,
		44.345951, 35.982426, 32.647198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889942, 36.081562, 32.115654>,  <44.920437, 36.382141, 32.661121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889942, 36.081562, 32.115654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497417, 36.022057, 32.164478>,  <44.261902, 35.986351, 32.193771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497417, 36.022057, 32.164478>,  <44.889942, 36.081562, 32.115654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497417, 36.022057, 32.164478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144493, 0.150713, -0.977961,
		0.127077, -0.977322, -0.169390,
		-0.981312, -0.148752, 0.122064,
		44.203026, 35.977428, 32.201096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653912, 35.512177, 31.662369>,  <44.889942, 36.081562, 32.115654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653912, 35.512177, 31.662369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356647, 35.762707, 31.756544>,  <44.178288, 35.913025, 31.813049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356647, 35.762707, 31.756544>,  <44.653912, 35.512177, 31.662369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356647, 35.762707, 31.756544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151542, 0.185172, -0.970951,
		-0.651726, -0.757252, -0.042698,
		-0.743161, 0.626324, 0.235437,
		44.133698, 35.950603, 31.827175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286427, 35.419270, 31.174059>,  <44.653912, 35.512177, 31.662369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286427, 35.419270, 31.174059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131832, 35.758236, 31.319670>,  <44.039074, 35.961617, 31.407036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131832, 35.758236, 31.319670>,  <44.286427, 35.419270, 31.174059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131832, 35.758236, 31.319670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164728, 0.324923, -0.931284,
		-0.907466, -0.419892, 0.014015,
		-0.386485, 0.847417, 0.364025,
		44.015888, 36.012463, 31.428877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637375, 35.516399, 30.811274>,  <44.286427, 35.419270, 31.174059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637375, 35.516399, 30.811274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745537, 35.874985, 30.951693>,  <43.810436, 36.090137, 31.035944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745537, 35.874985, 30.951693>,  <43.637375, 35.516399, 30.811274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745537, 35.874985, 30.951693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151611, 0.399733, -0.904007,
		-0.950733, 0.191229, 0.244005,
		0.270409, 0.896463, 0.351046,
		43.826660, 36.143925, 31.057007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279137, 35.978836, 30.450977>,  <43.637375, 35.516399, 30.811274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279137, 35.978836, 30.450977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548725, 36.230579, 30.605724>,  <43.710480, 36.381626, 30.698572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548725, 36.230579, 30.605724>,  <43.279137, 35.978836, 30.450977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548725, 36.230579, 30.605724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005327, 0.527801, -0.849351,
		-0.738738, 0.570377, 0.359075,
		0.673971, 0.629361, 0.386869,
		43.750916, 36.419388, 30.721785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104805, 36.656864, 30.200815>,  <43.279137, 35.978836, 30.450977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104805, 36.656864, 30.200815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492706, 36.701153, 30.287830>,  <43.725445, 36.727726, 30.340040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492706, 36.701153, 30.287830>,  <43.104805, 36.656864, 30.200815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492706, 36.701153, 30.287830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115127, 0.578377, -0.807605,
		-0.215243, 0.808220, 0.548134,
		0.969751, 0.110726, 0.217540,
		43.783630, 36.734371, 30.353092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196499, 37.411377, 30.211245>,  <43.104805, 36.656864, 30.200815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196499, 37.411377, 30.211245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528000, 37.203815, 30.127428>,  <43.726898, 37.079277, 30.077139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528000, 37.203815, 30.127428>,  <43.196499, 37.411377, 30.211245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528000, 37.203815, 30.127428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076303, 0.475718, -0.876282,
		0.554392, 0.710230, 0.433846,
		0.828751, -0.518907, -0.209542,
		43.776627, 37.048141, 30.064566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573856, 37.896732, 29.852617>,  <43.196499, 37.411377, 30.211245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573856, 37.896732, 29.852617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743931, 37.545444, 29.765038>,  <43.845978, 37.334671, 29.712490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743931, 37.545444, 29.765038>,  <43.573856, 37.896732, 29.852617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743931, 37.545444, 29.765038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280490, 0.357849, -0.890657,
		0.860546, 0.317284, 0.398486,
		0.425189, -0.878223, -0.218950,
		43.871487, 37.281979, 29.699352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061565, 38.090084, 29.479017>,  <43.573856, 37.896732, 29.852617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061565, 38.090084, 29.479017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036991, 37.701500, 29.387371>,  <44.022247, 37.468349, 29.332384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036991, 37.701500, 29.387371>,  <44.061565, 38.090084, 29.479017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036991, 37.701500, 29.387371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256448, 0.206479, -0.944246,
		0.964603, -0.116769, 0.236443,
		-0.061438, -0.971458, -0.229116,
		44.018559, 37.410061, 29.318636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658455, 38.014599, 28.960423>,  <44.061565, 38.090084, 29.479017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658455, 38.014599, 28.960423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448711, 37.676617, 28.918261>,  <44.322865, 37.473827, 28.892963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448711, 37.676617, 28.918261>,  <44.658455, 38.014599, 28.960423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448711, 37.676617, 28.918261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310347, -0.074367, -0.947710,
		0.792930, -0.529648, 0.301223,
		-0.524354, -0.844951, -0.105407,
		44.291405, 37.423130, 28.886639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167038, 37.645378, 28.559090>,  <44.658455, 38.014599, 28.960423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167038, 37.645378, 28.559090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797153, 37.507271, 28.494968>,  <44.575222, 37.424408, 28.456495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797153, 37.507271, 28.494968>,  <45.167038, 37.645378, 28.559090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797153, 37.507271, 28.494968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185216, -0.040182, -0.981876,
		0.332569, -0.937644, 0.101106,
		-0.924713, -0.345268, -0.160303,
		44.519741, 37.403690, 28.446877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166416, 36.892418, 28.193380>,  <45.167038, 37.645378, 28.559090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166416, 36.892418, 28.193380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853821, 37.134632, 28.133242>,  <44.666264, 37.279961, 28.097158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853821, 37.134632, 28.133242>,  <45.166416, 36.892418, 28.193380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853821, 37.134632, 28.133242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216016, 0.036528, -0.975707,
		-0.585332, -0.794981, -0.159351,
		-0.781489, 0.605534, -0.150347,
		44.619373, 37.316292, 28.088137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032547, 36.778069, 27.528522>,  <45.166416, 36.892418, 28.193380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032547, 36.778069, 27.528522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794712, 37.097652, 27.564571>,  <44.652012, 37.289406, 27.586201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794712, 37.097652, 27.564571>,  <45.032547, 36.778069, 27.528522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794712, 37.097652, 27.564571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090528, 0.177901, -0.979875,
		-0.798919, -0.574462, -0.178106,
		-0.594587, 0.798965, 0.090124,
		44.616337, 37.337341, 27.591608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501953, 36.779797, 26.894947>,  <45.032547, 36.778069, 27.528522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501953, 36.779797, 26.894947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528301, 37.152504, 27.037754>,  <44.544109, 37.376129, 27.123438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528301, 37.152504, 27.037754>,  <44.501953, 36.779797, 26.894947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528301, 37.152504, 27.037754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099435, 0.362142, -0.926804,
		-0.992861, 0.025549, 0.116505,
		0.065870, 0.931773, 0.357017,
		44.548061, 37.432037, 27.144859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167267, 37.216675, 26.363886>,  <44.501953, 36.779797, 26.894947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167267, 37.216675, 26.363886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351639, 37.496513, 26.582283>,  <44.462261, 37.664417, 26.713322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351639, 37.496513, 26.582283>,  <44.167267, 37.216675, 26.363886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351639, 37.496513, 26.582283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165307, 0.536794, -0.827360,
		-0.871906, 0.471610, 0.131775,
		0.460927, 0.699597, 0.545995,
		44.489918, 37.706394, 26.746082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953766, 37.896492, 26.168226>,  <44.167267, 37.216675, 26.363886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953766, 37.896492, 26.168226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314190, 37.944302, 26.334982>,  <44.530445, 37.972988, 26.435036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314190, 37.944302, 26.334982>,  <43.953766, 37.896492, 26.168226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314190, 37.944302, 26.334982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368937, 0.294037, -0.881718,
		-0.227969, 0.948291, 0.220849,
		0.901064, 0.119525, 0.416891,
		44.584511, 37.980160, 26.460049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220791, 38.497059, 25.861780>,  <43.953766, 37.896492, 26.168226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220791, 38.497059, 25.861780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543232, 38.303242, 25.997675>,  <44.736694, 38.186951, 26.079212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543232, 38.303242, 25.997675>,  <44.220791, 38.497059, 25.861780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543232, 38.303242, 25.997675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476838, 0.191833, -0.857803,
		0.350473, 0.853472, 0.385687,
		0.806098, -0.484547, 0.339736,
		44.785061, 38.157879, 26.099596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895485, 38.990925, 25.879784>,  <44.220791, 38.497059, 25.861780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895485, 38.990925, 25.879784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011360, 38.609188, 25.850639>,  <45.080887, 38.380146, 25.833153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011360, 38.609188, 25.850639>,  <44.895485, 38.990925, 25.879784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011360, 38.609188, 25.850639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323231, 0.169198, -0.931071,
		0.900890, 0.246169, 0.357488,
		0.289687, -0.954344, -0.072859,
		45.098267, 38.322884, 25.828781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601002, 38.880493, 25.604618>,  <44.895485, 38.990925, 25.879784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601002, 38.880493, 25.604618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419613, 38.533844, 25.521353>,  <45.310780, 38.325855, 25.471394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419613, 38.533844, 25.521353>,  <45.601002, 38.880493, 25.604618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419613, 38.533844, 25.521353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350458, 0.041366, -0.935665,
		0.819479, -0.497247, 0.284957,
		-0.453468, -0.866623, -0.208162,
		45.283573, 38.273857, 25.458904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.111767, 38.397655, 25.243103>,  <45.601002, 38.880493, 25.604618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.111767, 38.397655, 25.243103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723652, 38.343674, 25.162785>,  <45.490784, 38.311283, 25.114594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723652, 38.343674, 25.162785>,  <46.111767, 38.397655, 25.243103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723652, 38.343674, 25.162785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195252, 0.053282, -0.979305,
		0.142865, -0.989418, -0.025348,
		-0.970292, -0.134959, -0.200798,
		45.432564, 38.303185, 25.102545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642216, 38.713669, 25.335564>,  <46.111767, 38.397655, 25.243103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642216, 38.713669, 25.335564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865047, 38.826748, 25.647909>,  <46.998745, 38.894596, 25.835316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865047, 38.826748, 25.647909>,  <46.642216, 38.713669, 25.335564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865047, 38.826748, 25.647909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829024, 0.134018, 0.542917,
		0.048832, -0.949801, 0.309021,
		0.557077, 0.282697, 0.780863,
		47.032169, 38.911556, 25.882168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858723, 37.990135, 24.994152>,  <46.642216, 38.713669, 25.335564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.858723, 37.990135, 24.994152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054359, 37.690445, 25.172792>,  <47.171741, 37.510632, 25.279976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054359, 37.690445, 25.172792>,  <46.858723, 37.990135, 24.994152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.054359, 37.690445, 25.172792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682593, 0.010022, -0.730730,
		0.543003, 0.662243, 0.516315,
		0.489096, -0.749222, 0.446600,
		47.201088, 37.465679, 25.306772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420776, 37.402214, 25.173594>,  <46.858723, 37.990135, 24.994152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420776, 37.402214, 25.173594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601883, 37.062553, 25.064821>,  <46.710548, 36.858757, 24.999557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601883, 37.062553, 25.064821>,  <46.420776, 37.402214, 25.173594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601883, 37.062553, 25.064821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847398, -0.504670, 0.164996,
		-0.277341, 0.155728, -0.948067,
		0.452767, -0.849151, -0.271929,
		46.737713, 36.807808, 24.983242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936916, 37.178890, 24.764303>,  <46.420776, 37.402214, 25.173594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936916, 37.178890, 24.764303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.137943, 36.865238, 24.909943>,  <46.258560, 36.677048, 24.997326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.137943, 36.865238, 24.909943>,  <45.936916, 37.178890, 24.764303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137943, 36.865238, 24.909943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863287, -0.477810, 0.162582,
		0.046485, -0.396029, -0.917060,
		0.502568, -0.784129, 0.364097,
		46.288715, 36.630001, 25.019173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679184, 36.426189, 24.630342>,  <45.936916, 37.178890, 24.764303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679184, 36.426189, 24.630342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713604, 36.087055, 24.421053>,  <45.734257, 35.883575, 24.295479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713604, 36.087055, 24.421053>,  <45.679184, 36.426189, 24.630342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713604, 36.087055, 24.421053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123378, -0.512063, 0.850041,
		-0.988622, -0.137700, 0.060542,
		0.086049, -0.847839, -0.523226,
		45.739418, 35.832703, 24.264086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137577, 35.851902, 24.666582>,  <45.679184, 36.426189, 24.630342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137577, 35.851902, 24.666582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515076, 35.737690, 24.599880>,  <45.741577, 35.669163, 24.559858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515076, 35.737690, 24.599880>,  <45.137577, 35.851902, 24.666582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515076, 35.737690, 24.599880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005018, -0.516621, 0.856199,
		-0.330620, -0.807202, -0.488994,
		0.943751, -0.285531, -0.166754,
		45.798203, 35.652031, 24.549854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306435, 35.094913, 24.746771>,  <45.137577, 35.851902, 24.666582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306435, 35.094913, 24.746771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645668, 35.269520, 24.866911>,  <45.849209, 35.374283, 24.938995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645668, 35.269520, 24.866911>,  <45.306435, 35.094913, 24.746771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645668, 35.269520, 24.866911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080736, -0.666685, 0.740954,
		0.523677, -0.604141, -0.600646,
		0.848083, 0.436514, 0.300352,
		45.900093, 35.400475, 24.957016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947441, 34.771351, 25.042662>,  <45.306435, 35.094913, 24.746771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947441, 34.771351, 25.042662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574112, 34.745121, 25.183867>,  <45.350117, 34.729382, 25.268589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574112, 34.745121, 25.183867>,  <45.947441, 34.771351, 25.042662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574112, 34.745121, 25.183867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355190, -0.024866, 0.934463,
		-0.052502, 0.997537, 0.046501,
		-0.933318, -0.065578, 0.353010,
		45.294117, 34.725449, 25.289770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905834, 35.300549, 25.546787>,  <45.947441, 34.771351, 25.042662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905834, 35.300549, 25.546787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630966, 35.029835, 25.652431>,  <45.466045, 34.867405, 25.715818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630966, 35.029835, 25.652431>,  <45.905834, 35.300549, 25.546787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630966, 35.029835, 25.652431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225911, 0.146453, 0.963076,
		-0.690478, 0.721464, 0.052255,
		-0.687172, -0.676788, 0.264109,
		45.424816, 34.826797, 25.731665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529922, 35.523685, 26.087881>,  <45.905834, 35.300549, 25.546787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529922, 35.523685, 26.087881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441795, 35.136482, 26.135910>,  <45.388920, 34.904160, 26.164726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441795, 35.136482, 26.135910>,  <45.529922, 35.523685, 26.087881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441795, 35.136482, 26.135910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091755, 0.101982, 0.990546,
		-0.971102, 0.229255, 0.066351,
		-0.220321, -0.968009, 0.120070,
		45.375698, 34.846081, 26.171930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173084, 35.498268, 26.616837>,  <45.529922, 35.523685, 26.087881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173084, 35.498268, 26.616837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264156, 35.108849, 26.609207>,  <45.318802, 34.875198, 26.604630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264156, 35.108849, 26.609207>,  <45.173084, 35.498268, 26.616837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264156, 35.108849, 26.609207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019904, -0.024239, 0.999508,
		-0.973532, -0.227192, -0.024897,
		0.227684, -0.973548, -0.019076,
		45.332462, 34.816784, 26.603485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678432, 35.180168, 27.171036>,  <45.173084, 35.498268, 26.616837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678432, 35.180168, 27.171036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970451, 34.915520, 27.102577>,  <45.145660, 34.756729, 27.061502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970451, 34.915520, 27.102577>,  <44.678432, 35.180168, 27.171036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970451, 34.915520, 27.102577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154870, -0.083753, 0.984378,
		-0.665620, -0.745146, 0.041322,
		0.730045, -0.661621, -0.171148,
		45.189465, 34.717033, 27.051233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649952, 34.674404, 27.721388>,  <44.678432, 35.180168, 27.171036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649952, 34.674404, 27.721388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017605, 34.616936, 27.574665>,  <45.238197, 34.582455, 27.486631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017605, 34.616936, 27.574665>,  <44.649952, 34.674404, 27.721388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017605, 34.616936, 27.574665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353167, -0.112016, 0.928830,
		-0.174533, -0.983266, -0.052219,
		0.919136, -0.143670, -0.366807,
		45.293346, 34.573837, 27.464622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883072, 34.042507, 27.950680>,  <44.649952, 34.674404, 27.721388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883072, 34.042507, 27.950680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217979, 34.254520, 27.896946>,  <45.418926, 34.381729, 27.864706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217979, 34.254520, 27.896946>,  <44.883072, 34.042507, 27.950680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217979, 34.254520, 27.896946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230999, -0.120202, 0.965501,
		0.495599, -0.839416, -0.223078,
		0.837271, 0.530032, -0.134332,
		45.469162, 34.413528, 27.856646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510254, 33.657280, 28.160492>,  <44.883072, 34.042507, 27.950680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510254, 33.657280, 28.160492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590103, 34.048473, 28.184805>,  <45.638012, 34.283192, 28.199392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590103, 34.048473, 28.184805>,  <45.510254, 33.657280, 28.160492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590103, 34.048473, 28.184805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311105, -0.122080, 0.942502,
		0.929174, -0.169233, -0.328626,
		0.199621, 0.977986, 0.060784,
		45.649990, 34.341869, 28.203039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053196, 33.635891, 28.710762>,  <45.510254, 33.657280, 28.160492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053196, 33.635891, 28.710762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962517, 34.024887, 28.689322>,  <45.908108, 34.258286, 28.676456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962517, 34.024887, 28.689322>,  <46.053196, 33.635891, 28.710762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962517, 34.024887, 28.689322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289014, 0.119725, 0.949809,
		0.930096, 0.199829, -0.308204,
		-0.226699, 0.972489, -0.053602,
		45.894508, 34.316635, 28.673241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682056, 33.941528, 29.099926>,  <46.053196, 33.635891, 28.710762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682056, 33.941528, 29.099926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372387, 34.194695, 29.096645>,  <46.186584, 34.346596, 29.094677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372387, 34.194695, 29.096645>,  <46.682056, 33.941528, 29.099926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372387, 34.194695, 29.096645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158372, 0.206226, 0.965603,
		0.612840, 0.746247, -0.259891,
		-0.774174, 0.632919, -0.008199,
		46.140133, 34.384571, 29.094185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.904564, 34.598396, 29.481274>,  <46.682056, 33.941528, 29.099926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.904564, 34.598396, 29.481274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504711, 34.588943, 29.486460>,  <46.264797, 34.583271, 29.489573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504711, 34.588943, 29.486460>,  <46.904564, 34.598396, 29.481274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504711, 34.588943, 29.486460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007118, 0.232557, 0.972557,
		-0.026001, 0.972296, -0.232304,
		-0.999637, -0.023634, 0.012967,
		46.204819, 34.581852, 29.490351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.784199, 35.098789, 29.823381>,  <46.904564, 34.598396, 29.481274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.784199, 35.098789, 29.823381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430958, 34.911850, 29.839970>,  <46.219013, 34.799686, 29.849922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430958, 34.911850, 29.839970>,  <46.784199, 35.098789, 29.823381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430958, 34.911850, 29.839970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054861, 0.190634, 0.980127,
		-0.465970, 0.863273, -0.193988,
		-0.883098, -0.467352, 0.041470,
		46.166027, 34.771645, 29.852411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339417, 35.575443, 30.232243>,  <46.784199, 35.098789, 29.823381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339417, 35.575443, 30.232243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204533, 35.198997, 30.241982>,  <46.123604, 34.973129, 30.247826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204533, 35.198997, 30.241982>,  <46.339417, 35.575443, 30.232243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204533, 35.198997, 30.241982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028504, 0.036059, 0.998943,
		-0.940999, 0.336156, -0.038985,
		-0.337206, -0.941116, 0.024349,
		46.103371, 34.916664, 30.249287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682583, 35.692848, 30.683083>,  <46.339417, 35.575443, 30.232243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682583, 35.692848, 30.683083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759102, 35.300449, 30.670132>,  <45.805016, 35.065010, 30.662361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759102, 35.300449, 30.670132>,  <45.682583, 35.692848, 30.683083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759102, 35.300449, 30.670132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161626, -0.064018, 0.984774,
		-0.968133, -0.183157, -0.170801,
		0.191302, -0.980997, -0.032376,
		45.816494, 35.006149, 30.660419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142982, 35.391411, 31.152731>,  <45.682583, 35.692848, 30.683083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142982, 35.391411, 31.152731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407932, 35.097279, 31.095400>,  <45.566902, 34.920799, 31.061001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407932, 35.097279, 31.095400>,  <45.142982, 35.391411, 31.152731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407932, 35.097279, 31.095400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017749, -0.175857, 0.984256,
		-0.748960, -0.654492, -0.103432,
		0.662377, -0.735332, -0.143327,
		45.606644, 34.876678, 31.052402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912548, 34.821423, 31.496597>,  <45.142982, 35.391411, 31.152731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912548, 34.821423, 31.496597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310654, 34.785835, 31.480906>,  <45.549515, 34.764484, 31.471491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310654, 34.785835, 31.480906>,  <44.912548, 34.821423, 31.496597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310654, 34.785835, 31.480906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027795, -0.126293, 0.991603,
		-0.093164, -0.987996, -0.123222,
		0.995263, -0.088957, -0.039228,
		45.609234, 34.759144, 31.469137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040359, 34.191174, 31.895105>,  <44.912548, 34.821423, 31.496597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040359, 34.191174, 31.895105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386559, 34.391106, 31.881977>,  <45.594280, 34.511066, 31.874100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386559, 34.391106, 31.881977>,  <45.040359, 34.191174, 31.895105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386559, 34.391106, 31.881977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095215, -0.099841, 0.990437,
		0.491775, -0.860349, -0.134004,
		0.865501, 0.499831, -0.032819,
		45.646210, 34.541054, 31.872131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406483, 33.880859, 32.418278>,  <45.040359, 34.191174, 31.895105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406483, 33.880859, 32.418278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614086, 34.210705, 32.328255>,  <45.738647, 34.408611, 32.274239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614086, 34.210705, 32.328255>,  <45.406483, 33.880859, 32.418278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614086, 34.210705, 32.328255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396136, 0.001275, 0.918191,
		0.757436, -0.565701, -0.325995,
		0.519006, 0.824609, -0.225061,
		45.769787, 34.458088, 32.260735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061146, 33.742584, 32.702911>,  <45.406483, 33.880859, 32.418278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061146, 33.742584, 32.702911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036846, 34.141083, 32.678226>,  <46.022266, 34.380180, 32.663414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036846, 34.141083, 32.678226>,  <46.061146, 33.742584, 32.702911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036846, 34.141083, 32.678226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469146, 0.083071, 0.879205,
		0.881028, 0.024462, -0.472430,
		-0.060752, 0.996243, -0.061712,
		46.018620, 34.439957, 32.659714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772190, 33.914978, 32.727131>,  <46.061146, 33.742584, 32.702911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772190, 33.914978, 32.727131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577946, 34.250290, 32.826305>,  <46.461399, 34.451477, 32.885811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577946, 34.250290, 32.826305>,  <46.772190, 33.914978, 32.727131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577946, 34.250290, 32.826305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590511, 0.105435, 0.800113,
		0.644574, 0.534954, -0.546212,
		-0.485614, 0.838276, 0.247936,
		46.432262, 34.501774, 32.900684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263454, 34.369381, 32.867882>,  <46.772190, 33.914978, 32.727131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263454, 34.369381, 32.867882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947868, 34.495125, 33.079056>,  <46.758518, 34.570572, 33.205761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947868, 34.495125, 33.079056>,  <47.263454, 34.369381, 32.867882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947868, 34.495125, 33.079056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591443, 0.155653, 0.791181,
		0.166541, 0.936456, -0.308730,
		-0.788961, 0.314361, 0.527938,
		46.711182, 34.589432, 33.237438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.428772, 34.996239, 33.050243>,  <47.263454, 34.369381, 32.867882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.428772, 34.996239, 33.050243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178188, 34.823193, 33.309593>,  <47.027840, 34.719364, 33.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178188, 34.823193, 33.309593>,  <47.428772, 34.996239, 33.050243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178188, 34.823193, 33.309593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684357, 0.092895, 0.723205,
		-0.373102, 0.896779, 0.237871,
		-0.626458, -0.432618, 0.648376,
		46.990250, 34.693409, 33.504105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344032, 35.542477, 33.523048>,  <47.428772, 34.996239, 33.050243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344032, 35.542477, 33.523048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297001, 35.174156, 33.671799>,  <47.268784, 34.953163, 33.761047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297001, 35.174156, 33.671799>,  <47.344032, 35.542477, 33.523048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.297001, 35.174156, 33.671799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692262, 0.192492, 0.695500,
		-0.712004, 0.339211, 0.614806,
		-0.117576, -0.920806, 0.371877,
		47.261726, 34.897915, 33.783363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299957, 35.670284, 34.256714>,  <47.344032, 35.542477, 33.523048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299957, 35.670284, 34.256714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421219, 35.293381, 34.199806>,  <47.493977, 35.067238, 34.165661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421219, 35.293381, 34.199806>,  <47.299957, 35.670284, 34.256714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421219, 35.293381, 34.199806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505887, 0.032617, 0.861983,
		-0.807573, -0.333286, 0.486565,
		0.303158, -0.942261, -0.142264,
		47.512165, 35.010704, 34.157127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403458, 35.526131, 34.997345>,  <47.299957, 35.670284, 34.256714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403458, 35.526131, 34.997345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620258, 35.265999, 34.784439>,  <47.750340, 35.109921, 34.656696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620258, 35.265999, 34.784439>,  <47.403458, 35.526131, 34.997345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.620258, 35.265999, 34.784439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655020, -0.069874, 0.752374,
		-0.526485, -0.756429, 0.388110,
		0.541998, -0.650333, -0.532264,
		47.782856, 35.070900, 34.624760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404373, 34.941799, 35.277641>,  <47.403458, 35.526131, 34.997345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404373, 34.941799, 35.277641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750538, 35.009853, 35.089123>,  <47.958237, 35.050686, 34.976013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750538, 35.009853, 35.089123>,  <47.404373, 34.941799, 35.277641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750538, 35.009853, 35.089123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475651, 0.016790, 0.879474,
		0.157547, -0.985277, -0.066397,
		0.865410, 0.170141, -0.471293,
		48.010162, 35.060894, 34.947735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.761860, 34.152527, 45.061638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421581, 33.969837, 44.957546>,  <35.217415, 33.860226, 44.895092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421581, 33.969837, 44.957546>,  <35.761860, 34.152527, 45.061638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421581, 33.969837, 44.957546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188930, 0.196325, -0.962165,
		0.490532, -0.867676, -0.080724,
		-0.850696, -0.456721, -0.260234,
		35.166374, 33.832821, 44.879475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791767, 33.831299, 44.397770>,  <35.761860, 34.152527, 45.061638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791767, 33.831299, 44.397770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394165, 33.867432, 44.422386>,  <35.155602, 33.889111, 44.437157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394165, 33.867432, 44.422386>,  <35.791767, 33.831299, 44.397770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394165, 33.867432, 44.422386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032119, 0.296745, -0.954417,
		-0.104472, -0.950675, -0.292066,
		-0.994009, 0.090329, 0.061536,
		35.095963, 33.894531, 44.440845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586395, 33.527283, 43.792698>,  <35.791767, 33.831299, 44.397770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586395, 33.527283, 43.792698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289196, 33.765190, 43.915462>,  <35.110874, 33.907936, 43.989120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289196, 33.765190, 43.915462>,  <35.586395, 33.527283, 43.792698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289196, 33.765190, 43.915462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202701, 0.237060, -0.950113,
		-0.637855, -0.768148, -0.055575,
		-0.743002, 0.594770, 0.306914,
		35.066296, 33.943623, 44.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150341, 33.388981, 43.276604>,  <35.586395, 33.527283, 43.792698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150341, 33.388981, 43.276604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004154, 33.715084, 43.456287>,  <34.916443, 33.910744, 43.564098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004154, 33.715084, 43.456287>,  <35.150341, 33.388981, 43.276604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004154, 33.715084, 43.456287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249347, 0.379213, -0.891080,
		-0.896804, -0.437673, 0.064690,
		-0.365470, 0.815254, 0.449212,
		34.894512, 33.959660, 43.591053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590050, 33.558548, 42.894909>,  <35.150341, 33.388981, 43.276604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590050, 33.558548, 42.894909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705345, 33.894333, 43.079178>,  <34.774521, 34.095806, 43.189739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705345, 33.894333, 43.079178>,  <34.590050, 33.558548, 42.894909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705345, 33.894333, 43.079178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050575, 0.493764, -0.868124,
		-0.956222, 0.226929, 0.184778,
		0.288239, 0.839464, 0.460670,
		34.791817, 34.146172, 43.217381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117126, 33.987431, 42.739014>,  <34.590050, 33.558548, 42.894909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117126, 33.987431, 42.739014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435627, 34.213970, 42.824085>,  <34.626728, 34.349895, 42.875130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435627, 34.213970, 42.824085>,  <34.117126, 33.987431, 42.739014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435627, 34.213970, 42.824085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060282, 0.424088, -0.903612,
		-0.601955, 0.706682, 0.371821,
		0.796252, 0.566348, 0.212682,
		34.674503, 34.383873, 42.887890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084534, 34.715549, 42.488281>,  <34.117126, 33.987431, 42.739014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084534, 34.715549, 42.488281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481907, 34.703106, 42.532307>,  <34.720333, 34.695641, 42.558723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481907, 34.703106, 42.532307>,  <34.084534, 34.715549, 42.488281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481907, 34.703106, 42.532307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114050, 0.342005, -0.932751,
		-0.008625, 0.939183, 0.343308,
		0.993438, -0.031109, 0.110063,
		34.779938, 34.693771, 42.565327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350208, 35.401714, 42.351521>,  <34.084534, 34.715549, 42.488281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350208, 35.401714, 42.351521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682781, 35.182022, 42.317875>,  <34.882324, 35.050209, 42.297688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682781, 35.182022, 42.317875>,  <34.350208, 35.401714, 42.351521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682781, 35.182022, 42.317875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159267, 0.380606, -0.910919,
		0.532315, 0.743968, 0.403920,
		0.831429, -0.549227, -0.084113,
		34.932209, 35.017254, 42.292641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041218, 35.848839, 42.109974>,  <34.350208, 35.401714, 42.351521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041218, 35.848839, 42.109974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153202, 35.480457, 42.001549>,  <35.220394, 35.259430, 41.936493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153202, 35.480457, 42.001549>,  <35.041218, 35.848839, 42.109974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153202, 35.480457, 42.001549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277103, 0.347855, -0.895662,
		0.919150, 0.175637, 0.352583,
		0.279960, -0.920950, -0.271061,
		35.237190, 35.204174, 41.920231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762821, 35.909370, 41.919098>,  <35.041218, 35.848839, 42.109974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762821, 35.909370, 41.919098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614338, 35.581608, 41.744389>,  <35.525246, 35.384949, 41.639561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614338, 35.581608, 41.744389>,  <35.762821, 35.909370, 41.919098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614338, 35.581608, 41.744389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483029, 0.231325, -0.844495,
		0.793023, -0.524462, 0.309927,
		-0.371212, -0.819407, -0.436776,
		35.502975, 35.335785, 41.613358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307594, 35.597042, 41.704685>,  <35.762821, 35.909370, 41.919098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307594, 35.597042, 41.704685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988827, 35.498966, 41.483849>,  <35.797565, 35.440121, 41.351349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988827, 35.498966, 41.483849>,  <36.307594, 35.597042, 41.704685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988827, 35.498966, 41.483849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458594, 0.349329, -0.817105,
		0.393209, -0.904351, -0.165942,
		-0.796918, -0.245193, -0.552089,
		35.749752, 35.425407, 41.318222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549622, 35.160702, 41.270615>,  <36.307594, 35.597042, 41.704685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549622, 35.160702, 41.270615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212601, 35.258430, 41.078606>,  <36.010387, 35.317066, 40.963402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212601, 35.258430, 41.078606>,  <36.549622, 35.160702, 41.270615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212601, 35.258430, 41.078606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525020, 0.173507, -0.833216,
		-0.120283, -0.954046, -0.274460,
		-0.842548, 0.244319, -0.480023,
		35.959835, 35.331726, 40.934597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467022, 34.761745, 40.662632>,  <36.549622, 35.160702, 41.270615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467022, 34.761745, 40.662632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.268124, 35.103985, 40.605083>,  <36.148785, 35.309330, 40.570553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.268124, 35.103985, 40.605083>,  <36.467022, 34.761745, 40.662632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268124, 35.103985, 40.605083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617168, 0.232264, -0.751769,
		-0.609795, -0.462609, -0.643540,
		-0.497246, 0.855597, -0.143875,
		36.118950, 35.360664, 40.561920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307510, 34.763885, 39.952965>,  <36.467022, 34.761745, 40.662632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307510, 34.763885, 39.952965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252777, 35.150364, 40.040367>,  <36.219936, 35.382252, 40.092808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252777, 35.150364, 40.040367>,  <36.307510, 34.763885, 39.952965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252777, 35.150364, 40.040367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497540, 0.257771, -0.828256,
		-0.856581, -0.004618, -0.515992,
		-0.136833, 0.966195, 0.218504,
		36.211727, 35.440224, 40.105919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217991, 35.006130, 39.339413>,  <36.307510, 34.763885, 39.952965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217991, 35.006130, 39.339413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266232, 35.335392, 39.561359>,  <36.295177, 35.532948, 39.694527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266232, 35.335392, 39.561359>,  <36.217991, 35.006130, 39.339413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266232, 35.335392, 39.561359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567639, 0.401365, -0.718813,
		-0.814396, 0.401657, -0.418846,
		0.120606, 0.823151, 0.554866,
		36.302414, 35.582336, 39.727818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163204, 35.524158, 38.844982>,  <36.217991, 35.006130, 39.339413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163204, 35.524158, 38.844982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374500, 35.691551, 39.140503>,  <36.501278, 35.791988, 39.317814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374500, 35.691551, 39.140503>,  <36.163204, 35.524158, 38.844982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374500, 35.691551, 39.140503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687612, 0.299637, -0.661368,
		-0.498144, 0.857373, -0.129474,
		0.528244, 0.418484, 0.738803,
		36.532974, 35.817097, 39.362144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202141, 36.242775, 38.670532>,  <36.163204, 35.524158, 38.844982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202141, 36.242775, 38.670532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519108, 36.185192, 38.907631>,  <36.709290, 36.150642, 39.049889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519108, 36.185192, 38.907631>,  <36.202141, 36.242775, 38.670532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519108, 36.185192, 38.907631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608798, 0.247008, -0.753891,
		-0.037882, 0.958260, 0.283377,
		0.792420, -0.143961, 0.592744,
		36.756832, 36.142002, 39.085453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673729, 36.745594, 38.473320>,  <36.202141, 36.242775, 38.670532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673729, 36.745594, 38.473320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907852, 36.480888, 38.660721>,  <37.048325, 36.322067, 38.773159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907852, 36.480888, 38.660721>,  <36.673729, 36.745594, 38.473320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907852, 36.480888, 38.660721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724070, 0.166572, -0.669310,
		0.364884, 0.730977, 0.576657,
		0.585305, -0.661760, 0.468499,
		37.083443, 36.282360, 38.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312080, 37.049412, 38.431553>,  <36.673729, 36.745594, 38.473320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312080, 37.049412, 38.431553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358616, 36.656345, 38.489292>,  <37.386536, 36.420506, 38.523933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358616, 36.656345, 38.489292>,  <37.312080, 37.049412, 38.431553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358616, 36.656345, 38.489292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814898, 0.011355, -0.579493,
		0.567808, 0.185044, 0.802093,
		0.116340, -0.982665, 0.144345,
		37.393517, 36.361546, 38.532597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006119, 37.007507, 38.438255>,  <37.312080, 37.049412, 38.431553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006119, 37.007507, 38.438255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885868, 36.630096, 38.382572>,  <37.813717, 36.403648, 38.349163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885868, 36.630096, 38.382572>,  <38.006119, 37.007507, 38.438255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885868, 36.630096, 38.382572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790396, -0.164789, -0.590016,
		0.533756, -0.287403, 0.795301,
		-0.300629, -0.943527, -0.139205,
		37.795681, 36.347038, 38.340809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575191, 36.671738, 38.422585>,  <38.006119, 37.007507, 38.438255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575191, 36.671738, 38.422585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335999, 36.414028, 38.231869>,  <38.192482, 36.259403, 38.117439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335999, 36.414028, 38.231869>,  <38.575191, 36.671738, 38.422585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335999, 36.414028, 38.231869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549565, 0.103434, -0.829024,
		0.583433, -0.757770, 0.292218,
		-0.597984, -0.644272, -0.476790,
		38.156605, 36.220745, 38.088833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005600, 36.207779, 38.100945>,  <38.575191, 36.671738, 38.422585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005600, 36.207779, 38.100945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671436, 36.165268, 37.885242>,  <38.470940, 36.139763, 37.755821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671436, 36.165268, 37.885242>,  <39.005600, 36.207779, 38.100945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671436, 36.165268, 37.885242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540889, 0.015316, -0.840954,
		0.097631, -0.994219, 0.044688,
		-0.835408, -0.106275, -0.539258,
		38.420815, 36.133385, 37.723465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109768, 35.445007, 38.170078>,  <39.005600, 36.207779, 38.100945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109768, 35.445007, 38.170078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253532, 35.598717, 38.510231>,  <39.339790, 35.690945, 38.714325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253532, 35.598717, 38.510231>,  <39.109768, 35.445007, 38.170078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253532, 35.598717, 38.510231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675394, -0.735951, 0.047113,
		0.643945, 0.557411, -0.524048,
		0.359413, 0.384277, 0.850384,
		39.361355, 35.714001, 38.765347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824352, 35.849293, 38.171822>,  <39.109768, 35.445007, 38.170078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824352, 35.849293, 38.171822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973068, 36.210045, 38.259808>,  <40.062298, 36.426495, 38.312599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973068, 36.210045, 38.259808>,  <39.824352, 35.849293, 38.171822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973068, 36.210045, 38.259808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019262, -0.244393, 0.969485,
		0.928118, -0.356206, -0.108234,
		0.371788, 0.901881, 0.219964,
		40.084606, 36.480610, 38.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341938, 35.766586, 38.639835>,  <39.824352, 35.849293, 38.171822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341938, 35.766586, 38.639835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230202, 36.148422, 38.681259>,  <40.163158, 36.377525, 38.706112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230202, 36.148422, 38.681259>,  <40.341938, 35.766586, 38.639835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230202, 36.148422, 38.681259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016513, -0.103057, 0.994538,
		0.960049, 0.279529, 0.013025,
		-0.279345, 0.954590, 0.103556,
		40.146397, 36.434799, 38.712326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531559, 35.684517, 39.368454>,  <40.341938, 35.766586, 38.639835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531559, 35.684517, 39.368454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387184, 36.054947, 39.324436>,  <40.300560, 36.277206, 39.298023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387184, 36.054947, 39.324436>,  <40.531559, 35.684517, 39.368454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387184, 36.054947, 39.324436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164491, 0.052935, 0.984957,
		0.917970, 0.373608, 0.133225,
		-0.360935, 0.926075, -0.110048,
		40.278904, 36.332771, 39.291420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905106, 36.215904, 39.848610>,  <40.531559, 35.684517, 39.368454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905106, 36.215904, 39.848610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528969, 36.316734, 39.757206>,  <40.303288, 36.377232, 39.702362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528969, 36.316734, 39.757206>,  <40.905106, 36.215904, 39.848610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528969, 36.316734, 39.757206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278433, -0.184147, 0.942637,
		0.195531, 0.950027, 0.243346,
		-0.940342, 0.252070, -0.228512,
		40.246868, 36.392357, 39.688652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685661, 36.792030, 40.337502>,  <40.905106, 36.215904, 39.848610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685661, 36.792030, 40.337502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364727, 36.606174, 40.187641>,  <40.172165, 36.494663, 40.097725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364727, 36.606174, 40.187641>,  <40.685661, 36.792030, 40.337502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364727, 36.606174, 40.187641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391498, -0.064126, 0.917942,
		-0.450535, 0.883176, -0.130454,
		-0.802339, -0.464637, -0.374653,
		40.124027, 36.466782, 40.075245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312511, 36.877254, 40.942722>,  <40.685661, 36.792030, 40.337502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312511, 36.877254, 40.942722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051838, 36.657486, 40.733555>,  <39.895435, 36.525623, 40.608055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051838, 36.657486, 40.733555>,  <40.312511, 36.877254, 40.942722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051838, 36.657486, 40.733555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439277, -0.288644, 0.850718,
		-0.618340, 0.784105, -0.053243,
		-0.651684, -0.549421, -0.522919,
		39.856335, 36.492661, 40.576679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582077, 37.078678, 41.162769>,  <40.312511, 36.877254, 40.942722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582077, 37.078678, 41.162769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600998, 36.703377, 41.025688>,  <39.612350, 36.478195, 40.943439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600998, 36.703377, 41.025688>,  <39.582077, 37.078678, 41.162769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600998, 36.703377, 41.025688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526521, -0.314974, 0.789663,
		-0.848845, 0.143083, -0.508910,
		0.047306, -0.938253, -0.342700,
		39.615189, 36.421902, 40.922878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908966, 36.803383, 41.324638>,  <39.582077, 37.078678, 41.162769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908966, 36.803383, 41.324638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132576, 36.475182, 41.276867>,  <39.266743, 36.278259, 41.248203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132576, 36.475182, 41.276867>,  <38.908966, 36.803383, 41.324638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132576, 36.475182, 41.276867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452180, -0.422424, 0.785551,
		-0.694998, -0.385139, -0.607162,
		0.559026, -0.820503, -0.119432,
		39.300285, 36.229031, 41.241039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430222, 36.281128, 41.370529>,  <38.908966, 36.803383, 41.324638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430222, 36.281128, 41.370529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789757, 36.129059, 41.457752>,  <39.005478, 36.037815, 41.510086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789757, 36.129059, 41.457752>,  <38.430222, 36.281128, 41.370529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789757, 36.129059, 41.457752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371949, -0.398527, 0.838349,
		-0.231817, -0.834651, -0.499619,
		0.898841, -0.380176, 0.218062,
		39.059410, 36.015007, 41.523170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304062, 35.594593, 41.494190>,  <38.430222, 36.281128, 41.370529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304062, 35.594593, 41.494190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666470, 35.652203, 41.653378>,  <38.883915, 35.686768, 41.748890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666470, 35.652203, 41.653378>,  <38.304062, 35.594593, 41.494190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666470, 35.652203, 41.653378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328684, -0.352950, 0.876010,
		0.266630, -0.924491, -0.272443,
		0.906022, 0.144023, 0.397972,
		38.938274, 35.695408, 41.772770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370232, 35.040203, 41.901218>,  <38.304062, 35.594593, 41.494190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370232, 35.040203, 41.901218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672646, 35.244789, 42.064594>,  <38.854095, 35.367538, 42.162621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672646, 35.244789, 42.064594>,  <38.370232, 35.040203, 41.901218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672646, 35.244789, 42.064594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247351, -0.354479, 0.901755,
		0.605996, -0.782783, -0.141487,
		0.756033, 0.511463, 0.408435,
		38.899456, 35.398228, 42.187126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500832, 34.502403, 42.373722>,  <38.370232, 35.040203, 41.901218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500832, 34.502403, 42.373722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649891, 34.860004, 42.473232>,  <38.739326, 35.074566, 42.532940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649891, 34.860004, 42.473232>,  <38.500832, 34.502403, 42.373722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649891, 34.860004, 42.473232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139625, -0.211020, 0.967458,
		0.917409, -0.395256, 0.046189,
		0.372647, 0.894004, 0.248780,
		38.761684, 35.128204, 42.547867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190578, 34.480362, 42.729919>,  <38.500832, 34.502403, 42.373722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190578, 34.480362, 42.729919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.976360, 34.797791, 42.845455>,  <38.847828, 34.988247, 42.914776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.976360, 34.797791, 42.845455>,  <39.190578, 34.480362, 42.729919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976360, 34.797791, 42.845455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032837, -0.361333, 0.931858,
		0.843868, 0.489568, 0.219569,
		-0.535545, 0.793575, 0.288842,
		38.815697, 35.035862, 42.932106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435307, 34.539711, 43.432240>,  <39.190578, 34.480362, 42.729919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435307, 34.539711, 43.432240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115211, 34.778526, 43.409733>,  <38.923157, 34.921818, 43.396229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115211, 34.778526, 43.409733>,  <39.435307, 34.539711, 43.432240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115211, 34.778526, 43.409733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255674, -0.254794, 0.932583,
		0.542453, 0.760672, 0.356543,
		-0.800235, 0.597041, -0.056270,
		38.875141, 34.957638, 43.392853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538727, 34.928059, 43.965195>,  <39.435307, 34.539711, 43.432240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538727, 34.928059, 43.965195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151539, 34.888165, 43.873032>,  <38.919228, 34.864227, 43.817734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151539, 34.888165, 43.873032>,  <39.538727, 34.928059, 43.965195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151539, 34.888165, 43.873032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194201, -0.284211, 0.938888,
		-0.159123, 0.953560, 0.255739,
		-0.967970, -0.099734, -0.230407,
		38.861149, 34.858246, 43.803909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166573, 35.164268, 44.536961>,  <39.538727, 34.928059, 43.965195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166573, 35.164268, 44.536961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906483, 34.951256, 44.320213>,  <38.750427, 34.823448, 44.190166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906483, 34.951256, 44.320213>,  <39.166573, 35.164268, 44.536961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906483, 34.951256, 44.320213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377273, -0.392744, 0.838700,
		-0.659446, 0.749776, 0.054464,
		-0.650227, -0.532530, -0.541864,
		38.711414, 34.791496, 44.157654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595337, 35.240242, 44.950012>,  <39.166573, 35.164268, 44.536961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595337, 35.240242, 44.950012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497765, 34.943451, 44.700222>,  <38.439220, 34.765377, 44.550346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497765, 34.943451, 44.700222>,  <38.595337, 35.240242, 44.950012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497765, 34.943451, 44.700222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382252, -0.518236, 0.765059,
		-0.891281, 0.425329, -0.157208,
		-0.243931, -0.741975, -0.624476,
		38.424583, 34.720860, 44.512878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.420078, 35.072647, 44.696312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689758, 34.782330, 44.641647>,  <37.851566, 34.608139, 44.608849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689758, 34.782330, 44.641647>,  <37.420078, 35.072647, 44.696312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689758, 34.782330, 44.641647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349679, -0.476686, 0.806533,
		-0.650524, -0.495975, -0.575176,
		0.674198, -0.725796, -0.136663,
		37.892017, 34.564590, 44.600647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987213, 34.462345, 44.815090>,  <37.420078, 35.072647, 44.696312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987213, 34.462345, 44.815090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354172, 34.304211, 44.833397>,  <37.574345, 34.209328, 44.844379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354172, 34.304211, 44.833397>,  <36.987213, 34.462345, 44.815090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354172, 34.304211, 44.833397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316068, -0.653869, 0.687428,
		-0.241845, -0.645106, -0.724810,
		0.917394, -0.395340, 0.045763,
		37.629391, 34.185608, 44.847126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887730, 33.664860, 44.858063>,  <36.987213, 34.462345, 44.815090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887730, 33.664860, 44.858063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251244, 33.718521, 45.016109>,  <37.469353, 33.750717, 45.110939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251244, 33.718521, 45.016109>,  <36.887730, 33.664860, 44.858063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251244, 33.718521, 45.016109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216381, -0.658135, 0.721136,
		0.356786, -0.740851, -0.569072,
		0.908781, 0.134155, 0.395119,
		37.523876, 33.758766, 45.134644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042831, 33.027817, 44.907951>,  <36.887730, 33.664860, 44.858063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042831, 33.027817, 44.907951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299519, 33.217876, 45.148758>,  <37.453533, 33.331913, 45.293243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299519, 33.217876, 45.148758>,  <37.042831, 33.027817, 44.907951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299519, 33.217876, 45.148758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185549, -0.665456, 0.723008,
		0.744154, -0.575673, -0.338873,
		0.641721, 0.475151, 0.602017,
		37.492035, 33.360420, 45.329365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387856, 32.493584, 45.303383>,  <37.042831, 33.027817, 44.907951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387856, 32.493584, 45.303383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433720, 32.833946, 45.508446>,  <37.461239, 33.038162, 45.631485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433720, 32.833946, 45.508446>,  <37.387856, 32.493584, 45.303383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433720, 32.833946, 45.508446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270787, -0.469748, 0.840245,
		0.955787, -0.235162, 0.176553,
		0.114658, 0.850903, 0.512658,
		37.468117, 33.089218, 45.662243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480057, 32.191433, 45.925320>,  <37.387856, 32.493584, 45.303383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480057, 32.191433, 45.925320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418690, 32.576393, 46.014980>,  <37.381870, 32.807369, 46.068779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418690, 32.576393, 46.014980>,  <37.480057, 32.191433, 45.925320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418690, 32.576393, 46.014980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241859, -0.256513, 0.935791,
		0.958106, 0.089354, 0.272119,
		-0.153418, 0.962402, 0.224155,
		37.372665, 32.865112, 46.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881516, 32.397995, 46.573814>,  <37.480057, 32.191433, 45.925320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881516, 32.397995, 46.573814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552860, 32.623577, 46.540668>,  <37.355667, 32.758926, 46.520779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552860, 32.623577, 46.540668>,  <37.881516, 32.397995, 46.573814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552860, 32.623577, 46.540668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307593, -0.316269, 0.897419,
		0.479898, 0.762841, 0.433327,
		-0.821635, 0.563958, -0.082868,
		37.306370, 32.792763, 46.515808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878151, 32.812595, 47.236958>,  <37.881516, 32.397995, 46.573814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878151, 32.812595, 47.236958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517921, 32.828777, 47.063831>,  <37.301785, 32.838486, 46.959953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517921, 32.828777, 47.063831>,  <37.878151, 32.812595, 47.236958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517921, 32.828777, 47.063831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432127, 0.024959, 0.901467,
		0.047272, 0.998869, -0.004995,
		-0.900573, 0.040456, -0.432818,
		37.247749, 32.840916, 46.933987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422977, 33.167953, 47.673794>,  <37.878151, 32.812595, 47.236958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422977, 33.167953, 47.673794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162464, 32.951496, 47.461006>,  <37.006157, 32.821621, 47.333332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162464, 32.951496, 47.461006>,  <37.422977, 33.167953, 47.673794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162464, 32.951496, 47.461006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470998, -0.261379, 0.842521,
		-0.594970, 0.799278, -0.084645,
		-0.651284, -0.541143, -0.531971,
		36.967079, 32.789154, 47.301414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835499, 33.323483, 47.984600>,  <37.422977, 33.167953, 47.673794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835499, 33.323483, 47.984600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833576, 32.967869, 47.801476>,  <36.832420, 32.754501, 47.691601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833576, 32.967869, 47.801476>,  <36.835499, 33.323483, 47.984600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833576, 32.967869, 47.801476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393240, -0.419252, 0.818285,
		-0.919423, 0.183966, -0.347588,
		-0.004809, -0.889036, -0.457813,
		36.832134, 32.701157, 47.664131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181690, 33.057167, 48.087620>,  <36.835499, 33.323483, 47.984600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181690, 33.057167, 48.087620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404354, 32.736778, 47.999462>,  <36.537952, 32.544544, 47.946568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404354, 32.736778, 47.999462>,  <36.181690, 33.057167, 48.087620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404354, 32.736778, 47.999462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433100, -0.506200, 0.745779,
		-0.708909, -0.319696, -0.628683,
		0.556662, -0.800972, -0.220389,
		36.571354, 32.496487, 47.933346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689350, 32.575943, 48.348404>,  <36.181690, 33.057167, 48.087620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689350, 32.575943, 48.348404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027782, 32.366470, 48.308613>,  <36.230843, 32.240788, 48.284737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027782, 32.366470, 48.308613>,  <35.689350, 32.575943, 48.348404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027782, 32.366470, 48.308613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337404, -0.670614, 0.660632,
		-0.412675, -0.525386, -0.744089,
		0.846084, -0.523685, -0.099479,
		36.281609, 32.209366, 48.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461578, 31.925365, 48.312756>,  <35.689350, 32.575943, 48.348404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461578, 31.925365, 48.312756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849857, 31.883282, 48.399178>,  <36.082825, 31.858030, 48.451031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849857, 31.883282, 48.399178>,  <35.461578, 31.925365, 48.312756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849857, 31.883282, 48.399178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229364, -0.673894, 0.702323,
		0.071708, -0.731298, -0.678278,
		0.970695, -0.105210, 0.216058,
		36.141068, 31.851719, 48.463993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632278, 31.209551, 48.279430>,  <35.461578, 31.925365, 48.312756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632278, 31.209551, 48.279430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902897, 31.373362, 48.524242>,  <36.065266, 31.471649, 48.671127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902897, 31.373362, 48.524242>,  <35.632278, 31.209551, 48.279430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902897, 31.373362, 48.524242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246504, -0.657214, 0.712255,
		0.693920, -0.632738, -0.343684,
		0.676544, 0.409528, 0.612025,
		36.105862, 31.496220, 48.707851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061905, 30.682541, 48.460148>,  <35.632278, 31.209551, 48.279430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061905, 30.682541, 48.460148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121742, 30.956036, 48.745842>,  <36.157646, 31.120132, 48.917259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121742, 30.956036, 48.745842>,  <36.061905, 30.682541, 48.460148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121742, 30.956036, 48.745842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064041, -0.714144, 0.697063,
		0.986671, -0.150018, -0.063046,
		0.149596, 0.683735, 0.714233,
		36.166622, 31.161156, 48.960114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386333, 30.316366, 48.888931>,  <36.061905, 30.682541, 48.460148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386333, 30.316366, 48.888931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289078, 30.632301, 49.114155>,  <36.230724, 30.821861, 49.249290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289078, 30.632301, 49.114155>,  <36.386333, 30.316366, 48.888931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289078, 30.632301, 49.114155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072214, -0.593611, 0.801505,
		0.967298, 0.154220, 0.201370,
		-0.243144, 0.789837, 0.563062,
		36.216133, 30.869253, 49.283073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854946, 30.338938, 49.423904>,  <36.386333, 30.316366, 48.888931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854946, 30.338938, 49.423904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535667, 30.529137, 49.571846>,  <36.344101, 30.643255, 49.660610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535667, 30.529137, 49.571846>,  <36.854946, 30.338938, 49.423904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535667, 30.529137, 49.571846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058368, -0.550028, 0.833104,
		0.599565, 0.686567, 0.411275,
		-0.798195, 0.475495, 0.369851,
		36.296207, 30.671785, 49.682800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978981, 30.636055, 50.069374>,  <36.854946, 30.338938, 49.423904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978981, 30.636055, 50.069374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579525, 30.616884, 50.077545>,  <36.339851, 30.605381, 50.082447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579525, 30.616884, 50.077545>,  <36.978981, 30.636055, 50.069374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579525, 30.616884, 50.077545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041984, -0.508043, 0.860308,
		-0.030851, 0.859997, 0.509365,
		-0.998642, -0.047927, 0.020432,
		36.279934, 30.602507, 50.083675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749828, 30.711432, 50.771992>,  <36.978981, 30.636055, 50.069374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749828, 30.711432, 50.771992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406269, 30.582994, 50.612396>,  <36.200134, 30.505932, 50.516640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406269, 30.582994, 50.612396>,  <36.749828, 30.711432, 50.771992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406269, 30.582994, 50.612396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252848, -0.411638, 0.875570,
		-0.445378, 0.852909, 0.272368,
		-0.858898, -0.321092, -0.398991,
		36.148598, 30.486668, 50.492699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087555, 30.868010, 51.211414>,  <36.749828, 30.711432, 50.771992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087555, 30.868010, 51.211414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978970, 30.570536, 50.967041>,  <35.913818, 30.392052, 50.820415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978970, 30.570536, 50.967041>,  <36.087555, 30.868010, 51.211414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978970, 30.570536, 50.967041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342686, -0.518485, 0.783415,
		-0.899373, 0.422030, -0.114098,
		-0.271467, -0.743683, -0.610935,
		35.897530, 30.347431, 50.783760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488510, 30.633991, 51.381184>,  <36.087555, 30.868010, 51.211414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488510, 30.633991, 51.381184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647926, 30.334917, 51.168716>,  <35.743576, 30.155474, 51.041237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647926, 30.334917, 51.168716>,  <35.488510, 30.633991, 51.381184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647926, 30.334917, 51.168716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287445, -0.651794, 0.701812,
		-0.870942, -0.127020, -0.474684,
		0.398541, -0.747683, -0.531164,
		35.767490, 30.110613, 51.009369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058781, 30.080372, 51.356979>,  <35.488510, 30.633991, 51.381184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058781, 30.080372, 51.356979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406601, 29.890047, 51.304092>,  <35.615292, 29.775852, 51.272362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406601, 29.890047, 51.304092>,  <35.058781, 30.080372, 51.356979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406601, 29.890047, 51.304092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226873, -0.622698, 0.748850,
		-0.438644, -0.621168, -0.649417,
		0.869552, -0.475813, -0.132216,
		35.667465, 29.747303, 51.264427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135159, 29.328552, 51.047283>,  <35.058781, 30.080372, 51.356979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135159, 29.328552, 51.047283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442875, 29.400566, 51.292488>,  <35.627502, 29.443773, 51.439610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442875, 29.400566, 51.292488>,  <35.135159, 29.328552, 51.047283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442875, 29.400566, 51.292488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289012, -0.757638, 0.585197,
		0.569798, -0.627353, -0.530809,
		0.769287, 0.180034, 0.613014,
		35.673660, 29.454576, 51.476391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611530, 29.038755, 51.494091>,  <35.135159, 29.328552, 51.047283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611530, 29.038755, 51.494091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670448, 28.800301, 51.809792>,  <34.705799, 28.657227, 51.999214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670448, 28.800301, 51.809792>,  <34.611530, 29.038755, 51.494091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670448, 28.800301, 51.809792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928775, 0.191035, 0.317620,
		-0.340121, -0.779823, -0.525541,
		0.147291, -0.596139, 0.789255,
		34.714634, 28.621460, 52.046570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888523, 29.219496, 51.400414>,  <34.611530, 29.038755, 51.494091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888523, 29.219496, 51.400414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514164, 29.181087, 51.264835>,  <33.289551, 29.158043, 51.183491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514164, 29.181087, 51.264835>,  <33.888523, 29.219496, 51.400414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514164, 29.181087, 51.264835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280567, 0.378670, -0.881981,
		0.213033, -0.920538, -0.327456,
		-0.935895, -0.096018, -0.338942,
		33.233395, 29.152283, 51.163151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865536, 28.921240, 50.644253>,  <33.888523, 29.219496, 51.400414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865536, 28.921240, 50.644253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530407, 29.135502, 50.686447>,  <33.329330, 29.264059, 50.711761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530407, 29.135502, 50.686447>,  <33.865536, 28.921240, 50.644253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530407, 29.135502, 50.686447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249053, 0.546938, -0.799269,
		-0.485826, -0.643375, -0.591644,
		-0.837822, 0.535656, 0.105482,
		33.279060, 29.296198, 50.718090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466957, 28.937040, 49.981510>,  <33.865536, 28.921240, 50.644253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466957, 28.937040, 49.981510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370232, 29.254322, 50.205063>,  <33.312195, 29.444691, 50.339195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370232, 29.254322, 50.205063>,  <33.466957, 28.937040, 49.981510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370232, 29.254322, 50.205063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011194, 0.573658, -0.819019,
		-0.970258, -0.204306, -0.129839,
		-0.241813, 0.793206, 0.558883,
		33.297688, 29.492285, 50.372726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050667, 29.205166, 49.589222>,  <33.466957, 28.937040, 49.981510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050667, 29.205166, 49.589222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112217, 29.512981, 49.837135>,  <33.149147, 29.697672, 49.985882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112217, 29.512981, 49.837135>,  <33.050667, 29.205166, 49.589222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112217, 29.512981, 49.837135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044306, 0.621248, -0.782360,
		-0.987097, 0.147842, 0.061497,
		0.153871, 0.769541, 0.619783,
		33.158379, 29.743843, 50.023071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567760, 29.735704, 49.470833>,  <33.050667, 29.205166, 49.589222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567760, 29.735704, 49.470833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880772, 29.904266, 49.654171>,  <33.068577, 30.005404, 49.764172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880772, 29.904266, 49.654171>,  <32.567760, 29.735704, 49.470833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880772, 29.904266, 49.654171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111444, 0.629461, -0.768999,
		-0.612566, 0.652839, 0.445605,
		0.782523, 0.421403, 0.458341,
		33.115528, 30.030687, 49.791672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440826, 30.513563, 49.389690>,  <32.567760, 29.735704, 49.470833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440826, 30.513563, 49.389690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.830696, 30.460199, 49.461472>,  <33.064617, 30.428181, 49.504539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.830696, 30.460199, 49.461472>,  <32.440826, 30.513563, 49.389690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830696, 30.460199, 49.461472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222138, 0.669648, -0.708680,
		-0.025627, 0.730598, 0.682326,
		0.974678, -0.133409, 0.179454,
		33.123100, 30.420177, 49.515308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761906, 31.150906, 49.379101>,  <32.440826, 30.513563, 49.389690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761906, 31.150906, 49.379101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090469, 30.923927, 49.356163>,  <33.287609, 30.787741, 49.342400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090469, 30.923927, 49.356163>,  <32.761906, 31.150906, 49.379101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090469, 30.923927, 49.356163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339086, 0.566735, -0.750887,
		0.458588, 0.597342, 0.657936,
		0.821412, -0.567444, -0.057347,
		33.336891, 30.753695, 49.338959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228218, 31.647911, 49.359924>,  <32.761906, 31.150906, 49.379101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228218, 31.647911, 49.359924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426060, 31.317247, 49.252590>,  <33.544765, 31.118849, 49.188190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426060, 31.317247, 49.252590>,  <33.228218, 31.647911, 49.359924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426060, 31.317247, 49.252590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377894, 0.482580, -0.790135,
		0.782663, 0.289404, 0.551076,
		0.494606, -0.826657, -0.268333,
		33.574440, 31.069250, 49.172089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025169, 31.733967, 49.319675>,  <33.228218, 31.647911, 49.359924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025169, 31.733967, 49.319675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919376, 31.452543, 49.055840>,  <33.855900, 31.283689, 48.897537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919376, 31.452543, 49.055840>,  <34.025169, 31.733967, 49.319675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919376, 31.452543, 49.055840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338637, 0.572636, -0.746601,
		0.902982, -0.420820, 0.086802,
		-0.264478, -0.703561, -0.659585,
		33.840034, 31.241474, 48.857964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557323, 31.721880, 48.778111>,  <34.025169, 31.733967, 49.319675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557323, 31.721880, 48.778111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302456, 31.490370, 48.574528>,  <34.149536, 31.351463, 48.452377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302456, 31.490370, 48.574528>,  <34.557323, 31.721880, 48.778111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302456, 31.490370, 48.574528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414785, 0.299067, -0.859368,
		0.649594, -0.758668, 0.049512,
		-0.637167, -0.578777, -0.508956,
		34.111305, 31.316736, 48.421841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935158, 31.447454, 48.248165>,  <34.557323, 31.721880, 48.778111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935158, 31.447454, 48.248165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554401, 31.430258, 48.126804>,  <34.325947, 31.419939, 48.053989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554401, 31.430258, 48.126804>,  <34.935158, 31.447454, 48.248165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554401, 31.430258, 48.126804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269219, 0.355590, -0.895029,
		0.146366, -0.933653, -0.326909,
		-0.951892, -0.042992, -0.303403,
		34.268833, 31.417360, 48.035782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934635, 31.170950, 47.572212>,  <34.935158, 31.447454, 48.248165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934635, 31.170950, 47.572212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587723, 31.369423, 47.588337>,  <34.379574, 31.488506, 47.598011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587723, 31.369423, 47.588337>,  <34.934635, 31.170950, 47.572212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587723, 31.369423, 47.588337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189165, 0.403377, -0.895267,
		-0.460475, -0.768824, -0.443702,
		-0.867283, 0.496181, 0.040310,
		34.327538, 31.518278, 47.600430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689987, 31.096027, 46.886898>,  <34.934635, 31.170950, 47.572212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689987, 31.096027, 46.886898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472157, 31.386625, 47.054535>,  <34.341457, 31.560984, 47.155117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472157, 31.386625, 47.054535>,  <34.689987, 31.096027, 46.886898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472157, 31.386625, 47.054535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030091, 0.516292, -0.855884,
		-0.838171, -0.453484, -0.303022,
		-0.544577, 0.726495, 0.419095,
		34.308784, 31.604574, 47.180264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109917, 31.311058, 46.467079>,  <34.689987, 31.096027, 46.886898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109917, 31.311058, 46.467079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188236, 31.632986, 46.691196>,  <34.235229, 31.826143, 46.825665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188236, 31.632986, 46.691196>,  <34.109917, 31.311058, 46.467079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188236, 31.632986, 46.691196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078220, 0.556713, -0.827014,
		-0.977519, 0.205757, 0.046052,
		0.195802, 0.804820, 0.560292,
		34.246975, 31.874432, 46.859283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761097, 32.012360, 46.176823>,  <34.109917, 31.311058, 46.467079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761097, 32.012360, 46.176823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065712, 32.110249, 46.416882>,  <34.248482, 32.168983, 46.560917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065712, 32.110249, 46.416882>,  <33.761097, 32.012360, 46.176823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065712, 32.110249, 46.416882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164473, 0.822688, -0.544180,
		-0.626906, 0.513121, 0.586256,
		0.761536, 0.244726, 0.600143,
		34.294174, 32.183666, 46.596924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635960, 32.674870, 46.099236>,  <33.761097, 32.012360, 46.176823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635960, 32.674870, 46.099236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000847, 32.628410, 46.256390>,  <34.219780, 32.600533, 46.350681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000847, 32.628410, 46.256390>,  <33.635960, 32.674870, 46.099236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000847, 32.628410, 46.256390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334203, 0.765663, -0.549608,
		-0.236983, 0.632669, 0.737271,
		0.912221, -0.116150, 0.392889,
		34.274513, 32.593567, 46.374256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819195, 33.271099, 46.343567>,  <33.635960, 32.674870, 46.099236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819195, 33.271099, 46.343567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162968, 33.073235, 46.291897>,  <34.369232, 32.954517, 46.260895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162968, 33.073235, 46.291897>,  <33.819195, 33.271099, 46.343567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162968, 33.073235, 46.291897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310380, 0.705609, -0.637009,
		0.406253, 0.507372, 0.759956,
		0.859432, -0.494662, -0.129177,
		34.420795, 32.924835, 46.253143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354282, 33.783066, 46.387455>,  <33.819195, 33.271099, 46.343567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354282, 33.783066, 46.387455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529205, 33.482487, 46.189835>,  <34.634159, 33.302139, 46.071262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529205, 33.482487, 46.189835>,  <34.354282, 33.783066, 46.387455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529205, 33.482487, 46.189835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199289, 0.616683, -0.761568,
		0.876955, 0.234577, 0.419433,
		0.437304, -0.751449, -0.494054,
		34.660397, 33.257053, 46.041618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823650, 34.117748, 46.065578>,  <34.354282, 33.783066, 46.387455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823650, 34.117748, 46.065578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803551, 33.784519, 45.845230>,  <34.791492, 33.584579, 45.713020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803551, 33.784519, 45.845230>,  <34.823650, 34.117748, 46.065578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803551, 33.784519, 45.845230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256213, 0.522357, -0.813325,
		0.965313, -0.182008, 0.187198,
		-0.050248, -0.833076, -0.550871,
		34.788475, 33.534595, 45.679970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324005, 34.373962, 45.582058>,  <34.823650, 34.117748, 46.065578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324005, 34.373962, 45.582058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143978, 34.053539, 45.424198>,  <35.035961, 33.861286, 45.329483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143978, 34.053539, 45.424198>,  <35.324005, 34.373962, 45.582058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143978, 34.053539, 45.424198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279757, 0.293215, -0.914199,
		0.848043, -0.521857, 0.092135,
		-0.450066, -0.801056, -0.394652,
		35.008957, 33.813221, 45.305801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.584682, 37.146332, 26.032269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.456589, 37.521847, 25.981470>,  <45.379734, 37.747154, 25.950991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.456589, 37.521847, 25.981470>,  <45.584682, 37.146332, 26.032269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456589, 37.521847, 25.981470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255743, 0.043410, 0.965770,
		0.912165, 0.341751, 0.226187,
		-0.320234, 0.938787, -0.126997,
		45.360519, 37.803482, 25.943371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776176, 37.515991, 26.626318>,  <45.584682, 37.146332, 26.032269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776176, 37.515991, 26.626318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461178, 37.693218, 26.454952>,  <45.272179, 37.799553, 26.352133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461178, 37.693218, 26.454952>,  <45.776176, 37.515991, 26.626318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461178, 37.693218, 26.454952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450522, 0.060512, 0.890712,
		0.420569, 0.894444, 0.151958,
		-0.787497, 0.443066, -0.428416,
		45.224930, 37.826138, 26.326427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679203, 38.150105, 27.055628>,  <45.776176, 37.515991, 26.626318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679203, 38.150105, 27.055628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340694, 38.085045, 26.852699>,  <45.137589, 38.046009, 26.730942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340694, 38.085045, 26.852699>,  <45.679203, 38.150105, 27.055628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340694, 38.085045, 26.852699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495880, -0.107641, 0.861694,
		-0.194765, 0.980794, 0.010437,
		-0.846268, -0.162653, -0.507321,
		45.086815, 38.036247, 26.700502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189583, 38.448734, 27.539927>,  <45.679203, 38.150105, 27.055628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189583, 38.448734, 27.539927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964142, 38.238750, 27.284815>,  <44.828876, 38.112759, 27.131748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964142, 38.238750, 27.284815>,  <45.189583, 38.448734, 27.539927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964142, 38.238750, 27.284815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543563, -0.345682, 0.764881,
		-0.622002, 0.777766, -0.090521,
		-0.563607, -0.524962, -0.637780,
		44.795059, 38.081261, 27.093481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521690, 38.614689, 27.572767>,  <45.189583, 38.448734, 27.539927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521690, 38.614689, 27.572767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518482, 38.241314, 27.429306>,  <44.516556, 38.017288, 27.343229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518482, 38.241314, 27.429306>,  <44.521690, 38.614689, 27.572767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518482, 38.241314, 27.429306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397334, -0.326159, 0.857756,
		-0.917639, 0.149384, -0.368270,
		-0.008020, -0.933437, -0.358652,
		44.516075, 37.961285, 27.321711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825642, 38.363834, 27.691950>,  <44.521690, 38.614689, 27.572767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825642, 38.363834, 27.691950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059895, 38.040100, 27.674021>,  <44.200447, 37.845860, 27.663263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059895, 38.040100, 27.674021>,  <43.825642, 38.363834, 27.691950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059895, 38.040100, 27.674021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451863, -0.371874, 0.810881,
		-0.672946, -0.454622, -0.583491,
		0.585630, -0.809338, -0.044824,
		44.235584, 37.797298, 27.660574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405857, 37.812462, 27.827093>,  <43.825642, 38.363834, 27.691950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405857, 37.812462, 27.827093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775536, 37.677284, 27.898262>,  <43.997341, 37.596180, 27.940964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775536, 37.677284, 27.898262>,  <43.405857, 37.812462, 27.827093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775536, 37.677284, 27.898262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282261, -0.290564, 0.914276,
		-0.257269, -0.895193, -0.363925,
		0.924198, -0.337937, 0.177925,
		44.052795, 37.575901, 27.951639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290726, 37.082432, 28.103109>,  <43.405857, 37.812462, 27.827093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290726, 37.082432, 28.103109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658123, 37.176796, 28.230049>,  <43.878563, 37.233414, 28.306213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658123, 37.176796, 28.230049>,  <43.290726, 37.082432, 28.103109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658123, 37.176796, 28.230049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241830, -0.299850, 0.922826,
		0.312858, -0.924358, -0.218362,
		0.918498, 0.235907, 0.317348,
		43.933674, 37.247570, 28.325254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426670, 36.539734, 28.666311>,  <43.290726, 37.082432, 28.103109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426670, 36.539734, 28.666311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709518, 36.812855, 28.739820>,  <43.879227, 36.976727, 28.783926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709518, 36.812855, 28.739820>,  <43.426670, 36.539734, 28.666311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709518, 36.812855, 28.739820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190276, -0.434052, 0.880564,
		0.681014, -0.587695, -0.436846,
		0.707117, 0.682798, 0.183772,
		43.921654, 37.017693, 28.794952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012878, 36.140530, 29.017101>,  <43.426670, 36.539734, 28.666311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012878, 36.140530, 29.017101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.040436, 36.525673, 29.121529>,  <44.056969, 36.756760, 29.184185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.040436, 36.525673, 29.121529>,  <44.012878, 36.140530, 29.017101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040436, 36.525673, 29.121529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096779, -0.266906, 0.958851,
		0.992919, -0.040790, -0.111572,
		0.068890, 0.962859, 0.261069,
		44.061104, 36.814529, 29.199850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610443, 36.242596, 29.511648>,  <44.012878, 36.140530, 29.017101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610443, 36.242596, 29.511648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.372368, 36.555241, 29.586309>,  <44.229523, 36.742828, 29.631105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.372368, 36.555241, 29.586309>,  <44.610443, 36.242596, 29.511648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372368, 36.555241, 29.586309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065770, -0.184113, 0.980702,
		0.800891, 0.595978, 0.058176,
		-0.595187, 0.781609, 0.186652,
		44.193813, 36.789722, 29.642305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987659, 36.634007, 29.969448>,  <44.610443, 36.242596, 29.511648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987659, 36.634007, 29.969448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609791, 36.757267, 30.014418>,  <44.383068, 36.831223, 30.041399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609791, 36.757267, 30.014418>,  <44.987659, 36.634007, 29.969448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609791, 36.757267, 30.014418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072948, -0.136795, 0.987910,
		0.319804, 0.941451, 0.106747,
		-0.944671, 0.308151, 0.112425,
		44.326389, 36.849712, 30.048145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037914, 36.854126, 30.565071>,  <44.987659, 36.634007, 29.969448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037914, 36.854126, 30.565071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645931, 36.810078, 30.498676>,  <44.410740, 36.783649, 30.458839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645931, 36.810078, 30.498676>,  <45.037914, 36.854126, 30.565071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645931, 36.810078, 30.498676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132352, -0.262798, 0.955730,
		-0.148863, 0.958547, 0.242957,
		-0.979961, -0.110117, -0.165986,
		44.351944, 36.777042, 30.448881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740990, 37.281162, 30.998421>,  <45.037914, 36.854126, 30.565071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740990, 37.281162, 30.998421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461357, 37.008869, 30.910898>,  <44.293575, 36.845493, 30.858385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461357, 37.008869, 30.910898>,  <44.740990, 37.281162, 30.998421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461357, 37.008869, 30.910898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179979, -0.128630, 0.975224,
		-0.692016, 0.721146, -0.032595,
		-0.699086, -0.680737, -0.218805,
		44.251633, 36.804649, 30.845257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131035, 37.283237, 31.505516>,  <44.740990, 37.281162, 30.998421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131035, 37.283237, 31.505516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022484, 36.922161, 31.371944>,  <43.957352, 36.705517, 31.291801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022484, 36.922161, 31.371944>,  <44.131035, 37.283237, 31.505516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022484, 36.922161, 31.371944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049352, -0.333440, 0.941479,
		-0.961207, 0.271976, 0.045938,
		-0.271378, -0.902688, -0.333928,
		43.941071, 36.651356, 31.271767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415028, 37.080685, 31.801460>,  <44.131035, 37.283237, 31.505516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415028, 37.080685, 31.801460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629780, 36.759563, 31.697714>,  <43.758633, 36.566891, 31.635466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629780, 36.759563, 31.697714>,  <43.415028, 37.080685, 31.801460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629780, 36.759563, 31.697714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065576, -0.346208, 0.935863,
		-0.841106, -0.485438, -0.238517,
		0.536880, -0.802801, -0.259365,
		43.790844, 36.518723, 31.619904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955227, 36.453289, 32.068733>,  <43.415028, 37.080685, 31.801460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955227, 36.453289, 32.068733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.325161, 36.321156, 31.993305>,  <43.547123, 36.241875, 31.948048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.325161, 36.321156, 31.993305>,  <42.955227, 36.453289, 32.068733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325161, 36.321156, 31.993305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065410, -0.626487, 0.776683,
		-0.374703, -0.705969, -0.601004,
		0.924834, -0.330337, -0.188569,
		43.602612, 36.222054, 31.936735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981102, 35.856201, 32.463120>,  <42.955227, 36.453289, 32.068733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981102, 35.856201, 32.463120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.370159, 35.881950, 32.373840>,  <43.603592, 35.897400, 32.320271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.370159, 35.881950, 32.373840>,  <42.981102, 35.856201, 32.463120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370159, 35.881950, 32.373840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224212, -0.511487, 0.829524,
		-0.060763, -0.856876, -0.511929,
		0.972644, 0.064377, -0.223201,
		43.661953, 35.901264, 32.306881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324745, 35.200752, 32.537373>,  <42.981102, 35.856201, 32.463120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324745, 35.200752, 32.537373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.626297, 35.457355, 32.594131>,  <43.807228, 35.611317, 32.628185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.626297, 35.457355, 32.594131>,  <43.324745, 35.200752, 32.537373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626297, 35.457355, 32.594131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206842, -0.436727, 0.875492,
		0.623605, -0.630664, -0.461930,
		0.753878, 0.641508, 0.141897,
		43.852459, 35.649807, 32.636700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845436, 34.793819, 32.954189>,  <43.324745, 35.200752, 32.537373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845436, 34.793819, 32.954189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.015965, 35.155602, 32.959988>,  <44.118282, 35.372669, 32.963467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.015965, 35.155602, 32.959988>,  <43.845436, 34.793819, 32.954189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015965, 35.155602, 32.959988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495685, -0.246988, 0.832643,
		0.756668, -0.347790, -0.553621,
		0.426322, 0.904455, 0.014493,
		44.143860, 35.426937, 32.964336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521725, 34.725632, 33.223980>,  <43.845436, 34.793819, 32.954189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521725, 34.725632, 33.223980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408043, 35.103939, 33.286900>,  <44.339832, 35.330925, 33.324650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408043, 35.103939, 33.286900>,  <44.521725, 34.725632, 33.223980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408043, 35.103939, 33.286900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212581, -0.097815, 0.972235,
		0.934898, 0.309755, -0.173253,
		-0.284208, 0.945772, 0.157295,
		44.322781, 35.387672, 33.334087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976040, 35.112392, 33.623360>,  <44.521725, 34.725632, 33.223980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976040, 35.112392, 33.623360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628807, 35.298717, 33.692009>,  <44.420467, 35.410511, 33.733196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628807, 35.298717, 33.692009>,  <44.976040, 35.112392, 33.623360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628807, 35.298717, 33.692009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204175, 0.019898, 0.978732,
		0.452492, 0.884659, -0.112381,
		-0.868081, 0.465814, 0.171622,
		44.368382, 35.438461, 33.743496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667652, 35.176994, 33.759808>,  <44.976040, 35.112392, 33.623360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667652, 35.176994, 33.759808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.002594, 35.039307, 33.589935>,  <46.203560, 34.956696, 33.488010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.002594, 35.039307, 33.589935>,  <45.667652, 35.176994, 33.759808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002594, 35.039307, 33.589935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461814, -0.029710, -0.886479,
		0.292526, 0.938419, -0.183843,
		0.837351, -0.344220, -0.424684,
		46.253799, 34.936039, 33.462532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808338, 35.561329, 33.262573>,  <45.667652, 35.176994, 33.759808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808338, 35.561329, 33.262573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.001415, 35.234898, 33.135441>,  <46.117260, 35.039040, 33.059162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.001415, 35.234898, 33.135441>,  <45.808338, 35.561329, 33.262573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001415, 35.234898, 33.135441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476810, 0.059532, -0.876988,
		0.734616, 0.574861, -0.360380,
		0.482693, -0.816082, -0.317832,
		46.146221, 34.990074, 33.040092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995865, 35.732708, 32.678650>,  <45.808338, 35.561329, 33.262573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995865, 35.732708, 32.678650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008205, 35.333530, 32.656158>,  <46.015610, 35.094025, 32.642662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008205, 35.333530, 32.656158>,  <45.995865, 35.732708, 32.678650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008205, 35.333530, 32.656158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193040, 0.049249, -0.979954,
		0.980706, 0.041085, -0.191123,
		0.030848, -0.997941, -0.056229,
		46.017460, 35.034149, 32.639290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157009, 35.661777, 32.081646>,  <45.995865, 35.732708, 32.678650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157009, 35.661777, 32.081646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083511, 35.275723, 32.156208>,  <46.039413, 35.044090, 32.200943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083511, 35.275723, 32.156208>,  <46.157009, 35.661777, 32.081646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083511, 35.275723, 32.156208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116917, -0.209745, -0.970741,
		0.975996, -0.156577, 0.151381,
		-0.183747, -0.965138, 0.186404,
		46.028389, 34.986179, 32.212128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701492, 35.265022, 31.839527>,  <46.157009, 35.661777, 32.081646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701492, 35.265022, 31.839527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.384724, 35.020775, 31.839264>,  <46.194660, 34.874226, 31.839106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.384724, 35.020775, 31.839264>,  <46.701492, 35.265022, 31.839527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384724, 35.020775, 31.839264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124279, -0.160126, -0.979242,
		0.597836, -0.775569, 0.202695,
		-0.791927, -0.610616, -0.000658,
		46.147144, 34.837589, 31.839067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880844, 34.717808, 31.349073>,  <46.701492, 35.265022, 31.839527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880844, 34.717808, 31.349073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.483395, 34.711544, 31.393732>,  <46.244926, 34.707787, 31.420528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.483395, 34.711544, 31.393732>,  <46.880844, 34.717808, 31.349073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483395, 34.711544, 31.393732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101619, -0.304486, -0.947081,
		0.048829, -0.952388, 0.300953,
		-0.993624, -0.015663, 0.111649,
		46.185307, 34.706844, 31.427227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626926, 34.043705, 31.086990>,  <46.880844, 34.717808, 31.349073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626926, 34.043705, 31.086990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.336723, 34.317066, 31.054527>,  <46.162601, 34.481083, 31.035049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.336723, 34.317066, 31.054527>,  <46.626926, 34.043705, 31.086990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336723, 34.317066, 31.054527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042261, -0.161947, -0.985894,
		-0.686911, -0.711848, 0.146376,
		-0.725512, 0.683407, -0.081160,
		46.119068, 34.522087, 31.030180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159721, 33.771488, 30.594498>,  <46.626926, 34.043705, 31.086990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159721, 33.771488, 30.594498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046398, 34.154591, 30.614254>,  <45.978405, 34.384453, 30.626108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046398, 34.154591, 30.614254>,  <46.159721, 33.771488, 30.594498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046398, 34.154591, 30.614254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310037, -0.042731, -0.949764,
		-0.907531, -0.284391, 0.309046,
		-0.283310, 0.957755, 0.049392,
		45.961407, 34.441917, 30.629072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467304, 33.739651, 30.392088>,  <46.159721, 33.771488, 30.594498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467304, 33.739651, 30.392088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611851, 34.108261, 30.335238>,  <45.698578, 34.329430, 30.301128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611851, 34.108261, 30.335238>,  <45.467304, 33.739651, 30.392088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611851, 34.108261, 30.335238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283940, -0.036430, -0.958150,
		-0.888142, 0.386594, 0.248495,
		0.361362, 0.921531, -0.142124,
		45.720261, 34.384720, 30.292601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115078, 34.017246, 29.790295>,  <45.467304, 33.739651, 30.392088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115078, 34.017246, 29.790295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.406044, 34.287071, 29.840620>,  <45.580624, 34.448967, 29.870815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.406044, 34.287071, 29.840620>,  <45.115078, 34.017246, 29.790295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406044, 34.287071, 29.840620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110410, 0.065902, -0.991699,
		-0.677254, 0.735271, -0.026540,
		0.727418, 0.674562, 0.125814,
		45.624268, 34.489441, 29.878365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967457, 34.695339, 29.421520>,  <45.115078, 34.017246, 29.790295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967457, 34.695339, 29.421520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363777, 34.655373, 29.458021>,  <45.601570, 34.631393, 29.479921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363777, 34.655373, 29.458021>,  <44.967457, 34.695339, 29.421520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363777, 34.655373, 29.458021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109585, 0.196897, -0.974281,
		0.079379, 0.975320, 0.206035,
		0.990803, -0.099916, 0.091251,
		45.661018, 34.625397, 29.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235500, 35.334549, 29.234304>,  <44.967457, 34.695339, 29.421520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235500, 35.334549, 29.234304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.500824, 35.044174, 29.161606>,  <45.660019, 34.869949, 29.117987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.500824, 35.044174, 29.161606>,  <45.235500, 35.334549, 29.234304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500824, 35.044174, 29.161606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100300, 0.154434, -0.982899,
		0.741595, 0.670193, 0.029625,
		0.663307, -0.725942, -0.181748,
		45.699818, 34.826393, 29.107082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598457, 35.582680, 28.672913>,  <45.235500, 35.334549, 29.234304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598457, 35.582680, 28.672913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716595, 35.200581, 28.666348>,  <45.787479, 34.971321, 28.662409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716595, 35.200581, 28.666348>,  <45.598457, 35.582680, 28.672913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716595, 35.200581, 28.666348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071131, -0.004856, -0.997455,
		0.952739, 0.295762, -0.069382,
		0.295346, -0.955249, -0.016411,
		45.805199, 34.914005, 28.661425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102257, 35.540657, 28.163784>,  <45.598457, 35.582680, 28.672913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102257, 35.540657, 28.163784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951805, 35.171120, 28.192181>,  <45.861534, 34.949398, 28.209219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951805, 35.171120, 28.192181>,  <46.102257, 35.540657, 28.163784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951805, 35.171120, 28.192181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013258, -0.071242, -0.997371,
		0.926472, -0.376083, 0.014548,
		-0.376131, -0.923843, 0.070990,
		45.838966, 34.893967, 28.213478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557980, 35.097614, 27.569307>,  <46.102257, 35.540657, 28.163784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557980, 35.097614, 27.569307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221100, 34.900024, 27.655739>,  <46.018970, 34.781471, 27.707598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221100, 34.900024, 27.655739>,  <46.557980, 35.097614, 27.569307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221100, 34.900024, 27.655739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139668, -0.187200, -0.972342,
		0.520763, -0.849084, 0.088668,
		-0.842199, -0.493975, 0.216077,
		45.968441, 34.751831, 27.720562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539913, 34.471691, 27.121141>,  <46.557980, 35.097614, 27.569307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539913, 34.471691, 27.121141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.153107, 34.519409, 27.211157>,  <45.921021, 34.548038, 27.265165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.153107, 34.519409, 27.211157>,  <46.539913, 34.471691, 27.121141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153107, 34.519409, 27.211157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241408, -0.147576, -0.959137,
		-0.081207, -0.981830, 0.171507,
		-0.967020, 0.119292, 0.225038,
		45.862999, 34.555199, 27.278667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186562, 33.905556, 26.863861>,  <46.539913, 34.471691, 27.121141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186562, 33.905556, 26.863861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890076, 34.169430, 26.913532>,  <45.712185, 34.327755, 26.943335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890076, 34.169430, 26.913532>,  <46.186562, 33.905556, 26.863861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890076, 34.169430, 26.913532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434483, -0.330465, -0.837864,
		-0.511687, -0.674991, 0.531567,
		-0.741216, 0.659681, 0.124178,
		45.667709, 34.367332, 26.950787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635143, 33.562946, 26.683403>,  <46.186562, 33.905556, 26.863861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635143, 33.562946, 26.683403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532570, 33.947979, 26.648361>,  <45.471027, 34.178997, 26.627337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532570, 33.947979, 26.648361>,  <45.635143, 33.562946, 26.683403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532570, 33.947979, 26.648361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447457, -0.198564, -0.871983,
		-0.856751, -0.184407, 0.481634,
		-0.256435, 0.962583, -0.087606,
		45.455639, 34.236755, 26.622080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075844, 33.584862, 26.284258>,  <45.635143, 33.562946, 26.683403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075844, 33.584862, 26.284258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166176, 33.973137, 26.251347>,  <45.220375, 34.206100, 26.231600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166176, 33.973137, 26.251347>,  <45.075844, 33.584862, 26.284258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166176, 33.973137, 26.251347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188071, -0.039427, -0.981364,
		-0.955839, 0.237098, 0.173654,
		0.225833, 0.970685, -0.082277,
		45.233925, 34.264343, 26.226664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488880, 33.963737, 25.910954>,  <45.075844, 33.584862, 26.284258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488880, 33.963737, 25.910954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807137, 34.197849, 25.848480>,  <44.998093, 34.338318, 25.810995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807137, 34.197849, 25.848480>,  <44.488880, 33.963737, 25.910954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807137, 34.197849, 25.848480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265727, 0.105521, -0.958256,
		-0.544369, 0.803934, 0.239482,
		0.795645, 0.585282, -0.156185,
		45.045830, 34.373432, 25.801624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.677303, 36.328541, 42.573299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430187, 36.034473, 42.461693>,  <39.281918, 35.858032, 42.394730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430187, 36.034473, 42.461693>,  <39.677303, 36.328541, 42.573299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430187, 36.034473, 42.461693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352108, 0.058639, -0.934121,
		0.703101, -0.675339, 0.222633,
		-0.617794, -0.735172, -0.279021,
		39.244850, 35.813923, 42.377987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048660, 35.783413, 42.390648>,  <39.677303, 36.328541, 42.573299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048660, 35.783413, 42.390648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703407, 35.755409, 42.190609>,  <39.496254, 35.738609, 42.070583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703407, 35.755409, 42.190609>,  <40.048660, 35.783413, 42.390648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703407, 35.755409, 42.190609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502826, -0.027869, -0.863938,
		0.046545, -0.997157, 0.059256,
		-0.863134, -0.070007, -0.500100,
		39.444466, 35.734409, 42.040581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231571, 35.563461, 41.796284>,  <40.048660, 35.783413, 42.390648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231571, 35.563461, 41.796284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862980, 35.693886, 41.711845>,  <39.641827, 35.772141, 41.661182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862980, 35.693886, 41.711845>,  <40.231571, 35.563461, 41.796284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862980, 35.693886, 41.711845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285826, 0.201202, -0.936921,
		-0.263020, -0.923690, -0.278600,
		-0.921479, 0.326060, -0.211094,
		39.586536, 35.791702, 41.648518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167561, 35.270191, 41.071678>,  <40.231571, 35.563461, 41.796284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167561, 35.270191, 41.071678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897308, 35.558548, 41.133434>,  <39.735157, 35.731564, 41.170486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897308, 35.558548, 41.133434>,  <40.167561, 35.270191, 41.071678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897308, 35.558548, 41.133434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134026, 0.326026, -0.935812,
		-0.724956, -0.611571, -0.316891,
		-0.675630, 0.720894, 0.154388,
		39.694618, 35.774815, 41.179752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555195, 35.203201, 40.636093>,  <40.167561, 35.270191, 41.071678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555195, 35.203201, 40.636093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582638, 35.593452, 40.719463>,  <39.599102, 35.827602, 40.769485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582638, 35.593452, 40.719463>,  <39.555195, 35.203201, 40.636093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582638, 35.593452, 40.719463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039108, 0.206126, -0.977744,
		-0.996877, 0.075230, -0.024013,
		0.068606, 0.975629, 0.208424,
		39.603218, 35.886143, 40.781990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135193, 35.564648, 40.028038>,  <39.555195, 35.203201, 40.636093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135193, 35.564648, 40.028038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359550, 35.840050, 40.211937>,  <39.494164, 36.005291, 40.322277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359550, 35.840050, 40.211937>,  <39.135193, 35.564648, 40.028038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359550, 35.840050, 40.211937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164422, 0.451623, -0.876927,
		-0.811398, 0.567453, 0.140107,
		0.560891, 0.688501, 0.459748,
		39.527817, 36.046600, 40.349861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959839, 36.118664, 39.594933>,  <39.135193, 35.564648, 40.028038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959839, 36.118664, 39.594933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303635, 36.227451, 39.768047>,  <39.509911, 36.292725, 39.871918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303635, 36.227451, 39.768047>,  <38.959839, 36.118664, 39.594933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303635, 36.227451, 39.768047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284600, 0.448692, -0.847159,
		-0.424595, 0.851297, 0.308242,
		0.859490, 0.271974, 0.432791,
		39.561481, 36.309044, 39.897884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988693, 36.696678, 39.301914>,  <38.959839, 36.118664, 39.594933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988693, 36.696678, 39.301914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359070, 36.617168, 39.430363>,  <39.581295, 36.569462, 39.507431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359070, 36.617168, 39.430363>,  <38.988693, 36.696678, 39.301914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359070, 36.617168, 39.430363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372905, 0.346687, -0.860668,
		0.059755, 0.916676, 0.395138,
		0.925943, -0.198779, 0.321117,
		39.636852, 36.557533, 39.526699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428741, 37.330666, 39.168209>,  <38.988693, 36.696678, 39.301914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428741, 37.330666, 39.168209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695099, 37.032993, 39.189293>,  <39.854916, 36.854389, 39.201942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695099, 37.032993, 39.189293>,  <39.428741, 37.330666, 39.168209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695099, 37.032993, 39.189293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390576, 0.287546, -0.874510,
		0.635634, 0.602923, 0.482135,
		0.665898, -0.744178, 0.052713,
		39.894867, 36.809738, 39.205109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046429, 37.623760, 39.163792>,  <39.428741, 37.330666, 39.168209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046429, 37.623760, 39.163792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041626, 37.251732, 39.016918>,  <40.038742, 37.028515, 38.928795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041626, 37.251732, 39.016918>,  <40.046429, 37.623760, 39.163792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041626, 37.251732, 39.016918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234700, 0.354326, -0.905190,
		0.971994, -0.097047, 0.214033,
		-0.012009, -0.930073, -0.367180,
		40.038025, 36.972710, 38.906765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467197, 37.724407, 38.630779>,  <40.046429, 37.623760, 39.163792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467197, 37.724407, 38.630779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360176, 37.353714, 38.525265>,  <40.295963, 37.131298, 38.461956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360176, 37.353714, 38.525265>,  <40.467197, 37.724407, 38.630779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360176, 37.353714, 38.525265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251929, 0.196965, -0.947490,
		0.930025, -0.319961, 0.180771,
		-0.267554, -0.926731, -0.263790,
		40.279911, 37.075695, 38.446129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053276, 37.316673, 38.443623>,  <40.467197, 37.724407, 38.630779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053276, 37.316673, 38.443623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755653, 37.149807, 38.234875>,  <40.577080, 37.049686, 38.109627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755653, 37.149807, 38.234875>,  <41.053276, 37.316673, 38.443623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755653, 37.149807, 38.234875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482780, 0.204246, -0.851591,
		0.461842, -0.885584, 0.049427,
		-0.744060, -0.417163, -0.521872,
		40.532436, 37.024658, 38.078312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443069, 36.801258, 38.173168>,  <41.053276, 37.316673, 38.443623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443069, 36.801258, 38.173168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115669, 36.900139, 37.965729>,  <40.919228, 36.959469, 37.841267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115669, 36.900139, 37.965729>,  <41.443069, 36.801258, 38.173168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115669, 36.900139, 37.965729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559263, 0.136319, -0.817706,
		-0.131448, -0.959326, -0.249831,
		-0.818503, 0.247207, -0.518596,
		40.870117, 36.974300, 37.810150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438812, 36.429115, 37.573826>,  <41.443069, 36.801258, 38.173168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438812, 36.429115, 37.573826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226364, 36.764919, 37.527985>,  <41.098896, 36.966400, 37.500481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226364, 36.764919, 37.527985>,  <41.438812, 36.429115, 37.573826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226364, 36.764919, 37.527985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435439, 0.154408, -0.886877,
		-0.726848, -0.520940, -0.447565,
		-0.531117, 0.839512, -0.114607,
		41.067028, 37.016773, 37.493603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992290, 36.283051, 37.056877>,  <41.438812, 36.429115, 37.573826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992290, 36.283051, 37.056877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999695, 35.956844, 36.825500>,  <42.004139, 35.761120, 36.686676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999695, 35.956844, 36.825500>,  <41.992290, 36.283051, 37.056877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999695, 35.956844, 36.825500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316543, -0.553558, 0.770307,
		-0.948397, 0.168839, -0.268395,
		0.018515, -0.815516, -0.578438,
		42.005249, 35.712189, 36.651970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306763, 35.823391, 37.118664>,  <41.992290, 36.283051, 37.056877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306763, 35.823391, 37.118664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610790, 35.581585, 37.023281>,  <41.793205, 35.436501, 36.966053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610790, 35.581585, 37.023281>,  <41.306763, 35.823391, 37.118664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610790, 35.581585, 37.023281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241403, -0.603339, 0.760070,
		-0.603339, -0.520143, -0.604511,
		-0.760070, 0.604511, 0.238453,
		41.838810, 35.400230, 36.951744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993862, 35.250294, 37.081905>,  <41.306763, 35.823391, 37.118664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993862, 35.250294, 37.081905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379768, 35.183636, 37.163345>,  <41.611313, 35.143642, 37.212212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379768, 35.183636, 37.163345>,  <40.993862, 35.250294, 37.081905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379768, 35.183636, 37.163345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262941, -0.637921, 0.723822,
		0.009262, -0.751856, -0.659263,
		0.964767, -0.166644, 0.203602,
		41.669197, 35.133644, 37.224426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019199, 34.574352, 37.257973>,  <40.993862, 35.250294, 37.081905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019199, 34.574352, 37.257973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344566, 34.737888, 37.423477>,  <41.539787, 34.836010, 37.522781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344566, 34.737888, 37.423477>,  <41.019199, 34.574352, 37.257973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344566, 34.737888, 37.423477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116896, -0.581916, 0.804804,
		0.569814, -0.703009, -0.425548,
		0.813417, 0.408843, 0.413763,
		41.588593, 34.860542, 37.547607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447765, 33.982758, 37.417774>,  <41.019199, 34.574352, 37.257973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447765, 33.982758, 37.417774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534473, 34.296806, 37.649841>,  <41.586498, 34.485233, 37.789082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534473, 34.296806, 37.649841>,  <41.447765, 33.982758, 37.417774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534473, 34.296806, 37.649841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054584, -0.603118, 0.795782,
		0.974695, -0.140835, -0.173594,
		0.216771, 0.785120, 0.580169,
		41.599506, 34.532341, 37.823891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849113, 33.712879, 38.011379>,  <41.447765, 33.982758, 37.417774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849113, 33.712879, 38.011379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715343, 34.061314, 38.155254>,  <41.635082, 34.270374, 38.241577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715343, 34.061314, 38.155254>,  <41.849113, 33.712879, 38.011379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715343, 34.061314, 38.155254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182315, -0.434247, 0.882151,
		0.924621, 0.229434, 0.304033,
		-0.334421, 0.871085, 0.359685,
		41.615017, 34.322639, 38.263161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273968, 33.880306, 38.701939>,  <41.849113, 33.712879, 38.011379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273968, 33.880306, 38.701939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937447, 34.096466, 38.707233>,  <41.735535, 34.226162, 38.710411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937447, 34.096466, 38.707233>,  <42.273968, 33.880306, 38.701939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937447, 34.096466, 38.707233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172780, -0.292026, 0.940674,
		0.512200, 0.789110, 0.339054,
		-0.841308, 0.540395, 0.013233,
		41.685055, 34.258583, 38.711205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343395, 34.218143, 39.215420>,  <42.273968, 33.880306, 38.701939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343395, 34.218143, 39.215420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948875, 34.261276, 39.165482>,  <41.712162, 34.287155, 39.135521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948875, 34.261276, 39.165482>,  <42.343395, 34.218143, 39.215420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948875, 34.261276, 39.165482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152462, -0.306838, 0.939471,
		0.063003, 0.945633, 0.319075,
		-0.986299, 0.107837, -0.124842,
		41.652985, 34.293629, 39.128029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124004, 34.431980, 39.933426>,  <42.343395, 34.218143, 39.215420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124004, 34.431980, 39.933426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816959, 34.298168, 39.714752>,  <41.632732, 34.217880, 39.583549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816959, 34.298168, 39.714752>,  <42.124004, 34.431980, 39.933426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816959, 34.298168, 39.714752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407845, -0.403022, 0.819290,
		-0.494397, 0.851860, 0.172931,
		-0.767615, -0.334525, -0.546680,
		41.586674, 34.197811, 39.550747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476246, 34.778458, 40.197571>,  <42.124004, 34.431980, 39.933426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476246, 34.778458, 40.197571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378639, 34.434097, 40.018993>,  <41.320076, 34.227482, 39.911846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378639, 34.434097, 40.018993>,  <41.476246, 34.778458, 40.197571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378639, 34.434097, 40.018993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464875, -0.300182, 0.832936,
		-0.851086, 0.410791, -0.326960,
		-0.244015, -0.860896, -0.446447,
		41.305435, 34.175827, 39.885059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883514, 34.693565, 40.468422>,  <41.476246, 34.778458, 40.197571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883514, 34.693565, 40.468422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972263, 34.335861, 40.312954>,  <41.025513, 34.121239, 40.219673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972263, 34.335861, 40.312954>,  <40.883514, 34.693565, 40.468422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972263, 34.335861, 40.312954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390122, -0.446724, 0.805135,
		-0.893631, -0.027012, -0.447989,
		0.221876, -0.894264, -0.388668,
		41.038826, 34.067581, 40.196354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267284, 34.311848, 40.497589>,  <40.883514, 34.693565, 40.468422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267284, 34.311848, 40.497589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564651, 34.046207, 40.465836>,  <40.743073, 33.886822, 40.446785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564651, 34.046207, 40.465836>,  <40.267284, 34.311848, 40.497589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564651, 34.046207, 40.465836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349263, -0.486686, 0.800720,
		-0.570398, -0.567539, -0.593756,
		0.743413, -0.664106, -0.079385,
		40.787674, 33.846977, 40.442020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952305, 33.711029, 40.537292>,  <40.267284, 34.311848, 40.497589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952305, 33.711029, 40.537292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329647, 33.623543, 40.637089>,  <40.556053, 33.571049, 40.696968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329647, 33.623543, 40.637089>,  <39.952305, 33.711029, 40.537292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329647, 33.623543, 40.637089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330811, -0.562259, 0.757911,
		-0.025488, -0.797513, -0.602763,
		0.943353, -0.218719, 0.249495,
		40.612652, 33.557926, 40.711937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918022, 32.958092, 40.736061>,  <39.952305, 33.711029, 40.537292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918022, 32.958092, 40.736061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254936, 33.096535, 40.901352>,  <40.457085, 33.179600, 41.000526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254936, 33.096535, 40.901352>,  <39.918022, 32.958092, 40.736061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254936, 33.096535, 40.901352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141545, -0.597694, 0.789130,
		0.520109, -0.723167, -0.454441,
		0.842290, 0.346110, 0.413227,
		40.507622, 33.200367, 41.025318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128700, 32.273712, 40.347397>,  <39.918022, 32.958092, 40.736061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128700, 32.273712, 40.347397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809158, 32.064034, 40.229382>,  <39.617432, 31.938227, 40.158573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809158, 32.064034, 40.229382>,  <40.128700, 32.273712, 40.347397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809158, 32.064034, 40.229382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028130, 0.522507, -0.852171,
		0.600866, -0.672461, -0.432153,
		-0.798855, -0.524197, -0.295040,
		39.569500, 31.906775, 40.140869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117321, 32.115028, 39.594604>,  <40.128700, 32.273712, 40.347397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117321, 32.115028, 39.594604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737999, 32.064220, 39.710930>,  <39.510406, 32.033737, 39.780727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737999, 32.064220, 39.710930>,  <40.117321, 32.115028, 39.594604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737999, 32.064220, 39.710930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317045, 0.419162, -0.850756,
		-0.013838, -0.898982, -0.437766,
		-0.948310, -0.127019, 0.290818,
		39.453506, 32.026115, 39.798176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874840, 31.849577, 39.053467>,  <40.117321, 32.115028, 39.594604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874840, 31.849577, 39.053467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566288, 31.999702, 39.259037>,  <39.381157, 32.089779, 39.382378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566288, 31.999702, 39.259037>,  <39.874840, 31.849577, 39.053467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566288, 31.999702, 39.259037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349981, 0.424290, -0.835160,
		-0.531500, -0.824086, -0.195934,
		-0.771376, 0.375314, 0.513924,
		39.334877, 32.112297, 39.413216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346527, 31.715656, 38.668030>,  <39.874840, 31.849577, 39.053467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346527, 31.715656, 38.668030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204521, 32.012730, 38.895145>,  <39.119316, 32.190975, 39.031414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204521, 32.012730, 38.895145>,  <39.346527, 31.715656, 38.668030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204521, 32.012730, 38.895145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435804, 0.405841, -0.803348,
		-0.827066, -0.532645, 0.179585,
		-0.355016, 0.742685, 0.567786,
		39.098015, 32.235535, 39.065483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593849, 31.774031, 38.575703>,  <39.346527, 31.715656, 38.668030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593849, 31.774031, 38.575703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693771, 32.133240, 38.720558>,  <38.753727, 32.348766, 38.807472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693771, 32.133240, 38.720558>,  <38.593849, 31.774031, 38.575703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693771, 32.133240, 38.720558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606784, 0.436640, -0.664198,
		-0.754592, -0.053821, 0.653983,
		0.249808, 0.898025, 0.362143,
		38.768715, 32.402649, 38.829201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996357, 32.162315, 38.611847>,  <38.593849, 31.774031, 38.575703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996357, 32.162315, 38.611847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287132, 32.436935, 38.617584>,  <38.461597, 32.601707, 38.621025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287132, 32.436935, 38.617584>,  <37.996357, 32.162315, 38.611847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287132, 32.436935, 38.617584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496557, 0.539961, -0.679613,
		-0.474333, 0.486916, 0.733431,
		0.726938, 0.686553, 0.014340,
		38.505215, 32.642902, 38.621887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616077, 32.795902, 38.468498>,  <37.996357, 32.162315, 38.611847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616077, 32.795902, 38.468498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994938, 32.900200, 38.393764>,  <38.222256, 32.962780, 38.348923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994938, 32.900200, 38.393764>,  <37.616077, 32.795902, 38.468498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994938, 32.900200, 38.393764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294152, 0.473692, -0.830115,
		-0.127947, 0.841206, 0.525359,
		0.947156, 0.260746, -0.186835,
		38.279083, 32.978424, 38.337715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498909, 33.459412, 38.158829>,  <37.616077, 32.795902, 38.468498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498909, 33.459412, 38.158829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874908, 33.352360, 38.074196>,  <38.100510, 33.288128, 38.023415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874908, 33.352360, 38.074196>,  <37.498909, 33.459412, 38.158829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874908, 33.352360, 38.074196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056923, 0.488449, -0.870734,
		0.336383, 0.830537, 0.443909,
		0.940003, -0.267632, -0.211582,
		38.156910, 33.272072, 38.010719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673130, 34.049637, 37.794895>,  <37.498909, 33.459412, 38.158829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673130, 34.049637, 37.794895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935684, 33.764484, 37.696129>,  <38.093216, 33.593395, 37.636871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935684, 33.764484, 37.696129>,  <37.673130, 34.049637, 37.794895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935684, 33.764484, 37.696129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141387, 0.437723, -0.887924,
		0.741060, 0.547909, 0.388106,
		0.656384, -0.712878, -0.246912,
		38.132599, 33.550621, 37.622055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264580, 34.397900, 37.427502>,  <37.673130, 34.049637, 37.794895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264580, 34.397900, 37.427502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267677, 34.017990, 37.302361>,  <38.269535, 33.790047, 37.227276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267677, 34.017990, 37.302361>,  <38.264580, 34.397900, 37.427502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267677, 34.017990, 37.302361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128122, 0.311227, -0.941660,
		0.991728, -0.032789, 0.124097,
		0.007747, -0.949770, -0.312854,
		38.270000, 33.733059, 37.208504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862755, 34.357346, 37.002148>,  <38.264580, 34.397900, 37.427502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862755, 34.357346, 37.002148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643211, 34.057980, 36.853214>,  <38.511486, 33.878361, 36.763855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643211, 34.057980, 36.853214>,  <38.862755, 34.357346, 37.002148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643211, 34.057980, 36.853214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155311, 0.346358, -0.925156,
		0.821361, -0.565606, -0.073864,
		-0.548857, -0.748416, -0.372330,
		38.478554, 33.833454, 36.741516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021618, 34.397881, 36.369152>,  <38.862755, 34.357346, 37.002148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021618, 34.397881, 36.369152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780945, 34.081806, 36.322536>,  <38.636539, 33.892162, 36.294567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780945, 34.081806, 36.322536>,  <39.021618, 34.397881, 36.369152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780945, 34.081806, 36.322536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227709, -0.029853, -0.973272,
		0.765587, -0.612140, 0.197894,
		-0.601686, -0.790186, -0.116534,
		38.600441, 33.844749, 36.287575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.491432, 29.667562, 42.821934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092918, 29.633781, 42.815269>,  <38.853809, 29.613514, 42.811272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092918, 29.633781, 42.815269>,  <39.491432, 29.667562, 42.821934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092918, 29.633781, 42.815269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010059, 0.078051, -0.996899,
		0.085535, -0.993362, -0.076911,
		-0.996285, -0.084496, -0.016668,
		38.794033, 29.608446, 42.810268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274353, 29.079842, 42.264851>,  <39.491432, 29.667562, 42.821934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274353, 29.079842, 42.264851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012550, 29.373552, 42.336918>,  <38.855469, 29.549778, 42.380157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012550, 29.373552, 42.336918>,  <39.274353, 29.079842, 42.264851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012550, 29.373552, 42.336918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057559, 0.286004, -0.956498,
		-0.753865, -0.615661, -0.229455,
		-0.654504, 0.734277, 0.180172,
		38.816200, 29.593836, 42.390968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876446, 29.141762, 41.631256>,  <39.274353, 29.079842, 42.264851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876446, 29.141762, 41.631256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796238, 29.478924, 41.830978>,  <38.748112, 29.681221, 41.950809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796238, 29.478924, 41.830978>,  <38.876446, 29.141762, 41.631256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796238, 29.478924, 41.830978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037431, 0.515874, -0.855846,
		-0.978973, -0.152928, -0.134996,
		-0.200524, 0.842904, 0.499303,
		38.736080, 29.731794, 41.980770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317463, 29.581860, 41.131687>,  <38.876446, 29.141762, 41.631256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317463, 29.581860, 41.131687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526550, 29.786758, 41.404266>,  <38.652000, 29.909697, 41.567814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526550, 29.786758, 41.404266>,  <38.317463, 29.581860, 41.131687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526550, 29.786758, 41.404266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165403, 0.723220, -0.670518,
		-0.836308, 0.463203, 0.293310,
		0.522714, 0.512245, 0.681450,
		38.683365, 29.940432, 41.608700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076603, 30.149662, 40.906460>,  <38.317463, 29.581860, 41.131687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076603, 30.149662, 40.906460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390610, 30.222136, 41.143414>,  <38.579014, 30.265619, 41.285583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390610, 30.222136, 41.143414>,  <38.076603, 30.149662, 40.906460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390610, 30.222136, 41.143414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229046, 0.803606, -0.549323,
		-0.575569, 0.566912, 0.589348,
		0.785021, 0.181185, 0.592380,
		38.626118, 30.276491, 41.321129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013058, 30.891939, 41.037369>,  <38.076603, 30.149662, 40.906460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013058, 30.891939, 41.037369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386353, 30.791136, 41.139793>,  <38.610329, 30.730654, 41.201248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386353, 30.791136, 41.139793>,  <38.013058, 30.891939, 41.037369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386353, 30.791136, 41.139793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349634, 0.801029, -0.485910,
		-0.082661, 0.542996, 0.835657,
		0.933233, -0.252008, 0.256064,
		38.666321, 30.715534, 41.216614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377029, 31.515326, 41.333786>,  <38.013058, 30.891939, 41.037369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377029, 31.515326, 41.333786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674450, 31.276230, 41.213898>,  <38.852901, 31.132772, 41.141964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674450, 31.276230, 41.213898>,  <38.377029, 31.515326, 41.333786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674450, 31.276230, 41.213898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458003, 0.781845, -0.423028,
		0.487197, 0.177270, 0.855111,
		0.743554, -0.597741, -0.299722,
		38.897514, 31.096907, 41.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849060, 31.958168, 41.253803>,  <38.377029, 31.515326, 41.333786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849060, 31.958168, 41.253803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987217, 31.653944, 41.033894>,  <39.070110, 31.471409, 40.901947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987217, 31.653944, 41.033894>,  <38.849060, 31.958168, 41.253803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987217, 31.653944, 41.033894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342679, 0.647587, -0.680590,
		0.873656, 0.046674, 0.484299,
		0.345391, -0.760561, -0.549774,
		39.090836, 31.425776, 40.868961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471928, 32.200989, 41.033009>,  <38.849060, 31.958168, 41.253803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471928, 32.200989, 41.033009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388237, 31.907448, 40.774490>,  <39.338024, 31.731325, 40.619381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388237, 31.907448, 40.774490>,  <39.471928, 32.200989, 41.033009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388237, 31.907448, 40.774490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203797, 0.613683, -0.762797,
		0.956395, -0.291307, 0.021159,
		-0.209224, -0.733848, -0.646292,
		39.325470, 31.687294, 40.580605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275852, 32.418430, 41.075871>,  <39.471928, 32.200989, 41.033009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275852, 32.418430, 41.075871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454029, 32.731792, 41.249237>,  <40.560936, 32.919811, 41.353256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454029, 32.731792, 41.249237>,  <40.275852, 32.418430, 41.075871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454029, 32.731792, 41.249237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017022, -0.491423, 0.870755,
		0.895148, -0.380495, -0.232237,
		0.445444, 0.783407, 0.433419,
		40.587662, 32.966816, 41.379261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920437, 32.121605, 41.480118>,  <40.275852, 32.418430, 41.075871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920437, 32.121605, 41.480118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.838913, 32.474991, 41.648857>,  <40.790001, 32.687023, 41.750099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.838913, 32.474991, 41.648857>,  <40.920437, 32.121605, 41.480118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838913, 32.474991, 41.648857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034669, -0.437134, 0.898728,
		0.978397, 0.168542, 0.119719,
		-0.203807, 0.883464, 0.421847,
		40.777771, 32.740028, 41.775410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350613, 32.187649, 42.097599>,  <40.920437, 32.121605, 41.480118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350613, 32.187649, 42.097599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.037201, 32.433117, 42.136562>,  <40.849155, 32.580399, 42.159943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.037201, 32.433117, 42.136562>,  <41.350613, 32.187649, 42.097599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037201, 32.433117, 42.136562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015377, -0.175872, 0.984293,
		0.621167, 0.769723, 0.147237,
		-0.783527, 0.613674, 0.097410,
		40.802143, 32.617218, 42.165787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533340, 32.529808, 42.656200>,  <41.350613, 32.187649, 42.097599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533340, 32.529808, 42.656200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.142357, 32.610889, 42.632565>,  <40.907768, 32.659538, 42.618382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.142357, 32.610889, 42.632565>,  <41.533340, 32.529808, 42.656200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142357, 32.610889, 42.632565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073914, -0.066348, 0.995055,
		0.197776, 0.976991, 0.079835,
		-0.977457, 0.202699, -0.059091,
		40.849121, 32.671700, 42.614838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363503, 32.792751, 43.289474>,  <41.533340, 32.529808, 42.656200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363503, 32.792751, 43.289474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.001087, 32.690556, 43.154522>,  <40.783638, 32.629238, 43.073551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.001087, 32.690556, 43.154522>,  <41.363503, 32.792751, 43.289474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001087, 32.690556, 43.154522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362543, 0.057302, 0.930204,
		-0.218320, 0.965113, -0.144542,
		-0.906035, -0.255485, -0.337385,
		40.729279, 32.613911, 43.053307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944401, 33.174675, 43.636700>,  <41.363503, 32.792751, 43.289474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944401, 33.174675, 43.636700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.705452, 32.881836, 43.505745>,  <40.562080, 32.706135, 43.427174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.705452, 32.881836, 43.505745>,  <40.944401, 33.174675, 43.636700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705452, 32.881836, 43.505745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349503, -0.129763, 0.927906,
		-0.721798, 0.668729, -0.178352,
		-0.597374, -0.732095, -0.327386,
		40.526241, 32.662209, 43.407528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258663, 33.461864, 43.849171>,  <40.944401, 33.174675, 43.636700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258663, 33.461864, 43.849171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279816, 33.070148, 43.771008>,  <40.292507, 32.835117, 43.724110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279816, 33.070148, 43.771008>,  <40.258663, 33.461864, 43.849171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279816, 33.070148, 43.771008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415071, -0.199536, 0.887638,
		-0.908251, 0.034173, -0.417028,
		0.052879, -0.979295, -0.195413,
		40.295681, 32.776360, 43.712383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849655, 33.280563, 44.332344>,  <40.258663, 33.461864, 43.849171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849655, 33.280563, 44.332344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993519, 32.927029, 44.212688>,  <40.079838, 32.714909, 44.140896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993519, 32.927029, 44.212688>,  <39.849655, 33.280563, 44.332344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993519, 32.927029, 44.212688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160486, -0.374408, 0.913270,
		-0.919178, -0.280459, -0.276503,
		0.359659, -0.883833, -0.299138,
		40.101418, 32.661880, 44.122948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402058, 32.799347, 44.564186>,  <39.849655, 33.280563, 44.332344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402058, 32.799347, 44.564186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.738831, 32.589184, 44.515038>,  <39.940895, 32.463085, 44.485550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.738831, 32.589184, 44.515038>,  <39.402058, 32.799347, 44.564186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738831, 32.589184, 44.515038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175915, -0.482544, 0.858024,
		-0.510111, -0.700778, -0.498695,
		0.841927, -0.525416, -0.122874,
		39.991409, 32.431561, 44.478176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198193, 32.155724, 44.818588>,  <39.402058, 32.799347, 44.564186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198193, 32.155724, 44.818588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.597057, 32.185799, 44.819744>,  <39.836376, 32.203842, 44.820438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.597057, 32.185799, 44.819744>,  <39.198193, 32.155724, 44.818588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597057, 32.185799, 44.819744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032331, -0.462833, 0.885855,
		0.067940, -0.883251, -0.463952,
		0.997165, 0.075185, 0.002889,
		39.896206, 32.208355, 44.820610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487572, 31.471907, 44.890842>,  <39.198193, 32.155724, 44.818588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487572, 31.471907, 44.890842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797874, 31.698957, 45.001122>,  <39.984055, 31.835188, 45.067287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797874, 31.698957, 45.001122>,  <39.487572, 31.471907, 44.890842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797874, 31.698957, 45.001122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164110, -0.603333, 0.780421,
		0.609325, -0.560169, -0.561190,
		0.775752, 0.567627, 0.275696,
		40.030602, 31.869246, 45.083832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087948, 30.997667, 44.954365>,  <39.487572, 31.471907, 44.890842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087948, 30.997667, 44.954365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.187065, 31.332897, 45.148777>,  <40.246536, 31.534035, 45.265427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.187065, 31.332897, 45.148777>,  <40.087948, 30.997667, 44.954365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187065, 31.332897, 45.148777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046972, -0.511481, 0.858010,
		0.967675, -0.189776, -0.166106,
		0.247789, 0.838077, 0.486033,
		40.261402, 31.584320, 45.294586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703613, 30.894098, 45.384819>,  <40.087948, 30.997667, 44.954365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703613, 30.894098, 45.384819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.495197, 31.195604, 45.544998>,  <40.370148, 31.376507, 45.641106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.495197, 31.195604, 45.544998>,  <40.703613, 30.894098, 45.384819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495197, 31.195604, 45.544998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052535, -0.496597, 0.866390,
		0.851914, 0.430386, 0.298346,
		-0.521040, 0.753764, 0.400447,
		40.338886, 31.421734, 45.665131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953163, 30.881916, 46.066456>,  <40.703613, 30.894098, 45.384819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953163, 30.881916, 46.066456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.629505, 31.116938, 46.063332>,  <40.435310, 31.257952, 46.061459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.629505, 31.116938, 46.063332>,  <40.953163, 30.881916, 46.066456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629505, 31.116938, 46.063332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369753, -0.498786, 0.783897,
		0.456689, 0.637175, 0.620842,
		-0.809147, 0.587555, -0.007807,
		40.386761, 31.293203, 46.060989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.919823, 31.287506, 44.724251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.237663, 31.069078, 44.618107>,  <32.428368, 30.938021, 44.554420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.237663, 31.069078, 44.618107>,  <31.919823, 31.287506, 44.724251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237663, 31.069078, 44.618107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003906, 0.441658, -0.897175,
		0.607118, 0.711861, 0.353075,
		0.794602, -0.546070, -0.265358,
		32.476044, 30.905258, 44.538498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304832, 31.776958, 44.462563>,  <31.919823, 31.287506, 44.724251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304832, 31.776958, 44.462563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446388, 31.432817, 44.315838>,  <32.531322, 31.226332, 44.227802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446388, 31.432817, 44.315838>,  <32.304832, 31.776958, 44.462563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446388, 31.432817, 44.315838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359928, 0.487266, -0.795628,
		0.863257, 0.149540, 0.482105,
		0.353891, -0.860355, -0.366812,
		32.552555, 31.174711, 44.205795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991619, 31.888346, 44.272026>,  <32.304832, 31.776958, 44.462563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991619, 31.888346, 44.272026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888767, 31.558584, 44.070339>,  <32.827057, 31.360727, 43.949326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888767, 31.558584, 44.070339>,  <32.991619, 31.888346, 44.272026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888767, 31.558584, 44.070339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471645, 0.348345, -0.810065,
		0.843466, -0.446106, 0.299256,
		-0.257131, -0.824406, -0.504221,
		32.811626, 31.311262, 43.919071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588139, 31.501514, 44.062378>,  <32.991619, 31.888346, 44.272026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588139, 31.501514, 44.062378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291622, 31.399782, 43.813927>,  <33.113712, 31.338743, 43.664856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291622, 31.399782, 43.813927>,  <33.588139, 31.501514, 44.062378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291622, 31.399782, 43.813927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498338, 0.411363, -0.763177,
		0.449612, -0.875269, -0.178195,
		-0.741288, -0.254332, -0.621134,
		33.069237, 31.323484, 43.627586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887440, 31.351017, 43.514942>,  <33.588139, 31.501514, 44.062378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887440, 31.351017, 43.514942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525391, 31.378668, 43.347149>,  <33.308159, 31.395258, 43.246471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525391, 31.378668, 43.347149>,  <33.887440, 31.351017, 43.514942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525391, 31.378668, 43.347149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421153, 0.280640, -0.862480,
		0.058104, -0.957321, -0.283127,
		-0.905127, 0.069126, -0.419485,
		33.253853, 31.399406, 43.221302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958294, 31.218851, 42.782402>,  <33.887440, 31.351017, 43.514942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958294, 31.218851, 42.782402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614952, 31.423962, 42.775696>,  <33.408947, 31.547028, 42.771671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614952, 31.423962, 42.775696>,  <33.958294, 31.218851, 42.782402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614952, 31.423962, 42.775696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195054, 0.295930, -0.935083,
		-0.474525, -0.805908, -0.354033,
		-0.858359, 0.512775, -0.016769,
		33.357445, 31.577795, 42.770664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692551, 31.020180, 42.104370>,  <33.958294, 31.218851, 42.782402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692551, 31.020180, 42.104370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492542, 31.344942, 42.224895>,  <33.372536, 31.539799, 42.297211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492542, 31.344942, 42.224895>,  <33.692551, 31.020180, 42.104370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492542, 31.344942, 42.224895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150745, 0.424221, -0.892924,
		-0.852791, -0.401060, -0.334510,
		-0.500022, 0.811904, 0.301314,
		33.342537, 31.588512, 42.315289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320934, 31.282097, 41.483013>,  <33.692551, 31.020180, 42.104370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320934, 31.282097, 41.483013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363682, 31.575089, 41.751953>,  <33.389328, 31.750883, 41.913319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363682, 31.575089, 41.751953>,  <33.320934, 31.282097, 41.483013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363682, 31.575089, 41.751953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162148, 0.654332, -0.738619,
		-0.980963, 0.187952, -0.048845,
		0.106864, 0.732478, 0.672352,
		33.395741, 31.794832, 41.953659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924236, 31.855125, 41.274242>,  <33.320934, 31.282097, 41.483013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924236, 31.855125, 41.274242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194496, 32.025909, 41.514645>,  <33.356651, 32.128380, 41.658886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194496, 32.025909, 41.514645>,  <32.924236, 31.855125, 41.274242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194496, 32.025909, 41.514645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253298, 0.631154, -0.733134,
		-0.692346, 0.647572, 0.318288,
		0.675646, 0.426960, 0.601006,
		33.397190, 32.153999, 41.694946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987644, 32.394306, 40.892132>,  <32.924236, 31.855125, 41.274242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987644, 32.394306, 40.892132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257069, 32.461861, 41.179962>,  <33.418724, 32.502396, 41.352661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257069, 32.461861, 41.179962>,  <32.987644, 32.394306, 40.892132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257069, 32.461861, 41.179962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317860, 0.812736, -0.488287,
		-0.667292, 0.557617, 0.493746,
		0.673562, 0.168888, 0.719577,
		33.459137, 32.512527, 41.395836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826870, 33.101620, 41.273514>,  <32.987644, 32.394306, 40.892132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826870, 33.101620, 41.273514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213837, 33.000793, 41.282974>,  <33.446018, 32.940296, 41.288651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213837, 33.000793, 41.282974>,  <32.826870, 33.101620, 41.273514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213837, 33.000793, 41.282974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235904, 0.863566, -0.445650,
		0.091908, 0.436711, 0.894895,
		0.967420, -0.252068, 0.023654,
		33.504063, 32.925175, 41.290070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252430, 33.673656, 41.547672>,  <32.826870, 33.101620, 41.273514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252430, 33.673656, 41.547672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456848, 33.430889, 41.304203>,  <33.579498, 33.285229, 41.158123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456848, 33.430889, 41.304203>,  <33.252430, 33.673656, 41.547672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456848, 33.430889, 41.304203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174132, 0.766546, -0.618130,
		0.841729, 0.209905, 0.497425,
		0.511048, -0.606916, -0.608673,
		33.610161, 33.248814, 41.121601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791954, 34.052212, 41.412388>,  <33.252430, 33.673656, 41.547672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791954, 34.052212, 41.412388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801079, 33.787937, 41.112263>,  <33.806553, 33.629372, 40.932186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801079, 33.787937, 41.112263>,  <33.791954, 34.052212, 41.412388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801079, 33.787937, 41.112263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100603, 0.748217, -0.655783,
		0.994665, -0.060522, 0.083538,
		0.022815, -0.660688, -0.750314,
		33.807922, 33.589729, 40.887169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291084, 34.241306, 40.925758>,  <33.791954, 34.052212, 41.412388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291084, 34.241306, 40.925758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088764, 33.985889, 40.693748>,  <33.967373, 33.832638, 40.554543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088764, 33.985889, 40.693748>,  <34.291084, 34.241306, 40.925758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088764, 33.985889, 40.693748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096006, 0.626527, -0.773464,
		0.857291, -0.446905, -0.255594,
		-0.505801, -0.638545, -0.580022,
		33.937023, 33.794327, 40.519741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121037, 34.281807, 40.990818>,  <34.291084, 34.241306, 40.925758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121037, 34.281807, 40.990818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242310, 34.613617, 41.178417>,  <35.315075, 34.812702, 41.290977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242310, 34.613617, 41.178417>,  <35.121037, 34.281807, 40.990818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242310, 34.613617, 41.178417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118926, -0.455381, 0.882318,
		0.945481, -0.323284, -0.039413,
		0.303187, 0.829528, 0.469001,
		35.333267, 34.862476, 41.319118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443886, 34.006336, 41.578419>,  <35.121037, 34.281807, 40.990818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443886, 34.006336, 41.578419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397671, 34.386818, 41.692871>,  <35.369942, 34.615105, 41.761543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397671, 34.386818, 41.692871>,  <35.443886, 34.006336, 41.578419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397671, 34.386818, 41.692871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032228, -0.284318, 0.958188,
		0.992781, 0.119925, 0.002193,
		-0.115534, 0.951200, 0.286131,
		35.363010, 34.672176, 41.778709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868526, 34.096527, 42.131496>,  <35.443886, 34.006336, 41.578419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868526, 34.096527, 42.131496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589737, 34.379932, 42.175735>,  <35.422462, 34.549976, 42.202278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589737, 34.379932, 42.175735>,  <35.868526, 34.096527, 42.131496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589737, 34.379932, 42.175735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008731, -0.145839, 0.989270,
		0.717042, 0.690462, 0.095461,
		-0.696975, 0.708515, 0.110601,
		35.380646, 34.592487, 42.208916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978939, 34.396358, 42.798061>,  <35.868526, 34.096527, 42.131496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978939, 34.396358, 42.798061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606159, 34.529709, 42.741035>,  <35.382492, 34.609718, 42.706818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606159, 34.529709, 42.741035>,  <35.978939, 34.396358, 42.798061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606159, 34.529709, 42.741035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178207, -0.078721, 0.980839,
		0.315761, 0.939503, 0.132774,
		-0.931953, 0.333372, -0.142569,
		35.326572, 34.629719, 42.698265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728943, 34.946564, 43.338291>,  <35.978939, 34.396358, 42.798061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728943, 34.946564, 43.338291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411449, 34.756775, 43.186047>,  <35.220955, 34.642902, 43.094700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411449, 34.756775, 43.186047>,  <35.728943, 34.946564, 43.338291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411449, 34.756775, 43.186047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261636, -0.298581, 0.917821,
		-0.549123, 0.828087, 0.112855,
		-0.793732, -0.474470, -0.380615,
		35.173328, 34.614433, 43.071861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242229, 35.159744, 43.806881>,  <35.728943, 34.946564, 43.338291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242229, 35.159744, 43.806881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071304, 34.852112, 43.616756>,  <34.968750, 34.667534, 43.502682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071304, 34.852112, 43.616756>,  <35.242229, 35.159744, 43.806881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071304, 34.852112, 43.616756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332685, -0.355081, 0.873635,
		-0.840670, 0.531442, -0.104132,
		-0.427311, -0.769082, -0.475309,
		34.943111, 34.621387, 43.474163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626003, 35.090298, 44.097118>,  <35.242229, 35.159744, 43.806881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626003, 35.090298, 44.097118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709278, 34.730076, 43.944454>,  <34.759243, 34.513943, 43.852856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709278, 34.730076, 43.944454>,  <34.626003, 35.090298, 44.097118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709278, 34.730076, 43.944454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323001, -0.431620, 0.842244,
		-0.923216, -0.052067, -0.380737,
		0.208187, -0.900551, -0.381661,
		34.771732, 34.459911, 43.829956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055763, 34.695602, 44.313309>,  <34.626003, 35.090298, 44.097118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055763, 34.695602, 44.313309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380184, 34.473545, 44.239552>,  <34.574837, 34.340309, 44.195297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380184, 34.473545, 44.239552>,  <34.055763, 34.695602, 44.313309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380184, 34.473545, 44.239552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223354, -0.585234, 0.779497,
		-0.540645, -0.591032, -0.598651,
		0.811059, -0.555142, -0.184395,
		34.623501, 34.307003, 44.184231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839867, 34.167473, 44.592487>,  <34.055763, 34.695602, 44.313309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839867, 34.167473, 44.592487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227951, 34.080261, 44.550247>,  <34.460804, 34.027935, 44.524902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227951, 34.080261, 44.550247>,  <33.839867, 34.167473, 44.592487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227951, 34.080261, 44.550247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054076, -0.619815, 0.782882,
		-0.236140, -0.753852, -0.613143,
		0.970213, -0.218026, -0.105598,
		34.519016, 34.014854, 44.518566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979324, 33.418346, 44.722912>,  <33.839867, 34.167473, 44.592487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979324, 33.418346, 44.722912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349686, 33.557549, 44.781685>,  <34.571903, 33.641068, 44.816948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349686, 33.557549, 44.781685>,  <33.979324, 33.418346, 44.722912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349686, 33.557549, 44.781685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119914, -0.639629, 0.759273,
		0.358213, -0.685397, -0.633967,
		0.925907, 0.348002, 0.146934,
		34.627457, 33.661949, 44.825764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369450, 32.834724, 44.718143>,  <33.979324, 33.418346, 44.722912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369450, 32.834724, 44.718143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575150, 33.121803, 44.905956>,  <34.698570, 33.294048, 45.018642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575150, 33.121803, 44.905956>,  <34.369450, 32.834724, 44.718143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575150, 33.121803, 44.905956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216949, -0.638521, 0.738393,
		0.829745, -0.277857, -0.484065,
		0.514253, 0.717695, 0.469529,
		34.729424, 33.337112, 45.046814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956230, 32.555115, 44.838558>,  <34.369450, 32.834724, 44.718143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956230, 32.555115, 44.838558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874237, 32.849949, 45.096142>,  <34.825043, 33.026848, 45.250694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874237, 32.849949, 45.096142>,  <34.956230, 32.555115, 44.838558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874237, 32.849949, 45.096142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099213, -0.638897, 0.762868,
		0.973724, 0.220266, 0.057835,
		-0.204984, 0.737085, 0.643962,
		34.812740, 33.071075, 45.289330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291237, 32.406700, 45.399998>,  <34.956230, 32.555115, 44.838558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291237, 32.406700, 45.399998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051445, 32.650429, 45.607594>,  <34.907570, 32.796665, 45.732151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051445, 32.650429, 45.607594>,  <35.291237, 32.406700, 45.399998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051445, 32.650429, 45.607594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007808, -0.643937, 0.765039,
		0.800349, 0.462681, 0.381272,
		-0.599484, 0.609321, 0.518986,
		34.871601, 32.833225, 45.763290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574471, 32.320797, 46.039616>,  <35.291237, 32.406700, 45.399998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574471, 32.320797, 46.039616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219299, 32.494312, 46.100815>,  <35.006195, 32.598419, 46.137535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219299, 32.494312, 46.100815>,  <35.574471, 32.320797, 46.039616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219299, 32.494312, 46.100815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123060, -0.544525, 0.829668,
		0.443211, 0.717859, 0.536882,
		-0.887930, 0.433787, 0.152999,
		34.952919, 32.624447, 46.146713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032131, 32.854259, 46.370461>,  <35.574471, 32.320797, 46.039616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032131, 32.854259, 46.370461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392632, 32.853722, 46.543777>,  <36.608932, 32.853397, 46.647770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392632, 32.853722, 46.543777>,  <36.032131, 32.854259, 46.370461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392632, 32.853722, 46.543777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386007, 0.456781, -0.801467,
		-0.196842, 0.889578, 0.412195,
		0.901250, -0.001348, 0.433297,
		36.663006, 32.853317, 46.673767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264069, 33.507290, 46.204559>,  <36.032131, 32.854259, 46.370461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264069, 33.507290, 46.204559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589836, 33.302097, 46.313053>,  <36.785297, 33.178982, 46.378147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589836, 33.302097, 46.313053>,  <36.264069, 33.507290, 46.204559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589836, 33.302097, 46.313053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478233, 0.328645, -0.814424,
		0.328645, 0.792997, 0.512980,
		0.814424, -0.512980, 0.271230,
		36.834164, 33.148205, 46.394421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819386, 34.000423, 46.352947>,  <36.264069, 33.507290, 46.204559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819386, 34.000423, 46.352947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995808, 33.657726, 46.246017>,  <37.101662, 33.452106, 46.181858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995808, 33.657726, 46.246017>,  <36.819386, 34.000423, 46.352947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995808, 33.657726, 46.246017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628482, 0.507476, -0.589473,
		0.640687, 0.091983, 0.762273,
		0.441057, -0.856742, -0.267324,
		37.128124, 33.400703, 46.165821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617596, 34.169472, 46.344631>,  <36.819386, 34.000423, 46.352947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617596, 34.169472, 46.344631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582668, 33.823940, 46.146164>,  <37.561714, 33.616623, 46.027084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582668, 33.823940, 46.146164>,  <37.617596, 34.169472, 46.344631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582668, 33.823940, 46.146164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532724, 0.380378, -0.755989,
		0.841773, -0.330328, 0.426968,
		-0.087315, -0.863826, -0.496165,
		37.556473, 33.564793, 45.997314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220444, 34.098736, 46.169250>,  <37.617596, 34.169472, 46.344631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220444, 34.098736, 46.169250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008488, 33.863098, 45.925224>,  <37.881313, 33.721714, 45.778809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008488, 33.863098, 45.925224>,  <38.220444, 34.098736, 46.169250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008488, 33.863098, 45.925224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522710, 0.339602, -0.781950,
		0.667823, -0.733236, 0.127975,
		-0.529893, -0.589098, -0.610063,
		37.849522, 33.686367, 45.742207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710377, 33.910107, 45.624119>,  <38.220444, 34.098736, 46.169250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710377, 33.910107, 45.624119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.340073, 33.885033, 45.474968>,  <38.117889, 33.869987, 45.385475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.340073, 33.885033, 45.474968>,  <38.710377, 33.910107, 45.624119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340073, 33.885033, 45.474968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299208, 0.481493, -0.823796,
		0.231178, -0.874206, -0.426991,
		-0.925760, -0.062684, -0.372880,
		38.062344, 33.866226, 45.363102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849667, 33.749935, 44.954067>,  <38.710377, 33.910107, 45.624119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849667, 33.749935, 44.954067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.468880, 33.869705, 44.928452>,  <38.240406, 33.941566, 44.913082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.468880, 33.869705, 44.928452>,  <38.849667, 33.749935, 44.954067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468880, 33.869705, 44.928452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178172, 0.371594, -0.911138,
		-0.249019, -0.878785, -0.407095,
		-0.951969, 0.299424, -0.064040,
		38.183289, 33.959534, 44.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635029, 33.491299, 44.374504>,  <38.849667, 33.749935, 44.954067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635029, 33.491299, 44.374504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.418514, 33.818130, 44.453888>,  <38.288605, 34.014229, 44.501518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.418514, 33.818130, 44.453888>,  <38.635029, 33.491299, 44.374504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418514, 33.818130, 44.453888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182291, 0.344442, -0.920940,
		-0.820842, -0.462313, -0.335387,
		-0.541284, 0.817084, 0.198457,
		38.256130, 34.063255, 44.513424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019371, 33.742233, 43.741924>,  <38.635029, 33.491299, 44.374504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019371, 33.742233, 43.741924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173695, 34.027946, 43.975487>,  <38.266289, 34.199375, 44.115623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173695, 34.027946, 43.975487>,  <38.019371, 33.742233, 43.741924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173695, 34.027946, 43.975487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185970, 0.559708, -0.807553,
		-0.903642, 0.420149, 0.083103,
		0.385806, 0.714284, 0.583911,
		38.289436, 34.242233, 44.150661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702045, 34.275101, 43.518234>,  <38.019371, 33.742233, 43.741924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702045, 34.275101, 43.518234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019913, 34.426712, 43.707905>,  <38.210632, 34.517677, 43.821709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019913, 34.426712, 43.707905>,  <37.702045, 34.275101, 43.518234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019913, 34.426712, 43.707905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109970, 0.678311, -0.726499,
		-0.597004, 0.629469, 0.497348,
		0.794666, 0.379029, 0.474177,
		38.258312, 34.540421, 43.850159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579441, 34.933296, 43.587093>,  <37.702045, 34.275101, 43.518234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579441, 34.933296, 43.587093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973480, 34.911713, 43.652412>,  <38.209904, 34.898762, 43.691605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973480, 34.911713, 43.652412>,  <37.579441, 34.933296, 43.587093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973480, 34.911713, 43.652412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157619, 0.663136, -0.731715,
		-0.068806, 0.746552, 0.661760,
		0.985100, -0.053959, 0.163299,
		38.269009, 34.895523, 43.701401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706642, 35.596642, 43.480003>,  <37.579441, 34.933296, 43.587093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706642, 35.596642, 43.480003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054893, 35.406498, 43.429359>,  <38.263844, 35.292412, 43.398972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054893, 35.406498, 43.429359>,  <37.706642, 35.596642, 43.480003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054893, 35.406498, 43.429359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205680, 0.585553, -0.784106,
		0.446872, 0.656627, 0.607574,
		0.870632, -0.475361, -0.126612,
		38.316082, 35.263889, 43.391376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150478, 36.091488, 43.290432>,  <37.706642, 35.596642, 43.480003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150478, 36.091488, 43.290432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389263, 35.785713, 43.193039>,  <38.532536, 35.602249, 43.134605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389263, 35.785713, 43.193039>,  <38.150478, 36.091488, 43.290432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389263, 35.785713, 43.193039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302007, 0.495283, -0.814547,
		0.743256, 0.412720, 0.526528,
		0.596961, -0.764432, -0.243478,
		38.568352, 35.556385, 43.119995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850224, 36.399620, 42.995525>,  <38.150478, 36.091488, 43.290432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850224, 36.399620, 42.995525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825108, 36.027779, 42.850258>,  <38.810040, 35.804672, 42.763096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825108, 36.027779, 42.850258>,  <38.850224, 36.399620, 42.995525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825108, 36.027779, 42.850258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396275, 0.310750, -0.863944,
		0.915982, -0.198162, 0.348867,
		-0.062791, -0.929605, -0.363168,
		38.806271, 35.748898, 42.741306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.307354, 32.261860, 30.915674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.485664, 32.574795, 31.089678>,  <32.592651, 32.762554, 31.194080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.485664, 32.574795, 31.089678>,  <32.307354, 32.261860, 30.915674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485664, 32.574795, 31.089678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823649, 0.168175, 0.541590,
		0.350548, -0.599723, 0.719339,
		0.445779, 0.782336, 0.435008,
		32.619400, 32.809494, 31.220181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285152, 32.260735, 31.745340>,  <32.307354, 32.261860, 30.915674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285152, 32.260735, 31.745340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.314049, 32.632038, 31.599396>,  <32.331387, 32.854820, 31.511829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.314049, 32.632038, 31.599396>,  <32.285152, 32.260735, 31.745340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314049, 32.632038, 31.599396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743825, 0.293847, 0.600315,
		0.664459, 0.228025, 0.711687,
		0.072241, 0.928256, -0.364860,
		32.335720, 32.910515, 31.489937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081093, 32.644764, 32.352619>,  <32.285152, 32.260735, 31.745340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081093, 32.644764, 32.352619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.042389, 32.918541, 32.063576>,  <32.019165, 33.082809, 31.890148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.042389, 32.918541, 32.063576>,  <32.081093, 32.644764, 32.352619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042389, 32.918541, 32.063576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780166, 0.398671, 0.482082,
		0.618044, 0.610405, 0.495406,
		-0.096761, 0.684447, -0.722613,
		32.013359, 33.123875, 31.846792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937355, 33.228542, 32.668320>,  <32.081093, 32.644764, 32.352619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937355, 33.228542, 32.668320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.832718, 33.350445, 32.301998>,  <31.769936, 33.423588, 32.082207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.832718, 33.350445, 32.301998>,  <31.937355, 33.228542, 32.668320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832718, 33.350445, 32.301998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640308, 0.655182, 0.400928,
		0.722202, 0.691275, 0.023748,
		-0.261592, 0.304757, -0.915802,
		31.754240, 33.441872, 32.027256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033978, 33.964420, 32.618706>,  <31.937355, 33.228542, 32.668320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033978, 33.964420, 32.618706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.762527, 33.829647, 32.357651>,  <31.599657, 33.748783, 32.201015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.762527, 33.829647, 32.357651>,  <32.033978, 33.964420, 32.618706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762527, 33.829647, 32.357651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716674, 0.498235, 0.487996,
		0.160748, 0.798900, -0.579586,
		-0.678630, -0.336930, -0.652641,
		31.558939, 33.728569, 32.161858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664745, 34.492966, 32.550579>,  <32.033978, 33.964420, 32.618706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664745, 34.492966, 32.550579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428345, 34.211155, 32.393429>,  <31.286505, 34.042068, 32.299137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428345, 34.211155, 32.393429>,  <31.664745, 34.492966, 32.550579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428345, 34.211155, 32.393429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806356, 0.529549, 0.263377,
		0.022492, 0.472457, -0.881067,
		-0.591002, -0.704530, -0.392879,
		31.251043, 33.999794, 32.275566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242422, 34.870510, 32.166069>,  <31.664745, 34.492966, 32.550579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242422, 34.870510, 32.166069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040379, 34.530991, 32.228550>,  <30.919151, 34.327278, 32.266041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040379, 34.530991, 32.228550>,  <31.242422, 34.870510, 32.166069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040379, 34.530991, 32.228550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837043, 0.525897, 0.150970,
		-0.210291, -0.054494, -0.976119,
		-0.505111, -0.848801, 0.156205,
		30.888845, 34.276352, 32.275410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563101, 35.084564, 32.158985>,  <31.242422, 34.870510, 32.166069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563101, 35.084564, 32.158985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533398, 34.728767, 32.339333>,  <30.515575, 34.515289, 32.447540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533398, 34.728767, 32.339333>,  <30.563101, 35.084564, 32.158985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533398, 34.728767, 32.339333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856488, 0.288466, 0.428038,
		-0.510798, -0.354381, -0.783262,
		-0.074256, -0.889495, 0.450871,
		30.511122, 34.461918, 32.474594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944590, 34.806541, 31.939075>,  <30.563101, 35.084564, 32.158985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944590, 34.806541, 31.939075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035292, 34.596111, 32.266937>,  <30.089714, 34.469852, 32.463654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035292, 34.596111, 32.266937>,  <29.944590, 34.806541, 31.939075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035292, 34.596111, 32.266937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923443, 0.151367, 0.352621,
		-0.309572, -0.836861, -0.451474,
		0.226756, -0.526072, 0.819652,
		30.103319, 34.438290, 32.512833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337795, 34.534935, 32.197918>,  <29.944590, 34.806541, 31.939075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337795, 34.534935, 32.197918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559696, 34.493919, 32.528187>,  <29.692837, 34.469311, 32.726349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559696, 34.493919, 32.528187>,  <29.337795, 34.534935, 32.197918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559696, 34.493919, 32.528187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820357, 0.098133, 0.563368,
		-0.138791, -0.989877, -0.029675,
		0.554753, -0.102534, 0.825673,
		29.726122, 34.463158, 32.775890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996220, 34.060390, 32.716900>,  <29.337795, 34.534935, 32.197918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996220, 34.060390, 32.716900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239019, 34.292027, 32.934601>,  <29.384699, 34.431007, 33.065220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239019, 34.292027, 32.934601>,  <28.996220, 34.060390, 32.716900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239019, 34.292027, 32.934601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710591, 0.088853, 0.697972,
		0.355829, -0.810409, 0.465428,
		0.606997, 0.579088, 0.544253,
		29.421120, 34.465752, 33.097878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924381, 33.888535, 33.484440>,  <28.996220, 34.060390, 32.716900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924381, 33.888535, 33.484440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068560, 34.259998, 33.449402>,  <29.155066, 34.482876, 33.428379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068560, 34.259998, 33.449402>,  <28.924381, 33.888535, 33.484440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068560, 34.259998, 33.449402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702883, 0.332144, 0.628995,
		0.613217, -0.165146, 0.772458,
		0.360444, 0.928658, -0.087598,
		29.176693, 34.538597, 33.423122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731253, 34.149940, 34.253632>,  <28.924381, 33.888535, 33.484440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731253, 34.149940, 34.253632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832281, 34.458374, 34.019833>,  <28.892899, 34.643433, 33.879555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832281, 34.458374, 34.019833>,  <28.731253, 34.149940, 34.253632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832281, 34.458374, 34.019833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669627, 0.575346, 0.469655,
		0.698431, 0.272773, 0.661656,
		0.252572, 0.771085, -0.584496,
		28.908052, 34.689701, 33.844482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758434, 34.610271, 34.738811>,  <28.731253, 34.149940, 34.253632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758434, 34.610271, 34.738811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713583, 34.800076, 34.389580>,  <28.686672, 34.913960, 34.180042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713583, 34.800076, 34.389580>,  <28.758434, 34.610271, 34.738811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713583, 34.800076, 34.389580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685160, 0.599446, 0.413787,
		0.719710, 0.644596, 0.257902,
		-0.112127, 0.474511, -0.873079,
		28.679945, 34.942429, 34.127655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762474, 35.396648, 34.902538>,  <28.758434, 34.610271, 34.738811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762474, 35.396648, 34.902538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566805, 35.360233, 34.555569>,  <28.449404, 35.338383, 34.347389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566805, 35.360233, 34.555569>,  <28.762474, 35.396648, 34.902538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566805, 35.360233, 34.555569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706828, 0.624044, 0.333112,
		0.510983, 0.776068, -0.369616,
		-0.489174, -0.091040, -0.867422,
		28.420053, 35.332920, 34.295341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625013, 36.028820, 34.788189>,  <28.762474, 35.396648, 34.902538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625013, 36.028820, 34.788189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362123, 35.848614, 34.546497>,  <28.204390, 35.740490, 34.401482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362123, 35.848614, 34.546497>,  <28.625013, 36.028820, 34.788189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362123, 35.848614, 34.546497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734655, 0.561986, 0.380071,
		0.168338, 0.693690, -0.700326,
		-0.657225, -0.450517, -0.604226,
		28.164955, 35.713459, 34.365231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398354, 36.267574, 35.464169>,  <28.625013, 36.028820, 34.788189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398354, 36.267574, 35.464169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793772, 36.241650, 35.409657>,  <29.031023, 36.226093, 35.376949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793772, 36.241650, 35.409657>,  <28.398354, 36.267574, 35.464169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793772, 36.241650, 35.409657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146470, -0.194690, -0.969867,
		0.036328, 0.978721, -0.201954,
		0.988548, -0.064814, -0.136281,
		29.090336, 36.222206, 35.368771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543251, 37.005051, 35.580090>,  <28.398354, 36.267574, 35.464169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543251, 37.005051, 35.580090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557777, 37.394936, 35.491898>,  <28.566494, 37.628868, 35.438984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557777, 37.394936, 35.491898>,  <28.543251, 37.005051, 35.580090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557777, 37.394936, 35.491898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939812, -0.108321, -0.324069,
		-0.339757, -0.195439, -0.919983,
		0.036318, 0.974715, -0.220479,
		28.568672, 37.687351, 35.425755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909929, 36.999424, 35.011314>,  <28.543251, 37.005051, 35.580090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909929, 36.999424, 35.011314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988855, 37.343018, 35.200298>,  <29.036211, 37.549175, 35.313686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988855, 37.343018, 35.200298>,  <28.909929, 36.999424, 35.011314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988855, 37.343018, 35.200298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946859, -0.042110, -0.318880,
		-0.254017, 0.510269, -0.821645,
		0.197314, 0.858983, 0.472457,
		29.048050, 37.600712, 35.342033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999853, 37.666355, 34.591610>,  <28.909929, 36.999424, 35.011314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999853, 37.666355, 34.591610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207182, 37.582508, 34.923248>,  <29.331579, 37.532200, 35.122231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207182, 37.582508, 34.923248>,  <28.999853, 37.666355, 34.591610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207182, 37.582508, 34.923248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836485, -0.077364, -0.542501,
		0.177859, 0.974719, 0.135239,
		0.518323, -0.209614, 0.829098,
		29.362679, 37.519623, 35.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723589, 37.924965, 34.526333>,  <28.999853, 37.666355, 34.591610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723589, 37.924965, 34.526333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756636, 37.673859, 34.835934>,  <29.776464, 37.523193, 35.021694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756636, 37.673859, 34.835934>,  <29.723589, 37.924965, 34.526333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756636, 37.673859, 34.835934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908122, -0.272470, -0.317921,
		0.410473, 0.729158, 0.547577,
		0.082616, -0.627765, 0.774006,
		29.781420, 37.485531, 35.068134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336533, 38.077152, 34.712227>,  <29.723589, 37.924965, 34.526333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336533, 38.077152, 34.712227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259007, 37.714043, 34.861023>,  <30.212490, 37.496178, 34.950298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259007, 37.714043, 34.861023>,  <30.336533, 38.077152, 34.712227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259007, 37.714043, 34.861023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917493, -0.301974, -0.258879,
		0.347335, 0.291119, 0.891408,
		-0.193817, -0.907778, 0.371986,
		30.200861, 37.441708, 34.972618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861471, 38.038010, 35.086327>,  <30.336533, 38.077152, 34.712227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861471, 38.038010, 35.086327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754179, 37.652767, 35.077579>,  <30.689804, 37.421623, 35.072330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754179, 37.652767, 35.077579>,  <30.861471, 38.038010, 35.086327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754179, 37.652767, 35.077579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894716, -0.240637, -0.376267,
		0.357122, -0.120495, 0.926253,
		-0.268229, -0.963107, -0.021872,
		30.673710, 37.363834, 35.071018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500793, 37.642422, 35.283096>,  <30.861471, 38.038010, 35.086327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500793, 37.642422, 35.283096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256708, 37.387421, 35.094955>,  <31.110258, 37.234421, 34.982071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256708, 37.387421, 35.094955>,  <31.500793, 37.642422, 35.283096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256708, 37.387421, 35.094955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781048, -0.384659, -0.491936,
		0.132684, -0.667554, 0.732644,
		-0.610212, -0.637502, -0.470354,
		31.073645, 37.196171, 34.953850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924469, 37.002125, 35.229843>,  <31.500793, 37.642422, 35.283096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924469, 37.002125, 35.229843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637671, 36.965981, 34.953365>,  <31.465591, 36.944294, 34.787479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637671, 36.965981, 34.953365>,  <31.924469, 37.002125, 35.229843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637671, 36.965981, 34.953365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671427, -0.356027, -0.649946,
		-0.187357, -0.930097, 0.315939,
		-0.716995, -0.090358, -0.691197,
		31.422571, 36.938873, 34.746006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960560, 36.272022, 35.021004>,  <31.924469, 37.002125, 35.229843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960560, 36.272022, 35.021004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.808292, 36.519032, 34.745682>,  <31.716932, 36.667236, 34.580490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.808292, 36.519032, 34.745682>,  <31.960560, 36.272022, 35.021004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808292, 36.519032, 34.745682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699335, -0.294741, -0.651197,
		-0.604999, -0.729244, -0.319655,
		-0.380667, 0.617519, -0.688304,
		31.694092, 36.704288, 34.539192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910028, 35.843765, 34.504318>,  <31.960560, 36.272022, 35.021004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910028, 35.843765, 34.504318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915060, 36.213615, 34.352051>,  <31.918079, 36.435524, 34.260689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915060, 36.213615, 34.352051>,  <31.910028, 35.843765, 34.504318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915060, 36.213615, 34.352051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736464, -0.266080, -0.621950,
		-0.676359, -0.272526, -0.684301,
		0.012581, 0.924625, -0.380671,
		31.918835, 36.491001, 34.237850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822475, 35.745453, 33.787403>,  <31.910028, 35.843765, 34.504318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822475, 35.745453, 33.787403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.008812, 36.098541, 33.812038>,  <32.120613, 36.310394, 33.826820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.008812, 36.098541, 33.812038>,  <31.822475, 35.745453, 33.787403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008812, 36.098541, 33.812038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709996, -0.331335, -0.621388,
		-0.528106, 0.333198, -0.781079,
		0.465844, 0.882721, 0.061589,
		32.148563, 36.363358, 33.830517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933342, 35.962090, 33.105465>,  <31.822475, 35.745453, 33.787403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933342, 35.962090, 33.105465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.209305, 36.135914, 33.337044>,  <32.374882, 36.240208, 33.475990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.209305, 36.135914, 33.337044>,  <31.933342, 35.962090, 33.105465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209305, 36.135914, 33.337044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709013, -0.244280, -0.661535,
		-0.146053, 0.866880, -0.476641,
		0.689905, 0.434564, 0.578951,
		32.416275, 36.266285, 33.510731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468853, 36.183414, 32.539379>,  <31.933342, 35.962090, 33.105465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468853, 36.183414, 32.539379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.633629, 36.234272, 32.900299>,  <32.732494, 36.264786, 33.116852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.633629, 36.234272, 32.900299>,  <32.468853, 36.183414, 32.539379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633629, 36.234272, 32.900299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905521, -0.167595, -0.389798,
		0.101660, 0.977623, -0.184170,
		0.411942, 0.127143, 0.902296,
		32.757210, 36.272415, 33.170986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107998, 36.589256, 32.423336>,  <32.468853, 36.183414, 32.539379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107998, 36.589256, 32.423336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.167179, 36.426540, 32.783920>,  <33.202686, 36.328911, 33.000271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.167179, 36.426540, 32.783920>,  <33.107998, 36.589256, 32.423336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167179, 36.426540, 32.783920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932323, -0.246753, -0.264362,
		0.329978, 0.879565, 0.342753,
		0.147949, -0.406790, 0.901462,
		33.211563, 36.304504, 33.054359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698990, 36.923359, 32.689610>,  <33.107998, 36.589256, 32.423336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698990, 36.923359, 32.689610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654396, 36.567734, 32.867214>,  <33.627640, 36.354359, 32.973778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654396, 36.567734, 32.867214>,  <33.698990, 36.923359, 32.689610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654396, 36.567734, 32.867214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955987, -0.217969, -0.196413,
		0.271403, 0.402570, 0.874229,
		-0.111485, -0.889059, 0.444010,
		33.620949, 36.301018, 33.000416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224663, 36.774017, 33.073395>,  <33.698990, 36.923359, 32.689610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224663, 36.774017, 33.073395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.085117, 36.403488, 33.016518>,  <34.001389, 36.181171, 32.982391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.085117, 36.403488, 33.016518>,  <34.224663, 36.774017, 33.073395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085117, 36.403488, 33.016518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929164, -0.322092, -0.181412,
		0.122248, -0.195407, 0.973073,
		-0.348868, -0.926322, -0.142190,
		33.980457, 36.125591, 32.973862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849743, 36.345005, 33.133698>,  <34.224663, 36.774017, 33.073395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849743, 36.345005, 33.133698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598003, 36.082150, 32.967762>,  <34.446960, 35.924438, 32.868202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598003, 36.082150, 32.967762>,  <34.849743, 36.345005, 33.133698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598003, 36.082150, 32.967762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775633, -0.564182, -0.283006,
		-0.048071, -0.499872, 0.864764,
		-0.629351, -0.657135, -0.414838,
		34.409199, 35.885010, 32.843311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183022, 35.731007, 33.233906>,  <34.849743, 36.345005, 33.133698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183022, 35.731007, 33.233906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.914886, 35.646633, 32.949329>,  <34.754005, 35.596008, 32.778584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.914886, 35.646633, 32.949329>,  <35.183022, 35.731007, 33.233906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914886, 35.646633, 32.949329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705497, -0.478373, -0.522909,
		-0.230036, -0.852447, 0.469486,
		-0.670342, -0.210933, -0.711442,
		34.713783, 35.583355, 32.735897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140808, 34.940956, 33.149052>,  <35.183022, 35.731007, 33.233906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140808, 34.940956, 33.149052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.026783, 35.128841, 32.814838>,  <34.958366, 35.241573, 32.614311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.026783, 35.128841, 32.814838>,  <35.140808, 34.940956, 33.149052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026783, 35.128841, 32.814838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662113, -0.533801, -0.525987,
		-0.693070, -0.703153, -0.158838,
		-0.285061, 0.469715, -0.835528,
		34.941265, 35.269756, 32.564178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127728, 34.355888, 32.722279>,  <35.140808, 34.940956, 33.149052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127728, 34.355888, 32.722279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.102287, 34.664551, 32.469139>,  <35.087025, 34.849751, 32.317257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.102287, 34.664551, 32.469139>,  <35.127728, 34.355888, 32.722279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102287, 34.664551, 32.469139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592612, -0.481022, -0.646087,
		-0.802973, -0.416125, -0.426701,
		-0.063600, 0.771659, -0.632848,
		35.083206, 34.896049, 32.279285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048725, 34.086372, 31.984266>,  <35.127728, 34.355888, 32.722279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048725, 34.086372, 31.984266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.176178, 34.462120, 31.933569>,  <35.252651, 34.687569, 31.903151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.176178, 34.462120, 31.933569>,  <35.048725, 34.086372, 31.984266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176178, 34.462120, 31.933569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714046, -0.325814, -0.619664,
		-0.623386, 0.106947, -0.774566,
		0.318635, 0.939366, -0.126743,
		35.271770, 34.743931, 31.895546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160614, 34.106236, 31.319136>,  <35.048725, 34.086372, 31.984266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160614, 34.106236, 31.319136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.373810, 34.409500, 31.469397>,  <35.501728, 34.591457, 31.559553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.373810, 34.409500, 31.469397>,  <35.160614, 34.106236, 31.319136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373810, 34.409500, 31.469397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749711, -0.217352, -0.625053,
		-0.392241, 0.614778, -0.684247,
		0.532991, 0.758159, 0.375652,
		35.533707, 34.636948, 31.582092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277946, 34.576839, 30.802923>,  <35.160614, 34.106236, 31.319136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277946, 34.576839, 30.802923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560219, 34.634186, 31.080473>,  <35.729580, 34.668594, 31.247004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560219, 34.634186, 31.080473>,  <35.277946, 34.576839, 30.802923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560219, 34.634186, 31.080473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703992, -0.252573, -0.663779,
		0.080089, 0.956897, -0.279166,
		0.705678, 0.143370, 0.693876,
		35.771923, 34.677197, 31.288635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790077, 35.036285, 30.434645>,  <35.277946, 34.576839, 30.802923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790077, 35.036285, 30.434645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.958843, 34.872490, 30.758200>,  <36.060104, 34.774212, 30.952333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.958843, 34.872490, 30.758200>,  <35.790077, 35.036285, 30.434645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958843, 34.872490, 30.758200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801336, -0.248893, -0.543978,
		0.424082, 0.877706, 0.223129,
		0.421918, -0.409493, 0.808889,
		36.085419, 34.749641, 31.000866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436115, 35.435253, 30.659220>,  <35.790077, 35.036285, 30.434645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436115, 35.435253, 30.659220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.445015, 35.051155, 30.770529>,  <36.450356, 34.820698, 30.837315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.445015, 35.051155, 30.770529>,  <36.436115, 35.435253, 30.659220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445015, 35.051155, 30.770529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734940, -0.172987, -0.655696,
		0.677766, 0.219106, 0.701873,
		0.022252, -0.960244, 0.278275,
		36.451691, 34.763081, 30.854012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.915821, 31.129070, 46.787819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.548359, 31.169325, 46.635006>,  <40.327881, 31.193478, 46.543316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.548359, 31.169325, 46.635006>,  <40.915821, 31.129070, 46.787819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548359, 31.169325, 46.635006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368168, -0.568795, 0.735475,
		-0.143285, 0.816299, 0.559576,
		-0.918652, 0.100635, -0.382035,
		40.272762, 31.199516, 46.520397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453922, 31.598585, 47.156956>,  <40.915821, 31.129070, 46.787819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453922, 31.598585, 47.156956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239346, 31.313742, 46.975788>,  <40.110600, 31.142836, 46.867088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239346, 31.313742, 46.975788>,  <40.453922, 31.598585, 47.156956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239346, 31.313742, 46.975788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467855, -0.195727, 0.861860,
		-0.702386, 0.674235, -0.228168,
		-0.536438, -0.712108, -0.452920,
		40.078415, 31.100109, 46.839912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665791, 31.681625, 47.400383>,  <40.453922, 31.598585, 47.156956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665791, 31.681625, 47.400383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651695, 31.322374, 47.225052>,  <39.643238, 31.106825, 47.119854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651695, 31.322374, 47.225052>,  <39.665791, 31.681625, 47.400383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651695, 31.322374, 47.225052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508596, -0.361436, 0.781470,
		-0.860284, 0.250469, -0.444046,
		-0.035240, -0.898125, -0.438325,
		39.641125, 31.052937, 47.093555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035763, 31.400545, 47.636543>,  <39.665791, 31.681625, 47.400383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035763, 31.400545, 47.636543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229679, 31.079218, 47.498177>,  <39.346027, 30.886421, 47.415157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229679, 31.079218, 47.498177>,  <39.035763, 31.400545, 47.636543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229679, 31.079218, 47.498177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421042, -0.561003, 0.712740,
		-0.766617, -0.199884, -0.610200,
		0.484790, -0.803319, -0.345915,
		39.375114, 30.838223, 47.394402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544243, 30.848520, 47.559837>,  <39.035763, 31.400545, 47.636543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544243, 30.848520, 47.559837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861984, 30.607014, 47.586563>,  <39.052631, 30.462109, 47.602596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861984, 30.607014, 47.586563>,  <38.544243, 30.848520, 47.559837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861984, 30.607014, 47.586563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565492, -0.694829, 0.444333,
		-0.221853, -0.390739, -0.893367,
		0.794355, -0.603768, 0.066810,
		39.100292, 30.425884, 47.606606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229942, 30.246204, 47.431641>,  <38.544243, 30.848520, 47.559837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229942, 30.246204, 47.431641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588833, 30.152094, 47.581108>,  <38.804169, 30.095627, 47.670788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588833, 30.152094, 47.581108>,  <38.229942, 30.246204, 47.431641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588833, 30.152094, 47.581108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386603, -0.827437, 0.407291,
		0.213365, -0.509895, -0.833356,
		0.897225, -0.235276, 0.373673,
		38.858002, 30.081511, 47.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298054, 29.548759, 47.244949>,  <38.229942, 30.246204, 47.431641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298054, 29.548759, 47.244949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.544842, 29.614958, 47.552704>,  <38.692917, 29.654676, 47.737358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.544842, 29.614958, 47.552704>,  <38.298054, 29.548759, 47.244949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544842, 29.614958, 47.552704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468089, -0.708736, 0.527812,
		0.632643, -0.685787, -0.359804,
		0.616972, 0.165496, 0.769387,
		38.729935, 29.664606, 47.783520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612289, 28.930943, 47.543644>,  <38.298054, 29.548759, 47.244949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612289, 28.930943, 47.543644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639023, 29.181255, 47.854496>,  <38.655064, 29.331442, 48.041008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639023, 29.181255, 47.854496>,  <38.612289, 28.930943, 47.543644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639023, 29.181255, 47.854496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190370, -0.756567, 0.625593,
		0.979435, -0.189752, 0.068567,
		0.066832, 0.625780, 0.777131,
		38.659073, 29.368990, 48.087635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858292, 28.502319, 48.057133>,  <38.612289, 28.930943, 47.543644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858292, 28.502319, 48.057133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667076, 28.810759, 48.225365>,  <38.552345, 28.995821, 48.326305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667076, 28.810759, 48.225365>,  <38.858292, 28.502319, 48.057133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667076, 28.810759, 48.225365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467901, -0.628803, 0.621029,
		0.743335, 0.100087, 0.661389,
		-0.478040, 0.771097, 0.420580,
		38.523663, 29.042088, 48.351540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814251, 28.365856, 48.711182>,  <38.858292, 28.502319, 48.057133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814251, 28.365856, 48.711182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534698, 28.651140, 48.732681>,  <38.366966, 28.822311, 48.745579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534698, 28.651140, 48.732681>,  <38.814251, 28.365856, 48.711182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534698, 28.651140, 48.732681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415180, -0.465732, 0.781486,
		0.582396, 0.523854, 0.621604,
		-0.698885, 0.713212, 0.053747,
		38.325031, 28.865103, 48.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734425, 28.493397, 49.500343>,  <38.814251, 28.365856, 48.711182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734425, 28.493397, 49.500343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413288, 28.632544, 49.306667>,  <38.220608, 28.716032, 49.190464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413288, 28.632544, 49.306667>,  <38.734425, 28.493397, 49.500343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413288, 28.632544, 49.306667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590432, -0.351264, 0.726639,
		0.082698, 0.869253, 0.487402,
		-0.802840, 0.347869, -0.484185,
		38.172436, 28.736904, 49.161411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348480, 28.805113, 50.063541>,  <38.734425, 28.493397, 49.500343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348480, 28.805113, 50.063541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099888, 28.748796, 49.755272>,  <37.950733, 28.715008, 49.570309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099888, 28.748796, 49.755272>,  <38.348480, 28.805113, 50.063541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099888, 28.748796, 49.755272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708052, -0.320079, 0.629454,
		-0.335297, 0.936871, 0.099237,
		-0.621481, -0.140789, -0.770675,
		37.913445, 28.706560, 49.524071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783192, 29.233562, 50.175346>,  <38.348480, 28.805113, 50.063541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783192, 29.233562, 50.175346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708668, 28.899796, 49.967873>,  <37.663952, 28.699535, 49.843388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708668, 28.899796, 49.967873>,  <37.783192, 29.233562, 50.175346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708668, 28.899796, 49.967873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605399, -0.318298, 0.729506,
		-0.773809, 0.449927, -0.445853,
		-0.186310, -0.834417, -0.518687,
		37.652775, 28.649469, 49.812267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097454, 29.269209, 50.050865>,  <37.783192, 29.233562, 50.175346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097454, 29.269209, 50.050865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230885, 28.893135, 50.078537>,  <37.310944, 28.667492, 50.095139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230885, 28.893135, 50.078537>,  <37.097454, 29.269209, 50.050865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230885, 28.893135, 50.078537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645444, -0.174284, 0.743658,
		-0.687118, -0.292713, -0.664972,
		0.333572, -0.940183, 0.069177,
		37.330956, 28.611080, 50.099289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650097, 29.186144, 50.726627>,  <37.097454, 29.269209, 50.050865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650097, 29.186144, 50.726627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277157, 29.263487, 50.848831>,  <36.053394, 29.309893, 50.922153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277157, 29.263487, 50.848831>,  <36.650097, 29.186144, 50.726627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277157, 29.263487, 50.848831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056197, 0.757213, -0.650747,
		-0.357159, -0.623893, -0.695122,
		-0.932352, 0.193356, 0.305506,
		35.997452, 29.321493, 50.940483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232628, 29.159473, 50.225204>,  <36.650097, 29.186144, 50.726627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232628, 29.159473, 50.225204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092861, 29.434273, 50.480061>,  <36.009003, 29.599154, 50.632973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092861, 29.434273, 50.480061>,  <36.232628, 29.159473, 50.225204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092861, 29.434273, 50.480061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030562, 0.687992, -0.725075,
		-0.936470, -0.233879, -0.261390,
		-0.349414, 0.687000, 0.637136,
		35.988037, 29.640373, 50.671200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662716, 29.423244, 49.915916>,  <36.232628, 29.159473, 50.225204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662716, 29.423244, 49.915916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768753, 29.701658, 50.182827>,  <35.832375, 29.868708, 50.342976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768753, 29.701658, 50.182827>,  <35.662716, 29.423244, 49.915916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768753, 29.701658, 50.182827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038922, 0.699199, -0.713867,
		-0.963438, 0.163266, 0.212440,
		0.265088, 0.696036, 0.667280,
		35.848278, 29.910469, 50.383011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087021, 29.937946, 49.890705>,  <35.662716, 29.423244, 49.915916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087021, 29.937946, 49.890705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404900, 30.094156, 50.076588>,  <35.595627, 30.187881, 50.188118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404900, 30.094156, 50.076588>,  <35.087021, 29.937946, 49.890705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404900, 30.094156, 50.076588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066544, 0.816998, -0.572788,
		-0.603350, 0.424269, 0.675252,
		0.794695, 0.390525, 0.464703,
		35.643307, 30.211313, 50.216000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983864, 30.679411, 49.948269>,  <35.087021, 29.937946, 49.890705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983864, 30.679411, 49.948269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377621, 30.639502, 50.006248>,  <35.613876, 30.615557, 50.041035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377621, 30.639502, 50.006248>,  <34.983864, 30.679411, 49.948269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377621, 30.639502, 50.006248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170277, 0.747879, -0.641626,
		-0.044385, 0.656295, 0.753198,
		0.984396, -0.099773, 0.144946,
		35.672939, 30.609570, 50.049732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168709, 31.382961, 50.035736>,  <34.983864, 30.679411, 49.948269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168709, 31.382961, 50.035736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487587, 31.169140, 49.923500>,  <35.678913, 31.040848, 49.856159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487587, 31.169140, 49.923500>,  <35.168709, 31.382961, 50.035736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487587, 31.169140, 49.923500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321071, 0.768986, -0.552788,
		0.511262, 0.350593, 0.784663,
		0.797198, -0.534552, -0.280588,
		35.726746, 31.008774, 49.839325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704147, 31.897537, 50.000774>,  <35.168709, 31.382961, 50.035736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704147, 31.897537, 50.000774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852295, 31.584078, 49.801285>,  <35.941185, 31.396002, 49.681591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852295, 31.584078, 49.801285>,  <35.704147, 31.897537, 50.000774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852295, 31.584078, 49.801285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382266, 0.617918, -0.687058,
		0.846580, 0.063822, 0.528421,
		0.370370, -0.783648, -0.498720,
		35.963406, 31.348984, 49.651669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415733, 32.125614, 49.822979>,  <35.704147, 31.897537, 50.000774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415733, 32.125614, 49.822979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323116, 31.833378, 49.566036>,  <36.267548, 31.658035, 49.411869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323116, 31.833378, 49.566036>,  <36.415733, 32.125614, 49.822979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323116, 31.833378, 49.566036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494022, 0.480522, -0.724597,
		0.838053, -0.485111, 0.249670,
		-0.231538, -0.730593, -0.642358,
		36.253654, 31.614201, 49.373329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060822, 31.993177, 49.430508>,  <36.415733, 32.125614, 49.822979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060822, 31.993177, 49.430508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757301, 31.849684, 49.213055>,  <36.575191, 31.763588, 49.082581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757301, 31.849684, 49.213055>,  <37.060822, 31.993177, 49.430508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757301, 31.849684, 49.213055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368144, 0.452321, -0.812327,
		0.537309, -0.816525, -0.211152,
		-0.758794, -0.358737, -0.543635,
		36.529663, 31.742064, 49.049965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399502, 31.733368, 48.867950>,  <37.060822, 31.993177, 49.430508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399502, 31.733368, 48.867950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022179, 31.765293, 48.739082>,  <36.795784, 31.784449, 48.661762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022179, 31.765293, 48.739082>,  <37.399502, 31.733368, 48.867950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022179, 31.765293, 48.739082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316566, 0.508064, -0.801035,
		0.099747, -0.857613, -0.504530,
		-0.943312, 0.079816, -0.322169,
		36.739185, 31.789238, 48.642433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497513, 31.686995, 48.180550>,  <37.399502, 31.733368, 48.867950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497513, 31.686995, 48.180550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119663, 31.817860, 48.190804>,  <36.892956, 31.896378, 48.196957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119663, 31.817860, 48.190804>,  <37.497513, 31.686995, 48.180550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119663, 31.817860, 48.190804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152692, 0.507333, -0.848115,
		-0.290477, -0.797232, -0.529192,
		-0.944621, 0.327161, 0.025638,
		36.836277, 31.916008, 48.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235714, 31.564692, 47.438198>,  <37.497513, 31.686995, 48.180550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235714, 31.564692, 47.438198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997402, 31.827431, 47.623066>,  <36.854416, 31.985075, 47.733986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997402, 31.827431, 47.623066>,  <37.235714, 31.564692, 47.438198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997402, 31.827431, 47.623066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153955, 0.471370, -0.868394,
		-0.788255, -0.588524, -0.179707,
		-0.595779, 0.656849, 0.462166,
		36.818668, 32.024487, 47.761715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558727, 31.553869, 47.068787>,  <37.235714, 31.564692, 47.438198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558727, 31.553869, 47.068787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647038, 31.896164, 47.255962>,  <36.700024, 32.101540, 47.368267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647038, 31.896164, 47.255962>,  <36.558727, 31.553869, 47.068787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647038, 31.896164, 47.255962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001284, 0.480036, -0.877248,
		-0.975324, 0.193072, 0.107078,
		0.220774, 0.855739, 0.467943,
		36.713268, 32.152885, 47.396347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166756, 32.106045, 46.593441>,  <36.558727, 31.553869, 47.068787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166756, 32.106045, 46.593441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428204, 32.302814, 46.823498>,  <36.585072, 32.420876, 46.961533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428204, 32.302814, 46.823498>,  <36.166756, 32.106045, 46.593441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428204, 32.302814, 46.823498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304100, 0.525193, -0.794793,
		-0.693043, 0.694391, 0.193680,
		0.653617, 0.491927, 0.575146,
		36.624290, 32.450394, 46.996040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479603, 32.395542, 46.822586>,  <36.166756, 32.106045, 46.593441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479603, 32.395542, 46.822586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107372, 32.471195, 46.697201>,  <34.884033, 32.516586, 46.621967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107372, 32.471195, 46.697201>,  <35.479603, 32.395542, 46.822586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107372, 32.471195, 46.697201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365881, -0.450652, 0.814275,
		0.012738, 0.872435, 0.488564,
		-0.930574, 0.189129, -0.313468,
		34.828201, 32.527935, 46.603161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127720, 32.655132, 47.431038>,  <35.479603, 32.395542, 46.822586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127720, 32.655132, 47.431038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860973, 32.516441, 47.167202>,  <34.700924, 32.433228, 47.008900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860973, 32.516441, 47.167202>,  <35.127720, 32.655132, 47.431038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860973, 32.516441, 47.167202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508926, -0.434639, 0.743023,
		-0.544314, 0.831183, 0.113387,
		-0.666871, -0.346732, -0.659591,
		34.660912, 32.412422, 46.969326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439629, 32.876671, 47.639935>,  <35.127720, 32.655132, 47.431038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439629, 32.876671, 47.639935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396175, 32.558926, 47.400875>,  <34.370102, 32.368279, 47.257439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396175, 32.558926, 47.400875>,  <34.439629, 32.876671, 47.639935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396175, 32.558926, 47.400875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596428, -0.428891, 0.678473,
		-0.795281, 0.430158, -0.427190,
		-0.108632, -0.794365, -0.597648,
		34.363586, 32.320618, 47.221581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761932, 32.648903, 47.707867>,  <34.439629, 32.876671, 47.639935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761932, 32.648903, 47.707867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928822, 32.329998, 47.533375>,  <34.028957, 32.138657, 47.428680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928822, 32.329998, 47.533375>,  <33.761932, 32.648903, 47.707867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928822, 32.329998, 47.533375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516256, -0.602955, 0.608214,
		-0.747932, -0.028559, -0.663161,
		0.417227, -0.797264, -0.436225,
		34.053989, 32.090820, 47.402508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160378, 32.055851, 47.677380>,  <33.761932, 32.648903, 47.707867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160378, 32.055851, 47.677380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521736, 31.888136, 47.641445>,  <33.738552, 31.787506, 47.619884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521736, 31.888136, 47.641445>,  <33.160378, 32.055851, 47.677380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521736, 31.888136, 47.641445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268189, -0.715947, 0.644589,
		-0.334586, -0.558227, -0.759233,
		0.903398, -0.419288, -0.089835,
		33.792755, 31.762350, 47.614494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034401, 31.417751, 47.682217>,  <33.160378, 32.055851, 47.677380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034401, 31.417751, 47.682217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420109, 31.413950, 47.788116>,  <33.651535, 31.411669, 47.851654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420109, 31.413950, 47.788116>,  <33.034401, 31.417751, 47.682217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420109, 31.413950, 47.788116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212003, -0.626953, 0.749657,
		0.158860, -0.778999, -0.606567,
		0.964271, -0.009504, 0.264748,
		33.709389, 31.411098, 47.867542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311985, 30.767925, 47.591263>,  <33.034401, 31.417751, 47.682217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311985, 30.767925, 47.591263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533760, 30.940788, 47.875751>,  <33.666824, 31.044506, 48.046444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533760, 30.940788, 47.875751>,  <33.311985, 30.767925, 47.591263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533760, 30.940788, 47.875751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252908, -0.726691, 0.638716,
		0.792864, -0.534003, -0.293612,
		0.554441, 0.432158, 0.711221,
		33.700092, 31.070436, 48.089119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386406, 30.038551, 47.350510>,  <33.311985, 30.767925, 47.591263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386406, 30.038551, 47.350510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075375, 29.829681, 47.210392>,  <32.888756, 29.704359, 47.126320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075375, 29.829681, 47.210392>,  <33.386406, 30.038551, 47.350510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075375, 29.829681, 47.210392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107150, 0.438908, -0.892120,
		0.619588, -0.731228, -0.285334,
		-0.777579, -0.522174, -0.350293,
		32.842102, 29.673029, 47.105305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590260, 29.508909, 46.800159>,  <33.386406, 30.038551, 47.350510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590260, 29.508909, 46.800159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200394, 29.590378, 46.763176>,  <32.966473, 29.639259, 46.740986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200394, 29.590378, 46.763176>,  <33.590260, 29.508909, 46.800159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200394, 29.590378, 46.763176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148978, 0.282802, -0.947538,
		-0.166840, -0.937305, -0.305980,
		-0.974664, 0.203672, -0.092455,
		32.907993, 29.651480, 46.735439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370724, 29.163603, 46.202713>,  <33.590260, 29.508909, 46.800159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370724, 29.163603, 46.202713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.070427, 29.427437, 46.217316>,  <32.890247, 29.585737, 46.226078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.070427, 29.427437, 46.217316>,  <33.370724, 29.163603, 46.202713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070427, 29.427437, 46.217316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119950, 0.190460, -0.974339,
		-0.649613, -0.727098, -0.222104,
		-0.750742, 0.659585, 0.036510,
		32.845203, 29.625313, 46.228268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095146, 29.081247, 45.591667>,  <33.370724, 29.163603, 46.202713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095146, 29.081247, 45.591667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945499, 29.432716, 45.710308>,  <32.855713, 29.643599, 45.781494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945499, 29.432716, 45.710308>,  <33.095146, 29.081247, 45.591667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945499, 29.432716, 45.710308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170611, 0.379581, -0.909291,
		-0.911555, -0.289573, -0.291917,
		-0.374112, 0.878673, 0.296604,
		32.833267, 29.696318, 45.799290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586533, 29.290804, 45.050014>,  <33.095146, 29.081247, 45.591667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586533, 29.290804, 45.050014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655884, 29.628819, 45.252342>,  <32.697495, 29.831627, 45.373737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655884, 29.628819, 45.252342>,  <32.586533, 29.290804, 45.050014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655884, 29.628819, 45.252342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000191, 0.513627, -0.858014,
		-0.984855, 0.148666, 0.089214,
		0.173381, 0.845036, 0.505820,
		32.707897, 29.882330, 45.404087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131550, 29.662659, 44.830688>,  <32.586533, 29.290804, 45.050014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131550, 29.662659, 44.830688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401901, 29.928131, 44.958885>,  <32.564114, 30.087416, 45.035805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401901, 29.928131, 44.958885>,  <32.131550, 29.662659, 44.830688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401901, 29.928131, 44.958885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118960, 0.527386, -0.841256,
		-0.727349, 0.530462, 0.435401,
		0.675879, 0.663682, 0.320490,
		32.604664, 30.127235, 45.055031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735378, 30.224600, 44.644161>,  <32.131550, 29.662659, 44.830688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735378, 30.224600, 44.644161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118805, 30.333544, 44.677551>,  <32.348862, 30.398911, 44.697586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118805, 30.333544, 44.677551>,  <31.735378, 30.224600, 44.644161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118805, 30.333544, 44.677551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068535, 0.504914, -0.860444,
		-0.276496, 0.819074, 0.502661,
		0.958568, 0.272360, 0.083472,
		32.406376, 30.415251, 44.702591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.482830, 26.597633, 48.694111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.648251, 26.933420, 48.835121>,  <36.747501, 27.134892, 48.919727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.648251, 26.933420, 48.835121>,  <36.482830, 26.597633, 48.694111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648251, 26.933420, 48.835121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316015, 0.495455, -0.809110,
		-0.853879, 0.223206, 0.470180,
		0.413552, 0.839466, 0.352523,
		36.772316, 27.185261, 48.940880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114338, 27.107235, 48.383709>,  <36.482830, 26.597633, 48.694111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114338, 27.107235, 48.383709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455288, 27.270918, 48.513939>,  <36.659859, 27.369127, 48.592075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455288, 27.270918, 48.513939>,  <36.114338, 27.107235, 48.383709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455288, 27.270918, 48.513939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030024, 0.583277, -0.811719,
		-0.522061, 0.701667, 0.484887,
		0.852380, 0.409208, 0.325572,
		36.711002, 27.393681, 48.611610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047428, 27.871265, 48.246437>,  <36.114338, 27.107235, 48.383709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047428, 27.871265, 48.246437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425587, 27.743103, 48.270325>,  <36.652481, 27.666206, 48.284657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425587, 27.743103, 48.270325>,  <36.047428, 27.871265, 48.246437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425587, 27.743103, 48.270325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213868, 0.471604, -0.855482,
		0.245939, 0.821541, 0.514377,
		0.945397, -0.320405, 0.059715,
		36.709206, 27.646982, 48.288239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464333, 28.450342, 48.049648>,  <36.047428, 27.871265, 48.246437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464333, 28.450342, 48.049648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.697227, 28.133551, 47.976147>,  <36.836964, 27.943476, 47.932045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.697227, 28.133551, 47.976147>,  <36.464333, 28.450342, 48.049648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697227, 28.133551, 47.976147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394445, 0.472810, -0.787949,
		0.710920, 0.386294, 0.587681,
		0.582242, -0.791977, -0.183758,
		36.871899, 27.895958, 47.921021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100639, 28.692093, 47.811447>,  <36.464333, 28.450342, 48.049648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100639, 28.692093, 47.811447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.114368, 28.311356, 47.689583>,  <37.122608, 28.082912, 47.616463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.114368, 28.311356, 47.689583>,  <37.100639, 28.692093, 47.811447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114368, 28.311356, 47.689583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375894, 0.294752, -0.878535,
		0.926027, -0.084363, 0.367910,
		0.034327, -0.951842, -0.304660,
		37.124668, 28.025803, 47.598186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742359, 28.664173, 47.515896>,  <37.100639, 28.692093, 47.811447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742359, 28.664173, 47.515896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550201, 28.354437, 47.351158>,  <37.434906, 28.168594, 47.252316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550201, 28.354437, 47.351158>,  <37.742359, 28.664173, 47.515896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550201, 28.354437, 47.351158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468165, 0.170684, -0.866999,
		0.741648, -0.609315, 0.280524,
		-0.480395, -0.774340, -0.411847,
		37.406082, 28.122135, 47.227604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222588, 28.456169, 47.123432>,  <37.742359, 28.664173, 47.515896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222588, 28.456169, 47.123432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.915951, 28.240753, 46.983536>,  <37.731968, 28.111504, 46.899597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.915951, 28.240753, 46.983536>,  <38.222588, 28.456169, 47.123432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915951, 28.240753, 46.983536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442076, -0.047580, -0.895715,
		0.465739, -0.841255, 0.274551,
		-0.766587, -0.538541, -0.349739,
		37.685974, 28.079191, 46.878613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470779, 28.028839, 46.605774>,  <38.222588, 28.456169, 47.123432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470779, 28.028839, 46.605774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.079636, 28.067316, 46.531433>,  <37.844952, 28.090403, 46.486828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.079636, 28.067316, 46.531433>,  <38.470779, 28.028839, 46.605774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079636, 28.067316, 46.531433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195499, 0.103013, -0.975279,
		-0.074672, -0.990017, -0.119539,
		-0.977857, 0.096196, -0.185855,
		37.786278, 28.096174, 46.475677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282967, 27.569338, 46.036854>,  <38.470779, 28.028839, 46.605774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282967, 27.569338, 46.036854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.988213, 27.839638, 46.029144>,  <37.811359, 28.001818, 46.024517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.988213, 27.839638, 46.029144>,  <38.282967, 27.569338, 46.036854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988213, 27.839638, 46.029144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156524, 0.142803, -0.977296,
		-0.657653, -0.723168, -0.211000,
		-0.736880, 0.675748, -0.019278,
		37.767147, 28.042362, 46.023361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872875, 27.367701, 45.447472>,  <38.282967, 27.569338, 46.036854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872875, 27.367701, 45.447472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803749, 27.755205, 45.518620>,  <37.762276, 27.987707, 45.561306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803749, 27.755205, 45.518620>,  <37.872875, 27.367701, 45.447472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803749, 27.755205, 45.518620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045186, 0.188191, -0.981092,
		-0.983918, -0.161508, -0.076297,
		-0.172812, 0.968762, 0.177867,
		37.751904, 28.045834, 45.571980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401024, 27.508150, 44.966152>,  <37.872875, 27.367701, 45.447472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401024, 27.508150, 44.966152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516186, 27.872286, 45.085075>,  <37.585285, 28.090767, 45.156429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516186, 27.872286, 45.085075>,  <37.401024, 27.508150, 44.966152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516186, 27.872286, 45.085075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092967, 0.335552, -0.937423,
		-0.953135, 0.242251, 0.181240,
		0.287907, 0.910340, 0.297305,
		37.602558, 28.145388, 45.174267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016060, 28.019697, 44.563126>,  <37.401024, 27.508150, 44.966152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016060, 28.019697, 44.563126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.326218, 28.227440, 44.706810>,  <37.512310, 28.352085, 44.793022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.326218, 28.227440, 44.706810>,  <37.016060, 28.019697, 44.563126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326218, 28.227440, 44.706810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152867, 0.397546, -0.904759,
		-0.612698, 0.756455, 0.228861,
		0.775392, 0.519358, 0.359213,
		37.558834, 28.383247, 44.814575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315048, 28.476837, 44.674702>,  <37.016060, 28.019697, 44.563126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315048, 28.476837, 44.674702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118572, 28.418583, 44.331184>,  <36.000687, 28.383631, 44.125076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118572, 28.418583, 44.331184>,  <36.315048, 28.476837, 44.674702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118572, 28.418583, 44.331184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750323, -0.430036, 0.502081,
		-0.442432, 0.890988, 0.101955,
		-0.491192, -0.145638, -0.858790,
		35.971214, 28.374891, 44.073547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692825, 28.848051, 44.638676>,  <36.315048, 28.476837, 44.674702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692825, 28.848051, 44.638676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.641121, 28.518230, 44.418346>,  <35.610100, 28.320337, 44.286148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.641121, 28.518230, 44.418346>,  <35.692825, 28.848051, 44.638676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641121, 28.518230, 44.418346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718935, -0.304650, 0.624757,
		-0.682952, 0.476764, -0.553419,
		-0.129262, -0.824551, -0.550824,
		35.602341, 28.270864, 44.253098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964771, 28.853182, 44.480824>,  <35.692825, 28.848051, 44.638676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964771, 28.853182, 44.480824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.108612, 28.486216, 44.412666>,  <35.194916, 28.266035, 44.371773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.108612, 28.486216, 44.412666>,  <34.964771, 28.853182, 44.480824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108612, 28.486216, 44.412666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757461, -0.393646, 0.520860,
		-0.544920, -0.058236, -0.836463,
		0.359603, -0.917416, -0.170394,
		35.216492, 28.210991, 44.361549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384079, 28.537123, 44.410885>,  <34.964771, 28.853182, 44.480824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384079, 28.537123, 44.410885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646019, 28.245144, 44.489220>,  <34.803185, 28.069958, 44.536221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646019, 28.245144, 44.489220>,  <34.384079, 28.537123, 44.410885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646019, 28.245144, 44.489220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667400, -0.436950, 0.603036,
		-0.354612, -0.525600, -0.773302,
		0.654849, -0.729945, 0.195838,
		34.842472, 28.026161, 44.547970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053108, 27.870256, 44.309002>,  <34.384079, 28.537123, 44.410885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053108, 27.870256, 44.309002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371365, 27.805756, 44.542568>,  <34.562317, 27.767056, 44.682709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371365, 27.805756, 44.542568>,  <34.053108, 27.870256, 44.309002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371365, 27.805756, 44.542568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579520, -0.483317, 0.656172,
		0.176408, -0.860467, -0.477993,
		0.795636, -0.161252, 0.583918,
		34.610054, 27.757380, 44.717743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935333, 27.118528, 44.391972>,  <34.053108, 27.870256, 44.309002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935333, 27.118528, 44.391972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.209270, 27.231852, 44.660519>,  <34.373631, 27.299845, 44.821648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.209270, 27.231852, 44.660519>,  <33.935333, 27.118528, 44.391972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209270, 27.231852, 44.660519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426381, -0.591345, 0.684478,
		0.590927, -0.755015, -0.284179,
		0.684839, 0.283307, 0.671366,
		34.414722, 27.316843, 44.861927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295799, 26.506838, 44.751442>,  <33.935333, 27.118528, 44.391972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295799, 26.506838, 44.751442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321289, 26.828630, 44.987663>,  <34.336582, 27.021706, 45.129395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321289, 26.828630, 44.987663>,  <34.295799, 26.506838, 44.751442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321289, 26.828630, 44.987663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443137, -0.507403, 0.739034,
		0.894186, -0.308788, 0.324162,
		0.063724, 0.804482, 0.590549,
		34.340405, 27.069975, 45.164829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351635, 26.256237, 45.471184>,  <34.295799, 26.506838, 44.751442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351635, 26.256237, 45.471184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298580, 26.641998, 45.562691>,  <34.266747, 26.873455, 45.617596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298580, 26.641998, 45.562691>,  <34.351635, 26.256237, 45.471184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298580, 26.641998, 45.562691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377455, -0.262566, 0.888024,
		0.916480, 0.031436, 0.398844,
		-0.132639, 0.964402, 0.228770,
		34.258789, 26.931318, 45.631321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697308, 26.363924, 46.058784>,  <34.351635, 26.256237, 45.471184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697308, 26.363924, 46.058784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.413990, 26.645132, 46.033230>,  <34.243999, 26.813858, 46.017899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.413990, 26.645132, 46.033230>,  <34.697308, 26.363924, 46.058784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413990, 26.645132, 46.033230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298693, -0.216468, 0.929475,
		0.639612, 0.677423, 0.363311,
		-0.708293, 0.703022, -0.063886,
		34.201504, 26.856039, 46.014065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721329, 26.815948, 46.720860>,  <34.697308, 26.363924, 46.058784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721329, 26.815948, 46.720860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366283, 26.846989, 46.539253>,  <34.153255, 26.865614, 46.430290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366283, 26.846989, 46.539253>,  <34.721329, 26.815948, 46.720860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366283, 26.846989, 46.539253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454047, -0.313047, 0.834172,
		-0.077393, 0.946562, 0.313099,
		-0.887610, 0.077602, -0.454011,
		34.099998, 26.870270, 46.403049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326187, 27.182980, 47.172840>,  <34.721329, 26.815948, 46.720860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326187, 27.182980, 47.172840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092602, 26.970297, 46.927475>,  <33.952450, 26.842688, 46.780254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092602, 26.970297, 46.927475>,  <34.326187, 27.182980, 47.172840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092602, 26.970297, 46.927475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521934, -0.332827, 0.785373,
		-0.621748, 0.778790, -0.083156,
		-0.583965, -0.531706, -0.613412,
		33.917412, 26.810785, 46.743450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666969, 27.228973, 47.489124>,  <34.326187, 27.182980, 47.172840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666969, 27.228973, 47.489124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.608669, 26.924030, 47.236912>,  <33.573689, 26.741064, 47.085587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.608669, 26.924030, 47.236912>,  <33.666969, 27.228973, 47.489124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608669, 26.924030, 47.236912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374014, -0.547574, 0.748516,
		-0.915899, 0.344923, -0.205324,
		-0.145750, -0.762359, -0.630528,
		33.564945, 26.695322, 47.047752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033253, 27.077589, 47.592018>,  <33.666969, 27.228973, 47.489124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033253, 27.077589, 47.592018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191448, 26.747667, 47.430386>,  <33.286366, 26.549713, 47.333405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191448, 26.747667, 47.430386>,  <33.033253, 27.077589, 47.592018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191448, 26.747667, 47.430386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520564, -0.563758, 0.641241,
		-0.756705, -0.043253, -0.652324,
		0.395489, -0.824807, -0.404083,
		33.310097, 26.500225, 47.309162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383457, 26.619061, 47.514351>,  <33.033253, 27.077589, 47.592018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383457, 26.619061, 47.514351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713493, 26.394777, 47.486557>,  <32.911514, 26.260208, 47.469879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713493, 26.394777, 47.486557>,  <32.383457, 26.619061, 47.514351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713493, 26.394777, 47.486557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451181, -0.727911, 0.516315,
		-0.340084, -0.394656, -0.853575,
		0.825093, -0.560708, -0.069490,
		32.961021, 26.226564, 47.465710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648905, 26.825491, 48.016830>,  <32.383457, 26.619061, 47.514351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648905, 26.825491, 48.016830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.668379, 27.108158, 48.299175>,  <31.680063, 27.277760, 48.468582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.668379, 27.108158, 48.299175>,  <31.648905, 26.825491, 48.016830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668379, 27.108158, 48.299175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247016, 0.676233, -0.694040,
		-0.967788, 0.208150, -0.141635,
		0.048686, 0.706670, 0.705867,
		31.682985, 27.320160, 48.510937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377384, 27.414570, 47.638035>,  <31.648905, 26.825491, 48.016830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377384, 27.414570, 47.638035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.599976, 27.526272, 47.951046>,  <31.733530, 27.593294, 48.138851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.599976, 27.526272, 47.951046>,  <31.377384, 27.414570, 47.638035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599976, 27.526272, 47.951046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265611, 0.832610, -0.486015,
		-0.787262, 0.478305, 0.389157,
		0.556479, 0.279257, 0.782526,
		31.766920, 27.610048, 48.185802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370947, 28.114691, 47.704544>,  <31.377384, 27.414570, 47.638035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370947, 28.114691, 47.704544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.688187, 28.080410, 47.945759>,  <31.878531, 28.059841, 48.090488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.688187, 28.080410, 47.945759>,  <31.370947, 28.114691, 47.704544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688187, 28.080410, 47.945759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361289, 0.863267, -0.352478,
		-0.490370, 0.497419, 0.715620,
		0.793100, -0.085701, 0.603032,
		31.926117, 28.054699, 48.126667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415625, 28.759007, 47.811539>,  <31.370947, 28.114691, 47.704544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415625, 28.759007, 47.811539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.757261, 28.585136, 47.925793>,  <31.962244, 28.480814, 47.994343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.757261, 28.585136, 47.925793>,  <31.415625, 28.759007, 47.811539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757261, 28.585136, 47.925793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508786, 0.812252, -0.285277,
		-0.108002, 0.388979, 0.914894,
		0.854092, -0.434674, 0.285632,
		32.013489, 28.454735, 48.011482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721807, 29.310888, 48.240829>,  <31.415625, 28.759007, 47.811539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721807, 29.310888, 48.240829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951683, 29.033468, 48.067062>,  <32.089607, 28.867016, 47.962803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951683, 29.033468, 48.067062>,  <31.721807, 29.310888, 48.240829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951683, 29.033468, 48.067062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466022, 0.713702, -0.522927,
		0.672721, 0.098073, 0.733368,
		0.574691, -0.693550, -0.434418,
		32.124092, 28.825403, 47.936737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398296, 29.580624, 48.310417>,  <31.721807, 29.310888, 48.240829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398296, 29.580624, 48.310417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.373600, 29.309473, 48.017384>,  <32.358780, 29.146784, 47.841564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.373600, 29.309473, 48.017384>,  <32.398296, 29.580624, 48.310417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373600, 29.309473, 48.017384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408626, 0.652479, -0.638197,
		0.910611, -0.338756, 0.236710,
		-0.061745, -0.677875, -0.732579,
		32.355076, 29.106110, 47.797611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983143, 29.882982, 47.918938>,  <32.398296, 29.580624, 48.310417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983143, 29.882982, 47.918938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784431, 29.626333, 47.685173>,  <32.665207, 29.472343, 47.544914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784431, 29.626333, 47.685173>,  <32.983143, 29.882982, 47.918938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784431, 29.626333, 47.685173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235185, 0.548658, -0.802286,
		0.835406, -0.536000, -0.121659,
		-0.496774, -0.641622, -0.584412,
		32.635399, 29.433847, 47.509850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531918, 30.260532, 48.075485>,  <32.983143, 29.882982, 47.918938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531918, 30.260532, 48.075485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624981, 30.569201, 48.312263>,  <33.680817, 30.754400, 48.454330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624981, 30.569201, 48.312263>,  <33.531918, 30.260532, 48.075485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624981, 30.569201, 48.312263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115938, -0.582301, 0.804664,
		0.965624, -0.255839, -0.046010,
		0.232656, 0.771669, 0.591945,
		33.694778, 30.800701, 48.489845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031532, 30.007545, 48.579334>,  <33.531918, 30.260532, 48.075485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031532, 30.007545, 48.579334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894062, 30.343021, 48.748325>,  <33.811581, 30.544308, 48.849720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894062, 30.343021, 48.748325>,  <34.031532, 30.007545, 48.579334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894062, 30.343021, 48.748325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046949, -0.464659, 0.884244,
		0.937914, 0.284059, 0.199068,
		-0.343677, 0.838691, 0.422474,
		33.790958, 30.594629, 48.875069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301907, 29.966410, 49.251335>,  <34.031532, 30.007545, 48.579334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301907, 29.966410, 49.251335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.000065, 30.227461, 49.278610>,  <33.818962, 30.384092, 49.294975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.000065, 30.227461, 49.278610>,  <34.301907, 29.966410, 49.251335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000065, 30.227461, 49.278610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090876, -0.206861, 0.974141,
		0.649860, 0.728892, 0.215406,
		-0.754602, 0.652630, 0.068192,
		33.773685, 30.423250, 49.299068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371922, 30.241762, 49.935318>,  <34.301907, 29.966410, 49.251335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371922, 30.241762, 49.935318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998856, 30.292580, 49.800266>,  <33.775017, 30.323071, 49.719234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998856, 30.292580, 49.800266>,  <34.371922, 30.241762, 49.935318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998856, 30.292580, 49.800266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360730, -0.335606, 0.870197,
		-0.002755, 0.933396, 0.358837,
		-0.932666, 0.127045, -0.337628,
		33.719055, 30.330694, 49.698978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093227, 30.587465, 50.461411>,  <34.371922, 30.241762, 49.935318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093227, 30.587465, 50.461411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.794117, 30.432709, 50.245579>,  <33.614651, 30.339855, 50.116081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.794117, 30.432709, 50.245579>,  <34.093227, 30.587465, 50.461411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794117, 30.432709, 50.245579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374298, -0.425582, 0.823881,
		-0.548386, 0.818043, 0.173428,
		-0.747779, -0.386891, -0.539576,
		33.569782, 30.316641, 50.083706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578621, 30.729403, 50.756451>,  <34.093227, 30.587465, 50.461411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578621, 30.729403, 50.756451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.435143, 30.424055, 50.541561>,  <33.349056, 30.240847, 50.412628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.435143, 30.424055, 50.541561>,  <33.578621, 30.729403, 50.756451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435143, 30.424055, 50.541561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397198, -0.395998, 0.827901,
		-0.844731, 0.510349, -0.161165,
		-0.358697, -0.763368, -0.537221,
		33.327534, 30.195045, 50.380394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825825, 30.586231, 50.895363>,  <33.578621, 30.729403, 50.756451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825825, 30.586231, 50.895363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985065, 30.252922, 50.741913>,  <33.080612, 30.052937, 50.649841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985065, 30.252922, 50.741913>,  <32.825825, 30.586231, 50.895363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985065, 30.252922, 50.741913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501112, -0.547828, 0.669904,
		-0.768374, -0.074453, -0.635656,
		0.398106, -0.833272, -0.383628,
		33.104496, 30.002941, 50.626823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240314, 30.081663, 50.858734>,  <32.825825, 30.586231, 50.895363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240314, 30.081663, 50.858734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565292, 29.849976, 50.832088>,  <32.760281, 29.710964, 50.816101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565292, 29.849976, 50.832088>,  <32.240314, 30.081663, 50.858734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565292, 29.849976, 50.832088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383235, -0.616639, 0.687668,
		-0.439388, -0.533163, -0.722963,
		0.812447, -0.579217, -0.066617,
		32.809025, 29.676210, 50.812103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020950, 29.319897, 50.791000>,  <32.240314, 30.081663, 50.858734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020950, 29.319897, 50.791000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370300, 29.382774, 50.975395>,  <32.579910, 29.420502, 51.086033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370300, 29.382774, 50.975395>,  <32.020950, 29.319897, 50.791000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370300, 29.382774, 50.975395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297880, -0.576433, 0.760916,
		0.385339, -0.801882, -0.456617,
		0.873374, 0.157194, 0.460986,
		32.632313, 29.429932, 51.113689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.195446, 36.010571, 37.226906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570110, 36.015774, 37.366905>,  <37.794907, 36.018894, 37.450905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570110, 36.015774, 37.366905>,  <37.195446, 36.010571, 37.226906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570110, 36.015774, 37.366905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324941, -0.340661, 0.882249,
		0.130705, -0.940096, -0.314858,
		0.936659, 0.013004, 0.350001,
		37.851109, 36.019676, 37.471905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379128, 35.356361, 37.505703>,  <37.195446, 36.010571, 37.226906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379128, 35.356361, 37.505703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626133, 35.603596, 37.700291>,  <37.774334, 35.751938, 37.817043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626133, 35.603596, 37.700291>,  <37.379128, 35.356361, 37.505703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626133, 35.603596, 37.700291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508985, -0.157524, 0.846239,
		0.599680, -0.770164, 0.217326,
		0.617509, 0.618088, 0.486466,
		37.811386, 35.789021, 37.846230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442356, 35.088612, 38.188377>,  <37.379128, 35.356361, 37.505703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442356, 35.088612, 38.188377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534657, 35.476128, 38.224617>,  <37.590034, 35.708637, 38.246361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534657, 35.476128, 38.224617>,  <37.442356, 35.088612, 38.188377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534657, 35.476128, 38.224617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463743, 0.027641, 0.885538,
		0.855393, -0.246351, 0.455646,
		0.230748, 0.968786, 0.090600,
		37.603882, 35.766762, 38.251797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749001, 35.112522, 38.757915>,  <37.442356, 35.088612, 38.188377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749001, 35.112522, 38.757915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660191, 35.500099, 38.714371>,  <37.606907, 35.732647, 38.688244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660191, 35.500099, 38.714371>,  <37.749001, 35.112522, 38.757915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660191, 35.500099, 38.714371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445867, -0.001602, 0.895098,
		0.867127, 0.247267, 0.432377,
		-0.222021, 0.968946, -0.108859,
		37.593586, 35.790783, 38.681713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751682, 35.431770, 39.438446>,  <37.749001, 35.112522, 38.757915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751682, 35.431770, 39.438446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533180, 35.691044, 39.226234>,  <37.402077, 35.846607, 39.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533180, 35.691044, 39.226234>,  <37.751682, 35.431770, 39.438446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533180, 35.691044, 39.226234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727411, -0.053069, 0.684146,
		0.415299, 0.759631, 0.500487,
		-0.546259, 0.648185, -0.530525,
		37.369301, 35.885498, 39.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729904, 35.965252, 39.920795>,  <37.751682, 35.431770, 39.438446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729904, 35.965252, 39.920795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434193, 35.985252, 39.652180>,  <37.256763, 35.997253, 39.491013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434193, 35.985252, 39.652180>,  <37.729904, 35.965252, 39.920795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434193, 35.985252, 39.652180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672539, -0.004534, 0.740048,
		0.033958, 0.998739, 0.036980,
		-0.739282, 0.050001, -0.671537,
		37.212406, 36.000252, 39.450718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268120, 36.470409, 40.294445>,  <37.729904, 35.965252, 39.920795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268120, 36.470409, 40.294445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038002, 36.292480, 40.019878>,  <36.899929, 36.185722, 39.855137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038002, 36.292480, 40.019878>,  <37.268120, 36.470409, 40.294445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038002, 36.292480, 40.019878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722341, -0.117416, 0.681496,
		-0.383739, 0.887890, -0.253762,
		-0.575298, -0.444820, -0.686416,
		36.865414, 36.159035, 39.813953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661572, 36.672916, 40.381016>,  <37.268120, 36.470409, 40.294445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661572, 36.672916, 40.381016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564278, 36.326286, 40.206715>,  <36.505901, 36.118309, 40.102135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564278, 36.326286, 40.206715>,  <36.661572, 36.672916, 40.381016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564278, 36.326286, 40.206715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684631, -0.164856, 0.710002,
		-0.687109, 0.471023, -0.553190,
		-0.243231, -0.866579, -0.435751,
		36.491310, 36.066311, 40.075989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962173, 36.650661, 40.472332>,  <36.661572, 36.672916, 40.381016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962173, 36.650661, 40.472332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046299, 36.275291, 40.362701>,  <36.096775, 36.050068, 40.296925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046299, 36.275291, 40.362701>,  <35.962173, 36.650661, 40.472332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046299, 36.275291, 40.362701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770470, -0.331671, 0.544399,
		-0.601784, 0.096673, -0.792787,
		0.210316, -0.938429, -0.274078,
		36.109394, 35.993763, 40.280479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302135, 36.360649, 40.503613>,  <35.962173, 36.650661, 40.472332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302135, 36.360649, 40.503613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547806, 36.045048, 40.497169>,  <35.695210, 35.855686, 40.493301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547806, 36.045048, 40.497169>,  <35.302135, 36.360649, 40.503613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547806, 36.045048, 40.497169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593364, -0.475151, 0.649732,
		-0.520297, -0.389490, -0.759993,
		0.614175, -0.789005, -0.016110,
		35.732059, 35.808346, 40.492336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919971, 35.676815, 40.267784>,  <35.302135, 36.360649, 40.503613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919971, 35.676815, 40.267784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243561, 35.590221, 40.486397>,  <35.437714, 35.538265, 40.617565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243561, 35.590221, 40.486397>,  <34.919971, 35.676815, 40.267784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243561, 35.590221, 40.486397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586109, -0.368398, 0.721637,
		0.045118, -0.904112, -0.424907,
		0.808975, -0.216483, 0.546529,
		35.486252, 35.525276, 40.650356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789776, 35.022663, 40.555973>,  <34.919971, 35.676815, 40.267784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789776, 35.022663, 40.555973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090992, 35.145664, 40.788651>,  <35.271721, 35.219463, 40.928257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090992, 35.145664, 40.788651>,  <34.789776, 35.022663, 40.555973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090992, 35.145664, 40.788651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427127, -0.444012, 0.787665,
		0.500489, -0.841603, -0.203017,
		0.753043, 0.307504, 0.581694,
		35.316906, 35.237915, 40.963158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657959, 34.262016, 40.275208>,  <34.789776, 35.022663, 40.555973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657959, 34.262016, 40.275208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325367, 34.061512, 40.179401>,  <34.125813, 33.941208, 40.121918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325367, 34.061512, 40.179401>,  <34.657959, 34.262016, 40.275208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325367, 34.061512, 40.179401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049389, 0.496123, -0.866846,
		0.553351, -0.708938, -0.437275,
		-0.831483, -0.501267, -0.239517,
		34.075920, 33.911133, 40.107548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835861, 33.870205, 39.642555>,  <34.657959, 34.262016, 40.275208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835861, 33.870205, 39.642555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452305, 33.973141, 39.690414>,  <34.222172, 34.034901, 39.719128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452305, 33.973141, 39.690414>,  <34.835861, 33.870205, 39.642555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452305, 33.973141, 39.690414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041538, 0.544330, -0.837842,
		-0.280733, -0.798426, -0.532640,
		-0.958887, 0.257335, 0.119646,
		34.164639, 34.050343, 39.726307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552261, 33.727268, 39.109245>,  <34.835861, 33.870205, 39.642555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552261, 33.727268, 39.109245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310448, 33.998886, 39.275833>,  <34.165359, 34.161858, 39.375786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310448, 33.998886, 39.275833>,  <34.552261, 33.727268, 39.109245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310448, 33.998886, 39.275833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001636, 0.521756, -0.853093,
		-0.796580, -0.516403, -0.314306,
		-0.604531, 0.679042, 0.416465,
		34.129089, 34.202599, 39.400772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961555, 33.738415, 38.664036>,  <34.552261, 33.727268, 39.109245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961555, 33.738415, 38.664036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926586, 34.071491, 38.882751>,  <33.905605, 34.271339, 39.013981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926586, 34.071491, 38.882751>,  <33.961555, 33.738415, 38.664036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926586, 34.071491, 38.882751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155218, 0.530799, -0.833163,
		-0.984004, -0.157709, 0.082846,
		-0.087423, 0.832695, 0.546788,
		33.900360, 34.321301, 39.046787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389221, 34.071304, 38.447533>,  <33.961555, 33.738415, 38.664036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389221, 34.071304, 38.447533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601761, 34.360729, 38.623768>,  <33.729286, 34.534386, 38.729507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601761, 34.360729, 38.623768>,  <33.389221, 34.071304, 38.447533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601761, 34.360729, 38.623768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177432, 0.603601, -0.777292,
		-0.828363, 0.334840, 0.449108,
		0.531350, 0.723566, 0.440589,
		33.761166, 34.577801, 38.755943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980862, 34.654282, 38.417553>,  <33.389221, 34.071304, 38.447533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980862, 34.654282, 38.417553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365288, 34.749863, 38.473076>,  <33.595943, 34.807209, 38.506390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365288, 34.749863, 38.473076>,  <32.980862, 34.654282, 38.417553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365288, 34.749863, 38.473076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027694, 0.583051, -0.811963,
		-0.274947, 0.776502, 0.566965,
		0.961061, 0.238948, 0.138803,
		33.653606, 34.821548, 38.514717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060863, 35.360332, 38.090351>,  <32.980862, 34.654282, 38.417553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060863, 35.360332, 38.090351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429951, 35.214355, 38.139996>,  <33.651402, 35.126770, 38.169781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429951, 35.214355, 38.139996>,  <33.060863, 35.360332, 38.090351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429951, 35.214355, 38.139996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322947, 0.556099, -0.765807,
		0.210462, 0.746705, 0.630981,
		0.922720, -0.364946, 0.124108,
		33.706768, 35.104870, 38.177227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374046, 35.990807, 38.000702>,  <33.060863, 35.360332, 38.090351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374046, 35.990807, 38.000702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626225, 35.685997, 37.941547>,  <33.777531, 35.503113, 37.906055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626225, 35.685997, 37.941547>,  <33.374046, 35.990807, 38.000702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626225, 35.685997, 37.941547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342004, 0.443704, -0.828348,
		0.696834, 0.471648, 0.540343,
		0.630441, -0.762020, -0.147882,
		33.815357, 35.457390, 37.897182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021976, 36.325130, 37.755909>,  <33.374046, 35.990807, 38.000702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021976, 36.325130, 37.755909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052429, 35.940254, 37.651299>,  <34.070702, 35.709328, 37.588531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052429, 35.940254, 37.651299>,  <34.021976, 36.325130, 37.755909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052429, 35.940254, 37.651299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337758, 0.271669, -0.901174,
		0.938149, -0.019723, 0.345671,
		0.076135, -0.962189, -0.261527,
		34.075268, 35.651596, 37.572842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693130, 36.259392, 37.363911>,  <34.021976, 36.325130, 37.755909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693130, 36.259392, 37.363911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488106, 35.944736, 37.226227>,  <34.365093, 35.755943, 37.143616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488106, 35.944736, 37.226227>,  <34.693130, 36.259392, 37.363911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488106, 35.944736, 37.226227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225472, 0.263496, -0.937941,
		0.828520, -0.558358, 0.042308,
		-0.512559, -0.786642, -0.344205,
		34.334339, 35.708744, 37.122967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127068, 35.984505, 36.837456>,  <34.693130, 36.259392, 37.363911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127068, 35.984505, 36.837456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752747, 35.868809, 36.756836>,  <34.528156, 35.799393, 36.708466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752747, 35.868809, 36.756836>,  <35.127068, 35.984505, 36.837456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752747, 35.868809, 36.756836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058975, 0.435216, -0.898393,
		0.347564, -0.852602, -0.390217,
		-0.935799, -0.289236, -0.201547,
		34.472008, 35.782036, 36.696373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107403, 35.813271, 36.095402>,  <35.127068, 35.984505, 36.837456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107403, 35.813271, 36.095402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714973, 35.824921, 36.171974>,  <34.479515, 35.831909, 36.217918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714973, 35.824921, 36.171974>,  <35.107403, 35.813271, 36.095402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714973, 35.824921, 36.171974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158011, 0.451036, -0.878407,
		-0.111924, -0.892030, -0.437898,
		-0.981074, 0.029122, 0.191432,
		34.420650, 35.833656, 36.229404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418629, 35.211029, 36.302010>,  <35.107403, 35.813271, 36.095402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418629, 35.211029, 36.302010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511330, 35.252979, 35.915169>,  <35.566952, 35.278149, 35.683064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511330, 35.252979, 35.915169>,  <35.418629, 35.211029, 36.302010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511330, 35.252979, 35.915169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476486, -0.878980, 0.018865,
		-0.848087, -0.465184, -0.253677,
		0.231753, 0.104874, -0.967105,
		35.580856, 35.284443, 35.625038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487106, 34.605751, 36.135948>,  <35.418629, 35.211029, 36.302010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487106, 34.605751, 36.135948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675205, 34.805153, 35.844646>,  <35.788063, 34.924793, 35.669865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675205, 34.805153, 35.844646>,  <35.487106, 34.605751, 36.135948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675205, 34.805153, 35.844646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593680, -0.789255, -0.156910,
		-0.653002, -0.358565, -0.667098,
		0.470248, 0.498506, -0.728257,
		35.816280, 34.954704, 35.626167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571217, 34.097656, 35.491951>,  <35.487106, 34.605751, 36.135948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571217, 34.097656, 35.491951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844925, 34.389233, 35.500084>,  <36.009151, 34.564178, 35.504963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844925, 34.389233, 35.500084>,  <35.571217, 34.097656, 35.491951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844925, 34.389233, 35.500084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719382, -0.670207, -0.182517,
		-0.119420, 0.139515, -0.982992,
		0.684272, 0.728943, 0.020328,
		36.050205, 34.607914, 35.506184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292835, 33.813881, 34.748909>,  <35.571217, 34.097656, 35.491951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292835, 33.813881, 34.748909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606331, 33.574032, 34.813667>,  <35.794430, 33.430122, 34.852524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606331, 33.574032, 34.813667>,  <35.292835, 33.813881, 34.748909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606331, 33.574032, 34.813667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346181, -0.205314, 0.915426,
		-0.515669, -0.773499, -0.368490,
		0.783737, -0.599621, 0.161897,
		35.841454, 33.394146, 34.862236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041512, 33.069080, 35.006386>,  <35.292835, 33.813881, 34.748909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041512, 33.069080, 35.006386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417587, 33.155102, 35.112057>,  <35.643234, 33.206715, 35.175461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417587, 33.155102, 35.112057>,  <35.041512, 33.069080, 35.006386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417587, 33.155102, 35.112057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114311, -0.531369, 0.839393,
		0.320893, -0.819389, -0.475006,
		0.940192, 0.215056, 0.264178,
		35.699646, 33.219620, 35.191311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504261, 32.415802, 35.077698>,  <35.041512, 33.069080, 35.006386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504261, 32.415802, 35.077698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653690, 32.717960, 35.293037>,  <35.743347, 32.899254, 35.422241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653690, 32.717960, 35.293037>,  <35.504261, 32.415802, 35.077698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653690, 32.717960, 35.293037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003002, -0.581350, 0.813648,
		0.927597, -0.302338, -0.219443,
		0.373570, 0.755396, 0.538351,
		35.765762, 32.944580, 35.454544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986275, 32.102921, 35.604389>,  <35.504261, 32.415802, 35.077698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986275, 32.102921, 35.604389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941914, 32.467049, 35.763901>,  <35.915298, 32.685524, 35.859608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941914, 32.467049, 35.763901>,  <35.986275, 32.102921, 35.604389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941914, 32.467049, 35.763901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035482, -0.404623, 0.913795,
		0.993198, 0.087191, 0.077172,
		-0.110900, 0.910318, 0.398777,
		35.908642, 32.740143, 35.883533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480427, 32.140198, 36.243176>,  <35.986275, 32.102921, 35.604389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480427, 32.140198, 36.243176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202766, 32.424568, 36.288342>,  <36.036171, 32.595188, 36.315441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202766, 32.424568, 36.288342>,  <36.480427, 32.140198, 36.243176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202766, 32.424568, 36.288342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090905, -0.242179, 0.965964,
		0.714069, 0.660257, 0.232735,
		-0.694148, 0.710922, 0.112912,
		35.994522, 32.637844, 36.322216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737026, 32.510532, 36.822861>,  <36.480427, 32.140198, 36.243176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737026, 32.510532, 36.822861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349552, 32.603085, 36.786835>,  <36.117069, 32.658615, 36.765217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349552, 32.603085, 36.786835>,  <36.737026, 32.510532, 36.822861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349552, 32.603085, 36.786835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125910, -0.145115, 0.981371,
		0.214000, 0.961980, 0.169704,
		-0.968685, 0.231381, -0.090068,
		36.058949, 32.672501, 36.759815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587284, 33.103935, 37.288815>,  <36.737026, 32.510532, 36.822861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587284, 33.103935, 37.288815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233429, 32.928577, 37.225288>,  <36.021114, 32.823364, 37.187172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233429, 32.928577, 37.225288>,  <36.587284, 33.103935, 37.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233429, 32.928577, 37.225288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146233, -0.062563, 0.987270,
		-0.442747, 0.896604, -0.008762,
		-0.884642, -0.438392, -0.158813,
		35.968037, 32.797058, 37.177643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109303, 33.462940, 37.665424>,  <36.587284, 33.103935, 37.288815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109303, 33.462940, 37.665424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947567, 33.106644, 37.582386>,  <35.850525, 32.892868, 37.532562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947567, 33.106644, 37.582386>,  <36.109303, 33.462940, 37.665424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947567, 33.106644, 37.582386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247878, -0.111758, 0.962324,
		-0.880378, 0.440564, -0.175606,
		-0.404340, -0.890738, -0.207595,
		35.826263, 32.839424, 37.520107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498138, 33.473255, 37.980934>,  <36.109303, 33.462940, 37.665424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498138, 33.473255, 37.980934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602669, 33.090977, 37.926731>,  <35.665386, 32.861610, 37.894211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602669, 33.090977, 37.926731>,  <35.498138, 33.473255, 37.980934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602669, 33.090977, 37.926731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206109, -0.192398, 0.959428,
		-0.942989, -0.222793, -0.247255,
		0.261325, -0.955691, -0.135509,
		35.681065, 32.804268, 37.886078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075027, 33.177078, 38.422005>,  <35.498138, 33.473255, 37.980934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075027, 33.177078, 38.422005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339455, 32.887993, 38.341335>,  <35.498112, 32.714542, 38.292934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339455, 32.887993, 38.341335>,  <35.075027, 33.177078, 38.422005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339455, 32.887993, 38.341335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014243, -0.256641, 0.966402,
		-0.750191, -0.641730, -0.159363,
		0.661069, -0.722716, -0.201669,
		35.537777, 32.671177, 38.280834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813667, 32.636692, 38.727074>,  <35.075027, 33.177078, 38.422005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813667, 32.636692, 38.727074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190742, 32.519344, 38.663494>,  <35.416988, 32.448936, 38.625347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190742, 32.519344, 38.663494>,  <34.813667, 32.636692, 38.727074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190742, 32.519344, 38.663494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006688, -0.459672, 0.888064,
		-0.333597, -0.838233, -0.431367,
		0.942692, -0.293370, -0.158951,
		35.473549, 32.431332, 38.615810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798096, 31.932640, 39.035183>,  <34.813667, 32.636692, 38.727074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798096, 31.932640, 39.035183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189610, 32.008709, 39.004677>,  <35.424519, 32.054352, 38.986374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189610, 32.008709, 39.004677>,  <34.798096, 31.932640, 39.035183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189610, 32.008709, 39.004677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178755, -0.610619, 0.771486,
		0.100143, -0.768751, -0.631658,
		0.978784, 0.190172, -0.076269,
		35.483246, 32.065762, 38.981796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186783, 31.302059, 38.965855>,  <34.798096, 31.932640, 39.035183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186783, 31.302059, 38.965855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414421, 31.582840, 39.137154>,  <35.551003, 31.751308, 39.239933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414421, 31.582840, 39.137154>,  <35.186783, 31.302059, 38.965855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414421, 31.582840, 39.137154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190081, -0.619008, 0.762035,
		0.800002, -0.352267, -0.485701,
		0.569093, 0.701952, 0.428248,
		35.585148, 31.793427, 39.265629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733246, 30.942575, 39.308701>,  <35.186783, 31.302059, 38.965855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733246, 30.942575, 39.308701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730000, 31.305790, 39.476227>,  <35.728054, 31.523720, 39.576740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730000, 31.305790, 39.476227>,  <35.733246, 30.942575, 39.308701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730000, 31.305790, 39.476227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207229, -0.408206, 0.889058,
		0.978259, 0.094003, -0.184860,
		-0.008113, 0.908037, 0.418811,
		35.727566, 31.578201, 39.601871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456921, 31.080231, 39.538071>,  <35.733246, 30.942575, 39.308701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456921, 31.080231, 39.538071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208649, 31.333714, 39.722752>,  <36.059685, 31.485804, 39.833561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208649, 31.333714, 39.722752>,  <36.456921, 31.080231, 39.538071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208649, 31.333714, 39.722752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277367, -0.373321, 0.885267,
		0.733367, 0.677528, 0.055942,
		-0.620678, 0.633709, 0.461705,
		36.022446, 31.523827, 39.861263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760262, 31.370430, 40.105389>,  <36.456921, 31.080231, 39.538071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760262, 31.370430, 40.105389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371426, 31.397955, 40.195107>,  <36.138123, 31.414471, 40.248936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371426, 31.397955, 40.195107>,  <36.760262, 31.370430, 40.105389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371426, 31.397955, 40.195107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199739, -0.258762, 0.945064,
		0.123072, 0.963487, 0.237795,
		-0.972089, 0.068814, 0.224292,
		36.079800, 31.418600, 40.262394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718342, 31.761250, 40.733074>,  <36.760262, 31.370430, 40.105389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718342, 31.761250, 40.733074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365917, 31.577475, 40.688103>,  <36.154461, 31.467209, 40.661121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365917, 31.577475, 40.688103>,  <36.718342, 31.761250, 40.733074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365917, 31.577475, 40.688103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014190, -0.211910, 0.977186,
		-0.472782, 0.862560, 0.180187,
		-0.881065, -0.459439, -0.112427,
		36.101597, 31.439642, 40.654373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393898, 31.782349, 41.320217>,  <36.718342, 31.761250, 40.733074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393898, 31.782349, 41.320217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189472, 31.473709, 41.168720>,  <36.066818, 31.288525, 41.077820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189472, 31.473709, 41.168720>,  <36.393898, 31.782349, 41.320217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189472, 31.473709, 41.168720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025139, -0.453866, 0.890715,
		-0.859175, 0.445691, 0.251351,
		-0.511063, -0.771599, -0.378746,
		36.036152, 31.242229, 41.055096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007374, 31.656645, 41.860363>,  <36.393898, 31.782349, 41.320217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007374, 31.656645, 41.860363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987732, 31.342449, 41.613594>,  <35.975945, 31.153933, 41.465534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987732, 31.342449, 41.613594>,  <36.007374, 31.656645, 41.860363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987732, 31.342449, 41.613594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005836, -0.617884, 0.786248,
		-0.998776, 0.035011, 0.034928,
		-0.049109, -0.785490, -0.616923,
		35.973000, 31.106802, 41.428516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523861, 31.252153, 42.203579>,  <36.007374, 31.656645, 41.860363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523861, 31.252153, 42.203579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743889, 31.011618, 41.971783>,  <35.875908, 30.867296, 41.832706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743889, 31.011618, 41.971783>,  <35.523861, 31.252153, 42.203579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743889, 31.011618, 41.971783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013050, -0.687628, 0.725946,
		-0.835015, -0.406886, -0.370398,
		0.550073, -0.601342, -0.579489,
		35.908913, 30.831215, 41.797935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164677, 30.655960, 42.286793>,  <35.523861, 31.252153, 42.203579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164677, 30.655960, 42.286793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528442, 30.536606, 42.170906>,  <35.746700, 30.464993, 42.101372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528442, 30.536606, 42.170906>,  <35.164677, 30.655960, 42.286793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528442, 30.536606, 42.170906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054520, -0.776129, 0.628213,
		-0.412308, -0.555509, -0.722088,
		0.909412, -0.298386, -0.289718,
		35.801266, 30.447090, 42.083992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023727, 29.936361, 42.060421>,  <35.164677, 30.655960, 42.286793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023727, 29.936361, 42.060421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417007, 29.995398, 42.103363>,  <35.652977, 30.030819, 42.129128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417007, 29.995398, 42.103363>,  <35.023727, 29.936361, 42.060421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417007, 29.995398, 42.103363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061501, -0.821759, 0.566507,
		0.171832, -0.550390, -0.817034,
		0.983205, 0.147592, 0.107354,
		35.711967, 30.039675, 42.135571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318481, 29.262444, 41.926765>,  <35.023727, 29.936361, 42.060421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318481, 29.262444, 41.926765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610149, 29.436392, 42.138123>,  <35.785152, 29.540760, 42.264935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610149, 29.436392, 42.138123>,  <35.318481, 29.262444, 41.926765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610149, 29.436392, 42.138123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066498, -0.813500, 0.577751,
		0.681090, -0.386144, -0.622100,
		0.729173, 0.434869, 0.528389,
		35.828903, 29.566853, 42.296638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908543, 28.812296, 41.981987>,  <35.318481, 29.262444, 41.926765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908543, 28.812296, 41.981987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941891, 29.061892, 42.292778>,  <35.961899, 29.211649, 42.479252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941891, 29.061892, 42.292778>,  <35.908543, 28.812296, 41.981987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941891, 29.061892, 42.292778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054830, -0.775635, 0.628796,
		0.995009, -0.095023, -0.030450,
		0.083369, 0.623988, 0.776974,
		35.966900, 29.249088, 42.525871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421608, 28.559921, 42.358391>,  <35.908543, 28.812296, 41.981987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421608, 28.559921, 42.358391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247437, 28.798452, 42.628147>,  <36.142933, 28.941572, 42.790001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247437, 28.798452, 42.628147>,  <36.421608, 28.559921, 42.358391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247437, 28.798452, 42.628147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228646, -0.651306, 0.723548,
		0.870704, 0.469246, 0.147247,
		-0.435425, 0.596329, 0.674387,
		36.116810, 28.977350, 42.830463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854984, 28.498251, 43.001736>,  <36.421608, 28.559921, 42.358391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854984, 28.498251, 43.001736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501961, 28.656700, 43.103062>,  <36.290146, 28.751770, 43.163857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501961, 28.656700, 43.103062>,  <36.854984, 28.498251, 43.001736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501961, 28.656700, 43.103062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001196, -0.540636, 0.841256,
		0.470194, 0.742158, 0.477618,
		-0.882562, 0.396125, 0.253316,
		36.237190, 28.775537, 43.179058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974560, 28.652948, 43.679306>,  <36.854984, 28.498251, 43.001736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974560, 28.652948, 43.679306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584877, 28.604799, 43.602966>,  <36.351067, 28.575911, 43.557163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584877, 28.604799, 43.602966>,  <36.974560, 28.652948, 43.679306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584877, 28.604799, 43.602966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075968, -0.621474, 0.779743,
		-0.212469, 0.774133, 0.596302,
		-0.974210, -0.120371, -0.190853,
		36.292614, 28.568687, 43.545712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000195, 28.970793, 44.340157>,  <36.974560, 28.652948, 43.679306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000195, 28.970793, 44.340157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376198, 28.893400, 44.452549>,  <37.601799, 28.846964, 44.519985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376198, 28.893400, 44.452549>,  <37.000195, 28.970793, 44.340157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376198, 28.893400, 44.452549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341093, 0.548596, -0.763347,
		-0.006453, 0.813393, 0.581679,
		0.940007, -0.193481, 0.280983,
		37.658199, 28.835356, 44.536842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362755, 29.610510, 44.353249>,  <37.000195, 28.970793, 44.340157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362755, 29.610510, 44.353249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634140, 29.323690, 44.289345>,  <37.796970, 29.151598, 44.251003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634140, 29.323690, 44.289345>,  <37.362755, 29.610510, 44.353249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634140, 29.323690, 44.289345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395323, 0.539655, -0.743299,
		0.619196, 0.441148, 0.649604,
		0.678466, -0.717050, -0.159756,
		37.837681, 29.108576, 44.241417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780800, 30.035919, 43.950127>,  <37.362755, 29.610510, 44.353249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780800, 30.035919, 43.950127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926422, 29.664759, 43.917973>,  <38.013798, 29.442062, 43.898682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926422, 29.664759, 43.917973>,  <37.780800, 30.035919, 43.950127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926422, 29.664759, 43.917973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492873, 0.265167, -0.828711,
		0.790276, 0.262082, 0.553874,
		0.364059, -0.927901, -0.080382,
		38.035641, 29.386389, 43.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519386, 30.106894, 43.899033>,  <37.780800, 30.035919, 43.950127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519386, 30.106894, 43.899033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425709, 29.750748, 43.742878>,  <38.369503, 29.537060, 43.649185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425709, 29.750748, 43.742878>,  <38.519386, 30.106894, 43.899033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425709, 29.750748, 43.742878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418720, 0.270023, -0.867041,
		0.877397, -0.366521, 0.309575,
		-0.234197, -0.890365, -0.390387,
		38.355450, 29.483639, 43.625763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207096, 29.903263, 43.658543>,  <38.519386, 30.106894, 43.899033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207096, 29.903263, 43.658543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911404, 29.724058, 43.457417>,  <38.733986, 29.616535, 43.336742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911404, 29.724058, 43.457417>,  <39.207096, 29.903263, 43.658543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911404, 29.724058, 43.457417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349923, 0.382399, -0.855175,
		0.575403, -0.808120, -0.125912,
		-0.739233, -0.448011, -0.502813,
		38.689632, 29.589655, 43.306572>
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
