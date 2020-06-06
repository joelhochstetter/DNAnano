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
	<24.554985, 35.216129, 34.945606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355049, 34.889797, 35.061939>,  <24.235088, 34.693996, 35.131741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355049, 34.889797, 35.061939>,  <24.554985, 35.216129, 34.945606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355049, 34.889797, 35.061939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490330, -0.010259, -0.871476,
		0.713960, -0.578202, -0.394898,
		-0.499838, -0.815829, 0.290834,
		24.205097, 34.645050, 35.149189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.530100, 35.556572, 34.223690>,  <24.554985, 35.216129, 34.945606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.530100, 35.556572, 34.223690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275391, 35.278362, 34.090565>,  <24.122564, 35.111435, 34.010689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275391, 35.278362, 34.090565>,  <24.530100, 35.556572, 34.223690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275391, 35.278362, 34.090565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770918, 0.582307, 0.258077,
		0.014303, 0.420911, -0.906989,
		-0.636773, -0.695523, -0.332817,
		24.084358, 35.069706, 33.990719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169634, 35.136658, 34.535480>,  <24.530100, 35.556572, 34.223690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169634, 35.136658, 34.535480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478685, 35.221001, 34.295952>,  <25.664116, 35.271606, 34.152233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478685, 35.221001, 34.295952>,  <25.169634, 35.136658, 34.535480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478685, 35.221001, 34.295952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369981, 0.916051, -0.154806,
		0.515909, 0.341160, 0.785778,
		0.772627, 0.210857, -0.598822,
		25.710474, 35.284256, 34.116306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292747, 35.880924, 34.578682>,  <25.169634, 35.136658, 34.535480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292747, 35.880924, 34.578682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464314, 35.774097, 34.233498>,  <25.567253, 35.710003, 34.026386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464314, 35.774097, 34.233498>,  <25.292747, 35.880924, 34.578682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464314, 35.774097, 34.233498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365363, 0.822388, -0.436104,
		0.826161, 0.502347, 0.255159,
		0.428916, -0.267067, -0.862964,
		25.592989, 35.693977, 33.974609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810068, 36.419617, 34.412479>,  <25.292747, 35.880924, 34.578682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810068, 36.419617, 34.412479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669800, 36.247566, 34.079731>,  <25.585638, 36.144337, 33.880081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669800, 36.247566, 34.079731>,  <25.810068, 36.419617, 34.412479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669800, 36.247566, 34.079731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160392, 0.902743, -0.399160,
		0.922660, -0.006549, -0.385558,
		-0.350674, -0.430130, -0.831875,
		25.564598, 36.118526, 33.830170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099522, 36.768013, 33.857494>,  <25.810068, 36.419617, 34.412479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099522, 36.768013, 33.857494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754751, 36.605820, 33.735729>,  <25.547890, 36.508503, 33.662670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754751, 36.605820, 33.735729>,  <26.099522, 36.768013, 33.857494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754751, 36.605820, 33.735729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232112, 0.849326, -0.474098,
		0.450785, -0.337979, -0.826174,
		-0.861926, -0.405481, -0.304414,
		25.496174, 36.484177, 33.644405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088572, 36.818424, 33.107170>,  <26.099522, 36.768013, 33.857494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088572, 36.818424, 33.107170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718349, 36.805004, 33.258018>,  <25.496216, 36.796951, 33.348530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718349, 36.805004, 33.258018>,  <26.088572, 36.818424, 33.107170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718349, 36.805004, 33.258018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187397, 0.906095, -0.379307,
		-0.328984, -0.421741, -0.844928,
		-0.925555, -0.033551, 0.377124,
		25.440683, 36.794937, 33.371155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573927, 36.951694, 32.634235>,  <26.088572, 36.818424, 33.107170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573927, 36.951694, 32.634235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456572, 37.077045, 32.995502>,  <25.386158, 37.152256, 33.212265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456572, 37.077045, 32.995502>,  <25.573927, 36.951694, 32.634235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456572, 37.077045, 32.995502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224075, 0.895886, -0.383640,
		-0.929362, -0.314934, -0.192622,
		-0.293389, 0.313378, 0.903171,
		25.368555, 37.171059, 33.266453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844994, 37.296391, 32.491943>,  <25.573927, 36.951694, 32.634235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844994, 37.296391, 32.491943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025782, 37.418400, 32.827248>,  <25.134254, 37.491604, 33.028431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025782, 37.418400, 32.827248>,  <24.844994, 37.296391, 32.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025782, 37.418400, 32.827248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357146, 0.922993, -0.143287,
		-0.817418, -0.234621, 0.526100,
		0.451968, 0.305020, 0.838265,
		25.161371, 37.509907, 33.078728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.490313, 37.861778, 32.823025>,  <24.844994, 37.296391, 32.491943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.490313, 37.861778, 32.823025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851835, 37.909733, 32.987347>,  <25.068748, 37.938507, 33.085938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851835, 37.909733, 32.987347>,  <24.490313, 37.861778, 32.823025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.851835, 37.909733, 32.987347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098526, 0.992463, -0.072870,
		-0.416442, 0.025386, 0.908808,
		0.903808, 0.119887, 0.410802,
		25.122978, 37.945698, 33.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386404, 38.419518, 33.293613>,  <24.490313, 37.861778, 32.823025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386404, 38.419518, 33.293613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782829, 38.420170, 33.240261>,  <25.020685, 38.420559, 33.208248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782829, 38.420170, 33.240261>,  <24.386404, 38.419518, 33.293613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782829, 38.420170, 33.240261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016484, 0.993755, -0.110361,
		0.132368, 0.111574, 0.984901,
		0.991063, 0.001627, -0.133380,
		25.080149, 38.420658, 33.200249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611012, 39.028545, 33.660088>,  <24.386404, 38.419518, 33.293613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611012, 39.028545, 33.660088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898939, 38.944019, 33.395599>,  <25.071695, 38.893303, 33.236908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898939, 38.944019, 33.395599>,  <24.611012, 39.028545, 33.660088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898939, 38.944019, 33.395599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147483, 0.977348, -0.151788,
		0.678315, 0.011741, 0.734678,
		0.719818, -0.211312, -0.661218,
		25.114885, 38.880627, 33.197235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621387, 39.654793, 33.218300>,  <24.611012, 39.028545, 33.660088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621387, 39.654793, 33.218300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963661, 39.790787, 33.062241>,  <25.169025, 39.872383, 32.968605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963661, 39.790787, 33.062241>,  <24.621387, 39.654793, 33.218300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963661, 39.790787, 33.062241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416985, -0.899463, 0.130729,
		-0.306481, -0.274550, -0.911423,
		0.855683, 0.339984, -0.390151,
		25.220366, 39.892780, 32.945194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784155, 39.264420, 32.627529>,  <24.621387, 39.654793, 33.218300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784155, 39.264420, 32.627529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105534, 39.411461, 32.814865>,  <25.298361, 39.499687, 32.927265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105534, 39.411461, 32.814865>,  <24.784155, 39.264420, 32.627529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105534, 39.411461, 32.814865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348131, -0.928200, 0.131334,
		0.482990, 0.057523, -0.873734,
		0.803446, 0.367607, 0.468337,
		25.346567, 39.521744, 32.955368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385195, 39.041138, 32.274345>,  <24.784155, 39.264420, 32.627529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385195, 39.041138, 32.274345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447777, 39.099014, 32.665157>,  <25.485327, 39.133739, 32.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447777, 39.099014, 32.665157>,  <25.385195, 39.041138, 32.274345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447777, 39.099014, 32.665157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204208, -0.972576, 0.111332,
		0.966344, 0.182099, -0.181714,
		0.156457, 0.144693, 0.977029,
		25.494715, 39.142422, 32.958267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060013, 38.693691, 32.524044>,  <25.385195, 39.041138, 32.274345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060013, 38.693691, 32.524044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813393, 38.729279, 32.836952>,  <25.665421, 38.750629, 33.024696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813393, 38.729279, 32.836952>,  <26.060013, 38.693691, 32.524044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813393, 38.729279, 32.836952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098227, -0.977139, 0.188547,
		0.781165, 0.193089, 0.593716,
		-0.616549, 0.088968, 0.782273,
		25.628428, 38.755970, 33.071632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350681, 38.300812, 33.028152>,  <26.060013, 38.693691, 32.524044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350681, 38.300812, 33.028152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959066, 38.339558, 33.099823>,  <25.724098, 38.362804, 33.142826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959066, 38.339558, 33.099823>,  <26.350681, 38.300812, 33.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959066, 38.339558, 33.099823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032603, -0.942869, 0.331565,
		0.201056, 0.318773, 0.926261,
		-0.979037, 0.096862, 0.179177,
		25.665356, 38.368618, 33.153576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207090, 38.215950, 33.750328>,  <26.350681, 38.300812, 33.028152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207090, 38.215950, 33.750328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870008, 38.113903, 33.560692>,  <25.667759, 38.052673, 33.446911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870008, 38.113903, 33.560692>,  <26.207090, 38.215950, 33.750328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870008, 38.113903, 33.560692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012580, -0.871027, 0.491075,
		-0.538228, 0.419795, 0.730810,
		-0.842705, -0.255116, -0.474092,
		25.617197, 38.037369, 33.418465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724072, 37.941486, 34.179550>,  <26.207090, 38.215950, 33.750328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724072, 37.941486, 34.179550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550907, 37.802761, 33.846729>,  <25.447008, 37.719528, 33.647038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550907, 37.802761, 33.846729>,  <25.724072, 37.941486, 34.179550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550907, 37.802761, 33.846729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026775, -0.917674, 0.396431,
		-0.901040, 0.193897, 0.387984,
		-0.432910, -0.346811, -0.832052,
		25.421034, 37.698719, 33.597115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246088, 37.558147, 34.482475>,  <25.724072, 37.941486, 34.179550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246088, 37.558147, 34.482475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260475, 37.440483, 34.100445>,  <25.269108, 37.369884, 33.871227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260475, 37.440483, 34.100445>,  <25.246088, 37.558147, 34.482475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260475, 37.440483, 34.100445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162048, -0.944767, 0.284880,
		-0.986127, 0.144522, -0.081649,
		0.035968, -0.294159, -0.955079,
		25.271265, 37.352234, 33.813919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553892, 37.299950, 34.184059>,  <25.246088, 37.558147, 34.482475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553892, 37.299950, 34.184059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692966, 37.212276, 33.819405>,  <24.776411, 37.159672, 33.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692966, 37.212276, 33.819405>,  <24.553892, 37.299950, 34.184059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692966, 37.212276, 33.819405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224939, -0.924399, 0.308042,
		-0.910228, -0.312164, -0.272099,
		0.347688, -0.219183, -0.911631,
		24.797272, 37.146523, 33.545914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227251, 36.649109, 33.825470>,  <24.553892, 37.299950, 34.184059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227251, 36.649109, 33.825470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599804, 36.708519, 33.692524>,  <24.823336, 36.744164, 33.612755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599804, 36.708519, 33.692524>,  <24.227251, 36.649109, 33.825470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599804, 36.708519, 33.692524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268293, -0.897144, 0.350930,
		-0.246058, -0.416022, -0.875432,
		0.931383, 0.148523, -0.332365,
		24.879219, 36.753075, 33.592815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328415, 36.211636, 33.252281>,  <24.227251, 36.649109, 33.825470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328415, 36.211636, 33.252281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678303, 36.310455, 33.419056>,  <24.888235, 36.369747, 33.519119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678303, 36.310455, 33.419056>,  <24.328415, 36.211636, 33.252281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678303, 36.310455, 33.419056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118608, -0.943283, 0.310080,
		0.469894, -0.221781, -0.854408,
		0.874718, 0.247045, 0.416938,
		24.940718, 36.384567, 33.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839455, 35.642773, 33.101509>,  <24.328415, 36.211636, 33.252281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839455, 35.642773, 33.101509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930126, 35.869720, 33.418167>,  <24.984529, 36.005890, 33.608162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930126, 35.869720, 33.418167>,  <24.839455, 35.642773, 33.101509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930126, 35.869720, 33.418167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164873, -0.823430, 0.542937,
		0.959913, 0.007448, -0.280200,
		0.226681, 0.567369, 0.791649,
		24.998131, 36.039932, 33.655663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422716, 35.571754, 32.665733>,  <24.839455, 35.642773, 33.101509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422716, 35.571754, 32.665733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464651, 35.740345, 33.026035>,  <25.489813, 35.841499, 33.242218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464651, 35.740345, 33.026035>,  <25.422716, 35.571754, 32.665733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464651, 35.740345, 33.026035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374296, -0.855873, 0.356907,
		0.921364, 0.299733, -0.247485,
		0.104839, 0.421474, 0.900760,
		25.496103, 35.866787, 33.296265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140556, 35.492809, 32.821438>,  <25.422716, 35.571754, 32.665733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140556, 35.492809, 32.821438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985329, 35.585945, 33.178131>,  <25.892193, 35.641827, 33.392147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985329, 35.585945, 33.178131>,  <26.140556, 35.492809, 32.821438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985329, 35.585945, 33.178131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548304, -0.719375, 0.426452,
		0.740788, 0.654433, 0.151497,
		-0.388068, 0.232844, 0.891733,
		25.868908, 35.655800, 33.445652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703293, 35.537720, 33.276241>,  <26.140556, 35.492809, 32.821438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703293, 35.537720, 33.276241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392942, 35.463726, 33.517506>,  <26.206732, 35.419331, 33.662262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392942, 35.463726, 33.517506>,  <26.703293, 35.537720, 33.276241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392942, 35.463726, 33.517506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529233, -0.711243, 0.462652,
		0.343409, 0.678171, 0.649735,
		-0.775876, -0.184982, 0.603157,
		26.160179, 35.408230, 33.698452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444904, 35.653721, 32.988716>,  <26.703293, 35.537720, 33.276241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444904, 35.653721, 32.988716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169281, 35.854153, 33.198143>,  <27.003908, 35.974411, 33.323799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169281, 35.854153, 33.198143>,  <27.444904, 35.653721, 32.988716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169281, 35.854153, 33.198143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724426, -0.456124, -0.516874,
		-0.020184, -0.735439, 0.677290,
		-0.689057, 0.501079, 0.523565,
		26.962564, 36.004478, 33.355213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363342, 35.572235, 32.146313>,  <27.444904, 35.653721, 32.988716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363342, 35.572235, 32.146313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680233, 35.411064, 31.962997>,  <27.870367, 35.314362, 31.853008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680233, 35.411064, 31.962997>,  <27.363342, 35.572235, 32.146313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680233, 35.411064, 31.962997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589781, -0.312805, -0.744521,
		0.156631, 0.860119, -0.485450,
		0.792228, -0.402924, -0.458287,
		27.917902, 35.290188, 31.825512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314112, 35.699654, 31.373358>,  <27.363342, 35.572235, 32.146313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314112, 35.699654, 31.373358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623295, 35.446419, 31.389988>,  <27.808805, 35.294476, 31.399965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623295, 35.446419, 31.389988>,  <27.314112, 35.699654, 31.373358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623295, 35.446419, 31.389988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165125, -0.264012, -0.950279,
		0.612590, 0.727662, -0.308610,
		0.772960, -0.633091, 0.041576,
		27.855183, 35.256493, 31.402460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906221, 35.767345, 30.843559>,  <27.314112, 35.699654, 31.373358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906221, 35.767345, 30.843559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896175, 35.374275, 30.917017>,  <27.890148, 35.138435, 30.961092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896175, 35.374275, 30.917017>,  <27.906221, 35.767345, 30.843559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896175, 35.374275, 30.917017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135561, -0.178658, -0.974528,
		0.990451, -0.049371, -0.128725,
		-0.025116, -0.982672, 0.183644,
		27.888641, 35.079475, 30.972111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059196, 35.419487, 30.188990>,  <27.906221, 35.767345, 30.843559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059196, 35.419487, 30.188990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896275, 35.134274, 30.417263>,  <27.798521, 34.963146, 30.554228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896275, 35.134274, 30.417263>,  <28.059196, 35.419487, 30.188990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896275, 35.134274, 30.417263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347865, -0.456641, -0.818822,
		0.844448, -0.532032, -0.062048,
		-0.407305, -0.713036, 0.570685,
		27.774082, 34.920364, 30.588469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244225, 34.743492, 29.937387>,  <28.059196, 35.419487, 30.188990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244225, 34.743492, 29.937387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908693, 34.679146, 30.145422>,  <27.707375, 34.640537, 30.270243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908693, 34.679146, 30.145422>,  <28.244225, 34.743492, 29.937387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908693, 34.679146, 30.145422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407940, -0.446877, -0.796170,
		0.360489, -0.880014, 0.309230,
		-0.838828, -0.160863, 0.520087,
		27.657045, 34.630886, 30.301449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034676, 34.155754, 29.686153>,  <28.244225, 34.743492, 29.937387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034676, 34.155754, 29.686153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692535, 34.274479, 29.855991>,  <27.487251, 34.345715, 29.957893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692535, 34.274479, 29.855991>,  <28.034676, 34.155754, 29.686153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692535, 34.274479, 29.855991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516524, -0.425737, -0.742934,
		-0.039746, -0.854781, 0.517465,
		-0.855350, 0.296812, 0.424593,
		27.435930, 34.363522, 29.983370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115215, 33.557106, 29.379349>,  <28.034676, 34.155754, 29.686153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115215, 33.557106, 29.379349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277231, 33.271816, 29.150526>,  <28.374441, 33.100643, 29.013233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277231, 33.271816, 29.150526>,  <28.115215, 33.557106, 29.379349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277231, 33.271816, 29.150526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905939, 0.397493, 0.145856,
		0.123359, -0.577324, 0.807143,
		0.405040, -0.713229, -0.572055,
		28.398743, 33.057846, 28.978910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763487, 33.576618, 30.068405>,  <28.115215, 33.557106, 29.379349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763487, 33.576618, 30.068405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477524, 33.841557, 30.158037>,  <27.305946, 34.000519, 30.211817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477524, 33.841557, 30.158037>,  <27.763487, 33.576618, 30.068405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477524, 33.841557, 30.158037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487721, -0.242726, -0.838578,
		-0.501037, -0.708791, 0.496565,
		-0.714905, 0.662344, 0.224077,
		27.263052, 34.040260, 30.225260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139549, 33.251049, 29.934980>,  <27.763487, 33.576618, 30.068405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139549, 33.251049, 29.934980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022715, 33.633572, 29.940138>,  <26.952614, 33.863083, 29.943233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022715, 33.633572, 29.940138>,  <27.139549, 33.251049, 29.934980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022715, 33.633572, 29.940138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675849, -0.196849, -0.710267,
		-0.676693, -0.216174, 0.703815,
		-0.292087, 0.956305, 0.012895,
		26.935089, 33.920464, 29.944006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404970, 33.283592, 30.197878>,  <27.139549, 33.251049, 29.934980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404970, 33.283592, 30.197878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478146, 33.608738, 29.976688>,  <26.522051, 33.803825, 29.843975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478146, 33.608738, 29.976688>,  <26.404970, 33.283592, 30.197878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478146, 33.608738, 29.976688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711583, -0.278629, -0.644992,
		-0.678368, 0.511481, 0.527451,
		0.182938, 0.812867, -0.552974,
		26.533028, 33.852596, 29.810797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763639, 33.514599, 30.014643>,  <26.404970, 33.283592, 30.197878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763639, 33.514599, 30.014643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016764, 33.668621, 29.745934>,  <26.168638, 33.761036, 29.584707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016764, 33.668621, 29.745934>,  <25.763639, 33.514599, 30.014643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016764, 33.668621, 29.745934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524622, -0.424880, -0.737732,
		-0.569493, 0.819273, -0.066859,
		0.632811, 0.385058, -0.671774,
		26.206608, 33.784138, 29.544401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498812, 33.721859, 29.275620>,  <25.763639, 33.514599, 30.014643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498812, 33.721859, 29.275620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884296, 33.643848, 29.202711>,  <26.115587, 33.597042, 29.158966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884296, 33.643848, 29.202711>,  <25.498812, 33.721859, 29.275620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884296, 33.643848, 29.202711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266064, -0.646386, -0.715119,
		0.021654, 0.737664, -0.674820,
		0.963712, -0.195030, -0.182269,
		26.173410, 33.585339, 29.148031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836678, 33.104698, 28.860418>,  <25.498812, 33.721859, 29.275620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836678, 33.104698, 28.860418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793163, 33.357040, 28.553123>,  <25.767056, 33.508446, 28.368748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793163, 33.357040, 28.553123>,  <25.836678, 33.104698, 28.860418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793163, 33.357040, 28.553123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823394, 0.490173, 0.285925,
		0.556946, -0.601456, -0.572767,
		-0.108784, 0.630857, -0.768235,
		25.760529, 33.546299, 28.322653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491156, 33.222809, 28.354334>,  <25.836678, 33.104698, 28.860418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491156, 33.222809, 28.354334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271988, 33.553619, 28.404644>,  <26.140488, 33.752106, 28.434830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271988, 33.553619, 28.404644>,  <26.491156, 33.222809, 28.354334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271988, 33.553619, 28.404644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627639, 0.307022, 0.715406,
		0.553040, 0.470927, -0.687295,
		-0.547919, 0.827022, 0.125777,
		26.107613, 33.801727, 28.442377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887783, 33.871540, 28.353708>,  <26.491156, 33.222809, 28.354334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887783, 33.871540, 28.353708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559032, 33.941299, 28.570635>,  <26.361782, 33.983154, 28.700790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559032, 33.941299, 28.570635>,  <26.887783, 33.871540, 28.353708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559032, 33.941299, 28.570635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568364, 0.315413, 0.759919,
		-0.038524, 0.932791, -0.358352,
		-0.821875, 0.174399, 0.542316,
		26.312469, 33.993618, 28.733330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011024, 34.445911, 28.680481>,  <26.887783, 33.871540, 28.353708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011024, 34.445911, 28.680481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761206, 34.267689, 28.937050>,  <26.611315, 34.160755, 29.090990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761206, 34.267689, 28.937050>,  <27.011024, 34.445911, 28.680481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761206, 34.267689, 28.937050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495537, 0.408721, 0.766414,
		-0.603643, 0.796509, -0.034475,
		-0.624546, -0.445557, 0.641421,
		26.573841, 34.134022, 29.129477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813709, 34.977509, 29.105497>,  <27.011024, 34.445911, 28.680481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813709, 34.977509, 29.105497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713055, 34.656204, 29.321445>,  <26.652662, 34.463421, 29.451014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713055, 34.656204, 29.321445>,  <26.813709, 34.977509, 29.105497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713055, 34.656204, 29.321445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442409, 0.400657, 0.802339,
		-0.860786, 0.440742, 0.254547,
		-0.251639, -0.803256, 0.539868,
		26.637564, 34.415226, 29.483406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539108, 35.179153, 29.807446>,  <26.813709, 34.977509, 29.105497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539108, 35.179153, 29.807446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673149, 34.804199, 29.845415>,  <26.753574, 34.579227, 29.868196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673149, 34.804199, 29.845415>,  <26.539108, 35.179153, 29.807446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673149, 34.804199, 29.845415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417675, 0.238104, 0.876843,
		-0.844544, -0.254185, 0.471313,
		0.335102, -0.937388, 0.094923,
		26.773680, 34.522984, 29.873892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337841, 34.839657, 30.482584>,  <26.539108, 35.179153, 29.807446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337841, 34.839657, 30.482584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674107, 34.670200, 30.347643>,  <26.875866, 34.568527, 30.266678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674107, 34.670200, 30.347643>,  <26.337841, 34.839657, 30.482584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674107, 34.670200, 30.347643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462965, 0.239006, 0.853545,
		-0.280970, -0.873729, 0.397056,
		0.840666, -0.423644, -0.337352,
		26.926306, 34.543106, 30.246437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580362, 34.347046, 30.993465>,  <26.337841, 34.839657, 30.482584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580362, 34.347046, 30.993465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898233, 34.446701, 30.772045>,  <27.088955, 34.506493, 30.639193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898233, 34.446701, 30.772045>,  <26.580362, 34.347046, 30.993465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898233, 34.446701, 30.772045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525248, 0.174931, 0.832775,
		0.304310, -0.952538, 0.008153,
		0.794676, 0.249139, -0.553552,
		27.136637, 34.521442, 30.605980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093151, 34.169899, 31.405752>,  <26.580362, 34.347046, 30.993465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093151, 34.169899, 31.405752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332937, 34.369423, 31.155367>,  <27.476809, 34.489136, 31.005136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332937, 34.369423, 31.155367>,  <27.093151, 34.169899, 31.405752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332937, 34.369423, 31.155367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574829, 0.275905, 0.770356,
		0.556967, -0.821624, -0.121334,
		0.599467, 0.498809, -0.625963,
		27.512777, 34.519066, 30.967579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752001, 33.948284, 31.586836>,  <27.093151, 34.169899, 31.405752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752001, 33.948284, 31.586836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773340, 34.298389, 31.394558>,  <27.786144, 34.508453, 31.279190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773340, 34.298389, 31.394558>,  <27.752001, 33.948284, 31.586836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773340, 34.298389, 31.394558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519460, 0.386796, 0.761938,
		0.852827, -0.290353, -0.434028,
		0.053350, 0.875262, -0.480697,
		27.789345, 34.560966, 31.250349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471920, 34.160442, 31.535227>,  <27.752001, 33.948284, 31.586836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471920, 34.160442, 31.535227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239929, 34.484570, 31.501743>,  <28.100735, 34.679047, 31.481653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239929, 34.484570, 31.501743>,  <28.471920, 34.160442, 31.535227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239929, 34.484570, 31.501743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477923, 0.421667, 0.770576,
		0.659711, 0.406909, -0.631828,
		-0.579975, 0.810322, -0.083708,
		28.065937, 34.727665, 31.476631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899487, 34.712040, 31.582294>,  <28.471920, 34.160442, 31.535227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899487, 34.712040, 31.582294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537401, 34.830902, 31.703810>,  <28.320150, 34.902218, 31.776718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537401, 34.830902, 31.703810>,  <28.899487, 34.712040, 31.582294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537401, 34.830902, 31.703810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415079, 0.465035, 0.781954,
		0.091089, 0.833931, -0.544299,
		-0.905214, 0.297154, 0.303788,
		28.265837, 34.920048, 31.794947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948961, 35.487530, 31.924316>,  <28.899487, 34.712040, 31.582294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948961, 35.487530, 31.924316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633438, 35.319798, 32.104069>,  <28.444124, 35.219158, 32.211922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633438, 35.319798, 32.104069>,  <28.948961, 35.487530, 31.924316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633438, 35.319798, 32.104069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319008, 0.345629, 0.882482,
		-0.525374, 0.839464, -0.138863,
		-0.788807, -0.419334, 0.449381,
		28.396795, 35.193996, 32.238884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638020, 35.958023, 32.370148>,  <28.948961, 35.487530, 31.924316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638020, 35.958023, 32.370148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518379, 35.624298, 32.555386>,  <28.446596, 35.424061, 32.666527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518379, 35.624298, 32.555386>,  <28.638020, 35.958023, 32.370148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518379, 35.624298, 32.555386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307037, 0.375355, 0.874549,
		-0.903475, 0.403765, 0.143897,
		-0.299100, -0.834315, 0.463095,
		28.428650, 35.374004, 32.694313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154762, 36.067696, 32.833958>,  <28.638020, 35.958023, 32.370148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154762, 36.067696, 32.833958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351845, 35.737160, 32.943066>,  <28.470095, 35.538837, 33.008530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351845, 35.737160, 32.943066>,  <28.154762, 36.067696, 32.833958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351845, 35.737160, 32.943066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387920, 0.489158, 0.781180,
		-0.778947, -0.279081, 0.561566,
		0.492707, -0.826340, 0.272767,
		28.499657, 35.489258, 33.024895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013527, 35.996532, 33.601967>,  <28.154762, 36.067696, 32.833958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013527, 35.996532, 33.601967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364220, 35.852230, 33.474720>,  <28.574635, 35.765648, 33.398373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364220, 35.852230, 33.474720>,  <28.013527, 35.996532, 33.601967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364220, 35.852230, 33.474720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480644, 0.632274, 0.607627,
		-0.018066, -0.685627, 0.727728,
		0.876730, -0.360755, -0.318120,
		28.627239, 35.744003, 33.379284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446106, 35.700253, 34.137665>,  <28.013527, 35.996532, 33.601967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446106, 35.700253, 34.137665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635866, 35.887897, 33.839703>,  <28.749722, 36.000484, 33.660927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635866, 35.887897, 33.839703>,  <28.446106, 35.700253, 34.137665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635866, 35.887897, 33.839703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429725, 0.615107, 0.661044,
		0.768298, -0.633702, 0.090218,
		0.474398, 0.469110, -0.744904,
		28.778185, 36.028629, 33.616230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060936, 35.916004, 34.478352>,  <28.446106, 35.700253, 34.137665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060936, 35.916004, 34.478352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066626, 36.145149, 34.150539>,  <29.070040, 36.282635, 33.953854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066626, 36.145149, 34.150539>,  <29.060936, 35.916004, 34.478352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066626, 36.145149, 34.150539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432700, 0.735368, 0.521540,
		0.901426, -0.362029, -0.237417,
		0.014223, 0.572860, -0.819530,
		29.070892, 36.317009, 33.904682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764435, 36.142635, 34.169312>,  <29.060936, 35.916004, 34.478352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764435, 36.142635, 34.169312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478472, 36.419964, 34.133049>,  <29.306894, 36.586361, 34.111290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478472, 36.419964, 34.133049>,  <29.764435, 36.142635, 34.169312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478472, 36.419964, 34.133049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501080, 0.598427, 0.625144,
		0.487675, 0.401493, -0.775227,
		-0.714907, 0.693317, -0.090658,
		29.264000, 36.627960, 34.105850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060652, 36.806717, 33.971001>,  <29.764435, 36.142635, 34.169312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060652, 36.806717, 33.971001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717371, 36.868744, 34.166733>,  <29.511402, 36.905960, 34.284172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717371, 36.868744, 34.166733>,  <30.060652, 36.806717, 33.971001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717371, 36.868744, 34.166733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466263, 0.634195, 0.616762,
		-0.214691, 0.757463, -0.616569,
		-0.858200, 0.155070, 0.489333,
		29.459911, 36.915264, 34.313534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734726, 37.579632, 33.900887>,  <30.060652, 36.806717, 33.971001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734726, 37.579632, 33.900887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679239, 37.386257, 34.246613>,  <29.645948, 37.270233, 34.454048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679239, 37.386257, 34.246613>,  <29.734726, 37.579632, 33.900887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679239, 37.386257, 34.246613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440422, 0.751586, 0.491066,
		-0.887010, 0.448784, 0.108660,
		-0.138715, -0.483437, 0.864319,
		29.637625, 37.241226, 34.505909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506231, 38.051826, 34.313332>,  <29.734726, 37.579632, 33.900887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506231, 38.051826, 34.313332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672691, 37.784466, 34.559929>,  <29.772568, 37.624050, 34.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672691, 37.784466, 34.559929>,  <29.506231, 38.051826, 34.313332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672691, 37.784466, 34.559929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398549, 0.743472, 0.537036,
		-0.817299, 0.022215, 0.575786,
		0.416150, -0.668398, 0.616492,
		29.797537, 37.583946, 34.744877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227573, 38.290089, 34.948120>,  <29.506231, 38.051826, 34.313332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227573, 38.290089, 34.948120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557138, 38.065521, 34.979038>,  <29.754877, 37.930779, 34.997589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557138, 38.065521, 34.979038>,  <29.227573, 38.290089, 34.948120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557138, 38.065521, 34.979038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473991, 0.757426, 0.449041,
		-0.310645, -0.333335, 0.890162,
		0.823913, -0.561421, 0.077293,
		29.804312, 37.897095, 35.002228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472446, 38.200058, 35.758255>,  <29.227573, 38.290089, 34.948120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472446, 38.200058, 35.758255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694599, 38.219490, 35.426186>,  <29.827890, 38.231148, 35.226944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694599, 38.219490, 35.426186>,  <29.472446, 38.200058, 35.758255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694599, 38.219490, 35.426186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358985, 0.886481, 0.292029,
		0.750121, -0.460208, 0.474898,
		0.555382, 0.048576, -0.830176,
		29.861214, 38.234062, 35.177132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083359, 38.666611, 35.903416>,  <29.472446, 38.200058, 35.758255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083359, 38.666611, 35.903416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111061, 38.653149, 35.504604>,  <30.127682, 38.645073, 35.265316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111061, 38.653149, 35.504604>,  <30.083359, 38.666611, 35.903416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111061, 38.653149, 35.504604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622654, 0.782316, 0.016844,
		0.779426, -0.621972, 0.075136,
		0.069257, -0.033656, -0.997031,
		30.131838, 38.643051, 35.205494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795389, 38.566448, 35.493320>,  <30.083359, 38.666611, 35.903416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795389, 38.566448, 35.493320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541397, 38.805492, 35.297501>,  <30.389002, 38.948921, 35.180008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541397, 38.805492, 35.297501>,  <30.795389, 38.566448, 35.493320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541397, 38.805492, 35.297501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671361, 0.740394, 0.033031,
		0.382199, -0.307690, -0.871350,
		-0.634979, 0.597615, -0.489549,
		30.350903, 38.984776, 35.150635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955149, 38.803474, 34.754509>,  <30.795389, 38.566448, 35.493320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955149, 38.803474, 34.754509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763176, 39.040615, 35.013180>,  <30.647991, 39.182899, 35.168381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763176, 39.040615, 35.013180>,  <30.955149, 38.803474, 34.754509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763176, 39.040615, 35.013180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745282, 0.664395, -0.055979,
		-0.462837, 0.455091, -0.760706,
		-0.479934, 0.592850, 0.646678,
		30.619196, 39.218472, 35.207184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397242, 38.177013, 34.885933>,  <30.955149, 38.803474, 34.754509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397242, 38.177013, 34.885933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740467, 38.216072, 35.087601>,  <31.946404, 38.239506, 35.208603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740467, 38.216072, 35.087601>,  <31.397242, 38.177013, 34.885933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740467, 38.216072, 35.087601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449821, -0.616563, -0.646151,
		0.247759, 0.781227, -0.572975,
		0.858066, 0.097647, 0.504171,
		31.997887, 38.245365, 35.238853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689892, 38.443134, 35.568745>,  <31.397242, 38.177013, 34.885933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689892, 38.443134, 35.568745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064926, 38.569550, 35.626774>,  <32.289948, 38.645401, 35.661591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064926, 38.569550, 35.626774>,  <31.689892, 38.443134, 35.568745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064926, 38.569550, 35.626774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008888, 0.438819, -0.898531,
		-0.347634, 0.841163, 0.414240,
		0.937588, 0.316042, 0.145072,
		32.346203, 38.664364, 35.670296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640526, 39.067253, 35.289684>,  <31.689892, 38.443134, 35.568745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640526, 39.067253, 35.289684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031826, 38.988411, 35.315525>,  <32.266605, 38.941105, 35.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031826, 38.988411, 35.315525>,  <31.640526, 39.067253, 35.289684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031826, 38.988411, 35.315525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154800, 0.486462, -0.859879,
		0.138062, 0.851178, 0.506394,
		0.978251, -0.197106, 0.064600,
		32.325302, 38.929279, 35.334904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962763, 39.721909, 35.170120>,  <31.640526, 39.067253, 35.289684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962763, 39.721909, 35.170120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186405, 39.408432, 35.061878>,  <32.320591, 39.220345, 34.996933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186405, 39.408432, 35.061878>,  <31.962763, 39.721909, 35.170120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186405, 39.408432, 35.061878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079352, 0.375471, -0.923431,
		0.825291, 0.494821, 0.272115,
		0.559104, -0.783693, -0.270608,
		32.354137, 39.173325, 34.980698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459049, 40.034252, 34.736561>,  <31.962763, 39.721909, 35.170120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459049, 40.034252, 34.736561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454826, 39.640938, 34.663864>,  <32.452293, 39.404949, 34.620247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454826, 39.640938, 34.663864>,  <32.459049, 40.034252, 34.736561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454826, 39.640938, 34.663864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001559, 0.181771, -0.983340,
		0.999943, -0.010095, -0.003451,
		-0.010554, -0.983289, -0.181745,
		32.451660, 39.345951, 34.609341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960228, 39.913517, 34.207027>,  <32.459049, 40.034252, 34.736561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960228, 39.913517, 34.207027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728580, 39.588413, 34.181576>,  <32.589592, 39.393353, 34.166306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728580, 39.588413, 34.181576>,  <32.960228, 39.913517, 34.207027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728580, 39.588413, 34.181576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031924, 0.100601, -0.994415,
		0.814617, -0.573854, -0.084207,
		-0.579120, -0.812756, -0.063631,
		32.554844, 39.344585, 34.162487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087151, 39.609772, 33.588352>,  <32.960228, 39.913517, 34.207027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087151, 39.609772, 33.588352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757095, 39.396854, 33.664055>,  <32.559063, 39.269104, 33.709476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757095, 39.396854, 33.664055>,  <33.087151, 39.609772, 33.588352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757095, 39.396854, 33.664055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175863, -0.076344, -0.981450,
		0.536866, -0.843112, -0.030617,
		-0.825135, -0.532292, 0.189258,
		32.509556, 39.237167, 33.720833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037495, 39.046211, 33.099598>,  <33.087151, 39.609772, 33.588352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037495, 39.046211, 33.099598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661598, 39.080933, 33.231873>,  <32.436062, 39.101765, 33.311237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661598, 39.080933, 33.231873>,  <33.037495, 39.046211, 33.099598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661598, 39.080933, 33.231873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334249, -0.029940, -0.942009,
		-0.071873, -0.995775, 0.057151,
		-0.939740, 0.086808, 0.330685,
		32.379677, 39.106976, 33.331078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665516, 38.492134, 32.767712>,  <33.037495, 39.046211, 33.099598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665516, 38.492134, 32.767712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406502, 38.780796, 32.865620>,  <32.251091, 38.953991, 32.924362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406502, 38.780796, 32.865620>,  <32.665516, 38.492134, 32.767712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406502, 38.780796, 32.865620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394110, -0.042240, -0.918092,
		-0.652205, -0.690965, 0.311763,
		-0.647539, 0.721653, 0.244767,
		32.212238, 38.997292, 32.939049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204826, 38.285095, 32.333763>,  <32.665516, 38.492134, 32.767712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204826, 38.285095, 32.333763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083649, 38.647339, 32.452488>,  <32.010941, 38.864685, 32.523724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083649, 38.647339, 32.452488>,  <32.204826, 38.285095, 32.333763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083649, 38.647339, 32.452488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568986, 0.077969, -0.818643,
		-0.764512, -0.416885, 0.491658,
		-0.302946, 0.905609, 0.296810,
		31.992765, 38.919022, 32.541531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596113, 38.290688, 32.028519>,  <32.204826, 38.285095, 32.333763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596113, 38.290688, 32.028519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659092, 38.677277, 32.109657>,  <31.696880, 38.909229, 32.158340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659092, 38.677277, 32.109657>,  <31.596113, 38.290688, 32.028519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659092, 38.677277, 32.109657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551541, 0.256447, -0.793749,
		-0.819154, 0.013097, 0.573425,
		0.157449, 0.966469, 0.202846,
		31.706327, 38.967216, 32.170509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927814, 38.638714, 31.907343>,  <31.596113, 38.290688, 32.028519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927814, 38.638714, 31.907343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219059, 38.912186, 31.887632>,  <31.393806, 39.076271, 31.875807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219059, 38.912186, 31.887632>,  <30.927814, 38.638714, 31.907343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219059, 38.912186, 31.887632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400518, 0.366003, -0.840016,
		-0.556270, 0.631363, 0.540319,
		0.728113, 0.683684, -0.049275,
		31.437492, 39.117290, 31.872850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540274, 39.193169, 31.763468>,  <30.927814, 38.638714, 31.907343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540274, 39.193169, 31.763468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919914, 39.264645, 31.659719>,  <31.147699, 39.307529, 31.597471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919914, 39.264645, 31.659719>,  <30.540274, 39.193169, 31.763468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919914, 39.264645, 31.659719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309417, 0.375104, -0.873818,
		-0.058850, 0.909597, 0.411302,
		0.949104, 0.178688, -0.259370,
		31.204645, 39.318253, 31.581909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527903, 39.823532, 31.484537>,  <30.540274, 39.193169, 31.763468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527903, 39.823532, 31.484537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870443, 39.684132, 31.332113>,  <31.075968, 39.600491, 31.240658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870443, 39.684132, 31.332113>,  <30.527903, 39.823532, 31.484537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870443, 39.684132, 31.332113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218178, 0.424649, -0.878676,
		0.468039, 0.835595, 0.287613,
		0.856351, -0.348504, -0.381061,
		31.127348, 39.579582, 31.217794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758337, 40.387234, 31.068811>,  <30.527903, 39.823532, 31.484537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758337, 40.387234, 31.068811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942019, 40.056259, 30.939514>,  <31.052227, 39.857674, 30.861935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942019, 40.056259, 30.939514>,  <30.758337, 40.387234, 31.068811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942019, 40.056259, 30.939514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120656, 0.302413, -0.945510,
		0.880099, 0.473183, 0.039035,
		0.459204, -0.827432, -0.323245,
		31.079781, 39.808029, 30.842541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334852, 40.641293, 30.639061>,  <30.758337, 40.387234, 31.068811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334852, 40.641293, 30.639061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222397, 40.272343, 30.533087>,  <31.154924, 40.050972, 30.469501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222397, 40.272343, 30.533087>,  <31.334852, 40.641293, 30.639061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222397, 40.272343, 30.533087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151687, 0.315311, -0.936787,
		0.947604, -0.223179, -0.228558,
		-0.281138, -0.922372, -0.264936,
		31.138056, 39.995632, 30.453606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601652, 40.463551, 29.982389>,  <31.334852, 40.641293, 30.639061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601652, 40.463551, 29.982389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307892, 40.192944, 30.004232>,  <31.131636, 40.030579, 30.017338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307892, 40.192944, 30.004232>,  <31.601652, 40.463551, 29.982389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307892, 40.192944, 30.004232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267348, 0.214390, -0.939448,
		0.623844, -0.704531, -0.338313,
		-0.734401, -0.676516, 0.054609,
		31.087572, 39.989990, 30.020615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577503, 40.060650, 29.358587>,  <31.601652, 40.463551, 29.982389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577503, 40.060650, 29.358587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217632, 40.007118, 29.524799>,  <31.001709, 39.974998, 29.624527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217632, 40.007118, 29.524799>,  <31.577503, 40.060650, 29.358587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217632, 40.007118, 29.524799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435167, 0.199213, -0.878034,
		0.034727, -0.970775, -0.237466,
		-0.899680, -0.133829, 0.415531,
		30.947729, 39.966969, 29.649458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205515, 39.610542, 28.878500>,  <31.577503, 40.060650, 29.358587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205515, 39.610542, 28.878500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915758, 39.792782, 29.085455>,  <30.741905, 39.902126, 29.209627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915758, 39.792782, 29.085455>,  <31.205515, 39.610542, 28.878500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915758, 39.792782, 29.085455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470801, 0.221296, -0.854034,
		-0.503592, -0.862240, 0.054191,
		-0.724390, 0.455598, 0.517387,
		30.698441, 39.929462, 29.240671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624430, 39.455132, 28.514069>,  <31.205515, 39.610542, 28.878500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624430, 39.455132, 28.514069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522856, 39.778324, 28.726740>,  <30.461912, 39.972240, 28.854342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522856, 39.778324, 28.726740>,  <30.624430, 39.455132, 28.514069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522856, 39.778324, 28.726740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647353, 0.266448, -0.714100,
		-0.718646, -0.525516, 0.455391,
		-0.253933, 0.807984, 0.531676,
		30.446676, 40.020718, 28.886242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917992, 39.519905, 28.450550>,  <30.624430, 39.455132, 28.514069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917992, 39.519905, 28.450550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042902, 39.881474, 28.567451>,  <30.117849, 40.098415, 28.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042902, 39.881474, 28.567451>,  <29.917992, 39.519905, 28.450550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042902, 39.881474, 28.567451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603178, 0.426331, -0.674106,
		-0.733934, 0.034228, 0.678358,
		0.312278, 0.903920, 0.292253,
		30.136585, 40.152649, 28.655127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413755, 39.837627, 28.186968>,  <29.917992, 39.519905, 28.450550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413755, 39.837627, 28.186968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659981, 40.135658, 28.289679>,  <29.807716, 40.314476, 28.351305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659981, 40.135658, 28.289679>,  <29.413755, 39.837627, 28.186968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659981, 40.135658, 28.289679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413852, 0.582897, -0.699256,
		-0.670677, 0.324169, 0.667163,
		0.615564, 0.745081, 0.256777,
		29.844650, 40.359184, 28.366713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009632, 40.358128, 28.331127>,  <29.413755, 39.837627, 28.186968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009632, 40.358128, 28.331127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377119, 40.475430, 28.225328>,  <29.597612, 40.545811, 28.161848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377119, 40.475430, 28.225328>,  <29.009632, 40.358128, 28.331127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377119, 40.475430, 28.225328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393518, 0.736056, -0.550787,
		0.033166, 0.610103, 0.791628,
		0.918719, 0.293252, -0.264498,
		29.652735, 40.563404, 28.145979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042320, 41.048855, 28.432411>,  <29.009632, 40.358128, 28.331127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042320, 41.048855, 28.432411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349464, 40.981884, 28.185070>,  <29.533751, 40.941704, 28.036665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349464, 40.981884, 28.185070>,  <29.042320, 41.048855, 28.432411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349464, 40.981884, 28.185070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416097, 0.603566, -0.680126,
		0.487085, 0.779536, 0.393791,
		0.767862, -0.167423, -0.618351,
		29.579823, 40.931656, 27.999565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140394, 41.629425, 28.116009>,  <29.042320, 41.048855, 28.432411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140394, 41.629425, 28.116009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334875, 41.392879, 27.858669>,  <29.451563, 41.250950, 27.704266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334875, 41.392879, 27.858669>,  <29.140394, 41.629425, 28.116009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334875, 41.392879, 27.858669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217057, 0.631421, -0.744442,
		0.846461, 0.501591, 0.178636,
		0.486200, -0.591367, -0.643347,
		29.480736, 41.215469, 27.665665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674843, 42.037823, 27.695440>,  <29.140394, 41.629425, 28.116009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674843, 42.037823, 27.695440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590471, 41.708534, 27.484608>,  <29.539848, 41.510960, 27.358109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590471, 41.708534, 27.484608>,  <29.674843, 42.037823, 27.695440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590471, 41.708534, 27.484608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082835, 0.522219, -0.848779,
		0.973985, -0.222692, -0.041960,
		-0.210929, -0.823222, -0.527081,
		29.527193, 41.461567, 27.326483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015570, 42.114681, 27.054390>,  <29.674843, 42.037823, 27.695440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015570, 42.114681, 27.054390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804886, 41.786804, 26.964338>,  <29.678474, 41.590080, 26.910307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804886, 41.786804, 26.964338>,  <30.015570, 42.114681, 27.054390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804886, 41.786804, 26.964338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127054, 0.185955, -0.974309,
		0.840496, -0.541783, 0.006200,
		-0.526711, -0.819690, -0.225130,
		29.646873, 41.540897, 26.896799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266890, 41.773285, 26.454248>,  <30.015570, 42.114681, 27.054390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266890, 41.773285, 26.454248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889692, 41.640232, 26.458569>,  <29.663374, 41.560402, 26.461161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889692, 41.640232, 26.458569>,  <30.266890, 41.773285, 26.454248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889692, 41.640232, 26.458569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117896, 0.303530, -0.945500,
		0.311255, -0.892864, -0.325444,
		-0.942985, -0.332660, 0.010790,
		29.606794, 41.540443, 26.461809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223650, 41.288391, 25.876686>,  <30.266890, 41.773285, 26.454248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223650, 41.288391, 25.876686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867924, 41.440228, 25.978689>,  <29.654488, 41.531330, 26.039890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867924, 41.440228, 25.978689>,  <30.223650, 41.288391, 25.876686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867924, 41.440228, 25.978689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132368, 0.320087, -0.938095,
		-0.437719, -0.868017, -0.234412,
		-0.889315, 0.379593, 0.255006,
		29.601130, 41.554104, 26.055191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832497, 41.113400, 25.315184>,  <30.223650, 41.288391, 25.876686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832497, 41.113400, 25.315184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616957, 41.387543, 25.511112>,  <29.487633, 41.552029, 25.628670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616957, 41.387543, 25.511112>,  <29.832497, 41.113400, 25.315184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616957, 41.387543, 25.511112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286806, 0.397465, -0.871644,
		-0.792076, -0.610169, -0.017609,
		-0.538849, 0.685358, 0.489822,
		29.455301, 41.593151, 25.658058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229649, 41.225380, 24.941366>,  <29.832497, 41.113400, 25.315184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229649, 41.225380, 24.941366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271814, 41.567825, 25.143736>,  <29.297113, 41.773293, 25.265158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271814, 41.567825, 25.143736>,  <29.229649, 41.225380, 24.941366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271814, 41.567825, 25.143736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077814, 0.514302, -0.854072,
		-0.991379, 0.050662, 0.120832,
		0.105413, 0.856112, 0.505926,
		29.303438, 41.824657, 25.295513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782179, 41.620251, 24.543482>,  <29.229649, 41.225380, 24.941366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782179, 41.620251, 24.543482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006393, 41.868202, 24.763136>,  <29.140923, 42.016972, 24.894928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006393, 41.868202, 24.763136>,  <28.782179, 41.620251, 24.543482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006393, 41.868202, 24.763136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020416, 0.673244, -0.739138,
		-0.827879, 0.403102, 0.390033,
		0.560536, 0.619880, 0.549134,
		29.174555, 42.054165, 24.927876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504755, 42.226242, 24.489086>,  <28.782179, 41.620251, 24.543482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504755, 42.226242, 24.489086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871788, 42.338055, 24.602152>,  <29.092009, 42.405144, 24.669992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871788, 42.338055, 24.602152>,  <28.504755, 42.226242, 24.489086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871788, 42.338055, 24.602152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004199, 0.717813, -0.696223,
		-0.397519, 0.637656, 0.659828,
		0.917584, 0.279533, 0.282666,
		29.147064, 42.421913, 24.686953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560070, 42.941689, 24.467072>,  <28.504755, 42.226242, 24.489086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560070, 42.941689, 24.467072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944233, 42.830860, 24.455410>,  <29.174730, 42.764362, 24.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944233, 42.830860, 24.455410>,  <28.560070, 42.941689, 24.467072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944233, 42.830860, 24.455410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194364, 0.741309, -0.642404,
		0.199604, 0.611303, 0.765811,
		0.960407, -0.277072, -0.029153,
		29.232355, 42.747738, 24.446665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898611, 43.524338, 24.595547>,  <28.560070, 42.941689, 24.467072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898611, 43.524338, 24.595547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162987, 43.285954, 24.413120>,  <29.321611, 43.142925, 24.303665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162987, 43.285954, 24.413120>,  <28.898611, 43.524338, 24.595547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162987, 43.285954, 24.413120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189833, 0.720741, -0.666705,
		0.726033, 0.354074, 0.589498,
		0.660939, -0.595956, -0.456067,
		29.361269, 43.107166, 24.276300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425587, 43.996826, 24.423208>,  <28.898611, 43.524338, 24.595547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425587, 43.996826, 24.423208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541059, 43.700527, 24.180573>,  <29.610344, 43.522747, 24.034990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541059, 43.700527, 24.180573>,  <29.425587, 43.996826, 24.423208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541059, 43.700527, 24.180573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212613, 0.667344, -0.713756,
		0.933519, 0.077079, 0.350143,
		0.288682, -0.740750, -0.606590,
		29.627665, 43.478302, 23.998596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158367, 44.123627, 24.096268>,  <29.425587, 43.996826, 24.423208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158367, 44.123627, 24.096268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937258, 43.887905, 23.860586>,  <29.804592, 43.746471, 23.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937258, 43.887905, 23.860586>,  <30.158367, 44.123627, 24.096268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937258, 43.887905, 23.860586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169225, 0.612936, -0.771798,
		0.815969, -0.526337, -0.239090,
		-0.552773, -0.589303, -0.589206,
		29.771425, 43.711113, 23.683825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581970, 44.151703, 23.515757>,  <30.158367, 44.123627, 24.096268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581970, 44.151703, 23.515757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231485, 44.001785, 23.394575>,  <30.021194, 43.911835, 23.321865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231485, 44.001785, 23.394575>,  <30.581970, 44.151703, 23.515757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231485, 44.001785, 23.394575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029671, 0.585489, -0.810137,
		0.481010, -0.718841, -0.501893,
		-0.876213, -0.374793, -0.302955,
		29.968622, 43.889347, 23.303688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658306, 44.213604, 22.792999>,  <30.581970, 44.151703, 23.515757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658306, 44.213604, 22.792999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267408, 44.151943, 22.851288>,  <30.032869, 44.114948, 22.886261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267408, 44.151943, 22.851288>,  <30.658306, 44.213604, 22.792999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267408, 44.151943, 22.851288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205916, 0.524397, -0.826200,
		0.050940, -0.837405, -0.544204,
		-0.977243, -0.154147, 0.145722,
		29.974236, 44.105698, 22.895004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367323, 44.033100, 22.120657>,  <30.658306, 44.213604, 22.792999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367323, 44.033100, 22.120657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089748, 44.194370, 22.359287>,  <29.923204, 44.291130, 22.502466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089748, 44.194370, 22.359287>,  <30.367323, 44.033100, 22.120657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089748, 44.194370, 22.359287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184742, 0.701110, -0.688706,
		-0.695934, -0.588131, -0.412042,
		-0.693936, 0.403172, 0.596578,
		29.881567, 44.315323, 22.538261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751062, 44.096203, 21.720100>,  <30.367323, 44.033100, 22.120657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751062, 44.096203, 21.720100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740606, 44.373032, 22.008642>,  <29.734333, 44.539127, 22.181768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740606, 44.373032, 22.008642>,  <29.751062, 44.096203, 21.720100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740606, 44.373032, 22.008642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210036, 0.701692, -0.680818,
		-0.977344, -0.169308, 0.127016,
		-0.026142, 0.692071, 0.721356,
		29.732763, 44.580654, 22.225048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264187, 44.518383, 21.458487>,  <29.751062, 44.096203, 21.720100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264187, 44.518383, 21.458487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445129, 44.732540, 21.743788>,  <29.553696, 44.861034, 21.914968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445129, 44.732540, 21.743788>,  <29.264187, 44.518383, 21.458487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445129, 44.732540, 21.743788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214707, 0.841612, -0.495571,
		-0.865606, 0.071035, 0.495661,
		0.452357, 0.535391, 0.713252,
		29.580837, 44.893158, 21.957764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854481, 45.231842, 21.462343>,  <29.264187, 44.518383, 21.458487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854481, 45.231842, 21.462343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218372, 45.257328, 21.626459>,  <29.436707, 45.272621, 21.724928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218372, 45.257328, 21.626459>,  <28.854481, 45.231842, 21.462343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218372, 45.257328, 21.626459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099424, 0.925981, -0.364245,
		-0.403128, 0.372156, 0.836055,
		0.909727, 0.063714, 0.410290,
		29.491291, 45.276443, 21.749546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786572, 45.851944, 21.762325>,  <28.854481, 45.231842, 21.462343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786572, 45.851944, 21.762325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161480, 45.749798, 21.667400>,  <29.386425, 45.688511, 21.610445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161480, 45.749798, 21.667400>,  <28.786572, 45.851944, 21.762325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161480, 45.749798, 21.667400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128588, 0.885989, -0.445522,
		0.324024, 0.387058, 0.863247,
		0.937269, -0.255363, -0.237310,
		29.442661, 45.673187, 21.596207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318581, 46.259018, 22.120800>,  <28.786572, 45.851944, 21.762325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318581, 46.259018, 22.120800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458021, 46.127899, 21.769567>,  <29.541685, 46.049229, 21.558828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458021, 46.127899, 21.769567>,  <29.318581, 46.259018, 22.120800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458021, 46.127899, 21.769567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044126, 0.941549, -0.333974,
		0.936232, 0.077678, 0.342690,
		0.348602, -0.327799, -0.878080,
		29.562601, 46.029560, 21.506144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910524, 46.678280, 21.879324>,  <29.318581, 46.259018, 22.120800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910524, 46.678280, 21.879324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707401, 46.502991, 21.582651>,  <29.585527, 46.397820, 21.404648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707401, 46.502991, 21.582651>,  <29.910524, 46.678280, 21.879324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707401, 46.502991, 21.582651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094014, 0.884000, -0.457936,
		0.856323, -0.162818, -0.490105,
		-0.507813, -0.438218, -0.741682,
		29.555058, 46.371525, 21.360146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331751, 47.182320, 22.324371>,  <29.910524, 46.678280, 21.879324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331751, 47.182320, 22.324371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690338, 47.207756, 22.148964>,  <30.905491, 47.223019, 22.043720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690338, 47.207756, 22.148964>,  <30.331751, 47.182320, 22.324371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690338, 47.207756, 22.148964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418299, 0.447936, -0.790177,
		0.146179, 0.891802, 0.428161,
		0.896470, 0.063591, -0.438518,
		30.959278, 47.226833, 22.017408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289692, 47.810875, 22.009323>,  <30.331751, 47.182320, 22.324371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289692, 47.810875, 22.009323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581512, 47.606312, 21.827681>,  <30.756605, 47.483574, 21.718695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581512, 47.606312, 21.827681>,  <30.289692, 47.810875, 22.009323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581512, 47.606312, 21.827681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416228, 0.194853, -0.888137,
		0.542685, 0.836955, -0.070707,
		0.729553, -0.511409, -0.454107,
		30.800379, 47.452888, 21.691448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563358, 48.266273, 21.474634>,  <30.289692, 47.810875, 22.009323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563358, 48.266273, 21.474634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629639, 47.883533, 21.379152>,  <30.669407, 47.653889, 21.321863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629639, 47.883533, 21.379152>,  <30.563358, 48.266273, 21.474634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629639, 47.883533, 21.379152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301475, 0.181313, -0.936076,
		0.938965, 0.227074, -0.258422,
		0.165703, -0.956851, -0.238704,
		30.679350, 47.596478, 21.307541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063293, 48.049847, 21.039515>,  <30.563358, 48.266273, 21.474634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063293, 48.049847, 21.039515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773134, 47.782555, 20.973475>,  <30.599039, 47.622177, 20.933851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773134, 47.782555, 20.973475>,  <31.063293, 48.049847, 21.039515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773134, 47.782555, 20.973475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097259, 0.137945, -0.985653,
		0.681423, -0.731049, -0.035073,
		-0.725399, -0.668235, -0.165100,
		30.555515, 47.582085, 20.923944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190405, 47.289173, 20.728632>,  <31.063293, 48.049847, 21.039515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190405, 47.289173, 20.728632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851587, 47.455059, 20.595650>,  <30.648296, 47.554592, 20.515860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851587, 47.455059, 20.595650>,  <31.190405, 47.289173, 20.728632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851587, 47.455059, 20.595650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280119, -0.183266, -0.942309,
		-0.451719, -0.891304, 0.039064,
		-0.847043, 0.414717, -0.332457,
		30.597475, 47.579475, 20.495913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724228, 46.873135, 20.963995>,  <31.190405, 47.289173, 20.728632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724228, 46.873135, 20.963995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448128, 47.062416, 21.182947>,  <31.282467, 47.175987, 21.314320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448128, 47.062416, 21.182947>,  <31.724228, 46.873135, 20.963995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448128, 47.062416, 21.182947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524018, -0.194745, 0.829144,
		0.498958, 0.859156, -0.113546,
		-0.690251, 0.473208, 0.547382,
		31.241053, 47.204380, 21.347162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144936, 47.252098, 21.440613>,  <31.724228, 46.873135, 20.963995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144936, 47.252098, 21.440613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773207, 47.234486, 21.587271>,  <31.550171, 47.223919, 21.675266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773207, 47.234486, 21.587271>,  <32.144936, 47.252098, 21.440613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773207, 47.234486, 21.587271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369153, -0.084918, 0.925481,
		-0.009612, 0.995415, 0.095169,
		-0.929319, -0.044028, 0.366644,
		31.494411, 47.221275, 21.697264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114666, 47.744804, 22.040672>,  <32.144936, 47.252098, 21.440613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114666, 47.744804, 22.040672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830666, 47.465492, 22.077114>,  <31.660265, 47.297905, 22.098978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830666, 47.465492, 22.077114>,  <32.114666, 47.744804, 22.040672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830666, 47.465492, 22.077114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166791, -0.041064, 0.985137,
		-0.684163, 0.714643, 0.145623,
		-0.710001, -0.698283, 0.091102,
		31.617664, 47.256008, 22.104445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781071, 47.891022, 22.703987>,  <32.114666, 47.744804, 22.040672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781071, 47.891022, 22.703987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695858, 47.512558, 22.606504>,  <31.644730, 47.285480, 22.548014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695858, 47.512558, 22.606504>,  <31.781071, 47.891022, 22.703987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695858, 47.512558, 22.606504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259573, -0.295277, 0.919474,
		-0.941934, 0.132618, 0.308502,
		-0.213032, -0.946163, -0.243708,
		31.631948, 47.228710, 22.533392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356318, 47.658279, 23.222443>,  <31.781071, 47.891022, 22.703987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356318, 47.658279, 23.222443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509451, 47.329952, 23.052877>,  <31.601330, 47.132957, 22.951138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509451, 47.329952, 23.052877>,  <31.356318, 47.658279, 23.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509451, 47.329952, 23.052877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208209, -0.370405, 0.905234,
		-0.900049, -0.434816, 0.029098,
		0.382833, -0.820814, -0.423915,
		31.624300, 47.083710, 22.925703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011045, 47.039505, 23.528738>,  <31.356318, 47.658279, 23.222443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011045, 47.039505, 23.528738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353128, 46.909916, 23.366917>,  <31.558378, 46.832161, 23.269823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353128, 46.909916, 23.366917>,  <31.011045, 47.039505, 23.528738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353128, 46.909916, 23.366917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224577, -0.471842, 0.852602,
		-0.467078, -0.820015, -0.330778,
		0.855221, -0.323946, -0.404543,
		31.609690, 46.812721, 23.245550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017929, 46.400028, 23.721542>,  <31.011045, 47.039505, 23.528738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017929, 46.400028, 23.721542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402082, 46.479668, 23.643549>,  <31.632574, 46.527451, 23.596752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402082, 46.479668, 23.643549>,  <31.017929, 46.400028, 23.721542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402082, 46.479668, 23.643549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260022, -0.388532, 0.883986,
		0.100248, -0.899667, -0.424911,
		0.960385, 0.199104, -0.194983,
		31.690197, 46.539398, 23.585054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349846, 45.793068, 23.834341>,  <31.017929, 46.400028, 23.721542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349846, 45.793068, 23.834341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643284, 46.064072, 23.855556>,  <31.819347, 46.226673, 23.868286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643284, 46.064072, 23.855556>,  <31.349846, 45.793068, 23.834341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643284, 46.064072, 23.855556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253327, -0.345044, 0.903753,
		0.630605, -0.649553, -0.424756,
		0.733595, 0.677514, 0.053037,
		31.863363, 46.267326, 23.871468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022141, 45.424183, 24.092218>,  <31.349846, 45.793068, 23.834341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022141, 45.424183, 24.092218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035957, 45.814686, 24.177753>,  <32.044247, 46.048988, 24.229074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035957, 45.814686, 24.177753>,  <32.022141, 45.424183, 24.092218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035957, 45.814686, 24.177753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373784, -0.211054, 0.903184,
		0.926873, 0.048731, -0.372200,
		0.034542, 0.976259, 0.213835,
		32.046318, 46.107563, 24.241903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737556, 45.571541, 24.420916>,  <32.022141, 45.424183, 24.092218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737556, 45.571541, 24.420916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511810, 45.882309, 24.532547>,  <32.376362, 46.068771, 24.599525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511810, 45.882309, 24.532547>,  <32.737556, 45.571541, 24.420916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511810, 45.882309, 24.532547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348538, -0.082204, 0.933683,
		0.748340, 0.624207, -0.224394,
		-0.564366, 0.776922, 0.279077,
		32.342499, 46.115387, 24.616270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179108, 46.107635, 24.751715>,  <32.737556, 45.571541, 24.420916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179108, 46.107635, 24.751715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815235, 46.169106, 24.906046>,  <32.596912, 46.205986, 24.998646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815235, 46.169106, 24.906046>,  <33.179108, 46.107635, 24.751715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815235, 46.169106, 24.906046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393800, 0.024079, 0.918881,
		0.131916, 0.987828, -0.082420,
		-0.909681, 0.153672, 0.385830,
		32.542332, 46.215206, 25.021795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262928, 46.461262, 25.305380>,  <33.179108, 46.107635, 24.751715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262928, 46.461262, 25.305380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890160, 46.337868, 25.381647>,  <32.666496, 46.263832, 25.427408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890160, 46.337868, 25.381647>,  <33.262928, 46.461262, 25.305380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890160, 46.337868, 25.381647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218576, -0.058249, 0.974080,
		-0.289383, 0.949444, 0.121712,
		-0.931924, -0.308485, 0.190670,
		32.610584, 46.245323, 25.438848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126476, 46.816952, 25.883818>,  <33.262928, 46.461262, 25.305380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126476, 46.816952, 25.883818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852364, 46.525776, 25.892620>,  <32.687897, 46.351070, 25.897902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852364, 46.525776, 25.892620>,  <33.126476, 46.816952, 25.883818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852364, 46.525776, 25.892620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132261, -0.094684, 0.986682,
		-0.716165, 0.679068, 0.161164,
		-0.685285, -0.727943, 0.022005,
		32.646778, 46.307392, 25.899221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851299, 46.806408, 26.602539>,  <33.126476, 46.816952, 25.883818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851299, 46.806408, 26.602539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716724, 46.455238, 26.466272>,  <32.635979, 46.244537, 26.384512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716724, 46.455238, 26.466272>,  <32.851299, 46.806408, 26.602539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716724, 46.455238, 26.466272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057803, -0.380326, 0.923044,
		-0.939929, 0.290857, 0.178704,
		-0.336440, -0.877926, -0.340667,
		32.615791, 46.191860, 26.364073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364429, 46.558807, 27.067190>,  <32.851299, 46.806408, 26.602539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364429, 46.558807, 27.067190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473209, 46.218491, 26.887323>,  <32.538479, 46.014301, 26.779404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473209, 46.218491, 26.887323>,  <32.364429, 46.558807, 27.067190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473209, 46.218491, 26.887323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029193, -0.474357, 0.879848,
		-0.961868, -0.226149, -0.153839,
		0.271951, -0.850789, -0.449667,
		32.554794, 45.963253, 26.752424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003933, 46.001434, 27.421192>,  <32.364429, 46.558807, 27.067190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003933, 46.001434, 27.421192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327042, 45.863766, 27.229753>,  <32.520905, 45.781162, 27.114891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327042, 45.863766, 27.229753>,  <32.003933, 46.001434, 27.421192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327042, 45.863766, 27.229753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279966, -0.490492, 0.825250,
		-0.518775, -0.800602, -0.299848,
		0.807770, -0.344171, -0.478596,
		32.569374, 45.760513, 27.086174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049698, 45.229073, 27.519245>,  <32.003933, 46.001434, 27.421192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049698, 45.229073, 27.519245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422264, 45.348991, 27.436710>,  <32.645805, 45.420944, 27.387190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422264, 45.348991, 27.436710>,  <32.049698, 45.229073, 27.519245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422264, 45.348991, 27.436710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343910, -0.539500, 0.768548,
		0.119092, -0.786803, -0.605606,
		0.931420, 0.299802, -0.206339,
		32.701691, 45.438931, 27.374809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330864, 44.630459, 27.600115>,  <32.049698, 45.229073, 27.519245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330864, 44.630459, 27.600115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620811, 44.905712, 27.613018>,  <32.794781, 45.070866, 27.620760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620811, 44.905712, 27.613018>,  <32.330864, 44.630459, 27.600115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620811, 44.905712, 27.613018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423457, -0.482015, 0.767037,
		0.543375, -0.542338, -0.640791,
		0.724864, 0.688136, 0.032258,
		32.838272, 45.112152, 27.622696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963604, 44.240631, 27.661804>,  <32.330864, 44.630459, 27.600115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963604, 44.240631, 27.661804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024792, 44.613613, 27.792725>,  <33.061504, 44.837402, 27.871277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024792, 44.613613, 27.792725>,  <32.963604, 44.240631, 27.661804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024792, 44.613613, 27.792725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252839, -0.357104, 0.899194,
		0.955339, -0.054795, -0.290387,
		0.152970, 0.932456, 0.327302,
		33.070683, 44.893349, 27.890915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526562, 44.151638, 28.050348>,  <32.963604, 44.240631, 27.661804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526562, 44.151638, 28.050348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430283, 44.516129, 28.184052>,  <33.372513, 44.734821, 28.264273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430283, 44.516129, 28.184052>,  <33.526562, 44.151638, 28.050348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430283, 44.516129, 28.184052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350335, -0.239600, 0.905460,
		0.905167, 0.335048, -0.261562,
		-0.240702, 0.911227, 0.334257,
		33.358070, 44.789497, 28.284328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050266, 44.305325, 28.517632>,  <33.526562, 44.151638, 28.050348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050266, 44.305325, 28.517632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764732, 44.552567, 28.649323>,  <33.593410, 44.700912, 28.728336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764732, 44.552567, 28.649323>,  <34.050266, 44.305325, 28.517632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764732, 44.552567, 28.649323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187226, -0.284562, 0.940197,
		0.674825, 0.732784, 0.087404,
		-0.713833, 0.618104, 0.329226,
		33.550583, 44.737999, 28.748091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283947, 44.557663, 29.103531>,  <34.050266, 44.305325, 28.517632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283947, 44.557663, 29.103531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896965, 44.643227, 29.157616>,  <33.664776, 44.694565, 29.190067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896965, 44.643227, 29.157616>,  <34.283947, 44.557663, 29.103531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896965, 44.643227, 29.157616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109650, -0.127210, 0.985797,
		0.228071, 0.968536, 0.099614,
		-0.967451, 0.213909, 0.135212,
		33.606731, 44.707397, 29.198179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251369, 44.970146, 29.732258>,  <34.283947, 44.557663, 29.103531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251369, 44.970146, 29.732258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882935, 44.830524, 29.663261>,  <33.661873, 44.746754, 29.621864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882935, 44.830524, 29.663261>,  <34.251369, 44.970146, 29.732258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882935, 44.830524, 29.663261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107772, -0.197140, 0.974434,
		-0.374133, 0.916132, 0.143966,
		-0.921091, -0.349053, -0.172490,
		33.606606, 44.725807, 29.611515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837845, 45.290333, 30.238012>,  <34.251369, 44.970146, 29.732258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837845, 45.290333, 30.238012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647327, 44.956207, 30.128176>,  <33.533016, 44.755733, 30.062275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647327, 44.956207, 30.128176>,  <33.837845, 45.290333, 30.238012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647327, 44.956207, 30.128176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190918, -0.206592, 0.959620,
		-0.858311, 0.509482, -0.061078,
		-0.476291, -0.835313, -0.274590,
		33.504440, 44.705612, 30.045799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269463, 45.257118, 30.571489>,  <33.837845, 45.290333, 30.238012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269463, 45.257118, 30.571489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320545, 44.869389, 30.487482>,  <33.351192, 44.636753, 30.437077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320545, 44.869389, 30.487482>,  <33.269463, 45.257118, 30.571489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320545, 44.869389, 30.487482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231595, -0.235043, 0.943991,
		-0.964394, -0.071910, -0.254506,
		0.127702, -0.969321, -0.210020,
		33.358856, 44.578590, 30.424477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835659, 44.945087, 31.011272>,  <33.269463, 45.257118, 30.571489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835659, 44.945087, 31.011272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095818, 44.656208, 30.917110>,  <33.251911, 44.482880, 30.860613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095818, 44.656208, 30.917110>,  <32.835659, 44.945087, 31.011272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095818, 44.656208, 30.917110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143305, -0.421004, 0.895667,
		-0.745957, -0.548802, -0.377313,
		0.650394, -0.722200, -0.235405,
		33.290936, 44.439548, 30.846489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551079, 44.304764, 31.328009>,  <32.835659, 44.945087, 31.011272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551079, 44.304764, 31.328009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936069, 44.219822, 31.260437>,  <33.167065, 44.168858, 31.219894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936069, 44.219822, 31.260437>,  <32.551079, 44.304764, 31.328009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936069, 44.219822, 31.260437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054619, -0.458207, 0.887166,
		-0.265794, -0.863108, -0.429417,
		0.962481, -0.212349, -0.168931,
		33.224815, 44.156116, 31.209757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649952, 43.582420, 31.507603>,  <32.551079, 44.304764, 31.328009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649952, 43.582420, 31.507603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021767, 43.728191, 31.530062>,  <33.244854, 43.815655, 31.543537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021767, 43.728191, 31.530062>,  <32.649952, 43.582420, 31.507603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021767, 43.728191, 31.530062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144906, -0.501052, 0.853199,
		0.339066, -0.784943, -0.518554,
		0.929536, 0.364432, 0.056147,
		33.300629, 43.837521, 31.546906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144962, 43.031517, 31.637669>,  <32.649952, 43.582420, 31.507603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144962, 43.031517, 31.637669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305229, 43.369347, 31.779751>,  <33.401390, 43.572044, 31.865000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305229, 43.369347, 31.779751>,  <33.144962, 43.031517, 31.637669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305229, 43.369347, 31.779751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116208, -0.431394, 0.894648,
		0.908826, -0.317176, -0.270989,
		0.400664, 0.844570, 0.355203,
		33.425430, 43.622719, 31.886312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856758, 42.860626, 31.913923>,  <33.144962, 43.031517, 31.637669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856758, 42.860626, 31.913923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746231, 43.204308, 32.086166>,  <33.679916, 43.410515, 32.189510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746231, 43.204308, 32.086166>,  <33.856758, 42.860626, 31.913923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746231, 43.204308, 32.086166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281359, -0.356101, 0.891083,
		0.918960, 0.367376, -0.143347,
		-0.276316, 0.859201, 0.430607,
		33.663338, 43.462067, 32.215347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377979, 43.093620, 32.310787>,  <33.856758, 42.860626, 31.913923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377979, 43.093620, 32.310787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071384, 43.293034, 32.472752>,  <33.887428, 43.412682, 32.569931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071384, 43.293034, 32.472752>,  <34.377979, 43.093620, 32.310787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071384, 43.293034, 32.472752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218442, -0.390511, 0.894306,
		0.603966, 0.773928, 0.190422,
		-0.766491, 0.498535, 0.404914,
		33.841438, 43.442593, 32.594227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646320, 43.441753, 32.842228>,  <34.377979, 43.093620, 32.310787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646320, 43.441753, 32.842228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262409, 43.448555, 32.954323>,  <34.032063, 43.452637, 33.021580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262409, 43.448555, 32.954323>,  <34.646320, 43.441753, 32.842228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262409, 43.448555, 32.954323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269523, -0.223638, 0.936666,
		0.078596, 0.974524, 0.210061,
		-0.959781, 0.017002, 0.280234,
		33.974476, 43.453655, 33.038391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596161, 43.710789, 33.392635>,  <34.646320, 43.441753, 32.842228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596161, 43.710789, 33.392635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231266, 43.549465, 33.421387>,  <34.012329, 43.452671, 33.438637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231266, 43.549465, 33.421387>,  <34.596161, 43.710789, 33.392635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231266, 43.549465, 33.421387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146617, -0.157588, 0.976560,
		-0.382530, 0.901392, 0.202890,
		-0.912236, -0.403310, 0.071877,
		33.957596, 43.428471, 33.442951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413105, 43.817368, 34.187878>,  <34.596161, 43.710789, 33.392635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413105, 43.817368, 34.187878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144264, 43.557632, 34.045536>,  <33.982960, 43.401791, 33.960129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144264, 43.557632, 34.045536>,  <34.413105, 43.817368, 34.187878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144264, 43.557632, 34.045536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086159, -0.408744, 0.908573,
		-0.735430, 0.641313, 0.218771,
		-0.672101, -0.649342, -0.355858,
		33.942635, 43.362831, 33.938778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926765, 43.787384, 34.771885>,  <34.413105, 43.817368, 34.187878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926765, 43.787384, 34.771885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914066, 43.439705, 34.574505>,  <33.906448, 43.231098, 34.456078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914066, 43.439705, 34.574505>,  <33.926765, 43.787384, 34.771885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914066, 43.439705, 34.574505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044929, -0.491961, 0.869457,
		-0.998486, 0.049772, -0.023435,
		-0.031745, -0.869193, -0.493453,
		33.904541, 43.178947, 34.426468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484051, 43.418533, 35.170692>,  <33.926765, 43.787384, 34.771885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484051, 43.418533, 35.170692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643627, 43.124584, 34.951305>,  <33.739372, 42.948215, 34.819675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643627, 43.124584, 34.951305>,  <33.484051, 43.418533, 35.170692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643627, 43.124584, 34.951305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144552, -0.641042, 0.753770,
		-0.905512, -0.221428, -0.361964,
		0.398940, -0.734870, -0.548463,
		33.763309, 42.904121, 34.786766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126099, 42.771294, 35.291233>,  <33.484051, 43.418533, 35.170692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126099, 42.771294, 35.291233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479202, 42.646111, 35.151062>,  <33.691063, 42.571003, 35.066959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479202, 42.646111, 35.151062>,  <33.126099, 42.771294, 35.291233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479202, 42.646111, 35.151062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010975, -0.759395, 0.650537,
		-0.469702, -0.570420, -0.673796,
		0.882757, -0.312953, -0.350429,
		33.744030, 42.552223, 35.045933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897640, 42.159149, 35.066048>,  <33.126099, 42.771294, 35.291233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897640, 42.159149, 35.066048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294353, 42.134365, 35.110832>,  <33.532379, 42.119495, 35.137703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294353, 42.134365, 35.110832>,  <32.897640, 42.159149, 35.066048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294353, 42.134365, 35.110832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112691, -0.837420, 0.534816,
		0.060619, -0.543036, -0.837518,
		0.991779, -0.061961, 0.111959,
		33.591888, 42.115776, 35.144421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143467, 41.458015, 34.828281>,  <32.897640, 42.159149, 35.066048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143467, 41.458015, 34.828281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446110, 41.605396, 35.044350>,  <33.627697, 41.693825, 35.173988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446110, 41.605396, 35.044350>,  <33.143467, 41.458015, 34.828281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446110, 41.605396, 35.044350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054405, -0.858723, 0.509543,
		0.651598, -0.356139, -0.669765,
		0.756611, 0.368456, 0.540166,
		33.673092, 41.715935, 35.206398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661880, 40.887154, 34.791851>,  <33.143467, 41.458015, 34.828281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661880, 40.887154, 34.791851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779213, 41.121716, 35.093868>,  <33.849613, 41.262451, 35.275078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779213, 41.121716, 35.093868>,  <33.661880, 40.887154, 34.791851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779213, 41.121716, 35.093868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167112, -0.809077, 0.563443,
		0.941291, -0.039101, -0.335325,
		0.293335, 0.586401, 0.755043,
		33.867214, 41.297634, 35.320381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363770, 40.692947, 34.883415>,  <33.661880, 40.887154, 34.791851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363770, 40.692947, 34.883415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207150, 40.832954, 35.223808>,  <34.113178, 40.916958, 35.428043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207150, 40.832954, 35.223808>,  <34.363770, 40.692947, 34.883415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207150, 40.832954, 35.223808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170670, -0.881155, 0.440951,
		0.904191, 0.317892, 0.285278,
		-0.391549, 0.350015, 0.850987,
		34.089684, 40.937958, 35.479103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516071, 40.863777, 34.103962>,  <34.363770, 40.692947, 34.883415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516071, 40.863777, 34.103962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872105, 40.687683, 34.056740>,  <35.085724, 40.582027, 34.028404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872105, 40.687683, 34.056740>,  <34.516071, 40.863777, 34.103962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872105, 40.687683, 34.056740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188659, 0.591638, -0.783819,
		0.414913, 0.675395, 0.609663,
		0.890087, -0.440235, -0.118059,
		35.139130, 40.555611, 34.021320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906555, 41.376785, 34.001064>,  <34.516071, 40.863777, 34.103962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906555, 41.376785, 34.001064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116726, 41.073547, 33.846550>,  <35.242828, 40.891605, 33.753841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116726, 41.073547, 33.846550>,  <34.906555, 41.376785, 34.001064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116726, 41.073547, 33.846550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201764, 0.552075, -0.809014,
		0.826571, 0.347137, 0.443031,
		0.525425, -0.758095, -0.386290,
		35.274353, 40.846119, 33.730663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541653, 41.669048, 33.707535>,  <34.906555, 41.376785, 34.001064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541653, 41.669048, 33.707535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497391, 41.317013, 33.522839>,  <35.470833, 41.105793, 33.412022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497391, 41.317013, 33.522839>,  <35.541653, 41.669048, 33.707535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497391, 41.317013, 33.522839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036619, 0.467889, -0.883028,
		0.993184, -0.080806, -0.084003,
		-0.110658, -0.880086, -0.461741,
		35.464195, 41.052986, 33.384315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941101, 41.737347, 33.233772>,  <35.541653, 41.669048, 33.707535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941101, 41.737347, 33.233772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706234, 41.442528, 33.099907>,  <35.565315, 41.265636, 33.019588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706234, 41.442528, 33.099907>,  <35.941101, 41.737347, 33.233772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706234, 41.442528, 33.099907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065977, 0.368486, -0.927289,
		0.806775, -0.566550, -0.167733,
		-0.587163, -0.737048, -0.334665,
		35.530087, 41.221413, 32.999508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272015, 41.444252, 32.721275>,  <35.941101, 41.737347, 33.233772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272015, 41.444252, 32.721275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895882, 41.335098, 32.639984>,  <35.670200, 41.269608, 32.591209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895882, 41.335098, 32.639984>,  <36.272015, 41.444252, 32.721275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895882, 41.335098, 32.639984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082836, 0.395716, -0.914629,
		0.330003, -0.876895, -0.349503,
		-0.940338, -0.272879, -0.203226,
		35.613781, 41.253235, 32.579018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280880, 41.191334, 32.082802>,  <36.272015, 41.444252, 32.721275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280880, 41.191334, 32.082802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883560, 41.216377, 32.121658>,  <35.645168, 41.231403, 32.144974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883560, 41.216377, 32.121658>,  <36.280880, 41.191334, 32.082802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883560, 41.216377, 32.121658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092417, 0.074407, -0.992936,
		-0.069397, -0.995261, -0.068122,
		-0.993299, 0.062611, 0.097142,
		35.585571, 41.235161, 32.150803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104244, 40.707905, 31.634346>,  <36.280880, 41.191334, 32.082802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104244, 40.707905, 31.634346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796463, 40.959286, 31.679939>,  <35.611794, 41.110115, 31.707294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796463, 40.959286, 31.679939>,  <36.104244, 40.707905, 31.634346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796463, 40.959286, 31.679939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017967, 0.199683, -0.979696,
		-0.638455, -0.751778, -0.164937,
		-0.769449, 0.628455, 0.113982,
		35.565628, 41.147823, 31.714134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620987, 40.655563, 31.037415>,  <36.104244, 40.707905, 31.634346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620987, 40.655563, 31.037415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515808, 41.019272, 31.166458>,  <35.452702, 41.237499, 31.243885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515808, 41.019272, 31.166458>,  <35.620987, 40.655563, 31.037415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515808, 41.019272, 31.166458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036263, 0.343456, -0.938468,
		-0.964128, -0.235072, -0.123284,
		-0.262950, 0.909274, 0.322611,
		35.436924, 41.292053, 31.263241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094448, 41.001160, 30.498604>,  <35.620987, 40.655563, 31.037415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094448, 41.001160, 30.498604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247253, 41.315525, 30.693087>,  <35.338936, 41.504147, 30.809776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247253, 41.315525, 30.693087>,  <35.094448, 41.001160, 30.498604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247253, 41.315525, 30.693087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161601, 0.461194, -0.872459,
		-0.909916, 0.411867, 0.049179,
		0.382018, 0.785917, 0.486206,
		35.361858, 41.551300, 30.838949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734634, 41.558010, 30.186745>,  <35.094448, 41.001160, 30.498604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734634, 41.558010, 30.186745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068687, 41.702206, 30.352926>,  <35.269119, 41.788723, 30.452635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068687, 41.702206, 30.352926>,  <34.734634, 41.558010, 30.186745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068687, 41.702206, 30.352926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202518, 0.500731, -0.841578,
		-0.511410, 0.786967, 0.345172,
		0.835132, 0.360488, 0.415454,
		35.319225, 41.810352, 30.477562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730755, 42.239578, 30.081722>,  <34.734634, 41.558010, 30.186745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730755, 42.239578, 30.081722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120090, 42.167950, 30.139059>,  <35.353691, 42.124973, 30.173460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120090, 42.167950, 30.139059>,  <34.730755, 42.239578, 30.081722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120090, 42.167950, 30.139059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213609, 0.479961, -0.850887,
		0.083573, 0.858819, 0.505416,
		0.973338, -0.179073, 0.143340,
		35.412090, 42.114227, 30.182060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200848, 42.948505, 29.928507>,  <34.730755, 42.239578, 30.081722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200848, 42.948505, 29.928507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437347, 42.627338, 29.898178>,  <35.579247, 42.434639, 29.879982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437347, 42.627338, 29.898178>,  <35.200848, 42.948505, 29.928507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437347, 42.627338, 29.898178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419879, 0.386725, -0.821064,
		0.688566, 0.453620, 0.565779,
		0.591252, -0.802915, -0.075820,
		35.614723, 42.386463, 29.875431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884090, 43.140610, 29.984295>,  <35.200848, 42.948505, 29.928507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884090, 43.140610, 29.984295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920956, 42.782681, 29.809576>,  <35.943077, 42.567921, 29.704744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920956, 42.782681, 29.809576>,  <35.884090, 43.140610, 29.984295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920956, 42.782681, 29.809576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509107, 0.419341, -0.751640,
		0.855754, -0.153100, 0.494211,
		0.092166, -0.894826, -0.436797,
		35.948605, 42.514233, 29.678537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589470, 43.020527, 29.848915>,  <35.884090, 43.140610, 29.984295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589470, 43.020527, 29.848915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376934, 42.794895, 29.596094>,  <36.249413, 42.659515, 29.444401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376934, 42.794895, 29.596094>,  <36.589470, 43.020527, 29.848915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376934, 42.794895, 29.596094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491236, 0.402698, -0.772348,
		0.690194, -0.720865, 0.063128,
		-0.531338, -0.564081, -0.632054,
		36.217533, 42.625671, 29.406477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978519, 42.946281, 29.321198>,  <36.589470, 43.020527, 29.848915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978519, 42.946281, 29.321198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654842, 42.818356, 29.124050>,  <36.460636, 42.741600, 29.005762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654842, 42.818356, 29.124050>,  <36.978519, 42.946281, 29.321198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654842, 42.818356, 29.124050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257840, 0.560481, -0.787006,
		0.527933, -0.763927, -0.371083,
		-0.809200, -0.319807, -0.492867,
		36.412083, 42.722412, 28.976189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158657, 42.746239, 28.596382>,  <36.978519, 42.946281, 29.321198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158657, 42.746239, 28.596382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763924, 42.810875, 28.593485>,  <36.527084, 42.849655, 28.591747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763924, 42.810875, 28.593485>,  <37.158657, 42.746239, 28.596382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763924, 42.810875, 28.593485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066980, 0.367475, -0.927618,
		-0.147229, -0.915888, -0.373459,
		-0.986832, 0.161587, -0.007243,
		36.467873, 42.859352, 28.591312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929741, 42.584225, 27.974382>,  <37.158657, 42.746239, 28.596382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929741, 42.584225, 27.974382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635468, 42.815193, 28.116003>,  <36.458904, 42.953773, 28.200975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635468, 42.815193, 28.116003>,  <36.929741, 42.584225, 27.974382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635468, 42.815193, 28.116003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164032, 0.355278, -0.920256,
		-0.657160, -0.735096, -0.166658,
		-0.735686, 0.577418, 0.354054,
		36.414761, 42.988419, 28.222219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272827, 42.439716, 27.526905>,  <36.929741, 42.584225, 27.974382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272827, 42.439716, 27.526905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232056, 42.794491, 27.707108>,  <36.207592, 43.007355, 27.815229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232056, 42.794491, 27.707108>,  <36.272827, 42.439716, 27.526905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232056, 42.794491, 27.707108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228080, 0.419964, -0.878413,
		-0.968293, -0.192284, 0.159487,
		-0.101926, 0.886937, 0.450504,
		36.201477, 43.060574, 27.842258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723465, 42.718800, 27.239265>,  <36.272827, 42.439716, 27.526905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723465, 42.718800, 27.239265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882023, 43.043343, 27.411114>,  <35.977158, 43.238068, 27.514223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882023, 43.043343, 27.411114>,  <35.723465, 42.718800, 27.239265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882023, 43.043343, 27.411114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444564, 0.579063, -0.683410,
		-0.803267, 0.079903, 0.590236,
		0.396390, 0.811358, 0.429620,
		36.000938, 43.286751, 27.539999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165390, 43.148392, 27.553270>,  <35.723465, 42.718800, 27.239265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165390, 43.148392, 27.553270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470238, 43.397121, 27.481153>,  <35.653149, 43.546360, 27.437883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470238, 43.397121, 27.481153>,  <35.165390, 43.148392, 27.553270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470238, 43.397121, 27.481153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581450, 0.534894, -0.613029,
		-0.284760, 0.572033, 0.769214,
		0.762121, 0.621825, -0.180292,
		35.698875, 43.583668, 27.427067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900524, 43.772705, 27.489531>,  <35.165390, 43.148392, 27.553270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900524, 43.772705, 27.489531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252155, 43.814781, 27.303560>,  <35.463135, 43.840027, 27.191978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252155, 43.814781, 27.303560>,  <34.900524, 43.772705, 27.489531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252155, 43.814781, 27.303560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400215, 0.692703, -0.599993,
		0.258941, 0.713511, 0.651039,
		0.879078, 0.105193, -0.464926,
		35.515877, 43.846340, 27.164082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003098, 44.602661, 27.316553>,  <34.900524, 43.772705, 27.489531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003098, 44.602661, 27.316553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254410, 44.407696, 27.074005>,  <35.405197, 44.290714, 26.928476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254410, 44.407696, 27.074005>,  <35.003098, 44.602661, 27.316553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254410, 44.407696, 27.074005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431171, 0.430606, -0.792887,
		0.647572, 0.759608, 0.060384,
		0.628285, -0.487415, -0.606369,
		35.442894, 44.261471, 26.892094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257294, 45.018330, 26.820837>,  <35.003098, 44.602661, 27.316553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257294, 45.018330, 26.820837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277630, 44.646000, 26.676067>,  <35.289833, 44.422604, 26.589205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277630, 44.646000, 26.676067>,  <35.257294, 45.018330, 26.820837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277630, 44.646000, 26.676067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365361, 0.319937, -0.874158,
		0.929477, 0.176676, -0.323819,
		0.050841, -0.930820, -0.361924,
		35.292881, 44.366753, 26.567490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478901, 45.062904, 26.093349>,  <35.257294, 45.018330, 26.820837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478901, 45.062904, 26.093349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319664, 44.696095, 26.103111>,  <35.224121, 44.476009, 26.108969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319664, 44.696095, 26.103111>,  <35.478901, 45.062904, 26.093349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319664, 44.696095, 26.103111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485644, 0.188103, -0.853679,
		0.778251, -0.351693, -0.520228,
		-0.398090, -0.917022, 0.024406,
		35.200237, 44.420986, 26.110434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343864, 44.825909, 25.299845>,  <35.478901, 45.062904, 26.093349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343864, 44.825909, 25.299845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105667, 44.609447, 25.537344>,  <34.962749, 44.479572, 25.679844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105667, 44.609447, 25.537344>,  <35.343864, 44.825909, 25.299845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105667, 44.609447, 25.537344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725151, 0.044006, -0.687182,
		0.345744, -0.839771, -0.418624,
		-0.595498, -0.541154, 0.593746,
		34.927017, 44.447102, 25.715467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259132, 44.121407, 25.043869>,  <35.343864, 44.825909, 25.299845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259132, 44.121407, 25.043869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945278, 44.216240, 25.273005>,  <34.756966, 44.273140, 25.410486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945278, 44.216240, 25.273005>,  <35.259132, 44.121407, 25.043869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945278, 44.216240, 25.273005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615329, -0.185060, -0.766240,
		-0.075654, -0.953700, 0.291089,
		-0.784632, 0.237084, 0.572839,
		34.709888, 44.287365, 25.444857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890545, 43.596676, 24.910513>,  <35.259132, 44.121407, 25.043869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890545, 43.596676, 24.910513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599678, 43.824333, 25.064034>,  <34.425159, 43.960926, 25.156147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599678, 43.824333, 25.064034>,  <34.890545, 43.596676, 24.910513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599678, 43.824333, 25.064034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587548, -0.226893, -0.776728,
		-0.354989, -0.790312, 0.499390,
		-0.727165, 0.569146, 0.383802,
		34.381527, 43.995075, 25.179174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318504, 43.200016, 24.943857>,  <34.890545, 43.596676, 24.910513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318504, 43.200016, 24.943857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179951, 43.575089, 24.954964>,  <34.096821, 43.800133, 24.961628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179951, 43.575089, 24.954964>,  <34.318504, 43.200016, 24.943857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179951, 43.575089, 24.954964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627588, -0.209630, -0.749792,
		-0.697248, -0.277138, 0.661090,
		-0.346380, 0.937683, 0.027764,
		34.076038, 43.856392, 24.963293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580990, 43.100914, 24.718830>,  <34.318504, 43.200016, 24.943857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580990, 43.100914, 24.718830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701931, 43.477238, 24.657562>,  <33.774494, 43.703033, 24.620802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701931, 43.477238, 24.657562>,  <33.580990, 43.100914, 24.718830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701931, 43.477238, 24.657562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673857, 0.097314, -0.732426,
		-0.674168, 0.324663, 0.663394,
		0.302349, 0.940810, -0.153170,
		33.792637, 43.759480, 24.611610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009380, 43.469734, 24.603096>,  <33.580990, 43.100914, 24.718830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009380, 43.469734, 24.603096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300968, 43.683758, 24.432302>,  <33.475922, 43.812172, 24.329826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300968, 43.683758, 24.432302>,  <33.009380, 43.469734, 24.603096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300968, 43.683758, 24.432302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617578, 0.244964, -0.747389,
		-0.295303, 0.808519, 0.509012,
		0.728967, 0.535061, -0.426985,
		33.519657, 43.844276, 24.304207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716057, 44.085751, 24.461142>,  <33.009380, 43.469734, 24.603096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716057, 44.085751, 24.461142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045826, 44.109116, 24.235960>,  <33.243687, 44.123135, 24.100851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045826, 44.109116, 24.235960>,  <32.716057, 44.085751, 24.461142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045826, 44.109116, 24.235960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554928, 0.278995, -0.783720,
		0.111286, 0.958515, 0.262422,
		0.824421, 0.058408, -0.562955,
		33.293152, 44.126637, 24.067074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687794, 44.780704, 24.213072>,  <32.716057, 44.085751, 24.461142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687794, 44.780704, 24.213072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882935, 44.528404, 23.971691>,  <33.000019, 44.377022, 23.826862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882935, 44.528404, 23.971691>,  <32.687794, 44.780704, 24.213072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882935, 44.528404, 23.971691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468782, 0.393852, -0.790648,
		0.736375, 0.668603, -0.103546,
		0.487848, -0.630754, -0.603452,
		33.029289, 44.339180, 23.790655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603302, 45.091866, 23.435579>,  <32.687794, 44.780704, 24.213072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603302, 45.091866, 23.435579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741882, 44.721252, 23.376925>,  <32.825031, 44.498882, 23.341732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741882, 44.721252, 23.376925>,  <32.603302, 45.091866, 23.435579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741882, 44.721252, 23.376925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586258, -0.091829, -0.804903,
		0.732305, 0.364831, -0.575003,
		0.346455, -0.926534, -0.146638,
		32.845818, 44.443291, 23.332933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907822, 45.032356, 22.785225>,  <32.603302, 45.091866, 23.435579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907822, 45.032356, 22.785225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809429, 44.656475, 22.880264>,  <32.750393, 44.430946, 22.937288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809429, 44.656475, 22.880264>,  <32.907822, 45.032356, 22.785225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809429, 44.656475, 22.880264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548780, -0.067040, -0.833275,
		0.798959, -0.335359, -0.499199,
		-0.245980, -0.939702, 0.237600,
		32.735634, 44.374565, 22.951544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995026, 44.656738, 22.175337>,  <32.907822, 45.032356, 22.785225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995026, 44.656738, 22.175337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776424, 44.416656, 22.408949>,  <32.645264, 44.272606, 22.549116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776424, 44.416656, 22.408949>,  <32.995026, 44.656738, 22.175337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776424, 44.416656, 22.408949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549364, -0.269425, -0.790955,
		0.632085, -0.753105, -0.182488,
		-0.546505, -0.600203, 0.584028,
		32.612473, 44.236595, 22.584158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011173, 44.089237, 21.941408>,  <32.995026, 44.656738, 22.175337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011173, 44.089237, 21.941408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668499, 44.075542, 22.147287>,  <32.462894, 44.067326, 22.270815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668499, 44.075542, 22.147287>,  <33.011173, 44.089237, 21.941408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668499, 44.075542, 22.147287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514393, -0.017876, -0.857368,
		0.038563, -0.999254, -0.002302,
		-0.856687, -0.034247, 0.514699,
		32.411491, 44.065269, 22.301697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605949, 43.745644, 21.501759>,  <33.011173, 44.089237, 21.941408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605949, 43.745644, 21.501759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328419, 43.906712, 21.740580>,  <32.161900, 44.003353, 21.883873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328419, 43.906712, 21.740580>,  <32.605949, 43.745644, 21.501759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328419, 43.906712, 21.740580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638363, 0.039847, -0.768703,
		-0.333322, -0.914479, 0.229401,
		-0.693822, 0.402666, 0.597052,
		32.120274, 44.027512, 21.919695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977699, 43.350929, 21.421473>,  <32.605949, 43.745644, 21.501759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977699, 43.350929, 21.421473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931324, 43.736168, 21.518631>,  <31.903498, 43.967312, 21.576927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931324, 43.736168, 21.518631>,  <31.977699, 43.350929, 21.421473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931324, 43.736168, 21.518631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585629, 0.131235, -0.799885,
		-0.802245, -0.234986, 0.548803,
		-0.115939, 0.963099, 0.242897,
		31.896542, 44.025097, 21.591499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941137, 42.879700, 20.833004>,  <31.977699, 43.350929, 21.421473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941137, 42.879700, 20.833004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161835, 42.555729, 20.753401>,  <32.294254, 42.361347, 20.705639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161835, 42.555729, 20.753401>,  <31.941137, 42.879700, 20.833004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161835, 42.555729, 20.753401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504884, 0.134435, 0.852654,
		-0.663830, -0.570923, 0.483091,
		0.551744, -0.809923, -0.199008,
		32.327358, 42.312752, 20.693699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970743, 42.515305, 21.458284>,  <31.941137, 42.879700, 20.833004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970743, 42.515305, 21.458284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299206, 42.391762, 21.266321>,  <32.496284, 42.317635, 21.151144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299206, 42.391762, 21.266321>,  <31.970743, 42.515305, 21.458284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299206, 42.391762, 21.266321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485803, -0.063010, 0.871794,
		-0.299499, -0.949019, 0.098303,
		0.821155, -0.308857, -0.479908,
		32.545551, 42.299107, 21.122349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370068, 42.478806, 21.951195>,  <31.970743, 42.515305, 21.458284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370068, 42.478806, 21.951195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630363, 42.380077, 21.663967>,  <32.786541, 42.320839, 21.491631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630363, 42.380077, 21.663967>,  <32.370068, 42.478806, 21.951195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630363, 42.380077, 21.663967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685046, -0.217043, 0.695417,
		-0.327497, -0.944442, 0.027847,
		0.650737, -0.246823, -0.718067,
		32.825584, 42.306030, 21.448547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629822, 41.839966, 22.181793>,  <32.370068, 42.478806, 21.951195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629822, 41.839966, 22.181793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887794, 41.983387, 21.911827>,  <33.042576, 42.069439, 21.749847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887794, 41.983387, 21.911827>,  <32.629822, 41.839966, 22.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887794, 41.983387, 21.911827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764043, -0.322647, 0.558692,
		-0.017440, -0.875980, -0.482032,
		0.644929, 0.358549, -0.674914,
		33.081272, 42.090950, 21.709352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095421, 41.316959, 21.879120>,  <32.629822, 41.839966, 22.181793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095421, 41.316959, 21.879120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272499, 41.673836, 21.843317>,  <33.378746, 41.887962, 21.821835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272499, 41.673836, 21.843317>,  <33.095421, 41.316959, 21.879120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272499, 41.673836, 21.843317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794883, -0.344286, 0.499629,
		0.414949, -0.292331, -0.861603,
		0.442695, 0.892194, -0.089508,
		33.405308, 41.941494, 21.816465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787487, 41.215626, 21.741602>,  <33.095421, 41.316959, 21.879120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787487, 41.215626, 21.741602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812408, 41.602020, 21.841991>,  <33.827362, 41.833858, 21.902225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812408, 41.602020, 21.841991>,  <33.787487, 41.215626, 21.741602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812408, 41.602020, 21.841991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869653, -0.175929, 0.461251,
		0.489716, 0.189524, -0.851034,
		0.062304, 0.965986, 0.250975,
		33.831100, 41.891815, 21.917284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522503, 41.313068, 21.698822>,  <33.787487, 41.215626, 21.741602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522503, 41.313068, 21.698822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377960, 41.606377, 21.929207>,  <34.291233, 41.782360, 22.067438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377960, 41.606377, 21.929207>,  <34.522503, 41.313068, 21.698822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377960, 41.606377, 21.929207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820946, -0.042690, 0.569408,
		0.442118, 0.678595, -0.586550,
		-0.361358, 0.733271, 0.575964,
		34.269554, 41.826359, 22.101995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084835, 41.773640, 21.795280>,  <34.522503, 41.313068, 21.698822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084835, 41.773640, 21.795280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836121, 41.854599, 22.097916>,  <34.686893, 41.903175, 22.279497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836121, 41.854599, 22.097916>,  <35.084835, 41.773640, 21.795280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836121, 41.854599, 22.097916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767474, -0.035094, 0.640118,
		0.156109, 0.978675, -0.133512,
		-0.621782, 0.202395, 0.756587,
		34.649586, 41.915318, 22.324892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467911, 42.133293, 22.262653>,  <35.084835, 41.773640, 21.795280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467911, 42.133293, 22.262653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155914, 42.042324, 22.495853>,  <34.968716, 41.987743, 22.635773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155914, 42.042324, 22.495853>,  <35.467911, 42.133293, 22.262653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155914, 42.042324, 22.495853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611665, -0.080275, 0.787033,
		-0.132188, 0.970482, 0.201721,
		-0.779995, -0.227422, 0.582998,
		34.921917, 41.974098, 22.670753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528969, 42.492687, 22.869061>,  <35.467911, 42.133293, 22.262653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528969, 42.492687, 22.869061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279121, 42.195194, 22.964319>,  <35.129211, 42.016697, 23.021475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279121, 42.195194, 22.964319>,  <35.528969, 42.492687, 22.869061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279121, 42.195194, 22.964319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536286, -0.186834, 0.823098,
		-0.567670, 0.641837, 0.515553,
		-0.624618, -0.743732, 0.238148,
		35.091736, 41.972076, 23.035763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246433, 42.593098, 23.666670>,  <35.528969, 42.492687, 22.869061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246433, 42.593098, 23.666670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251347, 42.214840, 23.536678>,  <35.254295, 41.987885, 23.458683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251347, 42.214840, 23.536678>,  <35.246433, 42.593098, 23.666670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251347, 42.214840, 23.536678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448543, -0.285258, 0.847017,
		-0.893677, -0.156169, 0.420657,
		0.012282, -0.945642, -0.324977,
		35.255032, 41.931149, 23.439186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993610, 42.215919, 24.198280>,  <35.246433, 42.593098, 23.666670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993610, 42.215919, 24.198280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195320, 41.948956, 23.979092>,  <35.316345, 41.788776, 23.847578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195320, 41.948956, 23.979092>,  <34.993610, 42.215919, 24.198280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195320, 41.948956, 23.979092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330365, -0.437189, 0.836496,
		-0.797850, -0.602856, 0.000023,
		0.504277, -0.667406, -0.547974,
		35.346603, 41.748734, 23.814699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735683, 41.468338, 24.232178>,  <34.993610, 42.215919, 24.198280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735683, 41.468338, 24.232178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128891, 41.494659, 24.163658>,  <35.364815, 41.510452, 24.122547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128891, 41.494659, 24.163658>,  <34.735683, 41.468338, 24.232178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128891, 41.494659, 24.163658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183459, -0.332432, 0.925112,
		0.003929, -0.940829, -0.338859,
		0.983019, 0.065801, -0.171298,
		35.423798, 41.514400, 24.112268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977001, 40.736801, 24.377207>,  <34.735683, 41.468338, 24.232178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977001, 40.736801, 24.377207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291855, 40.979294, 24.422640>,  <35.480766, 41.124790, 24.449900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291855, 40.979294, 24.422640>,  <34.977001, 40.736801, 24.377207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291855, 40.979294, 24.422640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300676, -0.537952, 0.787529,
		0.538523, -0.585743, -0.605721,
		0.787138, 0.606228, 0.113581,
		35.527996, 41.161163, 24.456715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540543, 40.278099, 24.609653>,  <34.977001, 40.736801, 24.377207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540543, 40.278099, 24.609653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637718, 40.653397, 24.708183>,  <35.696026, 40.878574, 24.767302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637718, 40.653397, 24.708183>,  <35.540543, 40.278099, 24.609653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637718, 40.653397, 24.708183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349563, -0.321549, 0.880007,
		0.904867, -0.127686, -0.406094,
		0.242943, 0.938245, 0.246325,
		35.710602, 40.934872, 24.782082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182243, 40.174805, 24.922119>,  <35.540543, 40.278099, 24.609653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182243, 40.174805, 24.922119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055580, 40.539547, 25.026615>,  <35.979580, 40.758392, 25.089314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055580, 40.539547, 25.026615>,  <36.182243, 40.174805, 24.922119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055580, 40.539547, 25.026615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284978, -0.171232, 0.943116,
		0.904717, 0.373097, -0.205635,
		-0.316662, 0.911854, 0.261241,
		35.960583, 40.813103, 25.104988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780121, 40.668873, 25.126652>,  <36.182243, 40.174805, 24.922119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780121, 40.668873, 25.126652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441418, 40.779503, 25.308426>,  <36.238197, 40.845882, 25.417490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441418, 40.779503, 25.308426>,  <36.780121, 40.668873, 25.126652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441418, 40.779503, 25.308426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452235, -0.075629, 0.888687,
		0.280158, 0.958011, -0.061038,
		-0.846756, 0.276576, 0.454434,
		36.187389, 40.862476, 25.444756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992527, 41.112991, 25.641005>,  <36.780121, 40.668873, 25.126652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992527, 41.112991, 25.641005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623425, 40.997879, 25.743538>,  <36.401962, 40.928810, 25.805058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623425, 40.997879, 25.743538>,  <36.992527, 41.112991, 25.641005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623425, 40.997879, 25.743538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228122, 0.128225, 0.965152,
		-0.310624, 0.949072, -0.052670,
		-0.922753, -0.287784, 0.256334,
		36.346600, 40.911545, 25.820438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967979, 41.326050, 26.248888>,  <36.992527, 41.112991, 25.641005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967979, 41.326050, 26.248888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618942, 41.130718, 26.253212>,  <36.409519, 41.013519, 26.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618942, 41.130718, 26.253212>,  <36.967979, 41.326050, 26.248888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618942, 41.130718, 26.253212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044884, -0.058126, 0.997300,
		-0.486386, 0.870719, 0.072638,
		-0.872590, -0.488333, 0.010810,
		36.357166, 40.984219, 26.256454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523228, 41.724133, 26.659777>,  <36.967979, 41.326050, 26.248888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523228, 41.724133, 26.659777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394524, 41.345428, 26.655340>,  <36.317303, 41.118206, 26.652679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394524, 41.345428, 26.655340>,  <36.523228, 41.724133, 26.659777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394524, 41.345428, 26.655340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245498, -0.094733, 0.964757,
		-0.914442, 0.307694, 0.262908,
		-0.321756, -0.946758, -0.011089,
		36.297997, 41.061401, 26.652014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002117, 41.606983, 27.229301>,  <36.523228, 41.724133, 26.659777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002117, 41.606983, 27.229301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142723, 41.241581, 27.147373>,  <36.227085, 41.022339, 27.098215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142723, 41.241581, 27.147373>,  <36.002117, 41.606983, 27.229301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142723, 41.241581, 27.147373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198271, -0.141179, 0.969926,
		-0.914947, -0.381551, 0.131495,
		0.351512, -0.913503, -0.204822,
		36.248177, 40.967529, 27.085926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739948, 41.087444, 27.831469>,  <36.002117, 41.606983, 27.229301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739948, 41.087444, 27.831469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063362, 40.924530, 27.661579>,  <36.257412, 40.826782, 27.559647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063362, 40.924530, 27.661579>,  <35.739948, 41.087444, 27.831469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063362, 40.924530, 27.661579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323242, -0.295717, 0.898925,
		-0.491715, -0.864102, -0.107447,
		0.808537, -0.407283, -0.424722,
		36.305923, 40.802345, 27.534163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733662, 40.419777, 28.119892>,  <35.739948, 41.087444, 27.831469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733662, 40.419777, 28.119892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108829, 40.471203, 27.991034>,  <36.333931, 40.502060, 27.913719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108829, 40.471203, 27.991034>,  <35.733662, 40.419777, 28.119892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108829, 40.471203, 27.991034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346794, -0.364766, 0.864106,
		-0.006411, -0.922180, -0.386708,
		0.937920, 0.128568, -0.322145,
		36.390205, 40.509773, 27.894390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093067, 39.817055, 28.339788>,  <35.733662, 40.419777, 28.119892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093067, 39.817055, 28.339788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375599, 40.085613, 28.250051>,  <36.545116, 40.246746, 28.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375599, 40.085613, 28.250051>,  <36.093067, 39.817055, 28.339788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375599, 40.085613, 28.250051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471002, -0.209159, 0.856977,
		0.528445, -0.710974, -0.463962,
		0.706331, 0.671393, -0.224341,
		36.587498, 40.287029, 28.182749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831001, 39.495071, 28.327108>,  <36.093067, 39.817055, 28.339788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831001, 39.495071, 28.327108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865643, 39.885571, 28.406546>,  <36.886429, 40.119869, 28.454208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865643, 39.885571, 28.406546>,  <36.831001, 39.495071, 28.327108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865643, 39.885571, 28.406546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673093, -0.204301, 0.710779,
		0.734470, 0.072114, -0.674799,
		0.086605, 0.976248, 0.198592,
		36.891624, 40.178444, 28.466124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506821, 39.552277, 28.433462>,  <36.831001, 39.495071, 28.327108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506821, 39.552277, 28.433462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359921, 39.874687, 28.619129>,  <37.271778, 40.068134, 28.730530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359921, 39.874687, 28.619129>,  <37.506821, 39.552277, 28.433462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359921, 39.874687, 28.619129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536852, -0.223829, 0.813444,
		0.759549, 0.547929, -0.350513,
		-0.367254, 0.806024, 0.464165,
		37.249744, 40.116493, 28.758379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123032, 39.814671, 28.856907>,  <37.506821, 39.552277, 28.433462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123032, 39.814671, 28.856907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804474, 39.985550, 29.028139>,  <37.613338, 40.088078, 29.130878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804474, 39.985550, 29.028139>,  <38.123032, 39.814671, 28.856907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804474, 39.985550, 29.028139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384661, -0.188392, 0.903628,
		0.466675, 0.884314, -0.014291,
		-0.796399, 0.427197, 0.428079,
		37.565556, 40.113708, 29.156563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401257, 40.312729, 29.385857>,  <38.123032, 39.814671, 28.856907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401257, 40.312729, 29.385857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017750, 40.277431, 29.493916>,  <37.787647, 40.256252, 29.558750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017750, 40.277431, 29.493916>,  <38.401257, 40.312729, 29.385857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017750, 40.277431, 29.493916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276276, -0.066609, 0.958767,
		-0.066609, 0.993870, 0.088241,
		-0.958767, -0.088241, 0.270146,
		37.730118, 40.250957, 29.574959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304104, 40.775887, 29.874603>,  <38.401257, 40.312729, 29.385857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304104, 40.775887, 29.874603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018723, 40.501419, 29.931393>,  <37.847496, 40.336739, 29.965466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018723, 40.501419, 29.931393>,  <38.304104, 40.775887, 29.874603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018723, 40.501419, 29.931393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134060, 0.065202, 0.988826,
		-0.687761, 0.724512, 0.045469,
		-0.713451, -0.686172, 0.141971,
		37.804688, 40.295567, 29.973984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041893, 40.937218, 30.508755>,  <38.304104, 40.775887, 29.874603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041893, 40.937218, 30.508755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910870, 40.560925, 30.473597>,  <37.832256, 40.335148, 30.452501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910870, 40.560925, 30.473597>,  <38.041893, 40.937218, 30.508755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910870, 40.560925, 30.473597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161781, -0.147498, 0.975741,
		-0.930878, 0.305390, 0.200507,
		-0.327556, -0.940735, -0.087896,
		37.812603, 40.278706, 30.447227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496086, 40.827984, 30.885147>,  <38.041893, 40.937218, 30.508755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496086, 40.827984, 30.885147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641491, 40.457462, 30.845497>,  <37.728733, 40.235149, 30.821707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641491, 40.457462, 30.845497>,  <37.496086, 40.827984, 30.885147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641491, 40.457462, 30.845497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024148, -0.096998, 0.994991,
		-0.931277, -0.364083, -0.012891,
		0.363510, -0.926302, -0.099124,
		37.750546, 40.179573, 30.815760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343140, 40.490898, 31.522650>,  <37.496086, 40.827984, 30.885147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343140, 40.490898, 31.522650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621571, 40.253670, 31.360792>,  <37.788631, 40.111332, 31.263678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621571, 40.253670, 31.360792>,  <37.343140, 40.490898, 31.522650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621571, 40.253670, 31.360792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385520, -0.166706, 0.907515,
		-0.605679, -0.787702, 0.112600,
		0.696080, -0.593072, -0.404645,
		37.830395, 40.075748, 31.239399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396683, 39.997963, 32.013721>,  <37.343140, 40.490898, 31.522650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396683, 39.997963, 32.013721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717072, 39.969215, 31.775972>,  <37.909306, 39.951969, 31.633324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717072, 39.969215, 31.775972>,  <37.396683, 39.997963, 32.013721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717072, 39.969215, 31.775972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581640, -0.141908, 0.800972,
		-0.141908, -0.987268, -0.071865,
		-0.800972, 0.071865, 0.594372,
		37.957363, 39.947655, 31.597660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657738, 39.412758, 32.226257>,  <37.396683, 39.997963, 32.013721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657738, 39.412758, 32.226257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956779, 39.612900, 32.051563>,  <38.136204, 39.732983, 31.946749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956779, 39.612900, 32.051563>,  <37.657738, 39.412758, 32.226257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956779, 39.612900, 32.051563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607581, -0.249713, 0.753982,
		0.268198, -0.829031, -0.490690,
		0.747607, 0.500350, -0.436731,
		38.181061, 39.763004, 31.920544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226395, 38.969490, 32.028072>,  <37.657738, 39.412758, 32.226257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226395, 38.969490, 32.028072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381004, 39.335144, 32.077011>,  <38.473770, 39.554535, 32.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381004, 39.335144, 32.077011>,  <38.226395, 38.969490, 32.028072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381004, 39.335144, 32.077011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569384, -0.340870, 0.748070,
		0.725537, -0.219483, -0.652245,
		0.386520, 0.914130, 0.122344,
		38.496960, 39.609383, 32.113712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971279, 38.879883, 32.238064>,  <38.226395, 38.969490, 32.028072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971279, 38.879883, 32.238064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865883, 39.247955, 32.353878>,  <38.802647, 39.468800, 32.423367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865883, 39.247955, 32.353878>,  <38.971279, 38.879883, 32.238064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865883, 39.247955, 32.353878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673248, -0.039540, 0.738358,
		0.690875, 0.389479, -0.609095,
		-0.263492, 0.920186, 0.289534,
		38.786835, 39.524010, 32.440739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599365, 39.273548, 32.473709>,  <38.971279, 38.879883, 32.238064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599365, 39.273548, 32.473709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308487, 39.493324, 32.638290>,  <39.133961, 39.625191, 32.737038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308487, 39.493324, 32.638290>,  <39.599365, 39.273548, 32.473709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308487, 39.493324, 32.638290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548130, 0.103985, 0.829904,
		0.413201, 0.829035, -0.376785,
		-0.727199, 0.549444, 0.411452,
		39.090328, 39.658157, 32.761726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896133, 39.814129, 32.801193>,  <39.599365, 39.273548, 32.473709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896133, 39.814129, 32.801193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537792, 39.773426, 32.974213>,  <39.322788, 39.749004, 33.078022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537792, 39.773426, 32.974213>,  <39.896133, 39.814129, 32.801193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537792, 39.773426, 32.974213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421343, 0.114664, 0.899623,
		-0.141142, 0.988179, -0.059846,
		-0.895851, -0.101759, 0.432546,
		39.269035, 39.742897, 33.103977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892101, 40.302273, 33.344296>,  <39.896133, 39.814129, 32.801193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892101, 40.302273, 33.344296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617477, 40.023346, 33.426651>,  <39.452705, 39.855991, 33.476067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617477, 40.023346, 33.426651>,  <39.892101, 40.302273, 33.344296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617477, 40.023346, 33.426651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402379, -0.128542, 0.906404,
		-0.605584, 0.705143, 0.368836,
		-0.686556, -0.697316, 0.205892,
		39.411510, 39.814152, 33.488419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696346, 40.331345, 34.062992>,  <39.892101, 40.302273, 33.344296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696346, 40.331345, 34.062992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538002, 39.973648, 33.979443>,  <39.442993, 39.759029, 33.929314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538002, 39.973648, 33.979443>,  <39.696346, 40.331345, 34.062992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538002, 39.973648, 33.979443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238202, -0.319659, 0.917103,
		-0.886878, 0.313293, 0.339551,
		-0.395863, -0.894240, -0.208871,
		39.419243, 39.705376, 33.916782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341198, 40.135544, 34.636196>,  <39.696346, 40.331345, 34.062992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341198, 40.135544, 34.636196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440132, 39.810112, 34.425709>,  <39.499493, 39.614853, 34.299416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440132, 39.810112, 34.425709>,  <39.341198, 40.135544, 34.636196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440132, 39.810112, 34.425709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406094, -0.406050, 0.818664,
		-0.879722, -0.416183, 0.229959,
		0.247339, -0.813582, -0.526221,
		39.514336, 39.566036, 34.267841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996010, 39.572296, 34.907608>,  <39.341198, 40.135544, 34.636196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996010, 39.572296, 34.907608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322948, 39.430901, 34.725620>,  <39.519112, 39.346066, 34.616428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322948, 39.430901, 34.725620>,  <38.996010, 39.572296, 34.907608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322948, 39.430901, 34.725620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241443, -0.506844, 0.827535,
		-0.523130, -0.786226, -0.328913,
		0.817337, -0.353495, -0.454974,
		39.568150, 39.324856, 34.589130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016464, 38.933365, 35.204258>,  <38.996010, 39.572296, 34.907608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016464, 38.933365, 35.204258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379108, 38.990810, 35.045547>,  <39.596695, 39.025276, 34.950321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379108, 38.990810, 35.045547>,  <39.016464, 38.933365, 35.204258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379108, 38.990810, 35.045547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421365, -0.358256, 0.833129,
		-0.022499, -0.922512, -0.385313,
		0.906612, 0.143613, -0.396775,
		39.651093, 39.033894, 34.926514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394386, 38.330093, 35.389717>,  <39.016464, 38.933365, 35.204258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394386, 38.330093, 35.389717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613571, 38.656830, 35.317596>,  <39.745083, 38.852871, 35.274326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613571, 38.656830, 35.317596>,  <39.394386, 38.330093, 35.389717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613571, 38.656830, 35.317596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541774, -0.182328, 0.820511,
		0.637357, -0.547286, -0.542453,
		0.547958, 0.816845, -0.180297,
		39.777958, 38.901882, 35.263508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942616, 38.102943, 35.553322>,  <39.394386, 38.330093, 35.389717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942616, 38.102943, 35.553322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019627, 38.492157, 35.604122>,  <40.065834, 38.725685, 35.634602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019627, 38.492157, 35.604122>,  <39.942616, 38.102943, 35.553322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019627, 38.492157, 35.604122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534053, -0.212475, 0.818317,
		0.823237, -0.089728, -0.560562,
		0.192531, 0.973038, 0.126998,
		40.077385, 38.784069, 35.642223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646828, 38.181389, 35.650196>,  <39.942616, 38.102943, 35.553322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646828, 38.181389, 35.650196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483173, 38.505444, 35.818142>,  <40.384979, 38.699875, 35.918911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483173, 38.505444, 35.818142>,  <40.646828, 38.181389, 35.650196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483173, 38.505444, 35.818142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620079, -0.090718, 0.779277,
		0.669411, 0.579178, -0.465233,
		-0.409135, 0.810138, 0.419864,
		40.360432, 38.748486, 35.944099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196136, 38.488689, 36.046772>,  <40.646828, 38.181389, 35.650196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196136, 38.488689, 36.046772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854645, 38.647282, 36.181801>,  <40.649750, 38.742435, 36.262817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854645, 38.647282, 36.181801>,  <41.196136, 38.488689, 36.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854645, 38.647282, 36.181801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369836, 0.005306, 0.929082,
		0.366568, 0.918030, -0.151161,
		-0.853727, 0.396476, 0.337575,
		40.598526, 38.766224, 36.283073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351833, 39.042629, 36.558334>,  <41.196136, 38.488689, 36.046772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351833, 39.042629, 36.558334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973263, 38.945297, 36.643257>,  <40.746120, 38.886898, 36.694210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973263, 38.945297, 36.643257>,  <41.351833, 39.042629, 36.558334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973263, 38.945297, 36.643257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238732, -0.084481, 0.967404,
		-0.217460, 0.966258, 0.138045,
		-0.946424, -0.243327, 0.212306,
		40.689335, 38.872299, 36.706947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091095, 39.483498, 37.224087>,  <41.351833, 39.042629, 36.558334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091095, 39.483498, 37.224087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842846, 39.171272, 37.194298>,  <40.693897, 38.983936, 37.176422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842846, 39.171272, 37.194298>,  <41.091095, 39.483498, 37.224087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842846, 39.171272, 37.194298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002313, -0.093159, 0.995649,
		-0.784109, 0.618090, 0.056011,
		-0.620618, -0.780568, -0.074476,
		40.656662, 38.937103, 37.171955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562935, 39.660450, 37.689854>,  <41.091095, 39.483498, 37.224087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562935, 39.660450, 37.689854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578449, 39.265526, 37.628250>,  <40.587757, 39.028572, 37.591286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578449, 39.265526, 37.628250>,  <40.562935, 39.660450, 37.689854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578449, 39.265526, 37.628250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081580, -0.156743, 0.984264,
		-0.995912, -0.025610, -0.086624,
		0.038785, -0.987307, -0.154013,
		40.590084, 38.969334, 37.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993866, 39.349445, 38.123627>,  <40.562935, 39.660450, 37.689854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993866, 39.349445, 38.123627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297009, 39.091629, 38.083191>,  <40.478893, 38.936939, 38.058929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297009, 39.091629, 38.083191>,  <39.993866, 39.349445, 38.123627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297009, 39.091629, 38.083191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084943, -0.251100, 0.964227,
		-0.646870, -0.722157, -0.245047,
		0.757854, -0.644545, -0.101087,
		40.524364, 38.898266, 38.052864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973824, 39.157520, 38.755375>,  <39.993866, 39.349445, 38.123627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973824, 39.157520, 38.755375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269520, 38.937878, 38.599419>,  <40.446938, 38.806091, 38.505844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269520, 38.937878, 38.599419>,  <39.973824, 39.157520, 38.755375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269520, 38.937878, 38.599419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184082, -0.392141, 0.901299,
		-0.647798, -0.738045, -0.188805,
		0.739237, -0.549104, -0.389889,
		40.491291, 38.773148, 38.482452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865505, 38.448273, 39.068333>,  <39.973824, 39.157520, 38.755375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865505, 38.448273, 39.068333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240799, 38.479580, 38.933517>,  <40.465973, 38.498363, 38.852627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240799, 38.479580, 38.933517>,  <39.865505, 38.448273, 39.068333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240799, 38.479580, 38.933517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319294, -0.571155, 0.756197,
		-0.133320, -0.817103, -0.560865,
		0.938231, 0.078265, -0.337042,
		40.522266, 38.503059, 38.832405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072945, 37.789925, 39.256302>,  <39.865505, 38.448273, 39.068333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072945, 37.789925, 39.256302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372227, 38.052063, 39.214920>,  <40.551796, 38.209347, 39.190090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372227, 38.052063, 39.214920>,  <40.072945, 37.789925, 39.256302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372227, 38.052063, 39.214920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444695, -0.379642, 0.811245,
		0.492373, -0.652985, -0.575482,
		0.748208, 0.655349, -0.103454,
		40.596687, 38.248669, 39.183884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707844, 37.498119, 39.477058>,  <40.072945, 37.789925, 39.256302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707844, 37.498119, 39.477058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784607, 37.890381, 39.492531>,  <40.830666, 38.125736, 39.501812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784607, 37.890381, 39.492531>,  <40.707844, 37.498119, 39.477058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784607, 37.890381, 39.492531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652384, -0.156911, 0.741468,
		0.733190, -0.117058, -0.669873,
		0.191905, 0.980651, 0.038679,
		40.842178, 38.184578, 39.504135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435852, 37.580086, 39.624416>,  <40.707844, 37.498119, 39.477058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435852, 37.580086, 39.624416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357571, 37.966175, 39.693745>,  <41.310600, 38.197830, 39.735344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357571, 37.966175, 39.693745>,  <41.435852, 37.580086, 39.624416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357571, 37.966175, 39.693745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639358, -0.008429, 0.768863,
		0.743587, 0.261287, -0.615474,
		-0.195706, 0.965224, 0.173324,
		41.298859, 38.255741, 39.745743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057495, 37.942074, 39.848427>,  <41.435852, 37.580086, 39.624416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057495, 37.942074, 39.848427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780968, 38.182888, 40.008240>,  <41.615051, 38.327377, 40.104130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780968, 38.182888, 40.008240>,  <42.057495, 37.942074, 39.848427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780968, 38.182888, 40.008240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532308, 0.050445, 0.845046,
		0.488594, 0.796874, -0.355342,
		-0.691321, 0.602036, 0.399535,
		41.573570, 38.363499, 40.128101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409901, 38.377113, 40.273647>,  <42.057495, 37.942074, 39.848427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409901, 38.377113, 40.273647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032814, 38.426857, 40.397469>,  <41.806561, 38.456703, 40.471760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032814, 38.426857, 40.397469>,  <42.409901, 38.377113, 40.273647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032814, 38.426857, 40.397469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332178, 0.435423, 0.836699,
		-0.030735, 0.891595, -0.451789,
		-0.942716, 0.124358, 0.309551,
		41.750000, 38.464165, 40.490334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289116, 39.073009, 40.445961>,  <42.409901, 38.377113, 40.273647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289116, 39.073009, 40.445961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043766, 38.849895, 40.669617>,  <41.896557, 38.716026, 40.803810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043766, 38.849895, 40.669617>,  <42.289116, 39.073009, 40.445961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043766, 38.849895, 40.669617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406925, 0.383562, 0.829031,
		-0.676888, 0.736039, -0.008291,
		-0.613379, -0.557787, 0.559141,
		41.859753, 38.682560, 40.837360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718212, 39.428558, 40.791542>,  <42.289116, 39.073009, 40.445961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718212, 39.428558, 40.791542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872124, 39.109818, 40.977863>,  <41.964470, 38.918571, 41.089657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872124, 39.109818, 40.977863>,  <41.718212, 39.428558, 40.791542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872124, 39.109818, 40.977863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545231, 0.603427, 0.581893,
		-0.744762, 0.030073, 0.666653,
		0.384777, -0.796851, 0.465806,
		41.987556, 38.870762, 41.117603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521267, 39.473896, 41.498802>,  <41.718212, 39.428558, 40.791542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521267, 39.473896, 41.498802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875908, 39.306599, 41.419796>,  <42.088692, 39.206223, 41.372391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875908, 39.306599, 41.419796>,  <41.521267, 39.473896, 41.498802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875908, 39.306599, 41.419796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427802, 0.579149, 0.693954,
		-0.175849, -0.699758, 0.692399,
		0.886602, -0.418240, -0.197515,
		42.141888, 39.181126, 41.360542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896458, 39.290161, 42.152462>,  <41.521267, 39.473896, 41.498802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896458, 39.290161, 42.152462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167843, 39.358322, 41.866623>,  <42.330673, 39.399220, 41.695118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167843, 39.358322, 41.866623>,  <41.896458, 39.290161, 42.152462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167843, 39.358322, 41.866623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390601, 0.740166, 0.547344,
		0.622192, -0.650475, 0.435613,
		0.678460, 0.170403, -0.714601,
		42.371380, 39.409443, 41.652241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573353, 39.029400, 42.254662>,  <41.896458, 39.290161, 42.152462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573353, 39.029400, 42.254662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337257, 38.755325, 42.425373>,  <42.195599, 38.590881, 42.527802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337257, 38.755325, 42.425373>,  <42.573353, 39.029400, 42.254662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337257, 38.755325, 42.425373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536631, -0.061898, -0.841544,
		0.603029, -0.725735, -0.331156,
		-0.590240, -0.685184, 0.426778,
		42.160187, 38.549770, 42.553406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647179, 38.360939, 41.881226>,  <42.573353, 39.029400, 42.254662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647179, 38.360939, 41.881226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310368, 38.474541, 42.064674>,  <42.108280, 38.542702, 42.174744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310368, 38.474541, 42.064674>,  <42.647179, 38.360939, 41.881226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310368, 38.474541, 42.064674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487691, -0.037434, -0.872213,
		-0.230546, -0.958091, 0.170028,
		-0.842025, 0.284006, 0.458622,
		42.057758, 38.559742, 42.202263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171890, 37.890163, 41.652130>,  <42.647179, 38.360939, 41.881226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171890, 37.890163, 41.652130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936207, 38.188499, 41.776424>,  <41.794796, 38.367500, 41.851002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936207, 38.188499, 41.776424>,  <42.171890, 37.890163, 41.652130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936207, 38.188499, 41.776424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458576, 0.007947, -0.888620,
		-0.665239, -0.666075, 0.337344,
		-0.589207, 0.745843, 0.310733,
		41.759445, 38.412251, 41.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441345, 37.615299, 41.436836>,  <42.171890, 37.890163, 41.652130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441345, 37.615299, 41.436836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510654, 38.006954, 41.479290>,  <41.552242, 38.241947, 41.504761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510654, 38.006954, 41.479290>,  <41.441345, 37.615299, 41.436836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510654, 38.006954, 41.479290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406535, 0.169259, -0.897820,
		-0.897054, 0.112424, 0.427382,
		0.173275, 0.979139, 0.106130,
		41.562637, 38.300697, 41.511127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876305, 37.967594, 41.385540>,  <41.441345, 37.615299, 41.436836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876305, 37.967594, 41.385540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185310, 38.177834, 41.243011>,  <41.370712, 38.303978, 41.157494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185310, 38.177834, 41.243011>,  <40.876305, 37.967594, 41.385540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185310, 38.177834, 41.243011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498614, 0.154622, -0.852922,
		-0.393198, 0.836563, 0.381519,
		0.772514, 0.525598, -0.356325,
		41.417065, 38.335514, 41.136112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571461, 38.523746, 41.035656>,  <40.876305, 37.967594, 41.385540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571461, 38.523746, 41.035656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934631, 38.508366, 40.868710>,  <41.152534, 38.499138, 40.768543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934631, 38.508366, 40.868710>,  <40.571461, 38.523746, 41.035656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934631, 38.508366, 40.868710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403744, 0.187095, -0.895537,
		0.112524, 0.981589, 0.154343,
		0.907926, -0.038454, -0.417363,
		41.207008, 38.496830, 40.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642162, 39.122112, 40.606018>,  <40.571461, 38.523746, 41.035656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642162, 39.122112, 40.606018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899712, 38.849239, 40.467426>,  <41.054241, 38.685516, 40.384270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899712, 38.849239, 40.467426>,  <40.642162, 39.122112, 40.606018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899712, 38.849239, 40.467426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167653, 0.316050, -0.933812,
		0.746536, 0.659349, 0.089127,
		0.643877, -0.682182, -0.346484,
		41.092876, 38.644585, 40.363480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959820, 39.488422, 39.938622>,  <40.642162, 39.122112, 40.606018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959820, 39.488422, 39.938622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024769, 39.096249, 39.894100>,  <41.063740, 38.860947, 39.867390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024769, 39.096249, 39.894100>,  <40.959820, 39.488422, 39.938622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024769, 39.096249, 39.894100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054886, 0.103648, -0.993098,
		0.985201, 0.167364, -0.036982,
		0.162376, -0.980432, -0.111300,
		41.073483, 38.802120, 39.860710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104336, 39.421268, 39.246239>,  <40.959820, 39.488422, 39.938622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104336, 39.421268, 39.246239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017124, 39.048267, 39.361408>,  <40.964798, 38.824467, 39.430511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017124, 39.048267, 39.361408>,  <41.104336, 39.421268, 39.246239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017124, 39.048267, 39.361408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261835, -0.228319, -0.937717,
		0.940163, -0.279838, -0.194382,
		-0.218028, -0.932503, 0.287928,
		40.951717, 38.768517, 39.447788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644615, 38.901928, 38.970684>,  <41.104336, 39.421268, 39.246239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644615, 38.901928, 38.970684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285847, 38.734558, 39.027893>,  <41.070587, 38.634136, 39.062218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285847, 38.734558, 39.027893>,  <41.644615, 38.901928, 38.970684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285847, 38.734558, 39.027893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042502, -0.240378, -0.969748,
		0.440145, -0.875866, 0.197816,
		-0.896920, -0.418422, 0.143027,
		41.016769, 38.609032, 39.070801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691582, 38.170353, 38.735115>,  <41.644615, 38.901928, 38.970684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691582, 38.170353, 38.735115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328941, 38.337532, 38.711838>,  <41.111355, 38.437840, 38.697872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328941, 38.337532, 38.711838>,  <41.691582, 38.170353, 38.735115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328941, 38.337532, 38.711838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008241, -0.155421, -0.987814,
		-0.421901, -0.895077, 0.144350,
		-0.906605, 0.417950, -0.058196,
		41.056961, 38.462917, 38.694378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540386, 38.214581, 38.077579>,  <41.691582, 38.170353, 38.735115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540386, 38.214581, 38.077579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166332, 38.314117, 38.178459>,  <40.941902, 38.373840, 38.238987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166332, 38.314117, 38.178459>,  <41.540386, 38.214581, 38.077579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166332, 38.314117, 38.178459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276980, -0.069587, -0.958353,
		-0.220924, -0.966042, 0.133996,
		-0.935133, 0.248837, 0.252201,
		40.885792, 38.388767, 38.254120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017433, 37.693283, 37.773544>,  <41.540386, 38.214581, 38.077579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017433, 37.693283, 37.773544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894272, 38.070522, 37.823772>,  <40.820377, 38.296864, 37.853909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894272, 38.070522, 37.823772>,  <41.017433, 37.693283, 37.773544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894272, 38.070522, 37.823772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411954, -0.013181, -0.911109,
		-0.857608, -0.332259, 0.392571,
		-0.307899, 0.943096, 0.125571,
		40.801903, 38.353451, 37.861443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356686, 37.714352, 37.524700>,  <41.017433, 37.693283, 37.773544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356686, 37.714352, 37.524700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442833, 38.104832, 37.534851>,  <40.494522, 38.339119, 37.540943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442833, 38.104832, 37.534851>,  <40.356686, 37.714352, 37.524700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442833, 38.104832, 37.534851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210847, 0.071861, -0.974874,
		-0.953500, 0.204603, 0.221306,
		0.215365, 0.976204, 0.025380,
		40.507442, 38.397694, 37.542465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806400, 37.924416, 37.234142>,  <40.356686, 37.714352, 37.524700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806400, 37.924416, 37.234142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084999, 38.208755, 37.194973>,  <40.252159, 38.379360, 37.171471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084999, 38.208755, 37.194973>,  <39.806400, 37.924416, 37.234142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084999, 38.208755, 37.194973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247870, 0.110281, -0.962496,
		-0.673391, 0.694645, 0.253009,
		0.696495, 0.710849, -0.097919,
		40.293949, 38.422009, 37.165596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558830, 38.074482, 36.580856>,  <39.806400, 37.924416, 37.234142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558830, 38.074482, 36.580856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781929, 38.302292, 36.339344>,  <39.915787, 38.438980, 36.194435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781929, 38.302292, 36.339344>,  <39.558830, 38.074482, 36.580856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781929, 38.302292, 36.339344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164054, -0.637448, -0.752825,
		-0.813636, 0.518940, -0.262102,
		0.557748, 0.569527, -0.603786,
		39.949253, 38.473148, 36.158207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445538, 38.675747, 37.014355>,  <39.558830, 38.074482, 36.580856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445538, 38.675747, 37.014355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827084, 38.726475, 36.905495>,  <40.056011, 38.756912, 36.840179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827084, 38.726475, 36.905495>,  <39.445538, 38.675747, 37.014355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827084, 38.726475, 36.905495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300144, 0.426426, -0.853273,
		0.007836, 0.895588, 0.444816,
		0.953862, 0.126823, -0.272147,
		40.113243, 38.764523, 36.823853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489693, 39.307472, 36.697529>,  <39.445538, 38.675747, 37.014355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489693, 39.307472, 36.697529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832100, 39.142670, 36.572639>,  <40.037544, 39.043789, 36.497704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832100, 39.142670, 36.572639>,  <39.489693, 39.307472, 36.697529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832100, 39.142670, 36.572639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141270, 0.394550, -0.907950,
		0.497272, 0.821328, 0.279537,
		0.856016, -0.412008, -0.312228,
		40.088905, 39.019066, 36.478970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856262, 39.822155, 36.236076>,  <39.489693, 39.307472, 36.697529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856262, 39.822155, 36.236076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977276, 39.451275, 36.147732>,  <40.049885, 39.228748, 36.094727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977276, 39.451275, 36.147732>,  <39.856262, 39.822155, 36.236076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977276, 39.451275, 36.147732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300492, 0.127117, -0.945275,
		0.904533, 0.352340, -0.240160,
		0.302530, -0.927199, -0.220857,
		40.068035, 39.173115, 36.081474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301548, 40.020912, 35.691154>,  <39.856262, 39.822155, 36.236076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301548, 40.020912, 35.691154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266064, 39.622730, 35.677326>,  <40.244774, 39.383820, 35.669029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266064, 39.622730, 35.677326>,  <40.301548, 40.020912, 35.691154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266064, 39.622730, 35.677326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128895, 0.045891, -0.990596,
		0.987682, -0.083424, -0.132381,
		-0.088715, -0.995457, -0.034573,
		40.239449, 39.324093, 35.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680050, 39.747120, 35.032600>,  <40.301548, 40.020912, 35.691154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680050, 39.747120, 35.032600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444984, 39.441139, 35.138046>,  <40.303944, 39.257549, 35.201313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444984, 39.441139, 35.138046>,  <40.680050, 39.747120, 35.032600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444984, 39.441139, 35.138046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396426, -0.011807, -0.917991,
		0.705333, -0.643976, -0.296309,
		-0.587666, -0.764954, 0.263617,
		40.268684, 39.211655, 35.217133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849159, 39.258896, 34.490208>,  <40.680050, 39.747120, 35.032600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849159, 39.258896, 34.490208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477375, 39.193901, 34.622692>,  <40.254303, 39.154903, 34.702183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477375, 39.193901, 34.622692>,  <40.849159, 39.258896, 34.490208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477375, 39.193901, 34.622692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358150, 0.182103, -0.915733,
		0.088474, -0.969762, -0.227449,
		-0.929463, -0.162479, 0.331209,
		40.198536, 39.145157, 34.722054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622097, 38.777901, 34.042923>,  <40.849159, 39.258896, 34.490208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622097, 38.777901, 34.042923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311119, 38.967373, 34.208431>,  <40.124531, 39.081055, 34.307735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311119, 38.967373, 34.208431>,  <40.622097, 38.777901, 34.042923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311119, 38.967373, 34.208431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386395, 0.159378, -0.908459,
		-0.496266, -0.866155, 0.059121,
		-0.777444, 0.473681, 0.413772,
		40.077885, 39.109478, 34.332561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037724, 38.555161, 33.663204>,  <40.622097, 38.777901, 34.042923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037724, 38.555161, 33.663204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910900, 38.890190, 33.841171>,  <39.834808, 39.091206, 33.947952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910900, 38.890190, 33.841171>,  <40.037724, 38.555161, 33.663204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910900, 38.890190, 33.841171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518077, 0.239990, -0.820976,
		-0.794401, -0.490798, 0.357835,
		-0.317056, 0.837569, 0.444919,
		39.815784, 39.141460, 33.974648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414059, 38.091816, 33.162544>,  <40.037724, 38.555161, 33.663204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414059, 38.091816, 33.162544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167027, 37.958057, 32.877792>,  <40.018806, 37.877804, 32.706940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167027, 37.958057, 32.877792>,  <40.414059, 38.091816, 33.162544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167027, 37.958057, 32.877792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470477, -0.882389, 0.006336,
		-0.630276, -0.331011, 0.702271,
		-0.617579, -0.334396, -0.711882,
		39.981754, 37.857738, 32.664227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579109, 37.420528, 32.790131>,  <40.414059, 38.091816, 33.162544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579109, 37.420528, 32.790131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761810, 37.769119, 32.861580>,  <40.871429, 37.978275, 32.904449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761810, 37.769119, 32.861580>,  <40.579109, 37.420528, 32.790131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761810, 37.769119, 32.861580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885040, -0.465450, 0.007769,
		0.089909, 0.154537, -0.983888,
		0.456750, 0.871479, 0.178619,
		40.898834, 38.030563, 32.915165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096886, 37.653419, 32.268520>,  <40.579109, 37.420528, 32.790131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096886, 37.653419, 32.268520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160038, 37.735104, 32.654964>,  <41.197929, 37.784115, 32.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160038, 37.735104, 32.654964>,  <41.096886, 37.653419, 32.268520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160038, 37.735104, 32.654964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820080, -0.572099, -0.013084,
		0.550039, 0.794355, -0.257792,
		0.157876, 0.204213, 0.966112,
		41.207401, 37.796368, 32.944798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845642, 37.911797, 32.366554>,  <41.096886, 37.653419, 32.268520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845642, 37.911797, 32.366554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690678, 37.769329, 32.706684>,  <41.597698, 37.683849, 32.910763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690678, 37.769329, 32.706684>,  <41.845642, 37.911797, 32.366554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690678, 37.769329, 32.706684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812150, -0.568329, 0.131964,
		0.436264, 0.741718, 0.509439,
		-0.387409, -0.356169, 0.850328,
		41.574455, 37.662479, 32.961784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285217, 38.054092, 32.915485>,  <41.845642, 37.911797, 32.366554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285217, 38.054092, 32.915485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414860, 37.850346, 32.596611>,  <42.492645, 37.728096, 32.405289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414860, 37.850346, 32.596611>,  <42.285217, 38.054092, 32.915485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414860, 37.850346, 32.596611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844773, -0.223460, 0.486235,
		-0.425810, -0.831031, 0.357874,
		0.324106, -0.509366, -0.797184,
		42.512093, 37.697536, 32.357456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373154, 37.399345, 33.149601>,  <42.285217, 38.054092, 32.915485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373154, 37.399345, 33.149601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616837, 37.473938, 32.841290>,  <42.763046, 37.518692, 32.656303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616837, 37.473938, 32.841290>,  <42.373154, 37.399345, 33.149601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616837, 37.473938, 32.841290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792591, -0.174899, 0.584132,
		-0.025880, -0.966766, -0.254350,
		0.609204, 0.186479, -0.770776,
		42.799599, 37.529881, 32.610058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807320, 36.777988, 33.236607>,  <42.373154, 37.399345, 33.149601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807320, 36.777988, 33.236607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973495, 37.095100, 33.058208>,  <43.073200, 37.285370, 32.951172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973495, 37.095100, 33.058208>,  <42.807320, 36.777988, 33.236607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973495, 37.095100, 33.058208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833956, -0.136175, 0.534765,
		0.363219, -0.594099, -0.717717,
		0.415439, 0.792782, -0.445991,
		43.098125, 37.332935, 32.924412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406181, 36.495510, 32.815689>,  <42.807320, 36.777988, 33.236607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406181, 36.495510, 32.815689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473392, 36.879784, 32.904110>,  <43.513718, 37.110348, 32.957161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473392, 36.879784, 32.904110>,  <43.406181, 36.495510, 32.815689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473392, 36.879784, 32.904110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874784, -0.248681, 0.415824,
		0.454444, 0.123502, -0.882172,
		0.168024, 0.960679, 0.221049,
		43.523800, 37.167988, 32.970425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190422, 36.758900, 32.740948>,  <43.406181, 36.495510, 32.815689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190422, 36.758900, 32.740948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019417, 37.003368, 33.007393>,  <43.916813, 37.150047, 33.167259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019417, 37.003368, 33.007393>,  <44.190422, 36.758900, 32.740948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019417, 37.003368, 33.007393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772974, -0.134959, 0.619917,
		0.468773, 0.779909, -0.414722,
		-0.427508, 0.611170, 0.666114,
		43.891163, 37.186718, 33.207226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722015, 37.236332, 33.010708>,  <44.190422, 36.758900, 32.740948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722015, 37.236332, 33.010708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410492, 37.206627, 33.259850>,  <44.223579, 37.188805, 33.409336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410492, 37.206627, 33.259850>,  <44.722015, 37.236332, 33.010708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410492, 37.206627, 33.259850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619515, -0.246691, 0.745214,
		0.098308, 0.966244, 0.238133,
		-0.778804, -0.074266, 0.622855,
		44.176849, 37.184345, 33.446705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775959, 37.721745, 33.596081>,  <44.722015, 37.236332, 33.010708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775959, 37.721745, 33.596081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555611, 37.403854, 33.698025>,  <44.423401, 37.213120, 33.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555611, 37.403854, 33.698025>,  <44.775959, 37.721745, 33.596081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555611, 37.403854, 33.698025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692940, -0.265325, 0.670401,
		-0.465167, 0.545901, 0.696858,
		-0.550866, -0.794729, 0.254856,
		44.390350, 37.165436, 33.774483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875504, 37.662811, 34.277100>,  <44.775959, 37.721745, 33.596081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875504, 37.662811, 34.277100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715553, 37.309116, 34.180584>,  <44.619583, 37.096901, 34.122673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715553, 37.309116, 34.180584>,  <44.875504, 37.662811, 34.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715553, 37.309116, 34.180584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594358, -0.450561, 0.666133,
		-0.697736, 0.122959, 0.705724,
		-0.399879, -0.884238, -0.241291,
		44.595589, 37.043846, 34.108196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085190, 37.207848, 34.817032>,  <44.875504, 37.662811, 34.277100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085190, 37.207848, 34.817032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014271, 36.955273, 34.515079>,  <44.971718, 36.803726, 34.333908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014271, 36.955273, 34.515079>,  <45.085190, 37.207848, 34.817032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014271, 36.955273, 34.515079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598778, -0.677945, 0.426447,
		-0.781044, -0.376399, 0.498291,
		-0.177300, -0.631439, -0.754884,
		44.961082, 36.765842, 34.288616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819908, 36.529449, 35.092590>,  <45.085190, 37.207848, 34.817032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819908, 36.529449, 35.092590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023045, 36.506062, 34.748802>,  <45.144924, 36.492027, 34.542530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023045, 36.506062, 34.748802>,  <44.819908, 36.529449, 35.092590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023045, 36.506062, 34.748802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590775, -0.702482, 0.396867,
		-0.626967, -0.709295, -0.322201,
		0.507836, -0.058475, -0.859467,
		45.175396, 36.488518, 34.490963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911278, 35.778629, 34.869263>,  <44.819908, 36.529449, 35.092590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911278, 35.778629, 34.869263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194786, 36.029518, 34.740120>,  <45.364891, 36.180050, 34.662636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194786, 36.029518, 34.740120>,  <44.911278, 35.778629, 34.869263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194786, 36.029518, 34.740120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695913, -0.696627, 0.174404,
		-0.115521, -0.348293, -0.930240,
		0.708774, 0.627219, -0.322857,
		45.407417, 36.217682, 34.643265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317509, 35.458672, 34.326191>,  <44.911278, 35.778629, 34.869263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317509, 35.458672, 34.326191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556610, 35.747391, 34.465733>,  <45.700069, 35.920620, 34.549458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556610, 35.747391, 34.465733>,  <45.317509, 35.458672, 34.326191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556610, 35.747391, 34.465733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736715, -0.666178, 0.116009,
		0.316135, 0.187663, -0.929968,
		0.597754, 0.721796, 0.348857,
		45.735935, 35.963928, 34.570389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006176, 35.620430, 33.874023>,  <45.317509, 35.458672, 34.326191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006176, 35.620430, 33.874023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016796, 35.646679, 34.273022>,  <46.023167, 35.662430, 34.512421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016796, 35.646679, 34.273022>,  <46.006176, 35.620430, 33.874023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016796, 35.646679, 34.273022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814132, -0.580445, 0.016521,
		0.580073, 0.811651, -0.068839,
		0.026548, 0.065627, 0.997491,
		46.024761, 35.666367, 34.572269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626499, 35.824585, 34.071907>,  <46.006176, 35.620430, 33.874023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626499, 35.824585, 34.071907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489143, 35.629841, 34.393166>,  <46.406731, 35.512993, 34.585922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489143, 35.629841, 34.393166>,  <46.626499, 35.824585, 34.071907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489143, 35.629841, 34.393166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834174, -0.551038, 0.022616,
		0.431555, 0.677732, 0.595348,
		-0.343387, -0.486864, 0.803149,
		46.386127, 35.483780, 34.634109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175732, 35.331394, 33.982407>,  <46.626499, 35.824585, 34.071907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175732, 35.331394, 33.982407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013760, 35.323956, 34.348068>,  <46.916576, 35.319492, 34.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013760, 35.323956, 34.348068>,  <47.175732, 35.331394, 33.982407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.013760, 35.323956, 34.348068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746620, -0.583864, 0.318845,
		0.527814, 0.811639, 0.250309,
		-0.404933, -0.018595, 0.914157,
		46.892281, 35.318378, 34.622314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.639194, 35.421906, 34.574841>,  <47.175732, 35.331394, 33.982407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.639194, 35.421906, 34.574841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337414, 35.161129, 34.605244>,  <47.156345, 35.004665, 34.623486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337414, 35.161129, 34.605244>,  <47.639194, 35.421906, 34.574841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.337414, 35.161129, 34.605244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639866, -0.704755, 0.306418,
		-0.146196, 0.279816, 0.948857,
		-0.754453, -0.651938, 0.076012,
		47.111076, 34.965546, 34.628048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.924591, 35.044392, 35.092991>,  <47.639194, 35.421906, 34.574841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.924591, 35.044392, 35.092991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.614689, 34.836105, 34.949547>,  <47.428749, 34.711132, 34.863480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.614689, 34.836105, 34.949547>,  <47.924591, 35.044392, 35.092991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.614689, 34.836105, 34.949547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341998, -0.822198, 0.455003,
		-0.531780, 0.229871, 0.815089,
		-0.774756, -0.520720, -0.358613,
		47.382263, 34.679890, 34.841965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.800762, 38.338173, 26.214767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.538191, 38.554676, 26.424965>,  <31.380648, 38.684578, 26.551083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.538191, 38.554676, 26.424965>,  <31.800762, 38.338173, 26.214767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538191, 38.554676, 26.424965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414812, -0.322850, 0.850705,
		0.630104, 0.776409, -0.012590,
		-0.656430, 0.541255, 0.525493,
		31.341263, 38.717052, 26.582613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244968, 38.517414, 26.735161>,  <31.800762, 38.338173, 26.214767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244968, 38.517414, 26.735161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.864918, 38.563526, 26.851067>,  <31.636887, 38.591194, 26.920610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.864918, 38.563526, 26.851067>,  <32.244968, 38.517414, 26.735161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864918, 38.563526, 26.851067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249820, -0.274803, 0.928479,
		0.186665, 0.954564, 0.232299,
		-0.950130, 0.115282, 0.289765,
		31.579880, 38.598110, 26.937996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235958, 39.040554, 27.264944>,  <32.244968, 38.517414, 26.735161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235958, 39.040554, 27.264944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.900129, 38.828609, 27.312876>,  <31.698631, 38.701443, 27.341635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.900129, 38.828609, 27.312876>,  <32.235958, 39.040554, 27.264944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900129, 38.828609, 27.312876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247809, -0.177260, 0.952455,
		-0.483432, 0.829350, 0.280128,
		-0.839574, -0.529865, 0.119827,
		31.648256, 38.669651, 27.348824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058800, 39.158772, 27.973196>,  <32.235958, 39.040554, 27.264944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058800, 39.158772, 27.973196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.846857, 38.830360, 27.888191>,  <31.719692, 38.633312, 27.837189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.846857, 38.830360, 27.888191>,  <32.058800, 39.158772, 27.973196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846857, 38.830360, 27.888191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110291, -0.315155, 0.942610,
		-0.840886, 0.476009, 0.257539,
		-0.529855, -0.821032, -0.212510,
		31.687901, 38.584049, 27.824438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599649, 39.077076, 28.535805>,  <32.058800, 39.158772, 27.973196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599649, 39.077076, 28.535805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.631586, 38.719666, 28.359060>,  <31.650747, 38.505219, 28.253014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.631586, 38.719666, 28.359060>,  <31.599649, 39.077076, 28.535805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631586, 38.719666, 28.359060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073336, -0.436808, 0.896560,
		-0.994106, -0.103985, 0.030653,
		0.079840, -0.893524, -0.441860,
		31.655539, 38.451607, 28.226501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192629, 38.615707, 28.908167>,  <31.599649, 39.077076, 28.535805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192629, 38.615707, 28.908167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421057, 38.341400, 28.727680>,  <31.558113, 38.176815, 28.619389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421057, 38.341400, 28.727680>,  <31.192629, 38.615707, 28.908167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421057, 38.341400, 28.727680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136642, -0.462585, 0.875982,
		-0.809451, -0.561900, -0.170462,
		0.571067, -0.685772, -0.451219,
		31.592377, 38.135670, 28.592314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016356, 37.938103, 29.235069>,  <31.192629, 38.615707, 28.908167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016356, 37.938103, 29.235069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.367319, 37.867138, 29.056774>,  <31.577896, 37.824558, 28.949797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.367319, 37.867138, 29.056774>,  <31.016356, 37.938103, 29.235069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367319, 37.867138, 29.056774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290743, -0.542403, 0.788205,
		-0.381608, -0.821171, -0.424326,
		0.877407, -0.177415, -0.445735,
		31.630541, 37.813911, 28.923054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275179, 37.155273, 29.360939>,  <31.016356, 37.938103, 29.235069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275179, 37.155273, 29.360939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590576, 37.393085, 29.297924>,  <31.779814, 37.535770, 29.260115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590576, 37.393085, 29.297924>,  <31.275179, 37.155273, 29.360939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590576, 37.393085, 29.297924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487457, -0.447880, 0.749526,
		0.375056, -0.667787, -0.642957,
		0.788491, 0.594528, -0.157538,
		31.827124, 37.571445, 29.250662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628653, 36.737850, 29.718204>,  <31.275179, 37.155273, 29.360939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628653, 36.737850, 29.718204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876520, 37.040840, 29.635998>,  <32.025242, 37.222633, 29.586674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876520, 37.040840, 29.635998>,  <31.628653, 36.737850, 29.718204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876520, 37.040840, 29.635998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572717, -0.257355, 0.778309,
		0.536661, -0.599997, -0.593295,
		0.619670, 0.757478, -0.205516,
		32.062420, 37.268082, 29.574343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335846, 36.500816, 29.804646>,  <31.628653, 36.737850, 29.718204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335846, 36.500816, 29.804646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.328117, 36.895798, 29.867331>,  <32.323479, 37.132786, 29.904942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.328117, 36.895798, 29.867331>,  <32.335846, 36.500816, 29.804646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328117, 36.895798, 29.867331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678692, -0.102140, 0.727286,
		0.734169, 0.120414, -0.668204,
		-0.019325, 0.987455, 0.156712,
		32.322319, 37.192036, 29.914345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006016, 36.652225, 29.820528>,  <32.335846, 36.500816, 29.804646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006016, 36.652225, 29.820528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.862255, 36.981533, 29.996283>,  <32.775997, 37.179115, 30.101736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.862255, 36.981533, 29.996283>,  <33.006016, 36.652225, 29.820528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862255, 36.981533, 29.996283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833569, 0.071556, 0.547762,
		0.419513, 0.563127, -0.711967,
		-0.359405, 0.823267, 0.439386,
		32.754433, 37.228512, 30.128098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619019, 37.127026, 29.864779>,  <33.006016, 36.652225, 29.820528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619019, 37.127026, 29.864779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349113, 37.222488, 30.144131>,  <33.187172, 37.279766, 30.311743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349113, 37.222488, 30.144131>,  <33.619019, 37.127026, 29.864779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349113, 37.222488, 30.144131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733236, 0.109029, 0.671176,
		0.084040, 0.964963, -0.248564,
		-0.674761, 0.238662, 0.698383,
		33.146687, 37.294086, 30.353645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021187, 37.634678, 30.301895>,  <33.619019, 37.127026, 29.864779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021187, 37.634678, 30.301895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695309, 37.528725, 30.508238>,  <33.499783, 37.465153, 30.632044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695309, 37.528725, 30.508238>,  <34.021187, 37.634678, 30.301895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695309, 37.528725, 30.508238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541254, -0.028068, 0.840391,
		-0.208126, 0.963872, 0.166236,
		-0.814695, -0.264883, 0.515858,
		33.450901, 37.449261, 30.662994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997303, 38.157364, 30.854689>,  <34.021187, 37.634678, 30.301895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997303, 38.157364, 30.854689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807693, 37.824154, 30.968794>,  <33.693928, 37.624229, 31.037258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807693, 37.824154, 30.968794>,  <33.997303, 38.157364, 30.854689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807693, 37.824154, 30.968794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539842, -0.019005, 0.841552,
		-0.695611, 0.552912, 0.458709,
		-0.474022, -0.833023, 0.285264,
		33.665485, 37.574245, 31.054373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701591, 38.352066, 31.416500>,  <33.997303, 38.157364, 30.854689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701591, 38.352066, 31.416500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735550, 37.953514, 31.418100>,  <33.755924, 37.714382, 31.419060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735550, 37.953514, 31.418100>,  <33.701591, 38.352066, 31.416500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735550, 37.953514, 31.418100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517632, 0.047536, 0.854282,
		-0.851381, -0.070455, 0.519794,
		0.084897, -0.996382, 0.004001,
		33.761021, 37.654598, 31.419300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517475, 38.202278, 32.127285>,  <33.701591, 38.352066, 31.416500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517475, 38.202278, 32.127285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731457, 37.901112, 31.973955>,  <33.859848, 37.720409, 31.881958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731457, 37.901112, 31.973955>,  <33.517475, 38.202278, 32.127285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731457, 37.901112, 31.973955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421357, -0.155498, 0.893465,
		-0.732311, -0.639480, 0.234063,
		0.534957, -0.752918, -0.383322,
		33.891945, 37.675236, 31.858959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470318, 37.597519, 32.617683>,  <33.517475, 38.202278, 32.127285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470318, 37.597519, 32.617683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797035, 37.524860, 32.398651>,  <33.993065, 37.481266, 32.267231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797035, 37.524860, 32.398651>,  <33.470318, 37.597519, 32.617683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797035, 37.524860, 32.398651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507668, -0.224601, 0.831762,
		-0.274072, -0.957372, -0.091238,
		0.816797, -0.181644, -0.547584,
		34.042076, 37.470367, 32.234375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730888, 36.873360, 32.856987>,  <33.470318, 37.597519, 32.617683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730888, 36.873360, 32.856987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026314, 37.053879, 32.656647>,  <34.203568, 37.162189, 32.536442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026314, 37.053879, 32.656647>,  <33.730888, 36.873360, 32.856987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026314, 37.053879, 32.656647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642619, -0.246596, 0.725418,
		0.203873, -0.857624, -0.472140,
		0.738564, 0.451299, -0.500852,
		34.247883, 37.189270, 32.506390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387577, 36.461475, 32.905910>,  <33.730888, 36.873360, 32.856987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387577, 36.461475, 32.905910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500874, 36.832901, 32.809959>,  <34.568851, 37.055756, 32.752388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500874, 36.832901, 32.809959>,  <34.387577, 36.461475, 32.905910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500874, 36.832901, 32.809959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667278, -0.011152, 0.744725,
		0.688850, -0.371004, -0.622769,
		0.283241, 0.928564, -0.239881,
		34.585846, 37.111469, 32.737995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123848, 36.440338, 33.075054>,  <34.387577, 36.461475, 32.905910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123848, 36.440338, 33.075054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058094, 36.833839, 33.046185>,  <35.018642, 37.069939, 33.028862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058094, 36.833839, 33.046185>,  <35.123848, 36.440338, 33.075054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058094, 36.833839, 33.046185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670118, 0.165068, 0.723668,
		0.723823, 0.070596, -0.686364,
		-0.164384, 0.983752, -0.072172,
		35.008778, 37.128963, 33.024532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760609, 36.827137, 33.153111>,  <35.123848, 36.440338, 33.075054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760609, 36.827137, 33.153111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488777, 37.100506, 33.259777>,  <35.325680, 37.264526, 33.323776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488777, 37.100506, 33.259777>,  <35.760609, 36.827137, 33.153111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488777, 37.100506, 33.259777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520278, 0.192723, 0.831967,
		0.517192, 0.704125, -0.486539,
		-0.679576, 0.683422, 0.266666,
		35.284904, 37.305534, 33.339775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100956, 37.396534, 33.294399>,  <35.760609, 36.827137, 33.153111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100956, 37.396534, 33.294399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760418, 37.438450, 33.500011>,  <35.556095, 37.463600, 33.623379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760418, 37.438450, 33.500011>,  <36.100956, 37.396534, 33.294399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760418, 37.438450, 33.500011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523595, 0.108879, 0.844982,
		0.032579, 0.988516, -0.147561,
		-0.851344, 0.104791, 0.514035,
		35.505016, 37.469887, 33.654221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729774, 37.554733, 32.829800>,  <36.100956, 37.396534, 33.294399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729774, 37.554733, 32.829800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100719, 37.561867, 32.680305>,  <37.323288, 37.566147, 32.590611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100719, 37.561867, 32.680305>,  <36.729774, 37.554733, 32.829800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100719, 37.561867, 32.680305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338555, 0.465240, -0.817883,
		0.159293, 0.885005, 0.437483,
		0.927365, 0.017829, -0.373733,
		37.378929, 37.567215, 32.568184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731155, 38.104027, 32.481686>,  <36.729774, 37.554733, 32.829800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731155, 38.104027, 32.481686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036461, 37.900192, 32.322815>,  <37.219646, 37.777893, 32.227493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036461, 37.900192, 32.322815>,  <36.731155, 38.104027, 32.481686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036461, 37.900192, 32.322815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326601, 0.226093, -0.917722,
		0.557455, 0.830185, 0.006139,
		0.763267, -0.509584, -0.397176,
		37.265442, 37.747318, 32.203663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901623, 38.583134, 31.982065>,  <36.731155, 38.104027, 32.481686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901623, 38.583134, 31.982065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032570, 38.215736, 31.893345>,  <37.111137, 37.995296, 31.840113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032570, 38.215736, 31.893345>,  <36.901623, 38.583134, 31.982065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032570, 38.215736, 31.893345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351272, 0.099612, -0.930959,
		0.877175, 0.382683, -0.290031,
		0.327372, -0.918494, -0.221803,
		37.130783, 37.940189, 31.826803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287167, 38.644123, 31.304321>,  <36.901623, 38.583134, 31.982065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287167, 38.644123, 31.304321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169277, 38.265423, 31.356182>,  <37.098545, 38.038204, 31.387299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169277, 38.265423, 31.356182>,  <37.287167, 38.644123, 31.304321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169277, 38.265423, 31.356182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211227, -0.067780, -0.975084,
		0.931946, -0.314764, -0.180003,
		-0.294721, -0.946747, 0.129654,
		37.080860, 37.981400, 31.395079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536331, 38.282040, 30.736938>,  <37.287167, 38.644123, 31.304321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536331, 38.282040, 30.736938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256695, 38.029572, 30.871338>,  <37.088913, 37.878090, 30.951977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256695, 38.029572, 30.871338>,  <37.536331, 38.282040, 30.736938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256695, 38.029572, 30.871338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294936, -0.173529, -0.939628,
		0.651368, -0.755987, -0.064841,
		-0.699094, -0.631167, 0.335999,
		37.046967, 37.840221, 30.972137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615929, 37.710751, 30.371422>,  <37.536331, 38.282040, 30.736938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615929, 37.710751, 30.371422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242107, 37.673553, 30.508802>,  <37.017815, 37.651234, 30.591230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242107, 37.673553, 30.508802>,  <37.615929, 37.710751, 30.371422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242107, 37.673553, 30.508802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272493, -0.433655, -0.858889,
		0.228814, -0.896267, 0.379933,
		-0.934554, -0.092997, 0.343453,
		36.961742, 37.645653, 30.611837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289120, 37.198410, 29.928110>,  <37.615929, 37.710751, 30.371422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289120, 37.198410, 29.928110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979340, 37.379372, 30.104994>,  <36.793472, 37.487949, 30.211124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979340, 37.379372, 30.104994>,  <37.289120, 37.198410, 29.928110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979340, 37.379372, 30.104994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533842, -0.092271, -0.840535,
		-0.339460, -0.887026, 0.312973,
		-0.774454, 0.452407, 0.442209,
		36.747002, 37.515095, 30.237656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586391, 36.811108, 29.731819>,  <37.289120, 37.198410, 29.928110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586391, 36.811108, 29.731819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467087, 37.165066, 29.874924>,  <36.395504, 37.377441, 29.960787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467087, 37.165066, 29.874924>,  <36.586391, 36.811108, 29.731819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467087, 37.165066, 29.874924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701358, 0.051048, -0.710979,
		-0.647408, -0.462976, 0.605406,
		-0.298261, 0.884900, 0.357761,
		36.377609, 37.430534, 29.982252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906410, 36.850498, 29.611183>,  <36.586391, 36.811108, 29.731819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906410, 36.850498, 29.611183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994747, 37.234703, 29.678873>,  <36.047749, 37.465225, 29.719486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994747, 37.234703, 29.678873>,  <35.906410, 36.850498, 29.611183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994747, 37.234703, 29.678873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569321, 0.267840, -0.777261,
		-0.791897, 0.075311, 0.605993,
		0.220846, 0.960515, 0.169225,
		36.061001, 37.522858, 29.729641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288578, 37.184711, 29.433367>,  <35.906410, 36.850498, 29.611183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288578, 37.184711, 29.433367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583847, 37.451866, 29.395351>,  <35.761009, 37.612160, 29.372541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583847, 37.451866, 29.395351>,  <35.288578, 37.184711, 29.433367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583847, 37.451866, 29.395351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440458, 0.370442, -0.817783,
		-0.510978, 0.645526, 0.567625,
		0.738173, 0.667884, -0.095039,
		35.805298, 37.652233, 29.366840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967556, 37.758045, 29.362120>,  <35.288578, 37.184711, 29.433367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967556, 37.758045, 29.362120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332207, 37.825191, 29.212049>,  <35.550999, 37.865479, 29.122007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332207, 37.825191, 29.212049>,  <34.967556, 37.758045, 29.362120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332207, 37.825191, 29.212049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408671, 0.467587, -0.783805,
		0.043852, 0.867861, 0.494867,
		0.911628, 0.167866, -0.375175,
		35.605694, 37.875553, 29.099497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015339, 38.414040, 29.118254>,  <34.967556, 37.758045, 29.362120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015339, 38.414040, 29.118254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283630, 38.207664, 28.905115>,  <35.444607, 38.083839, 28.777231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283630, 38.207664, 28.905115>,  <35.015339, 38.414040, 29.118254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283630, 38.207664, 28.905115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449737, 0.288366, -0.845329,
		0.589796, 0.806628, -0.038623,
		0.670729, -0.515942, -0.532848,
		35.484848, 38.052883, 28.745260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187382, 38.829800, 28.529385>,  <35.015339, 38.414040, 29.118254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187382, 38.829800, 28.529385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306107, 38.466793, 28.410507>,  <35.377342, 38.248989, 28.339180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306107, 38.466793, 28.410507>,  <35.187382, 38.829800, 28.529385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306107, 38.466793, 28.410507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346957, 0.187466, -0.918955,
		0.889678, 0.375867, -0.259226,
		0.296808, -0.907514, -0.297194,
		35.395149, 38.194538, 28.321348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408524, 39.061760, 27.871666>,  <35.187382, 38.829800, 28.529385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408524, 39.061760, 27.871666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398403, 38.662807, 27.844585>,  <35.392330, 38.423435, 27.828337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398403, 38.662807, 27.844585>,  <35.408524, 39.061760, 27.871666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398403, 38.662807, 27.844585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383692, 0.072224, -0.920632,
		0.923114, 0.002679, -0.384516,
		-0.025305, -0.997385, -0.067699,
		35.390812, 38.363590, 27.824276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715836, 38.914719, 27.288427>,  <35.408524, 39.061760, 27.871666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715836, 38.914719, 27.288427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469437, 38.608578, 27.363031>,  <35.321598, 38.424892, 27.407795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469437, 38.608578, 27.363031>,  <35.715836, 38.914719, 27.288427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469437, 38.608578, 27.363031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298273, 0.007473, -0.954451,
		0.729095, -0.643571, -0.232886,
		-0.615998, -0.765350, 0.186511,
		35.284637, 38.378971, 27.418985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836678, 38.544048, 26.805443>,  <35.715836, 38.914719, 27.288427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836678, 38.544048, 26.805443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482353, 38.399086, 26.921381>,  <35.269760, 38.312111, 26.990944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482353, 38.399086, 26.921381>,  <35.836678, 38.544048, 26.805443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482353, 38.399086, 26.921381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288563, -0.058985, -0.955642,
		0.363424, -0.930153, -0.052327,
		-0.885807, -0.362403, 0.289844,
		35.216610, 38.290363, 27.008335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719810, 37.897369, 26.448883>,  <35.836678, 38.544048, 26.805443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719810, 37.897369, 26.448883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381321, 38.064133, 26.581610>,  <35.178226, 38.164188, 26.661245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381321, 38.064133, 26.581610>,  <35.719810, 37.897369, 26.448883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381321, 38.064133, 26.581610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423479, -0.148271, -0.893690,
		-0.323386, -0.896775, 0.302021,
		-0.846219, 0.416906, 0.331817,
		35.127457, 38.189205, 26.681154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148773, 37.620548, 26.003929>,  <35.719810, 37.897369, 26.448883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148773, 37.620548, 26.003929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983154, 37.925461, 26.202921>,  <34.883781, 38.108410, 26.322317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983154, 37.925461, 26.202921>,  <35.148773, 37.620548, 26.003929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983154, 37.925461, 26.202921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586937, 0.194158, -0.786007,
		-0.695752, -0.617433, 0.367023,
		-0.414046, 0.762285, 0.497480,
		34.858940, 38.154148, 26.352165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.325569, 37.688354, 25.928875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401985, 38.064232, 26.042356>,  <34.447834, 38.289757, 26.110445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401985, 38.064232, 26.042356>,  <34.325569, 37.688354, 25.928875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401985, 38.064232, 26.042356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674733, 0.335627, -0.657335,
		-0.712910, -0.065848, 0.698158,
		0.191036, 0.939691, 0.283701,
		34.459297, 38.346138, 26.127466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661983, 37.989174, 26.087132>,  <34.325569, 37.688354, 25.928875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661983, 37.989174, 26.087132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928955, 38.274776, 26.002531>,  <34.089138, 38.446136, 25.951771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928955, 38.274776, 26.002531>,  <33.661983, 37.989174, 26.087132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928955, 38.274776, 26.002531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687267, 0.481262, -0.544105,
		-0.286706, 0.508512, 0.811921,
		0.667431, 0.714005, -0.211503,
		34.129185, 38.488979, 25.939079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242592, 38.623993, 26.106167>,  <33.661983, 37.989174, 26.087132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242592, 38.623993, 26.106167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565613, 38.729893, 25.895351>,  <33.759426, 38.793430, 25.768862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565613, 38.729893, 25.895351>,  <33.242592, 38.623993, 26.106167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565613, 38.729893, 25.895351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589793, 0.365956, -0.719876,
		0.002290, 0.892181, 0.451673,
		0.807552, 0.264745, -0.527040,
		33.807877, 38.809315, 25.737240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038555, 39.207516, 25.853910>,  <33.242592, 38.623993, 26.106167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038555, 39.207516, 25.853910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328503, 39.089622, 25.604849>,  <33.502472, 39.018887, 25.455412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328503, 39.089622, 25.604849>,  <33.038555, 39.207516, 25.853910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328503, 39.089622, 25.604849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553312, 0.289342, -0.781106,
		0.410378, 0.910721, 0.046655,
		0.724869, -0.294735, -0.622653,
		33.545963, 39.001202, 25.418053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369625, 39.742439, 25.482973>,  <33.038555, 39.207516, 25.853910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369625, 39.742439, 25.482973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441639, 39.423435, 25.252645>,  <33.484848, 39.232033, 25.114449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441639, 39.423435, 25.252645>,  <33.369625, 39.742439, 25.482973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441639, 39.423435, 25.252645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404392, 0.473619, -0.782402,
		0.896691, 0.373714, -0.237240,
		0.180033, -0.797510, -0.575817,
		33.495647, 39.184181, 25.079901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481258, 40.067646, 24.823599>,  <33.369625, 39.742439, 25.482973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481258, 40.067646, 24.823599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384975, 39.690659, 24.730804>,  <33.327206, 39.464466, 24.675129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384975, 39.690659, 24.730804>,  <33.481258, 40.067646, 24.823599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384975, 39.690659, 24.730804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496142, 0.324902, -0.805159,
		0.834208, -0.078710, -0.545804,
		-0.240707, -0.942467, -0.231984,
		33.312763, 39.407917, 24.661209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532429, 40.020393, 24.043667>,  <33.481258, 40.067646, 24.823599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532429, 40.020393, 24.043667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336670, 39.688606, 24.151354>,  <33.219215, 39.489536, 24.215965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336670, 39.688606, 24.151354>,  <33.532429, 40.020393, 24.043667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336670, 39.688606, 24.151354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454012, -0.021233, -0.890743,
		0.744557, -0.558153, -0.366196,
		-0.489395, -0.829466, 0.269217,
		33.189850, 39.439766, 24.232119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597019, 39.579128, 23.476105>,  <33.532429, 40.020393, 24.043667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597019, 39.579128, 23.476105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286392, 39.425232, 23.675669>,  <33.100014, 39.332893, 23.795406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286392, 39.425232, 23.675669>,  <33.597019, 39.579128, 23.476105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286392, 39.425232, 23.675669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527372, -0.036288, -0.848859,
		0.344695, -0.922311, -0.174721,
		-0.776572, -0.384741, 0.498910,
		33.053421, 39.309811, 23.825342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319260, 39.003197, 23.070959>,  <33.597019, 39.579128, 23.476105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319260, 39.003197, 23.070959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018505, 39.105637, 23.313969>,  <32.838055, 39.167099, 23.459774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018505, 39.105637, 23.313969>,  <33.319260, 39.003197, 23.070959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018505, 39.105637, 23.313969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615780, 0.056450, -0.785894,
		-0.235563, -0.965000, 0.115258,
		-0.751881, 0.256101, 0.607525,
		32.792942, 39.182465, 23.496225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767815, 38.456207, 22.877724>,  <33.319260, 39.003197, 23.070959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767815, 38.456207, 22.877724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595421, 38.763420, 23.067194>,  <32.491985, 38.947750, 23.180876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595421, 38.763420, 23.067194>,  <32.767815, 38.456207, 22.877724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595421, 38.763420, 23.067194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638117, 0.111741, -0.761788,
		-0.638009, -0.630584, 0.441937,
		-0.430989, 0.768035, 0.473678,
		32.466125, 38.993832, 23.209297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126980, 38.221642, 22.671240>,  <32.767815, 38.456207, 22.877724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126980, 38.221642, 22.671240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086880, 38.600922, 22.791819>,  <32.062820, 38.828491, 22.864166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086880, 38.600922, 22.791819>,  <32.126980, 38.221642, 22.671240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086880, 38.600922, 22.791819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563241, 0.195671, -0.802791,
		-0.820189, -0.250264, 0.514449,
		-0.100247, 0.948198, 0.301446,
		32.056805, 38.885380, 22.882252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456379, 38.343601, 22.624195>,  <32.126980, 38.221642, 22.671240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456379, 38.343601, 22.624195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595919, 38.717819, 22.646324>,  <31.679642, 38.942348, 22.659601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595919, 38.717819, 22.646324>,  <31.456379, 38.343601, 22.624195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595919, 38.717819, 22.646324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550159, 0.252221, -0.796059,
		-0.758703, 0.247266, 0.602685,
		0.348848, 0.935545, 0.055325,
		31.700573, 38.998482, 22.662922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883007, 38.874092, 22.415173>,  <31.456379, 38.343601, 22.624195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883007, 38.874092, 22.415173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226587, 39.068222, 22.349859>,  <31.432735, 39.184700, 22.310671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226587, 39.068222, 22.349859>,  <30.883007, 38.874092, 22.415173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226587, 39.068222, 22.349859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344173, 0.311095, -0.885869,
		-0.379137, 0.817117, 0.434251,
		0.858953, 0.485324, -0.163282,
		31.484274, 39.213818, 22.300875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565758, 39.574226, 22.259699>,  <30.883007, 38.874092, 22.415173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565758, 39.574226, 22.259699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.946514, 39.528141, 22.146118>,  <31.174969, 39.500488, 22.077971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.946514, 39.528141, 22.146118>,  <30.565758, 39.574226, 22.259699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946514, 39.528141, 22.146118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198885, 0.472661, -0.858508,
		0.233127, 0.873680, 0.427007,
		0.951891, -0.115216, -0.283952,
		31.232082, 39.493576, 22.060932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749969, 40.173748, 22.067890>,  <30.565758, 39.574226, 22.259699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749969, 40.173748, 22.067890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988209, 39.926830, 21.862284>,  <31.131153, 39.778679, 21.738920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988209, 39.926830, 21.862284>,  <30.749969, 40.173748, 22.067890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988209, 39.926830, 21.862284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288219, 0.433066, -0.854039,
		0.749793, 0.656815, 0.080019,
		0.595600, -0.617290, -0.514017,
		31.166889, 39.741642, 21.708078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164356, 40.591843, 21.560192>,  <30.749969, 40.173748, 22.067890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164356, 40.591843, 21.560192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160734, 40.226826, 21.396639>,  <31.158562, 40.007816, 21.298506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160734, 40.226826, 21.396639>,  <31.164356, 40.591843, 21.560192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160734, 40.226826, 21.396639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011703, 0.408969, -0.912473,
		0.999890, -0.003477, -0.014383,
		-0.009055, -0.912541, -0.408884,
		31.158018, 39.953064, 21.273973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720894, 40.632381, 21.111883>,  <31.164356, 40.591843, 21.560192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720894, 40.632381, 21.111883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514189, 40.325375, 20.960159>,  <31.390165, 40.141171, 20.869125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514189, 40.325375, 20.960159>,  <31.720894, 40.632381, 21.111883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514189, 40.325375, 20.960159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087756, 0.393234, -0.915241,
		0.851618, -0.506250, -0.135855,
		-0.516764, -0.767514, -0.379312,
		31.359159, 40.095119, 20.846365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039520, 40.499931, 20.551668>,  <31.720894, 40.632381, 21.111883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039520, 40.499931, 20.551668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672628, 40.358700, 20.477879>,  <31.452494, 40.273960, 20.433605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672628, 40.358700, 20.477879>,  <32.039520, 40.499931, 20.551668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672628, 40.358700, 20.477879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026982, 0.406951, -0.913052,
		0.397437, -0.842458, -0.363742,
		-0.917233, -0.353066, -0.184469,
		31.397461, 40.252777, 20.422537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082767, 40.164341, 19.818171>,  <32.039520, 40.499931, 20.551668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082767, 40.164341, 19.818171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.694490, 40.214226, 19.900345>,  <31.461525, 40.244156, 19.949650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.694490, 40.214226, 19.900345>,  <32.082767, 40.164341, 19.818171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694490, 40.214226, 19.900345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155481, 0.325940, -0.932518,
		-0.183252, -0.937129, -0.296998,
		-0.970693, 0.124709, 0.205435,
		31.403282, 40.251637, 19.961975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750093, 40.108807, 19.156370>,  <32.082767, 40.164341, 19.818171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750093, 40.108807, 19.156370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.470400, 40.270344, 19.392332>,  <31.302584, 40.367264, 19.533909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.470400, 40.270344, 19.392332>,  <31.750093, 40.108807, 19.156370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470400, 40.270344, 19.392332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265520, 0.619432, -0.738785,
		-0.663756, -0.673214, -0.325900,
		-0.699233, 0.403840, 0.589904,
		31.260630, 40.391495, 19.569304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095160, 40.054474, 18.844704>,  <31.750093, 40.108807, 19.156370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095160, 40.054474, 18.844704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065620, 40.354313, 19.107811>,  <31.047897, 40.534214, 19.265675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065620, 40.354313, 19.107811>,  <31.095160, 40.054474, 18.844704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065620, 40.354313, 19.107811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078322, 0.653171, -0.753149,
		-0.994189, -0.107137, 0.010473,
		-0.073850, 0.749593, 0.657767,
		31.043465, 40.579189, 19.305141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411272, 40.480419, 18.775127>,  <31.095160, 40.054474, 18.844704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411272, 40.480419, 18.775127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.659714, 40.719810, 18.977535>,  <30.808779, 40.863445, 19.098980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.659714, 40.719810, 18.977535>,  <30.411272, 40.480419, 18.775127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659714, 40.719810, 18.977535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213606, 0.750484, -0.625417,
		-0.754057, 0.280359, 0.593967,
		0.621104, 0.598475, 0.506022,
		30.846045, 40.899353, 19.129341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955563, 41.128139, 18.987127>,  <30.411272, 40.480419, 18.775127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955563, 41.128139, 18.987127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350897, 41.171967, 18.944818>,  <30.588097, 41.198261, 18.919434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350897, 41.171967, 18.944818>,  <29.955563, 41.128139, 18.987127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350897, 41.171967, 18.944818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151754, 0.766924, -0.623536,
		0.012801, 0.632315, 0.774606,
		0.988335, 0.109568, -0.105774,
		30.647398, 41.204838, 18.913086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106421, 41.818649, 19.164211>,  <29.955563, 41.128139, 18.987127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106421, 41.818649, 19.164211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340958, 41.669312, 18.876652>,  <30.481680, 41.579708, 18.704117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340958, 41.669312, 18.876652>,  <30.106421, 41.818649, 19.164211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340958, 41.669312, 18.876652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091172, 0.851407, -0.516521,
		0.804916, 0.368402, 0.465177,
		0.586343, -0.373345, -0.718899,
		30.516861, 41.557308, 18.660982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960934, 41.380890, 19.726788>,  <30.106421, 41.818649, 19.164211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960934, 41.380890, 19.726788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724211, 41.698013, 19.785063>,  <29.582176, 41.888287, 19.820028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.724211, 41.698013, 19.785063>,  <29.960934, 41.380890, 19.726788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724211, 41.698013, 19.785063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035462, -0.154954, 0.987285,
		0.805299, 0.589449, 0.063588,
		-0.591808, 0.792804, 0.145688,
		29.546669, 41.935856, 19.828770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268744, 41.952991, 20.227915>,  <29.960934, 41.380890, 19.726788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268744, 41.952991, 20.227915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868963, 41.963482, 20.219791>,  <29.629095, 41.969776, 20.214918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868963, 41.963482, 20.219791>,  <30.268744, 41.952991, 20.227915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868963, 41.963482, 20.219791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026225, -0.249973, 0.967897,
		0.020305, 0.967897, 0.250524,
		-0.999450, 0.026223, -0.020308,
		29.569128, 41.971348, 20.213699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083298, 42.379620, 20.892454>,  <30.268744, 41.952991, 20.227915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083298, 42.379620, 20.892454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744446, 42.192566, 20.791508>,  <29.541134, 42.080334, 20.730940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744446, 42.192566, 20.791508>,  <30.083298, 42.379620, 20.892454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744446, 42.192566, 20.791508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162488, -0.224211, 0.960899,
		-0.505932, 0.855013, 0.113951,
		-0.847130, -0.467634, -0.252365,
		29.490307, 42.052277, 20.715797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688963, 42.500572, 21.410381>,  <30.083298, 42.379620, 20.892454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688963, 42.500572, 21.410381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.455376, 42.207722, 21.270113>,  <29.315224, 42.032013, 21.185951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.455376, 42.207722, 21.270113>,  <29.688963, 42.500572, 21.410381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455376, 42.207722, 21.270113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140161, -0.334559, 0.931894,
		-0.799584, 0.593348, 0.092757,
		-0.583970, -0.732126, -0.350672,
		29.280186, 41.988083, 21.164911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066040, 42.520512, 21.712347>,  <29.688963, 42.500572, 21.410381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066040, 42.520512, 21.712347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144703, 42.141720, 21.610710>,  <29.191900, 41.914444, 21.549728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144703, 42.141720, 21.610710>,  <29.066040, 42.520512, 21.712347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144703, 42.141720, 21.610710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046001, -0.249955, 0.967164,
		-0.979393, -0.201888, -0.005594,
		0.196657, -0.946976, -0.254091,
		29.203699, 41.857628, 21.534483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855251, 42.211655, 22.306267>,  <29.066040, 42.520512, 21.712347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855251, 42.211655, 22.306267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.061413, 41.939247, 22.098200>,  <29.185110, 41.775803, 21.973360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.061413, 41.939247, 22.098200>,  <28.855251, 42.211655, 22.306267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061413, 41.939247, 22.098200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239048, -0.468650, 0.850426,
		-0.822931, -0.562657, -0.078747,
		0.515403, -0.681018, -0.520169,
		29.216034, 41.734943, 21.942150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632133, 41.624855, 22.561340>,  <28.855251, 42.211655, 22.306267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632133, 41.624855, 22.561340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975651, 41.526939, 22.381315>,  <29.181761, 41.468189, 22.273300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975651, 41.526939, 22.381315>,  <28.632133, 41.624855, 22.561340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975651, 41.526939, 22.381315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219150, -0.618522, 0.754589,
		-0.463087, -0.746666, -0.477536,
		0.858792, -0.244788, -0.450061,
		29.233288, 41.453503, 22.246296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697990, 40.817741, 22.680285>,  <28.632133, 41.624855, 22.561340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697990, 40.817741, 22.680285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056917, 40.962200, 22.578781>,  <29.272274, 41.048874, 22.517879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056917, 40.962200, 22.578781>,  <28.697990, 40.817741, 22.680285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056917, 40.962200, 22.578781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424898, -0.551113, 0.718148,
		0.119508, -0.752228, -0.647975,
		0.897318, 0.361147, -0.253757,
		29.326113, 41.070545, 22.502653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203947, 40.262444, 22.690987>,  <28.697990, 40.817741, 22.680285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203947, 40.262444, 22.690987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428524, 40.591663, 22.725319>,  <29.563271, 40.789196, 22.745918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428524, 40.591663, 22.725319>,  <29.203947, 40.262444, 22.690987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428524, 40.591663, 22.725319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564681, -0.456871, 0.687317,
		0.604910, -0.337424, -0.721269,
		0.561444, 0.823052, 0.085829,
		29.596956, 40.838577, 22.751068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878349, 39.972580, 22.740904>,  <29.203947, 40.262444, 22.690987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878349, 39.972580, 22.740904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.905266, 40.337582, 22.902306>,  <29.921415, 40.556583, 22.999146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.905266, 40.337582, 22.902306>,  <29.878349, 39.972580, 22.740904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905266, 40.337582, 22.902306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640766, -0.349519, 0.683561,
		0.764781, 0.212552, -0.608219,
		0.067292, 0.912501, 0.403502,
		29.925453, 40.611332, 23.023355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622126, 40.141281, 22.870068>,  <29.878349, 39.972580, 22.740904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622126, 40.141281, 22.870068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395340, 40.364082, 23.112818>,  <30.259270, 40.497765, 23.258469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395340, 40.364082, 23.112818>,  <30.622126, 40.141281, 22.870068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395340, 40.364082, 23.112818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654396, -0.142911, 0.742524,
		0.500319, 0.818121, -0.283477,
		-0.566962, 0.557005, 0.606876,
		30.225252, 40.531185, 23.294880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165146, 40.476028, 23.247978>,  <30.622126, 40.141281, 22.870068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165146, 40.476028, 23.247978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.813114, 40.500130, 23.436375>,  <30.601896, 40.514591, 23.549414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.813114, 40.500130, 23.436375>,  <31.165146, 40.476028, 23.247978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813114, 40.500130, 23.436375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454793, -0.178149, 0.872597,
		0.136482, 0.982157, 0.129383,
		-0.880077, 0.060251, 0.470993,
		30.549091, 40.518204, 23.577673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374090, 40.756577, 23.884394>,  <31.165146, 40.476028, 23.247978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374090, 40.756577, 23.884394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016195, 40.585819, 23.936861>,  <30.801458, 40.483364, 23.968342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016195, 40.585819, 23.936861>,  <31.374090, 40.756577, 23.884394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016195, 40.585819, 23.936861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321513, -0.411888, 0.852630,
		-0.309957, 0.805052, 0.505784,
		-0.894738, -0.426895, 0.131167,
		30.747774, 40.457752, 23.976212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255266, 40.868443, 24.626747>,  <31.374090, 40.756577, 23.884394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255266, 40.868443, 24.626747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.985147, 40.590214, 24.528637>,  <30.823076, 40.423279, 24.469770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.985147, 40.590214, 24.528637>,  <31.255266, 40.868443, 24.626747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985147, 40.590214, 24.528637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309063, -0.568821, 0.762183,
		-0.669668, 0.438894, 0.599097,
		-0.675296, -0.695568, -0.245276,
		30.782558, 40.381542, 24.455053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669569, 40.800137, 25.177662>,  <31.255266, 40.868443, 24.626747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669569, 40.800137, 25.177662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.658127, 40.448879, 24.986645>,  <30.651262, 40.238125, 24.872034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.658127, 40.448879, 24.986645>,  <30.669569, 40.800137, 25.177662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658127, 40.448879, 24.986645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230532, -0.470657, 0.851667,
		-0.972644, -0.085728, 0.215903,
		-0.028604, -0.878142, -0.477544,
		30.649546, 40.185436, 24.843382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184380, 40.378418, 25.566576>,  <30.669569, 40.800137, 25.177662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184380, 40.378418, 25.566576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412252, 40.124260, 25.358067>,  <30.548977, 39.971764, 25.232960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412252, 40.124260, 25.358067>,  <30.184380, 40.378418, 25.566576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412252, 40.124260, 25.358067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073297, -0.592453, 0.802263,
		-0.818590, -0.495243, -0.290937,
		0.569682, -0.635400, -0.521276,
		30.583157, 39.933640, 25.201683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876860, 39.725864, 25.514137>,  <30.184380, 40.378418, 25.566576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876860, 39.725864, 25.514137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266977, 39.667965, 25.447380>,  <30.501047, 39.633224, 25.407326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266977, 39.667965, 25.447380>,  <29.876860, 39.725864, 25.514137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266977, 39.667965, 25.447380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012556, -0.717906, 0.696027,
		-0.220560, -0.680925, -0.698351,
		0.975292, -0.144747, -0.166891,
		30.559565, 39.624542, 25.397312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995686, 38.920666, 25.662514>,  <29.876860, 39.725864, 25.514137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995686, 38.920666, 25.662514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.339684, 39.123558, 25.684891>,  <30.546082, 39.245293, 25.698317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.339684, 39.123558, 25.684891>,  <29.995686, 38.920666, 25.662514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339684, 39.123558, 25.684891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338351, -0.648841, 0.681560,
		0.382005, -0.567209, -0.729620,
		0.859995, 0.507227, 0.055944,
		30.597681, 39.275726, 25.701674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459549, 38.332787, 25.617846>,  <29.995686, 38.920666, 25.662514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459549, 38.332787, 25.617846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598913, 38.667965, 25.785870>,  <30.682531, 38.869072, 25.886684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598913, 38.667965, 25.785870>,  <30.459549, 38.332787, 25.617846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598913, 38.667965, 25.785870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458157, -0.543200, 0.703581,
		0.817742, -0.052680, -0.573169,
		0.348410, 0.837949, 0.420062,
		30.703436, 38.919350, 25.911888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953768, 38.070007, 26.047302>,  <30.459549, 38.332787, 25.617846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953768, 38.070007, 26.047302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963886, 38.452610, 26.163542>,  <30.969957, 38.682171, 26.233286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963886, 38.452610, 26.163542>,  <30.953768, 38.070007, 26.047302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963886, 38.452610, 26.163542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530789, -0.259183, 0.806900,
		0.847127, 0.133835, -0.514261,
		0.025297, 0.956511, 0.290599,
		30.971476, 38.739563, 26.250721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.472561, 37.548981, 28.095264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185490, 37.736134, 28.301575>,  <36.013248, 37.848423, 28.425362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185490, 37.736134, 28.301575>,  <36.472561, 37.548981, 28.095264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185490, 37.736134, 28.301575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436157, -0.275382, 0.856699,
		0.542866, 0.839794, -0.006433,
		-0.717679, 0.467878, 0.515777,
		35.970184, 37.876495, 28.456308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851997, 38.033085, 28.636251>,  <36.472561, 37.548981, 28.095264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851997, 38.033085, 28.636251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477940, 38.025558, 28.777760>,  <36.253506, 38.021042, 28.862665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477940, 38.025558, 28.777760>,  <36.851997, 38.033085, 28.636251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477940, 38.025558, 28.777760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354108, -0.019250, 0.935007,
		-0.010785, 0.999638, 0.024665,
		-0.935143, -0.018818, 0.353772,
		36.197395, 38.019913, 28.883892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738441, 38.505413, 29.175314>,  <36.851997, 38.033085, 28.636251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738441, 38.505413, 29.175314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.461151, 38.223785, 29.236923>,  <36.294777, 38.054810, 29.273888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.461151, 38.223785, 29.236923>,  <36.738441, 38.505413, 29.175314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461151, 38.223785, 29.236923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282522, -0.068865, 0.956786,
		-0.663040, 0.706781, 0.246654,
		-0.693224, -0.704072, 0.154021,
		36.253185, 38.012566, 29.283129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381805, 38.722137, 29.818661>,  <36.738441, 38.505413, 29.175314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381805, 38.722137, 29.818661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288486, 38.336060, 29.771379>,  <36.232494, 38.104412, 29.743011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288486, 38.336060, 29.771379>,  <36.381805, 38.722137, 29.818661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288486, 38.336060, 29.771379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128186, -0.151022, 0.980184,
		-0.963919, 0.213527, 0.158958,
		-0.233302, -0.965194, -0.118202,
		36.218494, 38.046501, 29.735918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111324, 38.574306, 30.480694>,  <36.381805, 38.722137, 29.818661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111324, 38.574306, 30.480694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174767, 38.210197, 30.327721>,  <36.212833, 37.991734, 30.235937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174767, 38.210197, 30.327721>,  <36.111324, 38.574306, 30.480694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174767, 38.210197, 30.327721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192415, -0.351412, 0.916235,
		-0.968411, -0.218907, 0.119413,
		0.158607, -0.910269, -0.382433,
		36.222347, 37.937119, 30.212992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743179, 38.134254, 30.917830>,  <36.111324, 38.574306, 30.480694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743179, 38.134254, 30.917830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.022575, 37.923443, 30.724190>,  <36.190212, 37.796955, 30.608006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.022575, 37.923443, 30.724190>,  <35.743179, 38.134254, 30.917830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022575, 37.923443, 30.724190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301280, -0.397030, 0.866947,
		-0.649104, -0.751407, -0.118541,
		0.698494, -0.527025, -0.484098,
		36.232124, 37.765335, 30.578960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845726, 37.506329, 31.279696>,  <35.743179, 38.134254, 30.917830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845726, 37.506329, 31.279696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.183609, 37.524925, 31.066414>,  <36.386341, 37.536083, 30.938446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.183609, 37.524925, 31.066414>,  <35.845726, 37.506329, 31.279696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183609, 37.524925, 31.066414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530833, -0.200139, 0.823505,
		-0.068427, -0.978664, -0.193739,
		0.844709, 0.046493, -0.533203,
		36.437023, 37.538872, 30.906452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275028, 36.812439, 31.372894>,  <35.845726, 37.506329, 31.279696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275028, 36.812439, 31.372894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.481777, 37.143986, 31.287270>,  <36.605827, 37.342915, 31.235895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.481777, 37.143986, 31.287270>,  <36.275028, 36.812439, 31.372894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481777, 37.143986, 31.287270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521535, -0.106595, 0.846545,
		0.678854, -0.549199, -0.487379,
		0.516874, 0.828865, -0.214064,
		36.636841, 37.392647, 31.223051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922577, 36.723907, 31.672012>,  <36.275028, 36.812439, 31.372894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922577, 36.723907, 31.672012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959595, 37.108120, 31.567078>,  <36.981808, 37.338646, 31.504116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959595, 37.108120, 31.567078>,  <36.922577, 36.723907, 31.672012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959595, 37.108120, 31.567078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588917, 0.159639, 0.792270,
		0.802877, -0.227818, -0.550897,
		0.092548, 0.960528, -0.262336,
		36.987358, 37.396278, 31.488377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666645, 36.809418, 31.571365>,  <36.922577, 36.723907, 31.672012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666645, 36.809418, 31.571365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485088, 37.155094, 31.658218>,  <37.376152, 37.362499, 31.710329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485088, 37.155094, 31.658218>,  <37.666645, 36.809418, 31.571365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485088, 37.155094, 31.658218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654106, 0.157680, 0.739786,
		0.605082, 0.477812, -0.636845,
		-0.453896, 0.864195, 0.217131,
		37.348919, 37.414352, 31.723358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251766, 37.217812, 31.612959>,  <37.666645, 36.809418, 31.571365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251766, 37.217812, 31.612959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938251, 37.379059, 31.801924>,  <37.750141, 37.475807, 31.915302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938251, 37.379059, 31.801924>,  <38.251766, 37.217812, 31.612959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938251, 37.379059, 31.801924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507546, -0.022557, 0.861329,
		0.357872, 0.914871, -0.186920,
		-0.783789, 0.403116, 0.472412,
		37.703114, 37.499992, 31.943647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504532, 37.795319, 31.971594>,  <38.251766, 37.217812, 31.612959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504532, 37.795319, 31.971594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168995, 37.692909, 32.163761>,  <37.967674, 37.631462, 32.279060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168995, 37.692909, 32.163761>,  <38.504532, 37.795319, 31.971594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168995, 37.692909, 32.163761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476414, 0.081748, 0.875413,
		-0.263403, 0.963207, 0.053402,
		-0.838838, -0.256027, 0.480417,
		37.917343, 37.616100, 32.307888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469418, 38.236530, 32.570114>,  <38.504532, 37.795319, 31.971594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469418, 38.236530, 32.570114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.272659, 37.889339, 32.597424>,  <38.154606, 37.681026, 32.613808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.272659, 37.889339, 32.597424>,  <38.469418, 38.236530, 32.570114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272659, 37.889339, 32.597424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566981, -0.259829, 0.781679,
		-0.660738, 0.423212, 0.619933,
		-0.491892, -0.867975, 0.068275,
		38.125092, 37.628948, 32.617905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637787, 38.011555, 33.293903>,  <38.469418, 38.236530, 32.570114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637787, 38.011555, 33.293903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465889, 37.695023, 33.119953>,  <38.362751, 37.505104, 33.015583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465889, 37.695023, 33.119953>,  <38.637787, 38.011555, 33.293903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465889, 37.695023, 33.119953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595903, -0.610393, 0.521843,
		-0.678398, -0.034889, 0.733866,
		-0.429740, -0.791330, -0.434879,
		38.336967, 37.457623, 32.989491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815777, 38.616360, 33.686600>,  <38.637787, 38.011555, 33.293903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815777, 38.616360, 33.686600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991463, 38.967587, 33.762577>,  <39.096874, 39.178322, 33.808163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991463, 38.967587, 33.762577>,  <38.815777, 38.616360, 33.686600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991463, 38.967587, 33.762577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447239, 0.397081, -0.801438,
		-0.779143, 0.267056, 0.567113,
		0.439219, 0.878071, 0.189945,
		39.123230, 39.231007, 33.819561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323509, 39.058784, 33.534481>,  <38.815777, 38.616360, 33.686600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323509, 39.058784, 33.534481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643116, 39.298290, 33.556625>,  <38.834881, 39.441994, 33.569912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643116, 39.298290, 33.556625>,  <38.323509, 39.058784, 33.534481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643116, 39.298290, 33.556625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363300, 0.554053, -0.749025,
		-0.479157, 0.578369, 0.660226,
		0.799013, 0.598761, 0.055357,
		38.882820, 39.477917, 33.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120449, 39.809261, 33.629627>,  <38.323509, 39.058784, 33.534481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120449, 39.809261, 33.629627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476299, 39.770351, 33.451145>,  <38.689812, 39.747005, 33.344055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476299, 39.770351, 33.451145>,  <38.120449, 39.809261, 33.629627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476299, 39.770351, 33.451145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341410, 0.507255, -0.791284,
		0.303312, 0.856288, 0.418058,
		0.889630, -0.097276, -0.446202,
		38.743187, 39.741169, 33.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161785, 40.384457, 33.166584>,  <38.120449, 39.809261, 33.629627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161785, 40.384457, 33.166584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423035, 40.109959, 33.038517>,  <38.579784, 39.945259, 32.961678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423035, 40.109959, 33.038517>,  <38.161785, 40.384457, 33.166584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423035, 40.109959, 33.038517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122359, 0.321607, -0.938934,
		0.747303, 0.652413, 0.126080,
		0.653121, -0.686241, -0.320167,
		38.618973, 39.904087, 32.942467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411564, 40.812492, 32.630936>,  <38.161785, 40.384457, 33.166584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411564, 40.812492, 32.630936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.536476, 40.435612, 32.582382>,  <38.611423, 40.209484, 32.553249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.536476, 40.435612, 32.582382>,  <38.411564, 40.812492, 32.630936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536476, 40.435612, 32.582382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014786, 0.132583, -0.991062,
		0.949874, 0.307698, 0.055335,
		0.312284, -0.942202, -0.121387,
		38.630161, 40.152950, 32.545967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862553, 40.817734, 32.129856>,  <38.411564, 40.812492, 32.630936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862553, 40.817734, 32.129856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756653, 40.432014, 32.127514>,  <38.693111, 40.200584, 32.126106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756653, 40.432014, 32.127514>,  <38.862553, 40.817734, 32.129856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756653, 40.432014, 32.127514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234802, 0.070356, -0.969494,
		0.935294, -0.255300, -0.245046,
		-0.264752, -0.964299, -0.005858,
		38.677227, 40.142723, 32.125755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103798, 40.659695, 31.414753>,  <38.862553, 40.817734, 32.129856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103798, 40.659695, 31.414753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.861931, 40.380482, 31.568184>,  <38.716812, 40.212955, 31.660242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.861931, 40.380482, 31.568184>,  <39.103798, 40.659695, 31.414753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861931, 40.380482, 31.568184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436576, -0.112328, -0.892627,
		0.666168, -0.707202, -0.236822,
		-0.604666, -0.698031, 0.383577,
		38.680531, 40.171074, 31.683256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121433, 39.922771, 31.038673>,  <39.103798, 40.659695, 31.414753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121433, 39.922771, 31.038673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753174, 39.959671, 31.190407>,  <38.532219, 39.981812, 31.281446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753174, 39.959671, 31.190407>,  <39.121433, 39.922771, 31.038673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753174, 39.959671, 31.190407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362402, -0.563211, -0.742602,
		0.145142, -0.821148, 0.551951,
		-0.920651, 0.092246, 0.379331,
		38.476978, 39.987347, 31.304207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766552, 39.338474, 30.723949>,  <39.121433, 39.922771, 31.038673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766552, 39.338474, 30.723949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464855, 39.547951, 30.882372>,  <38.283836, 39.673637, 30.977427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464855, 39.547951, 30.882372>,  <38.766552, 39.338474, 30.723949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464855, 39.547951, 30.882372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620352, -0.370732, -0.691173,
		-0.215131, -0.767009, 0.604497,
		-0.754242, 0.523694, 0.396059,
		38.238583, 39.705059, 31.001190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125294, 38.963352, 30.591833>,  <38.766552, 39.338474, 30.723949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125294, 38.963352, 30.591833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003681, 39.338184, 30.660475>,  <37.930714, 39.563084, 30.701660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003681, 39.338184, 30.660475>,  <38.125294, 38.963352, 30.591833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003681, 39.338184, 30.660475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512912, -0.009218, -0.858392,
		-0.802798, -0.348998, 0.483441,
		-0.304033, 0.937078, 0.171605,
		37.912472, 39.619308, 30.711956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439785, 39.080391, 30.321568>,  <38.125294, 38.963352, 30.591833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439785, 39.080391, 30.321568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528358, 39.469540, 30.348385>,  <37.581501, 39.703030, 30.364475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528358, 39.469540, 30.348385>,  <37.439785, 39.080391, 30.321568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528358, 39.469540, 30.348385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462761, 0.165345, -0.870926,
		-0.858382, 0.161826, 0.486819,
		0.221432, 0.972868, 0.067043,
		37.594788, 39.761402, 30.368498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930538, 39.340328, 29.930096>,  <37.439785, 39.080391, 30.321568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930538, 39.340328, 29.930096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194942, 39.637928, 29.969151>,  <37.353584, 39.816486, 29.992582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194942, 39.637928, 29.969151>,  <36.930538, 39.340328, 29.930096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194942, 39.637928, 29.969151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276019, 0.362072, -0.890347,
		-0.697768, 0.561579, 0.444690,
		0.661009, 0.743998, 0.097636,
		37.393246, 39.861126, 29.998442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582165, 40.045162, 30.053463>,  <36.930538, 39.340328, 29.930096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582165, 40.045162, 30.053463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939064, 40.064316, 29.873863>,  <37.153202, 40.075809, 29.766104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939064, 40.064316, 29.873863>,  <36.582165, 40.045162, 30.053463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939064, 40.064316, 29.873863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407802, 0.512411, -0.755733,
		0.193881, 0.857404, 0.476726,
		0.892249, 0.047888, -0.448998,
		37.206738, 40.078682, 29.739164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632908, 40.727924, 29.755335>,  <36.582165, 40.045162, 30.053463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632908, 40.727924, 29.755335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921532, 40.540417, 29.551529>,  <37.094707, 40.427910, 29.429245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921532, 40.540417, 29.551529>,  <36.632908, 40.727924, 29.755335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921532, 40.540417, 29.551529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282746, 0.472237, -0.834893,
		0.631987, 0.746488, 0.208203,
		0.721559, -0.468773, -0.509514,
		37.138000, 40.399784, 29.398674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446224, 41.431183, 29.887596>,  <36.632908, 40.727924, 29.755335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446224, 41.431183, 29.887596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.199245, 41.745823, 29.886299>,  <36.051056, 41.934608, 29.885521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.199245, 41.745823, 29.886299>,  <36.446224, 41.431183, 29.887596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199245, 41.745823, 29.886299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188159, -0.143691, 0.971570,
		0.763773, 0.600508, 0.236728,
		-0.617452, 0.786602, -0.003244,
		36.014011, 41.981804, 29.885326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637993, 41.956161, 30.399145>,  <36.446224, 41.431183, 29.887596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637993, 41.956161, 30.399145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.244827, 41.999550, 30.339674>,  <36.008926, 42.025581, 30.303991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.244827, 41.999550, 30.339674>,  <36.637993, 41.956161, 30.399145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244827, 41.999550, 30.339674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160301, -0.107717, 0.981173,
		0.090412, 0.988247, 0.123265,
		-0.982919, 0.108470, -0.148678,
		35.949951, 42.032089, 30.295071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382492, 42.377872, 30.929497>,  <36.637993, 41.956161, 30.399145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382492, 42.377872, 30.929497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.057674, 42.190018, 30.790916>,  <35.862785, 42.077305, 30.707767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.057674, 42.190018, 30.790916>,  <36.382492, 42.377872, 30.929497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057674, 42.190018, 30.790916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328930, -0.122061, 0.936433,
		-0.482073, 0.874380, -0.055359,
		-0.812041, -0.469638, -0.346452,
		35.814060, 42.049126, 30.686981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833057, 42.557697, 31.367992>,  <36.382492, 42.377872, 30.929497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833057, 42.557697, 31.367992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705574, 42.216640, 31.202375>,  <35.629086, 42.012009, 31.103004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705574, 42.216640, 31.202375>,  <35.833057, 42.557697, 31.367992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705574, 42.216640, 31.202375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389266, -0.280547, 0.877363,
		-0.864232, 0.440796, -0.242491,
		-0.318708, -0.852639, -0.414044,
		35.609962, 41.960850, 31.078161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195259, 42.444778, 31.801418>,  <35.833057, 42.557697, 31.367992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195259, 42.444778, 31.801418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282558, 42.090279, 31.637989>,  <35.334938, 41.877579, 31.539932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282558, 42.090279, 31.637989>,  <35.195259, 42.444778, 31.801418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282558, 42.090279, 31.637989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390896, -0.463000, 0.795507,
		-0.894186, -0.013908, -0.447479,
		0.218247, -0.886249, -0.408571,
		35.348034, 41.824406, 31.515417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633877, 42.060249, 31.880049>,  <35.195259, 42.444778, 31.801418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633877, 42.060249, 31.880049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.914837, 41.778606, 31.838343>,  <35.083412, 41.609619, 31.813320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.914837, 41.778606, 31.838343>,  <34.633877, 42.060249, 31.880049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914837, 41.778606, 31.838343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349541, -0.468813, 0.811194,
		-0.620048, -0.533336, -0.575407,
		0.702397, -0.704107, -0.104264,
		35.125557, 41.567375, 31.807064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324196, 41.565578, 32.306229>,  <34.633877, 42.060249, 31.880049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324196, 41.565578, 32.306229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.701611, 41.452202, 32.237640>,  <34.928059, 41.384174, 32.196487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.701611, 41.452202, 32.237640>,  <34.324196, 41.565578, 32.306229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701611, 41.452202, 32.237640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008146, -0.537314, 0.843343,
		-0.331173, -0.794327, -0.509283,
		0.943535, -0.283441, -0.171474,
		34.984673, 41.367168, 32.186199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432072, 40.912868, 32.362873>,  <34.324196, 41.565578, 32.306229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432072, 40.912868, 32.362873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811592, 41.018970, 32.431469>,  <35.039307, 41.082630, 32.472626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811592, 41.018970, 32.431469>,  <34.432072, 40.912868, 32.362873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811592, 41.018970, 32.431469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028355, -0.612264, 0.790144,
		0.314589, -0.744830, -0.588441,
		0.948804, 0.265256, 0.171492,
		35.096233, 41.098549, 32.482918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774570, 40.307072, 32.555756>,  <34.432072, 40.912868, 32.362873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774570, 40.307072, 32.555756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034260, 40.580536, 32.689087>,  <35.190075, 40.744614, 32.769085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034260, 40.580536, 32.689087>,  <34.774570, 40.307072, 32.555756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034260, 40.580536, 32.689087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110752, -0.518546, 0.847847,
		0.752488, -0.513529, -0.412371,
		0.649228, 0.683665, 0.333325,
		35.229027, 40.785637, 32.789085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326740, 39.934025, 32.745537>,  <34.774570, 40.307072, 32.555756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326740, 39.934025, 32.745537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.373219, 40.278378, 32.943680>,  <35.401104, 40.484989, 33.062565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.373219, 40.278378, 32.943680>,  <35.326740, 39.934025, 32.745537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373219, 40.278378, 32.943680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205954, -0.508777, 0.835900,
		0.971639, 0.004894, -0.236419,
		0.116194, 0.860885, 0.495355,
		35.408077, 40.536644, 33.092285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926323, 39.880135, 33.135727>,  <35.326740, 39.934025, 32.745537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926323, 39.880135, 33.135727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.716587, 40.163631, 33.324516>,  <35.590748, 40.333729, 33.437790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.716587, 40.163631, 33.324516>,  <35.926323, 39.880135, 33.135727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716587, 40.163631, 33.324516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256291, -0.397218, 0.881211,
		0.812025, 0.583014, 0.026632,
		-0.524337, 0.708740, 0.471973,
		35.559284, 40.376255, 33.466106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314564, 40.348576, 33.599716>,  <35.926323, 39.880135, 33.135727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314564, 40.348576, 33.599716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.943077, 40.231071, 33.690220>,  <35.720184, 40.160568, 33.744522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.943077, 40.231071, 33.690220>,  <36.314564, 40.348576, 33.599716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943077, 40.231071, 33.690220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343844, -0.453901, 0.822037,
		-0.138778, 0.841238, 0.522552,
		-0.928715, -0.293757, 0.226263,
		35.664463, 40.142944, 33.758099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.618187, 44.010502, 26.513067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278088, 43.954422, 26.716017>,  <36.074028, 43.920773, 26.837786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278088, 43.954422, 26.716017>,  <36.618187, 44.010502, 26.513067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278088, 43.954422, 26.716017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525895, -0.184480, 0.830302,
		-0.022811, 0.972785, 0.230586,
		-0.850244, -0.140204, 0.507374,
		36.023014, 43.912361, 26.868229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646225, 44.422558, 27.143860>,  <36.618187, 44.010502, 26.513067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646225, 44.422558, 27.143860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368908, 44.142570, 27.212433>,  <36.202518, 43.974579, 27.253576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368908, 44.142570, 27.212433>,  <36.646225, 44.422558, 27.143860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368908, 44.142570, 27.212433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421071, -0.200407, 0.884611,
		-0.584840, 0.685483, 0.433677,
		-0.693297, -0.699964, 0.171431,
		36.160919, 43.932583, 27.263863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271957, 44.501240, 27.822828>,  <36.646225, 44.422558, 27.143860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271957, 44.501240, 27.822828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239861, 44.109116, 27.750669>,  <36.220600, 43.873840, 27.707375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239861, 44.109116, 27.750669>,  <36.271957, 44.501240, 27.822828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239861, 44.109116, 27.750669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111451, -0.188672, 0.975696,
		-0.990525, 0.058189, 0.124397,
		-0.080245, -0.980315, -0.180399,
		36.215786, 43.815022, 27.696550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907116, 44.175552, 28.401464>,  <36.271957, 44.501240, 27.822828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907116, 44.175552, 28.401464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004547, 43.829945, 28.225222>,  <36.063007, 43.622578, 28.119476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004547, 43.829945, 28.225222>,  <35.907116, 44.175552, 28.401464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004547, 43.829945, 28.225222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030068, -0.460797, 0.886996,
		-0.969415, -0.202805, -0.138219,
		0.243578, -0.864023, -0.440606,
		36.077621, 43.570736, 28.093040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544491, 43.742477, 28.745428>,  <35.907116, 44.175552, 28.401464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544491, 43.742477, 28.745428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788700, 43.494045, 28.548849>,  <35.935226, 43.344986, 28.430901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788700, 43.494045, 28.548849>,  <35.544491, 43.742477, 28.745428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788700, 43.494045, 28.548849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116597, -0.684241, 0.719875,
		-0.783368, -0.382200, -0.490161,
		0.610524, -0.621078, -0.491449,
		35.971859, 43.307720, 28.401415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217533, 43.109192, 28.734579>,  <35.544491, 43.742477, 28.745428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217533, 43.109192, 28.734579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608082, 43.040127, 28.682617>,  <35.842411, 42.998688, 28.651440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608082, 43.040127, 28.682617>,  <35.217533, 43.109192, 28.734579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608082, 43.040127, 28.682617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061038, -0.797109, 0.600742,
		-0.207276, -0.578621, -0.788818,
		0.976376, -0.172667, -0.129904,
		35.900993, 42.988327, 28.643646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277306, 42.337357, 28.530279>,  <35.217533, 43.109192, 28.734579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277306, 42.337357, 28.530279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641331, 42.443851, 28.657335>,  <35.859745, 42.507748, 28.733570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641331, 42.443851, 28.657335>,  <35.277306, 42.337357, 28.530279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641331, 42.443851, 28.657335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054770, -0.682426, 0.728900,
		0.410826, -0.680745, -0.606471,
		0.910067, 0.266235, 0.317643,
		35.914352, 42.523724, 28.752628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762833, 41.693916, 28.609661>,  <35.277306, 42.337357, 28.530279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762833, 41.693916, 28.609661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888897, 41.990677, 28.846394>,  <35.964535, 42.168732, 28.988432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888897, 41.990677, 28.846394>,  <35.762833, 41.693916, 28.609661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888897, 41.990677, 28.846394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096195, -0.595425, 0.797631,
		0.944151, -0.308312, -0.116286,
		0.315159, 0.741898, 0.591829,
		35.983444, 42.213245, 29.023943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082764, 41.314552, 29.145344>,  <35.762833, 41.693916, 28.609661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082764, 41.314552, 29.145344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019588, 41.680843, 29.293125>,  <35.981686, 41.900620, 29.381794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019588, 41.680843, 29.293125>,  <36.082764, 41.314552, 29.145344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019588, 41.680843, 29.293125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201559, -0.396168, 0.895782,
		0.966659, 0.067009, 0.247142,
		-0.157935, 0.915729, 0.369453,
		35.972206, 41.955563, 29.403961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836044, 41.250214, 29.181450>,  <36.082764, 41.314552, 29.145344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836044, 41.250214, 29.181450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984825, 40.895576, 29.071459>,  <37.074093, 40.682796, 29.005465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984825, 40.895576, 29.071459>,  <36.836044, 41.250214, 29.181450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984825, 40.895576, 29.071459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258980, 0.185352, -0.947932,
		0.891393, 0.423799, -0.160667,
		0.371953, -0.886589, -0.274977,
		37.096413, 40.629601, 28.988966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192253, 41.414177, 28.530600>,  <36.836044, 41.250214, 29.181450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192253, 41.414177, 28.530600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076385, 41.031326, 28.530069>,  <37.006866, 40.801617, 28.529751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076385, 41.031326, 28.530069>,  <37.192253, 41.414177, 28.530600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076385, 41.031326, 28.530069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299067, 0.091824, -0.949804,
		0.909204, -0.274732, -0.312843,
		-0.289668, -0.957126, -0.001323,
		36.989487, 40.744190, 28.529673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451485, 41.234749, 27.906841>,  <37.192253, 41.414177, 28.530600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451485, 41.234749, 27.906841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173454, 40.961910, 27.997715>,  <37.006638, 40.798206, 28.052238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173454, 40.961910, 27.997715>,  <37.451485, 41.234749, 27.906841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173454, 40.961910, 27.997715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332933, 0.025317, -0.942610,
		0.637201, -0.730823, -0.244691,
		-0.695076, -0.682098, 0.227183,
		36.964931, 40.757282, 28.065870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635719, 40.599773, 27.485596>,  <37.451485, 41.234749, 27.906841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635719, 40.599773, 27.485596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253635, 40.568707, 27.599821>,  <37.024387, 40.550068, 27.668356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253635, 40.568707, 27.599821>,  <37.635719, 40.599773, 27.485596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253635, 40.568707, 27.599821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265347, -0.202481, -0.942652,
		0.131031, -0.976202, 0.172803,
		-0.955208, -0.077664, 0.285564,
		36.967072, 40.545406, 27.685490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264366, 40.094738, 27.047155>,  <37.635719, 40.599773, 27.485596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264366, 40.094738, 27.047155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959152, 40.310459, 27.189667>,  <36.776024, 40.439892, 27.275173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959152, 40.310459, 27.189667>,  <37.264366, 40.094738, 27.047155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959152, 40.310459, 27.189667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464084, -0.073442, -0.882741,
		-0.449899, -0.838903, 0.306321,
		-0.763031, 0.539303, 0.356280,
		36.730244, 40.472252, 27.296551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663826, 39.761772, 26.788908>,  <37.264366, 40.094738, 27.047155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663826, 39.761772, 26.788908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528496, 40.126511, 26.881918>,  <36.447300, 40.345356, 26.937725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528496, 40.126511, 26.881918>,  <36.663826, 39.761772, 26.788908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528496, 40.126511, 26.881918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490148, 0.040178, -0.870713,
		-0.803302, -0.408553, 0.433348,
		-0.338321, 0.911850, 0.232526,
		36.426998, 40.400066, 26.951675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929096, 39.800949, 26.576557>,  <36.663826, 39.761772, 26.788908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929096, 39.800949, 26.576557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046856, 40.182117, 26.605593>,  <36.117512, 40.410820, 26.623014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046856, 40.182117, 26.605593>,  <35.929096, 39.800949, 26.576557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046856, 40.182117, 26.605593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410763, 0.194751, -0.890700,
		-0.862903, 0.232408, 0.448760,
		0.294402, 0.952921, 0.072587,
		36.135178, 40.467995, 26.627369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344692, 40.142838, 26.391764>,  <35.929096, 39.800949, 26.576557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344692, 40.142838, 26.391764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650585, 40.397335, 26.351019>,  <35.834122, 40.550034, 26.326572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650585, 40.397335, 26.351019>,  <35.344692, 40.142838, 26.391764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650585, 40.397335, 26.351019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430961, 0.387524, -0.814922,
		-0.479016, 0.667096, 0.570549,
		0.764733, 0.636245, -0.101862,
		35.880005, 40.588207, 26.320461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022018, 40.847839, 26.060144>,  <35.344692, 40.142838, 26.391764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022018, 40.847839, 26.060144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417015, 40.864719, 25.999380>,  <35.654015, 40.874847, 25.962921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417015, 40.864719, 25.999380>,  <35.022018, 40.847839, 26.060144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417015, 40.864719, 25.999380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153284, 0.482456, -0.862404,
		0.036897, 0.874903, 0.482891,
		0.987493, 0.042199, -0.151910,
		35.713264, 40.877380, 25.953808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064587, 41.446579, 25.726233>,  <35.022018, 40.847839, 26.060144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064587, 41.446579, 25.726233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423866, 41.278187, 25.675598>,  <35.639435, 41.177151, 25.645218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423866, 41.278187, 25.675598>,  <35.064587, 41.446579, 25.726233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423866, 41.278187, 25.675598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010973, 0.309341, -0.950888,
		0.439460, 0.852694, 0.282468,
		0.898195, -0.420976, -0.126587,
		35.693325, 41.151894, 25.637623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488445, 42.021473, 25.382536>,  <35.064587, 41.446579, 25.726233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488445, 42.021473, 25.382536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646111, 41.660851, 25.311165>,  <35.740711, 41.444477, 25.268343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646111, 41.660851, 25.311165>,  <35.488445, 42.021473, 25.382536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646111, 41.660851, 25.311165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201227, 0.274096, -0.940414,
		0.896739, 0.334774, 0.289456,
		0.394165, -0.901553, -0.178428,
		35.764359, 41.390385, 25.257637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116234, 42.102558, 25.132593>,  <35.488445, 42.021473, 25.382536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116234, 42.102558, 25.132593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037243, 41.725449, 25.025133>,  <35.989849, 41.499184, 24.960657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037243, 41.725449, 25.025133>,  <36.116234, 42.102558, 25.132593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037243, 41.725449, 25.025133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155910, 0.240353, -0.958083,
		0.967829, -0.231088, 0.099523,
		-0.197481, -0.942777, -0.268649,
		35.977997, 41.442616, 24.944538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626003, 41.878662, 24.609962>,  <36.116234, 42.102558, 25.132593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626003, 41.878662, 24.609962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278633, 41.684219, 24.570902>,  <36.070210, 41.567554, 24.547464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278633, 41.684219, 24.570902>,  <36.626003, 41.878662, 24.609962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278633, 41.684219, 24.570902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061686, 0.301349, -0.951517,
		0.491967, -0.820298, -0.291685,
		-0.868426, -0.486107, -0.097653,
		36.018105, 41.538387, 24.541607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700317, 41.604698, 23.955017>,  <36.626003, 41.878662, 24.609962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700317, 41.604698, 23.955017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308479, 41.626846, 24.032293>,  <36.073376, 41.640133, 24.078659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308479, 41.626846, 24.032293>,  <36.700317, 41.604698, 23.955017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308479, 41.626846, 24.032293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167043, 0.310133, -0.935903,
		-0.111732, -0.949080, -0.294557,
		-0.979598, 0.055367, 0.193189,
		36.014599, 41.643456, 24.090250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.408024, 41.176796, 26.441566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.779747, 41.320602, 26.475342>,  <29.002781, 41.406887, 26.495607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.779747, 41.320602, 26.475342>,  <28.408024, 41.176796, 26.441566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779747, 41.320602, 26.475342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134304, -0.542001, 0.829577,
		0.344017, -0.759592, -0.551971,
		0.929309, 0.359521, 0.084441,
		29.058540, 41.428459, 26.500673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776356, 40.586727, 26.500437>,  <28.408024, 41.176796, 26.441566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776356, 40.586727, 26.500437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.016680, 40.869865, 26.649021>,  <29.160873, 41.039749, 26.738173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.016680, 40.869865, 26.649021>,  <28.776356, 40.586727, 26.500437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016680, 40.869865, 26.649021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354473, -0.652402, 0.669866,
		0.716503, -0.270789, -0.642882,
		0.600810, 0.707845, 0.371461,
		29.196922, 41.082218, 26.760460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393381, 40.241711, 26.742067>,  <28.776356, 40.586727, 26.500437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393381, 40.241711, 26.742067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427803, 40.607918, 26.899252>,  <29.448456, 40.827641, 26.993563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427803, 40.607918, 26.899252>,  <29.393381, 40.241711, 26.742067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427803, 40.607918, 26.899252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553772, -0.371839, 0.745032,
		0.828210, 0.153499, -0.538987,
		0.086055, 0.915519, 0.392964,
		29.453619, 40.882572, 27.017141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050488, 40.291920, 26.963730>,  <29.393381, 40.241711, 26.742067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050488, 40.291920, 26.963730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.901524, 40.615227, 27.146168>,  <29.812145, 40.809212, 27.255630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.901524, 40.615227, 27.146168>,  <30.050488, 40.291920, 26.963730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901524, 40.615227, 27.146168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660230, -0.114648, 0.742262,
		0.652234, 0.577551, -0.490944,
		-0.372408, 0.808264, 0.456094,
		29.789801, 40.857704, 27.282995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636301, 40.614620, 27.242769>,  <30.050488, 40.291920, 26.963730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636301, 40.614620, 27.242769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.312622, 40.710785, 27.457209>,  <30.118416, 40.768486, 27.585873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.312622, 40.710785, 27.457209>,  <30.636301, 40.614620, 27.242769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312622, 40.710785, 27.457209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456871, -0.316234, 0.831423,
		0.369418, 0.917713, 0.146057,
		-0.809196, 0.240414, 0.536099,
		30.069862, 40.782909, 27.618038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829439, 40.956264, 27.876202>,  <30.636301, 40.614620, 27.242769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829439, 40.956264, 27.876202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455067, 40.847336, 27.965534>,  <30.230444, 40.781979, 28.019133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455067, 40.847336, 27.965534>,  <30.829439, 40.956264, 27.876202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455067, 40.847336, 27.965534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303978, -0.304387, 0.902743,
		-0.177860, 0.912791, 0.367666,
		-0.935929, -0.272324, 0.223330,
		30.174288, 40.765640, 28.032534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758482, 41.262611, 28.533543>,  <30.829439, 40.956264, 27.876202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758482, 41.262611, 28.533543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.479462, 40.979126, 28.491301>,  <30.312050, 40.809036, 28.465956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.479462, 40.979126, 28.491301>,  <30.758482, 41.262611, 28.533543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479462, 40.979126, 28.491301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158854, -0.296670, 0.941675,
		-0.698705, 0.640090, 0.319524,
		-0.697550, -0.708711, -0.105603,
		30.270197, 40.766514, 28.459620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261209, 41.361683, 29.090200>,  <30.758482, 41.262611, 28.533543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261209, 41.361683, 29.090200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.226627, 40.982414, 28.967896>,  <30.205879, 40.754852, 28.894512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.226627, 40.982414, 28.967896>,  <30.261209, 41.361683, 29.090200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226627, 40.982414, 28.967896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124001, -0.314768, 0.941034,
		-0.988509, 0.043441, 0.144788,
		-0.086454, -0.948174, -0.305764,
		30.200691, 40.697964, 28.876165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027025, 40.987114, 29.636675>,  <30.261209, 41.361683, 29.090200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027025, 40.987114, 29.636675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.138536, 40.684174, 29.400471>,  <30.205442, 40.502411, 29.258747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.138536, 40.684174, 29.400471>,  <30.027025, 40.987114, 29.636675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138536, 40.684174, 29.400471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278984, -0.524506, 0.804401,
		-0.918941, -0.388991, 0.065069,
		0.278776, -0.757350, -0.590513,
		30.222170, 40.456970, 29.223316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761570, 40.448051, 29.970793>,  <30.027025, 40.987114, 29.636675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761570, 40.448051, 29.970793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035507, 40.274292, 29.736771>,  <30.199869, 40.170036, 29.596357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035507, 40.274292, 29.736771>,  <29.761570, 40.448051, 29.970793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035507, 40.274292, 29.736771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350982, -0.506970, 0.787269,
		-0.638594, -0.744498, -0.194728,
		0.684842, -0.434399, -0.585054,
		30.240961, 40.143974, 29.561255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790371, 39.705463, 30.178097>,  <29.761570, 40.448051, 29.970793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790371, 39.705463, 30.178097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.143770, 39.789082, 30.010416>,  <30.355810, 39.839252, 29.909807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.143770, 39.789082, 30.010416>,  <29.790371, 39.705463, 30.178097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143770, 39.789082, 30.010416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467317, -0.455108, 0.757952,
		-0.032333, -0.865549, -0.499780,
		0.883498, 0.209049, -0.419200,
		30.408819, 39.851795, 29.884655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176884, 39.022774, 30.117195>,  <29.790371, 39.705463, 30.178097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176884, 39.022774, 30.117195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.432974, 39.329773, 30.104126>,  <30.586628, 39.513973, 30.096285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.432974, 39.329773, 30.104126>,  <30.176884, 39.022774, 30.117195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432974, 39.329773, 30.104126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574101, -0.449776, 0.684185,
		0.510413, -0.456787, -0.728577,
		0.640223, 0.767494, -0.032670,
		30.625040, 39.560020, 30.094324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957264, 38.701412, 30.276356>,  <30.176884, 39.022774, 30.117195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957264, 38.701412, 30.276356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.984915, 39.098854, 30.312059>,  <31.001505, 39.337318, 30.333481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.984915, 39.098854, 30.312059>,  <30.957264, 38.701412, 30.276356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984915, 39.098854, 30.312059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554738, -0.112650, 0.824364,
		0.829149, -0.007471, -0.558978,
		0.069128, 0.993607, 0.089259,
		31.005653, 39.396935, 30.338837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638565, 38.797874, 30.287867>,  <30.957264, 38.701412, 30.276356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638565, 38.797874, 30.287867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.468988, 39.114769, 30.463428>,  <31.367243, 39.304905, 30.568766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.468988, 39.114769, 30.463428>,  <31.638565, 38.797874, 30.287867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468988, 39.114769, 30.463428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446204, -0.239016, 0.862423,
		0.788147, 0.561458, -0.252169,
		-0.423942, 0.792235, 0.438904,
		31.341806, 39.352440, 30.595100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296204, 38.483990, 29.991369>,  <31.638565, 38.797874, 30.287867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296204, 38.483990, 29.991369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337624, 38.087009, 29.965067>,  <32.362476, 37.848824, 29.949286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337624, 38.087009, 29.965067>,  <32.296204, 38.483990, 29.991369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337624, 38.087009, 29.965067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522044, 0.002043, -0.852916,
		0.846610, 0.122646, -0.517890,
		0.103549, -0.992448, -0.065756,
		32.368687, 37.789276, 29.945341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683369, 38.380535, 29.373249>,  <32.296204, 38.483990, 29.991369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683369, 38.380535, 29.373249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495033, 38.031448, 29.424894>,  <32.382034, 37.821995, 29.455881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495033, 38.031448, 29.424894>,  <32.683369, 38.380535, 29.373249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495033, 38.031448, 29.424894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193343, -0.040718, -0.980286,
		0.860774, -0.486517, -0.149563,
		-0.470836, -0.872722, 0.129114,
		32.353783, 37.769630, 29.463629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985928, 37.806686, 28.960068>,  <32.683369, 38.380535, 29.373249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985928, 37.806686, 28.960068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596203, 37.752590, 29.032097>,  <32.362370, 37.720131, 29.075314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596203, 37.752590, 29.032097>,  <32.985928, 37.806686, 28.960068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596203, 37.752590, 29.032097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179523, -0.016335, -0.983618,
		0.135971, -0.990678, -0.008365,
		-0.974312, -0.135245, 0.180071,
		32.303909, 37.712017, 29.086119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730812, 37.442894, 28.372242>,  <32.985928, 37.806686, 28.960068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730812, 37.442894, 28.372242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.394844, 37.579609, 28.540865>,  <32.193264, 37.661636, 28.642038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.394844, 37.579609, 28.540865>,  <32.730812, 37.442894, 28.372242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394844, 37.579609, 28.540865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419090, 0.085038, -0.903954,
		-0.344806, -0.935923, 0.071813,
		-0.839924, 0.341784, 0.421557,
		32.142868, 37.682144, 28.667332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386486, 37.474155, 27.817373>,  <32.730812, 37.442894, 28.372242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386486, 37.474155, 27.817373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.138111, 37.648796, 28.077780>,  <31.989086, 37.753582, 28.234024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.138111, 37.648796, 28.077780>,  <32.386486, 37.474155, 27.817373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138111, 37.648796, 28.077780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521061, 0.390565, -0.758917,
		-0.585608, -0.810455, -0.015019,
		-0.620934, 0.436602, 0.651015,
		31.951832, 37.779778, 28.273085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667589, 37.242668, 27.734720>,  <32.386486, 37.474155, 27.817373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667589, 37.242668, 27.734720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.661676, 37.616776, 27.876169>,  <31.658129, 37.841240, 27.961039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.661676, 37.616776, 27.876169>,  <31.667589, 37.242668, 27.734720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661676, 37.616776, 27.876169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517649, 0.295419, -0.802974,
		-0.855465, -0.194923, 0.479775,
		-0.014783, 0.935271, 0.353622,
		31.657242, 37.897358, 27.982256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980425, 37.533154, 27.593466>,  <31.667589, 37.242668, 27.734720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980425, 37.533154, 27.593466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.185932, 37.867874, 27.669161>,  <31.309237, 38.068707, 27.714579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.185932, 37.867874, 27.669161>,  <30.980425, 37.533154, 27.593466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185932, 37.867874, 27.669161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346618, 0.404228, -0.846437,
		-0.784793, 0.369278, 0.497729,
		0.513767, 0.836799, 0.189237,
		31.340063, 38.118916, 27.725931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543922, 38.104450, 27.423103>,  <30.980425, 37.533154, 27.593466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543922, 38.104450, 27.423103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903759, 38.278244, 27.405380>,  <31.119661, 38.382519, 27.394747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903759, 38.278244, 27.405380>,  <30.543922, 38.104450, 27.423103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903759, 38.278244, 27.405380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279353, 0.494458, -0.823088,
		-0.335709, 0.752819, 0.566184,
		0.899590, 0.434483, -0.044308,
		31.173635, 38.408588, 27.392088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356508, 38.782291, 27.248789>,  <30.543922, 38.104450, 27.423103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356508, 38.782291, 27.248789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.746178, 38.734608, 27.172083>,  <30.979979, 38.705997, 27.126059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.746178, 38.734608, 27.172083>,  <30.356508, 38.782291, 27.248789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746178, 38.734608, 27.172083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092851, 0.562656, -0.821460,
		0.205823, 0.818051, 0.537056,
		0.974174, -0.119209, -0.191764,
		31.038429, 38.698845, 27.114553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550280, 39.477570, 27.244713>,  <30.356508, 38.782291, 27.248789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550280, 39.477570, 27.244713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.782791, 39.230999, 27.032246>,  <30.922298, 39.083057, 26.904766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.782791, 39.230999, 27.032246>,  <30.550280, 39.477570, 27.244713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782791, 39.230999, 27.032246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109804, 0.587383, -0.801825,
		0.806262, 0.524408, 0.273747,
		0.581278, -0.616423, -0.531167,
		30.957174, 39.046074, 26.872896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738905, 39.918175, 26.741261>,  <30.550280, 39.477570, 27.244713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738905, 39.918175, 26.741261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850204, 39.565762, 26.588236>,  <30.916985, 39.354313, 26.496422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850204, 39.565762, 26.588236>,  <30.738905, 39.918175, 26.741261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850204, 39.565762, 26.588236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226166, 0.326993, -0.917565,
		0.933502, 0.341834, -0.108275,
		0.278250, -0.881037, -0.382559,
		30.933680, 39.301449, 26.473469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363314, 39.921272, 26.326418>,  <30.738905, 39.918175, 26.741261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363314, 39.921272, 26.326418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.141722, 39.616302, 26.192667>,  <31.008766, 39.433319, 26.112415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.141722, 39.616302, 26.192667>,  <31.363314, 39.921272, 26.326418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141722, 39.616302, 26.192667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073880, 0.355035, -0.931929,
		0.829245, -0.540974, -0.140355,
		-0.553981, -0.762428, -0.334378,
		30.975527, 39.387573, 26.092354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797991, 39.645168, 25.728134>,  <31.363314, 39.921272, 26.326418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797991, 39.645168, 25.728134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.415365, 39.530289, 25.708103>,  <31.185791, 39.461361, 25.696085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.415365, 39.530289, 25.708103>,  <31.797991, 39.645168, 25.728134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415365, 39.530289, 25.708103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059327, 0.359953, -0.931082,
		0.285427, -0.887667, -0.361356,
		-0.956562, -0.287195, -0.050077,
		31.128397, 39.444130, 25.693081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719559, 39.248024, 25.080788>,  <31.797991, 39.645168, 25.728134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719559, 39.248024, 25.080788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.385933, 39.423565, 25.214499>,  <31.185757, 39.528889, 25.294725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.385933, 39.423565, 25.214499>,  <31.719559, 39.248024, 25.080788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385933, 39.423565, 25.214499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117626, 0.450538, -0.884974,
		-0.538978, -0.777447, -0.324158,
		-0.834066, 0.438852, 0.334278,
		31.135714, 39.555222, 25.314781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080696, 38.773674, 24.541632>,  <31.719559, 39.248024, 25.080788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080696, 38.773674, 24.541632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.374821, 38.917503, 24.311838>,  <32.551296, 39.003799, 24.173962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.374821, 38.917503, 24.311838>,  <32.080696, 38.773674, 24.541632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374821, 38.917503, 24.311838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671109, -0.268076, 0.691193,
		0.094528, -0.893781, -0.438429,
		0.735307, 0.359571, -0.574484,
		32.595413, 39.025375, 24.139492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631565, 38.261230, 24.445919>,  <32.080696, 38.773674, 24.541632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631565, 38.261230, 24.445919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.802990, 38.618397, 24.390724>,  <32.905846, 38.832695, 24.357607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.802990, 38.618397, 24.390724>,  <32.631565, 38.261230, 24.445919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802990, 38.618397, 24.390724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759550, -0.273345, 0.590225,
		0.489302, -0.357755, -0.795358,
		0.428563, 0.892913, -0.137985,
		32.931561, 38.886272, 24.349329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215034, 38.108746, 24.299294>,  <32.631565, 38.261230, 24.445919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215034, 38.108746, 24.299294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.240288, 38.495594, 24.397837>,  <33.255440, 38.727703, 24.456963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.240288, 38.495594, 24.397837>,  <33.215034, 38.108746, 24.299294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240288, 38.495594, 24.397837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662701, -0.225196, 0.714223,
		0.746218, 0.118173, -0.655128,
		0.063131, 0.967121, 0.246359,
		33.259228, 38.785728, 24.471745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948296, 38.310905, 24.307524>,  <33.215034, 38.108746, 24.299294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948296, 38.310905, 24.307524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.770828, 38.574154, 24.550846>,  <33.664349, 38.732101, 24.696840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.770828, 38.574154, 24.550846>,  <33.948296, 38.310905, 24.307524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770828, 38.574154, 24.550846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694953, -0.175927, 0.697202,
		0.565858, 0.732073, -0.379307,
		-0.443672, 0.658117, 0.608306,
		33.637726, 38.771587, 24.733337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511562, 38.623287, 24.624426>,  <33.948296, 38.310905, 24.307524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511562, 38.623287, 24.624426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.222630, 38.728924, 24.880081>,  <34.049271, 38.792305, 25.033474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.222630, 38.728924, 24.880081>,  <34.511562, 38.623287, 24.624426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222630, 38.728924, 24.880081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626805, -0.140431, 0.766417,
		0.292159, 0.954220, -0.064097,
		-0.722329, 0.264091, 0.639137,
		34.005932, 38.808151, 25.071823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763184, 39.222649, 24.968666>,  <34.511562, 38.623287, 24.624426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763184, 39.222649, 24.968666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.482498, 39.085434, 25.218445>,  <34.314087, 39.003105, 25.368311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.482498, 39.085434, 25.218445>,  <34.763184, 39.222649, 24.968666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482498, 39.085434, 25.218445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696883, -0.148180, 0.701710,
		-0.148180, 0.927562, 0.343033,
		-0.701710, -0.343033, 0.624445,
		34.271984, 38.982525, 25.405779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970943, 39.411652, 25.601255>,  <34.763184, 39.222649, 24.968666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970943, 39.411652, 25.601255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701523, 39.142475, 25.723547>,  <34.539871, 38.980968, 25.796923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701523, 39.142475, 25.723547>,  <34.970943, 39.411652, 25.601255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701523, 39.142475, 25.723547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527456, -0.147841, 0.836620,
		-0.517799, 0.724768, 0.454527,
		-0.673553, -0.672944, 0.305731,
		34.499458, 38.940590, 25.815266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937294, 39.524593, 26.385571>,  <34.970943, 39.411652, 25.601255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937294, 39.524593, 26.385571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782276, 39.164036, 26.308327>,  <34.689266, 38.947701, 26.261980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782276, 39.164036, 26.308327>,  <34.937294, 39.524593, 26.385571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782276, 39.164036, 26.308327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343061, -0.335459, 0.877369,
		-0.855638, 0.273774, 0.439241,
		-0.387547, -0.901397, -0.193110,
		34.666012, 38.893616, 26.250393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537510, 39.243195, 27.055521>,  <34.937294, 39.524593, 26.385571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537510, 39.243195, 27.055521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.617500, 38.926067, 26.825237>,  <34.665493, 38.735790, 26.687067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.617500, 38.926067, 26.825237>,  <34.537510, 39.243195, 27.055521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617500, 38.926067, 26.825237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114175, -0.564720, 0.817346,
		-0.973125, -0.229182, -0.022411,
		0.199977, -0.792822, -0.575710,
		34.677494, 38.688221, 26.652525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038944, 38.700779, 27.185041>,  <34.537510, 39.243195, 27.055521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038944, 38.700779, 27.185041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385113, 38.564915, 27.037708>,  <34.592815, 38.483398, 26.949308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385113, 38.564915, 27.037708>,  <34.038944, 38.700779, 27.185041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385113, 38.564915, 27.037708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120535, -0.572417, 0.811055,
		-0.486320, -0.746306, -0.454445,
		0.865427, -0.339656, -0.368334,
		34.644741, 38.463017, 26.927208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012173, 38.004265, 27.441957>,  <34.038944, 38.700779, 27.185041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012173, 38.004265, 27.441957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.379650, 38.087250, 27.307516>,  <34.600136, 38.137043, 27.226851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.379650, 38.087250, 27.307516>,  <34.012173, 38.004265, 27.441957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379650, 38.087250, 27.307516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394453, -0.437947, 0.807842,
		0.020404, -0.874734, -0.484174,
		0.918689, 0.207467, -0.336105,
		34.655258, 38.149490, 27.206684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493942, 37.366920, 27.653690>,  <34.012173, 38.004265, 27.441957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493942, 37.366920, 27.653690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744579, 37.672031, 27.589745>,  <34.894962, 37.855099, 27.551376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744579, 37.672031, 27.589745>,  <34.493942, 37.366920, 27.653690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744579, 37.672031, 27.589745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561766, -0.299875, 0.771034,
		0.540187, -0.572929, -0.616401,
		0.626591, 0.762776, -0.159864,
		34.932556, 37.900864, 27.541786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124187, 37.076153, 27.733196>,  <34.493942, 37.366920, 27.653690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124187, 37.076153, 27.733196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206059, 37.467110, 27.754374>,  <35.255180, 37.701683, 27.767080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206059, 37.467110, 27.754374>,  <35.124187, 37.076153, 27.733196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206059, 37.467110, 27.754374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637613, -0.174170, 0.750410,
		0.742669, -0.119834, -0.658849,
		0.204676, 0.977397, 0.052942,
		35.267460, 37.760330, 27.770256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871723, 37.190964, 27.694967>,  <35.124187, 37.076153, 27.733196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871723, 37.190964, 27.694967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741444, 37.498837, 27.914604>,  <35.663277, 37.683563, 28.046387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741444, 37.498837, 27.914604>,  <35.871723, 37.190964, 27.694967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741444, 37.498837, 27.914604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643324, -0.245180, 0.725273,
		0.692860, 0.589465, -0.415303,
		-0.325699, 0.769687, 0.549092,
		35.643734, 37.729744, 28.079332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.878738, 40.774708, 23.173233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730297, 41.078728, 23.386629>,  <35.641232, 41.261139, 23.514668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730297, 41.078728, 23.386629>,  <35.878738, 40.774708, 23.173233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730297, 41.078728, 23.386629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709795, 0.138249, -0.690708,
		-0.598724, -0.634994, 0.488172,
		-0.371106, 0.760046, 0.533489,
		35.618965, 41.306740, 23.546677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077301, 40.659103, 23.181971>,  <35.878738, 40.774708, 23.173233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077301, 40.659103, 23.181971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145710, 41.047073, 23.251259>,  <35.186756, 41.279854, 23.292831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145710, 41.047073, 23.251259>,  <35.077301, 40.659103, 23.181971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145710, 41.047073, 23.251259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676892, 0.243416, -0.694670,
		-0.715940, 0.001550, 0.698160,
		0.171020, 0.969921, 0.173222,
		35.197018, 41.338051, 23.303225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341515, 40.920319, 23.278154>,  <35.077301, 40.659103, 23.181971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341515, 40.920319, 23.278154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583237, 41.232227, 23.212717>,  <34.728271, 41.419373, 23.173454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583237, 41.232227, 23.212717>,  <34.341515, 40.920319, 23.278154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583237, 41.232227, 23.212717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675798, 0.392891, -0.623645,
		-0.422029, 0.487430, 0.764398,
		0.604308, 0.779775, -0.163593,
		34.764530, 41.466160, 23.163639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886612, 41.532169, 23.404644>,  <34.341515, 40.920319, 23.278154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886612, 41.532169, 23.404644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198090, 41.650829, 23.183506>,  <34.384975, 41.722023, 23.050823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198090, 41.650829, 23.183506>,  <33.886612, 41.532169, 23.404644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198090, 41.650829, 23.183506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625733, 0.302893, -0.718829,
		-0.045786, 0.905680, 0.421482,
		0.778693, 0.296648, -0.552845,
		34.431698, 41.739822, 23.017653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907761, 42.238438, 23.380798>,  <33.886612, 41.532169, 23.404644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907761, 42.238438, 23.380798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129112, 42.137478, 23.063292>,  <34.261925, 42.076904, 22.872787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129112, 42.137478, 23.063292>,  <33.907761, 42.238438, 23.380798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129112, 42.137478, 23.063292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692069, 0.390948, -0.606794,
		0.463475, 0.885129, 0.041667,
		0.553381, -0.252398, -0.793766,
		34.295128, 42.061760, 22.825161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902878, 42.813232, 22.955828>,  <33.907761, 42.238438, 23.380798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902878, 42.813232, 22.955828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001553, 42.519257, 22.703157>,  <34.060757, 42.342873, 22.551556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001553, 42.519257, 22.703157>,  <33.902878, 42.813232, 22.955828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001553, 42.519257, 22.703157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526295, 0.445721, -0.724118,
		0.813732, 0.511076, -0.276841,
		0.246686, -0.734938, -0.631675,
		34.075558, 42.298775, 22.513655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964565, 43.081116, 22.360603>,  <33.902878, 42.813232, 22.955828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964565, 43.081116, 22.360603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925819, 42.708370, 22.220753>,  <33.902573, 42.484722, 22.136843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925819, 42.708370, 22.220753>,  <33.964565, 43.081116, 22.360603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925819, 42.708370, 22.220753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650198, 0.325209, -0.686646,
		0.753565, 0.160814, -0.637400,
		-0.096866, -0.931868, -0.349627,
		33.896759, 42.428810, 22.115866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822872, 43.194210, 21.603107>,  <33.964565, 43.081116, 22.360603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822872, 43.194210, 21.603107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721165, 42.818073, 21.693529>,  <33.660141, 42.592392, 21.747782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721165, 42.818073, 21.693529>,  <33.822872, 43.194210, 21.603107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721165, 42.818073, 21.693529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700552, 0.017934, -0.713376,
		0.666766, -0.339748, -0.663321,
		-0.254264, -0.940346, 0.226053,
		33.644886, 42.535969, 21.761345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839378, 42.880043, 20.958117>,  <33.822872, 43.194210, 21.603107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839378, 42.880043, 20.958117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623150, 42.614601, 21.164963>,  <33.493412, 42.455338, 21.289070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623150, 42.614601, 21.164963>,  <33.839378, 42.880043, 20.958117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623150, 42.614601, 21.164963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755395, 0.112274, -0.645579,
		0.370351, -0.739609, -0.561977,
		-0.540572, -0.663606, 0.517116,
		33.460979, 42.415520, 21.320099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652950, 42.328716, 20.469305>,  <33.839378, 42.880043, 20.958117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652950, 42.328716, 20.469305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416641, 42.302052, 20.790937>,  <33.274857, 42.286053, 20.983917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416641, 42.302052, 20.790937>,  <33.652950, 42.328716, 20.469305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416641, 42.302052, 20.790937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759143, -0.291638, -0.581936,
		0.273291, -0.954203, 0.121689,
		-0.590774, -0.066659, 0.804079,
		33.239410, 42.282055, 21.032162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400669, 41.640766, 20.451231>,  <33.652950, 42.328716, 20.469305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400669, 41.640766, 20.451231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131180, 41.823025, 20.683949>,  <32.969486, 41.932381, 20.823578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131180, 41.823025, 20.683949>,  <33.400669, 41.640766, 20.451231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131180, 41.823025, 20.683949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719571, -0.225238, -0.656875,
		-0.168259, -0.861195, 0.479616,
		-0.673726, 0.455643, 0.581793,
		32.929062, 41.959717, 20.858486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872139, 41.141533, 20.495781>,  <33.400669, 41.640766, 20.451231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872139, 41.141533, 20.495781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729080, 41.511448, 20.547724>,  <32.643246, 41.733395, 20.578890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729080, 41.511448, 20.547724>,  <32.872139, 41.141533, 20.495781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729080, 41.511448, 20.547724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753902, -0.203866, -0.624556,
		-0.551106, -0.321271, 0.770109,
		-0.357651, 0.924783, 0.129855,
		32.621784, 41.788883, 20.586679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131939, 41.291454, 20.877777>,  <32.872139, 41.141533, 20.495781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131939, 41.291454, 20.877777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249847, 41.526806, 20.576599>,  <32.320591, 41.668015, 20.395893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249847, 41.526806, 20.576599>,  <32.131939, 41.291454, 20.877777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249847, 41.526806, 20.576599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737424, -0.361051, -0.570831,
		-0.607714, 0.723503, 0.327455,
		0.294770, 0.588375, -0.752945,
		32.338280, 41.703320, 20.350716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546862, 41.706059, 20.582016>,  <32.131939, 41.291454, 20.877777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546862, 41.706059, 20.582016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828451, 41.642452, 20.305140>,  <31.997406, 41.604286, 20.139013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828451, 41.642452, 20.305140>,  <31.546862, 41.706059, 20.582016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828451, 41.642452, 20.305140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699917, -0.320775, -0.638137,
		-0.120562, 0.933711, -0.337118,
		0.703975, -0.159020, -0.692194,
		32.039642, 41.594746, 20.097481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519947, 41.610882, 19.914768>,  <31.546862, 41.706059, 20.582016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519947, 41.610882, 19.914768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293516, 41.420166, 19.645777>,  <31.157658, 41.305737, 19.484383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293516, 41.420166, 19.645777>,  <31.519947, 41.610882, 19.914768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293516, 41.420166, 19.645777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257501, -0.672673, 0.693689,
		-0.783101, 0.565846, 0.258013,
		-0.566079, -0.476790, -0.672477,
		31.123692, 41.277130, 19.444033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845110, 41.516266, 20.177546>,  <31.519947, 41.610882, 19.914768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845110, 41.516266, 20.177546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.893250, 41.233299, 19.898954>,  <30.922132, 41.063519, 19.731800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.893250, 41.233299, 19.898954>,  <30.845110, 41.516266, 20.177546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893250, 41.233299, 19.898954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276518, -0.697697, 0.660876,
		-0.953443, 0.113053, -0.279580,
		0.120348, -0.707416, -0.696476,
		30.929354, 41.021072, 19.690012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342245, 40.952957, 20.325951>,  <30.845110, 41.516266, 20.177546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342245, 40.952957, 20.325951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633356, 40.785522, 20.108648>,  <30.808023, 40.685062, 19.978268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633356, 40.785522, 20.108648>,  <30.342245, 40.952957, 20.325951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633356, 40.785522, 20.108648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084303, -0.731525, 0.676583,
		-0.680610, -0.538202, -0.497101,
		0.727780, -0.418582, -0.543255,
		30.851690, 40.659946, 19.945671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123718, 40.241100, 20.258265>,  <30.342245, 40.952957, 20.325951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123718, 40.241100, 20.258265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518045, 40.270622, 20.197979>,  <30.754642, 40.288334, 20.161808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518045, 40.270622, 20.197979>,  <30.123718, 40.241100, 20.258265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518045, 40.270622, 20.197979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153617, -0.758415, 0.633410,
		-0.067557, -0.647580, -0.758997,
		0.985818, 0.073804, -0.150716,
		30.813791, 40.292763, 20.152763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287977, 39.600304, 20.372766>,  <30.123718, 40.241100, 20.258265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287977, 39.600304, 20.372766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.631767, 39.804310, 20.386507>,  <30.838041, 39.926716, 20.394753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.631767, 39.804310, 20.386507>,  <30.287977, 39.600304, 20.372766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631767, 39.804310, 20.386507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362811, -0.655984, 0.661856,
		0.360094, -0.556386, -0.748844,
		0.859477, 0.510019, 0.034353,
		30.889610, 39.957317, 20.396812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810545, 39.084175, 20.302475>,  <30.287977, 39.600304, 20.372766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810545, 39.084175, 20.302475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972282, 39.405594, 20.477205>,  <31.069324, 39.598446, 20.582043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972282, 39.405594, 20.477205>,  <30.810545, 39.084175, 20.302475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972282, 39.405594, 20.477205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436521, -0.589251, 0.679877,
		0.803713, -0.084222, -0.589026,
		0.404345, 0.803548, 0.436824,
		31.093586, 39.646660, 20.608253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319628, 38.798038, 20.759300>,  <30.810545, 39.084175, 20.302475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319628, 38.798038, 20.759300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.282322, 39.160839, 20.923567>,  <31.259939, 39.378521, 21.022127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.282322, 39.160839, 20.923567>,  <31.319628, 38.798038, 20.759300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282322, 39.160839, 20.923567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527489, -0.304809, 0.792999,
		0.844427, 0.290579, -0.450007,
		-0.093263, 0.907004, 0.410666,
		31.254343, 39.432941, 21.046766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993813, 38.961304, 21.086525>,  <31.319628, 38.798038, 20.759300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993813, 38.961304, 21.086525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713268, 39.184700, 21.263695>,  <31.544941, 39.318737, 21.369997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713268, 39.184700, 21.263695>,  <31.993813, 38.961304, 21.086525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713268, 39.184700, 21.263695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417702, -0.181496, 0.890272,
		0.577595, 0.809414, -0.105987,
		-0.701362, 0.558488, 0.442925,
		31.502859, 39.352245, 21.396572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452950, 39.299206, 21.471642>,  <31.993813, 38.961304, 21.086525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452950, 39.299206, 21.471642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105946, 39.393013, 21.647104>,  <31.897741, 39.449299, 21.752382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105946, 39.393013, 21.647104>,  <32.452950, 39.299206, 21.471642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105946, 39.393013, 21.647104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446668, -0.020766, 0.894459,
		0.218876, 0.971890, -0.086737,
		-0.867514, 0.234518, 0.438657,
		31.845692, 39.463367, 21.778702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594677, 39.769924, 21.967205>,  <32.452950, 39.299206, 21.471642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594677, 39.769924, 21.967205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.247162, 39.607323, 22.080320>,  <32.038654, 39.509762, 22.148190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.247162, 39.607323, 22.080320>,  <32.594677, 39.769924, 21.967205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247162, 39.607323, 22.080320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295928, 0.031670, 0.954685,
		-0.397042, 0.913099, 0.092782,
		-0.868783, -0.406507, 0.282786,
		31.986526, 39.485371, 22.165155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159767, 40.179688, 22.521858>,  <32.594677, 39.769924, 21.967205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159767, 40.179688, 22.521858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.058315, 39.794884, 22.562284>,  <31.997444, 39.564003, 22.586540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.058315, 39.794884, 22.562284>,  <32.159767, 40.179688, 22.521858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058315, 39.794884, 22.562284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360036, 0.003086, 0.932933,
		-0.897800, 0.273007, 0.345575,
		-0.253631, -0.962007, 0.101063,
		31.982225, 39.506283, 22.592604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892582, 40.153889, 23.151182>,  <32.159767, 40.179688, 22.521858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892582, 40.153889, 23.151182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984694, 39.771069, 23.080723>,  <32.039959, 39.541378, 23.038446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984694, 39.771069, 23.080723>,  <31.892582, 40.153889, 23.151182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984694, 39.771069, 23.080723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338456, -0.090945, 0.936577,
		-0.912371, -0.275291, 0.302976,
		0.230277, -0.957050, -0.176149,
		32.053776, 39.483955, 23.027878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714897, 39.905563, 23.757654>,  <31.892582, 40.153889, 23.151182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714897, 39.905563, 23.757654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956953, 39.627487, 23.602467>,  <32.102188, 39.460640, 23.509354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956953, 39.627487, 23.602467>,  <31.714897, 39.905563, 23.757654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956953, 39.627487, 23.602467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380265, -0.175738, 0.908028,
		-0.699432, -0.697013, 0.158010,
		0.605139, -0.695189, -0.387967,
		32.138496, 39.418930, 23.486076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751640, 39.447697, 24.248188>,  <31.714897, 39.905563, 23.757654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751640, 39.447697, 24.248188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.073067, 39.362587, 24.025833>,  <32.265923, 39.311520, 23.892420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.073067, 39.362587, 24.025833>,  <31.751640, 39.447697, 24.248188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073067, 39.362587, 24.025833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538429, -0.138268, 0.831250,
		-0.253732, -0.967268, 0.003458,
		0.803564, -0.212777, -0.555888,
		32.314137, 39.298756, 23.859066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278053, 39.030605, 24.541845>,  <31.751640, 39.447697, 24.248188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278053, 39.030605, 24.541845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080223, 39.311394, 24.746838>,  <30.961525, 39.479866, 24.869833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080223, 39.311394, 24.746838>,  <31.278053, 39.030605, 24.541845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080223, 39.311394, 24.746838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274031, 0.433626, -0.858415,
		-0.824803, -0.564988, -0.022101,
		-0.494577, 0.701967, 0.512480,
		30.931850, 39.521984, 24.900581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649597, 39.021332, 24.313757>,  <31.278053, 39.030605, 24.541845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649597, 39.021332, 24.313757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619814, 39.383129, 24.481733>,  <30.601944, 39.600208, 24.582520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619814, 39.383129, 24.481733>,  <30.649597, 39.021332, 24.313757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619814, 39.383129, 24.481733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414165, 0.355023, -0.838109,
		-0.907151, -0.236329, 0.348174,
		-0.074460, 0.904493, 0.419939,
		30.597475, 39.654476, 24.607716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057222, 39.393185, 24.044277>,  <30.649597, 39.021332, 24.313757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057222, 39.393185, 24.044277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270010, 39.703266, 24.180553>,  <30.397682, 39.889313, 24.262320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270010, 39.703266, 24.180553>,  <30.057222, 39.393185, 24.044277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270010, 39.703266, 24.180553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354128, 0.569144, -0.742070,
		-0.769156, 0.274110, 0.577289,
		0.531969, 0.775202, 0.340691,
		30.429602, 39.935825, 24.282761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577827, 39.961922, 24.159739>,  <30.057222, 39.393185, 24.044277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577827, 39.961922, 24.159739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.944197, 40.114136, 24.108706>,  <30.164019, 40.205463, 24.078085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.944197, 40.114136, 24.108706>,  <29.577827, 39.961922, 24.159739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944197, 40.114136, 24.108706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375596, 0.700627, -0.606670,
		-0.141474, 0.603582, 0.784649,
		0.915922, 0.380539, -0.127583,
		30.218973, 40.228298, 24.070431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372465, 40.560791, 24.201313>,  <29.577827, 39.961922, 24.159739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372465, 40.560791, 24.201313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.737928, 40.556690, 24.038771>,  <29.957207, 40.554230, 23.941246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.737928, 40.556690, 24.038771>,  <29.372465, 40.560791, 24.201313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737928, 40.556690, 24.038771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319765, 0.599060, -0.734083,
		0.250961, 0.800639, 0.544056,
		0.913657, -0.010256, -0.406357,
		30.012026, 40.553612, 23.916864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528744, 41.272610, 24.028730>,  <29.372465, 40.560791, 24.201313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528744, 41.272610, 24.028730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.781326, 41.061745, 23.801273>,  <29.932877, 40.935226, 23.664799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.781326, 41.061745, 23.801273>,  <29.528744, 41.272610, 24.028730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781326, 41.061745, 23.801273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314201, 0.496489, -0.809183,
		0.708899, 0.689634, 0.147876,
		0.631459, -0.527166, -0.568644,
		29.970764, 40.903595, 23.630680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037409, 41.775799, 23.612434>,  <29.528744, 41.272610, 24.028730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037409, 41.775799, 23.612434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995125, 41.423283, 23.428194>,  <29.969755, 41.211773, 23.317650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995125, 41.423283, 23.428194>,  <30.037409, 41.775799, 23.612434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995125, 41.423283, 23.428194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166455, 0.472345, -0.865554,
		0.980366, -0.014828, -0.196627,
		-0.105710, -0.881289, -0.460602,
		29.963411, 41.158897, 23.290012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287497, 42.405701, 23.699116>,  <30.037409, 41.775799, 23.612434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287497, 42.405701, 23.699116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995672, 42.622002, 23.866606>,  <29.820578, 42.751781, 23.967100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995672, 42.622002, 23.866606>,  <30.287497, 42.405701, 23.699116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995672, 42.622002, 23.866606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029592, -0.586712, 0.809255,
		0.683273, 0.602793, 0.412041,
		-0.729563, 0.540749, 0.418723,
		29.776804, 42.784225, 23.992222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486921, 42.511066, 24.354303>,  <30.287497, 42.405701, 23.699116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486921, 42.511066, 24.354303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.095840, 42.588348, 24.387226>,  <29.861193, 42.634716, 24.406981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.095840, 42.588348, 24.387226>,  <30.486921, 42.511066, 24.354303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095840, 42.588348, 24.387226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032532, -0.526538, 0.849529,
		0.207471, 0.827907, 0.521082,
		-0.977700, 0.193205, 0.082308,
		29.802530, 42.646309, 24.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342447, 42.619915, 25.054558>,  <30.486921, 42.511066, 24.354303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342447, 42.619915, 25.054558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959097, 42.577400, 24.948561>,  <29.729086, 42.551891, 24.884962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959097, 42.577400, 24.948561>,  <30.342447, 42.619915, 25.054558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959097, 42.577400, 24.948561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207653, -0.377511, 0.902422,
		-0.195950, 0.919885, 0.339727,
		-0.958376, -0.106284, -0.264990,
		29.671585, 42.545513, 24.869064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050310, 42.774517, 25.650452>,  <30.342447, 42.619915, 25.054558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050310, 42.774517, 25.650452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.783905, 42.567589, 25.435490>,  <29.624062, 42.443432, 25.306513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.783905, 42.567589, 25.435490>,  <30.050310, 42.774517, 25.650452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783905, 42.567589, 25.435490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307956, -0.465494, 0.829746,
		-0.679403, 0.718121, 0.150714,
		-0.666014, -0.517319, -0.537407,
		29.584101, 42.412392, 25.274267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424398, 42.892143, 25.962070>,  <30.050310, 42.774517, 25.650452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424398, 42.892143, 25.962070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.383461, 42.559666, 25.743479>,  <29.358898, 42.360180, 25.612324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.383461, 42.559666, 25.743479>,  <29.424398, 42.892143, 25.962070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383461, 42.559666, 25.743479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287169, -0.501285, 0.816240,
		-0.952397, 0.240468, -0.187391,
		-0.102343, -0.831197, -0.546477,
		29.352758, 42.310307, 25.579536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867949, 42.614021, 26.293375>,  <29.424398, 42.892143, 25.962070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867949, 42.614021, 26.293375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005270, 42.287327, 26.107864>,  <29.087662, 42.091312, 25.996557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005270, 42.287327, 26.107864>,  <28.867949, 42.614021, 26.293375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005270, 42.287327, 26.107864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204649, -0.546969, 0.811753,
		-0.916658, -0.183765, -0.354920,
		0.343302, -0.816734, -0.463777,
		29.108261, 42.042305, 25.968731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346209, 41.936581, 26.337530>,  <28.867949, 42.614021, 26.293375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346209, 41.936581, 26.337530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715706, 41.811909, 26.248486>,  <28.937405, 41.737106, 26.195059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715706, 41.811909, 26.248486>,  <28.346209, 41.936581, 26.337530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715706, 41.811909, 26.248486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019687, -0.541803, 0.840275,
		-0.382505, -0.780581, -0.494351,
		0.923744, -0.311677, -0.222610,
		28.992828, 41.718407, 26.181702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.430336, 44.985165, 22.192244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.459215, 44.599541, 22.089972>,  <31.476543, 44.368164, 22.028608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.459215, 44.599541, 22.089972>,  <31.430336, 44.985165, 22.192244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459215, 44.599541, 22.089972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679787, -0.140020, 0.719919,
		-0.729847, -0.225785, 0.645248,
		0.072199, -0.964062, -0.255679,
		31.480875, 44.310322, 22.013268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274931, 44.553188, 22.769356>,  <31.430336, 44.985165, 22.192244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274931, 44.553188, 22.769356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.516853, 44.383766, 22.499598>,  <31.662006, 44.282112, 22.337742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.516853, 44.383766, 22.499598>,  <31.274931, 44.553188, 22.769356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516853, 44.383766, 22.499598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614426, -0.290573, 0.733517,
		-0.506643, -0.858005, 0.084500,
		0.604808, -0.423550, -0.674397,
		31.698296, 44.256702, 22.297277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359186, 43.912140, 23.024920>,  <31.274931, 44.553188, 22.769356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359186, 43.912140, 23.024920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.681170, 43.937767, 22.788975>,  <31.874359, 43.953144, 22.647408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.681170, 43.937767, 22.788975>,  <31.359186, 43.912140, 23.024920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681170, 43.937767, 22.788975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587648, -0.223360, 0.777676,
		-0.081927, -0.972628, -0.217445,
		0.804958, 0.064068, -0.589862,
		31.922657, 43.956985, 22.612017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864746, 43.394405, 23.270998>,  <31.359186, 43.912140, 23.024920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864746, 43.394405, 23.270998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076794, 43.670616, 23.074163>,  <32.204021, 43.836342, 22.956062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076794, 43.670616, 23.074163>,  <31.864746, 43.394405, 23.270998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076794, 43.670616, 23.074163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791246, -0.194242, 0.579827,
		0.304800, -0.696741, -0.649346,
		0.530119, 0.690524, -0.492089,
		32.235828, 43.877773, 22.926537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539825, 43.115162, 23.166368>,  <31.864746, 43.394405, 23.270998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539825, 43.115162, 23.166368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.586086, 43.510406, 23.125868>,  <32.613842, 43.747555, 23.101568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.586086, 43.510406, 23.125868>,  <32.539825, 43.115162, 23.166368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586086, 43.510406, 23.125868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799280, -0.032061, 0.600104,
		0.589726, -0.150333, -0.793488,
		0.115655, 0.988116, -0.101251,
		32.620785, 43.806843, 23.095493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264381, 43.247684, 23.092279>,  <32.539825, 43.115162, 23.166368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264381, 43.247684, 23.092279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135395, 43.616695, 23.177084>,  <33.058002, 43.838104, 23.227966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135395, 43.616695, 23.177084>,  <33.264381, 43.247684, 23.092279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135395, 43.616695, 23.177084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837663, 0.173806, 0.517795,
		0.440834, 0.344568, -0.828817,
		-0.322469, 0.922531, 0.212013,
		33.038654, 43.893456, 23.240688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841320, 43.703629, 23.039928>,  <33.264381, 43.247684, 23.092279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841320, 43.703629, 23.039928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.595551, 43.916290, 23.273109>,  <33.448090, 44.043888, 23.413017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.595551, 43.916290, 23.273109>,  <33.841320, 43.703629, 23.039928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595551, 43.916290, 23.273109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738805, 0.128422, 0.661570,
		0.276861, 0.837171, -0.471692,
		-0.614423, 0.531651, 0.582951,
		33.411224, 44.075787, 23.447994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301006, 44.286743, 23.195007>,  <33.841320, 43.703629, 23.039928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301006, 44.286743, 23.195007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.003006, 44.230568, 23.455851>,  <33.824203, 44.196861, 23.612356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.003006, 44.230568, 23.455851>,  <34.301006, 44.286743, 23.195007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003006, 44.230568, 23.455851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661791, -0.032970, 0.748963,
		-0.083683, 0.989541, 0.117503,
		-0.745003, -0.140438, 0.652110,
		33.779507, 44.188438, 23.651484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452038, 44.637375, 23.827627>,  <34.301006, 44.286743, 23.195007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452038, 44.637375, 23.827627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.146378, 44.420567, 23.967503>,  <33.962982, 44.290482, 24.051428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.146378, 44.420567, 23.967503>,  <34.452038, 44.637375, 23.827627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146378, 44.420567, 23.967503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342286, 0.118759, 0.932060,
		-0.546729, 0.831928, 0.094778,
		-0.764152, -0.542026, 0.349687,
		33.917133, 44.257957, 24.072409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019104, 44.987572, 24.319691>,  <34.452038, 44.637375, 23.827627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019104, 44.987572, 24.319691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.965900, 44.602386, 24.413509>,  <33.933979, 44.371277, 24.469801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.965900, 44.602386, 24.413509>,  <34.019104, 44.987572, 24.319691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965900, 44.602386, 24.413509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160237, 0.212645, 0.963902,
		-0.978076, 0.165792, 0.126019,
		-0.133010, -0.962962, 0.234549,
		33.925999, 44.313499, 24.483873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592239, 45.080456, 24.862797>,  <34.019104, 44.987572, 24.319691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592239, 45.080456, 24.862797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743259, 44.710930, 24.888170>,  <33.833870, 44.489216, 24.903395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743259, 44.710930, 24.888170>,  <33.592239, 45.080456, 24.862797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743259, 44.710930, 24.888170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138566, 0.124096, 0.982548,
		-0.915562, -0.362172, 0.174862,
		0.377551, -0.923813, 0.063433,
		33.856525, 44.433784, 24.907200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485497, 44.832409, 25.547033>,  <33.592239, 45.080456, 24.862797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485497, 44.832409, 25.547033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786495, 44.601906, 25.419483>,  <33.967094, 44.463604, 25.342953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786495, 44.601906, 25.419483>,  <33.485497, 44.832409, 25.547033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786495, 44.601906, 25.419483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392135, 0.003025, 0.919902,
		-0.529134, -0.817264, 0.228247,
		0.752493, -0.576256, -0.318877,
		34.012245, 44.429028, 25.323820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921131, 44.869289, 26.146589>,  <33.485497, 44.832409, 25.547033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921131, 44.869289, 26.146589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816113, 45.205853, 26.335524>,  <32.753101, 45.407791, 26.448885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816113, 45.205853, 26.335524>,  <32.921131, 44.869289, 26.146589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816113, 45.205853, 26.335524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308172, 0.390755, -0.867376,
		-0.914384, -0.373290, 0.156706,
		-0.262549, 0.841407, 0.472338,
		32.737347, 45.458275, 26.477224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269867, 45.062832, 25.843531>,  <32.921131, 44.869289, 26.146589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269867, 45.062832, 25.843531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353992, 45.411907, 26.019796>,  <32.404469, 45.621353, 26.125557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353992, 45.411907, 26.019796>,  <32.269867, 45.062832, 25.843531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353992, 45.411907, 26.019796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300569, 0.486634, -0.820271,
		-0.930283, 0.040062, 0.364648,
		0.210312, 0.872687, 0.440666,
		32.417088, 45.673714, 26.151997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668701, 45.493885, 25.993250>,  <32.269867, 45.062832, 25.843531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668701, 45.493885, 25.993250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972862, 45.747055, 25.935020>,  <32.155357, 45.898956, 25.900084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972862, 45.747055, 25.935020>,  <31.668701, 45.493885, 25.993250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972862, 45.747055, 25.935020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481933, 0.399651, -0.779756,
		-0.435350, 0.663085, 0.608924,
		0.760402, 0.632927, -0.145574,
		32.200981, 45.936932, 25.891348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402685, 46.114952, 25.864651>,  <31.668701, 45.493885, 25.993250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402685, 46.114952, 25.864651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.770382, 46.124176, 25.707445>,  <31.990999, 46.129711, 25.613121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.770382, 46.124176, 25.707445>,  <31.402685, 46.114952, 25.864651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770382, 46.124176, 25.707445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382027, 0.293456, -0.876321,
		0.095122, 0.955694, 0.278568,
		0.919243, 0.023063, -0.393016,
		32.046154, 46.131096, 25.589540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347279, 46.495800, 25.434303>,  <31.402685, 46.114952, 25.864651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347279, 46.495800, 25.434303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.710421, 46.393795, 25.301176>,  <31.928307, 46.332592, 25.221300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.710421, 46.393795, 25.301176>,  <31.347279, 46.495800, 25.434303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710421, 46.393795, 25.301176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219550, 0.387122, -0.895508,
		0.357205, 0.886062, 0.295463,
		0.907856, -0.255011, -0.332816,
		31.982777, 46.317291, 25.201332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603357, 47.101841, 24.982401>,  <31.347279, 46.495800, 25.434303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603357, 47.101841, 24.982401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.843473, 46.803196, 24.867704>,  <31.987543, 46.624008, 24.798885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.843473, 46.803196, 24.867704>,  <31.603357, 47.101841, 24.982401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843473, 46.803196, 24.867704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010748, 0.350961, -0.936328,
		0.799711, 0.565149, 0.202653,
		0.600289, -0.746614, -0.286742,
		32.023560, 46.579212, 24.781681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053280, 47.408886, 24.476774>,  <31.603357, 47.101841, 24.982401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053280, 47.408886, 24.476774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.103607, 47.018898, 24.403458>,  <32.133804, 46.784904, 24.359468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.103607, 47.018898, 24.403458>,  <32.053280, 47.408886, 24.476774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103607, 47.018898, 24.403458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106669, 0.196984, -0.974587,
		0.986301, 0.103073, 0.128784,
		0.125822, -0.974973, -0.183291,
		32.141354, 46.726406, 24.348471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664936, 47.293022, 23.911392>,  <32.053280, 47.408886, 24.476774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664936, 47.293022, 23.911392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434807, 46.966290, 23.894487>,  <32.296730, 46.770248, 23.884344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434807, 46.966290, 23.894487>,  <32.664936, 47.293022, 23.911392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434807, 46.966290, 23.894487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089300, 0.114092, -0.989449,
		0.813036, -0.565479, -0.138584,
		-0.575323, -0.816833, -0.042264,
		32.262211, 46.721241, 23.881807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907581, 46.842861, 23.231634>,  <32.664936, 47.293022, 23.911392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907581, 46.842861, 23.231634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.530399, 46.743179, 23.319941>,  <32.304092, 46.683369, 23.372925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.530399, 46.743179, 23.319941>,  <32.907581, 46.842861, 23.231634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530399, 46.743179, 23.319941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236495, 0.034656, -0.971014,
		0.234333, -0.967830, -0.091615,
		-0.942952, -0.249207, 0.220766,
		32.247513, 46.668419, 23.386169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645004, 46.369804, 22.628595>,  <32.907581, 46.842861, 23.231634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645004, 46.369804, 22.628595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.318035, 46.510826, 22.810816>,  <32.121853, 46.595440, 22.920147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.318035, 46.510826, 22.810816>,  <32.645004, 46.369804, 22.628595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318035, 46.510826, 22.810816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489575, -0.008471, -0.871920,
		-0.303542, -0.935752, 0.179528,
		-0.817422, 0.352557, 0.455549,
		32.072807, 46.616592, 22.947481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063862, 46.037365, 22.293573>,  <32.645004, 46.369804, 22.628595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063862, 46.037365, 22.293573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.926201, 46.361530, 22.483219>,  <31.843603, 46.556030, 22.597006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.926201, 46.361530, 22.483219>,  <32.063862, 46.037365, 22.293573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926201, 46.361530, 22.483219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535389, 0.245433, -0.808159,
		-0.771308, -0.531968, 0.349421,
		-0.344156, 0.810415, 0.474114,
		31.822954, 46.604656, 22.625454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323431, 45.990662, 22.282528>,  <32.063862, 46.037365, 22.293573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323431, 45.990662, 22.282528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.403732, 46.375172, 22.358059>,  <31.451914, 46.605877, 22.403378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.403732, 46.375172, 22.358059>,  <31.323431, 45.990662, 22.282528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403732, 46.375172, 22.358059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585487, 0.272271, -0.763592,
		-0.785431, 0.042740, 0.617472,
		0.200755, 0.961271, 0.188826,
		31.463959, 46.663551, 22.414707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704823, 46.326393, 22.245707>,  <31.323431, 45.990662, 22.282528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704823, 46.326393, 22.245707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.976690, 46.614079, 22.188042>,  <31.139811, 46.786690, 22.153442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.976690, 46.614079, 22.188042>,  <30.704823, 46.326393, 22.245707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976690, 46.614079, 22.188042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512029, 0.324453, -0.795334,
		-0.525240, 0.614379, 0.588779,
		0.679668, 0.719214, -0.144164,
		31.180592, 46.829842, 22.144793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570438, 45.577240, 22.367575>,  <30.704823, 46.326393, 22.245707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570438, 45.577240, 22.367575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205250, 45.513187, 22.217457>,  <29.986137, 45.474758, 22.127386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205250, 45.513187, 22.217457>,  <30.570438, 45.577240, 22.367575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205250, 45.513187, 22.217457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106763, -0.793983, 0.598492,
		-0.393811, 0.586472, 0.707787,
		-0.912970, -0.160127, -0.375293,
		29.931358, 45.465149, 22.104868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998072, 45.630745, 22.910736>,  <30.570438, 45.577240, 22.367575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998072, 45.630745, 22.910736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865133, 45.406990, 22.606991>,  <29.785370, 45.272739, 22.424744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865133, 45.406990, 22.606991>,  <29.998072, 45.630745, 22.910736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865133, 45.406990, 22.606991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140003, -0.766951, 0.626247,
		-0.932708, 0.314444, 0.176578,
		-0.332346, -0.559384, -0.759365,
		29.765429, 45.239174, 22.379181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366022, 45.402843, 23.138544>,  <29.998072, 45.630745, 22.910736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366022, 45.402843, 23.138544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493031, 45.138882, 22.866161>,  <29.569237, 44.980503, 22.702732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493031, 45.138882, 22.866161>,  <29.366022, 45.402843, 23.138544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493031, 45.138882, 22.866161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266468, -0.751277, 0.603803,
		-0.910041, -0.010268, -0.414392,
		0.317523, -0.659907, -0.680956,
		29.588287, 44.940910, 22.661875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913977, 44.769974, 23.219347>,  <29.366022, 45.402843, 23.138544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913977, 44.769974, 23.219347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229506, 44.645760, 23.007187>,  <29.418823, 44.571232, 22.879890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229506, 44.645760, 23.007187>,  <28.913977, 44.769974, 23.219347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229506, 44.645760, 23.007187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030549, -0.842099, 0.538457,
		-0.613859, -0.440951, -0.654782,
		0.788824, -0.310534, -0.530401,
		29.466152, 44.552601, 22.848066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677626, 44.123035, 23.086721>,  <28.913977, 44.769974, 23.219347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677626, 44.123035, 23.086721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075054, 44.121265, 23.041477>,  <29.313511, 44.120205, 23.014330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075054, 44.121265, 23.041477>,  <28.677626, 44.123035, 23.086721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075054, 44.121265, 23.041477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063504, -0.805419, 0.589294,
		-0.093707, -0.592690, -0.799961,
		0.993572, -0.004421, -0.113111,
		29.373125, 44.119938, 23.007544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830389, 43.515667, 22.871119>,  <28.677626, 44.123035, 23.086721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830389, 43.515667, 22.871119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174902, 43.650440, 23.023262>,  <29.381609, 43.731304, 23.114548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174902, 43.650440, 23.023262>,  <28.830389, 43.515667, 22.871119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174902, 43.650440, 23.023262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048196, -0.799340, 0.598942,
		0.505836, -0.497527, -0.704696,
		0.861282, 0.336931, 0.380357,
		29.433287, 43.751518, 23.137369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378311, 42.872215, 22.783236>,  <28.830389, 43.515667, 22.871119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378311, 42.872215, 22.783236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508806, 43.117500, 23.070997>,  <29.587103, 43.264671, 23.243654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508806, 43.117500, 23.070997>,  <29.378311, 42.872215, 22.783236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508806, 43.117500, 23.070997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250390, -0.789915, 0.559767,
		0.911523, -0.002485, -0.411242,
		0.326238, 0.613211, 0.719403,
		29.606678, 43.301464, 23.286818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959198, 42.618126, 23.039759>,  <29.378311, 42.872215, 22.783236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959198, 42.618126, 23.039759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808531, 42.854057, 23.325480>,  <29.718130, 42.995617, 23.496912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808531, 42.854057, 23.325480>,  <29.959198, 42.618126, 23.039759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808531, 42.854057, 23.325480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086043, -0.745483, 0.660948,
		0.922344, 0.310417, 0.230048,
		-0.376666, 0.589827, 0.714301,
		29.695532, 43.031006, 23.539770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273294, 41.957344, 22.879398>,  <29.959198, 42.618126, 23.039759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273294, 41.957344, 22.879398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081936, 41.606884, 22.855770>,  <29.967121, 41.396606, 22.841593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081936, 41.606884, 22.855770>,  <30.273294, 41.957344, 22.879398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081936, 41.606884, 22.855770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385578, 0.270015, -0.882282,
		0.788965, -0.399306, -0.467000,
		-0.478398, -0.876154, -0.059069,
		29.938416, 41.344036, 22.838049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514841, 41.435955, 22.365297>,  <30.273294, 41.957344, 22.879398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514841, 41.435955, 22.365297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.127932, 41.349201, 22.417967>,  <29.895786, 41.297150, 22.449568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.127932, 41.349201, 22.417967>,  <30.514841, 41.435955, 22.365297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127932, 41.349201, 22.417967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169858, 0.168005, -0.971042,
		0.188481, -0.961632, -0.199347,
		-0.967276, -0.216884, 0.131675,
		29.837749, 41.284134, 22.457470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374866, 41.099865, 21.679129>,  <30.514841, 41.435955, 22.365297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374866, 41.099865, 21.679129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017693, 41.202667, 21.826975>,  <29.803389, 41.264347, 21.915684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017693, 41.202667, 21.826975>,  <30.374866, 41.099865, 21.679129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017693, 41.202667, 21.826975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336455, 0.164522, -0.927217,
		-0.299109, -0.952303, -0.060437,
		-0.892935, 0.257004, 0.369617,
		29.749813, 41.279770, 21.937860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893774, 40.825211, 21.300505>,  <30.374866, 41.099865, 21.679129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893774, 40.825211, 21.300505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672169, 41.096684, 21.493362>,  <29.539206, 41.259567, 21.609077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672169, 41.096684, 21.493362>,  <29.893774, 40.825211, 21.300505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672169, 41.096684, 21.493362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441890, 0.251096, -0.861211,
		-0.705551, -0.690177, 0.160792,
		-0.554013, 0.678680, 0.482143,
		29.505964, 41.300289, 21.638006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249212, 40.685963, 21.056435>,  <29.893774, 40.825211, 21.300505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249212, 40.685963, 21.056435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235573, 41.058460, 21.201553>,  <29.227388, 41.281960, 21.288624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235573, 41.058460, 21.201553>,  <29.249212, 40.685963, 21.056435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235573, 41.058460, 21.201553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268756, 0.341092, -0.900792,
		-0.962604, -0.128222, 0.238646,
		-0.034101, 0.931244, 0.362797,
		29.225342, 41.337833, 21.310392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653337, 40.907482, 20.752548>,  <29.249212, 40.685963, 21.056435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653337, 40.907482, 20.752548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851768, 41.240337, 20.851706>,  <28.970827, 41.440052, 20.911200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.851768, 41.240337, 20.851706>,  <28.653337, 40.907482, 20.752548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851768, 41.240337, 20.851706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108953, 0.342899, -0.933032,
		-0.861415, 0.435848, 0.260769,
		0.496078, 0.832139, 0.247891,
		29.000591, 41.489979, 20.926073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341906, 41.533737, 20.473679>,  <28.653337, 40.907482, 20.752548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341906, 41.533737, 20.473679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713762, 41.671402, 20.526316>,  <28.936876, 41.754002, 20.557898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713762, 41.671402, 20.526316>,  <28.341906, 41.533737, 20.473679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713762, 41.671402, 20.526316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043259, 0.456619, -0.888610,
		-0.365912, 0.820398, 0.439381,
		0.929643, 0.344160, 0.131592,
		28.992655, 41.774651, 20.565794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334530, 42.270290, 20.347198>,  <28.341906, 41.533737, 20.473679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334530, 42.270290, 20.347198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715103, 42.152287, 20.312000>,  <28.943447, 42.081486, 20.290882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715103, 42.152287, 20.312000>,  <28.334530, 42.270290, 20.347198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715103, 42.152287, 20.312000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037945, 0.396033, -0.917452,
		0.305504, 0.869556, 0.387994,
		0.951434, -0.295008, -0.087994,
		29.000534, 42.063786, 20.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592161, 42.799019, 19.960958>,  <28.334530, 42.270290, 20.347198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592161, 42.799019, 19.960958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893959, 42.538136, 19.931673>,  <29.075037, 42.381603, 19.914103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893959, 42.538136, 19.931673>,  <28.592161, 42.799019, 19.960958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893959, 42.538136, 19.931673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265324, 0.405145, -0.874906,
		0.600287, 0.640684, 0.478727,
		0.754493, -0.652212, -0.073214,
		29.120306, 42.342472, 19.909708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.336548, 37.693119, 34.214661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696064, 37.642162, 34.046875>,  <34.911774, 37.611588, 33.946205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696064, 37.642162, 34.046875>,  <34.336548, 37.693119, 34.214661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696064, 37.642162, 34.046875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400106, 0.152620, -0.903672,
		0.179139, 0.980040, 0.086204,
		0.898791, -0.127392, -0.419460,
		34.965702, 37.603943, 33.921036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468452, 38.191021, 33.703804>,  <34.336548, 37.693119, 34.214661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468452, 38.191021, 33.703804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710709, 37.893543, 33.590580>,  <34.856064, 37.715057, 33.522648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710709, 37.893543, 33.590580>,  <34.468452, 38.191021, 33.703804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710709, 37.893543, 33.590580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324938, 0.093572, -0.941095,
		0.726369, 0.661944, -0.184981,
		0.605643, -0.743690, -0.283058,
		34.892403, 37.670437, 33.505661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726402, 38.372898, 33.022530>,  <34.468452, 38.191021, 33.703804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726402, 38.372898, 33.022530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822090, 37.984524, 33.019493>,  <34.879501, 37.751499, 33.017670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822090, 37.984524, 33.019493>,  <34.726402, 38.372898, 33.022530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822090, 37.984524, 33.019493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373950, -0.084911, -0.923554,
		0.896067, 0.223770, -0.383394,
		0.239218, -0.970936, -0.007593,
		34.893856, 37.693241, 33.017216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135296, 38.232403, 32.472668>,  <34.726402, 38.372898, 33.022530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135296, 38.232403, 32.472668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966652, 37.880512, 32.560604>,  <34.865463, 37.669380, 32.613365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966652, 37.880512, 32.560604>,  <35.135296, 38.232403, 32.472668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966652, 37.880512, 32.560604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360137, -0.060047, -0.930965,
		0.832192, -0.471680, -0.291505,
		-0.421613, -0.879723, 0.219840,
		34.840168, 37.616596, 32.626556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226452, 37.805447, 31.807566>,  <35.135296, 38.232403, 32.472668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226452, 37.805447, 31.807566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949780, 37.616199, 32.025829>,  <34.783775, 37.502651, 32.156788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949780, 37.616199, 32.025829>,  <35.226452, 37.805447, 31.807566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949780, 37.616199, 32.025829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539780, -0.163304, -0.825814,
		0.479814, -0.865733, -0.142425,
		-0.691676, -0.473115, 0.545661,
		34.742275, 37.474266, 32.189529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990536, 37.207558, 31.394522>,  <35.226452, 37.805447, 31.807566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990536, 37.207558, 31.394522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710613, 37.294422, 31.666731>,  <34.542660, 37.346542, 31.830057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710613, 37.294422, 31.666731>,  <34.990536, 37.207558, 31.394522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710613, 37.294422, 31.666731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713397, -0.163718, -0.681366,
		-0.036549, -0.962309, 0.269491,
		-0.699806, 0.217157, 0.680525,
		34.500671, 37.359570, 31.870888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479229, 36.601883, 31.349995>,  <34.990536, 37.207558, 31.394522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479229, 36.601883, 31.349995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287243, 36.908871, 31.519997>,  <34.172050, 37.093063, 31.621998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287243, 36.908871, 31.519997>,  <34.479229, 36.601883, 31.349995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287243, 36.908871, 31.519997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795661, -0.176749, -0.579381,
		-0.369538, -0.616241, 0.695478,
		-0.479963, 0.767468, 0.425004,
		34.143253, 37.139111, 31.647497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792858, 36.304855, 31.603500>,  <34.479229, 36.601883, 31.349995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792858, 36.304855, 31.603500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801659, 36.698456, 31.532772>,  <33.806938, 36.934616, 31.490335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801659, 36.698456, 31.532772>,  <33.792858, 36.304855, 31.603500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801659, 36.698456, 31.532772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887298, -0.062275, -0.456973,
		-0.460672, 0.166950, 0.871727,
		0.022005, 0.983997, -0.176823,
		33.808262, 36.993656, 31.479725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038109, 36.587589, 31.616438>,  <33.792858, 36.304855, 31.603500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038109, 36.587589, 31.616438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.248199, 36.864761, 31.418858>,  <33.374252, 37.031063, 31.300308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.248199, 36.864761, 31.418858>,  <33.038109, 36.587589, 31.616438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248199, 36.864761, 31.418858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796255, 0.195416, -0.572530,
		-0.300197, 0.694018, 0.654387,
		0.525223, 0.692930, -0.493952,
		33.405766, 37.072639, 31.270672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551300, 37.110252, 31.502926>,  <33.038109, 36.587589, 31.616438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551300, 37.110252, 31.502926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835468, 37.181454, 31.230568>,  <33.005970, 37.224174, 31.067154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835468, 37.181454, 31.230568>,  <32.551300, 37.110252, 31.502926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835468, 37.181454, 31.230568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702995, 0.133886, -0.698479,
		-0.033169, 0.974879, 0.220251,
		0.710421, 0.178003, -0.680894,
		33.048595, 37.234856, 31.026300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214993, 37.692719, 31.160383>,  <32.551300, 37.110252, 31.502926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214993, 37.692719, 31.160383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503422, 37.572800, 30.910530>,  <32.676479, 37.500847, 30.760618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503422, 37.572800, 30.910530>,  <32.214993, 37.692719, 31.160383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503422, 37.572800, 30.910530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628037, 0.097912, -0.771999,
		0.292605, 0.948964, -0.117684,
		0.721077, -0.299801, -0.624634,
		32.719746, 37.482861, 30.723139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240631, 38.252934, 30.701088>,  <32.214993, 37.692719, 31.160383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240631, 38.252934, 30.701088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409645, 37.948170, 30.504738>,  <32.511051, 37.765312, 30.386929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409645, 37.948170, 30.504738>,  <32.240631, 38.252934, 30.701088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409645, 37.948170, 30.504738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554734, 0.210904, -0.804854,
		0.716755, 0.612380, -0.333545,
		0.422530, -0.761912, -0.490875,
		32.536404, 37.719597, 30.357475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200550, 39.081306, 30.711788>,  <32.240631, 38.252934, 30.701088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200550, 39.081306, 30.711788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860870, 39.235027, 30.856661>,  <31.657063, 39.327259, 30.943584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860870, 39.235027, 30.856661>,  <32.200550, 39.081306, 30.711788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860870, 39.235027, 30.856661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448813, 0.163832, 0.878480,
		0.278264, 0.908555, -0.311604,
		-0.849198, 0.384301, 0.362183,
		31.606112, 39.350319, 30.965315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379185, 39.692463, 31.129129>,  <32.200550, 39.081306, 30.711788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379185, 39.692463, 31.129129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027905, 39.574574, 31.279808>,  <31.817137, 39.503841, 31.370216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027905, 39.574574, 31.279808>,  <32.379185, 39.692463, 31.129129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027905, 39.574574, 31.279808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353503, 0.130565, 0.926277,
		-0.322177, 0.946621, -0.010477,
		-0.878201, -0.294722, 0.376699,
		31.764444, 39.486156, 31.392818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369141, 39.989704, 31.781090>,  <32.379185, 39.692463, 31.129129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369141, 39.989704, 31.781090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065201, 39.731026, 31.807680>,  <31.882837, 39.575817, 31.823635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065201, 39.731026, 31.807680>,  <32.369141, 39.989704, 31.781090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065201, 39.731026, 31.807680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242266, -0.186786, 0.952060,
		-0.603277, 0.739523, 0.298601,
		-0.759845, -0.646696, 0.066478,
		31.837248, 39.537018, 31.827623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917847, 40.211098, 32.370117>,  <32.369141, 39.989704, 31.781090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917847, 40.211098, 32.370117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862740, 39.819885, 32.307533>,  <31.829676, 39.585159, 32.269981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862740, 39.819885, 32.307533>,  <31.917847, 40.211098, 32.370117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862740, 39.819885, 32.307533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131900, -0.174676, 0.975751,
		-0.981642, 0.113792, 0.153067,
		-0.137770, -0.978029, -0.156460,
		31.821409, 39.526478, 32.260597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504875, 40.018246, 32.929337>,  <31.917847, 40.211098, 32.370117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504875, 40.018246, 32.929337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681429, 39.684170, 32.798100>,  <31.787361, 39.483727, 32.719357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681429, 39.684170, 32.798100>,  <31.504875, 40.018246, 32.929337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681429, 39.684170, 32.798100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063594, -0.335600, 0.939855,
		-0.895063, -0.435700, -0.095015,
		0.441382, -0.835187, -0.328091,
		31.813843, 39.433613, 32.699673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160942, 39.623871, 33.253563>,  <31.504875, 40.018246, 32.929337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160942, 39.623871, 33.253563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515888, 39.465794, 33.158566>,  <31.728855, 39.370945, 33.101566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515888, 39.465794, 33.158566>,  <31.160942, 39.623871, 33.253563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515888, 39.465794, 33.158566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071544, -0.390829, 0.917679,
		-0.455485, -0.831306, -0.318533,
		0.887364, -0.395200, -0.237492,
		31.782097, 39.347233, 33.087318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147963, 39.010353, 33.668266>,  <31.160942, 39.623871, 33.253563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147963, 39.010353, 33.668266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533821, 39.075958, 33.585754>,  <31.765337, 39.115322, 33.536247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533821, 39.075958, 33.585754>,  <31.147963, 39.010353, 33.668266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533821, 39.075958, 33.585754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251328, -0.337024, 0.907331,
		0.079293, -0.927100, -0.366331,
		0.964648, 0.164014, -0.206283,
		31.823215, 39.125164, 33.523869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413939, 38.497395, 33.913521>,  <31.147963, 39.010353, 33.668266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413939, 38.497395, 33.913521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.732019, 38.736401, 33.872272>,  <31.922869, 38.879803, 33.847523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.732019, 38.736401, 33.872272>,  <31.413939, 38.497395, 33.913521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732019, 38.736401, 33.872272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334492, -0.290428, 0.896530,
		0.505736, -0.747417, -0.430812,
		0.795202, 0.597511, -0.103125,
		31.970579, 38.915653, 33.841335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048038, 38.119930, 34.127346>,  <31.413939, 38.497395, 33.913521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048038, 38.119930, 34.127346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175541, 38.498726, 34.143360>,  <32.252041, 38.726006, 34.152969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175541, 38.498726, 34.143360>,  <32.048038, 38.119930, 34.127346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175541, 38.498726, 34.143360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432083, -0.182773, 0.883118,
		0.843624, -0.264197, -0.467439,
		0.318753, 0.946992, 0.040037,
		32.271168, 38.782822, 34.155373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631226, 38.019573, 34.438709>,  <32.048038, 38.119930, 34.127346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631226, 38.019573, 34.438709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598827, 38.416851, 34.472179>,  <32.579388, 38.655220, 34.492260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598827, 38.416851, 34.472179>,  <32.631226, 38.019573, 34.438709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598827, 38.416851, 34.472179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281897, -0.057697, 0.957708,
		0.956020, 0.101154, -0.275306,
		-0.080992, 0.993196, 0.083675,
		32.574532, 38.714809, 34.497280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222168, 38.246075, 34.778111>,  <32.631226, 38.019573, 34.438709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222168, 38.246075, 34.778111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970734, 38.552742, 34.830421>,  <32.819874, 38.736740, 34.861809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970734, 38.552742, 34.830421>,  <33.222168, 38.246075, 34.778111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970734, 38.552742, 34.830421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207426, 0.003194, 0.978246,
		0.749570, 0.642039, -0.161033,
		-0.628586, 0.766666, 0.130781,
		32.782158, 38.782742, 34.869656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542610, 38.584297, 35.262871>,  <33.222168, 38.246075, 34.778111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542610, 38.584297, 35.262871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167843, 38.720459, 35.294662>,  <32.942982, 38.802155, 35.313736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167843, 38.720459, 35.294662>,  <33.542610, 38.584297, 35.262871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167843, 38.720459, 35.294662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028364, -0.152584, 0.987883,
		0.348408, 0.927816, 0.133303,
		-0.936914, 0.340406, 0.079478,
		32.886768, 38.822582, 35.318504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546535, 39.117886, 35.640636>,  <33.542610, 38.584297, 35.262871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546535, 39.117886, 35.640636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175503, 38.975620, 35.686409>,  <32.952881, 38.890263, 35.713875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175503, 38.975620, 35.686409>,  <33.546535, 39.117886, 35.640636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175503, 38.975620, 35.686409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198105, -0.208513, 0.957746,
		-0.316770, 0.911059, 0.263871,
		-0.927583, -0.355659, 0.114435,
		32.897228, 38.868923, 35.720741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161991, 39.495785, 36.158504>,  <33.546535, 39.117886, 35.640636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161991, 39.495785, 36.158504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033566, 39.118496, 36.124443>,  <32.956509, 38.892124, 36.104004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033566, 39.118496, 36.124443>,  <33.161991, 39.495785, 36.158504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033566, 39.118496, 36.124443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244973, -0.169571, 0.954586,
		-0.914824, 0.285626, 0.285507,
		-0.321068, -0.943220, -0.085157,
		32.937244, 38.835529, 36.098896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278183, 40.150997, 36.258595>,  <33.161991, 39.495785, 36.158504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278183, 40.150997, 36.258595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654831, 40.284149, 36.238400>,  <33.880817, 40.364040, 36.226284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654831, 40.284149, 36.238400>,  <33.278183, 40.150997, 36.258595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654831, 40.284149, 36.238400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336580, 0.926871, -0.166204,
		-0.008534, 0.173492, 0.984798,
		0.941616, 0.332882, -0.050484,
		33.937317, 40.384014, 36.223255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392036, 40.832764, 36.551777>,  <33.278183, 40.150997, 36.258595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392036, 40.832764, 36.551777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704025, 40.808899, 36.302589>,  <33.891216, 40.794579, 36.153076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704025, 40.808899, 36.302589>,  <33.392036, 40.832764, 36.551777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704025, 40.808899, 36.302589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125421, 0.960346, -0.249008,
		0.613122, 0.272352, 0.741556,
		0.779968, -0.059665, -0.622968,
		33.938015, 40.791000, 36.115700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673775, 41.496449, 36.646347>,  <33.392036, 40.832764, 36.551777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673775, 41.496449, 36.646347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.808868, 41.353340, 36.298111>,  <33.889927, 41.267475, 36.089169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.808868, 41.353340, 36.298111>,  <33.673775, 41.496449, 36.646347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808868, 41.353340, 36.298111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085262, 0.909512, -0.406839,
		0.937370, 0.211634, 0.276673,
		0.337739, -0.357769, -0.870594,
		33.910191, 41.246010, 36.036934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020134, 42.050495, 36.364601>,  <33.673775, 41.496449, 36.646347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020134, 42.050495, 36.364601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030033, 41.830231, 36.030857>,  <34.035973, 41.698071, 35.830612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030033, 41.830231, 36.030857>,  <34.020134, 42.050495, 36.364601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030033, 41.830231, 36.030857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090883, 0.832399, -0.546673,
		0.995554, -0.062297, 0.070650,
		0.024753, -0.550664, -0.834360,
		34.037460, 41.665031, 35.780548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645565, 42.207500, 35.874622>,  <34.020134, 42.050495, 36.364601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645565, 42.207500, 35.874622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344360, 42.058468, 35.657681>,  <34.163635, 41.969048, 35.527515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344360, 42.058468, 35.657681>,  <34.645565, 42.207500, 35.874622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344360, 42.058468, 35.657681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099639, 0.750177, -0.653687,
		0.650413, -0.546278, -0.527773,
		-0.753018, -0.372579, -0.542355,
		34.118454, 41.946693, 35.494972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971962, 42.163769, 35.274155>,  <34.645565, 42.207500, 35.874622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971962, 42.163769, 35.274155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573711, 42.162651, 35.236813>,  <34.334759, 42.161980, 35.214409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573711, 42.162651, 35.236813>,  <34.971962, 42.163769, 35.274155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573711, 42.162651, 35.236813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070309, 0.635510, -0.768885,
		0.061479, -0.772087, -0.632535,
		-0.995629, -0.002797, -0.093355,
		34.275024, 42.161812, 35.208805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832916, 42.068222, 34.528809>,  <34.971962, 42.163769, 35.274155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832916, 42.068222, 34.528809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510307, 42.239704, 34.691647>,  <34.316742, 42.342594, 34.789349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510307, 42.239704, 34.691647>,  <34.832916, 42.068222, 34.528809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510307, 42.239704, 34.691647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131606, 0.541125, -0.830580,
		-0.576367, -0.723459, -0.380010,
		-0.806524, 0.428708, 0.407098,
		34.268349, 42.368317, 34.813774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371616, 41.970104, 34.106266>,  <34.832916, 42.068222, 34.528809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371616, 41.970104, 34.106266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194645, 42.263298, 34.312954>,  <34.088463, 42.439213, 34.436966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194645, 42.263298, 34.312954>,  <34.371616, 41.970104, 34.106266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194645, 42.263298, 34.312954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382561, 0.366864, -0.847973,
		-0.811113, -0.572842, 0.118099,
		-0.442428, 0.732982, 0.516715,
		34.061916, 42.483192, 34.467968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807964, 42.050095, 33.785500>,  <34.371616, 41.970104, 34.106266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807964, 42.050095, 33.785500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827549, 42.390011, 33.995434>,  <33.839302, 42.593960, 34.121395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827549, 42.390011, 33.995434>,  <33.807964, 42.050095, 33.785500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827549, 42.390011, 33.995434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412247, 0.495817, -0.764342,
		-0.909756, -0.178938, 0.374601,
		0.048964, 0.849793, 0.524839,
		33.842239, 42.644947, 34.152885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194366, 42.344387, 33.620186>,  <33.807964, 42.050095, 33.785500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194366, 42.344387, 33.620186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415821, 42.660469, 33.725300>,  <33.548695, 42.850121, 33.788368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415821, 42.660469, 33.725300>,  <33.194366, 42.344387, 33.620186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415821, 42.660469, 33.725300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333364, 0.499475, -0.799621,
		-0.763121, 0.355097, 0.539955,
		0.553637, 0.790210, 0.262783,
		33.581913, 42.897533, 33.804134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752701, 42.961464, 33.502811>,  <33.194366, 42.344387, 33.620186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752701, 42.961464, 33.502811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122505, 43.113842, 33.507786>,  <33.344391, 43.205269, 33.510769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122505, 43.113842, 33.507786>,  <32.752701, 42.961464, 33.502811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122505, 43.113842, 33.507786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191336, 0.492077, -0.849265,
		-0.329638, 0.782780, 0.527821,
		0.924516, 0.380941, 0.012433,
		33.399860, 43.228123, 33.511517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723793, 43.601002, 33.257450>,  <32.752701, 42.961464, 33.502811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723793, 43.601002, 33.257450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113552, 43.531319, 33.200600>,  <33.347408, 43.489510, 33.166489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113552, 43.531319, 33.200600>,  <32.723793, 43.601002, 33.257450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113552, 43.531319, 33.200600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042735, 0.477112, -0.877803,
		0.220727, 0.861404, 0.457452,
		0.974399, -0.174206, -0.142123,
		33.405872, 43.479057, 33.157963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949287, 44.195274, 33.060619>,  <32.723793, 43.601002, 33.257450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949287, 44.195274, 33.060619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224201, 43.938034, 32.925529>,  <33.389149, 43.783691, 32.844475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224201, 43.938034, 32.925529>,  <32.949287, 44.195274, 33.060619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224201, 43.938034, 32.925529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038755, 0.496743, -0.867032,
		0.725351, 0.582811, 0.366329,
		0.687287, -0.643100, -0.337726,
		33.430386, 43.745106, 32.824211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432850, 44.635998, 32.629951>,  <32.949287, 44.195274, 33.060619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432850, 44.635998, 32.629951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517998, 44.263409, 32.511944>,  <33.569088, 44.039856, 32.441139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517998, 44.263409, 32.511944>,  <33.432850, 44.635998, 32.629951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517998, 44.263409, 32.511944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019591, 0.305952, -0.951845,
		0.976883, 0.196842, 0.083377,
		0.212873, -0.931475, -0.295024,
		33.581860, 43.983967, 32.423435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050449, 44.674828, 32.135334>,  <33.432850, 44.635998, 32.629951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050449, 44.674828, 32.135334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887093, 44.318020, 32.057861>,  <33.789078, 44.103935, 32.011375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887093, 44.318020, 32.057861>,  <34.050449, 44.674828, 32.135334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887093, 44.318020, 32.057861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267584, 0.085873, -0.959700,
		0.872704, -0.443764, 0.203620,
		-0.408395, -0.892020, -0.193686,
		33.764576, 44.050415, 31.999756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467049, 44.342735, 31.499569>,  <34.050449, 44.674828, 32.135334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467049, 44.342735, 31.499569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119610, 44.146591, 31.528101>,  <33.911148, 44.028904, 31.545219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119610, 44.146591, 31.528101>,  <34.467049, 44.342735, 31.499569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119610, 44.146591, 31.528101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085865, 0.007174, -0.996281,
		0.488026, -0.871490, -0.048337,
		-0.868595, -0.490362, 0.071329,
		33.859032, 43.999481, 31.549500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455128, 43.807705, 30.940397>,  <34.467049, 44.342735, 31.499569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455128, 43.807705, 30.940397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075504, 43.891808, 31.034279>,  <33.847733, 43.942268, 31.090609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075504, 43.891808, 31.034279>,  <34.455128, 43.807705, 30.940397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075504, 43.891808, 31.034279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249618, -0.047066, -0.967200,
		-0.192314, -0.976513, 0.097152,
		-0.949055, 0.210257, 0.234704,
		33.790787, 43.954884, 31.104691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076920, 43.429104, 30.501526>,  <34.455128, 43.807705, 30.940397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076920, 43.429104, 30.501526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851170, 43.743320, 30.603037>,  <33.715717, 43.931850, 30.663944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851170, 43.743320, 30.603037>,  <34.076920, 43.429104, 30.501526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851170, 43.743320, 30.603037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063137, 0.265442, -0.962057,
		-0.823099, -0.558987, -0.100212,
		-0.564378, 0.785541, 0.253778,
		33.681854, 43.978981, 30.679171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531357, 43.332352, 30.116936>,  <34.076920, 43.429104, 30.501526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531357, 43.332352, 30.116936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489025, 43.723316, 30.190111>,  <33.463627, 43.957893, 30.234016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489025, 43.723316, 30.190111>,  <33.531357, 43.332352, 30.116936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489025, 43.723316, 30.190111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325849, 0.139726, -0.935040,
		-0.939480, -0.158566, 0.303701,
		-0.105831, 0.977412, 0.182938,
		33.457275, 44.016541, 30.244993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888393, 43.648888, 29.669176>,  <33.531357, 43.332352, 30.116936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888393, 43.648888, 29.669176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085735, 43.973343, 29.794811>,  <33.204140, 44.168018, 29.870192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085735, 43.973343, 29.794811>,  <32.888393, 43.648888, 29.669176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085735, 43.973343, 29.794811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118580, 0.420439, -0.899539,
		-0.861708, 0.406546, 0.303610,
		0.493353, 0.811142, 0.314088,
		33.233742, 44.216686, 29.889038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460560, 44.089558, 29.415817>,  <32.888393, 43.648888, 29.669176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460560, 44.089558, 29.415817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807365, 44.275578, 29.487398>,  <33.015450, 44.387188, 29.530348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807365, 44.275578, 29.487398>,  <32.460560, 44.089558, 29.415817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807365, 44.275578, 29.487398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039728, 0.422504, -0.905490,
		-0.496705, 0.777960, 0.384790,
		0.867010, 0.465048, 0.178953,
		33.067467, 44.415092, 29.541084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357605, 44.800003, 29.219217>,  <32.460560, 44.089558, 29.415817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357605, 44.800003, 29.219217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753998, 44.746410, 29.219080>,  <32.991833, 44.714252, 29.218998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753998, 44.746410, 29.219080>,  <32.357605, 44.800003, 29.219217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753998, 44.746410, 29.219080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060965, 0.453177, -0.889334,
		0.119312, 0.881294, 0.457259,
		0.990983, -0.133985, -0.000341,
		33.051292, 44.706215, 29.218977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645653, 45.507774, 29.157600>,  <32.357605, 44.800003, 29.219217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645653, 45.507774, 29.157600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915188, 45.255302, 29.003948>,  <33.076908, 45.103817, 28.911757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915188, 45.255302, 29.003948>,  <32.645653, 45.507774, 29.157600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915188, 45.255302, 29.003948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028793, 0.497054, -0.867242,
		0.738321, 0.595438, 0.316758,
		0.673834, -0.631182, -0.384130,
		33.117336, 45.065948, 28.888710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756676, 45.859844, 28.619967>,  <32.645653, 45.507774, 29.157600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756676, 45.859844, 28.619967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003826, 45.553020, 28.550852>,  <33.152115, 45.368927, 28.509382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003826, 45.553020, 28.550852>,  <32.756676, 45.859844, 28.619967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003826, 45.553020, 28.550852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286713, 0.424420, -0.858873,
		0.732141, 0.481133, 0.482163,
		0.617872, -0.767058, -0.172788,
		33.189186, 45.322903, 28.499016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443897, 46.057793, 28.326302>,  <32.756676, 45.859844, 28.619967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443897, 46.057793, 28.326302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317455, 45.709377, 28.175909>,  <33.241589, 45.500328, 28.085674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317455, 45.709377, 28.175909>,  <33.443897, 46.057793, 28.326302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317455, 45.709377, 28.175909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041569, 0.408638, -0.911749,
		0.947813, -0.272579, -0.165381,
		-0.316105, -0.871043, -0.375982,
		33.222622, 45.448063, 28.063114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713554, 46.052315, 27.698380>,  <33.443897, 46.057793, 28.326302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713554, 46.052315, 27.698380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447632, 45.755562, 27.663410>,  <33.288078, 45.577511, 27.642427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447632, 45.755562, 27.663410>,  <33.713554, 46.052315, 27.698380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447632, 45.755562, 27.663410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222289, 0.308197, -0.924987,
		0.713176, -0.595505, -0.369804,
		-0.664807, -0.741882, -0.087425,
		33.248188, 45.532997, 27.637182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938435, 45.697365, 27.096132>,  <33.713554, 46.052315, 27.698380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938435, 45.697365, 27.096132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556248, 45.621895, 27.186886>,  <33.326935, 45.576611, 27.241339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556248, 45.621895, 27.186886>,  <33.938435, 45.697365, 27.096132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556248, 45.621895, 27.186886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261881, 0.187844, -0.946643,
		0.135988, -0.963907, -0.228890,
		-0.955471, -0.188674, 0.226884,
		33.269608, 45.565292, 27.254951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661842, 45.191525, 26.510338>,  <33.938435, 45.697365, 27.096132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661842, 45.191525, 26.510338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342197, 45.373066, 26.668043>,  <33.150410, 45.481991, 26.762667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342197, 45.373066, 26.668043>,  <33.661842, 45.191525, 26.510338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342197, 45.373066, 26.668043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335509, 0.207516, -0.918897,
		-0.498858, -0.866577, -0.013557,
		-0.799108, 0.453851, 0.394265,
		33.102467, 45.509220, 26.786324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776215, 44.445316, 26.313663>,  <33.661842, 45.191525, 26.510338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776215, 44.445316, 26.313663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050861, 44.369957, 26.032787>,  <34.215649, 44.324741, 25.864262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050861, 44.369957, 26.032787>,  <33.776215, 44.445316, 26.313663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050861, 44.369957, 26.032787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647200, -0.281610, 0.708398,
		-0.331200, -0.940853, -0.071431,
		0.686614, -0.188392, -0.702189,
		34.256844, 44.313438, 25.822130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034119, 43.809731, 26.472221>,  <33.776215, 44.445316, 26.313663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034119, 43.809731, 26.472221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319893, 43.994011, 26.261570>,  <34.491356, 44.104580, 26.135180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319893, 43.994011, 26.261570>,  <34.034119, 43.809731, 26.472221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319893, 43.994011, 26.261570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673846, -0.250300, 0.695185,
		0.188461, -0.851528, -0.489267,
		0.714433, 0.460706, -0.526628,
		34.534222, 44.132221, 26.103582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591480, 43.363628, 26.396399>,  <34.034119, 43.809731, 26.472221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591480, 43.363628, 26.396399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792618, 43.690365, 26.283314>,  <34.913300, 43.886406, 26.215462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792618, 43.690365, 26.283314>,  <34.591480, 43.363628, 26.396399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792618, 43.690365, 26.283314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774021, -0.279924, 0.567921,
		0.384760, -0.504401, -0.773006,
		0.502843, 0.816836, -0.282714,
		34.943470, 43.935417, 26.198500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434521, 43.202206, 26.129139>,  <34.591480, 43.363628, 26.396399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434521, 43.202206, 26.129139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405293, 43.583832, 26.245356>,  <35.387756, 43.812809, 26.315084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405293, 43.583832, 26.245356>,  <35.434521, 43.202206, 26.129139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405293, 43.583832, 26.245356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763799, -0.133792, 0.631435,
		0.641304, 0.268053, -0.718941,
		-0.073070, 0.954069, 0.290540,
		35.383373, 43.870052, 26.332518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104656, 43.476833, 26.108774>,  <35.434521, 43.202206, 26.129139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104656, 43.476833, 26.108774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880272, 43.695751, 26.357224>,  <35.745644, 43.827103, 26.506292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880272, 43.695751, 26.357224>,  <36.104656, 43.476833, 26.108774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880272, 43.695751, 26.357224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719016, -0.049756, 0.693210,
		0.410296, 0.835459, -0.365603,
		-0.560958, 0.547296, 0.621123,
		35.711983, 43.859940, 26.543560>
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
