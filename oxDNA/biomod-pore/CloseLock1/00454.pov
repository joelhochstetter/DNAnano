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
	<24.468695, 35.141514, 34.608574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273272, 34.905983, 34.866131>,  <24.156017, 34.764664, 35.020664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273272, 34.905983, 34.866131>,  <24.468695, 35.141514, 34.608574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273272, 34.905983, 34.866131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567179, -0.346457, -0.747178,
		0.663037, -0.730243, -0.164703,
		-0.488559, -0.588823, 0.643892,
		24.126703, 34.729336, 35.059299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.474457, 35.078346, 35.319870>,  <24.468695, 35.141514, 34.608574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.474457, 35.078346, 35.319870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323202, 34.712151, 35.374844>,  <24.232449, 34.492432, 35.407829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323202, 34.712151, 35.374844>,  <24.474457, 35.078346, 35.319870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323202, 34.712151, 35.374844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653772, -0.158974, 0.739803,
		-0.655433, 0.369601, 0.658636,
		-0.378138, -0.915490, 0.137438,
		24.209761, 34.437504, 35.416077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270515, 34.962601, 35.993820>,  <24.474457, 35.078346, 35.319870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270515, 34.962601, 35.993820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410498, 34.639996, 35.803215>,  <24.494488, 34.446434, 35.688850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410498, 34.639996, 35.803215>,  <24.270515, 34.962601, 35.993820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.410498, 34.639996, 35.803215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756457, -0.056737, 0.651578,
		-0.552542, -0.588486, 0.590238,
		0.349957, -0.806514, -0.476514,
		24.515484, 34.398041, 35.660259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177380, 34.323139, 36.369297>,  <24.270515, 34.962601, 35.993820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177380, 34.323139, 36.369297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505466, 34.368126, 36.144939>,  <24.702318, 34.395119, 36.010326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505466, 34.368126, 36.144939>,  <24.177380, 34.323139, 36.369297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505466, 34.368126, 36.144939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558781, 0.052488, 0.827653,
		0.122522, -0.992268, -0.019792,
		0.820215, 0.112465, -0.560892,
		24.751532, 34.401867, 35.976673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604366, 33.745293, 36.453934>,  <24.177380, 34.323139, 36.369297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604366, 33.745293, 36.453934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814960, 34.074089, 36.367088>,  <24.941317, 34.271366, 36.314980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814960, 34.074089, 36.367088>,  <24.604366, 33.745293, 36.453934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814960, 34.074089, 36.367088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461063, -0.061492, 0.885234,
		0.714307, -0.566166, -0.411366,
		0.526485, 0.821995, -0.217114,
		24.972906, 34.320686, 36.301952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301580, 33.680332, 36.470188>,  <24.604366, 33.745293, 36.453934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301580, 33.680332, 36.470188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268204, 34.071922, 36.544647>,  <25.248178, 34.306877, 36.589325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268204, 34.071922, 36.544647>,  <25.301580, 33.680332, 36.470188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268204, 34.071922, 36.544647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728261, -0.067601, 0.681958,
		0.680201, 0.192471, -0.707306,
		-0.083442, 0.978971, 0.186152,
		25.243172, 34.365612, 36.600494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952126, 33.946629, 36.574684>,  <25.301580, 33.680332, 36.470188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952126, 33.946629, 36.574684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749231, 34.246323, 36.745033>,  <25.627495, 34.426140, 36.847244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749231, 34.246323, 36.745033>,  <25.952126, 33.946629, 36.574684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749231, 34.246323, 36.745033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746375, 0.134855, 0.651720,
		0.430858, 0.648434, -0.627610,
		-0.507234, 0.749231, 0.425871,
		25.597061, 34.471092, 36.872795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094131, 34.711407, 36.463257>,  <25.952126, 33.946629, 36.574684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094131, 34.711407, 36.463257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368351, 34.617111, 36.187737>,  <26.532883, 34.560532, 36.022423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368351, 34.617111, 36.187737>,  <26.094131, 34.711407, 36.463257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368351, 34.617111, 36.187737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685440, 0.527844, 0.501551,
		0.245343, -0.815970, 0.523450,
		0.685551, -0.235741, -0.688801,
		26.574017, 34.546391, 35.981094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633879, 34.657524, 36.849079>,  <26.094131, 34.711407, 36.463257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633879, 34.657524, 36.849079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780144, 34.706844, 36.480061>,  <26.867903, 34.736435, 36.258652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780144, 34.706844, 36.480061>,  <26.633879, 34.657524, 36.849079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780144, 34.706844, 36.480061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772398, 0.512842, 0.374693,
		0.519321, -0.849582, 0.092287,
		0.365661, 0.123303, -0.922545,
		26.889843, 34.743835, 36.203297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356230, 34.503407, 36.856083>,  <26.633879, 34.657524, 36.849079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356230, 34.503407, 36.856083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297392, 34.731190, 36.532581>,  <27.262089, 34.867859, 36.338482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297392, 34.731190, 36.532581>,  <27.356230, 34.503407, 36.856083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297392, 34.731190, 36.532581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765302, 0.583529, 0.271677,
		0.626639, -0.578978, -0.521639,
		-0.147097, 0.569455, -0.808755,
		27.253263, 34.902027, 36.289955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046764, 34.650501, 36.488235>,  <27.356230, 34.503407, 36.856083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046764, 34.650501, 36.488235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802557, 34.938694, 36.356678>,  <27.656033, 35.111610, 36.277744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802557, 34.938694, 36.356678>,  <28.046764, 34.650501, 36.488235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802557, 34.938694, 36.356678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725029, 0.675552, 0.134024,
		0.318744, -0.156630, -0.934810,
		-0.610521, 0.720483, -0.328890,
		27.619400, 35.154839, 36.258011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486761, 35.118034, 36.265404>,  <28.046764, 34.650501, 36.488235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486761, 35.118034, 36.265404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153067, 35.338177, 36.279045>,  <27.952850, 35.470261, 36.287228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153067, 35.338177, 36.279045>,  <28.486761, 35.118034, 36.265404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153067, 35.338177, 36.279045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509328, 0.745405, 0.430066,
		0.211268, 0.376145, -0.902153,
		-0.834237, 0.550351, 0.034101,
		27.902796, 35.503281, 36.289276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605810, 35.826748, 35.943974>,  <28.486761, 35.118034, 36.265404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605810, 35.826748, 35.943974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282963, 35.888313, 36.171963>,  <28.089254, 35.925255, 36.308758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282963, 35.888313, 36.171963>,  <28.605810, 35.826748, 35.943974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282963, 35.888313, 36.171963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323960, 0.922557, 0.209617,
		-0.493568, 0.353834, -0.794476,
		-0.807119, 0.153918, 0.569972,
		28.040827, 35.934490, 36.342953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484495, 36.559719, 35.831982>,  <28.605810, 35.826748, 35.943974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484495, 36.559719, 35.831982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301859, 36.472706, 36.177052>,  <28.192278, 36.420498, 36.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301859, 36.472706, 36.177052>,  <28.484495, 36.559719, 35.831982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301859, 36.472706, 36.177052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475034, 0.760250, 0.443129,
		-0.752243, 0.612127, -0.243784,
		-0.456588, -0.217535, 0.862674,
		28.164883, 36.407444, 36.435852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408577, 37.195602, 36.142834>,  <28.484495, 36.559719, 35.831982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408577, 37.195602, 36.142834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308708, 36.974564, 36.460903>,  <28.248787, 36.841942, 36.651745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308708, 36.974564, 36.460903>,  <28.408577, 37.195602, 36.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308708, 36.974564, 36.460903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344655, 0.716690, 0.606274,
		-0.904918, 0.425430, 0.011518,
		-0.249673, -0.552598, 0.795173,
		28.233807, 36.808784, 36.699455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944731, 37.622120, 36.591488>,  <28.408577, 37.195602, 36.142834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944731, 37.622120, 36.591488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134607, 37.344379, 36.807838>,  <28.248533, 37.177734, 36.937649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134607, 37.344379, 36.807838>,  <27.944731, 37.622120, 36.591488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134607, 37.344379, 36.807838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309829, 0.707013, 0.635719,
		-0.823817, -0.134192, 0.550744,
		0.474691, -0.694352, 0.540873,
		28.277016, 37.136074, 36.970100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898886, 37.713631, 37.273407>,  <27.944731, 37.622120, 36.591488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898886, 37.713631, 37.273407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241610, 37.507427, 37.277916>,  <28.447245, 37.383705, 37.280621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241610, 37.507427, 37.277916>,  <27.898886, 37.713631, 37.273407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241610, 37.507427, 37.277916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430410, 0.727063, 0.534907,
		-0.283942, -0.453464, 0.844836,
		0.856810, -0.515509, 0.011268,
		28.498653, 37.352776, 37.281296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110088, 37.807819, 37.998020>,  <27.898886, 37.713631, 37.273407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110088, 37.807819, 37.998020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441082, 37.658268, 37.830456>,  <28.639679, 37.568539, 37.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441082, 37.658268, 37.830456>,  <28.110088, 37.807819, 37.998020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441082, 37.658268, 37.830456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560554, 0.593128, 0.577909,
		0.032399, -0.713032, 0.700383,
		0.827484, -0.373879, -0.418910,
		28.689327, 37.546104, 37.704784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545469, 37.846035, 38.495407>,  <28.110088, 37.807819, 37.998020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545469, 37.846035, 38.495407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799074, 37.756134, 38.199432>,  <28.951237, 37.702194, 38.021847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799074, 37.756134, 38.199432>,  <28.545469, 37.846035, 38.495407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799074, 37.756134, 38.199432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716352, 0.531142, 0.452468,
		0.291319, -0.816929, 0.497755,
		0.634013, -0.224755, -0.739941,
		28.989279, 37.688709, 37.977451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187847, 37.615253, 38.770206>,  <28.545469, 37.846035, 38.495407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187847, 37.615253, 38.770206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296055, 37.734413, 38.404022>,  <29.360979, 37.805908, 38.184311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296055, 37.734413, 38.404022>,  <29.187847, 37.615253, 38.770206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296055, 37.734413, 38.404022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703031, 0.588511, 0.399252,
		0.657699, -0.751604, -0.050231,
		0.270518, 0.297902, -0.915464,
		29.377211, 37.823784, 38.129383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862925, 37.442905, 38.667873>,  <29.187847, 37.615253, 38.770206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862925, 37.442905, 38.667873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774065, 37.749893, 38.427326>,  <29.720749, 37.934086, 38.282997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774065, 37.749893, 38.427326>,  <29.862925, 37.442905, 38.667873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774065, 37.749893, 38.427326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822919, 0.478381, 0.306522,
		0.522929, -0.426784, -0.737835,
		-0.222148, 0.767467, -0.601368,
		29.707420, 37.980133, 38.246914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498127, 37.591991, 38.510635>,  <29.862925, 37.442905, 38.667873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498127, 37.591991, 38.510635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284891, 37.908009, 38.389542>,  <30.156950, 38.097618, 38.316887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284891, 37.908009, 38.389542>,  <30.498127, 37.591991, 38.510635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284891, 37.908009, 38.389542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786268, 0.594738, 0.167539,
		0.312410, -0.148716, -0.938234,
		-0.533088, 0.790044, -0.302733,
		30.124966, 38.145023, 38.298721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988989, 38.102039, 38.339226>,  <30.498127, 37.591991, 38.510635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988989, 38.102039, 38.339226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682699, 38.359295, 38.336521>,  <30.498926, 38.513649, 38.334900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682699, 38.359295, 38.336521>,  <30.988989, 38.102039, 38.339226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682699, 38.359295, 38.336521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590402, 0.707032, 0.389270,
		0.255134, 0.294081, -0.921099,
		-0.765723, 0.643134, -0.006762,
		30.452982, 38.552235, 38.334492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111811, 38.715675, 37.931297>,  <30.988989, 38.102039, 38.339226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111811, 38.715675, 37.931297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833458, 38.839432, 38.190533>,  <30.666447, 38.913685, 38.346073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833458, 38.839432, 38.190533>,  <31.111811, 38.715675, 37.931297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833458, 38.839432, 38.190533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557786, 0.801279, 0.216396,
		-0.452352, 0.512083, -0.730170,
		-0.695882, 0.309392, 0.648093,
		30.624693, 38.932251, 38.384960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987188, 39.366714, 37.718704>,  <31.111811, 38.715675, 37.931297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987188, 39.366714, 37.718704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899206, 39.331966, 38.107357>,  <30.846416, 39.311119, 38.340549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899206, 39.331966, 38.107357>,  <30.987188, 39.366714, 37.718704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899206, 39.331966, 38.107357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752824, 0.618317, 0.225702,
		-0.620384, 0.781114, -0.070605,
		-0.219955, -0.086869, 0.971635,
		30.833220, 39.305904, 38.398846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021652, 40.030727, 37.996567>,  <30.987188, 39.366714, 37.718704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021652, 40.030727, 37.996567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071169, 39.761112, 38.287868>,  <31.100880, 39.599342, 38.462650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071169, 39.761112, 38.287868>,  <31.021652, 40.030727, 37.996567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071169, 39.761112, 38.287868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797497, 0.504294, 0.331189,
		-0.590487, 0.539781, 0.599969,
		0.123791, -0.674036, 0.728252,
		31.108307, 39.558903, 38.506344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937521, 40.233536, 38.669537>,  <31.021652, 40.030727, 37.996567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937521, 40.233536, 38.669537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223646, 39.956841, 38.629894>,  <31.395321, 39.790821, 38.606110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223646, 39.956841, 38.629894>,  <30.937521, 40.233536, 38.669537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223646, 39.956841, 38.629894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673054, 0.643847, 0.363950,
		-0.187951, -0.327041, 0.926131,
		0.715313, -0.691741, -0.099105,
		31.438240, 39.749317, 38.600163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379946, 40.242474, 39.290165>,  <30.937521, 40.233536, 38.669537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379946, 40.242474, 39.290165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556196, 40.152435, 38.942562>,  <31.661947, 40.098412, 38.734001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556196, 40.152435, 38.942562>,  <31.379946, 40.242474, 39.290165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556196, 40.152435, 38.942562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708112, 0.682148, 0.182350,
		0.551747, -0.695704, 0.459969,
		0.440628, -0.225098, -0.869009,
		31.688385, 40.084908, 38.681858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057354, 40.261475, 39.348007>,  <31.379946, 40.242474, 39.290165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057354, 40.261475, 39.348007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033482, 40.322895, 38.953472>,  <32.019157, 40.359745, 38.716751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033482, 40.322895, 38.953472>,  <32.057354, 40.261475, 39.348007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033482, 40.322895, 38.953472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798546, 0.600239, 0.045126,
		0.598967, -0.784943, -0.158436,
		-0.059678, 0.153547, -0.986338,
		32.015579, 40.368958, 38.657570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661396, 40.109238, 38.951756>,  <32.057354, 40.261475, 39.348007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661396, 40.109238, 38.951756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463337, 40.417149, 38.790623>,  <32.344501, 40.601894, 38.693943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463337, 40.417149, 38.790623>,  <32.661396, 40.109238, 38.951756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463337, 40.417149, 38.790623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761415, 0.607780, 0.225500,
		0.418415, -0.195062, -0.887062,
		-0.495152, 0.769776, -0.402828,
		32.314793, 40.648083, 38.669773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194157, 40.629642, 38.780701>,  <32.661396, 40.109238, 38.951756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194157, 40.629642, 38.780701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857327, 40.845230, 38.772522>,  <32.655228, 40.974583, 38.767612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857327, 40.845230, 38.772522>,  <33.194157, 40.629642, 38.780701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857327, 40.845230, 38.772522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535520, 0.840006, 0.087231,
		0.064191, 0.062505, -0.995978,
		-0.842080, 0.538965, -0.020449,
		32.604702, 41.006920, 38.766388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382607, 41.234024, 38.540897>,  <33.194157, 40.629642, 38.780701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382607, 41.234024, 38.540897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036964, 41.310833, 38.726997>,  <32.829578, 41.356918, 38.838657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036964, 41.310833, 38.726997>,  <33.382607, 41.234024, 38.540897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036964, 41.310833, 38.726997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290384, 0.945204, 0.149221,
		-0.411099, 0.264042, -0.872513,
		-0.864103, 0.192019, 0.465246,
		32.777733, 41.368439, 38.866570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137516, 41.861835, 38.261051>,  <33.382607, 41.234024, 38.540897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137516, 41.861835, 38.261051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026108, 41.807117, 38.641308>,  <32.959263, 41.774288, 38.869461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026108, 41.807117, 38.641308>,  <33.137516, 41.861835, 38.261051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026108, 41.807117, 38.641308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252150, 0.944669, 0.209813,
		-0.926738, 0.298141, -0.228621,
		-0.278525, -0.136795, 0.950637,
		32.942551, 41.766079, 38.926498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711079, 41.466099, 37.793140>,  <33.137516, 41.861835, 38.261051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711079, 41.466099, 37.793140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099720, 41.371655, 37.787041>,  <33.332905, 41.314987, 37.783382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099720, 41.371655, 37.787041>,  <32.711079, 41.466099, 37.793140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099720, 41.371655, 37.787041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146958, -0.551701, -0.820993,
		0.185435, 0.799923, -0.570735,
		0.971605, -0.236115, -0.015250,
		33.391201, 41.300819, 37.782467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993549, 41.590389, 37.116005>,  <32.711079, 41.466099, 37.793140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993549, 41.590389, 37.116005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219368, 41.306789, 37.285057>,  <33.354858, 41.136631, 37.386486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219368, 41.306789, 37.285057>,  <32.993549, 41.590389, 37.116005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219368, 41.306789, 37.285057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225583, -0.625061, -0.747269,
		0.793980, 0.326528, -0.512811,
		0.564542, -0.708998, 0.422627,
		33.388729, 41.094090, 37.411846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539730, 41.232311, 36.679558>,  <32.993549, 41.590389, 37.116005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539730, 41.232311, 36.679558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411346, 40.977600, 36.959988>,  <33.334316, 40.824772, 37.128246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411346, 40.977600, 36.959988>,  <33.539730, 41.232311, 36.679558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411346, 40.977600, 36.959988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062146, -0.724478, -0.686490,
		0.945053, -0.263903, 0.192953,
		-0.320957, -0.636778, 0.701071,
		33.315060, 40.786568, 37.170307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988605, 40.545547, 36.675312>,  <33.539730, 41.232311, 36.679558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988605, 40.545547, 36.675312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635998, 40.473633, 36.849941>,  <33.424435, 40.430485, 36.954720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635998, 40.473633, 36.849941>,  <33.988605, 40.545547, 36.675312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635998, 40.473633, 36.849941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043841, -0.889503, -0.454821,
		0.470106, -0.420074, 0.776233,
		-0.881520, -0.179784, 0.436577,
		33.371540, 40.419697, 36.980915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018532, 39.982086, 37.073887>,  <33.988605, 40.545547, 36.675312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018532, 39.982086, 37.073887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642174, 40.017555, 36.943138>,  <33.416359, 40.038837, 36.864689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642174, 40.017555, 36.943138>,  <34.018532, 39.982086, 37.073887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642174, 40.017555, 36.943138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046571, -0.922080, -0.384186,
		-0.335472, -0.376703, 0.863454,
		-0.940899, 0.088672, -0.326875,
		33.359905, 40.044155, 36.845074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862759, 39.320843, 37.087296>,  <34.018532, 39.982086, 37.073887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862759, 39.320843, 37.087296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559631, 39.474682, 36.876472>,  <33.377754, 39.566986, 36.749977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559631, 39.474682, 36.876472>,  <33.862759, 39.320843, 37.087296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559631, 39.474682, 36.876472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201266, -0.906200, -0.371877,
		-0.620645, -0.175737, 0.764144,
		-0.757820, 0.384600, -0.527059,
		33.332287, 39.590061, 36.718353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157646, 38.947021, 37.186844>,  <33.862759, 39.320843, 37.087296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157646, 38.947021, 37.186844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101395, 39.139496, 36.840736>,  <33.067642, 39.254982, 36.633072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101395, 39.139496, 36.840736>,  <33.157646, 38.947021, 37.186844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101395, 39.139496, 36.840736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297917, -0.854013, -0.426507,
		-0.944176, 0.197796, 0.263455,
		-0.140632, 0.481185, -0.865265,
		33.059204, 39.283852, 36.581158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596561, 38.637215, 36.909088>,  <33.157646, 38.947021, 37.186844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596561, 38.637215, 36.909088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754524, 38.819374, 36.589924>,  <32.849304, 38.928669, 36.398426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754524, 38.819374, 36.589924>,  <32.596561, 38.637215, 36.909088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754524, 38.819374, 36.589924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366047, -0.718594, -0.591298,
		-0.842648, 0.525581, -0.117083,
		0.394910, 0.455398, -0.797909,
		32.872997, 38.955994, 36.350552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056915, 38.678825, 36.419250>,  <32.596561, 38.637215, 36.909088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056915, 38.678825, 36.419250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381741, 38.723549, 36.190147>,  <32.576637, 38.750385, 36.052685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381741, 38.723549, 36.190147>,  <32.056915, 38.678825, 36.419250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381741, 38.723549, 36.190147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345687, -0.698570, -0.626498,
		-0.470158, 0.706751, -0.528633,
		0.812066, 0.111812, -0.572754,
		32.625359, 38.757092, 36.018322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778584, 38.834972, 35.745728>,  <32.056915, 38.678825, 36.419250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778584, 38.834972, 35.745728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151657, 38.693287, 35.718502>,  <32.375500, 38.608276, 35.702168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151657, 38.693287, 35.718502>,  <31.778584, 38.834972, 35.745728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151657, 38.693287, 35.718502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327649, -0.753111, -0.570500,
		0.150817, 0.554398, -0.818472,
		0.932684, -0.354213, -0.068066,
		32.431461, 38.587025, 35.698082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922306, 38.666107, 34.988178>,  <31.778584, 38.834972, 35.745728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922306, 38.666107, 34.988178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206139, 38.483944, 35.203247>,  <32.376438, 38.374645, 35.332291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206139, 38.483944, 35.203247>,  <31.922306, 38.666107, 34.988178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206139, 38.483944, 35.203247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138603, -0.838372, -0.527182,
		0.690856, 0.299556, -0.658015,
		0.709582, -0.455410, 0.537675,
		32.419014, 38.347321, 35.364548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246880, 38.300014, 34.545837>,  <31.922306, 38.666107, 34.988178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246880, 38.300014, 34.545837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302917, 38.089668, 34.881416>,  <32.336540, 37.963459, 35.082764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302917, 38.089668, 34.881416>,  <32.246880, 38.300014, 34.545837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302917, 38.089668, 34.881416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037982, -0.849535, -0.526164,
		0.989409, 0.041850, -0.138992,
		0.140098, -0.525870, 0.838948,
		32.344948, 37.931908, 35.133102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476391, 37.633110, 34.321785>,  <32.246880, 38.300014, 34.545837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476391, 37.633110, 34.321785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346706, 37.542458, 34.689159>,  <32.268894, 37.488068, 34.909584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346706, 37.542458, 34.689159>,  <32.476391, 37.633110, 34.321785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346706, 37.542458, 34.689159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409912, -0.841339, -0.352307,
		0.852560, -0.490700, 0.179875,
		-0.324213, -0.226630, 0.918436,
		32.249443, 37.474468, 34.964691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743919, 36.902622, 34.479435>,  <32.476391, 37.633110, 34.321785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743919, 36.902622, 34.479435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430790, 36.990318, 34.712368>,  <32.242912, 37.042934, 34.852127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430790, 36.990318, 34.712368>,  <32.743919, 36.902622, 34.479435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430790, 36.990318, 34.712368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375024, -0.913033, -0.160398,
		0.496527, -0.343954, 0.796967,
		-0.782826, 0.219240, 0.582337,
		32.195942, 37.056091, 34.887070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611774, 36.225239, 34.666149>,  <32.743919, 36.902622, 34.479435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611774, 36.225239, 34.666149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280998, 36.440300, 34.731995>,  <32.082535, 36.569336, 34.771503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280998, 36.440300, 34.731995>,  <32.611774, 36.225239, 34.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280998, 36.440300, 34.731995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562192, -0.784993, -0.260241,
		-0.010697, -0.307750, 0.951407,
		-0.826938, 0.537657, 0.164617,
		32.032917, 36.601597, 34.781380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119949, 35.749004, 35.104290>,  <32.611774, 36.225239, 34.666149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119949, 35.749004, 35.104290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867907, 36.035534, 34.984394>,  <31.716682, 36.207451, 34.912457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867907, 36.035534, 34.984394>,  <32.119949, 35.749004, 35.104290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867907, 36.035534, 34.984394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734957, -0.674744, -0.067521,
		-0.250616, 0.177752, 0.951628,
		-0.630103, 0.716328, -0.299742,
		31.678875, 36.250431, 34.894470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497761, 35.665501, 35.487854>,  <32.119949, 35.749004, 35.104290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497761, 35.665501, 35.487854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355009, 35.866261, 35.172707>,  <31.269358, 35.986717, 34.983620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355009, 35.866261, 35.172707>,  <31.497761, 35.665501, 35.487854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355009, 35.866261, 35.172707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848944, -0.526173, 0.049360,
		-0.389781, 0.686472, 0.613862,
		-0.356882, 0.501895, -0.787868,
		31.247944, 36.016830, 34.936348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937357, 35.856930, 35.709148>,  <31.497761, 35.665501, 35.487854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937357, 35.856930, 35.709148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884737, 35.888687, 35.313900>,  <30.853165, 35.907742, 35.076752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884737, 35.888687, 35.313900>,  <30.937357, 35.856930, 35.709148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884737, 35.888687, 35.313900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888231, -0.452031, 0.081933,
		-0.440159, 0.888462, 0.129980,
		-0.131549, 0.079389, -0.988126,
		30.845272, 35.912502, 35.017464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280861, 36.053154, 35.623230>,  <30.937357, 35.856930, 35.709148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280861, 36.053154, 35.623230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391914, 35.906387, 35.268089>,  <30.458548, 35.818325, 35.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391914, 35.906387, 35.268089>,  <30.280861, 36.053154, 35.623230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391914, 35.906387, 35.268089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858875, -0.508859, -0.058280,
		-0.430409, 0.778738, -0.456416,
		0.277636, -0.366920, -0.887856,
		30.475204, 35.796310, 35.001732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655468, 36.083527, 35.239647>,  <30.280861, 36.053154, 35.623230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655468, 36.083527, 35.239647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899574, 35.828541, 35.051514>,  <30.046038, 35.675549, 34.938633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899574, 35.828541, 35.051514>,  <29.655468, 36.083527, 35.239647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899574, 35.828541, 35.051514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788734, -0.544382, -0.285563,
		-0.074006, 0.545240, -0.835007,
		0.610263, -0.637465, -0.470337,
		30.082653, 35.637302, 34.910412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273384, 35.815887, 34.631474>,  <29.655468, 36.083527, 35.239647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273384, 35.815887, 34.631474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558678, 35.536201, 34.651043>,  <29.729855, 35.368389, 34.662785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558678, 35.536201, 34.651043>,  <29.273384, 35.815887, 34.631474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558678, 35.536201, 34.651043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679224, -0.706698, -0.198071,
		0.173067, 0.108044, -0.978966,
		0.713234, -0.699217, 0.048920,
		29.772648, 35.326435, 34.665718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151890, 35.350178, 34.103909>,  <29.273384, 35.815887, 34.631474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151890, 35.350178, 34.103909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364149, 35.155777, 34.381676>,  <29.491505, 35.039135, 34.548336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364149, 35.155777, 34.381676>,  <29.151890, 35.350178, 34.103909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364149, 35.155777, 34.381676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596288, -0.796308, -0.101652,
		0.602372, -0.360130, -0.712358,
		0.530649, -0.486003, 0.694415,
		29.523344, 35.009975, 34.590000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326830, 34.701599, 33.856800>,  <29.151890, 35.350178, 34.103909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326830, 34.701599, 33.856800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366455, 34.618267, 34.246010>,  <29.390230, 34.568268, 34.479538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366455, 34.618267, 34.246010>,  <29.326830, 34.701599, 33.856800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366455, 34.618267, 34.246010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512820, -0.848673, -0.129497,
		0.852761, -0.486160, -0.190911,
		0.099065, -0.208332, 0.973028,
		29.396173, 34.555767, 34.537918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555662, 34.040714, 33.854076>,  <29.326830, 34.701599, 33.856800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555662, 34.040714, 33.854076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405210, 34.132053, 34.213272>,  <29.314939, 34.186855, 34.428791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405210, 34.132053, 34.213272>,  <29.555662, 34.040714, 33.854076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405210, 34.132053, 34.213272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424670, -0.903856, 0.051962,
		0.823518, -0.361805, 0.436939,
		-0.376130, 0.228347, 0.897989,
		29.292372, 34.200558, 34.482670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800001, 33.533958, 34.286987>,  <29.555662, 34.040714, 33.854076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800001, 33.533958, 34.286987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462545, 33.691601, 34.432838>,  <29.260073, 33.786186, 34.520348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462545, 33.691601, 34.432838>,  <29.800001, 33.533958, 34.286987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462545, 33.691601, 34.432838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448006, -0.891004, -0.073502,
		0.295917, -0.225365, 0.928248,
		-0.843637, 0.394110, 0.364628,
		29.209454, 33.809834, 34.542225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698126, 32.912201, 33.921146>,  <29.800001, 33.533958, 34.286987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698126, 32.912201, 33.921146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029581, 33.136112, 33.922279>,  <30.228455, 33.270458, 33.922958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029581, 33.136112, 33.922279>,  <29.698126, 32.912201, 33.921146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029581, 33.136112, 33.922279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045856, -0.072921, 0.996283,
		0.557905, -0.825427, -0.086094,
		0.828637, 0.559779, 0.002832,
		30.278172, 33.304047, 33.923130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213007, 32.644947, 34.366249>,  <29.698126, 32.912201, 33.921146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213007, 32.644947, 34.366249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323620, 33.027058, 34.324341>,  <30.389988, 33.256325, 34.299198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323620, 33.027058, 34.324341>,  <30.213007, 32.644947, 34.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323620, 33.027058, 34.324341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309334, 0.014734, 0.950839,
		0.909859, -0.295346, -0.291425,
		0.276532, 0.955277, -0.104766,
		30.406580, 33.313641, 34.292912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937616, 32.694607, 34.417900>,  <30.213007, 32.644947, 34.366249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937616, 32.694607, 34.417900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777540, 33.040329, 34.539764>,  <30.681494, 33.247765, 34.612885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777540, 33.040329, 34.539764>,  <30.937616, 32.694607, 34.417900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777540, 33.040329, 34.539764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509466, -0.066514, 0.857916,
		0.761768, 0.498545, -0.413717,
		-0.400192, 0.864308, 0.304660,
		30.657482, 33.299622, 34.631161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389593, 32.978039, 34.825073>,  <30.937616, 32.694607, 34.417900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389593, 32.978039, 34.825073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072248, 33.194656, 34.936295>,  <30.881842, 33.324627, 35.003025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072248, 33.194656, 34.936295>,  <31.389593, 32.978039, 34.825073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072248, 33.194656, 34.936295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439941, 0.194362, 0.876741,
		0.420750, 0.817898, -0.392446,
		-0.793361, 0.541541, 0.278049,
		30.834240, 33.357121, 35.019711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536911, 33.706673, 35.025585>,  <31.389593, 32.978039, 34.825073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536911, 33.706673, 35.025585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220337, 33.536816, 35.201450>,  <31.030392, 33.434902, 35.306969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220337, 33.536816, 35.201450>,  <31.536911, 33.706673, 35.025585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220337, 33.536816, 35.201450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281295, 0.385568, 0.878755,
		-0.542679, 0.819154, -0.185702,
		-0.791437, -0.424645, 0.439664,
		30.982906, 33.409424, 35.333351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077036, 34.219620, 35.560616>,  <31.536911, 33.706673, 35.025585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077036, 34.219620, 35.560616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081696, 33.828621, 35.644867>,  <31.084492, 33.594021, 35.695419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081696, 33.828621, 35.644867>,  <31.077036, 34.219620, 35.560616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081696, 33.828621, 35.644867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203442, 0.208553, 0.956618,
		-0.979018, 0.031708, 0.201293,
		0.011648, -0.977497, 0.210628,
		31.085190, 33.535374, 35.708054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698017, 34.213406, 36.189510>,  <31.077036, 34.219620, 35.560616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698017, 34.213406, 36.189510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891903, 33.864880, 36.158901>,  <31.008234, 33.655762, 36.140537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891903, 33.864880, 36.158901>,  <30.698017, 34.213406, 36.189510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891903, 33.864880, 36.158901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185892, 0.017130, 0.982421,
		-0.854691, -0.490418, 0.170275,
		0.484714, -0.871319, -0.076524,
		31.037317, 33.603485, 36.135944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405474, 33.666107, 36.694141>,  <30.698017, 34.213406, 36.189510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405474, 33.666107, 36.694141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785707, 33.573921, 36.610931>,  <31.013847, 33.518612, 36.561005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785707, 33.573921, 36.610931>,  <30.405474, 33.666107, 36.694141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785707, 33.573921, 36.610931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197911, -0.066442, 0.977966,
		-0.239207, -0.970810, -0.017547,
		0.950584, -0.230464, -0.208028,
		31.070883, 33.504784, 36.548523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601629, 33.100910, 37.115940>,  <30.405474, 33.666107, 36.694141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601629, 33.100910, 37.115940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973742, 33.200069, 37.007774>,  <31.197010, 33.259563, 36.942875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973742, 33.200069, 37.007774>,  <30.601629, 33.100910, 37.115940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973742, 33.200069, 37.007774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338130, -0.293530, 0.894152,
		0.142280, -0.923249, -0.356886,
		0.930282, 0.247894, -0.270415,
		31.252827, 33.274437, 36.926651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976593, 32.448738, 37.356144>,  <30.601629, 33.100910, 37.115940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976593, 32.448738, 37.356144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226210, 32.757931, 37.310417>,  <31.375978, 32.943447, 37.282982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226210, 32.757931, 37.310417>,  <30.976593, 32.448738, 37.356144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226210, 32.757931, 37.310417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440534, -0.227209, 0.868508,
		0.645372, -0.592342, -0.482314,
		0.624039, 0.772986, -0.114312,
		31.413422, 32.989826, 37.276123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667774, 32.173172, 37.397026>,  <30.976593, 32.448738, 37.356144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667774, 32.173172, 37.397026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752558, 32.557007, 37.471062>,  <31.803427, 32.787308, 37.515484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752558, 32.557007, 37.471062>,  <31.667774, 32.173172, 37.397026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752558, 32.557007, 37.471062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425966, -0.261173, 0.866223,
		0.879561, -0.104759, -0.464111,
		0.211958, 0.959591, 0.185094,
		31.816145, 32.844883, 37.526588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437283, 32.342583, 37.492764>,  <31.667774, 32.173172, 37.397026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437283, 32.342583, 37.492764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219326, 32.601265, 37.706257>,  <32.088554, 32.756474, 37.834351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219326, 32.601265, 37.706257>,  <32.437283, 32.342583, 37.492764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219326, 32.601265, 37.706257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607158, -0.134713, 0.783078,
		0.578321, 0.750750, -0.319248,
		-0.544889, 0.646704, 0.533731,
		32.055859, 32.795277, 37.866375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940945, 32.746880, 37.910957>,  <32.437283, 32.342583, 37.492764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940945, 32.746880, 37.910957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600552, 32.850586, 38.093651>,  <32.396317, 32.912807, 38.203266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600552, 32.850586, 38.093651>,  <32.940945, 32.746880, 37.910957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600552, 32.850586, 38.093651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476828, 0.016885, 0.878834,
		0.220137, 0.965659, -0.137992,
		-0.850984, 0.259262, 0.456737,
		32.345257, 32.928364, 38.230671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064056, 33.077885, 38.492508>,  <32.940945, 32.746880, 37.910957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064056, 33.077885, 38.492508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682899, 33.019409, 38.598812>,  <32.454205, 32.984325, 38.662594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682899, 33.019409, 38.598812>,  <33.064056, 33.077885, 38.492508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682899, 33.019409, 38.598812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282647, -0.110054, 0.952890,
		-0.110054, 0.983116, 0.146190,
		-0.952890, -0.146190, 0.265763,
		32.397034, 32.975552, 38.678539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918858, 33.553856, 39.007347>,  <33.064056, 33.077885, 38.492508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918858, 33.553856, 39.007347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661335, 33.251381, 39.054146>,  <32.506821, 33.069897, 39.082226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661335, 33.251381, 39.054146>,  <32.918858, 33.553856, 39.007347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661335, 33.251381, 39.054146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220938, -0.037314, 0.974574,
		-0.732598, 0.653287, 0.191094,
		-0.643807, -0.756191, 0.116999,
		32.468193, 33.024525, 39.089245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718822, 33.729565, 39.557930>,  <32.918858, 33.553856, 39.007347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718822, 33.729565, 39.557930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586639, 33.353546, 39.524204>,  <32.507328, 33.127934, 39.503967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586639, 33.353546, 39.524204>,  <32.718822, 33.729565, 39.557930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586639, 33.353546, 39.524204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123887, -0.131764, 0.983509,
		-0.935653, 0.314567, 0.160002,
		-0.330462, -0.940046, -0.084314,
		32.487499, 33.071533, 39.498909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060505, 33.523319, 40.031563>,  <32.718822, 33.729565, 39.557930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060505, 33.523319, 40.031563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272560, 33.188080, 39.980110>,  <32.399796, 32.986938, 39.949238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272560, 33.188080, 39.980110>,  <32.060505, 33.523319, 40.031563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272560, 33.188080, 39.980110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185552, -0.033362, 0.982068,
		-0.827358, -0.544504, 0.137824,
		0.530141, -0.838095, -0.128636,
		32.431602, 32.936653, 39.941521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864346, 33.011227, 40.619278>,  <32.060505, 33.523319, 40.031563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864346, 33.011227, 40.619278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196865, 32.837715, 40.480263>,  <32.396378, 32.733608, 40.396854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196865, 32.837715, 40.480263>,  <31.864346, 33.011227, 40.619278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196865, 32.837715, 40.480263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228062, -0.304007, 0.924969,
		-0.506887, -0.848183, -0.153792,
		0.831296, -0.433780, -0.347535,
		32.446255, 32.707581, 40.376003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864597, 32.388218, 40.952400>,  <31.864346, 33.011227, 40.619278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864597, 32.388218, 40.952400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244637, 32.429432, 40.834621>,  <32.472660, 32.454159, 40.763954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244637, 32.429432, 40.834621>,  <31.864597, 32.388218, 40.952400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244637, 32.429432, 40.834621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307137, -0.474117, 0.825155,
		-0.054582, -0.874413, -0.482103,
		0.950099, 0.103033, -0.294443,
		32.529667, 32.460342, 40.746288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136623, 31.717018, 40.959648>,  <31.864597, 32.388218, 40.952400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136623, 31.717018, 40.959648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473743, 31.932087, 40.969475>,  <32.676014, 32.061127, 40.975372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473743, 31.932087, 40.969475>,  <32.136623, 31.717018, 40.959648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473743, 31.932087, 40.969475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267465, -0.457981, 0.847771,
		0.467074, -0.707927, -0.529793,
		0.842796, 0.537673, 0.024565,
		32.726582, 32.093388, 40.976845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784225, 31.182043, 41.059933>,  <32.136623, 31.717018, 40.959648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784225, 31.182043, 41.059933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898773, 31.546328, 41.178993>,  <32.967503, 31.764898, 41.250431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898773, 31.546328, 41.178993>,  <32.784225, 31.182043, 41.059933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898773, 31.546328, 41.178993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380039, -0.393150, 0.837259,
		0.879523, -0.126647, -0.458692,
		0.286372, 0.910710, 0.297654,
		32.984684, 31.819540, 41.268288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577400, 31.228306, 41.224705>,  <32.784225, 31.182043, 41.059933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577400, 31.228306, 41.224705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379940, 31.513308, 41.424164>,  <33.261463, 31.684309, 41.543839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379940, 31.513308, 41.424164>,  <33.577400, 31.228306, 41.224705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379940, 31.513308, 41.424164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566148, -0.171951, 0.806169,
		0.660143, 0.680271, -0.318501,
		-0.493647, 0.712505, 0.498647,
		33.231846, 31.727058, 41.573757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018711, 31.355797, 41.724434>,  <33.577400, 31.228306, 41.224705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018711, 31.355797, 41.724434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701561, 31.572025, 41.836948>,  <33.511269, 31.701763, 41.904457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701561, 31.572025, 41.836948>,  <34.018711, 31.355797, 41.724434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701561, 31.572025, 41.836948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275610, -0.093573, 0.956704,
		0.543490, 0.836077, -0.074796,
		-0.792880, 0.540573, 0.281287,
		33.463696, 31.734198, 41.921333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304043, 31.877119, 42.102917>,  <34.018711, 31.355797, 41.724434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304043, 31.877119, 42.102917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920753, 31.825760, 42.205143>,  <33.690781, 31.794945, 42.266479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920753, 31.825760, 42.205143>,  <34.304043, 31.877119, 42.102917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920753, 31.825760, 42.205143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269625, -0.107424, 0.956955,
		-0.095419, 0.985887, 0.137557,
		-0.958226, -0.128400, 0.255570,
		33.633286, 31.787239, 42.281815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212372, 32.219868, 42.723663>,  <34.304043, 31.877119, 42.102917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212372, 32.219868, 42.723663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912251, 31.955540, 42.715977>,  <33.732178, 31.796944, 42.711365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912251, 31.955540, 42.715977>,  <34.212372, 32.219868, 42.723663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912251, 31.955540, 42.715977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216382, -0.272938, 0.937381,
		-0.624680, 0.699162, 0.347774,
		-0.750302, -0.660816, -0.019213,
		33.687160, 31.757296, 42.710213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891979, 32.294811, 43.407619>,  <34.212372, 32.219868, 42.723663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891979, 32.294811, 43.407619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736530, 31.949844, 43.277878>,  <33.643261, 31.742863, 43.200031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736530, 31.949844, 43.277878>,  <33.891979, 32.294811, 43.407619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736530, 31.949844, 43.277878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056663, -0.373726, 0.925807,
		-0.919655, 0.341407, 0.194104,
		-0.388618, -0.862422, -0.324354,
		33.619946, 31.691118, 43.180573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236374, 32.152821, 43.775410>,  <33.891979, 32.294811, 43.407619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236374, 32.152821, 43.775410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386555, 31.810377, 43.633362>,  <33.476665, 31.604910, 43.548134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386555, 31.810377, 43.633362>,  <33.236374, 32.152821, 43.775410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386555, 31.810377, 43.633362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109025, -0.421282, 0.900353,
		-0.920406, -0.299325, -0.251510,
		0.375454, -0.856111, -0.355117,
		33.499191, 31.553543, 43.526825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827374, 31.707447, 44.047569>,  <33.236374, 32.152821, 43.775410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827374, 31.707447, 44.047569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148315, 31.492769, 43.943119>,  <33.340881, 31.363962, 43.880451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148315, 31.492769, 43.943119>,  <32.827374, 31.707447, 44.047569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148315, 31.492769, 43.943119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044235, -0.382828, 0.922760,
		-0.595204, -0.751933, -0.283423,
		0.802356, -0.536693, -0.261123,
		33.389023, 31.331762, 43.864780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785816, 31.203024, 44.476250>,  <32.827374, 31.707447, 44.047569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785816, 31.203024, 44.476250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152382, 31.116903, 44.341290>,  <33.372322, 31.065231, 44.260315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152382, 31.116903, 44.341290>,  <32.785816, 31.203024, 44.476250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152382, 31.116903, 44.341290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245300, -0.363969, 0.898529,
		-0.316256, -0.906185, -0.280732,
		0.916411, -0.215302, -0.337395,
		33.427303, 31.052313, 44.240070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982220, 30.433113, 44.585651>,  <32.785816, 31.203024, 44.476250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982220, 30.433113, 44.585651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320549, 30.643131, 44.547909>,  <33.523548, 30.769142, 44.525265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320549, 30.643131, 44.547909>,  <32.982220, 30.433113, 44.585651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320549, 30.643131, 44.547909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340701, -0.395586, 0.852897,
		0.410486, -0.753550, -0.513482,
		0.845828, 0.525047, -0.094353,
		33.574299, 30.800646, 44.519604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483177, 29.999454, 44.771870>,  <32.982220, 30.433113, 44.585651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483177, 29.999454, 44.771870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623726, 30.371302, 44.816322>,  <33.708054, 30.594410, 44.842995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623726, 30.371302, 44.816322>,  <33.483177, 29.999454, 44.771870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623726, 30.371302, 44.816322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342146, -0.237991, 0.909008,
		0.871479, -0.281375, -0.401688,
		0.351370, 0.929617, 0.111133,
		33.729137, 30.650187, 44.849663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143391, 29.979708, 44.983124>,  <33.483177, 29.999454, 44.771870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143391, 29.979708, 44.983124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046494, 30.348845, 45.102913>,  <33.988354, 30.570326, 45.174786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046494, 30.348845, 45.102913>,  <34.143391, 29.979708, 44.983124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046494, 30.348845, 45.102913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246089, -0.240127, 0.939031,
		0.938487, 0.301171, -0.168932,
		-0.242244, 0.922841, 0.299471,
		33.973820, 30.625696, 45.192753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690880, 30.212915, 45.384933>,  <34.143391, 29.979708, 44.983124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690880, 30.212915, 45.384933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352333, 30.404493, 45.478119>,  <34.149204, 30.519440, 45.534031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352333, 30.404493, 45.478119>,  <34.690880, 30.212915, 45.384933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352333, 30.404493, 45.478119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176161, -0.161045, 0.971098,
		0.502620, 0.862946, 0.051932,
		-0.846369, 0.478945, 0.232962,
		34.098423, 30.548178, 45.548008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882751, 30.664604, 45.885925>,  <34.690880, 30.212915, 45.384933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882751, 30.664604, 45.885925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489113, 30.615541, 45.937332>,  <34.252930, 30.586103, 45.968174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489113, 30.615541, 45.937332>,  <34.882751, 30.664604, 45.885925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489113, 30.615541, 45.937332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113613, 0.121605, 0.986055,
		-0.136573, 0.984971, -0.105735,
		-0.984093, -0.122656, 0.128513,
		34.193886, 30.578745, 45.975887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693089, 31.303276, 46.280228>,  <34.882751, 30.664604, 45.885925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693089, 31.303276, 46.280228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409584, 31.024530, 46.324120>,  <34.239483, 30.857283, 46.350456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409584, 31.024530, 46.324120>,  <34.693089, 31.303276, 46.280228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409584, 31.024530, 46.324120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030234, 0.125398, 0.991646,
		-0.704803, 0.706155, -0.067808,
		-0.708759, -0.696865, 0.109730,
		34.196957, 30.815472, 46.357040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351818, 31.559187, 46.829479>,  <34.693089, 31.303276, 46.280228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351818, 31.559187, 46.829479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278496, 31.166082, 46.819839>,  <34.234501, 30.930220, 46.814056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278496, 31.166082, 46.819839>,  <34.351818, 31.559187, 46.829479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278496, 31.166082, 46.819839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203424, -0.061905, 0.977132,
		-0.961778, 0.174215, 0.211265,
		-0.183309, -0.982760, -0.024100,
		34.223503, 30.871254, 46.812611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056702, 31.488922, 47.441196>,  <34.351818, 31.559187, 46.829479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056702, 31.488922, 47.441196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149979, 31.111191, 47.348358>,  <34.205944, 30.884552, 47.292656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149979, 31.111191, 47.348358>,  <34.056702, 31.488922, 47.441196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149979, 31.111191, 47.348358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079484, -0.219372, 0.972398,
		-0.969178, -0.245201, 0.023904,
		0.233189, -0.944327, -0.232100,
		34.219936, 30.827892, 47.278728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669067, 31.093454, 47.772923>,  <34.056702, 31.488922, 47.441196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669067, 31.093454, 47.772923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986359, 30.861912, 47.697330>,  <34.176735, 30.722986, 47.651974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986359, 30.861912, 47.697330>,  <33.669067, 31.093454, 47.772923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986359, 30.861912, 47.697330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097195, -0.186018, 0.977727,
		-0.601116, -0.793930, -0.091293,
		0.793229, -0.578854, -0.188984,
		34.224327, 30.688255, 47.640636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620354, 30.429520, 48.281780>,  <33.669067, 31.093454, 47.772923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620354, 30.429520, 48.281780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000282, 30.459873, 48.160400>,  <34.228241, 30.478086, 48.087574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000282, 30.459873, 48.160400>,  <33.620354, 30.429520, 48.281780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000282, 30.459873, 48.160400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312739, -0.248301, 0.916810,
		-0.005774, -0.965706, -0.259574,
		0.949822, 0.075885, -0.303447,
		34.285229, 30.482639, 48.069366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849991, 29.794012, 48.459869>,  <33.620354, 30.429520, 48.281780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849991, 29.794012, 48.459869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162529, 30.037233, 48.403614>,  <34.350052, 30.183167, 48.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162529, 30.037233, 48.403614>,  <33.849991, 29.794012, 48.459869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162529, 30.037233, 48.403614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359035, -0.253604, 0.898209,
		0.510491, -0.752302, -0.416463,
		0.781341, 0.608052, -0.140640,
		34.396931, 30.219648, 48.361423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398258, 29.405647, 48.661259>,  <33.849991, 29.794012, 48.459869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398258, 29.405647, 48.661259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513870, 29.787729, 48.686707>,  <34.583237, 30.016977, 48.701977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513870, 29.787729, 48.686707>,  <34.398258, 29.405647, 48.661259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513870, 29.787729, 48.686707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308226, -0.155775, 0.938473,
		0.906343, -0.251638, -0.339443,
		0.289032, 0.955203, 0.063624,
		34.600578, 30.074289, 48.705795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980095, 29.319170, 49.041115>,  <34.398258, 29.405647, 48.661259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980095, 29.319170, 49.041115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837261, 29.689783, 49.088490>,  <34.751560, 29.912151, 49.116913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837261, 29.689783, 49.088490>,  <34.980095, 29.319170, 49.041115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837261, 29.689783, 49.088490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247169, -0.028545, 0.968552,
		0.900775, 0.375132, -0.218817,
		-0.357088, 0.926532, 0.118433,
		34.730133, 29.967743, 49.124020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545734, 29.730030, 49.415775>,  <34.980095, 29.319170, 49.041115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545734, 29.730030, 49.415775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200481, 29.926321, 49.463425>,  <34.993328, 30.044096, 49.492016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200481, 29.926321, 49.463425>,  <35.545734, 29.730030, 49.415775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200481, 29.926321, 49.463425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172449, 0.064712, 0.982890,
		0.474621, 0.868907, -0.140480,
		-0.863132, 0.490726, 0.119128,
		34.941544, 30.073540, 49.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653473, 30.368635, 49.910282>,  <35.545734, 29.730030, 49.415775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653473, 30.368635, 49.910282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266926, 30.270235, 49.940269>,  <35.034996, 30.211195, 49.958263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266926, 30.270235, 49.940269>,  <35.653473, 30.368635, 49.910282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266926, 30.270235, 49.940269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051306, 0.101235, 0.993539,
		-0.251998, 0.963969, -0.085209,
		-0.966367, -0.245998, 0.074968,
		34.977016, 30.196436, 49.962761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529621, 30.776030, 50.429852>,  <35.653473, 30.368635, 49.910282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529621, 30.776030, 50.429852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179283, 30.585091, 50.401482>,  <34.969078, 30.470528, 50.384460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179283, 30.585091, 50.401482>,  <35.529621, 30.776030, 50.429852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179283, 30.585091, 50.401482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069640, -0.020408, 0.997363,
		-0.477534, 0.878479, -0.015368,
		-0.875849, -0.477345, -0.070923,
		34.916527, 30.441887, 50.380203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083893, 31.052416, 50.919170>,  <35.529621, 30.776030, 50.429852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083893, 31.052416, 50.919170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946217, 30.685640, 50.838417>,  <34.863609, 30.465576, 50.789967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946217, 30.685640, 50.838417>,  <35.083893, 31.052416, 50.919170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946217, 30.685640, 50.838417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008271, -0.217973, 0.975920,
		-0.938863, 0.334235, 0.082608,
		-0.344193, -0.916938, -0.201882,
		34.842960, 30.410559, 50.777851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623314, 30.982634, 51.491379>,  <35.083893, 31.052416, 50.919170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623314, 30.982634, 51.491379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729191, 30.636381, 51.321381>,  <34.792717, 30.428631, 51.219379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729191, 30.636381, 51.321381>,  <34.623314, 30.982634, 51.491379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729191, 30.636381, 51.321381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115343, -0.409135, 0.905155,
		-0.957410, -0.288607, -0.008450,
		0.264691, -0.865630, -0.424998,
		34.808598, 30.376692, 51.193882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185299, 30.416538, 51.619713>,  <34.623314, 30.982634, 51.491379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185299, 30.416538, 51.619713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564106, 30.301029, 51.563461>,  <34.791389, 30.231724, 51.529713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564106, 30.301029, 51.563461>,  <34.185299, 30.416538, 51.619713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564106, 30.301029, 51.563461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001915, -0.442892, 0.896573,
		-0.321185, -0.848798, -0.419978,
		0.947014, -0.288770, -0.140625,
		34.848209, 30.214397, 51.521275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609665, 30.487347, 52.095173>,  <34.185299, 30.416538, 51.619713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609665, 30.487347, 52.095173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617424, 30.875021, 51.996948>,  <33.622078, 31.107626, 51.938011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617424, 30.875021, 51.996948>,  <33.609665, 30.487347, 52.095173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617424, 30.875021, 51.996948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961142, -0.085723, -0.262408,
		-0.275373, -0.230933, -0.933188,
		0.019397, 0.969186, -0.245565,
		33.623241, 31.165777, 51.923279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556591, 30.058630, 52.806370>,  <33.609665, 30.487347, 52.095173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556591, 30.058630, 52.806370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569965, 29.682974, 52.669609>,  <33.577991, 29.457581, 52.587555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569965, 29.682974, 52.669609>,  <33.556591, 30.058630, 52.806370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569965, 29.682974, 52.669609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977210, -0.041027, 0.208274,
		-0.209626, -0.341071, 0.916367,
		0.033440, -0.939142, -0.341899,
		33.579998, 29.401232, 52.567039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846230, 29.489492, 53.232506>,  <33.556591, 30.058630, 52.806370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846230, 29.489492, 53.232506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919567, 29.395857, 52.850597>,  <33.963570, 29.339676, 52.621452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919567, 29.395857, 52.850597>,  <33.846230, 29.489492, 53.232506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919567, 29.395857, 52.850597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945865, -0.222589, 0.236207,
		-0.267815, -0.946391, 0.180606,
		0.183343, -0.234089, -0.954771,
		33.974571, 29.325630, 52.564167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175014, 28.885489, 53.156628>,  <33.846230, 29.489492, 53.232506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175014, 28.885489, 53.156628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282150, 29.061930, 52.814003>,  <34.346432, 29.167793, 52.608429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282150, 29.061930, 52.814003>,  <34.175014, 28.885489, 53.156628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282150, 29.061930, 52.814003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962667, -0.086406, 0.256525,
		0.039141, -0.893288, -0.447777,
		0.267842, 0.441101, -0.856557,
		34.362503, 29.194260, 52.557037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662048, 28.459843, 52.736061>,  <34.175014, 28.885489, 53.156628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662048, 28.459843, 52.736061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722038, 28.851856, 52.683846>,  <34.758034, 29.087065, 52.652515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722038, 28.851856, 52.683846>,  <34.662048, 28.459843, 52.736061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722038, 28.851856, 52.683846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960273, -0.112963, 0.255177,
		0.235337, -0.163622, -0.958042,
		0.149976, 0.980034, -0.130537,
		34.767033, 29.145866, 52.644684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165352, 28.693285, 52.253540>,  <34.662048, 28.459843, 52.736061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165352, 28.693285, 52.253540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152969, 28.996113, 52.514580>,  <35.145538, 29.177809, 52.671204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152969, 28.996113, 52.514580>,  <35.165352, 28.693285, 52.253540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152969, 28.996113, 52.514580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982519, -0.096862, 0.158980,
		0.183571, 0.646113, -0.740837,
		-0.030960, 0.757070, 0.652600,
		35.143681, 29.223234, 52.710361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593315, 28.201408, 51.735256>,  <35.165352, 28.693285, 52.253540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593315, 28.201408, 51.735256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330372, 27.900045, 51.741604>,  <35.172604, 27.719227, 51.745411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330372, 27.900045, 51.741604>,  <35.593315, 28.201408, 51.735256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330372, 27.900045, 51.741604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224074, -0.215526, -0.950441,
		0.719492, -0.621226, 0.310498,
		-0.657360, -0.753410, 0.015869,
		35.133163, 27.674023, 51.746365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021881, 27.664663, 51.314068>,  <35.593315, 28.201408, 51.735256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021881, 27.664663, 51.314068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626415, 27.619583, 51.274391>,  <35.389137, 27.592535, 51.250587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626415, 27.619583, 51.274391>,  <36.021881, 27.664663, 51.314068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626415, 27.619583, 51.274391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126608, -0.270812, -0.954270,
		0.080685, -0.956012, 0.282011,
		-0.988666, -0.112700, -0.099189,
		35.329815, 27.585773, 51.244633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845444, 26.917591, 51.034069>,  <36.021881, 27.664663, 51.314068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845444, 26.917591, 51.034069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585766, 27.200550, 50.922256>,  <35.429958, 27.370325, 50.855171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585766, 27.200550, 50.922256>,  <35.845444, 26.917591, 51.034069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585766, 27.200550, 50.922256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322715, -0.076618, -0.943390,
		-0.688770, -0.702649, -0.178549,
		-0.649192, 0.707400, -0.279528,
		35.391006, 27.412769, 50.838398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413982, 26.658756, 50.378735>,  <35.845444, 26.917591, 51.034069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413982, 26.658756, 50.378735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423542, 27.058628, 50.381958>,  <35.429279, 27.298552, 50.383892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423542, 27.058628, 50.381958>,  <35.413982, 26.658756, 50.378735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423542, 27.058628, 50.381958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130332, 0.004873, -0.991459,
		-0.991182, 0.024745, -0.130174,
		0.023899, 0.999682, 0.008056,
		35.430710, 27.358532, 50.384377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143715, 26.763678, 49.826920>,  <35.413982, 26.658756, 50.378735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143715, 26.763678, 49.826920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269981, 27.140688, 49.870735>,  <35.345741, 27.366894, 49.897026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269981, 27.140688, 49.870735>,  <35.143715, 26.763678, 49.826920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269981, 27.140688, 49.870735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109020, 0.150705, -0.982549,
		-0.942588, 0.298212, 0.150326,
		0.315663, 0.942527, 0.109541,
		35.364681, 27.423447, 49.903599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568035, 27.305698, 49.580116>,  <35.143715, 26.763678, 49.826920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568035, 27.305698, 49.580116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932068, 27.468473, 49.548725>,  <35.150486, 27.566137, 49.529888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932068, 27.468473, 49.548725>,  <34.568035, 27.305698, 49.580116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932068, 27.468473, 49.548725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168423, 0.190134, -0.967203,
		-0.378668, 0.893450, 0.241575,
		0.910079, 0.406936, -0.078480,
		35.205093, 27.590553, 49.525181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447701, 27.771755, 49.053181>,  <34.568035, 27.305698, 49.580116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447701, 27.771755, 49.053181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845749, 27.733091, 49.061092>,  <35.084579, 27.709894, 49.065842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845749, 27.733091, 49.061092>,  <34.447701, 27.771755, 49.053181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845749, 27.733091, 49.061092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026957, 0.073500, -0.996931,
		0.094908, 0.992600, 0.075747,
		0.995121, -0.096658, 0.019781,
		35.144287, 27.704094, 49.067028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805218, 28.401215, 48.820087>,  <34.447701, 27.771755, 49.053181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805218, 28.401215, 48.820087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081989, 28.118847, 48.759541>,  <35.248051, 27.949427, 48.723213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081989, 28.118847, 48.759541>,  <34.805218, 28.401215, 48.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081989, 28.118847, 48.759541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091344, 0.122375, -0.988272,
		0.716164, 0.697640, 0.020193,
		0.691929, -0.705920, -0.151366,
		35.289566, 27.907070, 48.714130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132168, 28.591433, 48.256622>,  <34.805218, 28.401215, 48.820087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132168, 28.591433, 48.256622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291016, 28.224604, 48.270924>,  <35.386322, 28.004507, 48.279503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291016, 28.224604, 48.270924>,  <35.132168, 28.591433, 48.256622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291016, 28.224604, 48.270924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120818, 0.013624, -0.992581,
		0.909781, 0.398488, 0.116210,
		0.397115, -0.917072, 0.035750,
		35.410149, 27.949482, 48.281647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803936, 28.484152, 48.040028>,  <35.132168, 28.591433, 48.256622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803936, 28.484152, 48.040028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684711, 28.106276, 47.985306>,  <35.613178, 27.879549, 47.952473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684711, 28.106276, 47.985306>,  <35.803936, 28.484152, 48.040028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684711, 28.106276, 47.985306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345502, 0.026831, -0.938034,
		0.889824, -0.326858, 0.318396,
		-0.298062, -0.944692, -0.136805,
		35.595291, 27.822868, 47.944263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457443, 28.058113, 47.839153>,  <35.803936, 28.484152, 48.040028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457443, 28.058113, 47.839153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102791, 27.923147, 47.712643>,  <35.889999, 27.842169, 47.636738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102791, 27.923147, 47.712643>,  <36.457443, 28.058113, 47.839153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102791, 27.923147, 47.712643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338929, -0.008786, -0.940771,
		0.314650, -0.941316, 0.122149,
		-0.886635, -0.337414, -0.316275,
		35.836800, 27.821922, 47.617760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693798, 27.785906, 47.201515>,  <36.457443, 28.058113, 47.839153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693798, 27.785906, 47.201515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297035, 27.744453, 47.172188>,  <36.058975, 27.719582, 47.154591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297035, 27.744453, 47.172188>,  <36.693798, 27.785906, 47.201515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297035, 27.744453, 47.172188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055728, 0.163433, -0.984979,
		0.114056, -0.981097, -0.156335,
		-0.991910, -0.103630, -0.073315,
		35.999462, 27.713364, 47.150192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596603, 27.360207, 46.615238>,  <36.693798, 27.785906, 47.201515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596603, 27.360207, 46.615238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240562, 27.535608, 46.664921>,  <36.026936, 27.640848, 46.694729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240562, 27.535608, 46.664921>,  <36.596603, 27.360207, 46.615238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240562, 27.535608, 46.664921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092255, 0.093531, -0.991333,
		-0.446320, -0.893849, -0.042798,
		-0.890105, 0.438504, 0.124207,
		35.973530, 27.667160, 46.702183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082661, 27.047495, 46.062813>,  <36.596603, 27.360207, 46.615238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082661, 27.047495, 46.062813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927368, 27.399658, 46.171745>,  <35.834194, 27.610956, 46.237103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927368, 27.399658, 46.171745>,  <36.082661, 27.047495, 46.062813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927368, 27.399658, 46.171745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123314, 0.243221, -0.962101,
		-0.913275, -0.407098, 0.014141,
		-0.388230, 0.880406, 0.272328,
		35.810898, 27.663780, 46.253445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713276, 27.299376, 45.510601>,  <36.082661, 27.047495, 46.062813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713276, 27.299376, 45.510601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777130, 27.641777, 45.707283>,  <35.815441, 27.847218, 45.825294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777130, 27.641777, 45.707283>,  <35.713276, 27.299376, 45.510601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777130, 27.641777, 45.707283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137361, 0.512511, -0.847623,
		-0.977572, 0.067770, 0.199397,
		0.159637, 0.856002, 0.491707,
		35.825020, 27.898579, 45.854794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199905, 27.718477, 45.277168>,  <35.713276, 27.299376, 45.510601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199905, 27.718477, 45.277168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458092, 27.978287, 45.437912>,  <35.613003, 28.134172, 45.534359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458092, 27.978287, 45.437912>,  <35.199905, 27.718477, 45.277168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458092, 27.978287, 45.437912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128396, 0.610922, -0.781210,
		-0.752918, 0.452650, 0.477727,
		0.645468, 0.649525, 0.401856,
		35.651733, 28.173143, 45.558468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941700, 28.308119, 45.029465>,  <35.199905, 27.718477, 45.277168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941700, 28.308119, 45.029465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313854, 28.390892, 45.150505>,  <35.537148, 28.440556, 45.223129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313854, 28.390892, 45.150505>,  <34.941700, 28.308119, 45.029465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313854, 28.390892, 45.150505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102932, 0.644772, -0.757413,
		-0.351841, 0.735831, 0.578584,
		0.930383, 0.206934, 0.302598,
		35.592968, 28.452972, 45.241283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175472, 29.110210, 45.124928>,  <34.941700, 28.308119, 45.029465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175472, 29.110210, 45.124928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493572, 28.901831, 45.000870>,  <35.684433, 28.776802, 44.926437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493572, 28.901831, 45.000870>,  <35.175472, 29.110210, 45.124928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493572, 28.901831, 45.000870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150291, 0.664971, -0.731591,
		0.587357, 0.535188, 0.607113,
		0.795251, -0.520949, -0.310142,
		35.732147, 28.745546, 44.907825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701950, 29.643353, 44.976120>,  <35.175472, 29.110210, 45.124928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701950, 29.643353, 44.976120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812038, 29.298388, 44.806179>,  <35.878090, 29.091408, 44.704216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812038, 29.298388, 44.806179>,  <35.701950, 29.643353, 44.976120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812038, 29.298388, 44.806179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213146, 0.485653, -0.847767,
		0.937456, 0.142765, 0.317481,
		0.275217, -0.862415, -0.424849,
		35.894604, 29.039663, 44.678726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126904, 29.884542, 44.615253>,  <35.701950, 29.643353, 44.976120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126904, 29.884542, 44.615253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057598, 29.528645, 44.446335>,  <36.016014, 29.315105, 44.344982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057598, 29.528645, 44.446335>,  <36.126904, 29.884542, 44.615253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057598, 29.528645, 44.446335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042869, 0.421565, -0.905784,
		0.983943, -0.175040, -0.034898,
		-0.173260, -0.889744, -0.422299,
		36.005619, 29.261721, 44.319645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743061, 29.773760, 44.180836>,  <36.126904, 29.884542, 44.615253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743061, 29.773760, 44.180836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428425, 29.565708, 44.047722>,  <36.239643, 29.440878, 43.967854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428425, 29.565708, 44.047722>,  <36.743061, 29.773760, 44.180836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428425, 29.565708, 44.047722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055631, 0.477055, -0.877111,
		0.614967, -0.708438, -0.346311,
		-0.786588, -0.520128, -0.332784,
		36.192448, 29.409670, 43.947887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760597, 29.641861, 43.543793>,  <36.743061, 29.773760, 44.180836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760597, 29.641861, 43.543793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377533, 29.527992, 43.560966>,  <36.147694, 29.459671, 43.571270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377533, 29.527992, 43.560966>,  <36.760597, 29.641861, 43.543793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377533, 29.527992, 43.560966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129717, 0.293539, -0.947105,
		0.257003, -0.912579, -0.318038,
		-0.957666, -0.284663, 0.042937,
		36.090233, 29.442591, 43.573845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704742, 29.227066, 42.879505>,  <36.760597, 29.641861, 43.543793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704742, 29.227066, 42.879505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324165, 29.316502, 42.964134>,  <36.095818, 29.370163, 43.014912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324165, 29.316502, 42.964134>,  <36.704742, 29.227066, 42.879505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324165, 29.316502, 42.964134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160936, 0.224596, -0.961070,
		-0.262405, -0.948453, -0.177706,
		-0.951443, 0.223590, 0.211576,
		36.038734, 29.383579, 43.027607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272034, 28.854069, 42.442410>,  <36.704742, 29.227066, 42.879505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272034, 28.854069, 42.442410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061451, 29.167023, 42.575508>,  <35.935101, 29.354795, 42.655365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061451, 29.167023, 42.575508>,  <36.272034, 28.854069, 42.442410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061451, 29.167023, 42.575508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380027, 0.133552, -0.915283,
		-0.760543, -0.608306, 0.227019,
		-0.526453, 0.782386, 0.332745,
		35.903515, 29.401739, 42.675331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680328, 28.850792, 42.017990>,  <36.272034, 28.854069, 42.442410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680328, 28.850792, 42.017990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660473, 29.216377, 42.179089>,  <35.648560, 29.435728, 42.275749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660473, 29.216377, 42.179089>,  <35.680328, 28.850792, 42.017990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660473, 29.216377, 42.179089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351977, 0.361365, -0.863439,
		-0.934691, -0.184619, 0.303757,
		-0.049640, 0.913965, 0.402746,
		35.645580, 29.490566, 42.299911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998901, 29.108370, 41.844776>,  <35.680328, 28.850792, 42.017990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998901, 29.108370, 41.844776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243153, 29.416565, 41.917969>,  <35.389702, 29.601482, 41.961884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243153, 29.416565, 41.917969>,  <34.998901, 29.108370, 41.844776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243153, 29.416565, 41.917969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251731, 0.407926, -0.877626,
		-0.750842, 0.489842, 0.443047,
		0.610629, 0.770488, 0.182980,
		35.426342, 29.647711, 41.972862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595680, 29.749256, 42.052353>,  <34.998901, 29.108370, 41.844776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595680, 29.749256, 42.052353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952541, 29.853760, 41.904942>,  <35.166656, 29.916462, 41.816494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952541, 29.853760, 41.904942>,  <34.595680, 29.749256, 42.052353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952541, 29.853760, 41.904942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451734, 0.519546, -0.725265,
		0.001983, 0.813520, 0.581533,
		0.892151, 0.261260, -0.368525,
		35.220188, 29.932138, 41.794384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585609, 30.412285, 41.732002>,  <34.595680, 29.749256, 42.052353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585609, 30.412285, 41.732002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937977, 30.293016, 41.584995>,  <35.149399, 30.221455, 41.496792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937977, 30.293016, 41.584995>,  <34.585609, 30.412285, 41.732002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937977, 30.293016, 41.584995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270002, 0.321146, -0.907724,
		0.388686, 0.898865, 0.202398,
		0.880921, -0.298172, -0.367521,
		35.202251, 30.203566, 41.474739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693424, 30.976862, 41.377262>,  <34.585609, 30.412285, 41.732002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693424, 30.976862, 41.377262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921516, 30.686451, 41.223522>,  <35.058372, 30.512203, 41.131279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921516, 30.686451, 41.223522>,  <34.693424, 30.976862, 41.377262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921516, 30.686451, 41.223522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178704, 0.347030, -0.920671,
		0.801813, 0.593677, 0.068142,
		0.570228, -0.726029, -0.384346,
		35.092587, 30.468641, 41.108219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295292, 31.329060, 40.912151>,  <34.693424, 30.976862, 41.377262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295292, 31.329060, 40.912151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261379, 30.945396, 40.804203>,  <35.241032, 30.715199, 40.739433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261379, 30.945396, 40.804203>,  <35.295292, 31.329060, 40.912151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261379, 30.945396, 40.804203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115479, 0.278477, -0.953475,
		0.989685, -0.049671, -0.134372,
		-0.084779, -0.959158, -0.269868,
		35.235947, 30.657650, 40.723244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761787, 31.215975, 40.286152>,  <35.295292, 31.329060, 40.912151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761787, 31.215975, 40.286152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466290, 30.946640, 40.274311>,  <35.288990, 30.785040, 40.267208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466290, 30.946640, 40.274311>,  <35.761787, 31.215975, 40.286152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466290, 30.946640, 40.274311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184643, 0.244429, -0.951925,
		0.648201, -0.697763, -0.304898,
		-0.738743, -0.673336, -0.029602,
		35.244667, 30.744638, 40.265430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734673, 31.004826, 39.621143>,  <35.761787, 31.215975, 40.286152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734673, 31.004826, 39.621143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394665, 30.828375, 39.736294>,  <35.190659, 30.722504, 39.805382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394665, 30.828375, 39.736294>,  <35.734673, 31.004826, 39.621143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394665, 30.828375, 39.736294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390713, 0.161475, -0.906239,
		0.353285, -0.882797, -0.309612,
		-0.850020, -0.441130, 0.287874,
		35.139660, 30.696037, 39.822655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546921, 30.517574, 39.073925>,  <35.734673, 31.004826, 39.621143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546921, 30.517574, 39.073925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219082, 30.647526, 39.262695>,  <35.022377, 30.725496, 39.375957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219082, 30.647526, 39.262695>,  <35.546921, 30.517574, 39.073925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219082, 30.647526, 39.262695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460790, 0.115722, -0.879933,
		-0.340484, -0.938649, 0.054856,
		-0.819599, 0.324880, 0.471921,
		34.973202, 30.744989, 39.404270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973347, 30.090273, 38.808491>,  <35.546921, 30.517574, 39.073925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973347, 30.090273, 38.808491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789101, 30.409866, 38.963127>,  <34.678551, 30.601624, 39.055908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789101, 30.409866, 38.963127>,  <34.973347, 30.090273, 38.808491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789101, 30.409866, 38.963127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567605, 0.069700, -0.820345,
		-0.682389, -0.597299, 0.421402,
		-0.460620, 0.798984, 0.386592,
		34.650913, 30.649561, 39.079105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346554, 29.870756, 38.726406>,  <34.973347, 30.090273, 38.808491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346554, 29.870756, 38.726406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307335, 30.265688, 38.776310>,  <34.283806, 30.502647, 38.806252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307335, 30.265688, 38.776310>,  <34.346554, 29.870756, 38.726406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307335, 30.265688, 38.776310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575372, 0.046051, -0.816595,
		-0.811994, -0.151848, 0.563567,
		-0.098045, 0.987331, 0.124762,
		34.277920, 30.561888, 38.813740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627422, 29.919331, 38.799347>,  <34.346554, 29.870756, 38.726406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627422, 29.919331, 38.799347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762474, 30.283438, 38.703495>,  <33.843506, 30.501902, 38.645985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762474, 30.283438, 38.703495>,  <33.627422, 29.919331, 38.799347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762474, 30.283438, 38.703495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611410, 0.018519, -0.791097,
		-0.715671, 0.413609, 0.562799,
		0.337627, 0.910266, -0.239632,
		33.863762, 30.556519, 38.631607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037212, 30.315813, 38.568436>,  <33.627422, 29.919331, 38.799347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037212, 30.315813, 38.568436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341854, 30.534906, 38.429901>,  <33.524639, 30.666363, 38.346779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341854, 30.534906, 38.429901>,  <33.037212, 30.315813, 38.568436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341854, 30.534906, 38.429901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487517, 0.132160, -0.863053,
		-0.426952, 0.826148, 0.367684,
		0.761603, 0.547735, -0.346335,
		33.570335, 30.699226, 38.326000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783867, 31.081053, 38.412621>,  <33.037212, 30.315813, 38.568436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783867, 31.081053, 38.412621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092083, 30.972113, 38.182110>,  <33.277012, 30.906750, 38.043804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092083, 30.972113, 38.182110>,  <32.783867, 31.081053, 38.412621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092083, 30.972113, 38.182110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615973, -0.085779, -0.783083,
		0.163839, 0.958367, -0.233856,
		0.770541, -0.272349, -0.576275,
		33.323246, 30.890408, 38.009228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598194, 31.406904, 37.750774>,  <32.783867, 31.081053, 38.412621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598194, 31.406904, 37.750774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890820, 31.144753, 37.675636>,  <33.066395, 30.987461, 37.630554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890820, 31.144753, 37.675636>,  <32.598194, 31.406904, 37.750774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890820, 31.144753, 37.675636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383499, -0.167773, -0.908174,
		0.563682, 0.736431, -0.374074,
		0.731567, -0.655379, -0.187850,
		33.110291, 30.948139, 37.619282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720554, 31.566631, 37.084339>,  <32.598194, 31.406904, 37.750774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720554, 31.566631, 37.084339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867306, 31.200005, 37.147972>,  <32.955357, 30.980028, 37.186153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867306, 31.200005, 37.147972>,  <32.720554, 31.566631, 37.084339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867306, 31.200005, 37.147972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254861, -0.263500, -0.930384,
		0.894676, 0.300795, -0.330269,
		0.366880, -0.916565, 0.159086,
		32.977371, 30.925035, 37.195698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027760, 31.437021, 36.452370>,  <32.720554, 31.566631, 37.084339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027760, 31.437021, 36.452370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930275, 31.092466, 36.630634>,  <32.871784, 30.885733, 36.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930275, 31.092466, 36.630634>,  <33.027760, 31.437021, 36.452370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930275, 31.092466, 36.630634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445050, -0.308951, -0.840524,
		0.861704, -0.403190, -0.308064,
		-0.243714, -0.861387, 0.445664,
		32.857162, 30.834051, 36.764332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266857, 30.885651, 36.092266>,  <33.027760, 31.437021, 36.452370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266857, 30.885651, 36.092266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980091, 30.731165, 36.324429>,  <32.808033, 30.638474, 36.463726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980091, 30.731165, 36.324429>,  <33.266857, 30.885651, 36.092266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980091, 30.731165, 36.324429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574831, -0.143599, -0.805573,
		0.394471, -0.911163, -0.119060,
		-0.716911, -0.386214, 0.580410,
		32.765018, 30.615301, 36.498550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057816, 30.169222, 35.926865>,  <33.266857, 30.885651, 36.092266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057816, 30.169222, 35.926865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731178, 30.315624, 36.105400>,  <32.535198, 30.403465, 36.212521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731178, 30.315624, 36.105400>,  <33.057816, 30.169222, 35.926865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731178, 30.315624, 36.105400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531154, -0.173760, -0.829266,
		-0.225964, -0.914245, 0.336299,
		-0.816587, 0.366011, 0.446341,
		32.486202, 30.425426, 36.239304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489887, 29.625221, 36.331387>,  <33.057816, 30.169222, 35.926865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489887, 29.625221, 36.331387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748928, 29.480181, 36.063316>,  <33.904354, 29.393156, 35.902473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748928, 29.480181, 36.063316>,  <33.489887, 29.625221, 36.331387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748928, 29.480181, 36.063316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703701, -0.052735, 0.708537,
		-0.292258, -0.930451, 0.221011,
		0.647604, -0.362602, -0.670172,
		33.943211, 29.371401, 35.862267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641514, 29.024614, 36.642040>,  <33.489887, 29.625221, 36.331387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641514, 29.024614, 36.642040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938091, 29.149876, 36.404655>,  <34.116035, 29.225033, 36.262222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938091, 29.149876, 36.404655>,  <33.641514, 29.024614, 36.642040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938091, 29.149876, 36.404655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656514, -0.155647, 0.738081,
		0.138762, -0.936861, -0.320993,
		0.741441, 0.313154, -0.593464,
		34.160522, 29.243822, 36.226616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121906, 28.553482, 36.856396>,  <33.641514, 29.024614, 36.642040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121906, 28.553482, 36.856396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328987, 28.837440, 36.665386>,  <34.453236, 29.007816, 36.550781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328987, 28.837440, 36.665386>,  <34.121906, 28.553482, 36.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328987, 28.837440, 36.665386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777731, -0.157890, 0.608444,
		0.356536, -0.686380, -0.633849,
		0.517703, 0.709897, -0.477525,
		34.484299, 29.050409, 36.522129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744579, 28.260986, 36.580826>,  <34.121906, 28.553482, 36.856396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744579, 28.260986, 36.580826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802902, 28.652905, 36.635582>,  <34.837894, 28.888056, 36.668434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802902, 28.652905, 36.635582>,  <34.744579, 28.260986, 36.580826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802902, 28.652905, 36.635582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795999, -0.198352, 0.571875,
		0.587474, 0.025584, -0.808838,
		0.145804, 0.979797, 0.136891,
		34.846642, 28.946844, 36.676651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436058, 28.338560, 36.447376>,  <34.744579, 28.260986, 36.580826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436058, 28.338560, 36.447376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344601, 28.651733, 36.678802>,  <35.289726, 28.839638, 36.817657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344601, 28.651733, 36.678802>,  <35.436058, 28.338560, 36.447376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344601, 28.651733, 36.678802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793359, -0.194572, 0.576822,
		0.564185, 0.590898, -0.576659,
		-0.228641, 0.782931, 0.578569,
		35.276009, 28.886612, 36.852371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090855, 28.585136, 36.775066>,  <35.436058, 28.338560, 36.447376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090855, 28.585136, 36.775066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842113, 28.823185, 36.978683>,  <35.692867, 28.966013, 37.100853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842113, 28.823185, 36.978683>,  <36.090855, 28.585136, 36.775066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842113, 28.823185, 36.978683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649999, 0.029674, 0.759355,
		0.436802, 0.803089, -0.405280,
		-0.621856, 0.595120, 0.509046,
		35.655556, 29.001720, 37.131397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532722, 29.209902, 37.014545>,  <36.090855, 28.585136, 36.775066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532722, 29.209902, 37.014545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203053, 29.148069, 37.232479>,  <36.005249, 29.110970, 37.363239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203053, 29.148069, 37.232479>,  <36.532722, 29.209902, 37.014545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203053, 29.148069, 37.232479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552289, -0.006456, 0.833628,
		-0.125346, 0.987959, 0.090694,
		-0.824175, -0.154581, 0.544830,
		35.955799, 29.101694, 37.395927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632561, 29.670233, 37.646435>,  <36.532722, 29.209902, 37.014545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632561, 29.670233, 37.646435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353184, 29.408138, 37.761570>,  <36.185558, 29.250881, 37.830650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353184, 29.408138, 37.761570>,  <36.632561, 29.670233, 37.646435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353184, 29.408138, 37.761570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364398, 0.020562, 0.931016,
		-0.615953, 0.755145, 0.224405,
		-0.698438, -0.655235, 0.287839,
		36.143654, 29.211567, 37.847923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402069, 29.882006, 38.387814>,  <36.632561, 29.670233, 37.646435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402069, 29.882006, 38.387814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327614, 29.490349, 38.355244>,  <36.282940, 29.255354, 38.335701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327614, 29.490349, 38.355244>,  <36.402069, 29.882006, 38.387814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327614, 29.490349, 38.355244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353598, -0.144078, 0.924235,
		-0.916690, 0.143242, 0.373042,
		-0.186136, -0.979144, -0.081424,
		36.271774, 29.196606, 38.330818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178249, 29.667101, 39.057526>,  <36.402069, 29.882006, 38.387814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178249, 29.667101, 39.057526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293827, 29.323744, 38.887974>,  <36.363174, 29.117729, 38.786243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293827, 29.323744, 38.887974>,  <36.178249, 29.667101, 39.057526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293827, 29.323744, 38.887974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434097, -0.277160, 0.857171,
		-0.853271, -0.431679, 0.292542,
		0.288941, -0.858391, -0.423883,
		36.380508, 29.066227, 38.760807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854073, 29.169189, 39.436996>,  <36.178249, 29.667101, 39.057526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854073, 29.169189, 39.436996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174374, 28.994982, 39.272503>,  <36.366554, 28.890457, 39.173809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174374, 28.994982, 39.272503>,  <35.854073, 29.169189, 39.436996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174374, 28.994982, 39.272503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330350, -0.251587, 0.909710,
		-0.499659, -0.864306, -0.057585,
		0.800756, -0.435522, -0.411231,
		36.414600, 28.864325, 39.149132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824066, 28.472916, 39.639515>,  <35.854073, 29.169189, 39.436996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824066, 28.472916, 39.639515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205700, 28.509939, 39.525562>,  <36.434681, 28.532154, 39.457191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205700, 28.509939, 39.525562>,  <35.824066, 28.472916, 39.639515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205700, 28.509939, 39.525562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293318, -0.481588, 0.825855,
		-0.060757, -0.871496, -0.486624,
		0.954082, 0.092559, -0.284885,
		36.491924, 28.537706, 39.440098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121849, 27.839315, 39.674988>,  <35.824066, 28.472916, 39.639515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121849, 27.839315, 39.674988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436047, 28.084641, 39.708103>,  <36.624565, 28.231834, 39.727970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436047, 28.084641, 39.708103>,  <36.121849, 27.839315, 39.674988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436047, 28.084641, 39.708103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265745, -0.455068, 0.849878,
		0.558913, -0.645571, -0.520436,
		0.785491, 0.613311, 0.082786,
		36.671696, 28.268635, 39.732941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664097, 27.404448, 39.933163>,  <36.121849, 27.839315, 39.674988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664097, 27.404448, 39.933163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800941, 27.777456, 39.979408>,  <36.883049, 28.001261, 40.007156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800941, 27.777456, 39.979408>,  <36.664097, 27.404448, 39.933163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800941, 27.777456, 39.979408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593086, -0.309722, 0.743183,
		0.728841, -0.185684, -0.659024,
		0.342112, 0.932520, 0.115611,
		36.903576, 28.057213, 40.014091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393974, 27.336231, 39.987103>,  <36.664097, 27.404448, 39.933163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393974, 27.336231, 39.987103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285000, 27.677565, 40.164913>,  <37.219616, 27.882364, 40.271599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285000, 27.677565, 40.164913>,  <37.393974, 27.336231, 39.987103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285000, 27.677565, 40.164913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618444, -0.198619, 0.760314,
		0.737091, 0.482052, -0.473627,
		-0.272440, 0.853332, 0.444523,
		37.203266, 27.933565, 40.298271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003365, 27.600092, 40.440968>,  <37.393974, 27.336231, 39.987103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003365, 27.600092, 40.440968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664543, 27.762238, 40.578480>,  <37.461250, 27.859524, 40.660988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664543, 27.762238, 40.578480>,  <38.003365, 27.600092, 40.440968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664543, 27.762238, 40.578480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346035, -0.070368, 0.935579,
		0.403439, 0.911444, -0.080664,
		-0.847051, 0.405362, 0.343781,
		37.410427, 27.883846, 40.681614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284985, 27.924549, 40.906174>,  <38.003365, 27.600092, 40.440968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284985, 27.924549, 40.906174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897068, 27.904434, 41.001652>,  <37.664318, 27.892366, 41.058937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897068, 27.904434, 41.001652>,  <38.284985, 27.924549, 40.906174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897068, 27.904434, 41.001652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239707, -0.015061, 0.970729,
		-0.045219, 0.998621, 0.026660,
		-0.969792, -0.050286, 0.238696,
		37.606129, 27.889349, 41.073261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085636, 28.476267, 41.399078>,  <38.284985, 27.924549, 40.906174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085636, 28.476267, 41.399078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808582, 28.194933, 41.463043>,  <37.642349, 28.026133, 41.501423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808582, 28.194933, 41.463043>,  <38.085636, 28.476267, 41.399078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808582, 28.194933, 41.463043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115999, 0.110197, 0.987117,
		-0.711897, 0.702264, 0.005260,
		-0.692638, -0.703336, 0.159911,
		37.600792, 27.983932, 41.511017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742916, 28.663490, 42.035057>,  <38.085636, 28.476267, 41.399078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742916, 28.663490, 42.035057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602375, 28.291559, 41.991291>,  <37.518051, 28.068401, 41.965031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602375, 28.291559, 41.991291>,  <37.742916, 28.663490, 42.035057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602375, 28.291559, 41.991291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006108, -0.114584, 0.993395,
		-0.936222, 0.349703, 0.034581,
		-0.351355, -0.929827, -0.109412,
		37.496967, 28.012611, 41.958469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218151, 28.610153, 42.576546>,  <37.742916, 28.663490, 42.035057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218151, 28.610153, 42.576546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307648, 28.230993, 42.485832>,  <37.361347, 28.003498, 42.431404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307648, 28.230993, 42.485832>,  <37.218151, 28.610153, 42.576546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307648, 28.230993, 42.485832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148202, -0.196887, 0.969160,
		-0.963315, -0.250450, 0.096429,
		0.223741, -0.947898, -0.226782,
		37.374771, 27.946625, 42.417797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804283, 28.100199, 42.849468>,  <37.218151, 28.610153, 42.576546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804283, 28.100199, 42.849468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130230, 27.880758, 42.774609>,  <37.325798, 27.749094, 42.729694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130230, 27.880758, 42.774609>,  <36.804283, 28.100199, 42.849468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130230, 27.880758, 42.774609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090415, -0.198613, 0.975899,
		-0.572550, -0.812150, -0.112242,
		0.814869, -0.548602, -0.187147,
		37.374691, 27.716177, 42.718464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803177, 27.566103, 43.435658>,  <36.804283, 28.100199, 42.849468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803177, 27.566103, 43.435658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185589, 27.532269, 43.323334>,  <37.415035, 27.511967, 43.255939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185589, 27.532269, 43.323334>,  <36.803177, 27.566103, 43.435658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185589, 27.532269, 43.323334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264297, -0.166499, 0.949960,
		-0.127106, -0.982407, -0.136823,
		0.956029, -0.084584, -0.280810,
		37.472397, 27.506891, 43.239090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161213, 27.032953, 43.880173>,  <36.803177, 27.566103, 43.435658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161213, 27.032953, 43.880173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444378, 27.276058, 43.736240>,  <37.614277, 27.421921, 43.649883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444378, 27.276058, 43.736240>,  <37.161213, 27.032953, 43.880173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444378, 27.276058, 43.736240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393806, 0.083271, 0.915414,
		0.586319, -0.789739, -0.180393,
		0.707917, 0.607764, -0.359827,
		37.656754, 27.458387, 43.628292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630596, 26.850052, 44.357895>,  <37.161213, 27.032953, 43.880173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630596, 26.850052, 44.357895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801579, 27.162512, 44.175865>,  <37.904167, 27.349987, 44.066647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801579, 27.162512, 44.175865>,  <37.630596, 26.850052, 44.357895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801579, 27.162512, 44.175865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692792, 0.040351, 0.720008,
		0.580796, -0.623039, -0.523926,
		0.427452, 0.781149, -0.455072,
		37.929813, 27.396856, 44.039345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392044, 26.799492, 44.232807>,  <37.630596, 26.850052, 44.357895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392044, 26.799492, 44.232807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281292, 27.181227, 44.277676>,  <38.214840, 27.410267, 44.304596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281292, 27.181227, 44.277676>,  <38.392044, 26.799492, 44.232807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281292, 27.181227, 44.277676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385474, 0.003385, 0.922712,
		0.880197, 0.298720, -0.368809,
		-0.276881, 0.954335, 0.112169,
		38.198227, 27.467527, 44.311325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937683, 27.137093, 44.610680>,  <38.392044, 26.799492, 44.232807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937683, 27.137093, 44.610680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649323, 27.408813, 44.665588>,  <38.476307, 27.571846, 44.698532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649323, 27.408813, 44.665588>,  <38.937683, 27.137093, 44.610680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649323, 27.408813, 44.665588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271479, 0.094558, 0.957788,
		0.637647, 0.727742, -0.252583,
		-0.720906, 0.679302, 0.137272,
		38.433052, 27.612604, 44.706772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170841, 27.801229, 44.901897>,  <38.937683, 27.137093, 44.610680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170841, 27.801229, 44.901897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781845, 27.802212, 44.995064>,  <38.548447, 27.802801, 45.050964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781845, 27.802212, 44.995064>,  <39.170841, 27.801229, 44.901897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781845, 27.802212, 44.995064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198531, 0.531717, 0.823324,
		-0.121821, 0.846919, -0.517580,
		-0.972494, 0.002458, 0.232914,
		38.490097, 27.802950, 45.064938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148689, 28.444242, 45.243763>,  <39.170841, 27.801229, 44.901897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148689, 28.444242, 45.243763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838680, 28.217260, 45.355003>,  <38.652676, 28.081072, 45.421749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838680, 28.217260, 45.355003>,  <39.148689, 28.444242, 45.243763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838680, 28.217260, 45.355003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018573, 0.460342, 0.887547,
		-0.631664, 0.682701, -0.367313,
		-0.775020, -0.567454, 0.278102,
		38.606174, 28.047024, 45.438435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677826, 28.947975, 45.507565>,  <39.148689, 28.444242, 45.243763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677826, 28.947975, 45.507565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557533, 28.607838, 45.680294>,  <38.485355, 28.403755, 45.783932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557533, 28.607838, 45.680294>,  <38.677826, 28.947975, 45.507565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557533, 28.607838, 45.680294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164040, 0.492159, 0.854910,
		-0.939494, 0.186264, -0.287500,
		-0.300735, -0.850344, 0.431826,
		38.467312, 28.352734, 45.809841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146473, 29.212801, 46.092216>,  <38.677826, 28.947975, 45.507565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146473, 29.212801, 46.092216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247715, 28.831633, 46.159012>,  <38.308460, 28.602932, 46.199089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247715, 28.831633, 46.159012>,  <38.146473, 29.212801, 46.092216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247715, 28.831633, 46.159012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147678, 0.208638, 0.966779,
		-0.956101, -0.220036, 0.193533,
		0.253104, -0.952919, 0.166984,
		38.323647, 28.545757, 46.209106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790100, 29.060919, 46.666100>,  <38.146473, 29.212801, 46.092216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790100, 29.060919, 46.666100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111904, 28.827236, 46.623249>,  <38.304985, 28.687027, 46.597538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111904, 28.827236, 46.623249>,  <37.790100, 29.060919, 46.666100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111904, 28.827236, 46.623249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303621, 0.249500, 0.919546,
		-0.510475, -0.772305, 0.378101,
		0.804506, -0.584204, -0.107125,
		38.353256, 28.651976, 46.591110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815113, 28.879152, 47.394630>,  <37.790100, 29.060919, 46.666100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815113, 28.879152, 47.394630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170521, 28.760120, 47.254925>,  <38.383766, 28.688702, 47.171101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170521, 28.760120, 47.254925>,  <37.815113, 28.879152, 47.394630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170521, 28.760120, 47.254925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398733, 0.124090, 0.908633,
		-0.227051, -0.946598, 0.228911,
		0.888516, -0.297580, -0.349265,
		38.437077, 28.670847, 47.150146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025509, 28.289288, 47.733620>,  <37.815113, 28.879152, 47.394630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025509, 28.289288, 47.733620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369373, 28.451506, 47.609348>,  <38.575691, 28.548838, 47.534786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369373, 28.451506, 47.609348>,  <38.025509, 28.289288, 47.733620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369373, 28.451506, 47.609348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319919, 0.046783, 0.946289,
		0.398299, -0.912876, -0.089525,
		0.859656, 0.405547, -0.310681,
		38.627270, 28.573170, 47.516144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512955, 27.933170, 48.148777>,  <38.025509, 28.289288, 47.733620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512955, 27.933170, 48.148777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743980, 28.215248, 47.984276>,  <38.882595, 28.384495, 47.885574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743980, 28.215248, 47.984276>,  <38.512955, 27.933170, 48.148777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743980, 28.215248, 47.984276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615424, -0.045139, 0.786903,
		0.536355, -0.707577, -0.460063,
		0.577561, 0.705193, -0.411249,
		38.917248, 28.426805, 47.860901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281239, 27.750486, 48.170925>,  <38.512955, 27.933170, 48.148777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281239, 27.750486, 48.170925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255619, 28.148575, 48.141430>,  <39.240246, 28.387428, 48.123734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255619, 28.148575, 48.141430>,  <39.281239, 27.750486, 48.170925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255619, 28.148575, 48.141430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530098, 0.096531, 0.842424,
		0.845514, 0.014872, -0.533746,
		-0.064051, 0.995219, -0.073735,
		39.236404, 28.447140, 48.119308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995453, 27.959965, 48.338562>,  <39.281239, 27.750486, 48.170925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995453, 27.959965, 48.338562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747993, 28.269987, 48.390030>,  <39.599518, 28.456001, 48.420910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747993, 28.269987, 48.390030>,  <39.995453, 27.959965, 48.338562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747993, 28.269987, 48.390030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408896, 0.177786, 0.895096,
		0.670874, 0.606366, -0.426905,
		-0.618653, 0.775057, 0.128669,
		39.562397, 28.502504, 48.428631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441952, 28.360474, 48.694118>,  <39.995453, 27.959965, 48.338562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441952, 28.360474, 48.694118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079548, 28.500725, 48.788948>,  <39.862106, 28.584875, 48.845848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079548, 28.500725, 48.788948>,  <40.441952, 28.360474, 48.694118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079548, 28.500725, 48.788948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353897, 0.320309, 0.878726,
		0.232169, 0.880035, -0.414290,
		-0.906010, 0.350629, 0.237076,
		39.807743, 28.605913, 48.860069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565208, 28.922827, 48.999931>,  <40.441952, 28.360474, 48.694118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565208, 28.922827, 48.999931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193890, 28.834044, 49.119259>,  <39.971096, 28.780773, 49.190853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193890, 28.834044, 49.119259>,  <40.565208, 28.922827, 48.999931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193890, 28.834044, 49.119259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232733, 0.278865, 0.931702,
		-0.289991, 0.934328, -0.207214,
		-0.928300, -0.221960, 0.298317,
		39.915401, 28.767456, 49.208755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508160, 29.661703, 48.900726>,  <40.565208, 28.922827, 48.999931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508160, 29.661703, 48.900726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805141, 29.923588, 48.957455>,  <40.983330, 30.080719, 48.991489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805141, 29.923588, 48.957455>,  <40.508160, 29.661703, 48.900726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805141, 29.923588, 48.957455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000420, 0.212157, -0.977236,
		-0.669895, 0.725495, 0.157792,
		0.742456, 0.654711, 0.141818,
		41.027878, 30.120001, 49.000000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341908, 30.121170, 48.485332>,  <40.508160, 29.661703, 48.900726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341908, 30.121170, 48.485332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726921, 30.212345, 48.544094>,  <40.957928, 30.267050, 48.579353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726921, 30.212345, 48.544094>,  <40.341908, 30.121170, 48.485332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726921, 30.212345, 48.544094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071435, 0.309485, -0.948217,
		-0.261599, 0.923181, 0.281606,
		0.962529, 0.227936, 0.146908,
		41.015678, 30.280725, 48.588165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453388, 30.755733, 48.211147>,  <40.341908, 30.121170, 48.485332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453388, 30.755733, 48.211147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815472, 30.588299, 48.240498>,  <41.032722, 30.487837, 48.258106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815472, 30.588299, 48.240498>,  <40.453388, 30.755733, 48.211147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815472, 30.588299, 48.240498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230663, 0.338940, -0.912093,
		0.356924, 0.842558, 0.403364,
		0.905207, -0.418589, 0.073371,
		41.087032, 30.462723, 48.262508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819214, 31.166000, 47.832054>,  <40.453388, 30.755733, 48.211147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819214, 31.166000, 47.832054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041748, 30.837616, 47.883453>,  <41.175270, 30.640585, 47.914291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041748, 30.837616, 47.883453>,  <40.819214, 31.166000, 47.832054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041748, 30.837616, 47.883453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219813, -0.003733, -0.975535,
		0.801356, 0.570971, 0.178381,
		0.556336, -0.820962, 0.128499,
		41.208649, 30.591328, 47.922005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399971, 31.272739, 47.418449>,  <40.819214, 31.166000, 47.832054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399971, 31.272739, 47.418449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375568, 30.877886, 47.477566>,  <41.360928, 30.640974, 47.513035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375568, 30.877886, 47.477566>,  <41.399971, 31.272739, 47.418449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375568, 30.877886, 47.477566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042673, -0.150515, -0.987686,
		0.997225, -0.053948, 0.051307,
		-0.061006, -0.987135, 0.147795,
		41.357265, 30.581745, 47.521904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807991, 31.013960, 46.820389>,  <41.399971, 31.272739, 47.418449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807991, 31.013960, 46.820389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596760, 30.698931, 46.947422>,  <41.470020, 30.509912, 47.023640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596760, 30.698931, 46.947422>,  <41.807991, 31.013960, 46.820389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596760, 30.698931, 46.947422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169006, -0.269025, -0.948189,
		0.832207, -0.554393, 0.008962,
		-0.528080, -0.787575, 0.317580,
		41.438335, 30.462658, 47.042698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147491, 30.356310, 46.669460>,  <41.807991, 31.013960, 46.820389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147491, 30.356310, 46.669460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751205, 30.308361, 46.695091>,  <41.513432, 30.279593, 46.710468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751205, 30.308361, 46.695091>,  <42.147491, 30.356310, 46.669460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751205, 30.308361, 46.695091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045201, -0.154044, -0.987029,
		0.128189, -0.980765, 0.147196,
		-0.990719, -0.119872, 0.064078,
		41.453991, 30.272400, 46.714314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007942, 29.876545, 46.159370>,  <42.147491, 30.356310, 46.669460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007942, 29.876545, 46.159370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660995, 30.066874, 46.217705>,  <41.452827, 30.181070, 46.252705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660995, 30.066874, 46.217705>,  <42.007942, 29.876545, 46.159370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660995, 30.066874, 46.217705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262033, -0.187498, -0.946669,
		-0.423103, -0.859323, 0.287311,
		-0.867365, 0.475824, 0.145840,
		41.400787, 30.209620, 46.261456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595337, 29.575802, 45.651718>,  <42.007942, 29.876545, 46.159370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595337, 29.575802, 45.651718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375183, 29.886438, 45.774342>,  <41.243092, 30.072821, 45.847916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375183, 29.886438, 45.774342>,  <41.595337, 29.575802, 45.651718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375183, 29.886438, 45.774342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526284, -0.037656, -0.849475,
		-0.648152, -0.628877, 0.429433,
		-0.550386, 0.776592, 0.306561,
		41.210068, 30.119415, 45.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934200, 29.511919, 45.491501>,  <41.595337, 29.575802, 45.651718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934200, 29.511919, 45.491501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920734, 29.909462, 45.533669>,  <40.912655, 30.147987, 45.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920734, 29.909462, 45.533669>,  <40.934200, 29.511919, 45.491501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920734, 29.909462, 45.533669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597847, 0.064499, -0.799011,
		-0.800903, -0.089924, 0.592004,
		-0.033667, 0.993858, 0.105418,
		40.910633, 30.207619, 45.565292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291603, 29.768200, 45.692474>,  <40.934200, 29.511919, 45.491501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291603, 29.768200, 45.692474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462074, 30.079809, 45.508518>,  <40.564358, 30.266775, 45.398144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462074, 30.079809, 45.508518>,  <40.291603, 29.768200, 45.692474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462074, 30.079809, 45.508518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708999, -0.028119, -0.704649,
		-0.561869, 0.626365, 0.540343,
		0.426173, 0.779023, -0.459891,
		40.589928, 30.313517, 45.370552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776749, 29.976810, 45.331062>,  <40.291603, 29.768200, 45.692474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776749, 29.976810, 45.331062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070786, 30.175421, 45.146408>,  <40.247208, 30.294586, 45.035614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070786, 30.175421, 45.146408>,  <39.776749, 29.976810, 45.331062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070786, 30.175421, 45.146408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550266, 0.039192, -0.834069,
		-0.396044, 0.867137, 0.302030,
		0.735089, 0.496525, -0.461635,
		40.291313, 30.324379, 45.007919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484074, 30.630972, 44.990818>,  <39.776749, 29.976810, 45.331062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484074, 30.630972, 44.990818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812614, 30.489882, 44.811497>,  <40.009739, 30.405228, 44.703903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812614, 30.489882, 44.811497>,  <39.484074, 30.630972, 44.990818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812614, 30.489882, 44.811497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469818, 0.027409, -0.882338,
		0.323510, 0.935325, -0.143205,
		0.821348, -0.352726, -0.448300,
		40.059017, 30.384064, 44.677006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621178, 31.150257, 44.339127>,  <39.484074, 30.630972, 44.990818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621178, 31.150257, 44.339127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823395, 30.808065, 44.294262>,  <39.944725, 30.602751, 44.267342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823395, 30.808065, 44.294262>,  <39.621178, 31.150257, 44.339127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823395, 30.808065, 44.294262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150197, 0.040758, -0.987816,
		0.849629, 0.516228, -0.107886,
		0.505541, -0.855481, -0.112165,
		39.975056, 30.551422, 44.260612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145672, 31.293835, 43.942078>,  <39.621178, 31.150257, 44.339127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145672, 31.293835, 43.942078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069157, 30.902300, 43.912991>,  <40.023247, 30.667379, 43.895538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069157, 30.902300, 43.912991>,  <40.145672, 31.293835, 43.942078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069157, 30.902300, 43.912991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167918, 0.105626, -0.980126,
		0.967064, -0.175273, -0.184569,
		-0.191285, -0.978837, -0.072715,
		40.011772, 30.608648, 43.891174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408974, 31.139671, 43.207657>,  <40.145672, 31.293835, 43.942078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408974, 31.139671, 43.207657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185120, 30.823450, 43.307125>,  <40.050808, 30.633717, 43.366806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185120, 30.823450, 43.307125>,  <40.408974, 31.139671, 43.207657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185120, 30.823450, 43.307125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229452, -0.140528, -0.963122,
		0.796344, -0.596053, -0.102749,
		-0.559632, -0.790552, 0.248674,
		40.017231, 30.586285, 43.381729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475582, 30.659754, 42.673363>,  <40.408974, 31.139671, 43.207657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475582, 30.659754, 42.673363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142147, 30.521675, 42.845863>,  <39.942085, 30.438828, 42.949364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142147, 30.521675, 42.845863>,  <40.475582, 30.659754, 42.673363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142147, 30.521675, 42.845863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389656, -0.185910, -0.902001,
		0.391543, -0.919932, 0.020462,
		-0.833584, -0.345199, 0.431249,
		39.892071, 30.418116, 42.975239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345596, 29.885483, 42.564117>,  <40.475582, 30.659754, 42.673363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345596, 29.885483, 42.564117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003353, 30.083881, 42.623333>,  <39.798008, 30.202921, 42.658863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003353, 30.083881, 42.623333>,  <40.345596, 29.885483, 42.564117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003353, 30.083881, 42.623333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340874, -0.324694, -0.882258,
		-0.389535, -0.805330, 0.446885,
		-0.855609, 0.496002, 0.148036,
		39.746670, 30.232681, 42.667744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846928, 29.376972, 42.407352>,  <40.345596, 29.885483, 42.564117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846928, 29.376972, 42.407352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652134, 29.725143, 42.378502>,  <39.535259, 29.934046, 42.361191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652134, 29.725143, 42.378502>,  <39.846928, 29.376972, 42.407352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652134, 29.725143, 42.378502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358528, -0.274521, -0.892242,
		-0.796432, -0.408649, 0.445760,
		-0.486984, 0.870428, -0.072126,
		39.506039, 29.986271, 42.356865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231735, 29.146749, 42.151466>,  <39.846928, 29.376972, 42.407352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231735, 29.146749, 42.151466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231312, 29.541607, 42.087536>,  <39.231056, 29.778521, 42.049175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231312, 29.541607, 42.087536>,  <39.231735, 29.146749, 42.151466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231312, 29.541607, 42.087536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424212, -0.145178, -0.893850,
		-0.905562, 0.066855, 0.418912,
		-0.001059, 0.987144, -0.159829,
		39.230995, 29.837749, 42.039589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602592, 29.213108, 41.855228>,  <39.231735, 29.146749, 42.151466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602592, 29.213108, 41.855228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774132, 29.561281, 41.758533>,  <38.877056, 29.770185, 41.700516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774132, 29.561281, 41.758533>,  <38.602592, 29.213108, 41.855228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774132, 29.561281, 41.758533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444067, -0.029909, -0.895494,
		-0.786696, 0.491380, 0.373703,
		0.428851, 0.870431, -0.241736,
		38.902786, 29.822411, 41.686012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121857, 29.602837, 41.467026>,  <38.602592, 29.213108, 41.855228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121857, 29.602837, 41.467026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479950, 29.750702, 41.367504>,  <38.694805, 29.839422, 41.307793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479950, 29.750702, 41.367504>,  <38.121857, 29.602837, 41.467026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479950, 29.750702, 41.367504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217550, -0.124702, -0.968050,
		-0.388881, 0.920759, -0.031217,
		0.895234, 0.369665, -0.248805,
		38.748520, 29.861601, 41.292862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895805, 30.132563, 41.057358>,  <38.121857, 29.602837, 41.467026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895805, 30.132563, 41.057358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259621, 30.006910, 40.948498>,  <38.477909, 29.931519, 40.883183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259621, 30.006910, 40.948498>,  <37.895805, 30.132563, 41.057358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259621, 30.006910, 40.948498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298670, -0.038642, -0.953574,
		0.289030, 0.948593, -0.128968,
		0.909537, -0.314130, -0.272148,
		38.532482, 29.912672, 40.866852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824600, 30.236689, 40.357651>,  <37.895805, 30.132563, 41.057358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824600, 30.236689, 40.357651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177769, 30.049669, 40.374840>,  <38.389671, 29.937458, 40.385155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177769, 30.049669, 40.374840>,  <37.824600, 30.236689, 40.357651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177769, 30.049669, 40.374840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041136, -0.014148, -0.999053,
		0.467713, 0.883855, 0.006741,
		0.882923, -0.467547, 0.042976,
		38.442646, 29.909405, 40.387733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228287, 30.685255, 39.991623>,  <37.824600, 30.236689, 40.357651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228287, 30.685255, 39.991623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345383, 30.302809, 39.996525>,  <38.415638, 30.073341, 39.999466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345383, 30.302809, 39.996525>,  <38.228287, 30.685255, 39.991623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345383, 30.302809, 39.996525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129108, 0.026827, -0.991268,
		0.947436, 0.291764, 0.131295,
		0.292738, -0.956114, 0.012252,
		38.433205, 30.015974, 40.000202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858284, 30.703049, 39.708614>,  <38.228287, 30.685255, 39.991623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858284, 30.703049, 39.708614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748329, 30.319725, 39.677429>,  <38.682358, 30.089731, 39.658718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748329, 30.319725, 39.677429>,  <38.858284, 30.703049, 39.708614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748329, 30.319725, 39.677429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259803, 0.004033, -0.965653,
		0.925710, -0.285701, 0.247863,
		-0.274888, -0.958310, -0.077959,
		38.665863, 30.032232, 39.654041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395538, 30.347755, 39.421329>,  <38.858284, 30.703049, 39.708614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395538, 30.347755, 39.421329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073883, 30.116531, 39.365891>,  <38.880890, 29.977797, 39.332626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073883, 30.116531, 39.365891>,  <39.395538, 30.347755, 39.421329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073883, 30.116531, 39.365891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260116, -0.132532, -0.956439,
		0.534509, -0.805161, 0.256937,
		-0.804139, -0.578058, -0.138596,
		38.832642, 29.943113, 39.324310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615646, 29.741602, 39.132298>,  <39.395538, 30.347755, 39.421329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615646, 29.741602, 39.132298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233273, 29.774151, 39.019466>,  <39.003849, 29.793680, 38.951767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233273, 29.774151, 39.019466>,  <39.615646, 29.741602, 39.132298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233273, 29.774151, 39.019466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257606, -0.228346, -0.938881,
		-0.140807, -0.970174, 0.197323,
		-0.955936, 0.081369, -0.282075,
		38.946491, 29.798563, 38.934845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521767, 29.176634, 38.643841>,  <39.615646, 29.741602, 39.132298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521767, 29.176634, 38.643841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237911, 29.448730, 38.570431>,  <39.067596, 29.611988, 38.526386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237911, 29.448730, 38.570431>,  <39.521767, 29.176634, 38.643841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237911, 29.448730, 38.570431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015232, -0.275228, -0.961258,
		-0.704401, -0.679351, 0.205674,
		-0.709639, 0.680244, -0.183523,
		39.025021, 29.652803, 38.515373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997223, 28.846514, 38.182079>,  <39.521767, 29.176634, 38.643841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997223, 28.846514, 38.182079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951359, 29.238344, 38.116013>,  <38.923840, 29.473442, 38.076370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951359, 29.238344, 38.116013>,  <38.997223, 28.846514, 38.182079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951359, 29.238344, 38.116013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095098, -0.154678, -0.983377,
		-0.988843, -0.128459, -0.075421,
		-0.114658, 0.979578, -0.165169,
		38.916962, 29.532217, 38.066463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581146, 28.902372, 37.615715>,  <38.997223, 28.846514, 38.182079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581146, 28.902372, 37.615715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718693, 29.277128, 37.640976>,  <38.801220, 29.501982, 37.656132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718693, 29.277128, 37.640976>,  <38.581146, 28.902372, 37.615715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718693, 29.277128, 37.640976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289350, -0.041742, -0.956313,
		-0.893325, 0.347120, -0.285444,
		0.343871, 0.936891, 0.063150,
		38.821854, 29.558195, 37.659920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426430, 29.134130, 36.964157>,  <38.581146, 28.902372, 37.615715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426430, 29.134130, 36.964157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687622, 29.404970, 37.099899>,  <38.844337, 29.567474, 37.181343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687622, 29.404970, 37.099899>,  <38.426430, 29.134130, 36.964157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687622, 29.404970, 37.099899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269049, 0.211464, -0.939625,
		-0.707979, 0.704856, -0.044091,
		0.652977, 0.677097, 0.339352,
		38.883514, 29.608099, 37.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227711, 29.809332, 36.722618>,  <38.426430, 29.134130, 36.964157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227711, 29.809332, 36.722618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620331, 29.804817, 36.798958>,  <38.855904, 29.802109, 36.844761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620331, 29.804817, 36.798958>,  <38.227711, 29.809332, 36.722618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620331, 29.804817, 36.798958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183727, 0.331698, -0.925322,
		-0.052861, 0.943318, 0.327653,
		0.981555, -0.011285, 0.190847,
		38.914799, 29.801432, 36.856213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468910, 30.517088, 36.658257>,  <38.227711, 29.809332, 36.722618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468910, 30.517088, 36.658257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781025, 30.269073, 36.625488>,  <38.968292, 30.120264, 36.605827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781025, 30.269073, 36.625488>,  <38.468910, 30.517088, 36.658257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781025, 30.269073, 36.625488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259671, 0.440339, -0.859460,
		0.568972, 0.649349, 0.504596,
		0.780283, -0.620038, -0.081924,
		39.015110, 30.083061, 36.600910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999825, 30.969412, 36.604366>,  <38.468910, 30.517088, 36.658257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999825, 30.969412, 36.604366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111671, 30.617512, 36.450558>,  <39.178780, 30.406372, 36.358273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111671, 30.617512, 36.450558>,  <38.999825, 30.969412, 36.604366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111671, 30.617512, 36.450558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241447, 0.452053, -0.858691,
		0.929258, 0.147260, 0.338814,
		0.279613, -0.879751, -0.384518,
		39.195557, 30.353586, 36.335201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609673, 31.110825, 36.280151>,  <38.999825, 30.969412, 36.604366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609673, 31.110825, 36.280151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520454, 30.753805, 36.123379>,  <39.466923, 30.539595, 36.029316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520454, 30.753805, 36.123379>,  <39.609673, 31.110825, 36.280151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520454, 30.753805, 36.123379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235390, 0.340849, -0.910172,
		0.945961, -0.295266, 0.134072,
		-0.223045, -0.892547, -0.391932,
		39.453541, 30.486042, 36.005798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164368, 31.026299, 35.953411>,  <39.609673, 31.110825, 36.280151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164368, 31.026299, 35.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939091, 30.739698, 35.788754>,  <39.803925, 30.567738, 35.689960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939091, 30.739698, 35.788754>,  <40.164368, 31.026299, 35.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939091, 30.739698, 35.788754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320817, 0.269486, -0.907994,
		0.761509, -0.643432, 0.078094,
		-0.563188, -0.716500, -0.411640,
		39.770134, 30.524748, 35.665260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592484, 30.637508, 35.513172>,  <40.164368, 31.026299, 35.953411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592484, 30.637508, 35.513172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205307, 30.618980, 35.414425>,  <39.973000, 30.607864, 35.355175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205307, 30.618980, 35.414425>,  <40.592484, 30.637508, 35.513172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205307, 30.618980, 35.414425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222848, 0.295090, -0.929118,
		0.115886, -0.954346, -0.275307,
		-0.967941, -0.046320, -0.246870,
		39.914925, 30.605083, 35.340363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537949, 30.177629, 34.967659>,  <40.592484, 30.637508, 35.513172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537949, 30.177629, 34.967659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220192, 30.420225, 34.954346>,  <40.029537, 30.565783, 34.946358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220192, 30.420225, 34.954346>,  <40.537949, 30.177629, 34.967659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220192, 30.420225, 34.954346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204848, 0.215921, -0.954681,
		-0.571815, -0.765213, -0.295765,
		-0.794396, 0.606488, -0.033285,
		39.981873, 30.602171, 34.944359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229153, 30.048113, 34.301258>,  <40.537949, 30.177629, 34.967659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229153, 30.048113, 34.301258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065540, 30.394575, 34.416130>,  <39.967373, 30.602453, 34.485054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065540, 30.394575, 34.416130>,  <40.229153, 30.048113, 34.301258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065540, 30.394575, 34.416130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213457, 0.396794, -0.892743,
		-0.887205, -0.303857, -0.347187,
		-0.409028, 0.866155, 0.287178,
		39.942833, 30.654421, 34.502285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572395, 30.290504, 33.902390>,  <40.229153, 30.048113, 34.301258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572395, 30.290504, 33.902390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814739, 30.583796, 34.025879>,  <39.960144, 30.759771, 34.099972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814739, 30.583796, 34.025879>,  <39.572395, 30.290504, 33.902390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814739, 30.583796, 34.025879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341856, 0.110460, -0.933238,
		-0.718379, 0.670949, -0.183736,
		0.605860, 0.733230, 0.308720,
		39.996498, 30.803764, 34.118496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550217, 30.923588, 33.463490>,  <39.572395, 30.290504, 33.902390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550217, 30.923588, 33.463490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877617, 30.824539, 33.670849>,  <40.074059, 30.765110, 33.795265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877617, 30.824539, 33.670849>,  <39.550217, 30.923588, 33.463490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877617, 30.824539, 33.670849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505953, -0.116762, -0.854622,
		0.272152, 0.961795, 0.029715,
		0.818502, -0.247621, 0.518400,
		40.123169, 30.750254, 33.826370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113228, 31.432053, 33.376320>,  <39.550217, 30.923588, 33.463490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113228, 31.432053, 33.376320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239697, 31.054289, 33.412380>,  <40.315578, 30.827631, 33.434017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239697, 31.054289, 33.412380>,  <40.113228, 31.432053, 33.376320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239697, 31.054289, 33.412380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322954, 0.017789, -0.946248,
		0.892041, 0.328292, 0.310625,
		0.316171, -0.944409, 0.090155,
		40.334549, 30.770966, 33.439426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891567, 31.265276, 33.452713>,  <40.113228, 31.432053, 33.376320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891567, 31.265276, 33.452713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628933, 31.041286, 33.250595>,  <40.471352, 30.906893, 33.129326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628933, 31.041286, 33.250595>,  <40.891567, 31.265276, 33.452713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628933, 31.041286, 33.250595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427559, 0.275564, -0.860963,
		0.621357, -0.781341, 0.058490,
		-0.656589, -0.559973, -0.505293,
		40.431957, 30.873295, 33.099007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662968, 31.044336, 33.235886>,  <40.891567, 31.265276, 33.452713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662968, 31.044336, 33.235886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655350, 31.444181, 33.227791>,  <41.650780, 31.684090, 33.222935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655350, 31.444181, 33.227791>,  <41.662968, 31.044336, 33.235886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655350, 31.444181, 33.227791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476402, 0.026872, 0.878817,
		0.879021, 0.007095, -0.476730,
		-0.019046, 0.999614, -0.020241,
		41.649635, 31.744066, 33.221718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357384, 31.298512, 33.377697>,  <41.662968, 31.044336, 33.235886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357384, 31.298512, 33.377697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105984, 31.592377, 33.479877>,  <41.955143, 31.768696, 33.541187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105984, 31.592377, 33.479877>,  <42.357384, 31.298512, 33.377697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105984, 31.592377, 33.479877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445588, 0.070891, 0.892427,
		0.637525, 0.674716, -0.371913,
		-0.628500, 0.734665, 0.255451,
		41.917435, 31.812777, 33.556511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987057, 31.007444, 33.388599>,  <42.357384, 31.298512, 33.377697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987057, 31.007444, 33.388599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086266, 31.282068, 33.661983>,  <43.145790, 31.446842, 33.826015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086266, 31.282068, 33.661983>,  <42.987057, 31.007444, 33.388599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086266, 31.282068, 33.661983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113652, -0.721255, 0.683282,
		0.962064, -0.091794, -0.256918,
		0.248024, 0.686561, 0.683461,
		43.160671, 31.488037, 33.867023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453205, 30.720663, 33.792522>,  <42.987057, 31.007444, 33.388599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453205, 30.720663, 33.792522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350658, 31.017870, 34.039810>,  <43.289131, 31.196194, 34.188183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350658, 31.017870, 34.039810>,  <43.453205, 30.720663, 33.792522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350658, 31.017870, 34.039810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071748, -0.623204, 0.778761,
		0.963912, 0.244007, 0.106462,
		-0.256371, 0.743018, 0.618221,
		43.273746, 31.240776, 34.225277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882530, 30.626122, 34.420017>,  <43.453205, 30.720663, 33.792522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882530, 30.626122, 34.420017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567108, 30.843018, 34.536053>,  <43.377853, 30.973154, 34.605675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567108, 30.843018, 34.536053>,  <43.882530, 30.626122, 34.420017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567108, 30.843018, 34.536053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011752, -0.484925, 0.874477,
		0.614848, 0.686167, 0.388763,
		-0.788558, 0.542239, 0.290092,
		43.330540, 31.005690, 34.623081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080280, 30.902243, 35.123665>,  <43.882530, 30.626122, 34.420017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080280, 30.902243, 35.123665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681870, 30.937176, 35.116695>,  <43.442822, 30.958136, 35.112514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681870, 30.937176, 35.116695>,  <44.080280, 30.902243, 35.123665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681870, 30.937176, 35.116695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053629, -0.432007, 0.900274,
		0.071096, 0.897632, 0.434975,
		-0.996027, 0.087333, -0.017425,
		43.383060, 30.963375, 35.111469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957275, 30.996162, 35.834240>,  <44.080280, 30.902243, 35.123665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957275, 30.996162, 35.834240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604111, 30.920631, 35.662281>,  <43.392212, 30.875313, 35.559105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604111, 30.920631, 35.662281>,  <43.957275, 30.996162, 35.834240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604111, 30.920631, 35.662281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315078, -0.440569, 0.840610,
		-0.348132, 0.877635, 0.329487,
		-0.882910, -0.188829, -0.429899,
		43.339237, 30.863983, 35.533310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371677, 31.126080, 36.373142>,  <43.957275, 30.996162, 35.834240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371677, 31.126080, 36.373142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277756, 30.856081, 36.093357>,  <43.221401, 30.694082, 35.925488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277756, 30.856081, 36.093357>,  <43.371677, 31.126080, 36.373142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277756, 30.856081, 36.093357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213435, -0.666219, 0.714561,
		-0.948321, 0.317072, 0.012364,
		-0.234804, -0.674995, -0.699464,
		43.207314, 30.653584, 35.883518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793503, 30.898390, 36.667690>,  <43.371677, 31.126080, 36.373142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793503, 30.898390, 36.667690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924435, 30.623945, 36.407810>,  <43.002995, 30.459278, 36.251884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924435, 30.623945, 36.407810>,  <42.793503, 30.898390, 36.667690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924435, 30.623945, 36.407810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145266, -0.715942, 0.682881,
		-0.933678, -0.129148, -0.334017,
		0.327329, -0.686111, -0.649698,
		43.022633, 30.418112, 36.212902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273346, 30.386581, 36.748417>,  <42.793503, 30.898390, 36.667690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273346, 30.386581, 36.748417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579666, 30.196373, 36.575241>,  <42.763458, 30.082249, 36.471336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579666, 30.196373, 36.575241>,  <42.273346, 30.386581, 36.748417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579666, 30.196373, 36.575241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150502, -0.787048, 0.598252,
		-0.625223, -0.392982, -0.674286,
		0.765797, -0.475522, -0.432935,
		42.809406, 30.053717, 36.445362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132221, 29.603195, 36.609970>,  <42.273346, 30.386581, 36.748417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132221, 29.603195, 36.609970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531944, 29.605730, 36.624668>,  <42.771778, 29.607250, 36.633488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531944, 29.605730, 36.624668>,  <42.132221, 29.603195, 36.609970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531944, 29.605730, 36.624668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016210, -0.813593, 0.581209,
		0.033576, -0.581400, -0.812925,
		0.999305, 0.006338, 0.036742,
		42.831738, 29.607632, 36.635689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277443, 28.924112, 36.589981>,  <42.132221, 29.603195, 36.609970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277443, 28.924112, 36.589981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626884, 29.078299, 36.708797>,  <42.836548, 29.170811, 36.780087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626884, 29.078299, 36.708797>,  <42.277443, 28.924112, 36.589981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626884, 29.078299, 36.708797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225699, -0.861708, 0.454444,
		0.431137, -0.329961, -0.839790,
		0.873602, 0.385468, 0.297042,
		42.888966, 29.193939, 36.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681526, 28.442244, 36.326862>,  <42.277443, 28.924112, 36.589981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681526, 28.442244, 36.326862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869183, 28.647343, 36.614471>,  <42.981777, 28.770403, 36.787037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869183, 28.647343, 36.614471>,  <42.681526, 28.442244, 36.326862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869183, 28.647343, 36.614471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219774, -0.856354, 0.467288,
		0.855337, -0.061204, -0.514444,
		0.469146, 0.512750, 0.719020,
		43.009926, 28.801168, 36.830177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331539, 28.122751, 36.481964>,  <42.681526, 28.442244, 36.326862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331539, 28.122751, 36.481964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265472, 28.338192, 36.812450>,  <43.225834, 28.467457, 37.010742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265472, 28.338192, 36.812450>,  <43.331539, 28.122751, 36.481964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265472, 28.338192, 36.812450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337299, -0.756360, 0.560490,
		0.926795, 0.371255, -0.056745,
		-0.165165, 0.538600, 0.826215,
		43.215923, 28.499771, 37.060314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869133, 28.048609, 36.861534>,  <43.331539, 28.122751, 36.481964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869133, 28.048609, 36.861534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602573, 28.156498, 37.139572>,  <43.442638, 28.221231, 37.306396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602573, 28.156498, 37.139572>,  <43.869133, 28.048609, 36.861534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602573, 28.156498, 37.139572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379342, -0.679936, 0.627523,
		0.641880, 0.681862, 0.350793,
		-0.666401, 0.269724, 0.695096,
		43.402653, 28.237415, 37.348103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293903, 28.131544, 37.434879>,  <43.869133, 28.048609, 36.861534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293903, 28.131544, 37.434879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917839, 28.071924, 37.557442>,  <43.692200, 28.036152, 37.630978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917839, 28.071924, 37.557442>,  <44.293903, 28.131544, 37.434879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917839, 28.071924, 37.557442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327512, -0.643376, 0.691956,
		0.093997, 0.750900, 0.653692,
		-0.940160, -0.149050, 0.306404,
		43.635792, 28.027208, 37.649364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357735, 28.013657, 38.092449>,  <44.293903, 28.131544, 37.434879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357735, 28.013657, 38.092449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982353, 27.875496, 38.091751>,  <43.757126, 27.792599, 38.091331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982353, 27.875496, 38.091751>,  <44.357735, 28.013657, 38.092449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982353, 27.875496, 38.091751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256479, -0.700207, 0.666280,
		-0.231355, 0.624826, 0.745700,
		-0.938453, -0.345403, -0.001741,
		43.700817, 27.771875, 38.091228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198837, 27.906975, 38.785576>,  <44.357735, 28.013657, 38.092449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198837, 27.906975, 38.785576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927513, 27.690958, 38.586277>,  <43.764721, 27.561348, 38.466698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927513, 27.690958, 38.586277>,  <44.198837, 27.906975, 38.785576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927513, 27.690958, 38.586277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003670, -0.680576, 0.732668,
		-0.734768, 0.495147, 0.463622,
		-0.678308, -0.540043, -0.498249,
		43.724022, 27.528946, 38.436802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776867, 27.742773, 39.249260>,  <44.198837, 27.906975, 38.785576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776867, 27.742773, 39.249260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682896, 27.470013, 38.972183>,  <43.626514, 27.306356, 38.805939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682896, 27.470013, 38.972183>,  <43.776867, 27.742773, 39.249260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682896, 27.470013, 38.972183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149373, -0.678844, 0.718929,
		-0.960468, 0.272364, 0.057620,
		-0.234926, -0.681901, -0.692691,
		43.612419, 27.265442, 38.764378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184166, 27.244989, 39.513901>,  <43.776867, 27.742773, 39.249260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184166, 27.244989, 39.513901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359104, 27.021688, 39.231884>,  <43.464069, 26.887709, 39.062675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359104, 27.021688, 39.231884>,  <43.184166, 27.244989, 39.513901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359104, 27.021688, 39.231884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168785, -0.821018, 0.545382,
		-0.883311, -0.119521, -0.453295,
		0.437348, -0.558251, -0.705041,
		43.490311, 26.854214, 39.020370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738777, 26.675846, 39.461735>,  <43.184166, 27.244989, 39.513901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738777, 26.675846, 39.461735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098991, 26.570543, 39.323326>,  <43.315121, 26.507360, 39.240280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098991, 26.570543, 39.323326>,  <42.738777, 26.675846, 39.461735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098991, 26.570543, 39.323326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000310, -0.795463, 0.606003,
		-0.434786, -0.545833, -0.716259,
		0.900534, -0.263259, -0.346026,
		43.369152, 26.491566, 39.219517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631393, 25.986927, 39.081825>,  <42.738777, 26.675846, 39.461735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631393, 25.986927, 39.081825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011211, 26.046293, 39.192348>,  <43.239101, 26.081913, 39.258663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011211, 26.046293, 39.192348>,  <42.631393, 25.986927, 39.081825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011211, 26.046293, 39.192348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004728, -0.874084, 0.485752,
		0.313605, -0.462548, -0.829277,
		0.949542, 0.148413, 0.276304,
		43.296074, 26.090816, 39.275238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894260, 25.353542, 39.015869>,  <42.631393, 25.986927, 39.081825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894260, 25.353542, 39.015869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162895, 25.526901, 39.256245>,  <43.324078, 25.630917, 39.400471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162895, 25.526901, 39.256245>,  <42.894260, 25.353542, 39.015869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162895, 25.526901, 39.256245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169907, -0.879545, 0.444445,
		0.721177, -0.196381, -0.664333,
		0.671591, 0.433399, 0.600941,
		43.364372, 25.656921, 39.436527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534641, 24.978416, 38.997547>,  <42.894260, 25.353542, 39.015869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534641, 24.978416, 38.997547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551365, 25.195292, 39.333233>,  <43.561398, 25.325417, 39.534645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551365, 25.195292, 39.333233>,  <43.534641, 24.978416, 38.997547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551365, 25.195292, 39.333233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123406, -0.836321, 0.534171,
		0.991475, 0.081231, -0.101875,
		0.041809, 0.542189, 0.839216,
		43.563908, 25.357948, 39.584999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992332, 24.535215, 39.448505>,  <43.534641, 24.978416, 38.997547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992332, 24.535215, 39.448505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800323, 24.796885, 39.682304>,  <43.685116, 24.953886, 39.822582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800323, 24.796885, 39.682304>,  <43.992332, 24.535215, 39.448505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800323, 24.796885, 39.682304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223926, -0.735576, 0.639363,
		0.848195, 0.176026, 0.499580,
		-0.480024, 0.654173, 0.584495,
		43.656315, 24.993137, 39.857655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254906, 24.531740, 40.171848>,  <43.992332, 24.535215, 39.448505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254906, 24.531740, 40.171848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871853, 24.634472, 40.223976>,  <43.642021, 24.696110, 40.255253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871853, 24.634472, 40.223976>,  <44.254906, 24.531740, 40.171848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871853, 24.634472, 40.223976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149740, -0.830539, 0.536454,
		0.246012, 0.494210, 0.833807,
		-0.957630, 0.256828, 0.130320,
		43.584564, 24.711521, 40.263073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245300, 25.363873, 40.151714>,  <44.254906, 24.531740, 40.171848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245300, 25.363873, 40.151714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555027, 25.153067, 40.011604>,  <44.740864, 25.026583, 39.927540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555027, 25.153067, 40.011604>,  <44.245300, 25.363873, 40.151714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555027, 25.153067, 40.011604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624662, 0.725074, 0.289941,
		0.101171, -0.443308, 0.890642,
		0.774314, -0.527016, -0.350274,
		44.787323, 24.994963, 39.906521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863617, 25.111559, 40.613144>,  <44.245300, 25.363873, 40.151714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863617, 25.111559, 40.613144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948132, 25.234613, 40.242043>,  <44.998840, 25.308447, 40.019382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948132, 25.234613, 40.242043>,  <44.863617, 25.111559, 40.613144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948132, 25.234613, 40.242043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355879, 0.859813, 0.366158,
		0.910334, -0.407530, 0.072184,
		0.211285, 0.307637, -0.927749,
		45.011517, 25.326904, 39.963718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642109, 24.992926, 40.671959>,  <44.863617, 25.111559, 40.613144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642109, 24.992926, 40.671959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890099, 25.144415, 40.946827>,  <46.038891, 25.235308, 41.111748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890099, 25.144415, 40.946827>,  <45.642109, 24.992926, 40.671959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890099, 25.144415, 40.946827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194169, 0.774501, -0.602035,
		-0.760218, 0.506673, 0.406634,
		0.619974, 0.378722, 0.687170,
		46.076092, 25.258032, 41.152977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588146, 25.736704, 40.684647>,  <45.642109, 24.992926, 40.671959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588146, 25.736704, 40.684647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962105, 25.648851, 40.796162>,  <46.186481, 25.596140, 40.863071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962105, 25.648851, 40.796162>,  <45.588146, 25.736704, 40.684647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962105, 25.648851, 40.796162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354240, 0.625705, -0.694988,
		-0.021799, 0.748503, 0.662773,
		0.934901, -0.219630, 0.278789,
		46.242577, 25.582962, 40.879799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986950, 26.314518, 40.804409>,  <45.588146, 25.736704, 40.684647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986950, 26.314518, 40.804409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220959, 26.016256, 40.676815>,  <46.361366, 25.837299, 40.600258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220959, 26.016256, 40.676815>,  <45.986950, 26.314518, 40.804409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220959, 26.016256, 40.676815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529904, 0.649186, -0.545673,
		0.613961, 0.150201, 0.774914,
		0.585024, -0.745652, -0.318982,
		46.396465, 25.792561, 40.581120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734043, 26.441105, 40.985561>,  <45.986950, 26.314518, 40.804409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734043, 26.441105, 40.985561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644703, 26.247416, 40.647179>,  <46.591099, 26.131201, 40.444149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644703, 26.247416, 40.647179>,  <46.734043, 26.441105, 40.985561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.644703, 26.247416, 40.647179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416454, 0.737274, -0.531970,
		0.881294, -0.471119, 0.036985,
		-0.223353, -0.484224, -0.845955,
		46.577698, 26.102148, 40.393391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389858, 26.457058, 40.448833>,  <46.734043, 26.441105, 40.985561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389858, 26.457058, 40.448833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.023186, 26.413416, 40.295055>,  <46.803185, 26.387230, 40.202789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.023186, 26.413416, 40.295055>,  <47.389858, 26.457058, 40.448833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.023186, 26.413416, 40.295055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127821, 0.831421, -0.540741,
		0.378630, -0.544826, -0.748200,
		-0.916679, -0.109105, -0.384442,
		46.748180, 26.380684, 40.179722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.366936, 26.541445, 39.610157>,  <47.389858, 26.457058, 40.448833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.366936, 26.541445, 39.610157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007534, 26.612474, 39.770737>,  <46.791893, 26.655092, 39.867085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007534, 26.612474, 39.770737>,  <47.366936, 26.541445, 39.610157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007534, 26.612474, 39.770737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143161, 0.745985, -0.650393,
		-0.414967, -0.641852, -0.644848,
		-0.898503, 0.177575, 0.401448,
		46.737984, 26.665747, 39.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.837170, 26.693321, 39.075169>,  <47.366936, 26.541445, 39.610157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.837170, 26.693321, 39.075169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704353, 26.894014, 39.394672>,  <46.624664, 27.014431, 39.586372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704353, 26.894014, 39.394672>,  <46.837170, 26.693321, 39.075169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704353, 26.894014, 39.394672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201765, 0.789422, -0.579744,
		-0.921433, -0.353660, -0.160888,
		-0.332041, 0.501734, 0.798756,
		46.604740, 27.044535, 39.634300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178997, 27.007734, 38.806072>,  <46.837170, 26.693321, 39.075169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178997, 27.007734, 38.806072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.301929, 27.194220, 39.137901>,  <46.375687, 27.306110, 39.336998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.301929, 27.194220, 39.137901>,  <46.178997, 27.007734, 38.806072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.301929, 27.194220, 39.137901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147571, 0.884568, -0.442450,
		-0.940092, 0.013556, 0.340652,
		0.307328, 0.466214, 0.829575,
		46.394127, 27.334084, 39.386772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659279, 27.568836, 38.923912>,  <46.178997, 27.007734, 38.806072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659279, 27.568836, 38.923912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000061, 27.684008, 39.098850>,  <46.204529, 27.753111, 39.203815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000061, 27.684008, 39.098850>,  <45.659279, 27.568836, 38.923912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000061, 27.684008, 39.098850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031867, 0.862205, -0.505556,
		-0.522647, 0.416773, 0.743734,
		0.851953, 0.287928, 0.437348,
		46.255646, 27.770386, 39.230053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473053, 28.167936, 39.246872>,  <45.659279, 27.568836, 38.923912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473053, 28.167936, 39.246872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871380, 28.201656, 39.260960>,  <46.110374, 28.221889, 39.269413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871380, 28.201656, 39.260960>,  <45.473053, 28.167936, 39.246872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871380, 28.201656, 39.260960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059120, 0.888473, -0.455106,
		-0.069655, 0.451121, 0.889741,
		0.995818, 0.084302, 0.035216,
		46.170124, 28.226946, 39.271523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638130, 28.856718, 39.572033>,  <45.473053, 28.167936, 39.246872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638130, 28.856718, 39.572033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954613, 28.728331, 39.363815>,  <46.144505, 28.651299, 39.238884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954613, 28.728331, 39.363815>,  <45.638130, 28.856718, 39.572033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954613, 28.728331, 39.363815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077643, 0.897028, -0.435100,
		0.606595, 0.303839, 0.734659,
		0.791211, -0.320970, -0.520542,
		46.191975, 28.632040, 39.207653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150822, 29.495045, 39.654785>,  <45.638130, 28.856718, 39.572033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150822, 29.495045, 39.654785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248795, 29.243988, 39.359200>,  <46.307579, 29.093353, 39.181847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248795, 29.243988, 39.359200>,  <46.150822, 29.495045, 39.654785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248795, 29.243988, 39.359200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099064, 0.774396, -0.624897,
		0.964466, 0.079851, 0.251851,
		0.244931, -0.627642, -0.738969,
		46.322273, 29.055695, 39.137508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.625950, 29.947903, 39.251301>,  <46.150822, 29.495045, 39.654785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.625950, 29.947903, 39.251301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563431, 29.630709, 39.015759>,  <46.525921, 29.440393, 38.874435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563431, 29.630709, 39.015759>,  <46.625950, 29.947903, 39.251301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563431, 29.630709, 39.015759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045162, 0.589820, -0.806271,
		0.986677, -0.152612, -0.056374,
		-0.156297, -0.792983, -0.588854,
		46.516541, 29.392815, 38.839104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079540, 30.109962, 38.627277>,  <46.625950, 29.947903, 39.251301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079540, 30.109962, 38.627277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806622, 29.838970, 38.517380>,  <46.642868, 29.676374, 38.451439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806622, 29.838970, 38.517380>,  <47.079540, 30.109962, 38.627277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806622, 29.838970, 38.517380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195919, 0.531512, -0.824082,
		0.704332, -0.508442, -0.495382,
		-0.682300, -0.677482, -0.274748,
		46.601933, 29.635725, 38.434956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232807, 30.043564, 37.890312>,  <47.079540, 30.109962, 38.627277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232807, 30.043564, 37.890312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853298, 29.949724, 37.974979>,  <46.625595, 29.893421, 38.025780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853298, 29.949724, 37.974979>,  <47.232807, 30.043564, 37.890312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853298, 29.949724, 37.974979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309668, 0.557203, -0.770474,
		0.062810, -0.796548, -0.601304,
		-0.948768, -0.234598, 0.211668,
		46.568668, 29.879345, 38.038479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935394, 29.914829, 37.196789>,  <47.232807, 30.043564, 37.890312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935394, 29.914829, 37.196789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618763, 29.951260, 37.438488>,  <46.428783, 29.973118, 37.583508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618763, 29.951260, 37.438488>,  <46.935394, 29.914829, 37.196789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618763, 29.951260, 37.438488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456605, 0.569000, -0.683923,
		-0.406105, -0.817279, -0.408820,
		-0.791575, 0.091075, 0.604247,
		46.381290, 29.978582, 37.619762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375797, 29.879089, 36.696697>,  <46.935394, 29.914829, 37.196789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375797, 29.879089, 36.696697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277733, 30.050222, 37.044689>,  <46.218895, 30.152903, 37.253483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277733, 30.050222, 37.044689>,  <46.375797, 29.879089, 36.696697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277733, 30.050222, 37.044689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419350, 0.762273, -0.493037,
		-0.874096, -0.485695, -0.007465,
		-0.245156, 0.427831, 0.869977,
		46.204185, 30.178572, 37.305683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768856, 30.044292, 36.549126>,  <46.375797, 29.879089, 36.696697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768856, 30.044292, 36.549126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852245, 30.282665, 36.859325>,  <45.902279, 30.425690, 37.045444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852245, 30.282665, 36.859325>,  <45.768856, 30.044292, 36.549126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852245, 30.282665, 36.859325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165610, 0.802983, -0.572531,
		-0.963904, -0.009073, 0.266094,
		0.208475, 0.595933, 0.775501,
		45.914787, 30.461445, 37.091976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220203, 30.445526, 36.733131>,  <45.768856, 30.044292, 36.549126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220203, 30.445526, 36.733131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515018, 30.654346, 36.904823>,  <45.691906, 30.779638, 37.007839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515018, 30.654346, 36.904823>,  <45.220203, 30.445526, 36.733131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515018, 30.654346, 36.904823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325092, 0.830642, -0.452051,
		-0.592531, 0.193639, 0.781928,
		0.737036, 0.522052, 0.429231,
		45.736130, 30.810963, 37.033592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914413, 31.033661, 37.016972>,  <45.220203, 30.445526, 36.733131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914413, 31.033661, 37.016972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298420, 31.137684, 36.975533>,  <45.528824, 31.200098, 36.950668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298420, 31.137684, 36.975533>,  <44.914413, 31.033661, 37.016972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298420, 31.137684, 36.975533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278486, 0.849688, -0.447745,
		-0.028415, 0.458694, 0.888140,
		0.960020, 0.260058, -0.103596,
		45.586426, 31.215702, 36.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933445, 31.781612, 37.392040>,  <44.914413, 31.033661, 37.016972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933445, 31.781612, 37.392040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250912, 31.758192, 37.149830>,  <45.441391, 31.744139, 37.004505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250912, 31.758192, 37.149830>,  <44.933445, 31.781612, 37.392040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250912, 31.758192, 37.149830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254397, 0.872205, -0.417780,
		0.552605, 0.485623, 0.677346,
		0.793669, -0.058553, -0.605526,
		45.489014, 31.740625, 36.968170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224342, 32.437462, 37.381458>,  <44.933445, 31.781612, 37.392040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224342, 32.437462, 37.381458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398575, 32.263454, 37.066235>,  <45.503113, 32.159050, 36.877102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398575, 32.263454, 37.066235>,  <45.224342, 32.437462, 37.381458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398575, 32.263454, 37.066235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263229, 0.775644, -0.573661,
		0.860804, 0.457312, 0.223343,
		0.435577, -0.435020, -0.788055,
		45.529247, 32.132950, 36.829819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747475, 32.907860, 36.976284>,  <45.224342, 32.437462, 37.381458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747475, 32.907860, 36.976284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608944, 32.621094, 36.734261>,  <45.525826, 32.449036, 36.589046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608944, 32.621094, 36.734261>,  <45.747475, 32.907860, 36.976284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608944, 32.621094, 36.734261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313198, 0.696328, -0.645782,
		0.884290, -0.034145, -0.465689,
		-0.346322, -0.716911, -0.605061,
		45.505047, 32.406021, 36.552742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988998, 33.126171, 36.273682>,  <45.747475, 32.907860, 36.976284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988998, 33.126171, 36.273682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721302, 32.835110, 36.213493>,  <45.560684, 32.660473, 36.177380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721302, 32.835110, 36.213493>,  <45.988998, 33.126171, 36.273682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721302, 32.835110, 36.213493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296619, 0.447288, -0.843771,
		0.681274, -0.520054, -0.515179,
		-0.669240, -0.727652, -0.150468,
		45.520531, 32.616814, 36.168354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100273, 32.968040, 35.564743>,  <45.988998, 33.126171, 36.273682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100273, 32.968040, 35.564743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726147, 32.893112, 35.684803>,  <45.501671, 32.848156, 35.756840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726147, 32.893112, 35.684803>,  <46.100273, 32.968040, 35.564743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726147, 32.893112, 35.684803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352217, 0.412718, -0.840004,
		0.033469, -0.891390, -0.451999,
		-0.935320, -0.187316, 0.300149,
		45.445549, 32.836918, 35.774849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805031, 33.236012, 35.123840>,  <46.100273, 32.968040, 35.564743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805031, 33.236012, 35.123840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463528, 33.132904, 35.304798>,  <45.258625, 33.071041, 35.413372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463528, 33.132904, 35.304798>,  <45.805031, 33.236012, 35.123840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463528, 33.132904, 35.304798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520518, 0.443885, -0.729402,
		-0.012798, -0.858210, -0.513140,
		-0.853755, -0.257763, 0.452395,
		45.207401, 33.055576, 35.440517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055004, 33.861954, 35.044861>,  <45.805031, 33.236012, 35.123840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055004, 33.861954, 35.044861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371498, 33.691837, 35.220619>,  <46.561394, 33.589767, 35.326073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371498, 33.691837, 35.220619>,  <46.055004, 33.861954, 35.044861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371498, 33.691837, 35.220619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435165, 0.896421, 0.084030,
		-0.429618, 0.124721, 0.894356,
		0.791239, -0.425293, 0.439393,
		46.608871, 33.564251, 35.352436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214676, 34.374737, 35.580357>,  <46.055004, 33.861954, 35.044861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214676, 34.374737, 35.580357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500492, 34.127846, 35.448620>,  <46.671982, 33.979713, 35.369579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500492, 34.127846, 35.448620>,  <46.214676, 34.374737, 35.580357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.500492, 34.127846, 35.448620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622578, 0.775740, -0.103073,
		0.319099, -0.131388, 0.938570,
		0.714544, -0.617223, -0.329337,
		46.714855, 33.942680, 35.349819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856354, 34.720619, 35.813938>,  <46.214676, 34.374737, 35.580357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856354, 34.720619, 35.813938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979641, 34.439503, 35.557472>,  <47.053612, 34.270832, 35.403595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979641, 34.439503, 35.557472>,  <46.856354, 34.720619, 35.813938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979641, 34.439503, 35.557472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638339, 0.652502, -0.408367,
		0.705357, -0.283414, 0.649730,
		0.308213, -0.702792, -0.641161,
		47.072105, 34.228664, 35.365124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.592342, 34.639671, 35.880852>,  <46.856354, 34.720619, 35.813938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.592342, 34.639671, 35.880852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442036, 34.570873, 35.516605>,  <47.351852, 34.529594, 35.298058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442036, 34.570873, 35.516605>,  <47.592342, 34.639671, 35.880852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.442036, 34.570873, 35.516605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455708, 0.821317, -0.343175,
		0.806927, -0.543927, -0.230242,
		-0.375764, -0.171994, -0.910615,
		47.329308, 34.519276, 35.243420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.598583, 35.259464, 35.517551>,  <47.592342, 34.639671, 35.880852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.598583, 35.259464, 35.517551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526901, 34.995937, 35.225292>,  <47.483891, 34.837822, 35.049934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526901, 34.995937, 35.225292>,  <47.598583, 35.259464, 35.517551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526901, 34.995937, 35.225292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181144, 0.707879, -0.682711,
		0.966991, -0.254701, -0.007518,
		-0.179209, -0.658814, -0.730650,
		47.473137, 34.798294, 35.006096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.189529, 32.889874, 43.687645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822453, 32.895500, 43.846458>,  <36.602207, 32.898876, 43.941746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822453, 32.895500, 43.846458>,  <37.189529, 32.889874, 43.687645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822453, 32.895500, 43.846458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384726, 0.217820, -0.896962,
		-0.099102, -0.975888, -0.194479,
		-0.917695, 0.014070, 0.397036,
		36.547142, 32.899719, 43.965569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877705, 32.445278, 43.293938>,  <37.189529, 32.889874, 43.687645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877705, 32.445278, 43.293938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599983, 32.683258, 43.455917>,  <36.433350, 32.826046, 43.553104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599983, 32.683258, 43.455917>,  <36.877705, 32.445278, 43.293938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599983, 32.683258, 43.455917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487045, 0.025815, -0.872995,
		-0.529842, -0.803348, 0.271844,
		-0.694301, 0.594950, 0.404945,
		36.391693, 32.861744, 43.577400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183975, 32.155960, 43.033928>,  <36.877705, 32.445278, 43.293938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183975, 32.155960, 43.033928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108101, 32.531593, 43.148575>,  <36.062576, 32.756973, 43.217365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108101, 32.531593, 43.148575>,  <36.183975, 32.155960, 43.033928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108101, 32.531593, 43.148575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476657, 0.167136, -0.863055,
		-0.858381, -0.300327, 0.415915,
		-0.189684, 0.939079, 0.286620,
		36.051197, 32.813316, 43.234562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599972, 32.243534, 42.870159>,  <36.183975, 32.155960, 43.033928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599972, 32.243534, 42.870159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696510, 32.626450, 42.933846>,  <35.754433, 32.856197, 42.972057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696510, 32.626450, 42.933846>,  <35.599972, 32.243534, 42.870159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696510, 32.626450, 42.933846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369742, 0.242400, -0.896957,
		-0.897243, 0.157604, 0.412452,
		0.241342, 0.957289, 0.159219,
		35.768913, 32.913635, 42.981613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040070, 32.508984, 42.758247>,  <35.599972, 32.243534, 42.870159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040070, 32.508984, 42.758247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298187, 32.810982, 42.711647>,  <35.453060, 32.992180, 42.683689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298187, 32.810982, 42.711647>,  <35.040070, 32.508984, 42.758247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298187, 32.810982, 42.711647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486756, 0.288822, -0.824409,
		-0.588779, 0.588695, 0.553875,
		0.645297, 0.754997, -0.116499,
		35.491776, 33.037479, 42.676697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514950, 33.029491, 42.400982>,  <35.040070, 32.508984, 42.758247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514950, 33.029491, 42.400982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892727, 33.145428, 42.338985>,  <35.119392, 33.214989, 42.301788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892727, 33.145428, 42.338985>,  <34.514950, 33.029491, 42.400982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892727, 33.145428, 42.338985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252396, 0.337510, -0.906854,
		-0.210531, 0.895590, 0.391913,
		0.944443, 0.289838, -0.154987,
		35.176060, 33.232380, 42.292488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478016, 33.589607, 42.099941>,  <34.514950, 33.029491, 42.400982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478016, 33.589607, 42.099941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856186, 33.490219, 42.015625>,  <35.083088, 33.430588, 41.965034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856186, 33.490219, 42.015625>,  <34.478016, 33.589607, 42.099941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856186, 33.490219, 42.015625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179849, 0.141508, -0.973463,
		0.271703, 0.958248, 0.089099,
		0.945427, -0.248468, -0.210788,
		35.139812, 33.415680, 41.952389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707874, 34.101906, 41.600479>,  <34.478016, 33.589607, 42.099941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707874, 34.101906, 41.600479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952175, 33.787205, 41.564713>,  <35.098755, 33.598385, 41.543251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952175, 33.787205, 41.564713>,  <34.707874, 34.101906, 41.600479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952175, 33.787205, 41.564713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071316, 0.057808, -0.995777,
		0.788602, 0.614553, -0.020802,
		0.610755, -0.786755, -0.089415,
		35.135403, 33.551178, 41.537888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263359, 34.331287, 41.182201>,  <34.707874, 34.101906, 41.600479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263359, 34.331287, 41.182201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231487, 33.934944, 41.138653>,  <35.212364, 33.697140, 41.112522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231487, 33.934944, 41.138653>,  <35.263359, 34.331287, 41.182201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231487, 33.934944, 41.138653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038845, 0.106049, -0.993602,
		0.996063, -0.083398, 0.030040,
		-0.079679, -0.990857, -0.108871,
		35.207584, 33.637688, 41.105991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832584, 34.080128, 40.710316>,  <35.263359, 34.331287, 41.182201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832584, 34.080128, 40.710316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551022, 33.797062, 40.685913>,  <35.382084, 33.627220, 40.671272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551022, 33.797062, 40.685913>,  <35.832584, 34.080128, 40.710316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551022, 33.797062, 40.685913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134130, -0.048088, -0.989796,
		0.697513, -0.704907, 0.128769,
		-0.703906, -0.707668, -0.061007,
		35.339851, 33.584763, 40.667610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108860, 33.778725, 40.117008>,  <35.832584, 34.080128, 40.710316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108860, 33.778725, 40.117008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760864, 33.586498, 40.161125>,  <35.552067, 33.471161, 40.187595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760864, 33.586498, 40.161125>,  <36.108860, 33.778725, 40.117008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760864, 33.586498, 40.161125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035402, -0.283984, -0.958175,
		0.491791, -0.829702, 0.264077,
		-0.869993, -0.480571, 0.110288,
		35.499866, 33.442326, 40.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253765, 33.096794, 39.842888>,  <36.108860, 33.778725, 40.117008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253765, 33.096794, 39.842888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861103, 33.172009, 39.830261>,  <35.625507, 33.217136, 39.822685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861103, 33.172009, 39.830261>,  <36.253765, 33.096794, 39.842888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861103, 33.172009, 39.830261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001525, -0.157817, -0.987467,
		-0.190660, -0.969400, 0.154635,
		-0.981655, 0.188035, -0.031568,
		35.566608, 33.228420, 39.820789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988457, 32.597050, 39.471684>,  <36.253765, 33.096794, 39.842888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988457, 32.597050, 39.471684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726135, 32.896473, 39.432522>,  <35.568741, 33.076126, 39.409023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726135, 32.896473, 39.432522>,  <35.988457, 32.597050, 39.471684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726135, 32.896473, 39.432522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075900, -0.194411, -0.977980,
		-0.751104, -0.633934, 0.184311,
		-0.655806, 0.748553, -0.097908,
		35.529392, 33.121040, 39.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434292, 32.317699, 39.070023>,  <35.988457, 32.597050, 39.471684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434292, 32.317699, 39.070023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399097, 32.713474, 39.023956>,  <35.377979, 32.950939, 38.996315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.399097, 32.713474, 39.023956>,  <35.434292, 32.317699, 39.070023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399097, 32.713474, 39.023956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316115, -0.081905, -0.945179,
		-0.944632, -0.119571, -0.305571,
		-0.087988, 0.989441, -0.115168,
		35.372700, 33.010307, 38.989407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221775, 32.383495, 38.383339>,  <35.434292, 32.317699, 39.070023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221775, 32.383495, 38.383339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337517, 32.752544, 38.485352>,  <35.406963, 32.973972, 38.546558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337517, 32.752544, 38.485352>,  <35.221775, 32.383495, 38.383339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337517, 32.752544, 38.485352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240478, 0.187818, -0.952310,
		-0.926522, 0.336887, -0.167524,
		0.289357, 0.922622, 0.255031,
		35.424324, 33.029331, 38.561859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804516, 32.775860, 37.985512>,  <35.221775, 32.383495, 38.383339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804516, 32.775860, 37.985512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135757, 32.980236, 38.077763>,  <35.334503, 33.102859, 38.133114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135757, 32.980236, 38.077763>,  <34.804516, 32.775860, 37.985512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135757, 32.980236, 38.077763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175023, 0.155188, -0.972257,
		-0.532554, 0.845493, 0.039086,
		0.828102, 0.510939, 0.230627,
		35.384190, 33.133518, 38.146950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827412, 33.436539, 37.538277>,  <34.804516, 32.775860, 37.985512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827412, 33.436539, 37.538277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196163, 33.378227, 37.681881>,  <35.417416, 33.343243, 37.768044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196163, 33.378227, 37.681881>,  <34.827412, 33.436539, 37.538277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196163, 33.378227, 37.681881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373986, 0.092364, -0.922823,
		0.101366, 0.984997, 0.139667,
		0.921878, -0.145776, 0.359013,
		35.472725, 33.334496, 37.789585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294907, 34.035854, 37.267555>,  <34.827412, 33.436539, 37.538277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294907, 34.035854, 37.267555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528313, 33.725056, 37.362038>,  <35.668358, 33.538578, 37.418728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528313, 33.725056, 37.362038>,  <35.294907, 34.035854, 37.267555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528313, 33.725056, 37.362038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450314, 0.067530, -0.890313,
		0.675816, 0.625877, 0.389296,
		0.583515, -0.776993, 0.236203,
		35.703369, 33.491959, 37.432899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996658, 34.118191, 36.899426>,  <35.294907, 34.035854, 37.267555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996658, 34.118191, 36.899426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058342, 33.748840, 37.040054>,  <36.095352, 33.527229, 37.124432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058342, 33.748840, 37.040054>,  <35.996658, 34.118191, 36.899426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058342, 33.748840, 37.040054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681349, -0.158304, -0.714635,
		0.715530, 0.349748, 0.604726,
		0.154212, -0.923372, 0.351572,
		36.104607, 33.471828, 37.145527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777336, 33.983929, 36.888264>,  <35.996658, 34.118191, 36.899426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777336, 33.983929, 36.888264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574799, 33.639275, 36.874409>,  <36.453278, 33.432484, 36.866096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574799, 33.639275, 36.874409>,  <36.777336, 33.983929, 36.888264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574799, 33.639275, 36.874409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710235, -0.393918, -0.583434,
		0.489063, -0.320020, 0.811421,
		-0.506344, -0.861635, -0.034639,
		36.422894, 33.380783, 36.864017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292698, 33.506012, 37.103710>,  <36.777336, 33.983929, 36.888264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292698, 33.506012, 37.103710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017036, 33.312611, 36.887821>,  <36.851639, 33.196571, 36.758289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017036, 33.312611, 36.887821>,  <37.292698, 33.506012, 37.103710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017036, 33.312611, 36.887821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719623, -0.369368, -0.587971,
		0.084931, -0.793595, 0.602490,
		-0.689152, -0.483502, -0.539718,
		36.810291, 33.167561, 36.725906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768093, 32.898228, 36.857838>,  <37.292698, 33.506012, 37.103710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768093, 32.898228, 36.857838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434429, 32.858837, 36.640770>,  <37.234230, 32.835201, 36.510529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434429, 32.858837, 36.640770>,  <37.768093, 32.898228, 36.857838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434429, 32.858837, 36.640770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548516, -0.250851, -0.797624,
		-0.057579, -0.963003, 0.263266,
		-0.834155, -0.098479, -0.542666,
		37.184181, 32.829292, 36.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098919, 32.727570, 36.175606>,  <37.768093, 32.898228, 36.857838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098919, 32.727570, 36.175606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482891, 32.791721, 36.083679>,  <38.713272, 32.830212, 36.028522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482891, 32.791721, 36.083679>,  <38.098919, 32.727570, 36.175606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482891, 32.791721, 36.083679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257796, -0.183742, 0.948567,
		0.109907, -0.969802, -0.217725,
		0.959928, 0.160383, -0.229816,
		38.770870, 32.839836, 36.014736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486343, 32.233673, 36.480686>,  <38.098919, 32.727570, 36.175606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486343, 32.233673, 36.480686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772484, 32.506931, 36.421921>,  <38.944168, 32.670887, 36.386662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772484, 32.506931, 36.421921>,  <38.486343, 32.233673, 36.480686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772484, 32.506931, 36.421921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362455, -0.183012, 0.913856,
		0.597405, -0.706983, -0.378527,
		0.715355, 0.683142, -0.146917,
		38.987091, 32.711872, 36.377846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097481, 31.948296, 36.656956>,  <38.486343, 32.233673, 36.480686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097481, 31.948296, 36.656956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169716, 32.340584, 36.686825>,  <39.213058, 32.575958, 36.704746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169716, 32.340584, 36.686825>,  <39.097481, 31.948296, 36.656956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169716, 32.340584, 36.686825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263813, -0.121440, 0.956899,
		0.947518, -0.153105, -0.280657,
		0.180588, 0.980720, 0.074675,
		39.223892, 32.634800, 36.709229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721386, 31.964104, 36.932793>,  <39.097481, 31.948296, 36.656956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721386, 31.964104, 36.932793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573673, 32.322422, 37.031731>,  <39.485046, 32.537415, 37.091095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573673, 32.322422, 37.031731>,  <39.721386, 31.964104, 36.932793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573673, 32.322422, 37.031731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262635, -0.154711, 0.952411,
		0.891435, 0.416667, -0.178136,
		-0.369279, 0.895797, 0.247347,
		39.462891, 32.591160, 37.105934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131500, 32.240620, 37.399101>,  <39.721386, 31.964104, 36.932793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131500, 32.240620, 37.399101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859692, 32.528271, 37.457207>,  <39.696606, 32.700863, 37.492069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859692, 32.528271, 37.457207>,  <40.131500, 32.240620, 37.399101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859692, 32.528271, 37.457207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225899, 0.016713, 0.974007,
		0.698009, 0.694675, -0.173807,
		-0.679524, 0.719129, 0.145261,
		39.655834, 32.744011, 37.500786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435413, 32.827145, 37.848206>,  <40.131500, 32.240620, 37.399101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435413, 32.827145, 37.848206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038998, 32.865177, 37.885735>,  <39.801147, 32.887997, 37.908253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038998, 32.865177, 37.885735>,  <40.435413, 32.827145, 37.848206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038998, 32.865177, 37.885735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100196, 0.064599, 0.992868,
		0.088345, 0.993371, -0.073547,
		-0.991038, 0.095084, 0.093825,
		39.741688, 32.893703, 37.913883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282318, 33.442097, 38.249363>,  <40.435413, 32.827145, 37.848206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282318, 33.442097, 38.249363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949829, 33.221806, 38.279743>,  <39.750336, 33.089630, 38.297970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949829, 33.221806, 38.279743>,  <40.282318, 33.442097, 38.249363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949829, 33.221806, 38.279743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037422, 0.080877, 0.996021,
		-0.554675, 0.830761, -0.046618,
		-0.831226, -0.550723, 0.075949,
		39.700462, 33.056587, 38.302528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871071, 33.862347, 38.735088>,  <40.282318, 33.442097, 38.249363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871071, 33.862347, 38.735088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.733192, 33.487030, 38.746380>,  <39.650467, 33.261841, 38.753155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.733192, 33.487030, 38.746380>,  <39.871071, 33.862347, 38.735088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733192, 33.487030, 38.746380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099553, -0.006638, 0.995010,
		-0.933422, 0.345783, 0.095698,
		-0.344693, -0.938291, 0.028227,
		39.629784, 33.205544, 38.754848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280018, 33.870880, 39.197674>,  <39.871071, 33.862347, 38.735088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280018, 33.870880, 39.197674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377571, 33.483391, 39.179375>,  <39.436104, 33.250896, 39.168396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377571, 33.483391, 39.179375>,  <39.280018, 33.870880, 39.197674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377571, 33.483391, 39.179375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243923, -0.106928, 0.963882,
		-0.938629, -0.223913, -0.262372,
		0.243880, -0.968726, -0.045749,
		39.450737, 33.192772, 39.165649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799534, 33.605534, 39.575039>,  <39.280018, 33.870880, 39.197674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799534, 33.605534, 39.575039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099194, 33.340714, 39.566444>,  <39.278992, 33.181820, 39.561287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.099194, 33.340714, 39.566444>,  <38.799534, 33.605534, 39.575039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099194, 33.340714, 39.566444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047806, -0.086394, 0.995113,
		-0.660671, -0.744464, -0.096372,
		0.749152, -0.662050, -0.021488,
		39.323940, 33.142097, 39.559998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668472, 33.175453, 40.143711>,  <38.799534, 33.605534, 39.575039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668472, 33.175453, 40.143711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043743, 33.100822, 40.027088>,  <39.268906, 33.056042, 39.957115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043743, 33.100822, 40.027088>,  <38.668472, 33.175453, 40.143711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043743, 33.100822, 40.027088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274904, -0.110216, 0.955134,
		-0.210345, -0.976237, -0.052110,
		0.938181, -0.186582, -0.291555,
		39.325199, 33.044849, 39.939621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786625, 32.488831, 40.264767>,  <38.668472, 33.175453, 40.143711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786625, 32.488831, 40.264767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135021, 32.685024, 40.276096>,  <39.344059, 32.802742, 40.282894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135021, 32.685024, 40.276096>,  <38.786625, 32.488831, 40.264767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135021, 32.685024, 40.276096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155438, -0.329788, 0.931171,
		0.466065, -0.806638, -0.363482,
		0.870990, 0.490485, 0.028321,
		39.396317, 32.832169, 40.284592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240856, 32.107685, 40.585461>,  <38.786625, 32.488831, 40.264767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240856, 32.107685, 40.585461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430229, 32.456409, 40.635738>,  <39.543854, 32.665646, 40.665905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430229, 32.456409, 40.635738>,  <39.240856, 32.107685, 40.585461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430229, 32.456409, 40.635738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179102, -0.235002, 0.955351,
		0.862428, -0.429784, -0.267402,
		0.473435, 0.871814, 0.125697,
		39.572258, 32.717953, 40.673447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833866, 31.893282, 40.875652>,  <39.240856, 32.107685, 40.585461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833866, 31.893282, 40.875652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.810585, 32.282791, 40.963631>,  <39.796616, 32.516499, 41.016418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.810585, 32.282791, 40.963631>,  <39.833866, 31.893282, 40.875652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810585, 32.282791, 40.963631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134105, -0.210698, 0.968309,
		0.989256, 0.085856, -0.118324,
		-0.058205, 0.973774, 0.219948,
		39.793125, 32.574924, 41.029613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455463, 32.090958, 41.302738>,  <39.833866, 31.893282, 40.875652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455463, 32.090958, 41.302738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.180786, 32.375435, 41.362946>,  <40.015980, 32.546124, 41.399071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.180786, 32.375435, 41.362946>,  <40.455463, 32.090958, 41.302738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180786, 32.375435, 41.362946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087139, -0.125031, 0.988319,
		0.721709, 0.691785, 0.023885,
		-0.686690, 0.711197, 0.150517,
		39.974777, 32.588795, 41.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676334, 32.345001, 41.913986>,  <40.455463, 32.090958, 41.302738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676334, 32.345001, 41.913986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322941, 32.532021, 41.902283>,  <40.110905, 32.644234, 41.895260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322941, 32.532021, 41.902283>,  <40.676334, 32.345001, 41.913986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322941, 32.532021, 41.902283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046525, -0.025416, 0.998594,
		0.466146, 0.883602, 0.044207,
		-0.883483, 0.467548, -0.029262,
		40.057896, 32.672283, 41.893505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733391, 32.993351, 42.380882>,  <40.676334, 32.345001, 41.913986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733391, 32.993351, 42.380882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346706, 32.898140, 42.343342>,  <40.114697, 32.841015, 42.320816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346706, 32.898140, 42.343342>,  <40.733391, 32.993351, 42.380882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346706, 32.898140, 42.343342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114163, 0.072991, 0.990777,
		-0.228980, 0.968512, -0.097735,
		-0.966713, -0.238026, -0.093855,
		40.056694, 32.826733, 42.315186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311443, 33.547668, 42.738434>,  <40.733391, 32.993351, 42.380882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311443, 33.547668, 42.738434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.113594, 33.200062, 42.733391>,  <39.994884, 32.991497, 42.730366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.113594, 33.200062, 42.733391>,  <40.311443, 33.547668, 42.738434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113594, 33.200062, 42.733391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105914, 0.045872, 0.993317,
		-0.862630, 0.492653, -0.114730,
		-0.494623, -0.869016, -0.012609,
		39.965206, 32.939358, 42.729607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.582825, 33.708687, 43.232845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609627, 33.313984, 43.173748>,  <39.625710, 33.077164, 43.138290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609627, 33.313984, 43.173748>,  <39.582825, 33.708687, 43.232845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609627, 33.313984, 43.173748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316103, -0.161439, 0.934888,
		-0.946356, -0.015943, -0.322733,
		0.067007, -0.986754, -0.147739,
		39.629730, 33.017960, 43.129425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955254, 33.409679, 43.462791>,  <39.582825, 33.708687, 43.232845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955254, 33.409679, 43.462791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215900, 33.106266, 43.460934>,  <39.372288, 32.924217, 43.459820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215900, 33.106266, 43.460934>,  <38.955254, 33.409679, 43.462791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215900, 33.106266, 43.460934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314793, -0.275988, 0.908150,
		-0.690143, -0.590305, -0.418620,
		0.651619, -0.758532, -0.004647,
		39.411385, 32.878708, 43.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553806, 32.807430, 43.495785>,  <38.955254, 33.409679, 43.462791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553806, 32.807430, 43.495785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914528, 32.700554, 43.631649>,  <39.130959, 32.636429, 43.713169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914528, 32.700554, 43.631649>,  <38.553806, 32.807430, 43.495785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914528, 32.700554, 43.631649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376271, -0.098880, 0.921218,
		-0.212554, -0.958558, -0.189705,
		0.901799, -0.267190, 0.339660,
		39.185066, 32.620399, 43.733547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411369, 32.119385, 43.872013>,  <38.553806, 32.807430, 43.495785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411369, 32.119385, 43.872013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758358, 32.279243, 43.990517>,  <38.966553, 32.375160, 44.061619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758358, 32.279243, 43.990517>,  <38.411369, 32.119385, 43.872013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758358, 32.279243, 43.990517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245909, -0.173211, 0.953691,
		0.432457, -0.900155, -0.051979,
		0.867473, 0.399648, 0.296262,
		39.018600, 32.399139, 44.079395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758556, 31.664175, 44.364941>,  <38.411369, 32.119385, 43.872013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758556, 31.664175, 44.364941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.925648, 32.023239, 44.421093>,  <39.025902, 32.238678, 44.454784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.925648, 32.023239, 44.421093>,  <38.758556, 31.664175, 44.364941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925648, 32.023239, 44.421093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057381, -0.128135, 0.990095,
		0.906758, -0.421646, -0.002017,
		0.417729, 0.897661, 0.140382,
		39.050968, 32.292538, 44.463207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086624, 31.558027, 44.932957>,  <38.758556, 31.664175, 44.364941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086624, 31.558027, 44.932957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081841, 31.957890, 44.942280>,  <39.078972, 32.197807, 44.947872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081841, 31.957890, 44.942280>,  <39.086624, 31.558027, 44.932957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081841, 31.957890, 44.942280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016715, -0.023105, 0.999593,
		0.999789, 0.012345, -0.016433,
		-0.011960, 0.999657, 0.023307,
		39.078251, 32.257786, 44.949272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619808, 31.877701, 45.483475>,  <39.086624, 31.558027, 44.932957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619808, 31.877701, 45.483475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346195, 32.164932, 45.432156>,  <39.182026, 32.337273, 45.401363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346195, 32.164932, 45.432156>,  <39.619808, 31.877701, 45.483475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346195, 32.164932, 45.432156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075786, 0.104969, 0.991584,
		0.725502, 0.688000, -0.017382,
		-0.684034, 0.718079, -0.128297,
		39.140984, 32.380356, 45.393665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852589, 32.451206, 45.897896>,  <39.619808, 31.877701, 45.483475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852589, 32.451206, 45.897896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460743, 32.481834, 45.823601>,  <39.225636, 32.500210, 45.779022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460743, 32.481834, 45.823601>,  <39.852589, 32.451206, 45.897896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460743, 32.481834, 45.823601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156008, 0.292587, 0.943427,
		0.126579, 0.953169, -0.274677,
		-0.979612, 0.076566, -0.185737,
		39.166859, 32.504803, 45.767879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707687, 33.096199, 46.149101>,  <39.852589, 32.451206, 45.897896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707687, 33.096199, 46.149101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371304, 32.880627, 46.129734>,  <39.169472, 32.751282, 46.118114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371304, 32.880627, 46.129734>,  <39.707687, 33.096199, 46.149101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371304, 32.880627, 46.129734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200232, 0.226812, 0.953134,
		-0.502690, 0.811240, -0.298650,
		-0.840958, -0.538930, -0.048420,
		39.119015, 32.718948, 46.115208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296120, 33.538860, 46.555519>,  <39.707687, 33.096199, 46.149101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296120, 33.538860, 46.555519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137806, 33.171558, 46.550373>,  <39.042820, 32.951176, 46.547283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137806, 33.171558, 46.550373>,  <39.296120, 33.538860, 46.555519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137806, 33.171558, 46.550373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202033, 0.073392, 0.976625,
		-0.895846, 0.389130, -0.214565,
		-0.395781, -0.918255, -0.012869,
		39.019070, 32.896084, 46.546513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769356, 33.742828, 46.983700>,  <39.296120, 33.538860, 46.555519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769356, 33.742828, 46.983700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825642, 33.346909, 46.974834>,  <38.859413, 33.109356, 46.969517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825642, 33.346909, 46.974834>,  <38.769356, 33.742828, 46.983700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825642, 33.346909, 46.974834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227372, -0.054098, 0.972304,
		-0.963587, -0.131782, -0.232666,
		0.140719, -0.989802, -0.022165,
		38.867859, 33.049969, 46.968185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322769, 33.535503, 47.464027>,  <38.769356, 33.742828, 46.983700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322769, 33.535503, 47.464027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546608, 33.207954, 47.412949>,  <38.680912, 33.011425, 47.382301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546608, 33.207954, 47.412949>,  <38.322769, 33.535503, 47.464027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546608, 33.207954, 47.412949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099002, -0.219026, 0.970683,
		-0.822832, -0.530547, -0.203636,
		0.559595, -0.818870, -0.127696,
		38.714485, 32.962292, 47.374641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980110, 33.035393, 47.923077>,  <38.322769, 33.535503, 47.464027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980110, 33.035393, 47.923077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344341, 32.899590, 47.828770>,  <38.562878, 32.818108, 47.772186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344341, 32.899590, 47.828770>,  <37.980110, 33.035393, 47.923077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344341, 32.899590, 47.828770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143838, -0.274474, 0.950776,
		-0.387513, -0.899664, -0.201094,
		0.910574, -0.339513, -0.235768,
		38.617512, 32.797737, 47.758038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004257, 32.281742, 48.148968>,  <37.980110, 33.035393, 47.923077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004257, 32.281742, 48.148968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366985, 32.447338, 48.117233>,  <38.584621, 32.546696, 48.098190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366985, 32.447338, 48.117233>,  <38.004257, 32.281742, 48.148968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366985, 32.447338, 48.117233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272695, -0.432638, 0.859338,
		0.321429, -0.800899, -0.505217,
		0.906819, 0.413986, -0.079339,
		38.639030, 32.571533, 48.093433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541668, 31.726482, 48.332821>,  <38.004257, 32.281742, 48.148968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541668, 31.726482, 48.332821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707592, 32.087765, 48.376911>,  <38.807144, 32.304535, 48.403366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707592, 32.087765, 48.376911>,  <38.541668, 31.726482, 48.332821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707592, 32.087765, 48.376911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327571, -0.261247, 0.907991,
		0.848900, -0.340536, -0.404232,
		0.414808, 0.903208, 0.110223,
		38.832035, 32.358727, 48.409977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273663, 31.637566, 48.624832>,  <38.541668, 31.726482, 48.332821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273663, 31.637566, 48.624832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.199028, 32.021843, 48.707054>,  <39.154247, 32.252411, 48.756386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.199028, 32.021843, 48.707054>,  <39.273663, 31.637566, 48.624832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199028, 32.021843, 48.707054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346686, -0.131381, 0.928734,
		0.919235, 0.244555, -0.308545,
		-0.186590, 0.960693, 0.205554,
		39.143051, 32.310051, 48.768719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816879, 31.960920, 48.793705>,  <39.273663, 31.637566, 48.624832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816879, 31.960920, 48.793705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550507, 32.211678, 48.955463>,  <39.390682, 32.362133, 49.052521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550507, 32.211678, 48.955463>,  <39.816879, 31.960920, 48.793705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550507, 32.211678, 48.955463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488744, -0.042925, 0.871371,
		0.563613, 0.777924, -0.277804,
		-0.665935, 0.626891, 0.404398,
		39.350727, 32.399746, 49.076782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113182, 32.538998, 49.082245>,  <39.816879, 31.960920, 48.793705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113182, 32.538998, 49.082245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777500, 32.469818, 49.288475>,  <39.576092, 32.428310, 49.412212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777500, 32.469818, 49.288475>,  <40.113182, 32.538998, 49.082245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777500, 32.469818, 49.288475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534081, -0.083598, 0.841290,
		-0.102399, 0.981377, 0.162525,
		-0.839209, -0.172949, 0.515574,
		39.525738, 32.417934, 49.443146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164017, 32.845127, 49.779930>,  <40.113182, 32.538998, 49.082245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164017, 32.845127, 49.779930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825325, 32.638348, 49.830223>,  <39.622108, 32.514282, 49.860401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825325, 32.638348, 49.830223>,  <40.164017, 32.845127, 49.779930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825325, 32.638348, 49.830223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294210, -0.258074, 0.920238,
		-0.443264, 0.816189, 0.370611,
		-0.846733, -0.516946, 0.125736,
		39.571304, 32.483265, 49.867943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900723, 33.035244, 50.496616>,  <40.164017, 32.845127, 49.779930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900723, 33.035244, 50.496616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748562, 32.680481, 50.391785>,  <39.657265, 32.467625, 50.328884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748562, 32.680481, 50.391785>,  <39.900723, 33.035244, 50.496616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748562, 32.680481, 50.391785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088879, -0.317136, 0.944206,
		-0.920541, 0.335884, 0.199467,
		-0.380402, -0.886908, -0.262083,
		39.634441, 32.414410, 50.313160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385120, 32.860977, 51.022419>,  <39.900723, 33.035244, 50.496616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385120, 32.860977, 51.022419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479671, 32.518204, 50.839203>,  <39.536400, 32.312542, 50.729275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479671, 32.518204, 50.839203>,  <39.385120, 32.860977, 51.022419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479671, 32.518204, 50.839203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083734, -0.451678, 0.888243,
		-0.968047, -0.248312, -0.035011,
		0.236375, -0.856929, -0.458038,
		39.550583, 32.261124, 50.701790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000351, 32.390747, 51.290314>,  <39.385120, 32.860977, 51.022419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000351, 32.390747, 51.290314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335850, 32.226254, 51.147545>,  <39.537148, 32.127560, 51.061882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335850, 32.226254, 51.147545>,  <39.000351, 32.390747, 51.290314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335850, 32.226254, 51.147545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247197, -0.296481, 0.922493,
		-0.485178, -0.861968, -0.147017,
		0.838747, -0.411231, -0.356922,
		39.587475, 32.102886, 51.040470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721012, 32.494663, 51.881901>,  <39.000351, 32.390747, 51.290314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721012, 32.494663, 51.881901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725277, 32.893814, 51.856174>,  <38.727837, 33.133305, 51.840736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725277, 32.893814, 51.856174>,  <38.721012, 32.494663, 51.881901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725277, 32.893814, 51.856174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485184, -0.051082, -0.872919,
		-0.874347, 0.040513, 0.483607,
		0.010661, 0.997872, -0.064319,
		38.728474, 33.193176, 51.836880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043343, 32.762722, 51.878689>,  <38.721012, 32.494663, 51.881901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043343, 32.762722, 51.878689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298286, 32.985527, 51.665707>,  <38.451252, 33.119209, 51.537918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298286, 32.985527, 51.665707>,  <38.043343, 32.762722, 51.878689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298286, 32.985527, 51.665707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665901, 0.050427, -0.744334,
		-0.387754, 0.828971, 0.403056,
		0.637356, 0.557013, -0.532460,
		38.489494, 33.152630, 51.505970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367233, 32.335377, 51.710175>,  <38.043343, 32.762722, 51.878689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367233, 32.335377, 51.710175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984371, 32.435917, 51.767696>,  <36.754654, 32.496243, 51.802208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984371, 32.435917, 51.767696>,  <37.367233, 32.335377, 51.710175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984371, 32.435917, 51.767696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207393, -0.248425, -0.946189,
		-0.202094, -0.935474, 0.289908,
		-0.957155, 0.251344, 0.143805,
		36.697224, 32.511322, 51.810837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950684, 31.841801, 51.421970>,  <37.367233, 32.335377, 51.710175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950684, 31.841801, 51.421970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678249, 32.129078, 51.478989>,  <36.514790, 32.301445, 51.513199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678249, 32.129078, 51.478989>,  <36.950684, 31.841801, 51.421970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678249, 32.129078, 51.478989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368391, -0.167867, -0.914390,
		-0.632782, -0.675290, 0.378908,
		-0.681084, 0.718196, 0.142547,
		36.473923, 32.344536, 51.521751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324650, 31.509953, 51.027046>,  <36.950684, 31.841801, 51.421970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324650, 31.509953, 51.027046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287148, 31.906475, 51.063976>,  <36.264645, 32.144390, 51.086136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287148, 31.906475, 51.063976>,  <36.324650, 31.509953, 51.027046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287148, 31.906475, 51.063976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313831, 0.058582, -0.947670,
		-0.944839, -0.117824, 0.305610,
		-0.093755, 0.991305, 0.092327,
		36.259022, 32.203865, 51.091675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696220, 31.624781, 50.684940>,  <36.324650, 31.509953, 51.027046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696220, 31.624781, 50.684940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896313, 31.970856, 50.698910>,  <36.016369, 32.178501, 50.707291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896313, 31.970856, 50.698910>,  <35.696220, 31.624781, 50.684940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896313, 31.970856, 50.698910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283425, 0.201715, -0.937540,
		-0.818194, 0.459085, 0.346119,
		0.500228, 0.865189, 0.034926,
		36.046383, 32.230412, 50.709389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275993, 31.932442, 50.313984>,  <35.696220, 31.624781, 50.684940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275993, 31.932442, 50.313984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633087, 32.112278, 50.302017>,  <35.847343, 32.220181, 50.294838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633087, 32.112278, 50.302017>,  <35.275993, 31.932442, 50.313984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633087, 32.112278, 50.302017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097030, 0.126973, -0.987149,
		-0.440014, 0.884164, 0.156977,
		0.892733, 0.449591, -0.029921,
		35.900906, 32.247154, 50.293041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147175, 32.615601, 49.953148>,  <35.275993, 31.932442, 50.313984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147175, 32.615601, 49.953148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541286, 32.548958, 49.937832>,  <35.777752, 32.508972, 49.928642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541286, 32.548958, 49.937832>,  <35.147175, 32.615601, 49.953148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541286, 32.548958, 49.937832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018708, 0.117550, -0.992891,
		0.169920, 0.978992, 0.112703,
		0.985280, -0.166604, -0.038289,
		35.836872, 32.498978, 49.926346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461605, 33.179398, 49.554272>,  <35.147175, 32.615601, 49.953148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461605, 33.179398, 49.554272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721619, 32.876106, 49.534092>,  <35.877628, 32.694130, 49.521984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721619, 32.876106, 49.534092>,  <35.461605, 33.179398, 49.554272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721619, 32.876106, 49.534092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040455, 0.100825, -0.994081,
		0.758828, 0.644145, 0.096214,
		0.650033, -0.758229, -0.050450,
		35.916630, 32.648636, 49.518955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850197, 33.429043, 49.050789>,  <35.461605, 33.179398, 49.554272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850197, 33.429043, 49.050789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944866, 33.044186, 49.104843>,  <36.001667, 32.813271, 49.137276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944866, 33.044186, 49.104843>,  <35.850197, 33.429043, 49.050789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944866, 33.044186, 49.104843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033742, -0.130860, -0.990826,
		0.971004, 0.239059, 0.001494,
		0.236670, -0.962147, 0.135131,
		36.015865, 32.755543, 49.145382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433014, 33.327950, 48.690868>,  <35.850197, 33.429043, 49.050789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433014, 33.327950, 48.690868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281536, 32.958523, 48.714928>,  <36.190651, 32.736866, 48.729362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281536, 32.958523, 48.714928>,  <36.433014, 33.327950, 48.690868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281536, 32.958523, 48.714928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077023, -0.096213, -0.992376,
		0.922312, -0.371172, 0.107571,
		-0.378692, -0.923566, 0.060150,
		36.167927, 32.681454, 48.732971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912273, 32.896729, 48.537903>,  <36.433014, 33.327950, 48.690868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912273, 32.896729, 48.537903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587917, 32.684185, 48.439831>,  <36.393303, 32.556660, 48.380989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587917, 32.684185, 48.439831>,  <36.912273, 32.896729, 48.537903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587917, 32.684185, 48.439831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302633, -0.022176, -0.952849,
		0.500871, -0.846854, 0.178790,
		-0.810889, -0.531363, -0.245178,
		36.344650, 32.524776, 48.366276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143761, 32.385632, 48.070263>,  <36.912273, 32.896729, 48.537903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143761, 32.385632, 48.070263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746178, 32.409672, 48.033512>,  <36.507629, 32.424095, 48.011463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746178, 32.409672, 48.033512>,  <37.143761, 32.385632, 48.070263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746178, 32.409672, 48.033512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091861, -0.002987, -0.995767,
		-0.060126, -0.998187, -0.002553,
		-0.993955, 0.060106, -0.091874,
		36.447990, 32.427704, 48.005951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914936, 31.876028, 47.558720>,  <37.143761, 32.385632, 48.070263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914936, 31.876028, 47.558720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.603970, 32.127224, 47.572895>,  <36.417389, 32.277943, 47.581398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.603970, 32.127224, 47.572895>,  <36.914936, 31.876028, 47.558720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603970, 32.127224, 47.572895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005601, 0.063246, -0.997982,
		-0.628962, -0.775649, -0.052686,
		-0.777416, 0.627988, 0.035435,
		36.370743, 32.315620, 47.583527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429581, 31.511366, 47.143623>,  <36.914936, 31.876028, 47.558720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429581, 31.511366, 47.143623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338543, 31.900446, 47.161766>,  <36.283920, 32.133892, 47.172649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338543, 31.900446, 47.161766>,  <36.429581, 31.511366, 47.143623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338543, 31.900446, 47.161766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056088, 0.059593, -0.996646,
		-0.972139, -0.224289, -0.068120,
		-0.227596, 0.972699, 0.045353,
		36.270264, 32.192257, 47.175373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855309, 31.631367, 46.705143>,  <36.429581, 31.511366, 47.143623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855309, 31.631367, 46.705143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042141, 31.981644, 46.754131>,  <36.154240, 32.191811, 46.783524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042141, 31.981644, 46.754131>,  <35.855309, 31.631367, 46.705143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042141, 31.981644, 46.754131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077310, 0.097533, -0.992225,
		-0.880828, 0.472918, -0.022144,
		0.467081, 0.875692, 0.122471,
		36.182266, 32.244350, 46.790874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558376, 31.998388, 46.220722>,  <35.855309, 31.631367, 46.705143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558376, 31.998388, 46.220722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892914, 32.196167, 46.315426>,  <36.093636, 32.314835, 46.372246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892914, 32.196167, 46.315426>,  <35.558376, 31.998388, 46.220722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892914, 32.196167, 46.315426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023494, 0.399152, -0.916584,
		-0.547702, 0.772141, 0.322212,
		0.836344, 0.494445, 0.236757,
		36.143818, 32.344501, 46.386452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474163, 32.570091, 45.822147>,  <35.558376, 31.998388, 46.220722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474163, 32.570091, 45.822147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.857182, 32.611526, 45.929764>,  <36.086990, 32.636387, 45.994331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.857182, 32.611526, 45.929764>,  <35.474163, 32.570091, 45.822147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857182, 32.611526, 45.929764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180472, 0.512350, -0.839599,
		-0.224813, 0.852506, 0.471903,
		0.957543, 0.103587, 0.269037,
		36.144444, 32.642601, 46.010475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640099, 33.221100, 45.652630>,  <35.474163, 32.570091, 45.822147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640099, 33.221100, 45.652630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988922, 33.025345, 45.651745>,  <36.198215, 32.907890, 45.651215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988922, 33.025345, 45.651745>,  <35.640099, 33.221100, 45.652630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988922, 33.025345, 45.651745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201488, 0.363158, -0.909680,
		0.445992, 0.792852, 0.415303,
		0.872063, -0.489389, -0.002215,
		36.250542, 32.878529, 45.651081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212540, 33.658356, 45.414665>,  <35.640099, 33.221100, 45.652630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212540, 33.658356, 45.414665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340084, 33.284790, 45.350006>,  <36.416611, 33.060650, 45.311211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340084, 33.284790, 45.350006>,  <36.212540, 33.658356, 45.414665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340084, 33.284790, 45.350006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052156, 0.187577, -0.980864,
		0.946365, 0.304328, 0.108521,
		0.318861, -0.933916, -0.161644,
		36.435741, 33.004616, 45.301514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582016, 33.758141, 44.879307>,  <36.212540, 33.658356, 45.414665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582016, 33.758141, 44.879307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516411, 33.363712, 44.868267>,  <36.477047, 33.127056, 44.861645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516411, 33.363712, 44.868267>,  <36.582016, 33.758141, 44.879307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516411, 33.363712, 44.868267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055901, 0.018642, -0.998262,
		0.984874, -0.165267, 0.052065,
		-0.164009, -0.986073, -0.027599,
		36.467209, 33.067890, 44.859989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095764, 33.540279, 44.478970>,  <36.582016, 33.758141, 44.879307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095764, 33.540279, 44.478970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783070, 33.291641, 44.458923>,  <36.595455, 33.142460, 44.446896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783070, 33.291641, 44.458923>,  <37.095764, 33.540279, 44.478970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783070, 33.291641, 44.458923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006105, 0.072739, -0.997332,
		0.623582, -0.779955, -0.053067,
		-0.781734, -0.621594, -0.050120,
		36.548550, 33.105164, 44.443886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.599968, 26.380129, 40.430069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659595, 26.048225, 40.214931>,  <43.695374, 25.849083, 40.085850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659595, 26.048225, 40.214931>,  <43.599968, 26.380129, 40.430069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659595, 26.048225, 40.214931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070840, 0.551490, -0.831168,
		0.986286, 0.085801, 0.140991,
		0.149070, -0.829758, -0.537848,
		43.704315, 25.799297, 40.053577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291328, 26.421734, 40.057667>,  <43.599968, 26.380129, 40.430069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291328, 26.421734, 40.057667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056286, 26.167358, 39.857544>,  <43.915260, 26.014734, 39.737473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056286, 26.167358, 39.857544>,  <44.291328, 26.421734, 40.057667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056286, 26.167358, 39.857544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028460, 0.634171, -0.772669,
		0.808648, -0.439784, -0.390740,
		-0.587604, -0.635938, -0.500305,
		43.880005, 25.976578, 39.707451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654991, 26.300760, 39.463425>,  <44.291328, 26.421734, 40.057667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654991, 26.300760, 39.463425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282967, 26.186327, 39.371208>,  <44.059753, 26.117666, 39.315880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282967, 26.186327, 39.371208>,  <44.654991, 26.300760, 39.463425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282967, 26.186327, 39.371208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084248, 0.776805, -0.624080,
		0.357626, -0.561008, -0.746575,
		-0.930057, -0.286085, -0.230542,
		44.003948, 26.100502, 39.302044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542130, 26.198257, 38.716545>,  <44.654991, 26.300760, 39.463425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542130, 26.198257, 38.716545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.194462, 26.292496, 38.890457>,  <43.985859, 26.349039, 38.994804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.194462, 26.292496, 38.890457>,  <44.542130, 26.198257, 38.716545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194462, 26.292496, 38.890457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102531, 0.774251, -0.624518,
		-0.483765, -0.587392, -0.648800,
		-0.869171, 0.235598, 0.434782,
		43.933712, 26.363174, 39.020893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065865, 26.168436, 38.158710>,  <44.542130, 26.198257, 38.716545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065865, 26.168436, 38.158710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886097, 26.388660, 38.440109>,  <43.778236, 26.520796, 38.608948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886097, 26.388660, 38.440109>,  <44.065865, 26.168436, 38.158710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886097, 26.388660, 38.440109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276993, 0.662805, -0.695675,
		-0.849292, -0.507513, -0.145377,
		-0.449421, 0.550563, 0.703493,
		43.751270, 26.553829, 38.651157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503300, 26.368729, 37.853638>,  <44.065865, 26.168436, 38.158710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503300, 26.368729, 37.853638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519482, 26.646587, 38.140923>,  <43.529190, 26.813303, 38.313293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519482, 26.646587, 38.140923>,  <43.503300, 26.368729, 37.853638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519482, 26.646587, 38.140923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173533, 0.712761, -0.679602,
		-0.983997, -0.097142, 0.149378,
		0.040453, 0.694648, 0.718212,
		43.531616, 26.854982, 38.356384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839695, 26.926786, 37.780666>,  <43.503300, 26.368729, 37.853638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839695, 26.926786, 37.780666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101978, 27.123220, 38.010059>,  <43.259350, 27.241081, 38.147697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101978, 27.123220, 38.010059>,  <42.839695, 26.926786, 37.780666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101978, 27.123220, 38.010059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074726, 0.798049, -0.597942,
		-0.751309, 0.349221, 0.559983,
		0.655707, 0.491084, 0.573485,
		43.298691, 27.270546, 38.182106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502361, 27.445175, 37.830021>,  <42.839695, 26.926786, 37.780666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502361, 27.445175, 37.830021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873573, 27.546160, 37.939579>,  <43.096302, 27.606750, 38.005314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873573, 27.546160, 37.939579>,  <42.502361, 27.445175, 37.830021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873573, 27.546160, 37.939579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064543, 0.833155, -0.549261,
		-0.366866, 0.492054, 0.789489,
		0.928032, 0.252461, 0.273898,
		43.151981, 27.621899, 38.021748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455498, 27.978123, 38.221539>,  <42.502361, 27.445175, 37.830021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455498, 27.978123, 38.221539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818962, 27.988855, 38.054867>,  <43.037041, 27.995295, 37.954865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818962, 27.988855, 38.054867>,  <42.455498, 27.978123, 38.221539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818962, 27.988855, 38.054867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208764, 0.893439, -0.397723,
		0.361602, 0.448382, 0.817434,
		0.908659, 0.026833, -0.416675,
		43.091560, 27.996904, 37.929863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645691, 28.645950, 38.314236>,  <42.455498, 27.978123, 38.221539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645691, 28.645950, 38.314236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910099, 28.539886, 38.033451>,  <43.068745, 28.476248, 37.864983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910099, 28.539886, 38.033451>,  <42.645691, 28.645950, 38.314236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910099, 28.539886, 38.033451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122444, 0.884828, -0.449541,
		0.740314, 0.383105, 0.552419,
		0.661017, -0.265161, -0.701959,
		43.108402, 28.460339, 37.822865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868214, 29.236872, 38.097443>,  <42.645691, 28.645950, 38.314236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868214, 29.236872, 38.097443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002800, 29.024248, 37.786514>,  <43.083553, 28.896675, 37.599957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002800, 29.024248, 37.786514>,  <42.868214, 29.236872, 38.097443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002800, 29.024248, 37.786514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156662, 0.782354, -0.602809,
		0.928571, 0.324604, 0.179964,
		0.336470, -0.531557, -0.777325,
		43.103741, 28.864780, 37.553318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524715, 29.657396, 37.777367>,  <42.868214, 29.236872, 38.097443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524715, 29.657396, 37.777367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380302, 29.400829, 37.506592>,  <43.293655, 29.246889, 37.344128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380302, 29.400829, 37.506592>,  <43.524715, 29.657396, 37.777367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380302, 29.400829, 37.506592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015395, 0.721697, -0.692038,
		0.932428, -0.260266, -0.250678,
		-0.361028, -0.641416, -0.676938,
		43.271996, 29.208405, 37.303509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941811, 29.802357, 37.212734>,  <43.524715, 29.657396, 37.777367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941811, 29.802357, 37.212734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608620, 29.626799, 37.077961>,  <43.408707, 29.521463, 36.997097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608620, 29.626799, 37.077961>,  <43.941811, 29.802357, 37.212734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608620, 29.626799, 37.077961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005036, 0.602905, -0.797797,
		0.553286, -0.666243, -0.499995,
		-0.832976, -0.438892, -0.336934,
		43.358727, 29.495131, 36.976879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069332, 29.717567, 36.516941>,  <43.941811, 29.802357, 37.212734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069332, 29.717567, 36.516941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674889, 29.653927, 36.536045>,  <43.438225, 29.615742, 36.547508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674889, 29.653927, 36.536045>,  <44.069332, 29.717567, 36.516941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674889, 29.653927, 36.536045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107703, 0.393467, -0.913008,
		0.126470, -0.905467, -0.405136,
		-0.986106, -0.159103, 0.047759,
		43.379055, 29.606195, 36.550373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812180, 29.464294, 35.828773>,  <44.069332, 29.717567, 36.516941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812180, 29.464294, 35.828773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503662, 29.634039, 36.018520>,  <43.318550, 29.735886, 36.132370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503662, 29.634039, 36.018520>,  <43.812180, 29.464294, 35.828773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503662, 29.634039, 36.018520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152909, 0.599929, -0.785305,
		-0.617839, -0.678236, -0.397833,
		-0.771293, 0.424360, 0.474367,
		43.272274, 29.761347, 36.160831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243797, 29.469015, 35.386368>,  <43.812180, 29.464294, 35.828773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243797, 29.469015, 35.386368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183380, 29.767153, 35.646107>,  <43.147129, 29.946035, 35.801949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183380, 29.767153, 35.646107>,  <43.243797, 29.469015, 35.386368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183380, 29.767153, 35.646107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057805, 0.649095, -0.758508,
		-0.986836, -0.152103, -0.054957,
		-0.151043, 0.745346, 0.649343,
		43.138065, 29.990757, 35.840908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703075, 29.755165, 35.099445>,  <43.243797, 29.469015, 35.386368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703075, 29.755165, 35.099445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872116, 30.032642, 35.332752>,  <42.973541, 30.199129, 35.472736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872116, 30.032642, 35.332752>,  <42.703075, 29.755165, 35.099445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872116, 30.032642, 35.332752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012679, 0.648020, -0.761518,
		-0.906226, 0.314424, 0.282651,
		0.422603, 0.693691, 0.583266,
		42.998898, 30.240749, 35.507732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246880, 30.315113, 35.073277>,  <42.703075, 29.755165, 35.099445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246880, 30.315113, 35.073277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.592480, 30.471926, 35.199650>,  <42.799839, 30.566013, 35.275475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.592480, 30.471926, 35.199650>,  <42.246880, 30.315113, 35.073277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592480, 30.471926, 35.199650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003343, 0.631941, -0.775010,
		-0.503479, 0.668553, 0.547308,
		0.864001, 0.392031, 0.315934,
		42.851681, 30.589535, 35.294430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123295, 31.063887, 35.121483>,  <42.246880, 30.315113, 35.073277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123295, 31.063887, 35.121483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517136, 30.998119, 35.097759>,  <42.753441, 30.958658, 35.083523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517136, 30.998119, 35.097759>,  <42.123295, 31.063887, 35.121483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517136, 30.998119, 35.097759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076652, 0.711135, -0.698864,
		0.157086, 0.683559, 0.712791,
		0.984606, -0.164419, -0.059313,
		42.812519, 30.948793, 35.079964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401760, 31.740509, 35.175392>,  <42.123295, 31.063887, 35.121483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401760, 31.740509, 35.175392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.650551, 31.496281, 34.979286>,  <42.799824, 31.349745, 34.861622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.650551, 31.496281, 34.979286>,  <42.401760, 31.740509, 35.175392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650551, 31.496281, 34.979286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158488, 0.711301, -0.684786,
		0.766832, 0.348218, 0.539178,
		0.621973, -0.610569, -0.490260,
		42.837143, 31.313110, 34.832207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851330, 32.188820, 34.952602>,  <42.401760, 31.740509, 35.175392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851330, 32.188820, 34.952602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015301, 31.891750, 34.740795>,  <43.113682, 31.713509, 34.613708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015301, 31.891750, 34.740795>,  <42.851330, 32.188820, 34.952602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015301, 31.891750, 34.740795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285894, 0.655905, -0.698609,
		0.866155, 0.134991, 0.481199,
		0.409927, -0.742675, -0.529522,
		43.138279, 31.668947, 34.581940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592190, 32.349152, 34.919056>,  <42.851330, 32.188820, 34.952602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592190, 32.349152, 34.919056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445457, 32.121307, 34.624851>,  <43.357418, 31.984602, 34.448326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445457, 32.121307, 34.624851>,  <43.592190, 32.349152, 34.919056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445457, 32.121307, 34.624851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394375, 0.620853, -0.677502,
		0.842556, -0.538599, -0.003112,
		-0.366834, -0.569607, -0.735514,
		43.335407, 31.950426, 34.404198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692959, 32.664253, 35.616547>,  <43.592190, 32.349152, 34.919056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692959, 32.664253, 35.616547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500408, 32.317295, 35.566101>,  <43.384876, 32.109119, 35.535835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500408, 32.317295, 35.566101>,  <43.692959, 32.664253, 35.616547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500408, 32.317295, 35.566101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459153, -0.372100, 0.806672,
		-0.746629, 0.330408, 0.577387,
		-0.481377, -0.867394, -0.126113,
		43.355995, 32.057076, 35.528267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181988, 32.411755, 36.044216>,  <43.692959, 32.664253, 35.616547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181988, 32.411755, 36.044216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557026, 32.523739, 35.961712>,  <44.782047, 32.590927, 35.912209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557026, 32.523739, 35.961712>,  <44.181988, 32.411755, 36.044216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557026, 32.523739, 35.961712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345894, -0.689831, 0.635996,
		0.035764, -0.667650, -0.743616,
		0.937592, 0.279958, -0.206265,
		44.838303, 32.607727, 35.899834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588890, 31.846777, 35.805527>,  <44.181988, 32.411755, 36.044216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588890, 31.846777, 35.805527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866623, 32.098568, 35.945049>,  <45.033260, 32.249641, 36.028763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866623, 32.098568, 35.945049>,  <44.588890, 31.846777, 35.805527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866623, 32.098568, 35.945049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379965, -0.732277, 0.565152,
		0.611176, -0.259865, -0.747619,
		0.694327, 0.629476, 0.348810,
		45.074921, 32.287411, 36.049694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242374, 31.429636, 35.733738>,  <44.588890, 31.846777, 35.805527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242374, 31.429636, 35.733738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326653, 31.727257, 35.987350>,  <45.377220, 31.905830, 36.139519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326653, 31.727257, 35.987350>,  <45.242374, 31.429636, 35.733738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326653, 31.727257, 35.987350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500683, -0.639196, 0.583734,
		0.839597, 0.194454, -0.507213,
		0.210699, 0.744054, 0.634027,
		45.389862, 31.950474, 36.177559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040714, 31.439320, 35.816853>,  <45.242374, 31.429636, 35.733738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040714, 31.439320, 35.816853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877098, 31.654922, 36.111378>,  <45.778927, 31.784285, 36.288094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877098, 31.654922, 36.111378>,  <46.040714, 31.439320, 35.816853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877098, 31.654922, 36.111378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396275, -0.621922, 0.675411,
		0.821979, 0.568054, 0.040798,
		-0.409043, 0.539006, 0.736312,
		45.754387, 31.816624, 36.332272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549980, 31.730543, 36.212372>,  <46.040714, 31.439320, 35.816853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549980, 31.730543, 36.212372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222256, 31.708063, 36.440605>,  <46.025620, 31.694574, 36.577545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222256, 31.708063, 36.440605>,  <46.549980, 31.730543, 36.212372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222256, 31.708063, 36.440605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522101, -0.484384, 0.701985,
		0.236931, 0.873049, 0.426204,
		-0.819313, -0.056199, 0.570585,
		45.976463, 31.691204, 36.611782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789967, 31.525784, 36.819614>,  <46.549980, 31.730543, 36.212372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789967, 31.525784, 36.819614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403862, 31.443874, 36.884541>,  <46.172199, 31.394730, 36.923496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403862, 31.443874, 36.884541>,  <46.789967, 31.525784, 36.819614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403862, 31.443874, 36.884541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258040, -0.649180, 0.715529,
		-0.041151, 0.732553, 0.679465,
		-0.965258, -0.204773, 0.162314,
		46.114285, 31.382442, 36.933235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636059, 31.495829, 37.642006>,  <46.789967, 31.525784, 36.819614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636059, 31.495829, 37.642006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357742, 31.284512, 37.447361>,  <46.190754, 31.157721, 37.330574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357742, 31.284512, 37.447361>,  <46.636059, 31.495829, 37.642006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357742, 31.284512, 37.447361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049049, -0.710860, 0.701621,
		-0.716571, 0.464311, 0.520520,
		-0.695787, -0.528292, -0.486608,
		46.149006, 31.126024, 37.301380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259823, 31.157528, 38.160801>,  <46.636059, 31.495829, 37.642006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259823, 31.157528, 38.160801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165485, 30.951387, 37.831245>,  <46.108883, 30.827703, 37.633514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165485, 30.951387, 37.831245>,  <46.259823, 31.157528, 38.160801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165485, 30.951387, 37.831245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063593, -0.854170, 0.516091,
		-0.969707, 0.069326, 0.234226,
		-0.235847, -0.515352, -0.823886,
		46.094730, 30.796782, 37.584080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615292, 30.858307, 38.264061>,  <46.259823, 31.157528, 38.160801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615292, 30.858307, 38.264061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827488, 30.648176, 37.997944>,  <45.954807, 30.522099, 37.838276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827488, 30.648176, 37.997944>,  <45.615292, 30.858307, 38.264061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827488, 30.648176, 37.997944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096167, -0.742464, 0.662947,
		-0.842216, -0.415669, -0.343354,
		0.530494, -0.525325, -0.665289,
		45.986637, 30.490580, 37.798359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343849, 30.202387, 38.424667>,  <45.615292, 30.858307, 38.264061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343849, 30.202387, 38.424667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647243, 30.116817, 38.178432>,  <45.829281, 30.065475, 38.030693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647243, 30.116817, 38.178432>,  <45.343849, 30.202387, 38.424667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647243, 30.116817, 38.178432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205285, -0.818074, 0.537227,
		-0.618518, -0.533846, -0.576579,
		0.758481, -0.213921, -0.615584,
		45.874786, 30.052641, 37.993755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346336, 29.565935, 38.340073>,  <45.343849, 30.202387, 38.424667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346336, 29.565935, 38.340073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722446, 29.649651, 38.232677>,  <45.948112, 29.699881, 38.168240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722446, 29.649651, 38.232677>,  <45.346336, 29.565935, 38.340073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722446, 29.649651, 38.232677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318261, -0.820367, 0.475088,
		-0.120829, -0.532161, -0.837977,
		0.940271, 0.209291, -0.268490,
		46.004528, 29.712439, 38.152130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521095, 28.967110, 38.039211>,  <45.346336, 29.565935, 38.340073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521095, 28.967110, 38.039211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864372, 29.148951, 38.134575>,  <46.070339, 29.258055, 38.191795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864372, 29.148951, 38.134575>,  <45.521095, 28.967110, 38.039211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864372, 29.148951, 38.134575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274691, -0.799055, 0.534842,
		0.433643, -0.393509, -0.810620,
		0.858195, 0.454600, 0.238411,
		46.121830, 29.285330, 38.206097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005039, 28.498486, 37.948311>,  <45.521095, 28.967110, 38.039211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005039, 28.498486, 37.948311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.189957, 28.751345, 38.197044>,  <46.300907, 28.903059, 38.346283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.189957, 28.751345, 38.197044>,  <46.005039, 28.498486, 37.948311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189957, 28.751345, 38.197044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207458, -0.758910, 0.617266,
		0.862115, -0.156357, -0.481986,
		0.462298, 0.632146, 0.621830,
		46.328648, 28.940989, 38.383595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605110, 28.262135, 38.155048>,  <46.005039, 28.498486, 37.948311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605110, 28.262135, 38.155048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561897, 28.531378, 38.447693>,  <46.535969, 28.692924, 38.623280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561897, 28.531378, 38.447693>,  <46.605110, 28.262135, 38.155048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561897, 28.531378, 38.447693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308064, -0.677025, 0.668381,
		0.945212, 0.297589, -0.134221,
		-0.108032, 0.673110, 0.731609,
		46.529488, 28.733311, 38.667175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268902, 28.251873, 38.597748>,  <46.605110, 28.262135, 38.155048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268902, 28.251873, 38.597748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.958363, 28.385536, 38.811523>,  <46.772041, 28.465734, 38.939789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.958363, 28.385536, 38.811523>,  <47.268902, 28.251873, 38.597748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.958363, 28.385536, 38.811523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105755, -0.766827, 0.633082,
		0.621374, 0.548009, 0.559983,
		-0.776344, 0.334160, 0.534441,
		46.725460, 28.485785, 38.971855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.450611, 28.080770, 39.215691>,  <47.268902, 28.251873, 38.597748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.450611, 28.080770, 39.215691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.062717, 28.168266, 39.259071>,  <46.829979, 28.220764, 39.285099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.062717, 28.168266, 39.259071>,  <47.450611, 28.080770, 39.215691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062717, 28.168266, 39.259071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076101, -0.692873, 0.717033,
		0.231987, 0.687080, 0.688551,
		-0.969737, 0.218742, 0.108450,
		46.771797, 28.233889, 39.291607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358997, 27.969309, 39.868176>,  <47.450611, 28.080770, 39.215691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358997, 27.969309, 39.868176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.987530, 27.956038, 39.720406>,  <46.764648, 27.948074, 39.631744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.987530, 27.956038, 39.720406>,  <47.358997, 27.969309, 39.868176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.987530, 27.956038, 39.720406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223886, -0.743939, 0.629627,
		-0.295715, 0.667424, 0.683446,
		-0.928670, -0.033177, -0.369420,
		46.708927, 27.946085, 39.609581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.990955, 27.907816, 40.377213>,  <47.358997, 27.969309, 39.868176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.990955, 27.907816, 40.377213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.766544, 27.742161, 40.090511>,  <46.631897, 27.642767, 39.918491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.766544, 27.742161, 40.090511>,  <46.990955, 27.907816, 40.377213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.766544, 27.742161, 40.090511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226003, -0.756336, 0.613905,
		-0.796350, 0.506406, 0.330727,
		-0.561025, -0.414138, -0.716757,
		46.598236, 27.617920, 39.875484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334026, 27.648048, 40.712280>,  <46.990955, 27.907816, 40.377213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334026, 27.648048, 40.712280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398849, 27.457258, 40.366741>,  <46.437744, 27.342783, 40.159420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398849, 27.457258, 40.366741>,  <46.334026, 27.648048, 40.712280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398849, 27.457258, 40.366741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203446, -0.872760, 0.443733,
		-0.965581, 0.103835, -0.238478,
		0.162059, -0.476978, -0.863846,
		46.447468, 27.314165, 40.107586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.516560, 33.539749, 40.311924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162819, 33.353085, 40.306889>,  <39.950577, 33.241085, 40.303867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162819, 33.353085, 40.306889>,  <40.516560, 33.539749, 40.311924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162819, 33.353085, 40.306889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008964, 0.009992, -0.999910,
		0.466743, -0.884381, -0.004653,
		-0.884348, -0.466659, -0.012591,
		39.897514, 33.213085, 40.303112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618843, 33.001240, 39.723473>,  <40.516560, 33.539749, 40.311924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618843, 33.001240, 39.723473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221920, 33.012608, 39.771671>,  <39.983765, 33.019428, 39.800591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221920, 33.012608, 39.771671>,  <40.618843, 33.001240, 39.723473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221920, 33.012608, 39.771671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123800, -0.228796, -0.965570,
		0.000130, -0.973060, 0.230554,
		-0.992307, 0.028417, 0.120495,
		39.924229, 33.021133, 39.807819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380554, 32.364639, 39.439030>,  <40.618843, 33.001240, 39.723473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380554, 32.364639, 39.439030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053890, 32.594170, 39.463684>,  <39.857891, 32.731888, 39.478477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053890, 32.594170, 39.463684>,  <40.380554, 32.364639, 39.439030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053890, 32.594170, 39.463684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222124, -0.213947, -0.951256,
		-0.532666, -0.790540, 0.302181,
		-0.816656, 0.573823, 0.061636,
		39.808895, 32.766315, 39.482174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920376, 32.038933, 39.039501>,  <40.380554, 32.364639, 39.439030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920376, 32.038933, 39.039501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736496, 32.391197, 39.085304>,  <39.626167, 32.602554, 39.112785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736496, 32.391197, 39.085304>,  <39.920376, 32.038933, 39.039501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736496, 32.391197, 39.085304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228047, 0.007556, -0.973621,
		-0.858295, -0.473686, 0.197359,
		-0.459699, 0.880661, 0.114507,
		39.598587, 32.655396, 39.119656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213875, 31.954239, 38.773712>,  <39.920376, 32.038933, 39.039501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213875, 31.954239, 38.773712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323471, 32.338905, 38.769295>,  <39.389229, 32.569706, 38.766644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323471, 32.338905, 38.769295>,  <39.213875, 31.954239, 38.773712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323471, 32.338905, 38.769295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201221, 0.046093, -0.978461,
		-0.940446, 0.270314, 0.206137,
		0.273993, 0.961668, -0.011045,
		39.405670, 32.627407, 38.765980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734688, 32.296818, 38.503490>,  <39.213875, 31.954239, 38.773712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734688, 32.296818, 38.503490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039257, 32.546028, 38.431847>,  <39.222000, 32.695553, 38.388863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039257, 32.546028, 38.431847>,  <38.734688, 32.296818, 38.503490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039257, 32.546028, 38.431847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277050, 0.062964, -0.958790,
		-0.586070, 0.779667, 0.220550,
		0.761423, 0.623021, -0.179106,
		39.267685, 32.732933, 38.378117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447372, 32.792858, 38.124588>,  <38.734688, 32.296818, 38.503490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447372, 32.792858, 38.124588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841274, 32.833897, 38.068409>,  <39.077618, 32.858521, 38.034702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841274, 32.833897, 38.068409>,  <38.447372, 32.792858, 38.124588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841274, 32.833897, 38.068409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163518, 0.270977, -0.948595,
		-0.059262, 0.957103, 0.283623,
		0.984759, 0.102593, -0.140445,
		39.136703, 32.864674, 38.026276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576626, 33.375950, 37.759674>,  <38.447372, 32.792858, 38.124588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576626, 33.375950, 37.759674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895638, 33.146595, 37.684650>,  <39.087044, 33.008984, 37.639637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895638, 33.146595, 37.684650>,  <38.576626, 33.375950, 37.759674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895638, 33.146595, 37.684650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044228, 0.254484, -0.966065,
		0.601659, 0.778759, 0.177598,
		0.797527, -0.573387, -0.187555,
		39.134895, 32.974579, 37.628384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956833, 33.785873, 37.320900>,  <38.576626, 33.375950, 37.759674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956833, 33.785873, 37.320900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091064, 33.415630, 37.250874>,  <39.171604, 33.193485, 37.208858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091064, 33.415630, 37.250874>,  <38.956833, 33.785873, 37.320900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091064, 33.415630, 37.250874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059232, 0.164738, -0.984557,
		0.940149, 0.340764, 0.000457,
		0.335577, -0.925603, -0.175062,
		39.191738, 33.137951, 37.198357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640099, 33.829777, 36.900635>,  <38.956833, 33.785873, 37.320900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640099, 33.829777, 36.900635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451904, 33.480915, 36.846989>,  <39.338985, 33.271599, 36.814800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451904, 33.480915, 36.846989>,  <39.640099, 33.829777, 36.900635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451904, 33.480915, 36.846989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049132, 0.125863, -0.990830,
		0.881037, -0.472764, -0.016367,
		-0.470489, -0.872154, -0.134118,
		39.310757, 33.219269, 36.806755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823997, 33.678925, 36.230873>,  <39.640099, 33.829777, 36.900635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823997, 33.678925, 36.230873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579903, 33.365932, 36.280403>,  <39.433445, 33.178139, 36.310120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579903, 33.365932, 36.280403>,  <39.823997, 33.678925, 36.230873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579903, 33.365932, 36.280403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110431, -0.070754, -0.991362,
		0.784481, -0.618644, -0.043233,
		-0.610241, -0.782479, 0.123823,
		39.396832, 33.131187, 36.317551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989395, 33.149876, 35.722507>,  <39.823997, 33.678925, 36.230873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989395, 33.149876, 35.722507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605652, 33.069832, 35.802097>,  <39.375408, 33.021805, 35.849854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605652, 33.069832, 35.802097>,  <39.989395, 33.149876, 35.722507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605652, 33.069832, 35.802097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182920, -0.095952, -0.978434,
		0.214890, -0.975063, 0.055448,
		-0.959355, -0.200113, 0.198978,
		39.317844, 33.009800, 35.861790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754471, 32.562527, 35.341808>,  <39.989395, 33.149876, 35.722507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754471, 32.562527, 35.341808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458248, 32.820633, 35.416855>,  <39.280514, 32.975498, 35.461884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458248, 32.820633, 35.416855>,  <39.754471, 32.562527, 35.341808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458248, 32.820633, 35.416855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304849, -0.073780, -0.949538,
		-0.598864, -0.760385, 0.251348,
		-0.740560, 0.645268, 0.187619,
		39.236080, 33.014214, 35.473141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261383, 32.372402, 35.011475>,  <39.754471, 32.562527, 35.341808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261383, 32.372402, 35.011475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139099, 32.747204, 35.079075>,  <39.065727, 32.972084, 35.119637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139099, 32.747204, 35.079075>,  <39.261383, 32.372402, 35.011475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139099, 32.747204, 35.079075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433232, 0.021163, -0.901034,
		-0.847850, -0.348674, 0.399471,
		-0.305713, 0.937005, 0.169000,
		39.047386, 33.028305, 35.129776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435043, 31.739382, 35.208324>,  <39.261383, 32.372402, 35.011475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435043, 31.739382, 35.208324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552849, 31.448940, 34.959797>,  <39.623531, 31.274675, 34.810680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552849, 31.448940, 34.959797>,  <39.435043, 31.739382, 35.208324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552849, 31.448940, 34.959797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281535, -0.687226, 0.669671,
		-0.913236, -0.022303, -0.406819,
		0.294512, -0.726101, -0.621320,
		39.641201, 31.231110, 34.773399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873909, 31.263826, 35.087116>,  <39.435043, 31.739382, 35.208324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873909, 31.263826, 35.087116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223221, 31.078650, 35.026356>,  <39.432808, 30.967543, 34.989899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223221, 31.078650, 35.026356>,  <38.873909, 31.263826, 35.087116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223221, 31.078650, 35.026356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315090, -0.774403, 0.548651,
		-0.371629, -0.431260, -0.822136,
		0.873275, -0.462942, -0.151905,
		39.485203, 30.939768, 34.980785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646976, 30.510117, 34.948776>,  <38.873909, 31.263826, 35.087116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646976, 30.510117, 34.948776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020481, 30.554058, 35.085026>,  <39.244583, 30.580423, 35.166775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020481, 30.554058, 35.085026>,  <38.646976, 30.510117, 34.948776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020481, 30.554058, 35.085026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171729, -0.697489, 0.695714,
		0.314005, -0.708125, -0.632423,
		0.933761, 0.109852, 0.340621,
		39.300610, 30.587013, 35.187214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836258, 29.781399, 35.081749>,  <38.646976, 30.510117, 34.948776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836258, 29.781399, 35.081749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122025, 29.992746, 35.265240>,  <39.293484, 30.119555, 35.375336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122025, 29.992746, 35.265240>,  <38.836258, 29.781399, 35.081749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122025, 29.992746, 35.265240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026117, -0.635001, 0.772070,
		0.699231, -0.563561, -0.439857,
		0.714418, 0.528368, 0.458731,
		39.336349, 30.151257, 35.402859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204189, 29.303776, 35.498413>,  <38.836258, 29.781399, 35.081749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204189, 29.303776, 35.498413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289570, 29.665792, 35.645569>,  <39.340797, 29.883001, 35.733860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289570, 29.665792, 35.645569>,  <39.204189, 29.303776, 35.498413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289570, 29.665792, 35.645569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031590, -0.382762, 0.923307,
		0.976442, -0.185462, -0.110292,
		0.213454, 0.905040, 0.367886,
		39.353607, 29.937304, 35.755936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726807, 29.197113, 35.989929>,  <39.204189, 29.303776, 35.498413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726807, 29.197113, 35.989929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563744, 29.550545, 36.082108>,  <39.465908, 29.762604, 36.137413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563744, 29.550545, 36.082108>,  <39.726807, 29.197113, 35.989929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563744, 29.550545, 36.082108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017682, -0.244677, 0.969443,
		0.912966, 0.399271, 0.084120,
		-0.407653, 0.883581, 0.230442,
		39.441448, 29.815619, 36.151241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123165, 29.400665, 36.552338>,  <39.726807, 29.197113, 35.989929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123165, 29.400665, 36.552338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786179, 29.615501, 36.569206>,  <39.583984, 29.744404, 36.579327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786179, 29.615501, 36.569206>,  <40.123165, 29.400665, 36.552338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786179, 29.615501, 36.569206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023424, -0.114714, 0.993122,
		0.538233, 0.835689, 0.109224,
		-0.842471, 0.537090, 0.042168,
		39.533436, 29.776628, 36.581856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208565, 29.922813, 37.085884>,  <40.123165, 29.400665, 36.552338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208565, 29.922813, 37.085884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813412, 29.890860, 37.032646>,  <39.576321, 29.871687, 37.000706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813412, 29.890860, 37.032646>,  <40.208565, 29.922813, 37.085884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813412, 29.890860, 37.032646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141168, 0.105796, 0.984316,
		-0.064551, 0.991174, -0.115790,
		-0.987879, -0.079884, -0.133093,
		39.517048, 29.866894, 36.992718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863400, 30.409399, 37.567242>,  <40.208565, 29.922813, 37.085884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863400, 30.409399, 37.567242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571815, 30.158997, 37.456432>,  <39.396866, 30.008755, 37.389946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571815, 30.158997, 37.456432>,  <39.863400, 30.409399, 37.567242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571815, 30.158997, 37.456432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475311, 0.171620, 0.862917,
		-0.492648, 0.760700, -0.422651,
		-0.728956, -0.626005, -0.277020,
		39.353130, 29.971195, 37.373325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317905, 30.794544, 37.677826>,  <39.863400, 30.409399, 37.567242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317905, 30.794544, 37.677826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205059, 30.411043, 37.691730>,  <39.137352, 30.180943, 37.700073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205059, 30.411043, 37.691730>,  <39.317905, 30.794544, 37.677826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205059, 30.411043, 37.691730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489884, 0.175111, 0.854020,
		-0.824878, 0.223904, -0.519078,
		-0.282115, -0.958751, 0.034758,
		39.120426, 30.123419, 37.702160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639381, 30.835142, 37.968197>,  <39.317905, 30.794544, 37.677826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639381, 30.835142, 37.968197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719204, 30.443848, 37.990944>,  <38.767097, 30.209070, 38.004593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719204, 30.443848, 37.990944>,  <38.639381, 30.835142, 37.968197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719204, 30.443848, 37.990944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599093, -0.075874, 0.797076,
		-0.775414, -0.193128, -0.601195,
		0.199552, -0.978236, 0.056868,
		38.779068, 30.150377, 38.008003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044228, 30.499210, 38.269314>,  <38.639381, 30.835142, 37.968197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044228, 30.499210, 38.269314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342136, 30.238592, 38.327003>,  <38.520882, 30.082220, 38.361618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342136, 30.238592, 38.327003>,  <38.044228, 30.499210, 38.269314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342136, 30.238592, 38.327003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343489, -0.189002, 0.919942,
		-0.572127, -0.734687, -0.364563,
		0.744773, -0.651547, 0.144224,
		38.565567, 30.043129, 38.370270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704727, 29.857176, 38.496845>,  <38.044228, 30.499210, 38.269314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704727, 29.857176, 38.496845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084904, 29.865974, 38.620895>,  <38.313011, 29.871254, 38.695328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084904, 29.865974, 38.620895>,  <37.704727, 29.857176, 38.496845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084904, 29.865974, 38.620895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299403, -0.204060, 0.932050,
		0.083791, -0.978711, -0.187360,
		0.950440, 0.022001, 0.310128,
		38.370037, 29.872574, 38.713932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725822, 29.336672, 38.990902>,  <37.704727, 29.857176, 38.496845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725822, 29.336672, 38.990902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062199, 29.520432, 39.105289>,  <38.264023, 29.630688, 39.173923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062199, 29.520432, 39.105289>,  <37.725822, 29.336672, 38.990902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062199, 29.520432, 39.105289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246564, -0.145122, 0.958199,
		0.481698, -0.876293, -0.008766,
		0.840936, 0.459401, 0.285967,
		38.314480, 29.658253, 39.191078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772545, 28.658068, 39.083641>,  <37.725822, 29.336672, 38.990902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772545, 28.658068, 39.083641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386349, 28.627405, 39.183208>,  <37.154633, 28.609009, 39.242950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386349, 28.627405, 39.183208>,  <37.772545, 28.658068, 39.083641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386349, 28.627405, 39.183208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253623, 0.059258, -0.965486,
		0.059258, -0.995295, -0.076654,
		0.965486, 0.076654, -0.248918,
		37.096703, 28.604408, 39.257885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403713, 28.223423, 38.609528>,  <37.772545, 28.658068, 39.083641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403713, 28.223423, 38.609528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100822, 28.435545, 38.762047>,  <36.919090, 28.562819, 38.853558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100822, 28.435545, 38.762047>,  <37.403713, 28.223423, 38.609528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100822, 28.435545, 38.762047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289108, 0.251349, -0.923710,
		-0.585688, -0.809691, -0.037012,
		-0.757223, 0.530305, 0.381301,
		36.873657, 28.594637, 38.876438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765739, 27.995296, 38.192387>,  <37.403713, 28.223423, 38.609528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765739, 27.995296, 38.192387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601109, 28.307175, 38.381142>,  <36.502331, 28.494301, 38.494396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601109, 28.307175, 38.381142>,  <36.765739, 27.995296, 38.192387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601109, 28.307175, 38.381142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576446, 0.178339, -0.797437,
		-0.705913, -0.600226, 0.376052,
		-0.411578, 0.779695, 0.471890,
		36.477634, 28.541082, 38.522709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031387, 27.919840, 38.136421>,  <36.765739, 27.995296, 38.192387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031387, 27.919840, 38.136421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087650, 28.312271, 38.189640>,  <36.121410, 28.547729, 38.221573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087650, 28.312271, 38.189640>,  <36.031387, 27.919840, 38.136421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087650, 28.312271, 38.189640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708191, 0.193614, -0.678954,
		-0.691867, 0.001278, 0.722024,
		0.140662, 0.981077, 0.133051,
		36.129848, 28.606594, 38.229557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339924, 28.254572, 38.233131>,  <36.031387, 27.919840, 38.136421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339924, 28.254572, 38.233131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594086, 28.533943, 38.101398>,  <35.746582, 28.701567, 38.022358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594086, 28.533943, 38.101398>,  <35.339924, 28.254572, 38.233131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594086, 28.533943, 38.101398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641475, 0.240017, -0.728630,
		-0.429851, 0.674232, 0.600532,
		0.635404, 0.698429, -0.329332,
		35.784706, 28.743471, 38.002598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950115, 28.916512, 38.209450>,  <35.339924, 28.254572, 38.233131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950115, 28.916512, 38.209450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259510, 28.947010, 37.957764>,  <35.445148, 28.965309, 37.806751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259510, 28.947010, 37.957764>,  <34.950115, 28.916512, 38.209450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259510, 28.947010, 37.957764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604509, 0.387114, -0.696212,
		0.190494, 0.918874, 0.345518,
		0.773486, 0.076244, -0.629211,
		35.491554, 28.969883, 37.769001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786812, 29.566032, 37.895538>,  <34.950115, 28.916512, 38.209450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786812, 29.566032, 37.895538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052368, 29.403456, 37.644444>,  <35.211700, 29.305910, 37.493786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052368, 29.403456, 37.644444>,  <34.786812, 29.566032, 37.895538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052368, 29.403456, 37.644444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588985, 0.233061, -0.773808,
		0.460809, 0.883452, -0.084661,
		0.663891, -0.406442, -0.627737,
		35.251537, 29.281523, 37.456123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867710, 30.090111, 37.348026>,  <34.786812, 29.566032, 37.895538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867710, 30.090111, 37.348026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963024, 29.721273, 37.226067>,  <35.020214, 29.499971, 37.152889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963024, 29.721273, 37.226067>,  <34.867710, 30.090111, 37.348026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963024, 29.721273, 37.226067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502849, 0.151448, -0.851003,
		0.830880, 0.356104, -0.427585,
		0.238289, -0.922092, -0.304901,
		35.034512, 29.444645, 37.134598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982662, 30.223442, 36.666203>,  <34.867710, 30.090111, 37.348026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982662, 30.223442, 36.666203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959835, 29.824154, 36.659267>,  <34.946140, 29.584581, 36.655106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959835, 29.824154, 36.659267>,  <34.982662, 30.223442, 36.666203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959835, 29.824154, 36.659267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560692, 0.046412, -0.826723,
		0.826056, -0.037459, -0.562342,
		-0.057067, -0.998220, -0.017336,
		34.942715, 29.524689, 36.654068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998028, 30.119411, 35.984272>,  <34.982662, 30.223442, 36.666203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998028, 30.119411, 35.984272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873924, 29.773952, 36.143196>,  <34.799461, 29.566677, 36.238552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873924, 29.773952, 36.143196>,  <34.998028, 30.119411, 35.984272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873924, 29.773952, 36.143196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699688, -0.075482, -0.710450,
		0.643567, -0.498417, -0.580863,
		-0.310255, -0.863645, 0.397314,
		34.780849, 29.514858, 36.262390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065590, 29.669094, 35.437805>,  <34.998028, 30.119411, 35.984272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065590, 29.669094, 35.437805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801697, 29.502239, 35.687843>,  <34.643360, 29.402126, 35.837868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801697, 29.502239, 35.687843>,  <35.065590, 29.669094, 35.437805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801697, 29.502239, 35.687843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628503, -0.149748, -0.763256,
		0.411991, -0.896421, -0.163380,
		-0.659733, -0.417139, 0.625098,
		34.603775, 29.377098, 35.875374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860107, 28.997860, 35.042522>,  <35.065590, 29.669094, 35.437805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860107, 28.997860, 35.042522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575886, 29.115469, 35.298229>,  <34.405354, 29.186035, 35.451653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575886, 29.115469, 35.298229>,  <34.860107, 28.997860, 35.042522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575886, 29.115469, 35.298229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680972, -0.058584, -0.729963,
		-0.177174, -0.954001, 0.241848,
		-0.710554, 0.294022, 0.639268,
		34.362720, 29.203676, 35.490009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.393684, 26.999760, 42.412819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092976, 27.236345, 42.529438>,  <37.912548, 27.378298, 42.599411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092976, 27.236345, 42.529438>,  <38.393684, 26.999760, 42.412819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092976, 27.236345, 42.529438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214531, 0.198707, -0.956291,
		-0.623547, -0.781462, -0.022495,
		-0.751775, 0.591466, 0.291551,
		37.867443, 27.413786, 42.616901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750412, 26.760660, 42.058735>,  <38.393684, 26.999760, 42.412819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750412, 26.760660, 42.058735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658630, 27.130753, 42.179600>,  <37.603561, 27.352808, 42.252117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658630, 27.130753, 42.179600>,  <37.750412, 26.760660, 42.058735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658630, 27.130753, 42.179600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407260, 0.190692, -0.893183,
		-0.884019, -0.328002, 0.333054,
		-0.229455, 0.925230, 0.302158,
		37.589794, 27.408321, 42.270248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128418, 26.817822, 41.804546>,  <37.750412, 26.760660, 42.058735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128418, 26.817822, 41.804546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227482, 27.201321, 41.860359>,  <37.286919, 27.431419, 41.893848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227482, 27.201321, 41.860359>,  <37.128418, 26.817822, 41.804546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227482, 27.201321, 41.860359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323395, 0.217566, -0.920913,
		-0.913281, 0.182946, 0.363936,
		0.247657, 0.958747, 0.139535,
		37.301781, 27.488945, 41.902218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601669, 27.190369, 41.452091>,  <37.128418, 26.817822, 41.804546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601669, 27.190369, 41.452091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902374, 27.450157, 41.497776>,  <37.082798, 27.606031, 41.525185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902374, 27.450157, 41.497776>,  <36.601669, 27.190369, 41.452091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902374, 27.450157, 41.497776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183408, 0.372283, -0.909817,
		-0.633419, 0.663017, 0.398985,
		0.751759, 0.649473, 0.114208,
		37.127903, 27.644999, 41.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273033, 27.795280, 41.344162>,  <36.601669, 27.190369, 41.452091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273033, 27.795280, 41.344162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664936, 27.830017, 41.272007>,  <36.900078, 27.850859, 41.228714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664936, 27.830017, 41.272007>,  <36.273033, 27.795280, 41.344162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664936, 27.830017, 41.272007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200149, 0.404238, -0.892486,
		-0.004585, 0.910522, 0.413436,
		0.979755, 0.086840, -0.180387,
		36.958862, 27.856070, 41.217892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394665, 28.473888, 41.175751>,  <36.273033, 27.795280, 41.344162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394665, 28.473888, 41.175751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686687, 28.250311, 41.018478>,  <36.861900, 28.116163, 40.924114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686687, 28.250311, 41.018478>,  <36.394665, 28.473888, 41.175751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686687, 28.250311, 41.018478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319127, 0.229917, -0.919400,
		0.604295, 0.796691, -0.010521,
		0.730059, -0.558946, -0.393183,
		36.905704, 28.082626, 40.900524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728764, 29.018230, 40.727219>,  <36.394665, 28.473888, 41.175751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728764, 29.018230, 40.727219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886257, 28.675129, 40.595016>,  <36.980755, 28.469269, 40.515694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886257, 28.675129, 40.595016>,  <36.728764, 29.018230, 40.727219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886257, 28.675129, 40.595016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056212, 0.336407, -0.940037,
		0.917503, 0.388705, 0.084240,
		0.393737, -0.857752, -0.330505,
		37.004379, 28.417803, 40.495865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236591, 29.287756, 40.203350>,  <36.728764, 29.018230, 40.727219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236591, 29.287756, 40.203350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122791, 28.907366, 40.154846>,  <37.054512, 28.679131, 40.125744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122791, 28.907366, 40.154846>,  <37.236591, 29.287756, 40.203350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122791, 28.907366, 40.154846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169348, 0.174346, -0.970013,
		0.943600, -0.255432, -0.210647,
		-0.284498, -0.950977, -0.121256,
		37.037441, 28.622072, 40.118469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749947, 29.033442, 39.738937>,  <37.236591, 29.287756, 40.203350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749947, 29.033442, 39.738937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428139, 28.797157, 39.714256>,  <37.235054, 28.655386, 39.699448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428139, 28.797157, 39.714256>,  <37.749947, 29.033442, 39.738937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428139, 28.797157, 39.714256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006786, 0.113029, -0.993568,
		0.593888, -0.798926, -0.094943,
		-0.804519, -0.590713, -0.061706,
		37.186783, 28.619944, 39.695744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484215, 28.716583, 39.608891>,  <37.749947, 29.033442, 39.738937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484215, 28.716583, 39.608891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539295, 29.112589, 39.620964>,  <38.572346, 29.350191, 39.628208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539295, 29.112589, 39.620964>,  <38.484215, 28.716583, 39.608891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539295, 29.112589, 39.620964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378044, -0.080704, 0.922263,
		0.915489, -0.115589, -0.385382,
		0.137705, 0.990013, 0.030186,
		38.580608, 29.409594, 39.630020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064388, 28.811432, 40.067123>,  <38.484215, 28.716583, 39.608891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064388, 28.811432, 40.067123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909309, 29.178946, 40.037384>,  <38.816261, 29.399454, 40.019539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909309, 29.178946, 40.037384>,  <39.064388, 28.811432, 40.067123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909309, 29.178946, 40.037384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187263, 0.157481, 0.969604,
		0.902566, 0.361989, -0.233108,
		-0.387696, 0.918784, -0.074350,
		38.792999, 29.454580, 40.015079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527100, 29.209240, 40.277851>,  <39.064388, 28.811432, 40.067123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527100, 29.209240, 40.277851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193932, 29.427544, 40.314495>,  <38.994030, 29.558525, 40.336483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193932, 29.427544, 40.314495>,  <39.527100, 29.209240, 40.277851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193932, 29.427544, 40.314495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246176, 0.217147, 0.944587,
		0.495624, 0.809317, -0.315218,
		-0.832919, 0.545759, 0.091611,
		38.944057, 29.591270, 40.341980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812710, 29.780931, 40.654739>,  <39.527100, 29.209240, 40.277851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812710, 29.780931, 40.654739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.417496, 29.811829, 40.708141>,  <39.180367, 29.830366, 40.740181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.417496, 29.811829, 40.708141>,  <39.812710, 29.780931, 40.654739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417496, 29.811829, 40.708141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153406, 0.402261, 0.902581,
		0.016014, 0.912261, -0.409297,
		-0.988033, 0.077242, 0.133505,
		39.121086, 29.835001, 40.748192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780293, 30.517927, 40.887001>,  <39.812710, 29.780931, 40.654739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780293, 30.517927, 40.887001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474602, 30.297548, 41.021114>,  <39.291187, 30.165321, 41.101582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474602, 30.297548, 41.021114>,  <39.780293, 30.517927, 40.887001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474602, 30.297548, 41.021114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251861, 0.223636, 0.941569,
		-0.593735, 0.804018, -0.032147,
		-0.764228, -0.550946, 0.335281,
		39.245335, 30.132265, 41.121700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516739, 30.894056, 41.431259>,  <39.780293, 30.517927, 40.887001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516739, 30.894056, 41.431259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.353783, 30.535826, 41.502785>,  <39.256008, 30.320887, 41.545700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.353783, 30.535826, 41.502785>,  <39.516739, 30.894056, 41.431259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353783, 30.535826, 41.502785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065334, 0.223877, 0.972425,
		-0.910915, 0.384471, -0.149717,
		-0.407387, -0.895579, 0.178814,
		39.231567, 30.267153, 41.556427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009014, 31.131472, 41.881592>,  <39.516739, 30.894056, 41.431259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009014, 31.131472, 41.881592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085571, 30.740788, 41.920395>,  <39.131504, 30.506378, 41.943676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085571, 30.740788, 41.920395>,  <39.009014, 31.131472, 41.881592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085571, 30.740788, 41.920395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047577, 0.089490, 0.994851,
		-0.980361, -0.195018, -0.029341,
		0.191388, -0.976708, 0.097011,
		39.142986, 30.447775, 41.949497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563026, 30.885164, 42.451786>,  <39.009014, 31.131472, 41.881592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563026, 30.885164, 42.451786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880215, 30.645666, 42.406719>,  <39.070530, 30.501966, 42.379677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880215, 30.645666, 42.406719>,  <38.563026, 30.885164, 42.451786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880215, 30.645666, 42.406719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165448, 0.033643, 0.985644,
		-0.586362, -0.800231, 0.125739,
		0.792974, -0.598747, -0.112670,
		39.118107, 30.466042, 42.372917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574047, 30.601160, 43.029465>,  <38.563026, 30.885164, 42.451786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574047, 30.601160, 43.029465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941391, 30.501980, 42.906086>,  <39.161797, 30.442472, 42.832058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941391, 30.501980, 42.906086>,  <38.574047, 30.601160, 43.029465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941391, 30.501980, 42.906086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291777, -0.102325, 0.950997,
		-0.267362, -0.963353, -0.021625,
		0.918359, -0.247951, -0.308442,
		39.216900, 30.427595, 42.813553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726822, 30.170649, 43.500378>,  <38.574047, 30.601160, 43.029465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726822, 30.170649, 43.500378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090000, 30.223988, 43.341450>,  <39.307907, 30.255991, 43.246094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090000, 30.223988, 43.341450>,  <38.726822, 30.170649, 43.500378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090000, 30.223988, 43.341450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416364, -0.178906, 0.891422,
		0.047788, -0.974788, -0.217958,
		0.907941, 0.133349, -0.397317,
		39.362381, 30.263992, 43.222256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226078, 29.645311, 43.713345>,  <38.726822, 30.170649, 43.500378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226078, 29.645311, 43.713345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.478157, 29.936954, 43.606571>,  <39.629402, 30.111940, 43.542507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.478157, 29.936954, 43.606571>,  <39.226078, 29.645311, 43.713345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478157, 29.936954, 43.606571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597928, -0.236409, 0.765894,
		0.495313, -0.642271, -0.584938,
		0.630196, 0.729108, -0.266935,
		39.667217, 30.155687, 43.526489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962036, 29.345722, 43.728401>,  <39.226078, 29.645311, 43.713345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962036, 29.345722, 43.728401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978634, 29.743370, 43.768406>,  <39.988590, 29.981958, 43.792408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978634, 29.743370, 43.768406>,  <39.962036, 29.345722, 43.728401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978634, 29.743370, 43.768406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605925, -0.104624, 0.788612,
		0.794439, 0.027879, -0.606704,
		0.041490, 0.994121, 0.100010,
		39.991081, 30.041607, 43.798409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639648, 29.483444, 43.845406>,  <39.962036, 29.345722, 43.728401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639648, 29.483444, 43.845406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.452763, 29.810961, 43.978844>,  <40.340630, 30.007471, 44.058907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.452763, 29.810961, 43.978844>,  <40.639648, 29.483444, 43.845406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452763, 29.810961, 43.978844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649249, 0.061611, 0.758076,
		0.600154, 0.570773, -0.560387,
		-0.467215, 0.818793, 0.333598,
		40.312599, 30.056599, 44.078922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099907, 29.928011, 44.016518>,  <40.639648, 29.483444, 43.845406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099907, 29.928011, 44.016518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787201, 30.087626, 44.208187>,  <40.599575, 30.183393, 44.323189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787201, 30.087626, 44.208187>,  <41.099907, 29.928011, 44.016518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787201, 30.087626, 44.208187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548529, 0.074589, 0.832798,
		0.296574, 0.913897, -0.277194,
		-0.781767, 0.399035, 0.479178,
		40.552670, 30.207336, 44.351940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.057816, 31.270325, 45.899235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.368839, 31.037348, 45.804440>,  <33.555454, 30.897562, 45.747562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.368839, 31.037348, 45.804440>,  <33.057816, 31.270325, 45.899235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368839, 31.037348, 45.804440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020793, 0.352861, -0.935445,
		0.628468, 0.732289, 0.262259,
		0.777557, -0.582444, -0.236988,
		33.602108, 30.862614, 45.733341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608875, 31.810509, 45.498913>,  <33.057816, 31.270325, 45.899235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608875, 31.810509, 45.498913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738777, 31.443966, 45.405251>,  <33.816719, 31.224041, 45.349052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738777, 31.443966, 45.405251>,  <33.608875, 31.810509, 45.498913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738777, 31.443966, 45.405251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048537, 0.263400, -0.963465,
		0.944553, 0.301520, 0.130016,
		0.324750, -0.916355, -0.234160,
		33.836201, 31.169060, 45.335003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263935, 31.793457, 45.058273>,  <33.608875, 31.810509, 45.498913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263935, 31.793457, 45.058273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094448, 31.438793, 44.984196>,  <33.992756, 31.225996, 44.939751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094448, 31.438793, 44.984196>,  <34.263935, 31.793457, 45.058273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094448, 31.438793, 44.984196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004132, 0.206343, -0.978471,
		0.905783, -0.413834, -0.091096,
		-0.423722, -0.886659, -0.185192,
		33.967331, 31.172796, 44.928638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610363, 31.564754, 44.562645>,  <34.263935, 31.793457, 45.058273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610363, 31.564754, 44.562645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281731, 31.337763, 44.540840>,  <34.084553, 31.201569, 44.527756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281731, 31.337763, 44.540840>,  <34.610363, 31.564754, 44.562645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281731, 31.337763, 44.540840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073305, -0.010332, -0.997256,
		0.565358, -0.823323, 0.050087,
		-0.821582, -0.567478, -0.054513,
		34.035255, 31.167519, 44.524487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730934, 30.985544, 44.044292>,  <34.610363, 31.564754, 44.562645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730934, 30.985544, 44.044292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334110, 31.015078, 44.085007>,  <34.096016, 31.032797, 44.109436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334110, 31.015078, 44.085007>,  <34.730934, 30.985544, 44.044292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334110, 31.015078, 44.085007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100026, 0.027190, -0.994613,
		-0.076201, -0.996900, -0.019589,
		-0.992063, 0.073831, 0.101788,
		34.036491, 31.037228, 44.115543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400864, 30.554964, 43.575153>,  <34.730934, 30.985544, 44.044292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400864, 30.554964, 43.575153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.126453, 30.833309, 43.660133>,  <33.961807, 31.000317, 43.711121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.126453, 30.833309, 43.660133>,  <34.400864, 30.554964, 43.575153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126453, 30.833309, 43.660133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215770, 0.084282, -0.972800,
		-0.694843, -0.713210, 0.092327,
		-0.686030, 0.695865, 0.212452,
		33.920643, 31.042068, 43.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870316, 30.357012, 43.232552>,  <34.400864, 30.554964, 43.575153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870316, 30.357012, 43.232552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782928, 30.740362, 43.306072>,  <33.730495, 30.970373, 43.350185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782928, 30.740362, 43.306072>,  <33.870316, 30.357012, 43.232552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782928, 30.740362, 43.306072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410986, 0.080471, -0.908083,
		-0.885077, -0.273929, 0.376299,
		-0.218469, 0.958377, 0.183804,
		33.717388, 31.027876, 43.361214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383884, 30.492674, 42.768227>,  <33.870316, 30.357012, 43.232552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383884, 30.492674, 42.768227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.447327, 30.856167, 42.922653>,  <33.485394, 31.074263, 43.015308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.447327, 30.856167, 42.922653>,  <33.383884, 30.492674, 42.768227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447327, 30.856167, 42.922653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384511, 0.416999, -0.823568,
		-0.909393, -0.017825, 0.415556,
		0.158606, 0.908732, 0.386069,
		33.494907, 31.128786, 43.038475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730789, 30.870461, 42.725918>,  <33.383884, 30.492674, 42.768227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730789, 30.870461, 42.725918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028305, 31.137630, 42.715645>,  <33.206814, 31.297932, 42.709480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028305, 31.137630, 42.715645>,  <32.730789, 30.870461, 42.725918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028305, 31.137630, 42.715645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397618, 0.411240, -0.820233,
		-0.537290, 0.620291, 0.571453,
		0.743787, 0.667923, -0.025683,
		33.251442, 31.338007, 42.707939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379398, 31.573599, 42.648521>,  <32.730789, 30.870461, 42.725918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379398, 31.573599, 42.648521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757412, 31.623041, 42.527439>,  <32.984219, 31.652706, 42.454788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757412, 31.623041, 42.527439>,  <32.379398, 31.573599, 42.648521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757412, 31.623041, 42.527439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324149, 0.475544, -0.817793,
		0.042868, 0.870965, 0.489471,
		0.945034, 0.123605, -0.302708,
		33.040924, 31.660122, 42.436626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446434, 32.290501, 42.403816>,  <32.379398, 31.573599, 42.648521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446434, 32.290501, 42.403816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771214, 32.102299, 42.265617>,  <32.966080, 31.989376, 42.182697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771214, 32.102299, 42.265617>,  <32.446434, 32.290501, 42.403816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771214, 32.102299, 42.265617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038541, 0.547367, -0.836005,
		0.582459, 0.692107, 0.426298,
		0.811946, -0.470508, -0.345493,
		33.014797, 31.961145, 42.161968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775120, 32.865833, 41.990616>,  <32.446434, 32.290501, 42.403816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775120, 32.865833, 41.990616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925869, 32.517998, 41.863003>,  <33.016319, 32.309296, 41.786434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925869, 32.517998, 41.863003>,  <32.775120, 32.865833, 41.990616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925869, 32.517998, 41.863003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078732, 0.313105, -0.946449,
		0.922913, 0.381807, 0.049535,
		0.376871, -0.869591, -0.319029,
		33.038929, 32.257122, 41.767296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402081, 33.043392, 41.546997>,  <32.775120, 32.865833, 41.990616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402081, 33.043392, 41.546997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289482, 32.666630, 41.473709>,  <33.221924, 32.440571, 41.429737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289482, 32.666630, 41.473709>,  <33.402081, 33.043392, 41.546997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289482, 32.666630, 41.473709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110491, 0.221488, -0.968883,
		0.953179, -0.252496, -0.166421,
		-0.281499, -0.941907, -0.183219,
		33.205032, 32.384056, 41.418743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775612, 32.948151, 41.040020>,  <33.402081, 33.043392, 41.546997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775612, 32.948151, 41.040020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463531, 32.698444, 41.024136>,  <33.276283, 32.548622, 41.014606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463531, 32.698444, 41.024136>,  <33.775612, 32.948151, 41.040020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463531, 32.698444, 41.024136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185943, 0.292070, -0.938147,
		0.597248, -0.724563, -0.343952,
		-0.780205, -0.624262, -0.039710,
		33.229469, 32.511166, 41.012222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492989, 32.610722, 40.790642>,  <33.775612, 32.948151, 41.040020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492989, 32.610722, 40.790642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778358, 32.883579, 40.726513>,  <34.949581, 33.047295, 40.688034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778358, 32.883579, 40.726513>,  <34.492989, 32.610722, 40.790642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778358, 32.883579, 40.726513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301440, -0.092215, 0.949015,
		0.632583, -0.725378, -0.271414,
		0.713424, 0.682146, -0.160325,
		34.992386, 33.088223, 40.678417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106956, 32.358700, 41.103058>,  <34.492989, 32.610722, 40.790642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106956, 32.358700, 41.103058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145538, 32.755978, 41.076950>,  <35.168690, 32.994343, 41.061283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145538, 32.755978, 41.076950>,  <35.106956, 32.358700, 41.103058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145538, 32.755978, 41.076950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192764, 0.045697, 0.980180,
		0.976493, -0.107129, -0.187044,
		0.096459, 0.993194, -0.065273,
		35.174477, 33.053936, 41.057369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781673, 32.500065, 41.400803>,  <35.106956, 32.358700, 41.103058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781673, 32.500065, 41.400803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570621, 32.837650, 41.439419>,  <35.443989, 33.040203, 41.462589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570621, 32.837650, 41.439419>,  <35.781673, 32.500065, 41.400803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570621, 32.837650, 41.439419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460106, 0.188398, 0.867645,
		0.714076, 0.502220, -0.487720,
		-0.527635, 0.843967, 0.096544,
		35.412331, 33.090839, 41.468384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292503, 33.001255, 41.533192>,  <35.781673, 32.500065, 41.400803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292503, 33.001255, 41.533192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948479, 33.154003, 41.668526>,  <35.742062, 33.245651, 41.749725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948479, 33.154003, 41.668526>,  <36.292503, 33.001255, 41.533192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948479, 33.154003, 41.668526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421355, 0.157747, 0.893071,
		0.287663, 0.910656, -0.296574,
		-0.860064, 0.381866, 0.338331,
		35.690460, 33.268562, 41.770023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489780, 33.416580, 42.062744>,  <36.292503, 33.001255, 41.533192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489780, 33.416580, 42.062744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100533, 33.367439, 42.140656>,  <35.866982, 33.337955, 42.187405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100533, 33.367439, 42.140656>,  <36.489780, 33.416580, 42.062744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100533, 33.367439, 42.140656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183246, 0.099189, 0.978050,
		-0.139480, 0.987455, -0.074010,
		-0.973122, -0.122856, 0.194782,
		35.808598, 33.330582, 42.199089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238930, 34.000042, 42.405621>,  <36.489780, 33.416580, 42.062744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238930, 34.000042, 42.405621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997444, 33.696022, 42.501835>,  <35.852554, 33.513611, 42.559563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997444, 33.696022, 42.501835>,  <36.238930, 34.000042, 42.405621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997444, 33.696022, 42.501835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294549, 0.067708, 0.953235,
		-0.740789, 0.646331, 0.182995,
		-0.603715, -0.760047, 0.240534,
		35.816330, 33.468006, 42.573994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947716, 34.201542, 43.080616>,  <36.238930, 34.000042, 42.405621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947716, 34.201542, 43.080616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898998, 33.805485, 43.052979>,  <35.869766, 33.567848, 43.036396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898998, 33.805485, 43.052979>,  <35.947716, 34.201542, 43.080616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898998, 33.805485, 43.052979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258710, -0.098880, 0.960881,
		-0.958245, 0.099157, 0.268205,
		-0.121799, -0.990147, -0.069098,
		35.862457, 33.508442, 43.032249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911880, 33.995903, 43.684952>,  <35.947716, 34.201542, 43.080616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911880, 33.995903, 43.684952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917194, 33.625385, 43.534321>,  <35.920383, 33.403076, 43.443943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917194, 33.625385, 43.534321>,  <35.911880, 33.995903, 43.684952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917194, 33.625385, 43.534321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150265, -0.370486, 0.916603,
		-0.988557, -0.068762, 0.134268,
		0.013283, -0.926290, -0.376578,
		35.921181, 33.347500, 43.421349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468250, 33.613266, 44.040890>,  <35.911880, 33.995903, 43.684952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468250, 33.613266, 44.040890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749004, 33.360657, 43.909107>,  <35.917458, 33.209091, 43.830040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749004, 33.360657, 43.909107>,  <35.468250, 33.613266, 44.040890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749004, 33.360657, 43.909107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236225, -0.229973, 0.944092,
		-0.671978, -0.740470, -0.012234,
		0.701886, -0.631519, -0.329454,
		35.959572, 33.171200, 43.810272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315689, 32.958302, 44.281597>,  <35.468250, 33.613266, 44.040890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315689, 32.958302, 44.281597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704102, 32.932171, 44.189651>,  <35.937149, 32.916492, 44.134483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704102, 32.932171, 44.189651>,  <35.315689, 32.958302, 44.281597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704102, 32.932171, 44.189651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185264, -0.401774, 0.896802,
		-0.150938, -0.913406, -0.378032,
		0.971028, -0.065326, -0.229864,
		35.995411, 32.912575, 44.120693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590866, 32.210583, 44.479836>,  <35.315689, 32.958302, 44.281597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590866, 32.210583, 44.479836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902256, 32.461411, 44.468864>,  <36.089092, 32.611908, 44.462280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902256, 32.461411, 44.468864>,  <35.590866, 32.210583, 44.479836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902256, 32.461411, 44.468864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221213, -0.233206, 0.946932,
		0.587400, -0.743231, -0.320263,
		0.778476, 0.627074, -0.027427,
		36.135799, 32.649532, 44.460636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242809, 31.812441, 44.582268>,  <35.590866, 32.210583, 44.479836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242809, 31.812441, 44.582268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306320, 32.192719, 44.688831>,  <36.344425, 32.420883, 44.752769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306320, 32.192719, 44.688831>,  <36.242809, 31.812441, 44.582268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306320, 32.192719, 44.688831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369505, -0.307442, 0.876895,
		0.915563, -0.040791, -0.400100,
		0.158777, 0.950692, 0.266411,
		36.353954, 32.477924, 44.768753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786251, 31.769766, 45.143181>,  <36.242809, 31.812441, 44.582268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786251, 31.769766, 45.143181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.675724, 32.152386, 45.180405>,  <36.609409, 32.381958, 45.202740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.675724, 32.152386, 45.180405>,  <36.786251, 31.769766, 45.143181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675724, 32.152386, 45.180405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167913, -0.047291, 0.984667,
		0.946286, 0.287702, -0.147550,
		-0.276313, 0.956552, 0.093060,
		36.592831, 32.439350, 45.208324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314190, 32.070320, 45.513393>,  <36.786251, 31.769766, 45.143181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314190, 32.070320, 45.513393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986916, 32.293453, 45.569088>,  <36.790550, 32.427334, 45.602505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986916, 32.293453, 45.569088>,  <37.314190, 32.070320, 45.513393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986916, 32.293453, 45.569088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147574, -0.030304, 0.988587,
		0.555686, 0.829400, -0.057528,
		-0.818190, 0.557833, 0.139237,
		36.741459, 32.460804, 45.610859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867065, 32.736858, 45.643826>,  <37.314190, 32.070320, 45.513393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867065, 32.736858, 45.643826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261040, 32.669804, 45.660824>,  <38.497425, 32.629570, 45.671024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261040, 32.669804, 45.660824>,  <37.867065, 32.736858, 45.643826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261040, 32.669804, 45.660824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084788, 0.253916, -0.963503,
		0.150729, 0.952588, 0.264304,
		0.984932, -0.167638, 0.042496,
		38.556519, 32.619511, 45.673573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254116, 33.324463, 45.293331>,  <37.867065, 32.736858, 45.643826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254116, 33.324463, 45.293331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524185, 33.029755, 45.307823>,  <38.686226, 32.852932, 45.316517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524185, 33.029755, 45.307823>,  <38.254116, 33.324463, 45.293331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524185, 33.029755, 45.307823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279305, 0.209880, -0.936984,
		0.682735, 0.642748, 0.347489,
		0.675175, -0.736767, 0.036230,
		38.726738, 32.808723, 45.318691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832146, 33.516113, 44.923714>,  <38.254116, 33.324463, 45.293331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832146, 33.516113, 44.923714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893368, 33.121040, 44.936691>,  <38.930099, 32.883995, 44.944477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893368, 33.121040, 44.936691>,  <38.832146, 33.516113, 44.923714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893368, 33.121040, 44.936691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292662, 0.013949, -0.956114,
		0.943888, 0.155829, 0.291193,
		0.153052, -0.987686, 0.032439,
		38.939281, 32.824734, 44.946423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573929, 33.436096, 44.646137>,  <38.832146, 33.516113, 44.923714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573929, 33.436096, 44.646137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.388973, 33.082211, 44.622551>,  <39.278000, 32.869877, 44.608398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.388973, 33.082211, 44.622551>,  <39.573929, 33.436096, 44.646137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388973, 33.082211, 44.622551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367217, -0.130544, -0.920929,
		0.807064, -0.447476, 0.385244,
		-0.462385, -0.884717, -0.058964,
		39.250259, 32.816795, 44.604862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081886, 32.956299, 44.599670>,  <39.573929, 33.436096, 44.646137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081886, 32.956299, 44.599670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765232, 32.790615, 44.420006>,  <39.575241, 32.691204, 44.312206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765232, 32.790615, 44.420006>,  <40.081886, 32.956299, 44.599670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765232, 32.790615, 44.420006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498933, -0.013896, -0.866529,
		0.352682, -0.910076, 0.217662,
		-0.791633, -0.414208, -0.449166,
		39.527740, 32.666351, 44.285255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363911, 32.374893, 44.176575>,  <40.081886, 32.956299, 44.599670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363911, 32.374893, 44.176575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001625, 32.451580, 44.025356>,  <39.784252, 32.497593, 43.934624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001625, 32.451580, 44.025356>,  <40.363911, 32.374893, 44.176575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001625, 32.451580, 44.025356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393271, 0.047285, -0.918206,
		-0.158160, -0.980311, -0.118223,
		-0.905717, 0.191717, -0.378049,
		39.729908, 32.509094, 43.911942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321224, 32.014893, 43.635456>,  <40.363911, 32.374893, 44.176575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321224, 32.014893, 43.635456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014744, 32.263584, 43.570469>,  <39.830856, 32.412800, 43.531479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014744, 32.263584, 43.570469>,  <40.321224, 32.014893, 43.635456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014744, 32.263584, 43.570469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192999, -0.018509, -0.981024,
		-0.612936, -0.783016, -0.105811,
		-0.766199, 0.621727, -0.162466,
		39.784885, 32.450104, 43.521729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825466, 31.747023, 43.069366>,  <40.321224, 32.014893, 43.635456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825466, 31.747023, 43.069366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782455, 32.144699, 43.071117>,  <39.756649, 32.383305, 43.072170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782455, 32.144699, 43.071117>,  <39.825466, 31.747023, 43.069366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782455, 32.144699, 43.071117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106586, 0.015907, -0.994176,
		-0.988473, -0.106432, -0.107678,
		-0.107525, 0.994193, 0.004380,
		39.750198, 32.442955, 43.072430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393108, 31.766027, 42.539253>,  <39.825466, 31.747023, 43.069366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393108, 31.766027, 42.539253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560162, 32.121399, 42.615437>,  <39.660393, 32.334621, 42.661144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560162, 32.121399, 42.615437>,  <39.393108, 31.766027, 42.539253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560162, 32.121399, 42.615437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068148, 0.178391, -0.981597,
		-0.906055, 0.422930, 0.013957,
		0.417636, 0.888430, 0.190454,
		39.685452, 32.387928, 42.672573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824818, 32.356724, 42.235134>,  <39.393108, 31.766027, 42.539253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824818, 32.356724, 42.235134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199612, 32.493965, 42.261459>,  <39.424488, 32.576309, 42.277252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199612, 32.493965, 42.261459>,  <38.824818, 32.356724, 42.235134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199612, 32.493965, 42.261459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042081, 0.297842, -0.953687,
		-0.346818, 0.890824, 0.293513,
		0.936988, 0.343107, 0.065810,
		39.480709, 32.596897, 42.281204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853119, 33.099934, 42.039043>,  <38.824818, 32.356724, 42.235134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853119, 33.099934, 42.039043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229607, 32.976219, 41.984715>,  <39.455498, 32.901989, 41.952118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229607, 32.976219, 41.984715>,  <38.853119, 33.099934, 42.039043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229607, 32.976219, 41.984715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022478, 0.458540, -0.888389,
		0.337050, 0.833115, 0.438539,
		0.941218, -0.309289, -0.135825,
		39.511971, 32.883434, 41.943966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042946, 33.527775, 41.633129>,  <38.853119, 33.099934, 42.039043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042946, 33.527775, 41.633129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336269, 33.261547, 41.577595>,  <39.512264, 33.101810, 41.544273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336269, 33.261547, 41.577595>,  <39.042946, 33.527775, 41.633129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336269, 33.261547, 41.577595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154837, 0.362318, -0.919103,
		0.662027, 0.652492, 0.368747,
		0.733311, -0.665567, -0.138835,
		39.556263, 33.061878, 41.535946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580444, 33.846828, 41.214451>,  <39.042946, 33.527775, 41.633129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580444, 33.846828, 41.214451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.649601, 33.455536, 41.168545>,  <39.691097, 33.220760, 41.140999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.649601, 33.455536, 41.168545>,  <39.580444, 33.846828, 41.214451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649601, 33.455536, 41.168545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201881, 0.149247, -0.967972,
		0.964029, 0.144189, 0.223290,
		0.172896, -0.978231, -0.114769,
		39.701469, 33.162067, 41.134113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079247, 33.917912, 40.785683>,  <39.580444, 33.846828, 41.214451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079247, 33.917912, 40.785683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939278, 33.544735, 40.751823>,  <39.855297, 33.320827, 40.731506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939278, 33.544735, 40.751823>,  <40.079247, 33.917912, 40.785683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939278, 33.544735, 40.751823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085606, 0.058137, -0.994632,
		0.932858, -0.355293, 0.059523,
		-0.349925, -0.932945, -0.084648,
		39.834301, 33.264851, 40.726429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.379084, 39.522652, 39.608158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493338, 39.461445, 39.229740>,  <30.561890, 39.424721, 39.002689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493338, 39.461445, 39.229740>,  <30.379084, 39.522652, 39.608158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493338, 39.461445, 39.229740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650032, -0.756303, -0.073929,
		-0.704182, 0.636074, -0.315495,
		0.285634, -0.153022, -0.946043,
		30.579027, 39.415539, 38.945927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749350, 39.411049, 39.203773>,  <30.379084, 39.522652, 39.608158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749350, 39.411049, 39.203773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020620, 39.258114, 38.952728>,  <30.183382, 39.166355, 38.802101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020620, 39.258114, 38.952728>,  <29.749350, 39.411049, 39.203773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020620, 39.258114, 38.952728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621243, -0.754490, -0.211666,
		-0.392600, 0.533447, -0.749199,
		0.678176, -0.382334, -0.627613,
		30.224073, 39.143414, 38.764442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375111, 39.302765, 38.593716>,  <29.749350, 39.411049, 39.203773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375111, 39.302765, 38.593716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697939, 39.073833, 38.535645>,  <29.891636, 38.936474, 38.500801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697939, 39.073833, 38.535645>,  <29.375111, 39.302765, 38.593716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697939, 39.073833, 38.535645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578396, -0.716881, -0.389281,
		0.118724, 0.398146, -0.909606,
		0.807070, -0.572330, -0.145175,
		29.940060, 38.902134, 38.492092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480894, 39.198212, 37.851570>,  <29.375111, 39.302765, 38.593716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480894, 39.198212, 37.851570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663141, 38.885521, 38.021893>,  <29.772490, 38.697906, 38.124084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663141, 38.885521, 38.021893>,  <29.480894, 39.198212, 37.851570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663141, 38.885521, 38.021893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422780, -0.610976, -0.669303,
		0.783372, 0.124922, -0.608870,
		0.455616, -0.781731, 0.425806,
		29.799826, 38.651001, 38.149635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681881, 38.777184, 37.288437>,  <29.480894, 39.198212, 37.851570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681881, 38.777184, 37.288437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690260, 38.525291, 37.599049>,  <29.695288, 38.374157, 37.785416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690260, 38.525291, 37.599049>,  <29.681881, 38.777184, 37.288437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690260, 38.525291, 37.599049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334904, -0.736247, -0.588031,
		0.942019, -0.247745, -0.226323,
		0.020948, -0.629733, 0.776529,
		29.696545, 38.336372, 37.832008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975786, 38.183346, 37.046589>,  <29.681881, 38.777184, 37.288437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975786, 38.183346, 37.046589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765306, 38.072151, 37.368046>,  <29.639019, 38.005436, 37.560921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765306, 38.072151, 37.368046>,  <29.975786, 38.183346, 37.046589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765306, 38.072151, 37.368046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334043, -0.801514, -0.495974,
		0.782003, -0.529432, 0.328897,
		-0.526199, -0.277987, 0.803640,
		29.607447, 37.988754, 37.609138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713392, 37.579544, 36.885025>,  <29.975786, 38.183346, 37.046589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713392, 37.579544, 36.885025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500267, 37.618332, 37.221287>,  <29.372391, 37.641605, 37.423046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500267, 37.618332, 37.221287>,  <29.713392, 37.579544, 36.885025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500267, 37.618332, 37.221287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564863, -0.780455, -0.267992,
		0.630110, -0.617647, 0.470609,
		-0.532814, 0.096965, 0.840659,
		29.340424, 37.647423, 37.473484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745384, 36.940163, 37.189934>,  <29.713392, 37.579544, 36.885025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745384, 36.940163, 37.189934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425953, 37.141430, 37.322056>,  <29.234295, 37.262188, 37.401329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425953, 37.141430, 37.322056>,  <29.745384, 36.940163, 37.189934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425953, 37.141430, 37.322056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596546, -0.734637, -0.323173,
		0.080042, -0.455119, 0.886826,
		-0.798577, 0.503165, 0.330302,
		29.186380, 37.292381, 37.421146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426470, 36.502544, 37.545151>,  <29.745384, 36.940163, 37.189934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426470, 36.502544, 37.545151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150530, 36.768002, 37.429436>,  <28.984966, 36.927277, 37.360004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150530, 36.768002, 37.429436>,  <29.426470, 36.502544, 37.545151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150530, 36.768002, 37.429436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634760, -0.746618, -0.199100,
		-0.348120, 0.046280, 0.936307,
		-0.689849, 0.663641, -0.289289,
		28.943575, 36.967094, 37.342648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752579, 36.355244, 37.907921>,  <29.426470, 36.502544, 37.545151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752579, 36.355244, 37.907921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625105, 36.562351, 37.590340>,  <28.548620, 36.686615, 37.399792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625105, 36.562351, 37.590340>,  <28.752579, 36.355244, 37.907921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625105, 36.562351, 37.590340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674176, -0.712607, -0.194109,
		-0.666277, 0.473402, 0.576164,
		-0.318687, 0.517767, -0.793950,
		28.529499, 36.717682, 37.352154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265966, 35.878887, 37.648800>,  <28.752579, 36.355244, 37.907921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265966, 35.878887, 37.648800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230814, 36.165726, 37.372234>,  <28.209723, 36.337830, 37.206295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230814, 36.165726, 37.372234>,  <28.265966, 35.878887, 37.648800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230814, 36.165726, 37.372234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749417, -0.504861, -0.428355,
		-0.656239, 0.480515, 0.581769,
		-0.087882, 0.717092, -0.691416,
		28.204449, 36.380852, 37.164810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586266, 36.170284, 37.623016>,  <28.265966, 35.878887, 37.648800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586266, 36.170284, 37.623016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770214, 36.208351, 37.269867>,  <27.880583, 36.231190, 37.057980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770214, 36.208351, 37.269867>,  <27.586266, 36.170284, 37.623016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770214, 36.208351, 37.269867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751037, -0.488780, -0.443889,
		-0.473773, 0.867201, -0.153304,
		0.459873, 0.095165, -0.882870,
		27.908176, 36.236900, 37.005005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029472, 36.008171, 37.110622>,  <27.586266, 36.170284, 37.623016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029472, 36.008171, 37.110622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.350018, 35.993980, 36.871773>,  <27.542345, 35.985466, 36.728462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.350018, 35.993980, 36.871773>,  <27.029472, 36.008171, 37.110622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350018, 35.993980, 36.871773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567905, -0.358660, -0.740842,
		-0.187878, 0.932794, -0.307567,
		0.801365, -0.035481, -0.597122,
		27.590427, 35.983337, 36.692635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827162, 36.203465, 36.498951>,  <27.029472, 36.008171, 37.110622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827162, 36.203465, 36.498951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159582, 35.995800, 36.419125>,  <27.359035, 35.871201, 36.371227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159582, 35.995800, 36.419125>,  <26.827162, 36.203465, 36.498951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159582, 35.995800, 36.419125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502642, -0.547413, -0.669096,
		0.238122, 0.656364, -0.715880,
		0.831053, -0.519158, -0.199565,
		27.408897, 35.840054, 36.359257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787600, 35.953682, 35.776054>,  <26.827162, 36.203465, 36.498951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787600, 35.953682, 35.776054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050200, 35.713745, 35.959007>,  <27.207760, 35.569782, 36.068779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050200, 35.713745, 35.959007>,  <26.787600, 35.953682, 35.776054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050200, 35.713745, 35.959007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370560, -0.784594, -0.497089,
		0.657035, 0.156850, -0.737362,
		0.656498, -0.599842, 0.457384,
		27.247149, 35.533791, 36.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185892, 35.568150, 35.190304>,  <26.787600, 35.953682, 35.776054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185892, 35.568150, 35.190304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.203388, 35.350044, 35.525154>,  <27.213886, 35.219181, 35.726063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.203388, 35.350044, 35.525154>,  <27.185892, 35.568150, 35.190304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203388, 35.350044, 35.525154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429563, -0.766778, -0.476998,
		0.901977, -0.338732, -0.267766,
		0.043743, -0.545263, 0.837123,
		27.216511, 35.186466, 35.776291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404890, 34.834087, 34.994240>,  <27.185892, 35.568150, 35.190304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404890, 34.834087, 34.994240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239449, 34.802448, 35.357044>,  <27.140184, 34.783463, 35.574726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239449, 34.802448, 35.357044>,  <27.404890, 34.834087, 34.994240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239449, 34.802448, 35.357044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447641, -0.849824, -0.278239,
		0.792811, -0.521098, 0.316081,
		-0.413603, -0.079100, 0.907014,
		27.115368, 34.778717, 35.629150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577454, 34.222649, 35.227940>,  <27.404890, 34.834087, 34.994240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577454, 34.222649, 35.227940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245451, 34.322502, 35.427448>,  <27.046249, 34.382412, 35.547153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245451, 34.322502, 35.427448>,  <27.577454, 34.222649, 35.227940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245451, 34.322502, 35.427448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405644, -0.883931, -0.232634,
		0.382810, -0.395412, 0.834929,
		-0.830006, 0.249630, 0.498774,
		26.996449, 34.397392, 35.577080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121355, 34.082554, 34.673687>,  <27.577454, 34.222649, 35.227940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121355, 34.082554, 34.673687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423702, 33.833477, 34.754601>,  <28.605110, 33.684032, 34.803150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423702, 33.833477, 34.754601>,  <28.121355, 34.082554, 34.673687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423702, 33.833477, 34.754601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605339, 0.782381, 0.146441,
		-0.249450, 0.011759, 0.968316,
		0.755870, -0.622689, 0.202283,
		28.650463, 33.646671, 34.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413721, 34.166973, 35.483696>,  <28.121355, 34.082554, 34.673687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413721, 34.166973, 35.483696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657724, 34.065857, 35.183300>,  <28.804127, 34.005188, 35.003063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657724, 34.065857, 35.183300>,  <28.413721, 34.166973, 35.483696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657724, 34.065857, 35.183300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562182, 0.805977, 0.185345,
		0.558426, -0.535255, 0.633769,
		0.610010, -0.252792, -0.750989,
		28.840727, 33.990021, 34.958004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971134, 34.520767, 35.727398>,  <28.413721, 34.166973, 35.483696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971134, 34.520767, 35.727398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060022, 34.423634, 35.349689>,  <29.113356, 34.365353, 35.123066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060022, 34.423634, 35.349689>,  <28.971134, 34.520767, 35.727398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060022, 34.423634, 35.349689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627786, 0.776649, -0.051984,
		0.745991, -0.581248, 0.325034,
		0.222222, -0.242832, -0.944272,
		29.126688, 34.350784, 35.066406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682312, 34.436783, 35.792244>,  <28.971134, 34.520767, 35.727398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682312, 34.436783, 35.792244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.602800, 34.473541, 35.401955>,  <29.555094, 34.495598, 35.167782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.602800, 34.473541, 35.401955>,  <29.682312, 34.436783, 35.792244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602800, 34.473541, 35.401955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749413, 0.655833, -0.090904,
		0.631559, -0.749292, -0.199237,
		-0.198780, 0.091900, -0.975726,
		29.543167, 34.501110, 35.109238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287643, 34.540260, 35.554436>,  <29.682312, 34.436783, 35.792244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287643, 34.540260, 35.554436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051695, 34.667290, 35.257465>,  <29.910126, 34.743507, 35.079281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051695, 34.667290, 35.257465>,  <30.287643, 34.540260, 35.554436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051695, 34.667290, 35.257465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700996, 0.657760, -0.275601,
		0.400817, -0.683009, -0.610610,
		-0.589873, 0.317570, -0.742428,
		29.874733, 34.762562, 35.034737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722666, 34.494934, 35.014496>,  <30.287643, 34.540260, 35.554436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722666, 34.494934, 35.014496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431070, 34.748867, 34.912075>,  <30.256113, 34.901226, 34.850624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431070, 34.748867, 34.912075>,  <30.722666, 34.494934, 35.014496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431070, 34.748867, 34.912075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683597, 0.694619, -0.224053,
		0.035621, -0.338368, -0.940340,
		-0.728990, 0.634832, -0.256050,
		30.212374, 34.939316, 34.835258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844933, 34.762764, 34.361610>,  <30.722666, 34.494934, 35.014496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844933, 34.762764, 34.361610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605202, 35.035526, 34.529331>,  <30.461363, 35.199184, 34.629963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605202, 35.035526, 34.529331>,  <30.844933, 34.762764, 34.361610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605202, 35.035526, 34.529331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679473, 0.710277, -0.183911,
		-0.423231, 0.174683, -0.889022,
		-0.599326, 0.681904, 0.419304,
		30.425404, 35.240097, 34.655121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749134, 35.242950, 33.853931>,  <30.844933, 34.762764, 34.361610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749134, 35.242950, 33.853931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665121, 35.435711, 34.194202>,  <30.614714, 35.551369, 34.398365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665121, 35.435711, 34.194202>,  <30.749134, 35.242950, 33.853931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665121, 35.435711, 34.194202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687014, 0.691811, -0.222283,
		-0.695628, 0.537741, -0.476378,
		-0.210033, 0.481905, 0.850679,
		30.602112, 35.580284, 34.449406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883421, 36.015553, 33.719597>,  <30.749134, 35.242950, 33.853931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883421, 36.015553, 33.719597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.835522, 36.006802, 34.116623>,  <30.806782, 36.001553, 34.354839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.835522, 36.006802, 34.116623>,  <30.883421, 36.015553, 33.719597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835522, 36.006802, 34.116623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767651, 0.631950, 0.106538,
		-0.629581, 0.774700, -0.058883,
		-0.119746, -0.021873, 0.992564,
		30.799599, 36.000240, 34.414391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762564, 36.750511, 33.999565>,  <30.883421, 36.015553, 33.719597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762564, 36.750511, 33.999565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.902826, 36.516991, 34.292473>,  <30.986984, 36.376877, 34.468216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.902826, 36.516991, 34.292473>,  <30.762564, 36.750511, 33.999565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902826, 36.516991, 34.292473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679696, 0.696551, 0.229846,
		-0.644245, 0.417121, 0.641060,
		0.350658, -0.583804, 0.732265,
		31.008024, 36.341850, 34.512154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947130, 37.190800, 34.471958>,  <30.762564, 36.750511, 33.999565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947130, 37.190800, 34.471958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163357, 36.880638, 34.602520>,  <31.293093, 36.694542, 34.680855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163357, 36.880638, 34.602520>,  <30.947130, 37.190800, 34.471958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163357, 36.880638, 34.602520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656675, 0.631409, 0.412433,
		-0.525894, -0.008608, 0.850506,
		0.540567, -0.775403, 0.326402,
		31.325527, 36.648018, 34.700439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009584, 37.301289, 35.152840>,  <30.947130, 37.190800, 34.471958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009584, 37.301289, 35.152840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.319391, 37.069687, 35.050957>,  <31.505276, 36.930725, 34.989826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.319391, 37.069687, 35.050957>,  <31.009584, 37.301289, 35.152840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319391, 37.069687, 35.050957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623416, 0.630506, 0.462401,
		-0.107138, -0.516927, 0.849299,
		0.774515, -0.579007, -0.254710,
		31.551746, 36.895985, 34.974545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339664, 37.064728, 35.843781>,  <31.009584, 37.301289, 35.152840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339664, 37.064728, 35.843781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.593363, 37.083118, 35.535076>,  <31.745583, 37.094154, 35.349854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.593363, 37.083118, 35.535076>,  <31.339664, 37.064728, 35.843781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593363, 37.083118, 35.535076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549017, 0.676047, 0.491468,
		0.544345, -0.735422, 0.403538,
		0.634247, 0.045979, -0.771762,
		31.783636, 37.096912, 35.303547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907551, 37.216446, 36.182014>,  <31.339664, 37.064728, 35.843781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907551, 37.216446, 36.182014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015060, 37.292992, 35.804413>,  <32.079567, 37.338917, 35.577850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015060, 37.292992, 35.804413>,  <31.907551, 37.216446, 36.182014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015060, 37.292992, 35.804413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572773, 0.756203, 0.316368,
		0.774399, -0.625731, 0.093639,
		0.268771, 0.191362, -0.944004,
		32.095692, 37.350399, 35.521214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630001, 37.449360, 36.269485>,  <31.907551, 37.216446, 36.182014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630001, 37.449360, 36.269485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.538769, 37.591099, 35.906738>,  <32.484028, 37.676144, 35.689091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.538769, 37.591099, 35.906738>,  <32.630001, 37.449360, 36.269485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538769, 37.591099, 35.906738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351890, 0.898462, 0.262561,
		0.907828, -0.259233, -0.329616,
		-0.228083, 0.354349, -0.906871,
		32.470345, 37.697403, 35.634678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292931, 37.637001, 35.998848>,  <32.630001, 37.449360, 36.269485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292931, 37.637001, 35.998848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024906, 37.857357, 35.799835>,  <32.864090, 37.989571, 35.680428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.024906, 37.857357, 35.799835>,  <33.292931, 37.637001, 35.998848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024906, 37.857357, 35.799835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471640, 0.833530, 0.287720,
		0.573210, -0.041867, -0.818338,
		-0.670064, 0.550885, -0.497534,
		32.823887, 38.022621, 35.650574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688656, 38.255127, 35.654537>,  <33.292931, 37.637001, 35.998848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688656, 38.255127, 35.654537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.297062, 38.333626, 35.676727>,  <33.062107, 38.380726, 35.690041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.297062, 38.333626, 35.676727>,  <33.688656, 38.255127, 35.654537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297062, 38.333626, 35.676727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203214, 0.915784, 0.346473,
		0.017194, 0.350464, -0.936418,
		-0.978983, 0.196251, 0.055474,
		33.003368, 38.392502, 35.693371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695889, 38.937725, 35.358925>,  <33.688656, 38.255127, 35.654537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695889, 38.937725, 35.358925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.354996, 38.870708, 35.557171>,  <33.150459, 38.830498, 35.676121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.354996, 38.870708, 35.557171>,  <33.695889, 38.937725, 35.358925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354996, 38.870708, 35.557171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058250, 0.911057, 0.408144,
		-0.519918, 0.376702, -0.766669,
		-0.852228, -0.167543, 0.495619,
		33.099327, 38.820446, 35.705856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339718, 39.570419, 35.300785>,  <33.695889, 38.937725, 35.358925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339718, 39.570419, 35.300785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.218437, 39.372028, 35.626259>,  <33.145668, 39.252995, 35.821541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.218437, 39.372028, 35.626259>,  <33.339718, 39.570419, 35.300785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218437, 39.372028, 35.626259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033920, 0.858952, 0.510932,
		-0.952322, 0.127316, -0.277261,
		-0.303204, -0.495976, 0.813680,
		33.127476, 39.223236, 35.870361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931087, 40.062336, 35.551834>,  <33.339718, 39.570419, 35.300785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931087, 40.062336, 35.551834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.971233, 39.815315, 35.863873>,  <32.995323, 39.667103, 36.051098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.971233, 39.815315, 35.863873>,  <32.931087, 40.062336, 35.551834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971233, 39.815315, 35.863873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004818, 0.784350, 0.620300,
		-0.994939, -0.058500, 0.081699,
		0.100369, -0.617554, 0.780099,
		33.001343, 39.630051, 36.097900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423187, 40.236065, 35.972309>,  <32.931087, 40.062336, 35.551834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423187, 40.236065, 35.972309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.673260, 40.036785, 36.212624>,  <32.823303, 39.917217, 36.356812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.673260, 40.036785, 36.212624>,  <32.423187, 40.236065, 35.972309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673260, 40.036785, 36.212624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071307, 0.730087, 0.679624,
		-0.777213, -0.467731, 0.420913,
		0.625184, -0.498198, 0.600785,
		32.860813, 39.887325, 36.392860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127518, 40.266956, 36.621105>,  <32.423187, 40.236065, 35.972309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127518, 40.266956, 36.621105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501698, 40.170269, 36.724266>,  <32.726204, 40.112255, 36.786163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501698, 40.170269, 36.724266>,  <32.127518, 40.266956, 36.621105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501698, 40.170269, 36.724266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005759, 0.719102, 0.694881,
		-0.353424, -0.651508, 0.671289,
		0.935446, -0.241721, 0.257900,
		32.782330, 40.097752, 36.801636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124191, 40.162296, 37.388336>,  <32.127518, 40.266956, 36.621105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124191, 40.162296, 37.388336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.496250, 40.236187, 37.261402>,  <32.719486, 40.280521, 37.185242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.496250, 40.236187, 37.261402>,  <32.124191, 40.162296, 37.388336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496250, 40.236187, 37.261402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040969, 0.806621, 0.589647,
		0.364892, -0.561460, 0.742709,
		0.930148, 0.184730, -0.317332,
		32.775295, 40.291607, 37.166203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602413, 40.284206, 37.961155>,  <32.124191, 40.162296, 37.388336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602413, 40.284206, 37.961155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753315, 40.473339, 37.642632>,  <32.843857, 40.586819, 37.451519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753315, 40.473339, 37.642632>,  <32.602413, 40.284206, 37.961155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753315, 40.473339, 37.642632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272139, 0.765280, 0.583342,
		0.885221, -0.436777, 0.160032,
		0.377259, 0.472835, -0.796306,
		32.866493, 40.615189, 37.403740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.206329, 30.936592, 44.348614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.934692, 30.750244, 44.575520>,  <40.771709, 30.638435, 44.711662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.934692, 30.750244, 44.575520>,  <41.206329, 30.936592, 44.348614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934692, 30.750244, 44.575520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524227, 0.233148, 0.819041,
		-0.513825, 0.853584, 0.085892,
		-0.679095, -0.465871, 0.567269,
		40.730965, 30.610483, 44.745701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129341, 31.394505, 44.896229>,  <41.206329, 30.936592, 44.348614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129341, 31.394505, 44.896229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.992542, 31.041185, 45.024494>,  <40.910461, 30.829195, 45.101456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.992542, 31.041185, 45.024494>,  <41.129341, 31.394505, 44.896229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992542, 31.041185, 45.024494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391016, 0.176531, 0.903296,
		-0.854485, 0.434310, 0.285010,
		-0.341998, -0.883296, 0.320665,
		40.889942, 30.776197, 45.120693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207912, 31.435446, 45.646103>,  <41.129341, 31.394505, 44.896229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207912, 31.435446, 45.646103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.074684, 31.058928, 45.624096>,  <40.994747, 30.833017, 45.610893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.074684, 31.058928, 45.624096>,  <41.207912, 31.435446, 45.646103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074684, 31.058928, 45.624096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124404, -0.101708, 0.987005,
		-0.934659, 0.321899, 0.150977,
		-0.333072, -0.941295, -0.055017,
		40.974762, 30.776539, 45.607590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622620, 31.255529, 46.126102>,  <41.207912, 31.435446, 45.646103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622620, 31.255529, 46.126102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784126, 30.899410, 46.041870>,  <40.881031, 30.685740, 45.991329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784126, 30.899410, 46.041870>,  <40.622620, 31.255529, 46.126102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784126, 30.899410, 46.041870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235207, -0.121426, 0.964330,
		-0.884112, -0.438891, 0.160377,
		0.403762, -0.890298, -0.210584,
		40.905254, 30.632320, 45.978695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207790, 30.685036, 46.413982>,  <40.622620, 31.255529, 46.126102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207790, 30.685036, 46.413982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.562313, 30.503378, 46.377720>,  <40.775024, 30.394382, 46.355961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.562313, 30.503378, 46.377720>,  <40.207790, 30.685036, 46.413982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562313, 30.503378, 46.377720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051099, -0.098656, 0.993809,
		-0.460276, -0.885449, -0.064233,
		0.886304, -0.454144, -0.090655,
		40.828205, 30.367134, 46.350525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194710, 30.118191, 46.864262>,  <40.207790, 30.685036, 46.413982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194710, 30.118191, 46.864262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.586468, 30.176888, 46.808769>,  <40.821522, 30.212105, 46.775475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.586468, 30.176888, 46.808769>,  <40.194710, 30.118191, 46.864262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586468, 30.176888, 46.808769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150139, -0.069680, 0.986206,
		0.135052, -0.986717, -0.090276,
		0.979397, 0.146743, -0.138734,
		40.880287, 30.220911, 46.767147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598358, 29.535332, 47.289368>,  <40.194710, 30.118191, 46.864262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598358, 29.535332, 47.289368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866367, 29.826124, 47.229275>,  <41.027172, 30.000599, 47.193218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866367, 29.826124, 47.229275>,  <40.598358, 29.535332, 47.289368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866367, 29.826124, 47.229275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136000, 0.078739, 0.987575,
		0.729778, -0.682127, -0.046112,
		0.670021, 0.726982, -0.150232,
		41.067375, 30.044218, 47.184204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209343, 29.292442, 47.647038>,  <40.598358, 29.535332, 47.289368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209343, 29.292442, 47.647038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.221935, 29.690947, 47.614861>,  <41.229492, 29.930050, 47.595554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.221935, 29.690947, 47.614861>,  <41.209343, 29.292442, 47.647038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221935, 29.690947, 47.614861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270028, 0.069015, 0.960376,
		0.962337, -0.051958, -0.266846,
		0.031483, 0.996262, -0.080446,
		41.231380, 29.989824, 47.590725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821594, 29.406960, 48.032448>,  <41.209343, 29.292442, 47.647038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821594, 29.406960, 48.032448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609035, 29.743378, 47.991928>,  <41.481503, 29.945229, 47.967617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609035, 29.743378, 47.991928>,  <41.821594, 29.406960, 48.032448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609035, 29.743378, 47.991928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059229, 0.156178, 0.985952,
		0.845052, 0.517928, -0.132806,
		-0.531393, 0.841047, -0.101302,
		41.449619, 29.995691, 47.961536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233360, 29.895220, 48.511322>,  <41.821594, 29.406960, 48.032448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233360, 29.895220, 48.511322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.883705, 30.069588, 48.425671>,  <41.673912, 30.174208, 48.374279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.883705, 30.069588, 48.425671>,  <42.233360, 29.895220, 48.511322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883705, 30.069588, 48.425671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051551, 0.355123, 0.933397,
		0.482926, 0.826960, -0.287956,
		-0.874142, 0.435918, -0.214129,
		41.621464, 30.200363, 48.361431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261482, 30.496534, 48.836021>,  <42.233360, 29.895220, 48.511322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261482, 30.496534, 48.836021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.874077, 30.431633, 48.760490>,  <41.641632, 30.392693, 48.715172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.874077, 30.431633, 48.760490>,  <42.261482, 30.496534, 48.836021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874077, 30.431633, 48.760490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202937, 0.075137, 0.976305,
		-0.144221, 0.983884, -0.105698,
		-0.968513, -0.162253, -0.188831,
		41.583523, 30.382957, 48.703842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908089, 31.047853, 48.977146>,  <42.261482, 30.496534, 48.836021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908089, 31.047853, 48.977146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.603371, 30.789917, 49.001965>,  <41.420540, 30.635155, 49.016857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.603371, 30.789917, 49.001965>,  <41.908089, 31.047853, 48.977146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603371, 30.789917, 49.001965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044825, 0.148017, 0.987969,
		-0.646267, 0.749847, -0.141663,
		-0.761794, -0.644841, 0.062047,
		41.374832, 30.596464, 49.020580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563385, 31.233543, 49.549160>,  <41.908089, 31.047853, 48.977146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563385, 31.233543, 49.549160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.406155, 30.866587, 49.524227>,  <41.311817, 30.646414, 49.509270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.406155, 30.866587, 49.524227>,  <41.563385, 31.233543, 49.549160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406155, 30.866587, 49.524227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080916, -0.033011, 0.996174,
		-0.915938, 0.396618, -0.061256,
		-0.393079, -0.917390, -0.062329,
		41.288231, 30.591370, 49.505527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397888, 31.249479, 50.166439>,  <41.563385, 31.233543, 49.549160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397888, 31.249479, 50.166439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364182, 30.860111, 50.081257>,  <41.343956, 30.626490, 50.030148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364182, 30.860111, 50.081257>,  <41.397888, 31.249479, 50.166439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364182, 30.860111, 50.081257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019599, -0.212054, 0.977061,
		-0.996251, 0.086506, -0.001209,
		-0.084266, -0.973422, -0.212955,
		41.338902, 30.568085, 50.017372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573547, 31.400606, 50.292358>,  <41.397888, 31.249479, 50.166439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573547, 31.400606, 50.292358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.272442, 31.543573, 50.513485>,  <40.091778, 31.629354, 50.646160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.272442, 31.543573, 50.513485>,  <40.573547, 31.400606, 50.292358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272442, 31.543573, 50.513485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545838, 0.130534, -0.827660,
		-0.367981, -0.924778, 0.096831,
		-0.752762, 0.357417, 0.552813,
		40.046612, 31.650799, 50.679329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879440, 31.187521, 50.034119>,  <40.573547, 31.400606, 50.292358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879440, 31.187521, 50.034119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.772247, 31.505888, 50.251263>,  <39.707932, 31.696909, 50.381550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.772247, 31.505888, 50.251263>,  <39.879440, 31.187521, 50.034119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772247, 31.505888, 50.251263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584977, 0.313289, -0.748099,
		-0.765499, -0.518036, 0.381640,
		-0.267979, 0.795920, 0.542862,
		39.691853, 31.744663, 50.414120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079941, 31.319717, 49.966621>,  <39.879440, 31.187521, 50.034119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079941, 31.319717, 49.966621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248478, 31.663921, 50.081154>,  <39.349602, 31.870443, 50.149872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248478, 31.663921, 50.081154>,  <39.079941, 31.319717, 49.966621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248478, 31.663921, 50.081154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409650, 0.462269, -0.786444,
		-0.809106, 0.214070, 0.547285,
		0.421347, 0.860512, 0.286331,
		39.374882, 31.922075, 50.167053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497490, 31.805479, 50.135960>,  <39.079941, 31.319717, 49.966621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497490, 31.805479, 50.135960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831284, 32.006042, 50.044552>,  <39.031559, 32.126381, 49.989708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831284, 32.006042, 50.044552>,  <38.497490, 31.805479, 50.135960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831284, 32.006042, 50.044552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475713, 0.446264, -0.757988,
		-0.278081, 0.741241, 0.610928,
		0.834487, 0.501408, -0.228520,
		39.081631, 32.156464, 49.975994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267929, 32.417591, 49.886112>,  <38.497490, 31.805479, 50.135960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267929, 32.417591, 49.886112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.653305, 32.456722, 49.786343>,  <38.884529, 32.480202, 49.726482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.653305, 32.456722, 49.786343>,  <38.267929, 32.417591, 49.886112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653305, 32.456722, 49.786343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264480, 0.495991, -0.827069,
		0.042804, 0.862800, 0.503731,
		0.963441, 0.097825, -0.249423,
		38.942337, 32.486069, 49.711517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483734, 33.138748, 49.684444>,  <38.267929, 32.417591, 49.886112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483734, 33.138748, 49.684444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.740528, 32.885815, 49.511005>,  <38.894604, 32.734055, 49.406940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.740528, 32.885815, 49.511005>,  <38.483734, 33.138748, 49.684444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740528, 32.885815, 49.511005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195575, 0.411764, -0.890057,
		0.741354, 0.656205, 0.140678,
		0.641985, -0.632334, -0.433600,
		38.933125, 32.696114, 49.380924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774746, 33.569054, 49.158951>,  <38.483734, 33.138748, 49.684444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774746, 33.569054, 49.158951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.859283, 33.190212, 49.062344>,  <38.910007, 32.962906, 49.004379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.859283, 33.190212, 49.062344>,  <38.774746, 33.569054, 49.158951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859283, 33.190212, 49.062344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083122, 0.228785, -0.969922,
		0.973871, 0.225062, -0.030373,
		0.211344, -0.947103, -0.241515,
		38.922688, 32.906082, 48.989887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331673, 33.555420, 48.621861>,  <38.774746, 33.569054, 49.158951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331673, 33.555420, 48.621861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.177948, 33.191299, 48.560326>,  <39.085712, 32.972828, 48.523407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.177948, 33.191299, 48.560326>,  <39.331673, 33.555420, 48.621861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177948, 33.191299, 48.560326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152481, 0.101753, -0.983054,
		0.910524, -0.401256, 0.099698,
		-0.384312, -0.910297, -0.153833,
		39.062656, 32.918209, 48.514175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765774, 33.277832, 48.050423>,  <39.331673, 33.555420, 48.621861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765774, 33.277832, 48.050423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443592, 33.041340, 48.066860>,  <39.250282, 32.899445, 48.076721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443592, 33.041340, 48.066860>,  <39.765774, 33.277832, 48.050423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443592, 33.041340, 48.066860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004706, -0.075715, -0.997118,
		0.592640, -0.802939, 0.063768,
		-0.805453, -0.591233, 0.041093,
		39.201958, 32.863972, 48.079189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878948, 32.527531, 47.654369>,  <39.765774, 33.277832, 48.050423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878948, 32.527531, 47.654369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486790, 32.595078, 47.695000>,  <39.251495, 32.635605, 47.719376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486790, 32.595078, 47.695000>,  <39.878948, 32.527531, 47.654369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486790, 32.595078, 47.695000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137953, -0.220073, -0.965680,
		-0.140714, -0.960757, 0.239053,
		-0.980392, 0.168863, 0.101572,
		39.192673, 32.645737, 47.725471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574738, 31.998352, 47.281639>,  <39.878948, 32.527531, 47.654369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574738, 31.998352, 47.281639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.306267, 32.293686, 47.308125>,  <39.145184, 32.470886, 47.324017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.306267, 32.293686, 47.308125>,  <39.574738, 31.998352, 47.281639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306267, 32.293686, 47.308125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179323, -0.075039, -0.980924,
		-0.719284, -0.670244, 0.182766,
		-0.671173, 0.738337, 0.066216,
		39.104916, 32.515186, 47.327988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018452, 31.731285, 46.942196>,  <39.574738, 31.998352, 47.281639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018452, 31.731285, 46.942196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.929672, 32.121254, 46.948700>,  <38.876404, 32.355236, 46.952602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.929672, 32.121254, 46.948700>,  <39.018452, 31.731285, 46.942196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929672, 32.121254, 46.948700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152698, -0.018280, -0.988104,
		-0.963027, -0.221791, 0.152926,
		-0.221948, 0.974923, 0.016263,
		38.863087, 32.413731, 46.953579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380428, 31.820995, 46.620880>,  <39.018452, 31.731285, 46.942196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380428, 31.820995, 46.620880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578865, 32.165539, 46.577145>,  <38.697929, 32.372265, 46.550903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578865, 32.165539, 46.577145>,  <38.380428, 31.820995, 46.620880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578865, 32.165539, 46.577145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187182, -0.016873, -0.982180,
		-0.847852, 0.507721, 0.152860,
		0.496094, 0.861356, -0.109342,
		38.727692, 32.423946, 46.544342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032093, 31.980503, 46.108818>,  <38.380428, 31.820995, 46.620880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032093, 31.980503, 46.108818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349430, 32.223972, 46.104347>,  <38.539833, 32.370056, 46.101665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349430, 32.223972, 46.104347>,  <38.032093, 31.980503, 46.108818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349430, 32.223972, 46.104347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030995, -0.058724, -0.997793,
		-0.607988, 0.791243, -0.065454,
		0.793341, 0.608675, -0.011179,
		38.587433, 32.406574, 46.100994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399479, 32.452541, 46.169716>,  <38.032093, 31.980503, 46.108818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399479, 32.452541, 46.169716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013802, 32.537357, 46.105995>,  <36.782394, 32.588249, 46.067764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013802, 32.537357, 46.105995>,  <37.399479, 32.452541, 46.169716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013802, 32.537357, 46.105995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167110, -0.019325, 0.985749,
		0.205943, 0.977069, 0.054068,
		-0.964190, 0.212044, -0.159298,
		36.724545, 32.600971, 46.058205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191780, 33.083172, 46.529045>,  <37.399479, 32.452541, 46.169716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191780, 33.083172, 46.529045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861351, 32.860245, 46.495575>,  <36.663094, 32.726486, 46.475494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861351, 32.860245, 46.495575>,  <37.191780, 33.083172, 46.529045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861351, 32.860245, 46.495575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088021, -0.019059, 0.995936,
		-0.556652, 0.830078, -0.033311,
		-0.826070, -0.557322, -0.083673,
		36.613529, 32.693047, 46.470474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707886, 33.408440, 46.897045>,  <37.191780, 33.083172, 46.529045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707886, 33.408440, 46.897045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538631, 33.046387, 46.880604>,  <36.437077, 32.829155, 46.870739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538631, 33.046387, 46.880604>,  <36.707886, 33.408440, 46.897045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538631, 33.046387, 46.880604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289639, 0.092138, 0.952691,
		-0.858523, 0.415027, -0.301149,
		-0.423140, -0.905131, -0.041105,
		36.411690, 32.774849, 46.868271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002380, 33.461132, 47.180077>,  <36.707886, 33.408440, 46.897045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002380, 33.461132, 47.180077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087193, 33.070660, 47.198425>,  <36.138081, 32.836376, 47.209435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087193, 33.070660, 47.198425>,  <36.002380, 33.461132, 47.180077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087193, 33.070660, 47.198425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196968, 0.003290, 0.980404,
		-0.957207, -0.216916, -0.191579,
		0.212035, -0.976185, 0.045875,
		36.150803, 32.777805, 47.212189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432922, 33.164787, 47.629223>,  <36.002380, 33.461132, 47.180077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432922, 33.164787, 47.629223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707863, 32.876541, 47.592842>,  <35.872826, 32.703594, 47.571014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707863, 32.876541, 47.592842>,  <35.432922, 33.164787, 47.629223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707863, 32.876541, 47.592842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225350, -0.330616, 0.916466,
		-0.690488, -0.609434, -0.389638,
		0.687346, -0.720613, -0.090950,
		35.914066, 32.660358, 47.565556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153404, 32.435467, 47.827030>,  <35.432922, 33.164787, 47.629223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153404, 32.435467, 47.827030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548687, 32.443539, 47.887737>,  <35.785858, 32.448380, 47.924160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548687, 32.443539, 47.887737>,  <35.153404, 32.435467, 47.827030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548687, 32.443539, 47.887737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129906, -0.414055, 0.900934,
		0.081017, -0.910028, -0.406553,
		0.988211, 0.020178, 0.151764,
		35.845150, 32.449593, 47.933266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313000, 31.751524, 48.093624>,  <35.153404, 32.435467, 47.827030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313000, 31.751524, 48.093624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.597908, 32.014503, 48.191952>,  <35.768852, 32.172291, 48.250950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.597908, 32.014503, 48.191952>,  <35.313000, 31.751524, 48.093624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597908, 32.014503, 48.191952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082643, -0.269232, 0.959523,
		0.697018, -0.703760, -0.137434,
		0.712275, 0.657447, 0.245821,
		35.811592, 32.211739, 48.265697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449100, 30.994766, 48.174194>,  <35.313000, 31.751524, 48.093624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449100, 30.994766, 48.174194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144882, 30.740997, 48.229443>,  <34.962353, 30.588736, 48.262592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144882, 30.740997, 48.229443>,  <35.449100, 30.994766, 48.174194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144882, 30.740997, 48.229443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159325, -0.023870, -0.986938,
		0.629432, -0.772618, -0.082925,
		-0.760546, -0.634423, 0.138121,
		34.916718, 30.550671, 48.270878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487259, 30.528936, 47.581474>,  <35.449100, 30.994766, 48.174194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487259, 30.528936, 47.581474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119873, 30.501833, 47.737335>,  <34.899441, 30.485571, 47.830853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119873, 30.501833, 47.737335>,  <35.487259, 30.528936, 47.581474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119873, 30.501833, 47.737335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354567, -0.295398, -0.887143,
		0.175213, -0.952968, 0.247288,
		-0.918468, -0.067758, 0.389648,
		34.844334, 30.481506, 47.854229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176159, 29.879946, 47.433922>,  <35.487259, 30.528936, 47.581474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176159, 29.879946, 47.433922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867317, 30.126884, 47.494240>,  <34.682011, 30.275047, 47.530430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867317, 30.126884, 47.494240>,  <35.176159, 29.879946, 47.433922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867317, 30.126884, 47.494240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309351, -0.157843, -0.937757,
		-0.555119, -0.770694, 0.312848,
		-0.772104, 0.617346, 0.150793,
		34.635685, 30.312088, 47.539478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729881, 29.690237, 46.859169>,  <35.176159, 29.879946, 47.433922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729881, 29.690237, 46.859169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542110, 30.014053, 47.000187>,  <34.429447, 30.208344, 47.084797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542110, 30.014053, 47.000187>,  <34.729881, 29.690237, 46.859169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542110, 30.014053, 47.000187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349190, 0.196514, -0.916214,
		-0.810992, -0.553198, 0.190435,
		-0.469424, 0.809540, 0.352542,
		34.401283, 30.256916, 47.105949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031006, 29.637575, 46.794006>,  <34.729881, 29.690237, 46.859169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031006, 29.637575, 46.794006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095356, 30.030210, 46.835194>,  <34.133968, 30.265791, 46.859905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095356, 30.030210, 46.835194>,  <34.031006, 29.637575, 46.794006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095356, 30.030210, 46.835194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500410, 0.171043, -0.848725,
		-0.850711, 0.085016, 0.518713,
		0.160877, 0.981589, 0.102965,
		34.143620, 30.324688, 46.866081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328510, 29.931244, 46.606102>,  <34.031006, 29.637575, 46.794006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328510, 29.931244, 46.606102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593971, 30.219210, 46.524822>,  <33.753246, 30.391989, 46.476055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593971, 30.219210, 46.524822>,  <33.328510, 29.931244, 46.606102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593971, 30.219210, 46.524822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409698, 0.122536, -0.903954,
		-0.625868, 0.683163, 0.376268,
		0.663654, 0.719912, -0.203199,
		33.793068, 30.435183, 46.463863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934952, 30.524830, 46.196056>,  <33.328510, 29.931244, 46.606102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934952, 30.524830, 46.196056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328053, 30.513559, 46.122940>,  <33.563911, 30.506798, 46.079071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328053, 30.513559, 46.122940>,  <32.934952, 30.524830, 46.196056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328053, 30.513559, 46.122940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174919, 0.179531, -0.968076,
		0.060095, 0.983348, 0.171505,
		0.982747, -0.028177, -0.182795,
		33.622875, 30.505106, 46.068100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.726406, 28.429085, 49.524101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.089500, 28.572386, 49.436760>,  <39.307358, 28.658365, 49.384354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.089500, 28.572386, 49.436760>,  <38.726406, 28.429085, 49.524101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089500, 28.572386, 49.436760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286430, 0.148881, -0.946463,
		-0.306562, 0.921678, 0.237758,
		0.907732, 0.358251, -0.218355,
		39.361820, 28.679861, 49.371254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643490, 29.073946, 49.190422>,  <38.726406, 28.429085, 49.524101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643490, 29.073946, 49.190422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.005863, 28.943886, 49.081928>,  <39.223286, 28.865850, 49.016830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.005863, 28.943886, 49.081928>,  <38.643490, 29.073946, 49.190422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005863, 28.943886, 49.081928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266089, 0.061116, -0.962009,
		0.329372, 0.943686, -0.031151,
		0.905931, -0.325148, -0.271234,
		39.277641, 28.846342, 49.000557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664089, 29.450960, 48.655830>,  <38.643490, 29.073946, 49.190422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664089, 29.450960, 48.655830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.947182, 29.176754, 48.587498>,  <39.117039, 29.012230, 48.546497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.947182, 29.176754, 48.587498>,  <38.664089, 29.450960, 48.655830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947182, 29.176754, 48.587498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230890, 0.004089, -0.972971,
		0.667686, 0.728046, -0.155385,
		0.707732, -0.685516, -0.170828,
		39.159500, 28.971100, 48.536251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081512, 29.715435, 48.124889>,  <38.664089, 29.450960, 48.655830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081512, 29.715435, 48.124889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.147907, 29.321230, 48.110985>,  <39.187744, 29.084707, 48.102642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.147907, 29.321230, 48.110985>,  <39.081512, 29.715435, 48.124889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147907, 29.321230, 48.110985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273799, -0.012196, -0.961710,
		0.947355, 0.169153, -0.271857,
		0.165992, -0.985514, -0.034760,
		39.197704, 29.025576, 48.100555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451237, 29.652805, 47.600258>,  <39.081512, 29.715435, 48.124889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451237, 29.652805, 47.600258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.314018, 29.281940, 47.660511>,  <39.231689, 29.059422, 47.696663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.314018, 29.281940, 47.660511>,  <39.451237, 29.652805, 47.600258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314018, 29.281940, 47.660511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178805, -0.092972, -0.979482,
		0.922144, -0.362938, -0.133888,
		-0.343043, -0.927163, 0.150629,
		39.211105, 29.003792, 47.705700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733341, 29.109932, 47.114365>,  <39.451237, 29.652805, 47.600258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733341, 29.109932, 47.114365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.378998, 28.963671, 47.228592>,  <39.166389, 28.875914, 47.297131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.378998, 28.963671, 47.228592>,  <39.733341, 29.109932, 47.114365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378998, 28.963671, 47.228592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169614, -0.317672, -0.932907,
		0.431837, -0.874862, 0.219394,
		-0.885860, -0.365651, 0.285572,
		39.113239, 28.853975, 47.314262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676178, 28.530348, 46.657024>,  <39.733341, 29.109932, 47.114365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676178, 28.530348, 46.657024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.297359, 28.569948, 46.779202>,  <39.070068, 28.593708, 46.852509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.297359, 28.569948, 46.779202>,  <39.676178, 28.530348, 46.657024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297359, 28.569948, 46.779202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300241, -0.610212, -0.733141,
		0.113801, -0.786028, 0.607626,
		-0.947051, 0.099002, 0.305440,
		39.013245, 28.599649, 46.870834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385551, 27.856964, 46.531120>,  <39.676178, 28.530348, 46.657024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385551, 27.856964, 46.531120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.064434, 28.093138, 46.564369>,  <38.871761, 28.234842, 46.584316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.064434, 28.093138, 46.564369>,  <39.385551, 27.856964, 46.531120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064434, 28.093138, 46.564369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460507, -0.525422, -0.715447,
		-0.378749, -0.612636, 0.693705,
		-0.802796, 0.590431, 0.083121,
		38.823597, 28.270267, 46.589306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766102, 27.392019, 46.595394>,  <39.385551, 27.856964, 46.531120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766102, 27.392019, 46.595394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655697, 27.751150, 46.458153>,  <38.589455, 27.966629, 46.375809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655697, 27.751150, 46.458153>,  <38.766102, 27.392019, 46.595394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655697, 27.751150, 46.458153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347997, -0.426105, -0.835064,
		-0.895943, -0.111090, 0.430053,
		-0.276015, 0.897827, -0.343107,
		38.572891, 28.020498, 46.355221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069176, 27.241776, 46.321869>,  <38.766102, 27.392019, 46.595394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069176, 27.241776, 46.321869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216530, 27.575706, 46.158230>,  <38.304943, 27.776064, 46.060047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216530, 27.575706, 46.158230>,  <38.069176, 27.241776, 46.321869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216530, 27.575706, 46.158230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362761, -0.276079, -0.890048,
		-0.855978, 0.476282, 0.201139,
		0.368384, 0.834827, -0.409094,
		38.327045, 27.826155, 46.035503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520672, 27.570881, 45.791508>,  <38.069176, 27.241776, 46.321869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520672, 27.570881, 45.791508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.869274, 27.748018, 45.707256>,  <38.078438, 27.854300, 45.656704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.869274, 27.748018, 45.707256>,  <37.520672, 27.570881, 45.791508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869274, 27.748018, 45.707256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246724, 0.024780, -0.968769,
		-0.423792, 0.896258, 0.130856,
		0.871509, 0.442842, -0.210627,
		38.130726, 27.880871, 45.644070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221844, 28.000280, 45.346550>,  <37.520672, 27.570881, 45.791508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221844, 28.000280, 45.346550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605217, 27.939032, 45.250252>,  <37.835239, 27.902283, 45.192474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605217, 27.939032, 45.250252>,  <37.221844, 28.000280, 45.346550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605217, 27.939032, 45.250252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243528, 0.000594, -0.969894,
		0.148655, 0.988207, -0.036720,
		0.958434, -0.153122, -0.240745,
		37.892746, 27.893095, 45.178028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863609, 28.606461, 45.451569>,  <37.221844, 28.000280, 45.346550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863609, 28.606461, 45.451569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.471348, 28.563629, 45.386017>,  <36.235992, 28.537930, 45.346687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.471348, 28.563629, 45.386017>,  <36.863609, 28.606461, 45.451569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471348, 28.563629, 45.386017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135724, -0.231353, 0.963356,
		-0.141070, 0.966959, 0.212343,
		-0.980652, -0.107081, -0.163876,
		36.177151, 28.531506, 45.336853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572891, 28.952433, 45.988609>,  <36.863609, 28.606461, 45.451569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572891, 28.952433, 45.988609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.303226, 28.693281, 45.846756>,  <36.141430, 28.537790, 45.761642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.303226, 28.693281, 45.846756>,  <36.572891, 28.952433, 45.988609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303226, 28.693281, 45.846756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243087, -0.258773, 0.934851,
		-0.697439, 0.716443, 0.016963,
		-0.674157, -0.647878, -0.354636,
		36.100979, 28.498919, 45.740364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036644, 28.978918, 46.522659>,  <36.572891, 28.952433, 45.988609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036644, 28.978918, 46.522659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960304, 28.644232, 46.317337>,  <35.914501, 28.443420, 46.194141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960304, 28.644232, 46.317337>,  <36.036644, 28.978918, 46.522659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960304, 28.644232, 46.317337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230314, -0.470154, 0.852004,
		-0.954219, 0.280824, -0.102980,
		-0.190846, -0.836716, -0.513308,
		35.903049, 28.393217, 46.163345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398800, 28.824110, 46.582184>,  <36.036644, 28.978918, 46.522659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398800, 28.824110, 46.582184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531139, 28.458357, 46.488853>,  <35.610542, 28.238905, 46.432858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531139, 28.458357, 46.488853>,  <35.398800, 28.824110, 46.582184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531139, 28.458357, 46.488853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428120, -0.365776, 0.826390,
		-0.840983, -0.173519, -0.512483,
		0.330849, -0.914384, -0.233324,
		35.630394, 28.184042, 46.418858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882690, 28.367138, 46.798172>,  <35.398800, 28.824110, 46.582184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882690, 28.367138, 46.798172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197277, 28.120924, 46.777851>,  <35.386028, 27.973196, 46.765659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197277, 28.120924, 46.777851>,  <34.882690, 28.367138, 46.798172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197277, 28.120924, 46.777851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234362, -0.373515, 0.897531,
		-0.571436, -0.693976, -0.438016,
		0.786470, -0.615536, -0.050798,
		35.433220, 27.936264, 46.762611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669907, 27.730585, 47.002193>,  <34.882690, 28.367138, 46.798172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669907, 27.730585, 47.002193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.066277, 27.716021, 47.053951>,  <35.304100, 27.707281, 47.085007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.066277, 27.716021, 47.053951>,  <34.669907, 27.730585, 47.002193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066277, 27.716021, 47.053951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134003, -0.343358, 0.929596,
		0.010582, -0.938499, -0.345121,
		0.990925, -0.036410, 0.129396,
		35.363552, 27.705097, 47.092770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803726, 27.088816, 47.203514>,  <34.669907, 27.730585, 47.002193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803726, 27.088816, 47.203514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115913, 27.311846, 47.316635>,  <35.303226, 27.445663, 47.384506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115913, 27.311846, 47.316635>,  <34.803726, 27.088816, 47.203514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115913, 27.311846, 47.316635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083742, -0.355034, 0.931095,
		0.619562, -0.750373, -0.230400,
		0.780468, 0.557576, 0.282804,
		35.350056, 27.479118, 47.401478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212074, 26.637869, 47.669785>,  <34.803726, 27.088816, 47.203514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212074, 26.637869, 47.669785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323410, 27.013304, 47.751350>,  <35.390213, 27.238565, 47.800289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323410, 27.013304, 47.751350>,  <35.212074, 26.637869, 47.669785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323410, 27.013304, 47.751350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129225, -0.246969, 0.960368,
		0.951749, -0.240960, -0.190030,
		0.278342, 0.938586, 0.203914,
		35.406914, 27.294880, 47.812523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676826, 26.681044, 48.292126>,  <35.212074, 26.637869, 47.669785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676826, 26.681044, 48.292126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602055, 27.073801, 48.279839>,  <35.557190, 27.309456, 48.272469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602055, 27.073801, 48.279839>,  <35.676826, 26.681044, 48.292126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602055, 27.073801, 48.279839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142351, 0.058011, 0.988115,
		0.972004, 0.180338, -0.150618,
		-0.186932, 0.981893, -0.030716,
		35.545975, 27.368368, 48.270622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260479, 27.043083, 48.597530>,  <35.676826, 26.681044, 48.292126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260479, 27.043083, 48.597530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.956135, 27.302067, 48.614891>,  <35.773529, 27.457457, 48.625305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.956135, 27.302067, 48.614891>,  <36.260479, 27.043083, 48.597530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956135, 27.302067, 48.614891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175949, 0.141469, 0.974181,
		0.624605, 0.748853, -0.221559,
		-0.760862, 0.647461, 0.043397,
		35.727875, 27.496305, 48.627911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441982, 27.648849, 49.019211>,  <36.260479, 27.043083, 48.597530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441982, 27.648849, 49.019211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.043098, 27.662540, 49.045738>,  <35.803768, 27.670755, 49.061653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.043098, 27.662540, 49.045738>,  <36.441982, 27.648849, 49.019211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043098, 27.662540, 49.045738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068259, 0.059068, 0.995918,
		0.030171, 0.997667, -0.061240,
		-0.997211, 0.034228, 0.066317,
		35.743935, 27.672810, 49.065632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329948, 28.199957, 49.408386>,  <36.441982, 27.648849, 49.019211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329948, 28.199957, 49.408386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.992107, 27.988127, 49.439892>,  <35.789402, 27.861029, 49.458794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.992107, 27.988127, 49.439892>,  <36.329948, 28.199957, 49.408386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992107, 27.988127, 49.439892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034346, 0.200402, 0.979112,
		-0.534296, 0.824252, -0.187448,
		-0.844600, -0.529573, 0.078764,
		35.738728, 27.829254, 49.463520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801983, 28.625128, 49.915981>,  <36.329948, 28.199957, 49.408386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801983, 28.625128, 49.915981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686092, 28.242502, 49.928921>,  <35.616558, 28.012928, 49.936684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686092, 28.242502, 49.928921>,  <35.801983, 28.625128, 49.915981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686092, 28.242502, 49.928921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446075, 0.164857, 0.879681,
		-0.846803, 0.240438, -0.474463,
		-0.289727, -0.956562, 0.032348,
		35.599174, 27.955534, 49.938625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199661, 28.704004, 50.268665>,  <35.801983, 28.625128, 49.915981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199661, 28.704004, 50.268665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310337, 28.322430, 50.315056>,  <35.376743, 28.093485, 50.342892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310337, 28.322430, 50.315056>,  <35.199661, 28.704004, 50.268665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310337, 28.322430, 50.315056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168680, 0.070606, 0.983139,
		-0.946039, -0.291587, -0.141374,
		0.276689, -0.953935, 0.115981,
		35.393345, 28.036249, 50.349850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981041, 29.181410, 50.856339>,  <35.199661, 28.704004, 50.268665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981041, 29.181410, 50.856339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876591, 29.549395, 50.973289>,  <34.813919, 29.770185, 51.043461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876591, 29.549395, 50.973289>,  <34.981041, 29.181410, 50.856339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876591, 29.549395, 50.973289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009018, 0.300548, -0.953724,
		-0.965263, -0.251679, -0.070185,
		-0.261126, 0.919961, 0.292377,
		34.798252, 29.825382, 51.061001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313622, 29.307459, 50.650604>,  <34.981041, 29.181410, 50.856339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313622, 29.307459, 50.650604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492218, 29.663830, 50.683815>,  <34.599377, 29.877653, 50.703743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492218, 29.663830, 50.683815>,  <34.313622, 29.307459, 50.650604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492218, 29.663830, 50.683815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170402, 0.175756, -0.969573,
		-0.878412, 0.418759, 0.230290,
		0.446492, 0.890927, 0.083029,
		34.626167, 29.931108, 50.708725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886620, 29.662943, 50.267574>,  <34.313622, 29.307459, 50.650604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886620, 29.662943, 50.267574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.227695, 29.869043, 50.302086>,  <34.432339, 29.992704, 50.322792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.227695, 29.869043, 50.302086>,  <33.886620, 29.662943, 50.267574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227695, 29.869043, 50.302086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021257, 0.199226, -0.979723,
		-0.521992, 0.833562, 0.180830,
		0.852686, 0.515251, 0.086275,
		34.483501, 30.023619, 50.327969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728104, 30.298870, 49.949516>,  <33.886620, 29.662943, 50.267574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728104, 30.298870, 49.949516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126682, 30.265640, 49.944016>,  <34.365829, 30.245703, 49.940716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126682, 30.265640, 49.944016>,  <33.728104, 30.298870, 49.949516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126682, 30.265640, 49.944016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001311, 0.178549, -0.983930,
		0.084196, 0.980418, 0.178024,
		0.996448, -0.083077, -0.013748,
		34.425617, 30.240717, 49.939892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933102, 30.903936, 49.652992>,  <33.728104, 30.298870, 49.949516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933102, 30.903936, 49.652992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231747, 30.641808, 49.607166>,  <34.410934, 30.484531, 49.579670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231747, 30.641808, 49.607166>,  <33.933102, 30.903936, 49.652992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231747, 30.641808, 49.607166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166264, 0.350560, -0.921664,
		0.644149, 0.669076, 0.370688,
		0.746611, -0.655321, -0.114569,
		34.455730, 30.445211, 49.572796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418301, 31.238628, 49.301201>,  <33.933102, 30.903936, 49.652992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418301, 31.238628, 49.301201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533688, 30.861509, 49.234360>,  <34.602921, 30.635239, 49.194256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533688, 30.861509, 49.234360>,  <34.418301, 31.238628, 49.301201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533688, 30.861509, 49.234360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149687, 0.216775, -0.964677,
		0.945718, 0.253263, 0.203657,
		0.288465, -0.942797, -0.167098,
		34.620228, 30.578671, 49.184231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914139, 31.326550, 48.766819>,  <34.418301, 31.238628, 49.301201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914139, 31.326550, 48.766819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816544, 30.938820, 48.754986>,  <34.757984, 30.706182, 48.747887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816544, 30.938820, 48.754986>,  <34.914139, 31.326550, 48.766819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816544, 30.938820, 48.754986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036901, 0.021205, -0.999094,
		0.969075, -0.244861, 0.030595,
		-0.243990, -0.969326, -0.029584,
		34.743347, 30.648022, 48.746109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615318, 31.554714, 48.727932>,  <34.914139, 31.326550, 48.766819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615318, 31.554714, 48.727932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.779247, 31.919159, 48.745461>,  <35.877605, 32.137825, 48.755978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.779247, 31.919159, 48.745461>,  <35.615318, 31.554714, 48.727932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779247, 31.919159, 48.745461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306725, -0.182887, 0.934062,
		0.859051, -0.369356, -0.354412,
		0.409818, 0.911114, 0.043818,
		35.902191, 32.192493, 48.758606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192303, 31.475214, 49.153538>,  <35.615318, 31.554714, 48.727932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192303, 31.475214, 49.153538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.170784, 31.874470, 49.142059>,  <36.157875, 32.114025, 49.135174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.170784, 31.874470, 49.142059>,  <36.192303, 31.475214, 49.153538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170784, 31.874470, 49.142059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197300, 0.038797, 0.979575,
		0.978866, 0.047034, -0.199020,
		-0.053794, 0.998140, -0.028697,
		36.154644, 32.173912, 49.133450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737225, 31.696981, 49.495354>,  <36.192303, 31.475214, 49.153538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737225, 31.696981, 49.495354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.485443, 32.007122, 49.515835>,  <36.334373, 32.193207, 49.528122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.485443, 32.007122, 49.515835>,  <36.737225, 31.696981, 49.495354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485443, 32.007122, 49.515835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052796, -0.023067, 0.998339,
		0.775244, 0.631110, -0.026416,
		-0.629452, 0.775351, 0.051203,
		36.296608, 32.239727, 49.531197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045242, 32.106510, 49.913342>,  <36.737225, 31.696981, 49.495354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045242, 32.106510, 49.913342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.667625, 32.238323, 49.919014>,  <36.441055, 32.317410, 49.922417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.667625, 32.238323, 49.919014>,  <37.045242, 32.106510, 49.913342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667625, 32.238323, 49.919014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091353, 0.219906, 0.971234,
		0.316933, 0.918178, -0.237703,
		-0.944038, 0.329531, 0.014183,
		36.384415, 32.337181, 49.923267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106506, 32.743202, 50.307362>,  <37.045242, 32.106510, 49.913342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106506, 32.743202, 50.307362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733425, 32.599094, 50.313866>,  <36.509575, 32.512630, 50.317768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733425, 32.599094, 50.313866>,  <37.106506, 32.743202, 50.307362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733425, 32.599094, 50.313866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005978, 0.060527, 0.998149,
		-0.360584, 0.930883, -0.058608,
		-0.932707, -0.360267, 0.016261,
		36.453613, 32.491013, 50.318745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754757, 33.283905, 50.734982>,  <37.106506, 32.743202, 50.307362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754757, 33.283905, 50.734982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.555828, 32.936939, 50.741467>,  <36.436470, 32.728760, 50.745358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.555828, 32.936939, 50.741467>,  <36.754757, 33.283905, 50.734982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555828, 32.936939, 50.741467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165233, 0.113044, 0.979755,
		-0.851687, 0.484573, -0.199545,
		-0.497320, -0.867416, 0.016211,
		36.406631, 32.676716, 50.746330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245148, 33.513626, 51.035004>,  <36.754757, 33.283905, 50.734982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245148, 33.513626, 51.035004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260330, 33.115273, 51.067928>,  <36.269440, 32.876259, 51.087681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260330, 33.115273, 51.067928>,  <36.245148, 33.513626, 51.035004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260330, 33.115273, 51.067928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143176, 0.076100, 0.986767,
		-0.988969, -0.049234, -0.139699,
		0.037952, -0.995884, 0.082310,
		36.271717, 32.816505, 51.092621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616032, 33.289684, 51.603817>,  <36.245148, 33.513626, 51.035004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616032, 33.289684, 51.603817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.883747, 32.992897, 51.588139>,  <36.044376, 32.814823, 51.578732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.883747, 32.992897, 51.588139>,  <35.616032, 33.289684, 51.603817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883747, 32.992897, 51.588139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109072, 0.045933, 0.992972,
		-0.734952, -0.668861, 0.111670,
		0.669290, -0.741967, -0.039195,
		36.084534, 32.770306, 51.576382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471432, 32.744820, 52.131916>,  <35.616032, 33.289684, 51.603817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471432, 32.744820, 52.131916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.861568, 32.752373, 52.043964>,  <36.095650, 32.756905, 51.991196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.861568, 32.752373, 52.043964>,  <35.471432, 32.744820, 52.131916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861568, 32.752373, 52.043964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203709, 0.306165, 0.929928,
		0.084875, -0.951791, 0.294771,
		0.975345, 0.018880, -0.219874,
		36.154171, 32.758038, 51.978001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.084255, 33.151035, 35.743286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371979, 32.976589, 35.959579>,  <36.544613, 32.871922, 36.089355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371979, 32.976589, 35.959579>,  <36.084255, 33.151035, 35.743286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371979, 32.976589, 35.959579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533469, 0.151807, 0.832085,
		-0.444972, -0.886994, -0.123457,
		0.719312, -0.436115, 0.540734,
		36.587772, 32.845757, 36.121799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822979, 32.518394, 36.194901>,  <36.084255, 33.151035, 35.743286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822979, 32.518394, 36.194901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137424, 32.703636, 36.358639>,  <36.326092, 32.814781, 36.456882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137424, 32.703636, 36.358639>,  <35.822979, 32.518394, 36.194901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137424, 32.703636, 36.358639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513055, 0.119588, 0.849984,
		0.344674, -0.878202, 0.331605,
		0.786113, 0.463099, 0.409347,
		36.373257, 32.842567, 36.481441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994911, 32.190704, 36.815018>,  <35.822979, 32.518394, 36.194901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994911, 32.190704, 36.815018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133537, 32.565254, 36.837269>,  <36.216713, 32.789986, 36.850620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133537, 32.565254, 36.837269>,  <35.994911, 32.190704, 36.815018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133537, 32.565254, 36.837269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389607, 0.089752, 0.916598,
		0.853285, -0.339337, 0.395923,
		0.346570, 0.936374, 0.055624,
		36.237507, 32.846165, 36.853954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181744, 32.244846, 37.454250>,  <35.994911, 32.190704, 36.815018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181744, 32.244846, 37.454250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178226, 32.634041, 37.361969>,  <36.176117, 32.867558, 37.306599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178226, 32.634041, 37.361969>,  <36.181744, 32.244846, 37.454250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178226, 32.634041, 37.361969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170192, 0.225891, 0.959170,
		0.985372, 0.047695, 0.163609,
		-0.008789, 0.972984, -0.230704,
		36.175591, 32.925938, 37.292759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452698, 32.606445, 38.031952>,  <36.181744, 32.244846, 37.454250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452698, 32.606445, 38.031952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258568, 32.893074, 37.831558>,  <36.142090, 33.065052, 37.711323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258568, 32.893074, 37.831558>,  <36.452698, 32.606445, 38.031952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258568, 32.893074, 37.831558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383803, 0.340235, 0.858449,
		0.785595, 0.608903, 0.109900,
		-0.485321, 0.716573, -0.500986,
		36.112972, 33.108047, 37.681263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686390, 33.166069, 38.277679>,  <36.452698, 32.606445, 38.031952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686390, 33.166069, 38.277679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322956, 33.230640, 38.123581>,  <36.104897, 33.269382, 38.031120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322956, 33.230640, 38.123581>,  <36.686390, 33.166069, 38.277679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322956, 33.230640, 38.123581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266760, 0.485464, 0.832564,
		0.321423, 0.859224, -0.398023,
		-0.908585, 0.161429, -0.385246,
		36.050381, 33.279068, 38.008007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389095, 33.710701, 38.615067>,  <36.686390, 33.166069, 38.277679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389095, 33.710701, 38.615067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059170, 33.550854, 38.455074>,  <35.861214, 33.454945, 38.359077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059170, 33.550854, 38.455074>,  <36.389095, 33.710701, 38.615067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059170, 33.550854, 38.455074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538753, 0.340862, 0.770427,
		-0.171542, 0.850950, -0.496445,
		-0.824814, -0.399622, -0.399979,
		35.811726, 33.430965, 38.335079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804340, 34.252792, 38.722530>,  <36.389095, 33.710701, 38.615067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804340, 34.252792, 38.722530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664547, 33.881599, 38.670834>,  <35.580669, 33.658882, 38.639816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664547, 33.881599, 38.670834>,  <35.804340, 34.252792, 38.722530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664547, 33.881599, 38.670834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541090, 0.087287, 0.836423,
		-0.764908, 0.362246, -0.532629,
		-0.349482, -0.927986, -0.129241,
		35.559704, 33.603203, 38.632061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132347, 34.279778, 38.964813>,  <35.804340, 34.252792, 38.722530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132347, 34.279778, 38.964813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243404, 33.895844, 38.980934>,  <35.310040, 33.665482, 38.990604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243404, 33.895844, 38.980934>,  <35.132347, 34.279778, 38.964813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243404, 33.895844, 38.980934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522596, -0.115701, 0.844693,
		-0.806107, -0.255583, -0.533732,
		0.277643, -0.959839, 0.040299,
		35.326698, 33.607891, 38.993023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664757, 34.144154, 39.424633>,  <35.132347, 34.279778, 38.964813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664757, 34.144154, 39.424633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925961, 33.841671, 39.407997>,  <35.082684, 33.660183, 39.398018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925961, 33.841671, 39.407997>,  <34.664757, 34.144154, 39.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925961, 33.841671, 39.407997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192975, -0.219236, 0.956398,
		-0.732352, -0.616511, -0.289092,
		0.653009, -0.756208, -0.041586,
		35.121864, 33.614807, 39.395523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357288, 33.578293, 39.680565>,  <34.664757, 34.144154, 39.424633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357288, 33.578293, 39.680565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739292, 33.473141, 39.735477>,  <34.968494, 33.410049, 39.768425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739292, 33.473141, 39.735477>,  <34.357288, 33.578293, 39.680565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739292, 33.473141, 39.735477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184466, -0.164079, 0.969046,
		-0.232215, -0.950775, -0.205190,
		0.955013, -0.262877, 0.137284,
		35.025795, 33.394276, 39.776661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333168, 32.923447, 40.152706>,  <34.357288, 33.578293, 39.680565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333168, 32.923447, 40.152706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697250, 33.086411, 40.182495>,  <34.915699, 33.184189, 40.200367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697250, 33.086411, 40.182495>,  <34.333168, 32.923447, 40.152706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697250, 33.086411, 40.182495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021503, -0.226057, 0.973877,
		0.413600, -0.884826, -0.214519,
		0.910205, 0.407408, 0.074471,
		34.970310, 33.208633, 40.204838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736408, 32.662827, 40.276711>,  <34.333168, 32.923447, 40.152706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736408, 32.662827, 40.276711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381477, 32.564365, 40.432690>,  <33.168518, 32.505287, 40.526276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381477, 32.564365, 40.432690>,  <33.736408, 32.662827, 40.276711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381477, 32.564365, 40.432690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392047, -0.042531, -0.918962,
		0.242789, -0.968297, -0.058764,
		-0.887329, -0.246152, 0.389944,
		33.115280, 32.490520, 40.549671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473392, 32.117844, 39.871780>,  <33.736408, 32.662827, 40.276711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473392, 32.117844, 39.871780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155170, 32.301907, 40.029434>,  <32.964237, 32.412346, 40.124027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155170, 32.301907, 40.029434>,  <33.473392, 32.117844, 39.871780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155170, 32.301907, 40.029434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404536, 0.080856, -0.910941,
		-0.451046, -0.884147, 0.121826,
		-0.795555, 0.460160, 0.394139,
		32.916504, 32.439953, 40.147675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867142, 31.796291, 39.523376>,  <33.473392, 32.117844, 39.871780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867142, 31.796291, 39.523376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728428, 32.140060, 39.673645>,  <32.645199, 32.346321, 39.763805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728428, 32.140060, 39.673645>,  <32.867142, 31.796291, 39.523376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728428, 32.140060, 39.673645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535553, 0.147387, -0.831541,
		-0.770016, -0.489557, 0.409156,
		-0.346782, 0.859425, 0.375674,
		32.624393, 32.397888, 39.786346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210667, 31.813683, 39.406818>,  <32.867142, 31.796291, 39.523376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210667, 31.813683, 39.406818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310318, 32.198711, 39.449505>,  <32.370110, 32.429729, 39.475117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310318, 32.198711, 39.449505>,  <32.210667, 31.813683, 39.406818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310318, 32.198711, 39.449505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404614, 0.203562, -0.891544,
		-0.879900, 0.178928, 0.440183,
		0.249127, 0.962573, 0.106718,
		32.385056, 32.487484, 39.481522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666950, 32.047215, 38.996231>,  <32.210667, 31.813683, 39.406818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666950, 32.047215, 38.996231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920130, 32.351749, 39.052433>,  <32.072037, 32.534470, 39.086155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920130, 32.351749, 39.052433>,  <31.666950, 32.047215, 38.996231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920130, 32.351749, 39.052433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304417, 0.411618, -0.859012,
		-0.711832, 0.500937, 0.492297,
		0.632949, 0.761336, 0.140509,
		32.110016, 32.580151, 39.094585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261482, 32.644947, 39.078426>,  <31.666950, 32.047215, 38.996231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261482, 32.644947, 39.078426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617826, 32.768257, 38.944962>,  <31.831633, 32.842243, 38.864883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617826, 32.768257, 38.944962>,  <31.261482, 32.644947, 39.078426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617826, 32.768257, 38.944962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423726, 0.299105, -0.854981,
		-0.163770, 0.903052, 0.397086,
		0.890862, 0.308275, -0.333662,
		31.885086, 32.860741, 38.844864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244928, 33.342480, 38.779171>,  <31.261482, 32.644947, 39.078426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244928, 33.342480, 38.779171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565208, 33.182240, 38.601002>,  <31.757378, 33.086098, 38.494099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565208, 33.182240, 38.601002>,  <31.244928, 33.342480, 38.779171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565208, 33.182240, 38.601002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200058, 0.522037, -0.829129,
		0.564672, 0.752995, 0.337853,
		0.800701, -0.400596, -0.445422,
		31.805418, 33.062061, 38.467377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603491, 33.904194, 38.464863>,  <31.244928, 33.342480, 38.779171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603491, 33.904194, 38.464863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743374, 33.569336, 38.296631>,  <31.827303, 33.368420, 38.195690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743374, 33.569336, 38.296631>,  <31.603491, 33.904194, 38.464863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743374, 33.569336, 38.296631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264515, 0.342433, -0.901538,
		0.898741, 0.426526, -0.101687,
		0.349708, -0.837147, -0.420581,
		31.848286, 33.318192, 38.170456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907730, 34.131729, 37.798889>,  <31.603491, 33.904194, 38.464863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907730, 34.131729, 37.798889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855783, 33.746761, 37.703491>,  <31.824615, 33.515781, 37.646252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855783, 33.746761, 37.703491>,  <31.907730, 34.131729, 37.798889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855783, 33.746761, 37.703491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036448, 0.245001, -0.968837,
		0.990861, -0.117125, -0.066896,
		-0.129865, -0.962422, -0.238493,
		31.816824, 33.458035, 37.631943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121700, 34.097752, 37.135891>,  <31.907730, 34.131729, 37.798889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121700, 34.097752, 37.135891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940998, 33.742413, 37.168774>,  <31.832577, 33.529209, 37.188503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940998, 33.742413, 37.168774>,  <32.121700, 34.097752, 37.135891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940998, 33.742413, 37.168774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084324, -0.049214, -0.995222,
		0.888149, -0.456526, -0.052676,
		-0.451753, -0.888348, 0.082205,
		31.805471, 33.475906, 37.193436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419502, 33.660587, 36.603973>,  <32.121700, 34.097752, 37.135891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419502, 33.660587, 36.603973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057011, 33.521889, 36.700741>,  <31.839518, 33.438667, 36.758801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057011, 33.521889, 36.700741>,  <32.419502, 33.660587, 36.603973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057011, 33.521889, 36.700741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231737, -0.071212, -0.970169,
		0.353633, -0.935251, -0.015821,
		-0.906224, -0.346750, 0.241915,
		31.785143, 33.417866, 36.773315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241947, 33.060833, 36.224949>,  <32.419502, 33.660587, 36.603973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241947, 33.060833, 36.224949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877207, 33.189800, 36.326595>,  <31.658363, 33.267181, 36.387585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877207, 33.189800, 36.326595>,  <32.241947, 33.060833, 36.224949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877207, 33.189800, 36.326595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323829, -0.184452, -0.927961,
		-0.252324, -0.928451, 0.272602,
		-0.911849, 0.322423, 0.254118,
		31.603653, 33.286526, 36.402832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693096, 32.437103, 36.103401>,  <32.241947, 33.060833, 36.224949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693096, 32.437103, 36.103401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518188, 32.796822, 36.106384>,  <31.413244, 33.012653, 36.108173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518188, 32.796822, 36.106384>,  <31.693096, 32.437103, 36.103401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518188, 32.796822, 36.106384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395002, -0.184598, -0.899943,
		-0.807940, -0.396466, 0.435945,
		-0.437271, 0.899299, 0.007461,
		31.387007, 33.066612, 36.108624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036083, 32.317810, 35.984970>,  <31.693096, 32.437103, 36.103401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036083, 32.317810, 35.984970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066172, 32.705700, 35.892036>,  <31.084225, 32.938435, 35.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066172, 32.705700, 35.892036>,  <31.036083, 32.317810, 35.984970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066172, 32.705700, 35.892036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434640, -0.177816, -0.882875,
		-0.897457, 0.167394, 0.408105,
		0.075220, 0.969722, -0.232338,
		31.088737, 32.996616, 35.822334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278784, 31.503422, 36.125683>,  <31.036083, 32.317810, 35.984970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278784, 31.503422, 36.125683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562111, 31.547005, 36.404655>,  <31.732107, 31.573154, 36.572041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562111, 31.547005, 36.404655>,  <31.278784, 31.503422, 36.125683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562111, 31.547005, 36.404655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430819, -0.715935, 0.549392,
		0.559178, -0.689612, -0.460169,
		0.708318, 0.108959, 0.697433,
		31.774607, 31.579693, 36.613884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413485, 30.878962, 36.519474>,  <31.278784, 31.503422, 36.125683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413485, 30.878962, 36.519474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644800, 30.580591, 36.387306>,  <31.783588, 30.401569, 36.308006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644800, 30.580591, 36.387306>,  <31.413485, 30.878962, 36.519474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644800, 30.580591, 36.387306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573464, 0.083585, 0.814955,
		-0.580278, -0.660763, 0.476098,
		0.578287, -0.745926, -0.330422,
		31.818287, 30.356813, 36.288181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606230, 30.476612, 37.106068>,  <31.413485, 30.878962, 36.519474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606230, 30.476612, 37.106068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886356, 30.405111, 36.829632>,  <32.054432, 30.362211, 36.663769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886356, 30.405111, 36.829632>,  <31.606230, 30.476612, 37.106068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886356, 30.405111, 36.829632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711968, 0.104969, 0.694322,
		-0.051569, -0.978279, 0.200778,
		0.700316, -0.178753, -0.691090,
		32.096451, 30.351486, 36.622303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000893, 29.830168, 37.206287>,  <31.606230, 30.476612, 37.106068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000893, 29.830168, 37.206287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203762, 30.107023, 37.000877>,  <32.325485, 30.273136, 36.877632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203762, 30.107023, 37.000877>,  <32.000893, 29.830168, 37.206287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203762, 30.107023, 37.000877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688323, 0.033264, 0.724641,
		0.518636, -0.720995, -0.459546,
		0.507177, 0.692141, -0.513529,
		32.355915, 30.314665, 36.846817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728806, 29.625563, 37.286385>,  <32.000893, 29.830168, 37.206287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728806, 29.625563, 37.286385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781303, 29.994183, 37.140221>,  <32.812801, 30.215355, 37.052521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781303, 29.994183, 37.140221>,  <32.728806, 29.625563, 37.286385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781303, 29.994183, 37.140221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627121, 0.208297, 0.750555,
		0.767786, -0.327659, -0.550585,
		0.131241, 0.921549, -0.365410,
		32.820675, 30.270647, 37.030598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401737, 29.699467, 37.269741>,  <32.728806, 29.625563, 37.286385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401737, 29.699467, 37.269741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276348, 30.078396, 37.243473>,  <33.201115, 30.305754, 37.227711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276348, 30.078396, 37.243473>,  <33.401737, 29.699467, 37.269741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276348, 30.078396, 37.243473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686287, 0.273808, 0.673824,
		0.656310, 0.166160, -0.735968,
		-0.313476, 0.947323, -0.065669,
		33.182304, 30.362593, 37.223774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092350, 30.135571, 37.250256>,  <33.401737, 29.699467, 37.269741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092350, 30.135571, 37.250256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804661, 30.391035, 37.359673>,  <33.632046, 30.544313, 37.425323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804661, 30.391035, 37.359673>,  <34.092350, 30.135571, 37.250256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804661, 30.391035, 37.359673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585805, 0.345753, 0.732998,
		0.373558, 0.687436, -0.622805,
		-0.719226, 0.638660, 0.273545,
		33.588894, 30.582634, 37.441734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422817, 30.703722, 37.414314>,  <34.092350, 30.135571, 37.250256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422817, 30.703722, 37.414314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073147, 30.755333, 37.601578>,  <33.863346, 30.786299, 37.713936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073147, 30.755333, 37.601578>,  <34.422817, 30.703722, 37.414314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073147, 30.755333, 37.601578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483373, 0.323625, 0.813398,
		-0.046556, 0.937347, -0.345273,
		-0.874175, 0.129028, 0.468155,
		33.810894, 30.794041, 37.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528748, 31.308624, 37.797310>,  <34.422817, 30.703722, 37.414314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528748, 31.308624, 37.797310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221920, 31.113913, 37.964478>,  <34.037823, 30.997086, 38.064777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221920, 31.113913, 37.964478>,  <34.528748, 31.308624, 37.797310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221920, 31.113913, 37.964478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317547, 0.277958, 0.906589,
		-0.557472, 0.828122, -0.058637,
		-0.767065, -0.486778, 0.417921,
		33.991802, 30.967878, 38.089855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209728, 31.770027, 38.248623>,  <34.528748, 31.308624, 37.797310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209728, 31.770027, 38.248623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156990, 31.390898, 38.364723>,  <34.125347, 31.163420, 38.434383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156990, 31.390898, 38.364723>,  <34.209728, 31.770027, 38.248623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156990, 31.390898, 38.364723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532135, 0.179370, 0.827441,
		-0.836331, 0.263547, 0.480722,
		-0.131842, -0.947824, 0.290255,
		34.117435, 31.106550, 38.451801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277256, 31.833969, 38.924671>,  <34.209728, 31.770027, 38.248623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277256, 31.833969, 38.924671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255569, 31.436739, 38.882980>,  <34.242558, 31.198400, 38.857964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255569, 31.436739, 38.882980>,  <34.277256, 31.833969, 38.924671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255569, 31.436739, 38.882980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277440, -0.115255, 0.953804,
		-0.959212, 0.022794, 0.281768,
		-0.054217, -0.993074, -0.104230,
		34.239304, 31.138817, 38.851711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061886, 31.631584, 39.670395>,  <34.277256, 31.833969, 38.924671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061886, 31.631584, 39.670395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240746, 31.334496, 39.471027>,  <34.348061, 31.156242, 39.351406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240746, 31.334496, 39.471027>,  <34.061886, 31.631584, 39.670395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240746, 31.334496, 39.471027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373103, -0.351561, 0.858603,
		-0.812927, -0.569888, 0.119910,
		0.447152, -0.742720, -0.498420,
		34.374889, 31.111679, 39.321503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837303, 31.028820, 39.992432>,  <34.061886, 31.631584, 39.670395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837303, 31.028820, 39.992432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182541, 30.936739, 39.812622>,  <34.389683, 30.881491, 39.704739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182541, 30.936739, 39.812622>,  <33.837303, 31.028820, 39.992432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182541, 30.936739, 39.812622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313497, -0.453628, 0.834231,
		-0.395959, -0.860946, -0.319357,
		0.863097, -0.230204, -0.449522,
		34.441471, 30.867678, 39.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940308, 30.301620, 40.194393>,  <33.837303, 31.028820, 39.992432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940308, 30.301620, 40.194393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307034, 30.400278, 40.068783>,  <34.527069, 30.459473, 39.993416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307034, 30.400278, 40.068783>,  <33.940308, 30.301620, 40.194393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307034, 30.400278, 40.068783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395274, -0.449161, 0.801257,
		0.056580, -0.858732, -0.509292,
		0.916819, 0.246645, -0.314021,
		34.582081, 30.474272, 39.974575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477509, 29.718971, 40.149746>,  <33.940308, 30.301620, 40.194393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477509, 29.718971, 40.149746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711784, 30.040154, 40.193993>,  <34.852348, 30.232862, 40.220539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711784, 30.040154, 40.193993>,  <34.477509, 29.718971, 40.149746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711784, 30.040154, 40.193993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485759, -0.456968, 0.745129,
		0.648853, -0.382679, -0.657682,
		0.585686, 0.802955, 0.110615,
		34.887489, 30.281040, 40.227177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151802, 29.445887, 40.256329>,  <34.477509, 29.718971, 40.149746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151802, 29.445887, 40.256329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172745, 29.813330, 40.413002>,  <35.185310, 30.033796, 40.507008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172745, 29.813330, 40.413002>,  <35.151802, 29.445887, 40.256329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172745, 29.813330, 40.413002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363703, -0.382826, 0.849214,
		0.930043, 0.097997, -0.354143,
		0.052355, 0.918608, 0.391687,
		35.188450, 30.088913, 40.530506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813206, 29.544891, 40.510818>,  <35.151802, 29.445887, 40.256329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813206, 29.544891, 40.510818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616024, 29.832972, 40.706085>,  <35.497715, 30.005819, 40.823246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616024, 29.832972, 40.706085>,  <35.813206, 29.544891, 40.510818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616024, 29.832972, 40.706085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415208, -0.298329, 0.859420,
		0.764587, 0.626348, -0.151969,
		-0.492959, 0.720200, 0.488163,
		35.468136, 30.049032, 40.852535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275520, 30.133036, 40.836014>,  <35.813206, 29.544891, 40.510818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275520, 30.133036, 40.836014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932755, 30.108667, 41.040752>,  <35.727097, 30.094046, 41.163597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932755, 30.108667, 41.040752>,  <36.275520, 30.133036, 40.836014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932755, 30.108667, 41.040752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514885, -0.054361, 0.855534,
		-0.024295, 0.996661, 0.077950,
		-0.856915, -0.060920, 0.511845,
		35.675678, 30.090391, 41.194305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430580, 30.362415, 41.424992>,  <36.275520, 30.133036, 40.836014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430580, 30.362415, 41.424992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070702, 30.228157, 41.536625>,  <35.854774, 30.147602, 41.603607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070702, 30.228157, 41.536625>,  <36.430580, 30.362415, 41.424992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070702, 30.228157, 41.536625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340872, -0.140830, 0.929502,
		-0.272679, 0.931402, 0.241116,
		-0.899696, -0.335646, 0.279087,
		35.800793, 30.127464, 41.620350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330853, 30.679520, 42.169998>,  <36.430580, 30.362415, 41.424992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330853, 30.679520, 42.169998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078663, 30.375011, 42.109379>,  <35.927349, 30.192307, 42.073006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078663, 30.375011, 42.109379>,  <36.330853, 30.679520, 42.169998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078663, 30.375011, 42.109379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013384, -0.184549, 0.982732,
		-0.776094, 0.621616, 0.106164,
		-0.630475, -0.761272, -0.151547,
		35.889519, 30.146629, 42.063915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815620, 30.667950, 42.755932>,  <36.330853, 30.679520, 42.169998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815620, 30.667950, 42.755932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734333, 30.304899, 42.609009>,  <35.685558, 30.087069, 42.520855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734333, 30.304899, 42.609009>,  <35.815620, 30.667950, 42.755932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734333, 30.304899, 42.609009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050026, -0.365024, 0.929653,
		-0.977854, 0.207300, 0.028775,
		-0.203220, -0.907626, -0.367311,
		35.673367, 30.032612, 42.498814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244286, 30.421322, 43.115486>,  <35.815620, 30.667950, 42.755932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244286, 30.421322, 43.115486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429707, 30.094872, 42.977467>,  <35.540958, 29.899000, 42.894653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429707, 30.094872, 42.977467>,  <35.244286, 30.421322, 43.115486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429707, 30.094872, 42.977467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076127, -0.424655, 0.902149,
		-0.882795, -0.391922, -0.258977,
		0.463548, -0.816128, -0.345048,
		35.568771, 29.850033, 42.873951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871387, 29.842127, 43.392303>,  <35.244286, 30.421322, 43.115486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871387, 29.842127, 43.392303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233330, 29.709623, 43.285343>,  <35.450497, 29.630121, 43.221169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233330, 29.709623, 43.285343>,  <34.871387, 29.842127, 43.392303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233330, 29.709623, 43.285343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088842, -0.467347, 0.879599,
		-0.416342, -0.819667, -0.393452,
		0.904857, -0.331259, -0.267397,
		35.504787, 29.610245, 43.205124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808292, 29.108326, 43.689083>,  <34.871387, 29.842127, 43.392303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808292, 29.108326, 43.689083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190392, 29.184637, 43.598663>,  <35.419651, 29.230425, 43.544411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190392, 29.184637, 43.598663>,  <34.808292, 29.108326, 43.689083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190392, 29.184637, 43.598663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295723, -0.598754, 0.744340,
		0.006655, -0.777880, -0.628378,
		0.955250, 0.190779, -0.226052,
		35.476967, 29.241871, 43.530846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167603, 28.416323, 43.521938>,  <34.808292, 29.108326, 43.689083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167603, 28.416323, 43.521938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409130, 28.711737, 43.641918>,  <35.554047, 28.888985, 43.713905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409130, 28.711737, 43.641918>,  <35.167603, 28.416323, 43.521938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409130, 28.711737, 43.641918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316316, -0.567396, 0.760267,
		0.731676, -0.364181, -0.576213,
		0.603816, 0.738535, 0.299954,
		35.590275, 28.933296, 43.731903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842533, 28.179642, 43.597816>,  <35.167603, 28.416323, 43.521938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842533, 28.179642, 43.597816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846416, 28.511265, 43.821445>,  <35.848747, 28.710239, 43.955624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846416, 28.511265, 43.821445>,  <35.842533, 28.179642, 43.597816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846416, 28.511265, 43.821445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411926, -0.512776, 0.753244,
		0.911165, 0.222983, -0.346491,
		0.009712, 0.829059, 0.559077,
		35.849331, 28.759983, 43.989170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440441, 28.025812, 44.105515>,  <35.842533, 28.179642, 43.597816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440441, 28.025812, 44.105515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220020, 28.320940, 44.261444>,  <36.087769, 28.498016, 44.355003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220020, 28.320940, 44.261444>,  <36.440441, 28.025812, 44.105515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220020, 28.320940, 44.261444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143443, -0.376449, 0.915265,
		0.822052, 0.560273, 0.101606,
		-0.551048, 0.737821, 0.389828,
		36.054707, 28.542286, 44.378391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804562, 28.158152, 44.790577>,  <36.440441, 28.025812, 44.105515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804562, 28.158152, 44.790577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446552, 28.336391, 44.798244>,  <36.231747, 28.443335, 44.802845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446552, 28.336391, 44.798244>,  <36.804562, 28.158152, 44.790577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446552, 28.336391, 44.798244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042844, -0.128680, 0.990760,
		0.443950, 0.885936, 0.134263,
		-0.895027, 0.445600, 0.019170,
		36.178043, 28.470072, 44.803997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467983, 28.498833, 44.892590>,  <36.804562, 28.158152, 44.790577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467983, 28.498833, 44.892590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748703, 28.223223, 44.820232>,  <37.917133, 28.057858, 44.776817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748703, 28.223223, 44.820232>,  <37.467983, 28.498833, 44.892590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748703, 28.223223, 44.820232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273245, -0.025854, -0.961597,
		0.657888, 0.724276, -0.206417,
		0.701798, -0.689026, -0.180896,
		37.959244, 28.016516, 44.765965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966900, 28.743679, 44.381504>,  <37.467983, 28.498833, 44.892590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966900, 28.743679, 44.381504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031872, 28.349665, 44.358456>,  <38.070854, 28.113256, 44.344627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031872, 28.349665, 44.358456>,  <37.966900, 28.743679, 44.381504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031872, 28.349665, 44.358456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305519, 0.005321, -0.952171,
		0.938229, 0.172266, -0.300083,
		0.162430, -0.985036, -0.057623,
		38.080601, 28.054153, 44.341167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252693, 28.620886, 43.649143>,  <37.966900, 28.743679, 44.381504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252693, 28.620886, 43.649143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162334, 28.252117, 43.775021>,  <38.108120, 28.030857, 43.850548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162334, 28.252117, 43.775021>,  <38.252693, 28.620886, 43.649143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162334, 28.252117, 43.775021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293229, -0.243715, -0.924457,
		0.928972, -0.301109, -0.215279,
		-0.225895, -0.921920, 0.314698,
		38.094566, 27.975540, 43.869431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608162, 28.237591, 43.175415>,  <38.252693, 28.620886, 43.649143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608162, 28.237591, 43.175415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326241, 27.986683, 43.307953>,  <38.157089, 27.836138, 43.387478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326241, 27.986683, 43.307953>,  <38.608162, 28.237591, 43.175415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326241, 27.986683, 43.307953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201871, -0.270430, -0.941337,
		0.680078, -0.730344, 0.063971,
		-0.704799, -0.627269, 0.331349,
		38.114799, 27.798502, 43.407356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716881, 27.589407, 42.822552>,  <38.608162, 28.237591, 43.175415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716881, 27.589407, 42.822552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331116, 27.594027, 42.928207>,  <38.099655, 27.596798, 42.991600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331116, 27.594027, 42.928207>,  <38.716881, 27.589407, 42.822552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331116, 27.594027, 42.928207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264162, -0.000812, -0.964478,
		-0.010938, -0.999933, 0.003838,
		-0.964416, 0.011564, 0.264136,
		38.041790, 27.597492, 43.007446>
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
