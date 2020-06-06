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
	<24.806364, 35.241856, 35.039455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498678, 35.032112, 34.893383>,  <24.314066, 34.906265, 34.805740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498678, 35.032112, 34.893383>,  <24.806364, 35.241856, 35.039455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498678, 35.032112, 34.893383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507044, -0.153083, -0.848217,
		0.388865, -0.837624, 0.383626,
		-0.769214, -0.524357, -0.365184,
		24.267914, 34.874805, 34.783829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722567, 34.545528, 34.820404>,  <24.806364, 35.241856, 35.039455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722567, 34.545528, 34.820404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100527, 34.654327, 34.893272>,  <25.327303, 34.719604, 34.936993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100527, 34.654327, 34.893272>,  <24.722567, 34.545528, 34.820404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100527, 34.654327, 34.893272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304662, -0.934251, -0.185352,
		0.119776, 0.230639, -0.965640,
		0.944899, 0.271993, 0.182168,
		25.383997, 34.735924, 34.947922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221674, 34.456329, 34.273849>,  <24.722567, 34.545528, 34.820404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221674, 34.456329, 34.273849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350298, 34.391033, 34.646935>,  <25.427473, 34.351856, 34.870785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350298, 34.391033, 34.646935>,  <25.221674, 34.456329, 34.273849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350298, 34.391033, 34.646935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116187, -0.970781, -0.209962,
		0.939734, 0.175884, -0.293197,
		0.321559, -0.163242, 0.932712,
		25.446766, 34.342060, 34.926746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763145, 34.054657, 34.154320>,  <25.221674, 34.456329, 34.273849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763145, 34.054657, 34.154320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698496, 33.993095, 34.544231>,  <25.659706, 33.956158, 34.778179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698496, 33.993095, 34.544231>,  <25.763145, 34.054657, 34.154320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698496, 33.993095, 34.544231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002699, -0.987830, -0.155515,
		0.986849, -0.022504, 0.160071,
		-0.161622, -0.153902, 0.974778,
		25.650009, 33.946926, 34.836666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284763, 33.559006, 34.303749>,  <25.763145, 34.054657, 34.154320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284763, 33.559006, 34.303749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017817, 33.513855, 34.598198>,  <25.857649, 33.486767, 34.774868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017817, 33.513855, 34.598198>,  <26.284763, 33.559006, 34.303749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017817, 33.513855, 34.598198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033726, -0.982853, -0.181281,
		0.743966, -0.145808, 0.652116,
		-0.667366, -0.112874, 0.736126,
		25.817606, 33.479992, 34.819035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575960, 33.212151, 34.919704>,  <26.284763, 33.559006, 34.303749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575960, 33.212151, 34.919704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182991, 33.139542, 34.902275>,  <25.947210, 33.095978, 34.891819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182991, 33.139542, 34.902275>,  <26.575960, 33.212151, 34.919704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182991, 33.139542, 34.902275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185807, -0.973354, -0.134383,
		-0.018014, -0.140116, 0.989972,
		-0.982421, -0.181523, -0.043569,
		25.888266, 33.085083, 34.889206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332478, 32.696007, 35.509918>,  <26.575960, 33.212151, 34.919704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332478, 32.696007, 35.509918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133751, 32.709148, 35.163025>,  <26.014515, 32.717033, 34.954887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133751, 32.709148, 35.163025>,  <26.332478, 32.696007, 35.509918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133751, 32.709148, 35.163025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397013, -0.879986, -0.260779,
		-0.771720, -0.473862, 0.424149,
		-0.496818, 0.032856, -0.867232,
		25.984705, 32.719006, 34.902855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781712, 32.154587, 35.303925>,  <26.332478, 32.696007, 35.509918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781712, 32.154587, 35.303925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973877, 32.274719, 34.974316>,  <26.089176, 32.346798, 34.776550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973877, 32.274719, 34.974316>,  <25.781712, 32.154587, 35.303925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973877, 32.274719, 34.974316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086326, -0.918788, -0.385197,
		-0.872784, 0.256187, -0.415470,
		0.480411, 0.300328, -0.824019,
		26.118000, 32.364819, 34.727108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308126, 31.959959, 34.894093>,  <25.781712, 32.154587, 35.303925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308126, 31.959959, 34.894093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654177, 31.992727, 34.696167>,  <25.861807, 32.012386, 34.577412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654177, 31.992727, 34.696167>,  <25.308126, 31.959959, 34.894093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654177, 31.992727, 34.696167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228284, -0.814141, -0.533911,
		-0.446590, 0.574860, -0.685634,
		0.865126, 0.081920, -0.494818,
		25.913715, 32.017303, 34.547722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107281, 31.772295, 34.172302>,  <25.308126, 31.959959, 34.894093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107281, 31.772295, 34.172302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502022, 31.709198, 34.186386>,  <25.738867, 31.671341, 34.194836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502022, 31.709198, 34.186386>,  <25.107281, 31.772295, 34.172302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502022, 31.709198, 34.186386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093062, -0.732693, -0.674166,
		0.132141, 0.662026, -0.737740,
		0.986853, -0.157740, 0.035209,
		25.798079, 31.661877, 34.196949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315554, 31.583950, 33.520149>,  <25.107281, 31.772295, 34.172302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315554, 31.583950, 33.520149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576160, 31.416929, 33.773502>,  <25.732525, 31.316717, 33.925514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576160, 31.416929, 33.773502>,  <25.315554, 31.583950, 33.520149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576160, 31.416929, 33.773502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115927, -0.879892, -0.460815,
		0.749723, 0.226804, -0.621672,
		0.651519, -0.417552, 0.633382,
		25.771616, 31.291664, 33.963516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639435, 31.137835, 33.145473>,  <25.315554, 31.583950, 33.520149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639435, 31.137835, 33.145473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720156, 30.997250, 33.511150>,  <25.768589, 30.912899, 33.730556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720156, 30.997250, 33.511150>,  <25.639435, 31.137835, 33.145473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720156, 30.997250, 33.511150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263963, -0.918377, -0.294800,
		0.943186, -0.181822, -0.278104,
		0.201803, -0.351461, 0.914194,
		25.780697, 30.891811, 33.785408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033106, 30.494978, 33.106327>,  <25.639435, 31.137835, 33.145473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033106, 30.494978, 33.106327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819651, 30.497379, 33.444603>,  <25.691578, 30.498821, 33.647568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819651, 30.497379, 33.444603>,  <26.033106, 30.494978, 33.106327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819651, 30.497379, 33.444603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167507, -0.980914, -0.098734,
		0.828958, -0.194348, 0.524459,
		-0.533638, 0.006004, 0.845691,
		25.659559, 30.499180, 33.698311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206989, 30.085417, 33.623074>,  <26.033106, 30.494978, 33.106327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206989, 30.085417, 33.623074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827616, 30.101877, 33.748791>,  <25.599991, 30.111753, 33.824223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827616, 30.101877, 33.748791>,  <26.206989, 30.085417, 33.623074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827616, 30.101877, 33.748791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009225, -0.994701, 0.102397,
		0.316841, 0.094218, 0.943787,
		-0.948434, 0.041150, 0.314293,
		25.543085, 30.114222, 33.843079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042034, 29.729467, 34.305408>,  <26.206989, 30.085417, 33.623074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042034, 29.729467, 34.305408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710424, 29.732620, 34.081745>,  <25.511459, 29.734512, 33.947548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710424, 29.732620, 34.081745>,  <26.042034, 29.729467, 34.305408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710424, 29.732620, 34.081745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085351, -0.989969, 0.112593,
		-0.552661, 0.141067, 0.821380,
		-0.829024, 0.007880, -0.559157,
		25.461718, 29.734983, 33.913998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252607, 30.445988, 34.622223>,  <26.042034, 29.729467, 34.305408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252607, 30.445988, 34.622223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204464, 30.626614, 34.268589>,  <26.175579, 30.734989, 34.056408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204464, 30.626614, 34.268589>,  <26.252607, 30.445988, 34.622223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204464, 30.626614, 34.268589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318692, 0.860996, 0.396386,
		0.940186, -0.234043, -0.247537,
		-0.120357, 0.451565, -0.884084,
		26.168358, 30.762083, 34.003365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857954, 30.935419, 34.655800>,  <26.252607, 30.445988, 34.622223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857954, 30.935419, 34.655800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552057, 31.048080, 34.423992>,  <26.368519, 31.115677, 34.284908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552057, 31.048080, 34.423992>,  <26.857954, 30.935419, 34.655800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552057, 31.048080, 34.423992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243633, 0.959028, 0.144598,
		0.596502, -0.030610, -0.802027,
		-0.764740, 0.281653, -0.579520,
		26.322636, 31.132576, 34.250137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077417, 31.544106, 34.346588>,  <26.857954, 30.935419, 34.655800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077417, 31.544106, 34.346588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684610, 31.580482, 34.280415>,  <26.448925, 31.602308, 34.240711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684610, 31.580482, 34.280415>,  <27.077417, 31.544106, 34.346588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684610, 31.580482, 34.280415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035819, 0.950155, 0.309712,
		0.185351, 0.298218, -0.936329,
		-0.982019, 0.090943, -0.165431,
		26.390005, 31.607765, 34.230785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025854, 32.121090, 33.906281>,  <27.077417, 31.544106, 34.346588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025854, 32.121090, 33.906281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673845, 32.084915, 34.092777>,  <26.462641, 32.063210, 34.204678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673845, 32.084915, 34.092777>,  <27.025854, 32.121090, 33.906281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673845, 32.084915, 34.092777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018017, 0.987352, 0.157518,
		-0.474594, 0.130219, -0.870519,
		-0.880020, -0.090441, 0.466245,
		26.409840, 32.057781, 34.232651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619549, 32.610104, 33.561653>,  <27.025854, 32.121090, 33.906281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619549, 32.610104, 33.561653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481405, 32.530293, 33.928459>,  <26.398520, 32.482407, 34.148544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481405, 32.530293, 33.928459>,  <26.619549, 32.610104, 33.561653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481405, 32.530293, 33.928459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106017, 0.962587, 0.249371,
		-0.932464, 0.183341, -0.311283,
		-0.345357, -0.199528, 0.917015,
		26.377798, 32.470432, 34.203564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929199, 32.823364, 33.808723>,  <26.619549, 32.610104, 33.561653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929199, 32.823364, 33.808723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232227, 32.816143, 34.069725>,  <26.414043, 32.811810, 34.226326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232227, 32.816143, 34.069725>,  <25.929199, 32.823364, 33.808723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232227, 32.816143, 34.069725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110432, 0.981663, 0.155379,
		-0.643347, -0.189767, 0.741683,
		0.757568, -0.018057, 0.652506,
		26.459497, 32.810726, 34.265476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561213, 32.465153, 34.422653>,  <25.929199, 32.823364, 33.808723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561213, 32.465153, 34.422653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303896, 32.449295, 34.728489>,  <25.149506, 32.439781, 34.911991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303896, 32.449295, 34.728489>,  <25.561213, 32.465153, 34.422653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303896, 32.449295, 34.728489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416717, 0.819645, 0.393102,
		-0.642278, 0.571498, -0.510753,
		-0.643293, -0.039642, 0.764593,
		25.110909, 32.437401, 34.957867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159630, 33.100868, 34.425228>,  <25.561213, 32.465153, 34.422653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.159630, 33.100868, 34.425228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196026, 32.916348, 34.778252>,  <25.217863, 32.805634, 34.990067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196026, 32.916348, 34.778252>,  <25.159630, 33.100868, 34.425228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196026, 32.916348, 34.778252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305829, 0.856357, 0.416078,
		-0.947728, 0.232054, 0.219001,
		0.090991, -0.461306, 0.882563,
		25.223324, 32.777954, 35.043022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.705494, 33.410149, 34.866470>,  <25.159630, 33.100868, 34.425228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.705494, 33.410149, 34.866470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033876, 33.244473, 35.023685>,  <25.230906, 33.145065, 35.118015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033876, 33.244473, 35.023685>,  <24.705494, 33.410149, 34.866470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033876, 33.244473, 35.023685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300964, 0.898844, 0.318591,
		-0.485236, -0.143260, 0.862568,
		0.820955, -0.414194, 0.393035,
		25.280163, 33.120213, 35.141598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789137, 33.500805, 35.620472>,  <24.705494, 33.410149, 34.866470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789137, 33.500805, 35.620472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127728, 33.489338, 35.407810>,  <25.330881, 33.482460, 35.280212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127728, 33.489338, 35.407810>,  <24.789137, 33.500805, 35.620472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.127728, 33.489338, 35.407810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278249, 0.875155, 0.395830,
		0.453934, -0.482993, 0.748773,
		0.846476, -0.028665, -0.531655,
		25.381670, 33.480740, 35.248314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397007, 33.675014, 36.061733>,  <24.789137, 33.500805, 35.620472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397007, 33.675014, 36.061733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468571, 33.772053, 35.680336>,  <25.511509, 33.830276, 35.451500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468571, 33.772053, 35.680336>,  <25.397007, 33.675014, 36.061733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468571, 33.772053, 35.680336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259457, 0.923186, 0.283567,
		0.949039, -0.298121, 0.102222,
		0.178908, 0.242594, -0.953489,
		25.522243, 33.844830, 35.394291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943899, 34.179485, 36.114159>,  <25.397007, 33.675014, 36.061733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943899, 34.179485, 36.114159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790956, 34.231895, 35.748287>,  <25.699192, 34.263340, 35.528763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790956, 34.231895, 35.748287>,  <25.943899, 34.179485, 36.114159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790956, 34.231895, 35.748287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169227, 0.983082, 0.070083,
		0.908387, -0.127992, -0.398060,
		-0.382355, 0.131025, -0.914678,
		25.676250, 34.271202, 35.473885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426889, 34.462776, 35.473747>,  <25.943899, 34.179485, 36.114159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426889, 34.462776, 35.473747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048412, 34.563946, 35.393002>,  <25.821327, 34.624649, 35.344555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048412, 34.563946, 35.393002>,  <26.426889, 34.462776, 35.473747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048412, 34.563946, 35.393002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298765, 0.922449, -0.244595,
		0.124348, -0.291744, -0.948379,
		-0.946191, 0.252927, -0.201868,
		25.764555, 34.639824, 35.332439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337845, 34.899445, 34.865646>,  <26.426889, 34.462776, 35.473747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337845, 34.899445, 34.865646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002686, 35.003624, 35.057518>,  <25.801590, 35.066132, 35.172642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002686, 35.003624, 35.057518>,  <26.337845, 34.899445, 34.865646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002686, 35.003624, 35.057518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050601, 0.912098, -0.406838,
		-0.543474, -0.316617, -0.777425,
		-0.837899, 0.260445, 0.479680,
		25.751316, 35.081757, 35.201424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817917, 35.204647, 34.437153>,  <26.337845, 34.899445, 34.865646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817917, 35.204647, 34.437153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805378, 35.361111, 34.805069>,  <25.797853, 35.454987, 35.025818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805378, 35.361111, 34.805069>,  <25.817917, 35.204647, 34.437153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805378, 35.361111, 34.805069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244369, 0.895314, -0.372419,
		-0.969175, 0.213093, -0.123653,
		-0.031349, 0.391157, 0.919790,
		25.795973, 35.478458, 35.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887419, 35.780781, 33.987034>,  <25.817917, 35.204647, 34.437153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887419, 35.780781, 33.987034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816839, 35.877136, 34.368786>,  <25.774492, 35.934952, 34.597836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816839, 35.877136, 34.368786>,  <25.887419, 35.780781, 33.987034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816839, 35.877136, 34.368786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105260, 0.959413, -0.261624,
		-0.978665, -0.146621, -0.143931,
		-0.176449, 0.240892, 0.954378,
		25.763905, 35.949406, 34.655098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313332, 36.188305, 33.937195>,  <25.887419, 35.780781, 33.987034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313332, 36.188305, 33.937195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525915, 36.269535, 34.266148>,  <25.653465, 36.318275, 34.463520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525915, 36.269535, 34.266148>,  <25.313332, 36.188305, 33.937195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525915, 36.269535, 34.266148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106364, 0.979152, -0.173056,
		-0.840381, 0.004500, 0.541977,
		0.531457, 0.203079, 0.822382,
		25.685352, 36.330460, 34.512863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020233, 36.801559, 34.163403>,  <25.313332, 36.188305, 33.937195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020233, 36.801559, 34.163403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380325, 36.765945, 34.333889>,  <25.596380, 36.744579, 34.436180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380325, 36.765945, 34.333889>,  <25.020233, 36.801559, 34.163403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380325, 36.765945, 34.333889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168937, 0.973609, -0.153448,
		-0.401302, 0.210142, 0.891514,
		0.900231, -0.089031, 0.426212,
		25.650394, 36.739235, 34.461754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015921, 37.346462, 34.592121>,  <25.020233, 36.801559, 34.163403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015921, 37.346462, 34.592121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394165, 37.233440, 34.527649>,  <25.621113, 37.165627, 34.488964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394165, 37.233440, 34.527649>,  <25.015921, 37.346462, 34.592121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394165, 37.233440, 34.527649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231063, 0.932205, -0.278574,
		0.228967, 0.226179, 0.946793,
		0.945613, -0.282553, -0.161183,
		25.677849, 37.148674, 34.479294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494526, 37.895916, 34.823635>,  <25.015921, 37.346462, 34.592121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494526, 37.895916, 34.823635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688246, 37.686256, 34.543430>,  <25.804478, 37.560459, 34.375305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688246, 37.686256, 34.543430>,  <25.494526, 37.895916, 34.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688246, 37.686256, 34.543430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241964, 0.849690, -0.468488,
		0.840779, 0.057389, 0.538328,
		0.484298, -0.524151, -0.700515,
		25.833534, 37.529011, 34.333275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053070, 38.192314, 34.756355>,  <25.494526, 37.895916, 34.823635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053070, 38.192314, 34.756355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021702, 38.004665, 34.404499>,  <26.002880, 37.892075, 34.193386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021702, 38.004665, 34.404499>,  <26.053070, 38.192314, 34.756355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021702, 38.004665, 34.404499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389334, 0.797879, -0.460227,
		0.917752, -0.378567, 0.120074,
		-0.078422, -0.469123, -0.879644,
		25.998175, 37.863930, 34.140606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011169, 37.824795, 35.327011>,  <26.053070, 38.192314, 34.756355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011169, 37.824795, 35.327011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122208, 37.662323, 34.978767>,  <26.188831, 37.564838, 34.769821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122208, 37.662323, 34.978767>,  <26.011169, 37.824795, 35.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122208, 37.662323, 34.978767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456625, 0.853100, -0.252418,
		0.845242, -0.327470, 0.422291,
		0.277597, -0.406183, -0.870606,
		26.205486, 37.540466, 34.717587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721455, 38.125523, 35.151951>,  <26.011169, 37.824795, 35.327011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721455, 38.125523, 35.151951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606323, 37.977066, 34.798813>,  <26.537245, 37.887993, 34.586929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606323, 37.977066, 34.798813>,  <26.721455, 38.125523, 35.151951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606323, 37.977066, 34.798813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524926, 0.709895, -0.469577,
		0.801004, -0.598584, -0.009505,
		-0.287829, -0.371143, -0.882840,
		26.519974, 37.865723, 34.533962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345860, 38.299164, 34.697216>,  <26.721455, 38.125523, 35.151951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345860, 38.299164, 34.697216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049355, 38.217316, 34.441509>,  <26.871452, 38.168205, 34.288086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049355, 38.217316, 34.441509>,  <27.345860, 38.299164, 34.697216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049355, 38.217316, 34.441509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090716, 0.913121, -0.397468,
		0.665057, -0.352620, -0.658300,
		-0.741262, -0.204621, -0.639266,
		26.826977, 38.155930, 34.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569464, 38.622364, 34.007820>,  <27.345860, 38.299164, 34.697216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569464, 38.622364, 34.007820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170124, 38.603916, 34.021500>,  <26.930519, 38.592846, 34.029709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170124, 38.603916, 34.021500>,  <27.569464, 38.622364, 34.007820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170124, 38.603916, 34.021500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054345, 0.951270, -0.303531,
		-0.018534, -0.304889, -0.952207,
		-0.998350, -0.046122, 0.034200,
		26.870619, 38.590080, 34.031761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240829, 38.778065, 33.324863>,  <27.569464, 38.622364, 34.007820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240829, 38.778065, 33.324863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013844, 38.886192, 33.635967>,  <26.877653, 38.951069, 33.822632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013844, 38.886192, 33.635967>,  <27.240829, 38.778065, 33.324863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013844, 38.886192, 33.635967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114006, 0.909685, -0.399344,
		-0.815468, -0.315283, -0.485395,
		-0.567463, 0.270315, 0.777764,
		26.843605, 38.967285, 33.869297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703075, 39.011284, 32.937084>,  <27.240829, 38.778065, 33.324863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703075, 39.011284, 32.937084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744072, 39.186272, 33.294434>,  <26.768671, 39.291264, 33.508842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744072, 39.186272, 33.294434>,  <26.703075, 39.011284, 32.937084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744072, 39.186272, 33.294434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061029, 0.899178, -0.433306,
		-0.992860, -0.010111, 0.118857,
		0.102493, 0.437466, 0.893375,
		26.774820, 39.317513, 33.562447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399378, 38.310307, 33.081242>,  <26.703075, 39.011284, 32.937084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399378, 38.310307, 33.081242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270950, 37.968868, 32.917149>,  <26.193893, 37.764004, 32.818695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270950, 37.968868, 32.917149>,  <26.399378, 38.310307, 33.081242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270950, 37.968868, 32.917149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934966, 0.354681, -0.006259,
		0.150844, 0.381542, -0.911960,
		-0.321067, -0.853596, -0.410231,
		26.174629, 37.712788, 32.794079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835474, 37.883938, 33.414059>,  <26.399378, 38.310307, 33.081242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835474, 37.883938, 33.414059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147751, 37.963074, 33.651169>,  <26.335117, 38.010555, 33.793434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147751, 37.963074, 33.651169>,  <25.835474, 37.883938, 33.414059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147751, 37.963074, 33.651169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262128, -0.757404, 0.598020,
		0.567283, -0.622251, -0.539438,
		0.780691, 0.197844, 0.592772,
		26.381958, 38.022427, 33.828999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252342, 37.390934, 33.355106>,  <25.835474, 37.883938, 33.414059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252342, 37.390934, 33.355106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334991, 37.535423, 33.718826>,  <26.384581, 37.622116, 33.937057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334991, 37.535423, 33.718826>,  <26.252342, 37.390934, 33.355106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334991, 37.535423, 33.718826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233428, -0.884318, 0.404344,
		0.950167, -0.295803, -0.098401,
		0.206623, 0.361225, 0.909298,
		26.396978, 37.643791, 33.991615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759802, 36.953175, 33.699242>,  <26.252342, 37.390934, 33.355106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759802, 36.953175, 33.699242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556273, 37.147659, 33.983410>,  <26.434155, 37.264351, 34.153912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556273, 37.147659, 33.983410>,  <26.759802, 36.953175, 33.699242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556273, 37.147659, 33.983410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364731, -0.869264, 0.333694,
		0.779788, -0.089320, 0.619639,
		-0.508824, 0.486212, 0.710419,
		26.403625, 37.293522, 34.196537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963831, 36.704468, 34.343666>,  <26.759802, 36.953175, 33.699242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963831, 36.704468, 34.343666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588573, 36.841003, 34.366886>,  <26.363419, 36.922924, 34.380817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588573, 36.841003, 34.366886>,  <26.963831, 36.704468, 34.343666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588573, 36.841003, 34.366886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289250, -0.864789, 0.410455,
		0.190306, 0.368276, 0.910031,
		-0.938146, 0.341339, 0.058051,
		26.307129, 36.943405, 34.384300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793116, 36.776836, 35.080029>,  <26.963831, 36.704468, 34.343666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793116, 36.776836, 35.080029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460291, 36.734341, 34.862263>,  <26.260595, 36.708843, 34.731606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460291, 36.734341, 34.862263>,  <26.793116, 36.776836, 35.080029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460291, 36.734341, 34.862263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147112, -0.904068, 0.401272,
		-0.534817, 0.413973, 0.736612,
		-0.832063, -0.106243, -0.544411,
		26.210672, 36.702469, 34.698940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333328, 36.541553, 35.586639>,  <26.793116, 36.776836, 35.080029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333328, 36.541553, 35.586639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170952, 36.477779, 35.226685>,  <26.073526, 36.439514, 35.010712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170952, 36.477779, 35.226685>,  <26.333328, 36.541553, 35.586639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170952, 36.477779, 35.226685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273321, -0.918418, 0.286015,
		-0.872072, 0.362062, 0.329244,
		-0.405939, -0.159436, -0.899885,
		26.049170, 36.429947, 34.956718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104597, 36.593136, 35.849754>,  <26.333328, 36.541553, 35.586639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104597, 36.593136, 35.849754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199606, 36.429489, 35.497345>,  <27.256611, 36.331299, 35.285900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199606, 36.429489, 35.497345>,  <27.104597, 36.593136, 35.849754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199606, 36.429489, 35.497345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375240, 0.875220, -0.305262,
		0.895979, -0.258089, 0.361403,
		0.237523, -0.409121, -0.881024,
		27.270863, 36.306751, 35.233036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454266, 36.245388, 36.444904>,  <27.104597, 36.593136, 35.849754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454266, 36.245388, 36.444904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843468, 36.326385, 36.489193>,  <28.076988, 36.374985, 36.515766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843468, 36.326385, 36.489193>,  <27.454266, 36.245388, 36.444904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843468, 36.326385, 36.489193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137432, -0.893790, 0.426910,
		0.185410, -0.400168, -0.897490,
		0.973004, 0.202497, 0.110722,
		28.135368, 36.387135, 36.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810768, 35.644302, 36.230236>,  <27.454266, 36.245388, 36.444904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810768, 35.644302, 36.230236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023718, 35.855297, 36.495064>,  <28.151487, 35.981895, 36.653961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023718, 35.855297, 36.495064>,  <27.810768, 35.644302, 36.230236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023718, 35.855297, 36.495064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134303, -0.824840, 0.549182,
		0.835787, -0.203453, -0.509967,
		0.532375, 0.527489, 0.662067,
		28.183430, 36.013542, 36.693684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548235, 35.483780, 36.199837>,  <27.810768, 35.644302, 36.230236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548235, 35.483780, 36.199837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436604, 35.596142, 36.567142>,  <28.369625, 35.663559, 36.787525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436604, 35.596142, 36.567142>,  <28.548235, 35.483780, 36.199837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436604, 35.596142, 36.567142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199130, -0.918541, 0.341511,
		0.939395, 0.278161, 0.200406,
		-0.279077, 0.280907, 0.918263,
		28.352880, 35.680412, 36.842621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769812, 34.924789, 35.881996>,  <28.548235, 35.483780, 36.199837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769812, 34.924789, 35.881996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842339, 34.536911, 35.947483>,  <28.885855, 34.304184, 35.986774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842339, 34.536911, 35.947483>,  <28.769812, 34.924789, 35.881996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842339, 34.536911, 35.947483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102494, 0.146941, 0.983821,
		-0.978069, -0.195165, -0.072745,
		0.181318, -0.969700, 0.163722,
		28.896734, 34.246002, 35.996601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328024, 34.805412, 36.422508>,  <28.769812, 34.924789, 35.881996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328024, 34.805412, 36.422508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641043, 34.556419, 36.417866>,  <28.828854, 34.407024, 36.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641043, 34.556419, 36.417866>,  <28.328024, 34.805412, 36.422508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641043, 34.556419, 36.417866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120117, -0.169250, 0.978226,
		-0.610895, -0.764113, -0.207217,
		0.782547, -0.622484, -0.011611,
		28.875807, 34.369675, 36.414383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239769, 34.379303, 36.943882>,  <28.328024, 34.805412, 36.422508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239769, 34.379303, 36.943882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624916, 34.291775, 36.880630>,  <28.856005, 34.239258, 36.842678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624916, 34.291775, 36.880630>,  <28.239769, 34.379303, 36.943882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624916, 34.291775, 36.880630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121184, -0.173084, 0.977423,
		-0.241250, -0.960291, -0.140139,
		0.962867, -0.218821, -0.158129,
		28.913776, 34.226128, 36.833191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352041, 33.687988, 37.161198>,  <28.239769, 34.379303, 36.943882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352041, 33.687988, 37.161198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672611, 33.926525, 37.179523>,  <28.864952, 34.069645, 37.190521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672611, 33.926525, 37.179523>,  <28.352041, 33.687988, 37.161198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672611, 33.926525, 37.179523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040875, -0.021816, 0.998926,
		0.596699, -0.802436, 0.006891,
		0.801423, 0.596340, 0.045817,
		28.913038, 34.105427, 37.193268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680264, 33.474579, 37.747673>,  <28.352041, 33.687988, 37.161198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680264, 33.474579, 37.747673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892155, 33.811893, 37.711315>,  <29.019289, 34.014282, 37.689499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892155, 33.811893, 37.711315>,  <28.680264, 33.474579, 37.747673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892155, 33.811893, 37.711315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081015, 0.056370, 0.995118,
		0.844291, -0.534503, -0.038458,
		0.529726, 0.843285, -0.090895,
		29.051073, 34.064880, 37.684048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391283, 33.506363, 38.064613>,  <28.680264, 33.474579, 37.747673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391283, 33.506363, 38.064613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195490, 33.855141, 38.060326>,  <29.078014, 34.064407, 38.057755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195490, 33.855141, 38.060326>,  <29.391283, 33.506363, 38.064613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195490, 33.855141, 38.060326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047056, 0.038681, 0.998143,
		0.870744, 0.488068, -0.059964,
		-0.489481, 0.871948, -0.010715,
		29.048645, 34.116726, 38.057110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104986, 34.039234, 38.610031>,  <29.391283, 33.506363, 38.064613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104986, 34.039234, 38.610031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447300, 33.991802, 38.811455>,  <29.652689, 33.963341, 38.932308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447300, 33.991802, 38.811455>,  <29.104986, 34.039234, 38.610031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447300, 33.991802, 38.811455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457687, -0.627280, 0.630114,
		0.241150, -0.769713, -0.591090,
		0.855786, -0.118582, 0.503556,
		29.704035, 33.956226, 38.962521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830481, 34.660042, 38.448265>,  <29.104986, 34.039234, 38.610031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830481, 34.660042, 38.448265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226257, 34.650406, 38.391102>,  <29.463724, 34.644623, 38.356804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226257, 34.650406, 38.391102>,  <28.830481, 34.660042, 38.448265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226257, 34.650406, 38.391102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144110, -0.059439, -0.987775,
		0.015304, 0.997941, -0.062284,
		0.989443, -0.024092, -0.142903,
		29.523090, 34.643177, 38.348232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924374, 35.096832, 37.893959>,  <28.830481, 34.660042, 38.448265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924374, 35.096832, 37.893959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194246, 34.805824, 37.943794>,  <29.356171, 34.631222, 37.973698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194246, 34.805824, 37.943794>,  <28.924374, 35.096832, 37.893959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194246, 34.805824, 37.943794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066259, -0.227813, -0.971448,
		0.735128, 0.647163, -0.201905,
		0.674682, -0.727517, 0.124592,
		29.396650, 34.587570, 37.981171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415136, 35.199425, 37.422329>,  <28.924374, 35.096832, 37.893959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415136, 35.199425, 37.422329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386272, 34.811695, 37.516308>,  <29.368954, 34.579056, 37.572697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386272, 34.811695, 37.516308>,  <29.415136, 35.199425, 37.422329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386272, 34.811695, 37.516308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058901, -0.231008, -0.971167,
		0.995652, -0.083917, -0.040425,
		-0.072159, -0.969326, 0.234947,
		29.364624, 34.520897, 37.586792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013323, 34.818890, 37.199619>,  <29.415136, 35.199425, 37.422329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013323, 34.818890, 37.199619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682896, 34.593517, 37.204727>,  <29.484640, 34.458294, 37.207794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682896, 34.593517, 37.204727>,  <30.013323, 34.818890, 37.199619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682896, 34.593517, 37.204727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101410, -0.170899, -0.980056,
		0.554375, -0.808295, 0.198311,
		-0.826066, -0.563429, 0.012773,
		29.435076, 34.424488, 37.208561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170601, 34.292801, 36.740448>,  <30.013323, 34.818890, 37.199619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170601, 34.292801, 36.740448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771755, 34.290077, 36.770695>,  <29.532448, 34.288445, 36.788845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771755, 34.290077, 36.770695>,  <30.170601, 34.292801, 36.740448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771755, 34.290077, 36.770695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074792, -0.083485, -0.993698,
		0.013080, -0.996486, 0.082735,
		-0.997114, -0.006810, 0.075621,
		29.472622, 34.288036, 36.793381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979713, 33.670662, 36.280819>,  <30.170601, 34.292801, 36.740448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979713, 33.670662, 36.280819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654119, 33.895477, 36.339531>,  <29.458763, 34.030365, 36.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654119, 33.895477, 36.339531>,  <29.979713, 33.670662, 36.280819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654119, 33.895477, 36.339531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124773, 0.077614, -0.989145,
		-0.567329, -0.823462, 0.006950,
		-0.813984, 0.562038, 0.146779,
		29.409924, 34.064087, 36.383564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356913, 33.385151, 36.006050>,  <29.979713, 33.670662, 36.280819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356913, 33.385151, 36.006050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333225, 33.784359, 35.997509>,  <29.319014, 34.023884, 35.992382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333225, 33.784359, 35.997509>,  <29.356913, 33.385151, 36.006050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333225, 33.784359, 35.997509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242259, -0.035122, -0.969575,
		-0.968403, -0.052241, 0.243858,
		-0.059217, 0.998017, -0.021357,
		29.315460, 34.083763, 35.991100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692842, 33.621742, 35.618343>,  <29.356913, 33.385151, 36.006050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692842, 33.621742, 35.618343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970081, 33.909782, 35.605297>,  <29.136425, 34.082607, 35.597469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970081, 33.909782, 35.605297>,  <28.692842, 33.621742, 35.618343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970081, 33.909782, 35.605297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224366, 0.172516, -0.959113,
		-0.685036, 0.672077, 0.281138,
		0.693098, 0.720105, -0.032612,
		29.178011, 34.125813, 35.595512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323929, 34.234451, 35.449894>,  <28.692842, 33.621742, 35.618343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323929, 34.234451, 35.449894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705402, 34.248119, 35.330349>,  <28.934286, 34.256321, 35.258621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705402, 34.248119, 35.330349>,  <28.323929, 34.234451, 35.449894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705402, 34.248119, 35.330349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300045, 0.037329, -0.953194,
		-0.021416, 0.998719, 0.045853,
		0.953685, 0.034172, -0.298861,
		28.991508, 34.258369, 35.240692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460684, 34.796162, 34.934155>,  <28.323929, 34.234451, 35.449894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460684, 34.796162, 34.934155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773382, 34.554085, 34.873993>,  <28.961000, 34.408840, 34.837894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773382, 34.554085, 34.873993>,  <28.460684, 34.796162, 34.934155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773382, 34.554085, 34.873993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233583, -0.060550, -0.970450,
		0.578197, 0.793777, -0.188696,
		0.781746, -0.605188, -0.150402,
		29.007906, 34.372528, 34.828873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684156, 35.043751, 34.289799>,  <28.460684, 34.796162, 34.934155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684156, 35.043751, 34.289799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848225, 34.681301, 34.331161>,  <28.946667, 34.463829, 34.355980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848225, 34.681301, 34.331161>,  <28.684156, 35.043751, 34.289799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848225, 34.681301, 34.331161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006838, -0.110325, -0.993872,
		0.911982, 0.408366, -0.039057,
		0.410172, -0.906127, 0.103407,
		28.971277, 34.409462, 34.362183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110794, 34.990570, 33.773655>,  <28.684156, 35.043751, 34.289799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110794, 34.990570, 33.773655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058599, 34.606022, 33.870598>,  <29.027283, 34.375294, 33.928764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058599, 34.606022, 33.870598>,  <29.110794, 34.990570, 33.773655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058599, 34.606022, 33.870598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135074, -0.224934, -0.964966,
		0.982206, -0.158653, -0.100505,
		-0.130488, -0.961371, 0.242362,
		29.019453, 34.317612, 33.943306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602829, 34.714695, 33.352077>,  <29.110794, 34.990570, 33.773655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602829, 34.714695, 33.352077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335827, 34.432148, 33.446297>,  <29.175625, 34.262619, 33.502827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335827, 34.432148, 33.446297>,  <29.602829, 34.714695, 33.352077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335827, 34.432148, 33.446297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135672, -0.195667, -0.971240,
		0.732140, -0.680266, 0.034775,
		-0.667506, -0.706366, 0.235549,
		29.135574, 34.220238, 33.516960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785526, 34.214733, 32.927464>,  <29.602829, 34.714695, 33.352077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785526, 34.214733, 32.927464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417496, 34.098118, 33.032131>,  <29.196678, 34.028149, 33.094933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417496, 34.098118, 33.032131>,  <29.785526, 34.214733, 32.927464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417496, 34.098118, 33.032131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163066, -0.322318, -0.932481,
		0.356193, -0.900621, 0.249016,
		-0.920074, -0.291537, 0.261668,
		29.141474, 34.010658, 33.110630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600603, 33.516323, 32.653336>,  <29.785526, 34.214733, 32.927464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600603, 33.516323, 32.653336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248446, 33.695225, 32.716419>,  <29.037151, 33.802567, 32.754269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248446, 33.695225, 32.716419>,  <29.600603, 33.516323, 32.653336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248446, 33.695225, 32.716419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387914, -0.487838, -0.782008,
		-0.272823, -0.749650, 0.602986,
		-0.880392, 0.447257, 0.157706,
		28.984327, 33.829403, 32.763729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233730, 33.112366, 32.346466>,  <29.600603, 33.516323, 32.653336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233730, 33.112366, 32.346466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967251, 33.407135, 32.392284>,  <28.807364, 33.583996, 32.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967251, 33.407135, 32.392284>,  <29.233730, 33.112366, 32.346466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967251, 33.407135, 32.392284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462957, -0.288231, -0.838209,
		-0.584682, -0.611443, 0.533184,
		-0.666197, 0.736926, 0.114548,
		28.767391, 33.628212, 32.426647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622257, 32.761551, 32.295261>,  <29.233730, 33.112366, 32.346466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622257, 32.761551, 32.295261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583342, 33.143097, 32.181641>,  <28.559992, 33.372025, 32.113468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583342, 33.143097, 32.181641>,  <28.622257, 32.761551, 32.295261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583342, 33.143097, 32.181641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386207, -0.299222, -0.872531,
		-0.917267, 0.024816, 0.397498,
		-0.097287, 0.953861, -0.284050,
		28.554155, 33.429256, 32.096424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072773, 32.742447, 31.845461>,  <28.622257, 32.761551, 32.295261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072773, 32.742447, 31.845461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235933, 33.099113, 31.766918>,  <28.333830, 33.313114, 31.719793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235933, 33.099113, 31.766918>,  <28.072773, 32.742447, 31.845461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235933, 33.099113, 31.766918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229424, -0.108061, -0.967309,
		-0.883732, 0.439614, 0.160490,
		0.407900, 0.891663, -0.196354,
		28.358303, 33.366611, 31.708012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563992, 33.116570, 31.359217>,  <28.072773, 32.742447, 31.845461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563992, 33.116570, 31.359217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912868, 33.311821, 31.346518>,  <28.122194, 33.428974, 31.338898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912868, 33.311821, 31.346518>,  <27.563992, 33.116570, 31.359217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912868, 33.311821, 31.346518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158163, 0.219997, -0.962593,
		-0.462887, 0.844588, 0.269084,
		0.872193, 0.488131, -0.031749,
		28.174526, 33.458260, 31.336992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420841, 33.843628, 31.217237>,  <27.563992, 33.116570, 31.359217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420841, 33.843628, 31.217237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797939, 33.782467, 31.098680>,  <28.024199, 33.745773, 31.027546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797939, 33.782467, 31.098680>,  <27.420841, 33.843628, 31.217237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797939, 33.782467, 31.098680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206532, 0.430146, -0.878817,
		0.261862, 0.889717, 0.373941,
		0.942747, -0.152898, -0.296394,
		28.080763, 33.736599, 31.009762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625706, 34.502647, 30.934261>,  <27.420841, 33.843628, 31.217237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625706, 34.502647, 30.934261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874777, 34.222466, 30.794754>,  <28.024220, 34.054356, 30.711050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874777, 34.222466, 30.794754>,  <27.625706, 34.502647, 30.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874777, 34.222466, 30.794754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091879, 0.377190, -0.921567,
		0.777065, 0.605884, 0.170511,
		0.622678, -0.700451, -0.348769,
		28.061581, 34.012329, 30.690123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059713, 34.828930, 30.444233>,  <27.625706, 34.502647, 30.934261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059713, 34.828930, 30.444233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114079, 34.447037, 30.338398>,  <28.146698, 34.217899, 30.274897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114079, 34.447037, 30.338398>,  <28.059713, 34.828930, 30.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114079, 34.447037, 30.338398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050042, 0.273341, -0.960615,
		0.989456, 0.117319, 0.084928,
		0.135913, -0.954736, -0.264588,
		28.154852, 34.160618, 30.259022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538485, 34.895927, 29.895561>,  <28.059713, 34.828930, 30.444233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538485, 34.895927, 29.895561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329639, 34.555336, 29.876076>,  <28.204332, 34.350979, 29.864384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329639, 34.555336, 29.876076>,  <28.538485, 34.895927, 29.895561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329639, 34.555336, 29.876076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107925, 0.122622, -0.986568,
		0.846019, -0.509844, -0.155919,
		-0.522115, -0.851483, -0.048716,
		28.173004, 34.299892, 29.861462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785337, 34.627918, 29.231157>,  <28.538485, 34.895927, 29.895561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785337, 34.627918, 29.231157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439466, 34.438759, 29.298925>,  <28.231945, 34.325264, 29.339586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439466, 34.438759, 29.298925>,  <28.785337, 34.627918, 29.231157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439466, 34.438759, 29.298925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254391, 0.121408, -0.959451,
		0.433153, -0.872713, -0.225280,
		-0.864675, -0.472898, 0.169422,
		28.180063, 34.296890, 29.349752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642830, 34.358379, 28.630270>,  <28.785337, 34.627918, 29.231157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642830, 34.358379, 28.630270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285749, 34.357121, 28.810526>,  <28.071501, 34.356365, 28.918680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285749, 34.357121, 28.810526>,  <28.642830, 34.358379, 28.630270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285749, 34.357121, 28.810526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437059, 0.249777, -0.864055,
		-0.109844, -0.968298, -0.224349,
		-0.892700, -0.003142, 0.450640,
		28.017939, 34.356178, 28.945719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171240, 33.984028, 28.202316>,  <28.642830, 34.358379, 28.630270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171240, 33.984028, 28.202316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946135, 34.200024, 28.452663>,  <27.811071, 34.329620, 28.602871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946135, 34.200024, 28.452663>,  <28.171240, 33.984028, 28.202316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946135, 34.200024, 28.452663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479591, 0.403389, -0.779275,
		-0.673267, -0.738709, 0.031960,
		-0.562765, 0.539987, 0.625867,
		27.777306, 34.362019, 28.640423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573572, 34.012058, 27.844791>,  <28.171240, 33.984028, 28.202316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573572, 34.012058, 27.844791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521612, 34.317581, 28.097685>,  <27.490437, 34.500896, 28.249422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521612, 34.317581, 28.097685>,  <27.573572, 34.012058, 27.844791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521612, 34.317581, 28.097685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511228, 0.494754, -0.702755,
		-0.849572, -0.414503, 0.326213,
		-0.129899, 0.763810, 0.632235,
		27.482643, 34.546722, 28.287355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876698, 34.117725, 27.832357>,  <27.573572, 34.012058, 27.844791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876698, 34.117725, 27.832357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069853, 34.454582, 27.928377>,  <27.185745, 34.656696, 27.985989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069853, 34.454582, 27.928377>,  <26.876698, 34.117725, 27.832357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069853, 34.454582, 27.928377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505089, 0.491791, -0.709244,
		-0.715337, 0.221237, 0.662833,
		0.482886, 0.842138, 0.240052,
		27.214718, 34.707222, 28.000393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410196, 34.601189, 27.701492>,  <26.876698, 34.117725, 27.832357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410196, 34.601189, 27.701492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736559, 34.832001, 27.716095>,  <26.932377, 34.970490, 27.724857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736559, 34.832001, 27.716095>,  <26.410196, 34.601189, 27.701492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736559, 34.832001, 27.716095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363171, 0.560597, -0.744203,
		-0.449895, 0.593940, 0.666955,
		0.815905, 0.577032, 0.036508,
		26.981331, 35.005112, 27.727047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119965, 35.227055, 27.547503>,  <26.410196, 34.601189, 27.701492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119965, 35.227055, 27.547503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514168, 35.271301, 27.496067>,  <26.750690, 35.297848, 27.465206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514168, 35.271301, 27.496067>,  <26.119965, 35.227055, 27.547503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514168, 35.271301, 27.496067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165749, 0.466971, -0.868599,
		-0.036035, 0.877326, 0.478539,
		0.985509, 0.110618, -0.128589,
		26.809820, 35.304485, 27.457491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252151, 35.943016, 27.339922>,  <26.119965, 35.227055, 27.547503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252151, 35.943016, 27.339922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582947, 35.755344, 27.216009>,  <26.781424, 35.642742, 27.141661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582947, 35.755344, 27.216009>,  <26.252151, 35.943016, 27.339922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582947, 35.755344, 27.216009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048455, 0.489472, -0.870672,
		0.560127, 0.735046, 0.382053,
		0.826988, -0.469174, -0.309783,
		26.831043, 35.614594, 27.123074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725969, 36.522694, 27.058428>,  <26.252151, 35.943016, 27.339922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725969, 36.522694, 27.058428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826225, 36.171108, 26.896139>,  <26.886379, 35.960159, 26.798767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826225, 36.171108, 26.896139>,  <26.725969, 36.522694, 27.058428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826225, 36.171108, 26.896139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062461, 0.403542, -0.912827,
		0.966063, 0.254134, 0.046244,
		0.250642, -0.878960, -0.405720,
		26.901419, 35.907421, 26.774424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209061, 36.748611, 26.571789>,  <26.725969, 36.522694, 27.058428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209061, 36.748611, 26.571789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146421, 36.371944, 26.452631>,  <27.108839, 36.145943, 26.381136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146421, 36.371944, 26.452631>,  <27.209061, 36.748611, 26.571789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146421, 36.371944, 26.452631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065051, 0.291126, -0.954471,
		0.985518, -0.168844, 0.015668,
		-0.156596, -0.941667, -0.297893,
		27.099443, 36.089443, 26.363262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818016, 36.485977, 26.217611>,  <27.209061, 36.748611, 26.571789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818016, 36.485977, 26.217611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494036, 36.281551, 26.102516>,  <27.299646, 36.158897, 26.033459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494036, 36.281551, 26.102516>,  <27.818016, 36.485977, 26.217611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494036, 36.281551, 26.102516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052311, 0.425703, -0.903350,
		0.584158, -0.746722, -0.318065,
		-0.809952, -0.511061, -0.287740,
		27.251051, 36.128235, 26.016193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957560, 36.410622, 25.537886>,  <27.818016, 36.485977, 26.217611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957560, 36.410622, 25.537886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567289, 36.326248, 25.561775>,  <27.333128, 36.275623, 25.576109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567289, 36.326248, 25.561775>,  <27.957560, 36.410622, 25.537886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567289, 36.326248, 25.561775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145730, 0.420537, -0.895495,
		0.163773, -0.882415, -0.441046,
		-0.975675, -0.210932, 0.059722,
		27.274588, 36.262970, 25.579691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730804, 35.946457, 24.930836>,  <27.957560, 36.410622, 25.537886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730804, 35.946457, 24.930836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442757, 36.175388, 25.087738>,  <27.269928, 36.312748, 25.181879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442757, 36.175388, 25.087738>,  <27.730804, 35.946457, 24.930836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442757, 36.175388, 25.087738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142810, 0.430973, -0.890992,
		-0.678994, -0.697639, -0.228618,
		-0.720120, 0.572330, 0.392258,
		27.226721, 36.347088, 25.205416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239466, 35.862907, 24.432405>,  <27.730804, 35.946457, 24.930836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239466, 35.862907, 24.432405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149229, 36.181557, 24.656725>,  <27.095087, 36.372746, 24.791317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149229, 36.181557, 24.656725>,  <27.239466, 35.862907, 24.432405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149229, 36.181557, 24.656725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098591, 0.554016, -0.826648,
		-0.969221, -0.241773, -0.046440,
		-0.225589, 0.796626, 0.560800,
		27.081553, 36.420544, 24.824965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824917, 36.216599, 23.988718>,  <27.239466, 35.862907, 24.432405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824917, 36.216599, 23.988718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933239, 36.491592, 24.258244>,  <26.998232, 36.656590, 24.419958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933239, 36.491592, 24.258244>,  <26.824917, 36.216599, 23.988718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933239, 36.491592, 24.258244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119416, 0.718553, -0.685143,
		-0.955198, 0.105078, 0.276686,
		0.270807, 0.687488, 0.673812,
		27.014481, 36.697838, 24.460388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519947, 36.845009, 23.706446>,  <26.824917, 36.216599, 23.988718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519947, 36.845009, 23.706446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789640, 36.983376, 23.967443>,  <26.951456, 37.066395, 24.124043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789640, 36.983376, 23.967443>,  <26.519947, 36.845009, 23.706446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789640, 36.983376, 23.967443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189674, 0.772778, -0.605672,
		-0.713744, 0.532127, 0.455424,
		0.674235, 0.345912, 0.652496,
		26.991911, 37.087151, 24.163193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413515, 37.614761, 23.974566>,  <26.519947, 36.845009, 23.706446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413515, 37.614761, 23.974566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801132, 37.527332, 24.020494>,  <27.033703, 37.474876, 24.048052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801132, 37.527332, 24.020494>,  <26.413515, 37.614761, 23.974566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801132, 37.527332, 24.020494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246883, 0.862743, -0.441274,
		-0.002612, 0.455961, 0.889996,
		0.969042, -0.218572, 0.114822,
		27.091845, 37.461761, 24.054941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715708, 38.270866, 24.133394>,  <26.413515, 37.614761, 23.974566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715708, 38.270866, 24.133394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018641, 38.030640, 24.030809>,  <27.200399, 37.886505, 23.969259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018641, 38.030640, 24.030809>,  <26.715708, 38.270866, 24.133394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018641, 38.030640, 24.030809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406779, 0.741071, -0.534177,
		0.510863, 0.300226, 0.805533,
		0.757331, -0.600565, -0.256460,
		27.245840, 37.850471, 23.953871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364286, 38.692169, 24.192759>,  <26.715708, 38.270866, 24.133394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364286, 38.692169, 24.192759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463942, 38.373577, 23.972380>,  <27.523735, 38.182423, 23.840153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463942, 38.373577, 23.972380>,  <27.364286, 38.692169, 24.192759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463942, 38.373577, 23.972380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616764, 0.569094, -0.543814,
		0.746680, -0.204320, 0.633026,
		0.249139, -0.796483, -0.550948,
		27.538683, 38.134632, 23.807095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088476, 38.647850, 24.235403>,  <27.364286, 38.692169, 24.192759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088476, 38.647850, 24.235403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962139, 38.473068, 23.898520>,  <27.886337, 38.368198, 23.696390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962139, 38.473068, 23.898520>,  <28.088476, 38.647850, 24.235403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962139, 38.473068, 23.898520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674509, 0.520875, -0.523190,
		0.667295, -0.733321, 0.130216,
		-0.315840, -0.436954, -0.842209,
		27.867388, 38.341984, 23.645857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666897, 38.324757, 23.917673>,  <28.088476, 38.647850, 24.235403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666897, 38.324757, 23.917673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414484, 38.356056, 23.608953>,  <28.263037, 38.374836, 23.423721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414484, 38.356056, 23.608953>,  <28.666897, 38.324757, 23.917673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414484, 38.356056, 23.608953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678985, 0.536902, -0.500715,
		0.375201, -0.840008, -0.391931,
		-0.631033, 0.078247, -0.771800,
		28.225174, 38.379532, 23.377413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083017, 38.230297, 23.381672>,  <28.666897, 38.324757, 23.917673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083017, 38.230297, 23.381672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756168, 38.389446, 23.214815>,  <28.560059, 38.484936, 23.114700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756168, 38.389446, 23.214815>,  <29.083017, 38.230297, 23.381672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756168, 38.389446, 23.214815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555861, 0.735552, -0.387276,
		0.152744, -0.548326, -0.822197,
		-0.817122, 0.397873, -0.417144,
		28.511032, 38.508808, 23.089672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297911, 38.418324, 22.786318>,  <29.083017, 38.230297, 23.381672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297911, 38.418324, 22.786318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968824, 38.644527, 22.809431>,  <28.771372, 38.780251, 22.823299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968824, 38.644527, 22.809431>,  <29.297911, 38.418324, 22.786318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968824, 38.644527, 22.809431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514773, 0.784291, -0.346261,
		-0.241133, -0.255129, -0.936357,
		-0.822717, 0.565506, 0.057784,
		28.722010, 38.814178, 22.826767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270844, 38.760109, 22.132614>,  <29.297911, 38.418324, 22.786318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270844, 38.760109, 22.132614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057837, 38.974892, 22.394333>,  <28.930033, 39.103760, 22.551365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057837, 38.974892, 22.394333>,  <29.270844, 38.760109, 22.132614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057837, 38.974892, 22.394333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383582, 0.842175, -0.378954,
		-0.754515, 0.049178, -0.654438,
		-0.532515, 0.536957, 0.654297,
		28.898083, 39.135979, 22.590622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119619, 39.386635, 21.788630>,  <29.270844, 38.760109, 22.132614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119619, 39.386635, 21.788630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068003, 39.484135, 22.173115>,  <29.037033, 39.542637, 22.403807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068003, 39.484135, 22.173115>,  <29.119619, 39.386635, 21.788630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068003, 39.484135, 22.173115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425290, 0.889250, -0.168411,
		-0.895811, 0.387063, -0.218415,
		-0.129040, 0.243754, 0.961214,
		29.029291, 39.557262, 22.461479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895443, 40.083710, 21.764755>,  <29.119619, 39.386635, 21.788630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895443, 40.083710, 21.764755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058428, 39.996906, 22.119581>,  <29.156219, 39.944824, 22.332476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058428, 39.996906, 22.119581>,  <28.895443, 40.083710, 21.764755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058428, 39.996906, 22.119581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729863, 0.661210, -0.173498,
		-0.548884, 0.718128, 0.427806,
		0.407463, -0.217010, 0.887063,
		29.180666, 39.931805, 22.385700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031408, 40.716702, 21.997099>,  <28.895443, 40.083710, 21.764755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031408, 40.716702, 21.997099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284142, 40.475864, 22.192350>,  <29.435781, 40.331364, 22.309502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284142, 40.475864, 22.192350>,  <29.031408, 40.716702, 21.997099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284142, 40.475864, 22.192350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719657, 0.689598, -0.080926,
		-0.287889, 0.402418, 0.869011,
		0.631834, -0.602092, 0.488130,
		29.473692, 40.295238, 22.338789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760658, 40.933266, 22.079657>,  <29.031408, 40.716702, 21.997099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760658, 40.933266, 22.079657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068037, 41.188587, 22.097822>,  <30.252464, 41.341778, 22.108721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068037, 41.188587, 22.097822>,  <29.760658, 40.933266, 22.079657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068037, 41.188587, 22.097822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220197, 0.330390, -0.917799,
		-0.600837, 0.695279, 0.394439,
		0.768445, 0.638302, 0.045412,
		30.298571, 41.380077, 22.111446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480900, 41.572216, 21.943319>,  <29.760658, 40.933266, 22.079657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480900, 41.572216, 21.943319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871880, 41.609249, 21.867403>,  <30.106468, 41.631470, 21.821854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871880, 41.609249, 21.867403>,  <29.480900, 41.572216, 21.943319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871880, 41.609249, 21.867403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211065, 0.456229, -0.864469,
		0.006552, 0.885033, 0.465482,
		0.977450, 0.092583, -0.189788,
		30.165115, 41.637024, 21.810467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533770, 42.222942, 21.540810>,  <29.480900, 41.572216, 21.943319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533770, 42.222942, 21.540810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868402, 42.020760, 21.456299>,  <30.069183, 41.899448, 21.405592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868402, 42.020760, 21.456299>,  <29.533770, 42.222942, 21.540810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868402, 42.020760, 21.456299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078019, 0.271805, -0.959185,
		0.542255, 0.818922, 0.187953,
		0.836584, -0.505459, -0.211279,
		30.119377, 41.869122, 21.392916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878618, 42.631992, 20.995487>,  <29.533770, 42.222942, 21.540810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878618, 42.631992, 20.995487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996714, 42.249825, 20.995777>,  <30.067570, 42.020523, 20.995951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996714, 42.249825, 20.995777>,  <29.878618, 42.631992, 20.995487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996714, 42.249825, 20.995777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222603, 0.068050, -0.972531,
		0.929130, 0.287289, 0.232771,
		0.295238, -0.955424, 0.000723,
		30.085285, 41.963196, 20.995995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447395, 42.663746, 20.583851>,  <29.878618, 42.631992, 20.995487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447395, 42.663746, 20.583851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313534, 42.286835, 20.588116>,  <30.233217, 42.060688, 20.590675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313534, 42.286835, 20.588116>,  <30.447395, 42.663746, 20.583851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313534, 42.286835, 20.588116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102563, -0.047669, -0.993584,
		0.936742, -0.331415, 0.112595,
		-0.334655, -0.942280, 0.010663,
		30.213137, 42.004150, 20.591314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929098, 42.174614, 20.390251>,  <30.447395, 42.663746, 20.583851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929098, 42.174614, 20.390251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562035, 42.051430, 20.289804>,  <30.341797, 41.977520, 20.229536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562035, 42.051430, 20.289804>,  <30.929098, 42.174614, 20.390251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562035, 42.051430, 20.289804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266165, -0.007132, -0.963901,
		0.295054, -0.951372, 0.088513,
		-0.917660, -0.307962, -0.251118,
		30.286737, 41.959042, 20.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917706, 41.552303, 20.008120>,  <30.929098, 42.174614, 20.390251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917706, 41.552303, 20.008120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655754, 41.834770, 19.900448>,  <30.498583, 42.004250, 19.835844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655754, 41.834770, 19.900448>,  <30.917706, 41.552303, 20.008120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655754, 41.834770, 19.900448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494796, 0.131414, -0.859015,
		-0.571238, -0.695739, -0.435471,
		-0.654877, 0.706171, -0.269180,
		30.459291, 42.046623, 19.819695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649717, 41.027729, 20.620184>,  <30.917706, 41.552303, 20.008120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649717, 41.027729, 20.620184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541651, 41.396492, 20.731247>,  <30.476810, 41.617752, 20.797886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541651, 41.396492, 20.731247>,  <30.649717, 41.027729, 20.620184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541651, 41.396492, 20.731247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066317, -0.305516, 0.949875,
		0.960527, 0.238209, 0.143678,
		-0.270165, 0.921909, 0.277659,
		30.460602, 41.673065, 20.814545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269598, 41.355885, 21.012344>,  <30.649717, 41.027729, 20.620184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269598, 41.355885, 21.012344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919586, 41.511482, 21.127590>,  <30.709579, 41.604839, 21.196737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919586, 41.511482, 21.127590>,  <31.269598, 41.355885, 21.012344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919586, 41.511482, 21.127590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243461, -0.160780, 0.956492,
		0.418392, 0.907102, 0.045982,
		-0.875028, 0.388994, 0.288113,
		30.657078, 41.628181, 21.214024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415144, 41.790680, 21.547829>,  <31.269598, 41.355885, 21.012344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415144, 41.790680, 21.547829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024183, 41.754658, 21.624331>,  <30.789608, 41.733044, 21.670231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024183, 41.754658, 21.624331>,  <31.415144, 41.790680, 21.547829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024183, 41.754658, 21.624331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197078, -0.060875, 0.978496,
		-0.076477, 0.994075, 0.077247,
		-0.977400, -0.090056, 0.191255,
		30.730963, 41.727642, 21.681707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317604, 42.214153, 22.147537>,  <31.415144, 41.790680, 21.547829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317604, 42.214153, 22.147537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022541, 41.944386, 22.134739>,  <30.845503, 41.782524, 22.127060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022541, 41.944386, 22.134739>,  <31.317604, 42.214153, 22.147537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022541, 41.944386, 22.134739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278700, -0.347308, 0.895379,
		-0.614972, 0.651565, 0.444154,
		-0.737656, -0.674419, -0.031994,
		30.801245, 41.742062, 22.125141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010900, 42.182762, 22.738890>,  <31.317604, 42.214153, 22.147537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010900, 42.182762, 22.738890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864546, 41.824440, 22.637970>,  <30.776733, 41.609447, 22.577417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864546, 41.824440, 22.637970>,  <31.010900, 42.182762, 22.738890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864546, 41.824440, 22.637970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056861, -0.292108, 0.954693,
		-0.928921, 0.334962, 0.157815,
		-0.365885, -0.895809, -0.252299,
		30.754780, 41.555698, 22.562281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474789, 41.940212, 23.263556>,  <31.010900, 42.182762, 22.738890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474789, 41.940212, 23.263556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645170, 41.631779, 23.074242>,  <30.747398, 41.446720, 22.960653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645170, 41.631779, 23.074242>,  <30.474789, 41.940212, 23.263556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645170, 41.631779, 23.074242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125991, -0.467463, 0.874988,
		-0.895930, -0.432334, -0.101968,
		0.425953, -0.771081, -0.473284,
		30.772957, 41.400455, 22.932257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144144, 41.353291, 23.552700>,  <30.474789, 41.940212, 23.263556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144144, 41.353291, 23.552700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480795, 41.223183, 23.380251>,  <30.682785, 41.145119, 23.276781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480795, 41.223183, 23.380251>,  <30.144144, 41.353291, 23.552700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480795, 41.223183, 23.380251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231693, -0.503632, 0.832270,
		-0.487830, -0.800351, -0.348512,
		0.841629, -0.325258, -0.431123,
		30.733282, 41.125603, 23.250914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134098, 40.551601, 23.609030>,  <30.144144, 41.353291, 23.552700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134098, 40.551601, 23.609030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505291, 40.694530, 23.566761>,  <30.728006, 40.780289, 23.541401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505291, 40.694530, 23.566761>,  <30.134098, 40.551601, 23.609030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505291, 40.694530, 23.566761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311093, -0.586854, 0.747545,
		0.205102, -0.726583, -0.655751,
		0.927984, 0.357322, -0.105670,
		30.783686, 40.801727, 23.535059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505161, 39.948654, 23.744488>,  <30.134098, 40.551601, 23.609030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505161, 39.948654, 23.744488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780231, 40.238842, 23.755770>,  <30.945274, 40.412956, 23.762539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780231, 40.238842, 23.755770>,  <30.505161, 39.948654, 23.744488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780231, 40.238842, 23.755770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522483, -0.521490, 0.674582,
		0.504098, -0.449156, -0.737661,
		0.687675, 0.725471, 0.028206,
		30.986534, 40.456482, 23.764231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149708, 39.659279, 23.523888>,  <30.505161, 39.948654, 23.744488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149708, 39.659279, 23.523888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204140, 39.987648, 23.745724>,  <31.236797, 40.184669, 23.878824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204140, 39.987648, 23.745724>,  <31.149708, 39.659279, 23.523888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204140, 39.987648, 23.745724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565820, -0.523912, 0.636682,
		0.813223, 0.227159, -0.535787,
		0.136077, 0.820923, 0.554588,
		31.244963, 40.233925, 23.912100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859896, 39.481606, 23.705721>,  <31.149708, 39.659279, 23.523888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859896, 39.481606, 23.705721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670156, 39.747341, 23.936771>,  <31.556313, 39.906780, 24.075401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670156, 39.747341, 23.936771>,  <31.859896, 39.481606, 23.705721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670156, 39.747341, 23.936771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318968, -0.481860, 0.816132,
		0.820521, 0.571373, 0.016666,
		-0.474346, 0.664337, 0.577626,
		31.527853, 39.946644, 24.110060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265766, 39.648479, 24.160540>,  <31.859896, 39.481606, 23.705721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265766, 39.648479, 24.160540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933426, 39.766808, 24.349083>,  <31.734022, 39.837803, 24.462210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933426, 39.766808, 24.349083>,  <32.265766, 39.648479, 24.160540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933426, 39.766808, 24.349083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344796, -0.391202, 0.853274,
		0.436814, 0.871465, 0.223032,
		-0.830849, 0.295821, 0.471360,
		31.684172, 39.855553, 24.490490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502972, 39.820175, 24.914377>,  <32.265766, 39.648479, 24.160540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502972, 39.820175, 24.914377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107773, 39.758804, 24.921541>,  <31.870653, 39.721981, 24.925838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107773, 39.758804, 24.921541>,  <32.502972, 39.820175, 24.914377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107773, 39.758804, 24.921541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081695, -0.420607, 0.903557,
		-0.131099, 0.894176, 0.428093,
		-0.987998, -0.153428, 0.017909,
		31.811373, 39.712776, 24.926914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223953, 40.134354, 25.497051>,  <32.502972, 39.820175, 24.914377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223953, 40.134354, 25.497051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974800, 39.827782, 25.434305>,  <31.825310, 39.643837, 25.396658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974800, 39.827782, 25.434305>,  <32.223953, 40.134354, 25.497051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974800, 39.827782, 25.434305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087072, -0.267186, 0.959703,
		-0.777458, 0.584120, 0.233159,
		-0.622879, -0.766430, -0.156866,
		31.787937, 39.597851, 25.387245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876381, 40.009678, 26.077303>,  <32.223953, 40.134354, 25.497051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876381, 40.009678, 26.077303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830713, 39.667351, 25.875492>,  <31.803312, 39.461956, 25.754406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830713, 39.667351, 25.875492>,  <31.876381, 40.009678, 26.077303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830713, 39.667351, 25.875492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000006, -0.507848, 0.861447,
		-0.993461, 0.098349, 0.057986,
		-0.114171, -0.855815, -0.504526,
		31.796463, 39.410606, 25.724134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370319, 39.676903, 26.446184>,  <31.876381, 40.009678, 26.077303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370319, 39.676903, 26.446184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560486, 39.400421, 26.228481>,  <31.674585, 39.234531, 26.097860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560486, 39.400421, 26.228481>,  <31.370319, 39.676903, 26.446184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560486, 39.400421, 26.228481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058109, -0.641961, 0.764532,
		-0.877839, -0.331846, -0.345364,
		0.475417, -0.691205, -0.544256,
		31.703112, 39.193058, 26.065205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000118, 39.017746, 26.491755>,  <31.370319, 39.676903, 26.446184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000118, 39.017746, 26.491755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367250, 38.902718, 26.382286>,  <31.587530, 38.833702, 26.316605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367250, 38.902718, 26.382286>,  <31.000118, 39.017746, 26.491755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367250, 38.902718, 26.382286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001387, -0.691711, 0.722173,
		-0.396975, -0.662451, -0.635271,
		0.917828, -0.287566, -0.273673,
		31.642599, 38.816448, 26.300184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030746, 38.269325, 26.663370>,  <31.000118, 39.017746, 26.491755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030746, 38.269325, 26.663370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406879, 38.405262, 26.656658>,  <31.632559, 38.486824, 26.652630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406879, 38.405262, 26.656658>,  <31.030746, 38.269325, 26.663370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406879, 38.405262, 26.656658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192209, -0.489854, 0.850352,
		0.280761, -0.802841, -0.525947,
		0.940334, 0.339837, -0.016781,
		31.688980, 38.507214, 26.651625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474257, 37.675175, 26.844614>,  <31.030746, 38.269325, 26.663370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474257, 37.675175, 26.844614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728098, 37.974293, 26.922667>,  <31.880404, 38.153763, 26.969498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728098, 37.974293, 26.922667>,  <31.474257, 37.675175, 26.844614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728098, 37.974293, 26.922667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088521, -0.321158, 0.942879,
		0.767750, -0.581083, -0.270004,
		0.634605, 0.747797, 0.195131,
		31.918480, 38.198631, 26.981205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209236, 37.373260, 27.021996>,  <31.474257, 37.675175, 26.844614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209236, 37.373260, 27.021996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155914, 37.735043, 27.184078>,  <32.123920, 37.952110, 27.281328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155914, 37.735043, 27.184078>,  <32.209236, 37.373260, 27.021996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155914, 37.735043, 27.184078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201722, -0.375536, 0.904589,
		0.970329, 0.202326, -0.132387,
		-0.133306, 0.904454, 0.405207,
		32.115921, 38.006378, 27.305639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592384, 37.341049, 27.582565>,  <32.209236, 37.373260, 27.021996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592384, 37.341049, 27.582565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410454, 37.688694, 27.660305>,  <32.301296, 37.897282, 27.706949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410454, 37.688694, 27.660305>,  <32.592384, 37.341049, 27.582565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410454, 37.688694, 27.660305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120303, -0.156267, 0.980361,
		0.882417, 0.469275, -0.033483,
		-0.454827, 0.869115, 0.194348,
		32.274006, 37.949429, 27.718609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986172, 37.692520, 28.138319>,  <32.592384, 37.341049, 27.582565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986172, 37.692520, 28.138319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620777, 37.855251, 28.135853>,  <32.401543, 37.952888, 28.134373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620777, 37.855251, 28.135853>,  <32.986172, 37.692520, 28.138319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620777, 37.855251, 28.135853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044642, -0.085159, 0.995367,
		0.404419, 0.909526, 0.095953,
		-0.913484, 0.406829, -0.006163,
		32.346733, 37.977299, 28.134005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023914, 38.302952, 28.466322>,  <32.986172, 37.692520, 28.138319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023914, 38.302952, 28.466322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633190, 38.221588, 28.493038>,  <32.398754, 38.172768, 28.509068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633190, 38.221588, 28.493038>,  <33.023914, 38.302952, 28.466322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633190, 38.221588, 28.493038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080277, -0.058783, 0.995038,
		-0.198475, 0.977327, 0.073749,
		-0.976813, -0.203411, 0.066790,
		32.340145, 38.160564, 28.513075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809864, 38.743969, 28.893864>,  <33.023914, 38.302952, 28.466322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809864, 38.743969, 28.893864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578667, 38.417587, 28.898748>,  <32.439949, 38.221760, 28.901678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578667, 38.417587, 28.898748>,  <32.809864, 38.743969, 28.893864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578667, 38.417587, 28.898748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222735, -0.143349, 0.964282,
		-0.785056, 0.560069, 0.264596,
		-0.577994, -0.815950, 0.012210,
		32.405270, 38.172802, 28.902411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657616, 38.710835, 29.649776>,  <32.809864, 38.743969, 28.893864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657616, 38.710835, 29.649776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527161, 38.355881, 29.519440>,  <32.448887, 38.142906, 29.441236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527161, 38.355881, 29.519440>,  <32.657616, 38.710835, 29.649776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527161, 38.355881, 29.519440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041025, -0.331080, 0.942711,
		-0.944431, 0.320823, 0.071573,
		-0.326140, -0.887389, -0.325844,
		32.429317, 38.089664, 29.421686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327564, 38.451069, 30.197786>,  <32.657616, 38.710835, 29.649776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327564, 38.451069, 30.197786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357323, 38.126812, 29.965467>,  <32.375175, 37.932259, 29.826077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357323, 38.126812, 29.965467>,  <32.327564, 38.451069, 30.197786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357323, 38.126812, 29.965467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076208, -0.585329, 0.807207,
		-0.994313, -0.015789, -0.105321,
		0.074392, -0.810642, -0.580797,
		32.379639, 37.883617, 29.791229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805147, 38.073780, 30.381153>,  <32.327564, 38.451069, 30.197786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805147, 38.073780, 30.381153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102104, 37.847641, 30.237352>,  <32.280277, 37.711960, 30.151072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102104, 37.847641, 30.237352>,  <31.805147, 38.073780, 30.381153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102104, 37.847641, 30.237352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014709, -0.550222, 0.834889,
		-0.669805, -0.614526, -0.416795,
		0.742391, -0.565344, -0.359503,
		32.324821, 37.678040, 30.129501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551186, 37.442322, 30.537502>,  <31.805147, 38.073780, 30.381153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551186, 37.442322, 30.537502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948534, 37.422272, 30.496117>,  <32.186943, 37.410240, 30.471285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948534, 37.422272, 30.496117>,  <31.551186, 37.442322, 30.537502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948534, 37.422272, 30.496117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070365, -0.446631, 0.891947,
		-0.090921, -0.893313, -0.440142,
		0.993369, -0.050126, -0.103466,
		32.246544, 37.407234, 30.465076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654692, 36.754189, 30.452896>,  <31.551186, 37.442322, 30.537502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654692, 36.754189, 30.452896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976952, 36.918480, 30.623650>,  <32.170307, 37.017056, 30.726101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976952, 36.918480, 30.623650>,  <31.654692, 36.754189, 30.452896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976952, 36.918480, 30.623650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031152, -0.690238, 0.722911,
		0.591570, -0.595712, -0.543297,
		0.805651, 0.410728, 0.426882,
		32.218647, 37.041698, 30.751715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970461, 36.290741, 30.746576>,  <31.654692, 36.754189, 30.452896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970461, 36.290741, 30.746576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121986, 36.582367, 30.974598>,  <32.212902, 36.757343, 31.111410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121986, 36.582367, 30.974598>,  <31.970461, 36.290741, 30.746576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121986, 36.582367, 30.974598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102429, -0.579146, 0.808764,
		0.919788, -0.364760, -0.144710,
		0.378812, 0.729068, 0.570053,
		32.235630, 36.801086, 31.145615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147831, 35.885761, 31.265654>,  <31.970461, 36.290741, 30.746576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147831, 35.885761, 31.265654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207344, 36.255119, 31.407194>,  <32.243053, 36.476734, 31.492119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207344, 36.255119, 31.407194>,  <32.147831, 35.885761, 31.265654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207344, 36.255119, 31.407194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001082, -0.357987, 0.933726,
		0.988869, -0.138543, -0.054262,
		0.148786, 0.923391, 0.353852,
		32.251980, 36.532135, 31.513350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732014, 35.844379, 31.671795>,  <32.147831, 35.885761, 31.265654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732014, 35.844379, 31.671795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513832, 36.159489, 31.786266>,  <32.382923, 36.348553, 31.854948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513832, 36.159489, 31.786266>,  <32.732014, 35.844379, 31.671795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513832, 36.159489, 31.786266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042513, -0.314998, 0.948139,
		0.837061, 0.529333, 0.138327,
		-0.545455, 0.787770, 0.286176,
		32.350197, 36.395821, 31.872120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012669, 35.868946, 32.261406>,  <32.732014, 35.844379, 31.671795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012669, 35.868946, 32.261406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688725, 36.101841, 32.290051>,  <32.494358, 36.241577, 32.307236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688725, 36.101841, 32.290051>,  <33.012669, 35.868946, 32.261406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688725, 36.101841, 32.290051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072987, -0.221125, 0.972510,
		0.582069, 0.782368, 0.221576,
		-0.809857, 0.582240, 0.071607,
		32.445766, 36.276512, 32.311531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238815, 36.301849, 32.787464>,  <33.012669, 35.868946, 32.261406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238815, 36.301849, 32.787464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839569, 36.294640, 32.763981>,  <32.600021, 36.290314, 32.749889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839569, 36.294640, 32.763981>,  <33.238815, 36.301849, 32.787464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839569, 36.294640, 32.763981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047803, -0.372089, 0.926965,
		-0.038558, 0.928022, 0.370524,
		-0.998112, -0.018029, -0.058709,
		32.540134, 36.289230, 32.746368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105442, 36.554138, 33.412792>,  <33.238815, 36.301849, 32.787464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105442, 36.554138, 33.412792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756809, 36.399883, 33.291710>,  <32.547630, 36.307331, 33.219059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756809, 36.399883, 33.291710>,  <33.105442, 36.554138, 33.412792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756809, 36.399883, 33.291710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125613, -0.421174, 0.898239,
		-0.473884, 0.820913, 0.318647,
		-0.871582, -0.385635, -0.302705,
		32.495335, 36.284191, 33.200897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759823, 36.680298, 33.994976>,  <33.105442, 36.554138, 33.412792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759823, 36.680298, 33.994976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558037, 36.390110, 33.807697>,  <32.436966, 36.215996, 33.695332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558037, 36.390110, 33.807697>,  <32.759823, 36.680298, 33.994976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558037, 36.390110, 33.807697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220963, -0.415724, 0.882241,
		-0.834679, 0.548515, 0.049417,
		-0.504466, -0.725469, -0.468197,
		32.406696, 36.172470, 33.667236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084824, 36.574432, 34.354004>,  <32.759823, 36.680298, 33.994976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084824, 36.574432, 34.354004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141430, 36.238609, 34.144196>,  <32.175392, 36.037117, 34.018311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141430, 36.238609, 34.144196>,  <32.084824, 36.574432, 34.354004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141430, 36.238609, 34.144196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190143, -0.543042, 0.817895,
		-0.971504, -0.016008, -0.236482,
		0.141512, -0.839553, -0.524523,
		32.183884, 35.986744, 33.986839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546591, 36.131718, 34.625256>,  <32.084824, 36.574432, 34.354004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546591, 36.131718, 34.625256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816570, 35.892189, 34.452808>,  <31.978558, 35.748474, 34.349339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816570, 35.892189, 34.452808>,  <31.546591, 36.131718, 34.625256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816570, 35.892189, 34.452808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019076, -0.569923, 0.821477,
		-0.737620, -0.562677, -0.373244,
		0.674946, -0.598818, -0.431120,
		32.019054, 35.712543, 34.323471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153606, 35.590298, 34.344227>,  <31.546591, 36.131718, 34.625256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153606, 35.590298, 34.344227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520947, 35.436310, 34.380951>,  <31.741350, 35.343918, 34.402985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520947, 35.436310, 34.380951>,  <31.153606, 35.590298, 34.344227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520947, 35.436310, 34.380951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333587, -0.628121, 0.702982,
		-0.212962, -0.676210, -0.705257,
		0.918350, -0.384972, 0.091809,
		31.796452, 35.320816, 34.408493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027687, 34.944351, 34.578690>,  <31.153606, 35.590298, 34.344227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027687, 34.944351, 34.578690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424282, 34.958576, 34.628784>,  <31.662239, 34.967110, 34.658840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424282, 34.958576, 34.628784>,  <31.027687, 34.944351, 34.578690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424282, 34.958576, 34.628784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083810, -0.561779, 0.823031,
		0.099621, -0.826523, -0.554018,
		0.991490, 0.035559, 0.125236,
		31.721729, 34.969242, 34.666355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277971, 34.284664, 34.709118>,  <31.027687, 34.944351, 34.578690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277971, 34.284664, 34.709118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534054, 34.550701, 34.862888>,  <31.687704, 34.710323, 34.955151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534054, 34.550701, 34.862888>,  <31.277971, 34.284664, 34.709118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534054, 34.550701, 34.862888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085308, -0.435774, 0.896004,
		0.763451, -0.606423, -0.222247,
		0.640207, 0.665096, 0.384424,
		31.726116, 34.750229, 34.978214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849131, 33.959988, 34.205318>,  <31.277971, 34.284664, 34.709118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849131, 33.959988, 34.205318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641729, 33.623528, 34.266785>,  <31.517288, 33.421650, 34.303665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641729, 33.623528, 34.266785>,  <31.849131, 33.959988, 34.205318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641729, 33.623528, 34.266785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779558, 0.538857, 0.319252,
		-0.351344, 0.045743, -0.935128,
		-0.518504, -0.841154, 0.153665,
		31.486177, 33.371181, 34.312885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936365, 34.008904, 33.461571>,  <31.849131, 33.959988, 34.205318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936365, 34.008904, 33.461571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139587, 33.664413, 33.466862>,  <32.261520, 33.457722, 33.470036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139587, 33.664413, 33.466862>,  <31.936365, 34.008904, 33.461571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139587, 33.664413, 33.466862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654678, 0.376138, -0.655680,
		0.559711, 0.341782, 0.754923,
		0.508054, -0.861223, 0.013229,
		32.292004, 33.406048, 33.470829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580044, 34.115215, 33.637440>,  <31.936365, 34.008904, 33.461571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580044, 34.115215, 33.637440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602997, 33.778702, 33.422421>,  <32.616768, 33.576794, 33.293411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602997, 33.778702, 33.422421>,  <32.580044, 34.115215, 33.637440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602997, 33.778702, 33.422421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650845, 0.439809, -0.618844,
		0.757039, -0.314350, 0.572779,
		0.057380, -0.841280, -0.537546,
		32.620213, 33.526318, 33.261158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283569, 34.165970, 33.392227>,  <32.580044, 34.115215, 33.637440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283569, 34.165970, 33.392227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111633, 33.875607, 33.177452>,  <33.008472, 33.701389, 33.048588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111633, 33.875607, 33.177452>,  <33.283569, 34.165970, 33.392227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111633, 33.875607, 33.177452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504549, 0.300057, -0.809565,
		0.748779, -0.618892, 0.237279,
		-0.429836, -0.725905, -0.536938,
		32.982681, 33.657837, 33.016369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809200, 33.854805, 33.026974>,  <33.283569, 34.165970, 33.392227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809200, 33.854805, 33.026974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475418, 33.747322, 32.834526>,  <33.275150, 33.682831, 32.719055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475418, 33.747322, 32.834526>,  <33.809200, 33.854805, 33.026974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475418, 33.747322, 32.834526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333702, 0.448395, -0.829207,
		0.438540, -0.852491, -0.284502,
		-0.834461, -0.268701, -0.481117,
		33.225082, 33.666710, 32.690189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079891, 33.548988, 32.521339>,  <33.809200, 33.854805, 33.026974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079891, 33.548988, 32.521339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712505, 33.630135, 32.385536>,  <33.492073, 33.678822, 32.304054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712505, 33.630135, 32.385536>,  <34.079891, 33.548988, 32.521339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712505, 33.630135, 32.385536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378171, 0.199155, -0.904060,
		-0.115790, -0.958740, -0.259635,
		-0.918466, 0.202868, -0.339507,
		33.436966, 33.690994, 32.283684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039448, 33.276779, 31.841518>,  <34.079891, 33.548988, 32.521339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039448, 33.276779, 31.841518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735607, 33.535706, 31.866755>,  <33.553303, 33.691063, 31.881897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735607, 33.535706, 31.866755>,  <34.039448, 33.276779, 31.841518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735607, 33.535706, 31.866755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280512, 0.413593, -0.866172,
		-0.586784, -0.640250, -0.495747,
		-0.759604, 0.647319, 0.063092,
		33.507725, 33.729900, 31.885683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655567, 33.287605, 31.203482>,  <34.039448, 33.276779, 31.841518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655567, 33.287605, 31.203482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569008, 33.636833, 31.378262>,  <33.517075, 33.846371, 31.483130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569008, 33.636833, 31.378262>,  <33.655567, 33.287605, 31.203482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569008, 33.636833, 31.378262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245554, 0.481838, -0.841151,
		-0.944921, -0.074726, -0.318653,
		-0.216395, 0.873068, 0.436950,
		33.504089, 33.898754, 31.509346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277485, 33.664604, 30.685461>,  <33.655567, 33.287605, 31.203482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277485, 33.664604, 30.685461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418499, 33.943157, 30.935509>,  <33.503109, 34.110287, 31.085537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418499, 33.943157, 30.935509>,  <33.277485, 33.664604, 30.685461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418499, 33.943157, 30.935509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344723, 0.524393, -0.778574,
		-0.869991, 0.489969, -0.055190,
		0.352536, 0.696378, 0.625121,
		33.524261, 34.152069, 31.123045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081398, 34.335392, 30.364441>,  <33.277485, 33.664604, 30.685461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081398, 34.335392, 30.364441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391338, 34.430309, 30.598804>,  <33.577305, 34.487259, 30.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391338, 34.430309, 30.598804>,  <33.081398, 34.335392, 30.364441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391338, 34.430309, 30.598804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457152, 0.429795, -0.778645,
		-0.436590, 0.871187, 0.224549,
		0.774856, 0.237295, 0.585909,
		33.623795, 34.501499, 30.774578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264523, 35.060074, 30.125731>,  <33.081398, 34.335392, 30.364441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264523, 35.060074, 30.125731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577274, 34.965549, 30.356491>,  <33.764927, 34.908833, 30.494947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577274, 34.965549, 30.356491>,  <33.264523, 35.060074, 30.125731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577274, 34.965549, 30.356491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602699, 0.523149, -0.602552,
		-0.159414, 0.818823, 0.551467,
		0.781883, -0.236313, 0.576902,
		33.811840, 34.894657, 30.529562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611446, 35.650658, 30.508221>,  <33.264523, 35.060074, 30.125731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611446, 35.650658, 30.508221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877731, 35.357803, 30.450523>,  <34.037502, 35.182091, 30.415905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877731, 35.357803, 30.450523>,  <33.611446, 35.650658, 30.508221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877731, 35.357803, 30.450523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494143, 0.577371, -0.649974,
		0.559148, 0.361421, 0.746142,
		0.665715, -0.732133, -0.144243,
		34.077446, 35.138165, 30.407251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090954, 36.042732, 30.248623>,  <33.611446, 35.650658, 30.508221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090954, 36.042732, 30.248623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225128, 35.672771, 30.177013>,  <34.305634, 35.450794, 30.134048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225128, 35.672771, 30.177013>,  <34.090954, 36.042732, 30.248623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225128, 35.672771, 30.177013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579014, 0.352310, -0.735269,
		0.743119, 0.142978, 0.653705,
		0.335434, -0.924897, -0.179023,
		34.325760, 35.395302, 30.123306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816322, 36.016087, 30.320921>,  <34.090954, 36.042732, 30.248623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816322, 36.016087, 30.320921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740093, 35.696278, 30.093082>,  <34.694355, 35.504391, 29.956379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740093, 35.696278, 30.093082>,  <34.816322, 36.016087, 30.320921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740093, 35.696278, 30.093082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435007, 0.451374, -0.779122,
		0.880029, -0.396255, 0.261781,
		-0.190570, -0.799527, -0.569596,
		34.682922, 35.456421, 29.922203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326698, 36.125908, 29.980728>,  <34.816322, 36.016087, 30.320921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326698, 36.125908, 29.980728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057541, 35.914486, 29.773716>,  <34.896046, 35.787632, 29.649508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057541, 35.914486, 29.773716>,  <35.326698, 36.125908, 29.980728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057541, 35.914486, 29.773716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274998, 0.470741, -0.838319,
		0.686723, -0.706421, -0.171407,
		-0.672895, -0.528557, -0.517533,
		34.855671, 35.755920, 29.618456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530357, 35.922123, 29.266939>,  <35.326698, 36.125908, 29.980728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530357, 35.922123, 29.266939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135384, 35.878853, 29.220861>,  <34.898399, 35.852890, 29.193214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135384, 35.878853, 29.220861>,  <35.530357, 35.922123, 29.266939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135384, 35.878853, 29.220861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052382, 0.463680, -0.884453,
		0.149090, -0.879374, -0.452188,
		-0.987435, -0.108176, -0.115194,
		34.839153, 35.846401, 29.186304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336216, 35.874462, 28.550766>,  <35.530357, 35.922123, 29.266939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336216, 35.874462, 28.550766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967674, 35.945702, 28.688980>,  <34.746552, 35.988445, 28.771908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967674, 35.945702, 28.688980>,  <35.336216, 35.874462, 28.550766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967674, 35.945702, 28.688980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260790, 0.375982, -0.889172,
		-0.288275, -0.909351, -0.299965,
		-0.921350, 0.178098, 0.345536,
		34.691269, 35.999130, 28.792641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864033, 35.560879, 28.112188>,  <35.336216, 35.874462, 28.550766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864033, 35.560879, 28.112188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628300, 35.827885, 28.294228>,  <34.486862, 35.988091, 28.403450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628300, 35.827885, 28.294228>,  <34.864033, 35.560879, 28.112188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628300, 35.827885, 28.294228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360313, 0.287019, -0.887578,
		-0.723095, -0.687052, 0.071366,
		-0.589329, 0.667517, 0.455096,
		34.451500, 36.028141, 28.430756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323322, 35.448895, 27.671486>,  <34.864033, 35.560879, 28.112188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323322, 35.448895, 27.671486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330158, 35.801804, 27.859653>,  <34.334259, 36.013550, 27.972555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330158, 35.801804, 27.859653>,  <34.323322, 35.448895, 27.671486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330158, 35.801804, 27.859653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350115, 0.445982, -0.823723,
		-0.936551, -0.150625, 0.316520,
		0.017089, 0.882277, 0.470420,
		34.335285, 36.066486, 28.000780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582191, 35.774605, 27.532585>,  <34.323322, 35.448895, 27.671486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582191, 35.774605, 27.532585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850395, 36.060364, 27.612627>,  <34.011318, 36.231819, 27.660652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850395, 36.060364, 27.612627>,  <33.582191, 35.774605, 27.532585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850395, 36.060364, 27.612627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272006, 0.487662, -0.829578,
		-0.690235, 0.501813, 0.521305,
		0.670514, 0.714402, 0.200105,
		34.051548, 36.274685, 27.672659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203186, 36.317955, 27.392441>,  <33.582191, 35.774605, 27.532585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203186, 36.317955, 27.392441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579433, 36.451984, 27.370665>,  <33.805180, 36.532402, 27.357599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579433, 36.451984, 27.370665>,  <33.203186, 36.317955, 27.392441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579433, 36.451984, 27.370665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233991, 0.523772, -0.819092,
		-0.245945, 0.783190, 0.571073,
		0.940616, 0.335077, -0.054440,
		33.861618, 36.552509, 27.354332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161198, 37.053432, 27.226507>,  <33.203186, 36.317955, 27.392441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161198, 37.053432, 27.226507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509895, 36.878490, 27.138168>,  <33.719116, 36.773525, 27.085165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509895, 36.878490, 27.138168>,  <33.161198, 37.053432, 27.226507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509895, 36.878490, 27.138168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029078, 0.403775, -0.914396,
		0.489091, 0.803544, 0.339273,
		0.871748, -0.437358, -0.220848,
		33.771420, 36.747284, 27.071915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488594, 37.678387, 26.993284>,  <33.161198, 37.053432, 27.226507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488594, 37.678387, 26.993284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740570, 37.402546, 26.850389>,  <33.891758, 37.237041, 26.764652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740570, 37.402546, 26.850389>,  <33.488594, 37.678387, 26.993284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740570, 37.402546, 26.850389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087858, 0.393750, -0.915009,
		0.771655, 0.607790, 0.187454,
		0.629944, -0.689602, -0.357239,
		33.929554, 37.195663, 26.743217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992630, 38.007965, 26.708941>,  <33.488594, 37.678387, 26.993284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992630, 38.007965, 26.708941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009487, 37.660328, 26.511799>,  <34.019600, 37.451744, 26.393515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009487, 37.660328, 26.511799>,  <33.992630, 38.007965, 26.708941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009487, 37.660328, 26.511799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058599, 0.494591, -0.867148,
		0.997392, 0.007662, 0.071770,
		0.042141, -0.869092, -0.492852,
		34.022129, 37.399601, 26.363943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467426, 38.115334, 26.096815>,  <33.992630, 38.007965, 26.708941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467426, 38.115334, 26.096815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286945, 37.771240, 26.001812>,  <34.178658, 37.564785, 25.944811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286945, 37.771240, 26.001812>,  <34.467426, 38.115334, 26.096815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286945, 37.771240, 26.001812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073673, 0.229324, -0.970558,
		0.889374, -0.455419, -0.040096,
		-0.451205, -0.860235, -0.237507,
		34.151585, 37.513168, 25.930559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912422, 37.769024, 25.553389>,  <34.467426, 38.115334, 26.096815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912422, 37.769024, 25.553389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534592, 37.640026, 25.528830>,  <34.307892, 37.562626, 25.514093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534592, 37.640026, 25.528830>,  <34.912422, 37.769024, 25.553389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534592, 37.640026, 25.528830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041470, 0.068307, -0.996802,
		0.325662, -0.944102, -0.051147,
		-0.944577, -0.322499, -0.061397,
		34.251217, 37.543278, 25.510410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753208, 37.418251, 24.900307>,  <34.912422, 37.769024, 25.553389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753208, 37.418251, 24.900307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376568, 37.502262, 25.005589>,  <34.150585, 37.552670, 25.068758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376568, 37.502262, 25.005589>,  <34.753208, 37.418251, 24.900307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376568, 37.502262, 25.005589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263480, 0.027177, -0.964282,
		-0.209678, -0.977318, 0.029748,
		-0.941602, 0.210027, 0.263202,
		34.094086, 37.565269, 25.084549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330120, 36.902672, 24.608284>,  <34.753208, 37.418251, 24.900307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330120, 36.902672, 24.608284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086884, 37.214535, 24.668097>,  <33.940941, 37.401653, 24.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086884, 37.214535, 24.668097>,  <34.330120, 36.902672, 24.608284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086884, 37.214535, 24.668097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380143, -0.120615, -0.917030,
		-0.696933, -0.614481, 0.369727,
		-0.608092, 0.779657, 0.149530,
		33.904457, 37.448433, 24.712955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745239, 36.712330, 24.224356>,  <34.330120, 36.902672, 24.608284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745239, 36.712330, 24.224356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658127, 37.100040, 24.270102>,  <33.605858, 37.332664, 24.297548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658127, 37.100040, 24.270102>,  <33.745239, 36.712330, 24.224356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658127, 37.100040, 24.270102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442963, 0.006250, -0.896518,
		-0.869686, -0.245906, 0.427991,
		-0.217784, 0.969274, 0.114363,
		33.592793, 37.390823, 24.304411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085819, 36.842449, 24.014460>,  <33.745239, 36.712330, 24.224356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085819, 36.842449, 24.014460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271011, 37.194672, 23.973921>,  <33.382126, 37.406006, 23.949598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271011, 37.194672, 23.973921>,  <33.085819, 36.842449, 24.014460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271011, 37.194672, 23.973921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412856, 0.113054, -0.903752,
		-0.784348, 0.460259, 0.415885,
		0.462978, 0.880557, -0.101347,
		33.409904, 37.458839, 23.943518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548992, 37.214787, 23.860613>,  <33.085819, 36.842449, 24.014460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548992, 37.214787, 23.860613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870243, 37.413628, 23.729240>,  <33.062996, 37.532932, 23.650417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870243, 37.413628, 23.729240>,  <32.548992, 37.214787, 23.860613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870243, 37.413628, 23.729240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433680, 0.109766, -0.894356,
		-0.408539, 0.860719, 0.303742,
		0.803130, 0.497106, -0.328433,
		33.111183, 37.562759, 23.630711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221504, 37.650082, 23.478628>,  <32.548992, 37.214787, 23.860613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221504, 37.650082, 23.478628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595097, 37.696739, 23.343529>,  <32.819252, 37.724735, 23.262468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595097, 37.696739, 23.343529>,  <32.221504, 37.650082, 23.478628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595097, 37.696739, 23.343529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354613, 0.186330, -0.916259,
		-0.043944, 0.975538, 0.215392,
		0.933980, 0.116645, -0.337750,
		32.875290, 37.731731, 23.242203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334579, 38.313324, 23.294901>,  <32.221504, 37.650082, 23.478628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334579, 38.313324, 23.294901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602619, 38.100460, 23.087914>,  <32.763443, 37.972740, 22.963720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602619, 38.100460, 23.087914>,  <32.334579, 38.313324, 23.294901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602619, 38.100460, 23.087914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333217, 0.407282, -0.850346,
		0.663276, 0.742245, 0.095594,
		0.670098, -0.532160, -0.517469,
		32.803650, 37.940811, 22.932673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693577, 38.762829, 22.918921>,  <32.334579, 38.313324, 23.294901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693577, 38.762829, 22.918921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720459, 38.423206, 22.709318>,  <32.736588, 38.219433, 22.583557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720459, 38.423206, 22.709318>,  <32.693577, 38.762829, 22.918921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720459, 38.423206, 22.709318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206802, 0.501934, -0.839818,
		0.976072, 0.164806, -0.141855,
		0.067205, -0.849059, -0.524006,
		32.740620, 38.168488, 22.552116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896412, 38.962029, 22.253006>,  <32.693577, 38.762829, 22.918921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896412, 38.962029, 22.253006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773994, 38.585079, 22.198936>,  <32.700542, 38.358910, 22.166494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773994, 38.585079, 22.198936>,  <32.896412, 38.962029, 22.253006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773994, 38.585079, 22.198936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241628, 0.214225, -0.946427,
		0.920843, -0.256990, -0.293266,
		-0.306047, -0.942372, -0.135172,
		32.682178, 38.302368, 22.158384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098701, 38.781628, 21.605515>,  <32.896412, 38.962029, 22.253006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098701, 38.781628, 21.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833324, 38.492264, 21.681961>,  <32.674099, 38.318645, 21.727829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833324, 38.492264, 21.681961>,  <33.098701, 38.781628, 21.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833324, 38.492264, 21.681961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280293, 0.003460, -0.959908,
		0.693746, -0.690410, -0.205062,
		-0.663440, -0.723410, 0.191117,
		32.634293, 38.275242, 21.739296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102055, 38.391155, 20.993065>,  <33.098701, 38.781628, 21.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102055, 38.391155, 20.993065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768696, 38.298378, 21.193722>,  <32.568680, 38.242710, 21.314116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768696, 38.298378, 21.193722>,  <33.102055, 38.391155, 20.993065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768696, 38.298378, 21.193722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466645, -0.191012, -0.863572,
		0.296122, -0.953790, 0.050953,
		-0.833399, -0.231946, 0.501645,
		32.518677, 38.228794, 21.344215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837231, 37.877705, 20.625637>,  <33.102055, 38.391155, 20.993065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837231, 37.877705, 20.625637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519627, 37.992828, 20.839819>,  <32.329063, 38.061905, 20.968328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519627, 37.992828, 20.839819>,  <32.837231, 37.877705, 20.625637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519627, 37.992828, 20.839819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570696, -0.049475, -0.819670,
		-0.209419, -0.956408, 0.203537,
		-0.794009, 0.287812, 0.535457,
		32.281425, 38.079174, 21.000456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294910, 37.399330, 20.532646>,  <32.837231, 37.877705, 20.625637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294910, 37.399330, 20.532646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114895, 37.742462, 20.631912>,  <32.006886, 37.948341, 20.691473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114895, 37.742462, 20.631912>,  <32.294910, 37.399330, 20.532646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114895, 37.742462, 20.631912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688785, -0.156577, -0.707855,
		-0.568363, -0.489499, 0.661327,
		-0.450043, 0.857831, 0.248167,
		31.979881, 37.999813, 20.706362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822367, 36.976967, 20.170578>,  <32.294910, 37.399330, 20.532646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822367, 36.976967, 20.170578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897060, 36.658909, 19.939796>,  <31.941877, 36.468075, 19.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897060, 36.658909, 19.939796>,  <31.822367, 36.976967, 20.170578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897060, 36.658909, 19.939796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185187, -0.548265, 0.815543,
		-0.964798, -0.259135, 0.044869,
		0.186735, -0.795144, -0.576954,
		31.953081, 36.420364, 19.766710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466637, 36.394638, 20.352377>,  <31.822367, 36.976967, 20.170578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466637, 36.394638, 20.352377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790617, 36.257401, 20.162107>,  <31.985006, 36.175056, 20.047947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790617, 36.257401, 20.162107>,  <31.466637, 36.394638, 20.352377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790617, 36.257401, 20.162107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185957, -0.618963, 0.763088,
		-0.556232, -0.706521, -0.437531,
		0.809954, -0.343092, -0.475670,
		32.033604, 36.154472, 20.019405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407120, 35.721848, 20.508354>,  <31.466637, 36.394638, 20.352377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407120, 35.721848, 20.508354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784534, 35.805965, 20.405973>,  <32.010983, 35.856438, 20.344545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784534, 35.805965, 20.405973>,  <31.407120, 35.721848, 20.508354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784534, 35.805965, 20.405973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331260, -0.596415, 0.731133,
		0.001101, -0.774639, -0.632403,
		0.943539, 0.210295, -0.255950,
		32.067596, 35.869053, 20.329187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652920, 35.126575, 20.604216>,  <31.407120, 35.721848, 20.508354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652920, 35.126575, 20.604216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969963, 35.369839, 20.621737>,  <32.160191, 35.515797, 20.632250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969963, 35.369839, 20.621737>,  <31.652920, 35.126575, 20.604216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969963, 35.369839, 20.621737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327725, -0.485497, 0.810487,
		0.514169, -0.628043, -0.584117,
		0.792608, 0.608157, 0.043802,
		32.207745, 35.552284, 20.634876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163692, 34.664787, 20.599108>,  <31.652920, 35.126575, 20.604216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163692, 34.664787, 20.599108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327713, 35.001633, 20.739222>,  <32.426125, 35.203739, 20.823290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327713, 35.001633, 20.739222>,  <32.163692, 34.664787, 20.599108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327713, 35.001633, 20.739222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374252, -0.505588, 0.777378,
		0.831743, -0.187668, -0.522479,
		0.410048, 0.842118, 0.350284,
		32.450729, 35.254269, 20.844307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751194, 34.415825, 20.814322>,  <32.163692, 34.664787, 20.599108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751194, 34.415825, 20.814322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688187, 34.767063, 20.995047>,  <32.650383, 34.977806, 21.103481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688187, 34.767063, 20.995047>,  <32.751194, 34.415825, 20.814322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688187, 34.767063, 20.995047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360394, -0.374853, 0.854167,
		0.919405, 0.297376, -0.257416,
		-0.157516, 0.878096, 0.451814,
		32.640930, 35.030491, 21.130590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385735, 34.445358, 21.173651>,  <32.751194, 34.415825, 20.814322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385735, 34.445358, 21.173651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122128, 34.703358, 21.328402>,  <32.963963, 34.858158, 21.421251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122128, 34.703358, 21.328402>,  <33.385735, 34.445358, 21.173651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122128, 34.703358, 21.328402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254995, -0.292309, 0.921701,
		0.707580, 0.706072, 0.028167,
		-0.659021, 0.644994, 0.386877,
		32.924419, 34.896854, 21.444466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787960, 34.943516, 21.578968>,  <33.385735, 34.445358, 21.173651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787960, 34.943516, 21.578968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418800, 34.941669, 21.732971>,  <33.197304, 34.940563, 21.825373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418800, 34.941669, 21.732971>,  <33.787960, 34.943516, 21.578968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418800, 34.941669, 21.732971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382643, -0.122251, 0.915773,
		0.042841, 0.992489, 0.114592,
		-0.922903, -0.004615, 0.385006,
		33.141930, 34.940285, 21.848473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753643, 35.362686, 22.281729>,  <33.787960, 34.943516, 21.578968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753643, 35.362686, 22.281729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437469, 35.117813, 22.273272>,  <33.247765, 34.970890, 22.268196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437469, 35.117813, 22.273272>,  <33.753643, 35.362686, 22.281729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437469, 35.117813, 22.273272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252884, -0.357567, 0.898997,
		-0.557911, 0.705251, 0.437444,
		-0.790434, -0.612183, -0.021144,
		33.200340, 34.934158, 22.266928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616917, 35.376583, 22.971449>,  <33.753643, 35.362686, 22.281729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616917, 35.376583, 22.971449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420639, 35.053120, 22.841656>,  <33.302872, 34.859039, 22.763781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420639, 35.053120, 22.841656>,  <33.616917, 35.376583, 22.971449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420639, 35.053120, 22.841656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013718, -0.365182, 0.930835,
		-0.871224, 0.461205, 0.168099,
		-0.490693, -0.808660, -0.324482,
		33.273430, 34.810520, 22.744310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086277, 35.279179, 23.414116>,  <33.616917, 35.376583, 22.971449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086277, 35.279179, 23.414116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148449, 34.914448, 23.262110>,  <33.185753, 34.695610, 23.170906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148449, 34.914448, 23.262110>,  <33.086277, 35.279179, 23.414116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148449, 34.914448, 23.262110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110347, -0.366255, 0.923949,
		-0.981665, -0.185540, 0.043691,
		0.155427, -0.911829, -0.380014,
		33.195076, 34.640900, 23.148106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756489, 34.814472, 23.868013>,  <33.086277, 35.279179, 23.414116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756489, 34.814472, 23.868013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984783, 34.563442, 23.656200>,  <33.121761, 34.412823, 23.529114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984783, 34.563442, 23.656200>,  <32.756489, 34.814472, 23.868013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984783, 34.563442, 23.656200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242376, -0.487389, 0.838872,
		-0.784544, -0.607123, -0.126063,
		0.570740, -0.627577, -0.529530,
		33.156006, 34.375168, 23.497341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633415, 34.070961, 23.996872>,  <32.756489, 34.814472, 23.868013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633415, 34.070961, 23.996872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014263, 34.083904, 23.875265>,  <33.242771, 34.091671, 23.802301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014263, 34.083904, 23.875265>,  <32.633415, 34.070961, 23.996872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014263, 34.083904, 23.875265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293869, -0.371202, 0.880823,
		-0.084350, -0.927988, -0.362937,
		0.952117, 0.032358, -0.304018,
		33.299896, 34.093613, 23.784060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882816, 33.575333, 24.377323>,  <32.633415, 34.070961, 23.996872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882816, 33.575333, 24.377323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218998, 33.766140, 24.274490>,  <33.420708, 33.880627, 24.212791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218998, 33.766140, 24.274490>,  <32.882816, 33.575333, 24.377323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218998, 33.766140, 24.274490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431566, -0.302322, 0.849913,
		0.327706, -0.825259, -0.459953,
		0.840452, 0.477021, -0.257081,
		33.471134, 33.909245, 24.197367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467052, 33.143875, 24.491928>,  <32.882816, 33.575333, 24.377323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467052, 33.143875, 24.491928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612869, 33.516182, 24.503038>,  <33.700359, 33.739567, 24.509705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612869, 33.516182, 24.503038>,  <33.467052, 33.143875, 24.491928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612869, 33.516182, 24.503038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483863, -0.214825, 0.848367,
		0.795603, -0.295828, -0.528679,
		0.364544, 0.930772, 0.027775,
		33.722233, 33.795414, 24.511372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072647, 33.056545, 24.865799>,  <33.467052, 33.143875, 24.491928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072647, 33.056545, 24.865799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037292, 33.454819, 24.877188>,  <34.016079, 33.693783, 24.884022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037292, 33.454819, 24.877188>,  <34.072647, 33.056545, 24.865799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037292, 33.454819, 24.877188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431434, 0.012504, 0.902058,
		0.897804, 0.092013, -0.430675,
		-0.088386, 0.995679, 0.028472,
		34.010777, 33.753521, 24.885729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736057, 33.337116, 25.094837>,  <34.072647, 33.056545, 24.865799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736057, 33.337116, 25.094837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450573, 33.598881, 25.194719>,  <34.279282, 33.755939, 25.254650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450573, 33.598881, 25.194719>,  <34.736057, 33.337116, 25.094837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450573, 33.598881, 25.194719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310633, -0.023804, 0.950232,
		0.627791, 0.755760, -0.186294,
		-0.713713, 0.654416, 0.249708,
		34.236458, 33.795204, 25.269632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083088, 33.731533, 25.491432>,  <34.736057, 33.337116, 25.094837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083088, 33.731533, 25.491432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703884, 33.819710, 25.583242>,  <34.476360, 33.872616, 25.638329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703884, 33.819710, 25.583242>,  <35.083088, 33.731533, 25.491432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703884, 33.819710, 25.583242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272726, 0.191069, 0.942928,
		0.164002, 0.956504, -0.241255,
		-0.948010, 0.220438, 0.229528,
		34.419479, 33.885841, 25.652102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144115, 34.107452, 26.159342>,  <35.083088, 33.731533, 25.491432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144115, 34.107452, 26.159342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762871, 33.989616, 26.131639>,  <34.534122, 33.918915, 26.115017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762871, 33.989616, 26.131639>,  <35.144115, 34.107452, 26.159342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762871, 33.989616, 26.131639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023984, -0.301671, 0.953110,
		-0.301671, 0.906758, 0.294591,
		-0.953110, -0.294591, -0.069257,
		34.476936, 33.901237, 26.110863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808041, 34.445148, 26.680367>,  <35.144115, 34.107452, 26.159342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808041, 34.445148, 26.680367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596451, 34.118813, 26.586910>,  <34.469498, 33.923012, 26.530836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596451, 34.118813, 26.586910>,  <34.808041, 34.445148, 26.680367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596451, 34.118813, 26.586910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000333, -0.275114, 0.961412,
		-0.848638, 0.508640, 0.145256,
		-0.528974, -0.815842, -0.233641,
		34.437759, 33.874062, 26.516817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402954, 34.382530, 27.223509>,  <34.808041, 34.445148, 26.680367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402954, 34.382530, 27.223509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354286, 34.027802, 27.045185>,  <34.325085, 33.814964, 26.938190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354286, 34.027802, 27.045185>,  <34.402954, 34.382530, 27.223509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354286, 34.027802, 27.045185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130181, -0.459527, 0.878572,
		-0.983996, 0.048862, 0.171359,
		-0.121673, -0.886819, -0.445812,
		34.317783, 33.761757, 26.911442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857330, 34.089584, 27.624680>,  <34.402954, 34.382530, 27.223509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857330, 34.089584, 27.624680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077347, 33.807751, 27.445345>,  <34.209358, 33.638649, 27.337744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077347, 33.807751, 27.445345>,  <33.857330, 34.089584, 27.624680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077347, 33.807751, 27.445345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084289, -0.487268, 0.869175,
		-0.830870, -0.515876, -0.208631,
		0.550046, -0.704587, -0.448339,
		34.242359, 33.596375, 27.310843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529678, 33.485462, 27.914551>,  <33.857330, 34.089584, 27.624680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529678, 33.485462, 27.914551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888725, 33.381161, 27.772396>,  <34.104153, 33.318581, 27.687103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888725, 33.381161, 27.772396>,  <33.529678, 33.485462, 27.914551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888725, 33.381161, 27.772396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247378, -0.369303, 0.895778,
		-0.364783, -0.891988, -0.267002,
		0.897628, -0.260715, -0.355374,
		34.158009, 33.302937, 27.665781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729042, 32.787918, 28.176956>,  <33.529678, 33.485462, 27.914551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729042, 32.787918, 28.176956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057949, 32.995464, 28.083439>,  <34.255291, 33.119991, 28.027328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057949, 32.995464, 28.083439>,  <33.729042, 32.787918, 28.176956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057949, 32.995464, 28.083439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420789, -0.277710, 0.863605,
		0.383166, -0.808491, -0.446683,
		0.822265, 0.518864, -0.233795,
		34.304630, 33.151123, 28.013300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193352, 32.297691, 28.344883>,  <33.729042, 32.787918, 28.176956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193352, 32.297691, 28.344883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431274, 32.618645, 28.325340>,  <34.574028, 32.811218, 28.313614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431274, 32.618645, 28.325340>,  <34.193352, 32.297691, 28.344883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431274, 32.618645, 28.325340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508937, -0.328835, 0.795519,
		0.622243, -0.498047, -0.603956,
		0.594808, 0.802382, -0.048859,
		34.609718, 32.859360, 28.310682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887966, 32.075039, 28.414915>,  <34.193352, 32.297691, 28.344883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887966, 32.075039, 28.414915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940941, 32.460342, 28.508375>,  <34.972725, 32.691525, 28.564451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940941, 32.460342, 28.508375>,  <34.887966, 32.075039, 28.414915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940941, 32.460342, 28.508375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550821, -0.267501, 0.790595,
		0.824049, 0.023998, -0.566009,
		0.132435, 0.963259, 0.233652,
		34.980671, 32.749321, 28.578470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524727, 32.068157, 28.388992>,  <34.887966, 32.075039, 28.414915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524727, 32.068157, 28.388992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369354, 32.368286, 28.602961>,  <35.276131, 32.548363, 28.731342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369354, 32.368286, 28.602961>,  <35.524727, 32.068157, 28.388992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369354, 32.368286, 28.602961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370551, -0.404313, 0.836195,
		0.843690, 0.523019, -0.120985,
		-0.388431, 0.750321, 0.534921,
		35.252827, 32.593384, 28.763437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097511, 32.317005, 28.851080>,  <35.524727, 32.068157, 28.388992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097511, 32.317005, 28.851080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756832, 32.451439, 29.011902>,  <35.552425, 32.532101, 29.108395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756832, 32.451439, 29.011902>,  <36.097511, 32.317005, 28.851080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756832, 32.451439, 29.011902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353471, -0.197957, 0.914260,
		0.386862, 0.920792, 0.049803,
		-0.851702, 0.336088, 0.402055,
		35.501320, 32.552265, 29.132519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341198, 32.687744, 29.401918>,  <36.097511, 32.317005, 28.851080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341198, 32.687744, 29.401918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958961, 32.597115, 29.477304>,  <35.729622, 32.542736, 29.522535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958961, 32.597115, 29.477304>,  <36.341198, 32.687744, 29.401918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958961, 32.597115, 29.477304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254723, -0.313341, 0.914841,
		-0.148221, 0.922217, 0.357137,
		-0.955587, -0.226570, 0.188466,
		35.672287, 32.529144, 29.533844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255009, 32.977917, 30.045555>,  <36.341198, 32.687744, 29.401918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255009, 32.977917, 30.045555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966053, 32.704449, 30.004066>,  <35.792679, 32.540367, 29.979174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966053, 32.704449, 30.004066>,  <36.255009, 32.977917, 30.045555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966053, 32.704449, 30.004066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219771, -0.369211, 0.902986,
		-0.655638, 0.629508, 0.416963,
		-0.722385, -0.683668, -0.103721,
		35.749336, 32.499348, 29.972950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851650, 32.975361, 30.603369>,  <36.255009, 32.977917, 30.045555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851650, 32.975361, 30.603369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834820, 32.596756, 30.475407>,  <35.824722, 32.369591, 30.398630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834820, 32.596756, 30.475407>,  <35.851650, 32.975361, 30.603369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834820, 32.596756, 30.475407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209499, -0.321428, 0.923469,
		-0.976903, -0.028164, 0.211818,
		-0.042076, -0.946515, -0.319905,
		35.822197, 32.312801, 30.379435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466621, 32.762005, 31.071404>,  <35.851650, 32.975361, 30.603369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466621, 32.762005, 31.071404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610821, 32.428001, 30.905128>,  <35.697342, 32.227600, 30.805365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610821, 32.428001, 30.905128>,  <35.466621, 32.762005, 31.071404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610821, 32.428001, 30.905128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020683, -0.452698, 0.891424,
		-0.932531, -0.312758, -0.180467,
		0.360497, -0.835013, -0.415686,
		35.718971, 32.177498, 30.780422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125923, 32.292141, 31.376986>,  <35.466621, 32.762005, 31.071404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125923, 32.292141, 31.376986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416721, 32.058575, 31.232477>,  <35.591202, 31.918436, 31.145773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416721, 32.058575, 31.232477>,  <35.125923, 32.292141, 31.376986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416721, 32.058575, 31.232477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032034, -0.554414, 0.831624,
		-0.685891, -0.593017, -0.421764,
		0.726999, -0.583914, -0.361271,
		35.634823, 31.883400, 31.124096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003613, 31.487936, 31.661106>,  <35.125923, 32.292141, 31.376986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003613, 31.487936, 31.661106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383595, 31.535238, 31.545448>,  <35.611584, 31.563620, 31.476053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383595, 31.535238, 31.545448>,  <35.003613, 31.487936, 31.661106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383595, 31.535238, 31.545448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311371, -0.433304, 0.845752,
		-0.025271, -0.893456, -0.448440,
		0.949953, 0.118258, -0.289146,
		35.668579, 31.570715, 31.458704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232040, 30.889746, 31.692778>,  <35.003613, 31.487936, 31.661106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232040, 30.889746, 31.692778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564617, 31.111780, 31.702450>,  <35.764164, 31.245001, 31.708254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564617, 31.111780, 31.702450>,  <35.232040, 30.889746, 31.692778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564617, 31.111780, 31.702450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261880, -0.429900, 0.864063,
		0.490025, -0.712085, -0.502802,
		0.831441, 0.555086, 0.024181,
		35.814049, 31.278307, 31.709703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719585, 30.466866, 31.838062>,  <35.232040, 30.889746, 31.692778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719585, 30.466866, 31.838062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920238, 30.802456, 31.922430>,  <36.040630, 31.003811, 31.973051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920238, 30.802456, 31.922430>,  <35.719585, 30.466866, 31.838062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920238, 30.802456, 31.922430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488088, -0.475783, 0.731710,
		0.714238, -0.264103, -0.648162,
		0.501631, 0.838975, 0.210917,
		36.070728, 31.054148, 31.985704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467915, 30.334541, 32.016865>,  <35.719585, 30.466866, 31.838062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467915, 30.334541, 32.016865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357471, 30.675323, 32.194824>,  <36.291206, 30.879793, 32.301601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357471, 30.675323, 32.194824>,  <36.467915, 30.334541, 32.016865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357471, 30.675323, 32.194824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362417, -0.336441, 0.869173,
		0.890180, 0.401222, -0.215870,
		-0.276104, 0.851955, 0.444903,
		36.274639, 30.930910, 32.328297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973000, 30.499397, 32.404209>,  <36.467915, 30.334541, 32.016865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973000, 30.499397, 32.404209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695549, 30.724117, 32.584553>,  <36.529079, 30.858950, 32.692757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695549, 30.724117, 32.584553>,  <36.973000, 30.499397, 32.404209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695549, 30.724117, 32.584553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140985, -0.507911, 0.849794,
		0.706407, 0.653000, 0.273093,
		-0.693623, 0.561798, 0.450855,
		36.487461, 30.892656, 32.719810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258213, 30.586500, 32.978550>,  <36.973000, 30.499397, 32.404209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258213, 30.586500, 32.978550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879143, 30.700523, 33.036022>,  <36.651699, 30.768938, 33.070507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879143, 30.700523, 33.036022>,  <37.258213, 30.586500, 32.978550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879143, 30.700523, 33.036022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025715, -0.380461, 0.924439,
		0.318184, 0.879767, 0.353225,
		-0.947680, 0.285059, 0.143680,
		36.594837, 30.786041, 33.079124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276981, 30.752321, 33.666000>,  <37.258213, 30.586500, 32.978550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276981, 30.752321, 33.666000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893440, 30.685923, 33.573875>,  <36.663315, 30.646084, 33.518600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893440, 30.685923, 33.573875>,  <37.276981, 30.752321, 33.666000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893440, 30.685923, 33.573875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188598, -0.233929, 0.953786,
		-0.212200, 0.957979, 0.192998,
		-0.958854, -0.165994, -0.230313,
		36.605785, 30.636124, 33.504780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113224, 30.976971, 33.600197>,  <37.276981, 30.752321, 33.666000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113224, 30.976971, 33.600197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064140, 30.581728, 33.563137>,  <38.034691, 30.344582, 33.540901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064140, 30.581728, 33.563137>,  <38.113224, 30.976971, 33.600197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064140, 30.581728, 33.563137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031014, 0.089491, -0.995504,
		0.991957, -0.125035, 0.019664,
		-0.122713, -0.988108, -0.092649,
		38.027325, 30.285295, 33.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939281, 31.597586, 33.735603>,  <38.113224, 30.976971, 33.600197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939281, 31.597586, 33.735603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281887, 31.611240, 33.941601>,  <38.487450, 31.619432, 34.065201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281887, 31.611240, 33.941601>,  <37.939281, 31.597586, 33.735603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281887, 31.611240, 33.941601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364505, 0.666422, -0.650398,
		-0.365405, 0.744793, 0.558357,
		0.856513, 0.034135, 0.514995,
		38.538841, 31.621481, 34.096100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293873, 32.252331, 33.597725>,  <37.939281, 31.597586, 33.735603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293873, 32.252331, 33.597725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614815, 32.088768, 33.771633>,  <38.807381, 31.990629, 33.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614815, 32.088768, 33.771633>,  <38.293873, 32.252331, 33.597725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614815, 32.088768, 33.771633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595323, 0.600394, -0.533964,
		-0.042691, 0.687256, 0.725159,
		0.802351, -0.408909, 0.434771,
		38.855518, 31.966095, 33.902065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682484, 32.691799, 33.898319>,  <38.293873, 32.252331, 33.597725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682484, 32.691799, 33.898319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942623, 32.410591, 33.783215>,  <39.098705, 32.241867, 33.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942623, 32.410591, 33.783215>,  <38.682484, 32.691799, 33.898319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942623, 32.410591, 33.783215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524832, 0.689704, -0.498858,
		0.549178, 0.173406, 0.817517,
		0.650350, -0.703021, -0.287762,
		39.137730, 32.199684, 33.696884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363552, 32.923187, 34.065662>,  <38.682484, 32.691799, 33.898319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363552, 32.923187, 34.065662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402241, 32.659294, 33.767563>,  <39.425453, 32.500957, 33.588703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402241, 32.659294, 33.767563>,  <39.363552, 32.923187, 34.065662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402241, 32.659294, 33.767563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655753, 0.605519, -0.450926,
		0.748754, -0.445087, 0.491187,
		0.096721, -0.659730, -0.745252,
		39.431255, 32.461376, 33.543987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085415, 32.499344, 34.007668>,  <39.363552, 32.923187, 34.065662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085415, 32.499344, 34.007668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933651, 32.569328, 33.644253>,  <39.842594, 32.611320, 33.426205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933651, 32.569328, 33.644253>,  <40.085415, 32.499344, 34.007668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933651, 32.569328, 33.644253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833774, 0.490333, -0.253761,
		0.401086, -0.853793, -0.331916,
		-0.379408, 0.174963, -0.908536,
		39.819828, 32.621819, 33.371693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596607, 32.909679, 33.623463>,  <40.085415, 32.499344, 34.007668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596607, 32.909679, 33.623463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324764, 32.839050, 33.338657>,  <40.161659, 32.796673, 33.167774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324764, 32.839050, 33.338657>,  <40.596607, 32.909679, 33.623463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324764, 32.839050, 33.338657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567931, 0.487696, -0.663028,
		0.464319, -0.854970, -0.231159,
		-0.679604, -0.176574, -0.712011,
		40.120884, 32.786079, 33.125053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928432, 32.724941, 33.010750>,  <40.596607, 32.909679, 33.623463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928432, 32.724941, 33.010750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578884, 32.849731, 32.861610>,  <40.369156, 32.924606, 32.772125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578884, 32.849731, 32.861610>,  <40.928432, 32.724941, 33.010750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578884, 32.849731, 32.861610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485589, 0.523297, -0.700259,
		-0.023350, -0.792991, -0.608786,
		-0.873875, 0.311971, -0.372849,
		40.316723, 32.943321, 32.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879776, 32.518497, 32.307003>,  <40.928432, 32.724941, 33.010750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879776, 32.518497, 32.307003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697811, 32.873375, 32.337856>,  <40.588631, 33.086300, 32.356369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697811, 32.873375, 32.337856>,  <40.879776, 32.518497, 32.307003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697811, 32.873375, 32.337856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708942, 0.413206, -0.571544,
		-0.538941, -0.205316, -0.816938,
		-0.454911, 0.887190, 0.077137,
		40.561337, 33.139530, 32.360996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994537, 32.767410, 31.584368>,  <40.879776, 32.518497, 32.307003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994537, 32.767410, 31.584368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908852, 33.063625, 31.839151>,  <40.857441, 33.241356, 31.992022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908852, 33.063625, 31.839151>,  <40.994537, 32.767410, 31.584368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908852, 33.063625, 31.839151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637874, 0.599906, -0.482939,
		-0.739750, 0.302850, -0.600876,
		-0.214211, 0.740537, 0.636961,
		40.844589, 33.285786, 32.030239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696205, 33.342232, 31.215317>,  <40.994537, 32.767410, 31.584368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696205, 33.342232, 31.215317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896095, 33.476730, 31.534620>,  <41.016029, 33.557430, 31.726202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896095, 33.476730, 31.534620>,  <40.696205, 33.342232, 31.215317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896095, 33.476730, 31.534620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625035, 0.498045, -0.601068,
		-0.599674, 0.799307, 0.038720,
		0.499722, 0.336243, 0.798259,
		41.046013, 33.577602, 31.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914951, 33.924801, 30.950947>,  <40.696205, 33.342232, 31.215317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914951, 33.924801, 30.950947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161942, 33.824718, 31.249239>,  <41.310135, 33.764668, 31.428215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161942, 33.824718, 31.249239>,  <40.914951, 33.924801, 30.950947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161942, 33.824718, 31.249239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771182, 0.379277, -0.511299,
		-0.154908, 0.890812, 0.427151,
		0.617480, -0.250207, 0.745731,
		41.347187, 33.749657, 31.472958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378010, 34.451172, 31.190544>,  <40.914951, 33.924801, 30.950947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378010, 34.451172, 31.190544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568890, 34.146538, 31.365940>,  <41.683418, 33.963757, 31.471178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568890, 34.146538, 31.365940>,  <41.378010, 34.451172, 31.190544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568890, 34.146538, 31.365940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869455, 0.336594, -0.361596,
		0.127792, 0.553801, 0.822784,
		0.477197, -0.761583, 0.438492,
		41.712048, 33.918064, 31.497488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018822, 34.668762, 31.195293>,  <41.378010, 34.451172, 31.190544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018822, 34.668762, 31.195293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063393, 34.295357, 31.331610>,  <42.090137, 34.071316, 31.413401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063393, 34.295357, 31.331610>,  <42.018822, 34.668762, 31.195293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063393, 34.295357, 31.331610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960799, 0.013595, -0.276912,
		0.253868, 0.358289, 0.898432,
		0.111429, -0.933512, 0.340792,
		42.096821, 34.015305, 31.433847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668865, 34.658222, 31.491615>,  <42.018822, 34.668762, 31.195293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668865, 34.658222, 31.491615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562824, 34.279140, 31.420547>,  <42.499199, 34.051689, 31.377907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562824, 34.279140, 31.420547>,  <42.668865, 34.658222, 31.491615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562824, 34.279140, 31.420547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958466, -0.238914, -0.155766,
		0.105172, -0.211586, 0.971684,
		-0.265107, -0.947708, -0.177671,
		42.483292, 33.994827, 31.367247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895477, 34.009769, 31.909384>,  <42.668865, 34.658222, 31.491615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895477, 34.009769, 31.909384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844646, 33.898010, 31.528692>,  <42.814148, 33.830956, 31.300278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844646, 33.898010, 31.528692>,  <42.895477, 34.009769, 31.909384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844646, 33.898010, 31.528692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964513, -0.258696, -0.052837,
		-0.231446, -0.924670, 0.302354,
		-0.127075, -0.279395, -0.951730,
		42.806522, 33.814194, 31.243174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529602, 33.928104, 31.707598>,  <42.895477, 34.009769, 31.909384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529602, 33.928104, 31.707598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338348, 33.818459, 31.373831>,  <43.223598, 33.752670, 31.173571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338348, 33.818459, 31.373831>,  <43.529602, 33.928104, 31.707598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338348, 33.818459, 31.373831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877190, -0.196542, -0.438074,
		-0.043916, -0.941399, 0.334423,
		-0.478131, -0.274114, -0.834418,
		43.194908, 33.736225, 31.123505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844128, 33.318150, 31.500814>,  <43.529602, 33.928104, 31.707598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844128, 33.318150, 31.500814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665646, 33.446518, 31.166651>,  <43.558556, 33.523540, 30.966152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665646, 33.446518, 31.166651>,  <43.844128, 33.318150, 31.500814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665646, 33.446518, 31.166651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788398, -0.300761, -0.536630,
		-0.423475, -0.898083, -0.118812,
		-0.446204, 0.320921, -0.835411,
		43.531784, 33.542793, 30.916027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773571, 32.769939, 30.913332>,  <43.844128, 33.318150, 31.500814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773571, 32.769939, 30.913332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773552, 33.122093, 30.723627>,  <43.773540, 33.333385, 30.609804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773552, 33.122093, 30.723627>,  <43.773571, 32.769939, 30.913332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773552, 33.122093, 30.723627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658044, -0.357080, -0.662927,
		-0.752980, -0.312119, -0.579313,
		-0.000051, 0.880384, -0.474262,
		43.773537, 33.386208, 30.581348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787586, 32.579025, 30.212875>,  <43.773571, 32.769939, 30.913332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787586, 32.579025, 30.212875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930637, 32.946915, 30.277645>,  <44.016468, 33.167648, 30.316507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930637, 32.946915, 30.277645>,  <43.787586, 32.579025, 30.212875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930637, 32.946915, 30.277645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706353, -0.152981, -0.691131,
		-0.610876, 0.361541, -0.704357,
		0.357625, 0.919720, 0.161923,
		44.037926, 33.222832, 30.326221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733570, 32.926338, 29.584801>,  <43.787586, 32.579025, 30.212875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733570, 32.926338, 29.584801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033165, 33.036636, 29.825794>,  <44.212921, 33.102814, 29.970390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033165, 33.036636, 29.825794>,  <43.733570, 32.926338, 29.584801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033165, 33.036636, 29.825794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653946, -0.161286, -0.739149,
		-0.106644, 0.947603, -0.301123,
		0.748987, 0.275744, 0.602481,
		44.257862, 33.119358, 30.006538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182190, 33.556927, 29.372181>,  <43.733570, 32.926338, 29.584801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182190, 33.556927, 29.372181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344334, 33.263309, 29.590120>,  <44.441620, 33.087139, 29.720884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344334, 33.263309, 29.590120>,  <44.182190, 33.556927, 29.372181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344334, 33.263309, 29.590120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712379, -0.119861, -0.691483,
		0.572886, 0.668440, 0.474331,
		0.405361, -0.734045, 0.544850,
		44.465942, 33.043095, 29.753574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866810, 33.577785, 29.749035>,  <44.182190, 33.556927, 29.372181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866810, 33.577785, 29.749035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165428, 33.418846, 29.962498>,  <45.344597, 33.323483, 30.090576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165428, 33.418846, 29.962498>,  <44.866810, 33.577785, 29.749035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165428, 33.418846, 29.962498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454474, 0.890346, 0.027152,
		-0.485930, 0.222264, 0.845264,
		0.746543, -0.397344, 0.533659,
		45.389389, 33.299644, 30.122595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033924, 34.039604, 30.452082>,  <44.866810, 33.577785, 29.749035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033924, 34.039604, 30.452082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304077, 33.857792, 30.219788>,  <45.466167, 33.748703, 30.080410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304077, 33.857792, 30.219788>,  <45.033924, 34.039604, 30.452082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304077, 33.857792, 30.219788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342294, 0.890724, -0.299075,
		0.653216, 0.003207, 0.757165,
		0.675384, -0.454534, -0.580737,
		45.506691, 33.721432, 30.045567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401566, 34.050644, 30.801981>,  <45.033924, 34.039604, 30.452082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401566, 34.050644, 30.801981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366608, 33.972408, 30.411266>,  <44.345634, 33.925468, 30.176838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366608, 33.972408, 30.411266>,  <44.401566, 34.050644, 30.801981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366608, 33.972408, 30.411266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976986, -0.174697, 0.122390,
		-0.194579, 0.965001, -0.175820,
		-0.087392, -0.195588, -0.976785,
		44.340389, 33.913731, 30.118231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049973, 34.543362, 30.391729>,  <44.401566, 34.050644, 30.801981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049973, 34.543362, 30.391729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021194, 34.171471, 30.247272>,  <44.003925, 33.948334, 30.160599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021194, 34.171471, 30.247272>,  <44.049973, 34.543362, 30.391729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021194, 34.171471, 30.247272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974846, -0.011029, 0.222606,
		-0.210947, 0.368073, -0.905551,
		-0.071948, -0.929731, -0.361141,
		43.999611, 33.892551, 30.138929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470425, 34.480705, 30.038441>,  <44.049973, 34.543362, 30.391729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470425, 34.480705, 30.038441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571976, 34.127018, 30.195259>,  <43.632908, 33.914806, 30.289351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571976, 34.127018, 30.195259>,  <43.470425, 34.480705, 30.038441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571976, 34.127018, 30.195259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879003, -0.041784, 0.474982,
		-0.403607, -0.465200, -0.787839,
		0.253881, -0.884219, 0.392048,
		43.648140, 33.861752, 30.312874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946560, 34.037678, 29.908195>,  <43.470425, 34.480705, 30.038441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946560, 34.037678, 29.908195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129314, 33.854092, 30.212984>,  <43.238968, 33.743938, 30.395857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129314, 33.854092, 30.212984>,  <42.946560, 34.037678, 29.908195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129314, 33.854092, 30.212984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885599, -0.154327, 0.438061,
		-0.083464, -0.874946, -0.476973,
		0.456890, -0.458969, 0.761971,
		43.266380, 33.716400, 30.441576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678478, 33.395161, 29.951330>,  <42.946560, 34.037678, 29.908195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678478, 33.395161, 29.951330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811935, 33.493599, 30.315334>,  <42.892010, 33.552662, 30.533737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811935, 33.493599, 30.315334>,  <42.678478, 33.395161, 29.951330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811935, 33.493599, 30.315334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910360, -0.166560, 0.378816,
		0.244797, -0.954827, 0.168464,
		0.333644, 0.246096, 0.910010,
		42.912029, 33.567429, 30.588337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351303, 33.004471, 30.383434>,  <42.678478, 33.395161, 29.951330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351303, 33.004471, 30.383434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488331, 33.290337, 30.627367>,  <42.570549, 33.461857, 30.773727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488331, 33.290337, 30.627367>,  <42.351303, 33.004471, 30.383434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488331, 33.290337, 30.627367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857799, -0.026810, 0.513286,
		0.383178, -0.698953, 0.603855,
		0.342573, 0.714665, 0.609834,
		42.591103, 33.504738, 30.810318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174789, 32.777306, 31.012182>,  <42.351303, 33.004471, 30.383434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174789, 32.777306, 31.012182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255558, 33.159924, 31.096333>,  <42.304020, 33.389492, 31.146822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255558, 33.159924, 31.096333>,  <42.174789, 32.777306, 31.012182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255558, 33.159924, 31.096333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676923, -0.018935, 0.735811,
		0.707817, -0.290982, 0.643681,
		0.201919, 0.956541, 0.210375,
		42.316135, 33.446884, 31.159445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138279, 32.748825, 31.718754>,  <42.174789, 32.777306, 31.012182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138279, 32.748825, 31.718754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094227, 33.132317, 31.613909>,  <42.067795, 33.362411, 31.551003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094227, 33.132317, 31.613909>,  <42.138279, 32.748825, 31.718754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094227, 33.132317, 31.613909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768418, 0.085130, 0.634260,
		0.630400, 0.271264, 0.727332,
		-0.110134, 0.958733, -0.262110,
		42.061188, 33.419937, 31.535276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183464, 33.148762, 32.269150>,  <42.138279, 32.748825, 31.718754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183464, 33.148762, 32.269150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935596, 33.335140, 32.016518>,  <41.786877, 33.446968, 31.864937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935596, 33.335140, 32.016518>,  <42.183464, 33.148762, 32.269150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935596, 33.335140, 32.016518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752695, -0.124795, 0.646434,
		0.222386, 0.875967, 0.428049,
		-0.619673, 0.465948, -0.631583,
		41.749695, 33.474926, 31.827044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783157, 33.674355, 32.606388>,  <42.183464, 33.148762, 32.269150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783157, 33.674355, 32.606388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586617, 33.521782, 32.293190>,  <41.468693, 33.430237, 32.105270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586617, 33.521782, 32.293190>,  <41.783157, 33.674355, 32.606388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586617, 33.521782, 32.293190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776628, -0.215054, 0.592116,
		-0.394240, 0.899032, -0.190566,
		-0.491349, -0.381435, -0.782996,
		41.439213, 33.407352, 32.058292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247791, 34.207504, 32.808907>,  <41.783157, 33.674355, 32.606388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247791, 34.207504, 32.808907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134232, 34.020329, 32.474140>,  <41.066097, 33.908024, 32.273281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134232, 34.020329, 32.474140>,  <41.247791, 34.207504, 32.808907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134232, 34.020329, 32.474140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855642, -0.270299, 0.441379,
		-0.432757, 0.841410, -0.323653,
		-0.283898, -0.467941, -0.836919,
		41.049061, 33.879948, 32.223064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647686, 34.344673, 32.784576>,  <41.247791, 34.207504, 32.808907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647686, 34.344673, 32.784576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689953, 34.024616, 32.548405>,  <40.715313, 33.832581, 32.406704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689953, 34.024616, 32.548405>,  <40.647686, 34.344673, 32.784576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689953, 34.024616, 32.548405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952779, -0.251449, 0.170251,
		-0.284687, 0.544556, -0.788931,
		0.105664, -0.800145, -0.590426,
		40.721653, 33.784573, 32.371277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071938, 34.319954, 32.453808>,  <40.647686, 34.344673, 32.784576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071938, 34.319954, 32.453808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227688, 33.954624, 32.406094>,  <40.321140, 33.735428, 32.377464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227688, 33.954624, 32.406094>,  <40.071938, 34.319954, 32.453808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227688, 33.954624, 32.406094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908674, -0.402083, 0.112435,
		-0.150652, 0.064612, -0.986473,
		0.389380, -0.913321, -0.119286,
		40.344501, 33.680630, 32.370308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547409, 33.848175, 32.038849>,  <40.071938, 34.319954, 32.453808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547409, 33.848175, 32.038849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815441, 33.607723, 32.213043>,  <39.976261, 33.463451, 32.317558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815441, 33.607723, 32.213043>,  <39.547409, 33.848175, 32.038849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815441, 33.607723, 32.213043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737677, -0.604590, 0.300505,
		0.082647, -0.522607, -0.848558,
		0.670076, -0.601126, 0.435483,
		40.016464, 33.427387, 32.343689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121464, 33.261547, 32.328342>,  <39.547409, 33.848175, 32.038849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121464, 33.261547, 32.328342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485035, 33.164101, 32.463696>,  <39.703178, 33.105633, 32.544907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485035, 33.164101, 32.463696>,  <39.121464, 33.261547, 32.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485035, 33.164101, 32.463696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414349, -0.437215, 0.798222,
		-0.046511, -0.865735, -0.498337,
		0.908929, -0.243612, 0.338381,
		39.757713, 33.091019, 32.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094646, 32.527634, 32.321140>,  <39.121464, 33.261547, 32.328342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094646, 32.527634, 32.321140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419441, 32.607254, 32.540611>,  <39.614319, 32.655025, 32.672295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419441, 32.607254, 32.540611>,  <39.094646, 32.527634, 32.321140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419441, 32.607254, 32.540611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204307, -0.783647, 0.586648,
		0.546743, -0.588452, -0.595647,
		0.811991, 0.199051, 0.548679,
		39.663040, 32.666969, 32.705215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378948, 31.939596, 32.399517>,  <39.094646, 32.527634, 32.321140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378948, 31.939596, 32.399517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526405, 32.152050, 32.704674>,  <39.614880, 32.279522, 32.887768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526405, 32.152050, 32.704674>,  <39.378948, 31.939596, 32.399517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526405, 32.152050, 32.704674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196138, -0.757768, 0.622348,
		0.908643, -0.379055, -0.175170,
		0.368642, 0.531135, 0.762888,
		39.636997, 32.311390, 32.933540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759319, 31.486889, 32.750004>,  <39.378948, 31.939596, 32.399517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759319, 31.486889, 32.750004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630150, 31.780603, 32.988850>,  <39.552650, 31.956831, 33.132156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630150, 31.780603, 32.988850>,  <39.759319, 31.486889, 32.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630150, 31.780603, 32.988850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150070, -0.662661, 0.733730,
		0.934452, 0.147327, 0.324181,
		-0.322921, 0.734285, 0.597116,
		39.533272, 32.000889, 33.167984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861496, 31.203527, 33.388817>,  <39.759319, 31.486889, 32.750004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861496, 31.203527, 33.388817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617226, 31.507994, 33.476181>,  <39.470665, 31.690674, 33.528599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617226, 31.507994, 33.476181>,  <39.861496, 31.203527, 33.388817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617226, 31.507994, 33.476181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328795, -0.494639, 0.804504,
		0.720395, 0.419478, 0.552331,
		-0.610676, 0.761164, 0.218413,
		39.434021, 31.736343, 33.541706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903893, 31.293964, 34.104073>,  <39.861496, 31.203527, 33.388817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903893, 31.293964, 34.104073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561237, 31.493923, 34.053055>,  <39.355644, 31.613897, 34.022442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561237, 31.493923, 34.053055>,  <39.903893, 31.293964, 34.104073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561237, 31.493923, 34.053055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370876, -0.424846, 0.825807,
		0.358629, 0.754726, 0.549340,
		-0.856642, 0.499895, -0.127548,
		39.304245, 31.643892, 34.014790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647839, 31.566593, 34.790054>,  <39.903893, 31.293964, 34.104073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647839, 31.566593, 34.790054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319660, 31.570362, 34.561398>,  <39.122753, 31.572624, 34.424202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319660, 31.570362, 34.561398>,  <39.647839, 31.566593, 34.790054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319660, 31.570362, 34.561398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554954, -0.253473, 0.792324,
		-0.137430, 0.967297, 0.213190,
		-0.820450, 0.009422, -0.571640,
		39.073524, 31.573189, 34.389904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947803, 32.061798, 34.933487>,  <39.647839, 31.566593, 34.790054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947803, 32.061798, 34.933487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859978, 31.709097, 34.766487>,  <38.807281, 31.497477, 34.666286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859978, 31.709097, 34.766487>,  <38.947803, 32.061798, 34.933487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859978, 31.709097, 34.766487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656653, -0.182928, 0.731672,
		-0.721526, 0.434801, -0.538840,
		-0.219563, -0.881751, -0.417501,
		38.794109, 31.444572, 34.641235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547165, 32.190781, 35.409657>,  <38.947803, 32.061798, 34.933487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547165, 32.190781, 35.409657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876560, 32.417702, 35.412029>,  <40.074196, 32.553856, 35.413452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876560, 32.417702, 35.412029>,  <39.547165, 32.190781, 35.409657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876560, 32.417702, 35.412029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378342, -0.556926, 0.739385,
		0.422759, -0.606631, -0.673257,
		0.823488, 0.567303, 0.005932,
		40.123608, 32.587894, 35.413807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111504, 32.208488, 35.043285>,  <39.547165, 32.190781, 35.409657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111504, 32.208488, 35.043285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182873, 32.352337, 35.409637>,  <40.225693, 32.438644, 35.629448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182873, 32.352337, 35.409637>,  <40.111504, 32.208488, 35.043285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182873, 32.352337, 35.409637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658241, -0.735487, 0.160553,
		0.731357, 0.574226, -0.367942,
		0.178423, 0.359617, 0.915883,
		40.236401, 32.460220, 35.684402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794373, 32.093994, 35.138432>,  <40.111504, 32.208488, 35.043285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794373, 32.093994, 35.138432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649734, 32.141983, 35.508266>,  <40.562954, 32.170776, 35.730167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649734, 32.141983, 35.508266>,  <40.794373, 32.093994, 35.138432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649734, 32.141983, 35.508266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461774, -0.838463, 0.289388,
		0.809949, 0.531590, 0.247781,
		-0.361591, 0.119970, 0.924586,
		40.541256, 32.177975, 35.785641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316502, 32.457497, 35.520664>,  <40.794373, 32.093994, 35.138432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316502, 32.457497, 35.520664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625587, 32.424564, 35.772423>,  <41.811039, 32.404804, 35.923477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625587, 32.424564, 35.772423>,  <41.316502, 32.457497, 35.520664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625587, 32.424564, 35.772423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634092, 0.054779, -0.771315,
		0.029024, 0.995099, 0.094533,
		0.772713, -0.082329, 0.629394,
		41.857403, 32.399864, 35.961243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763641, 33.086357, 35.429802>,  <41.316502, 32.457497, 35.520664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763641, 33.086357, 35.429802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931610, 32.740616, 35.540470>,  <42.032391, 32.533169, 35.606873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931610, 32.740616, 35.540470>,  <41.763641, 33.086357, 35.429802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931610, 32.740616, 35.540470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577166, 0.019076, -0.816404,
		0.700387, 0.502515, 0.506888,
		0.419925, -0.864358, 0.276674,
		42.057587, 32.481308, 35.623474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532654, 33.101196, 35.473488>,  <41.763641, 33.086357, 35.429802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532654, 33.101196, 35.473488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422127, 32.727802, 35.382042>,  <42.355812, 32.503765, 35.327175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422127, 32.727802, 35.382042>,  <42.532654, 33.101196, 35.473488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422127, 32.727802, 35.382042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452614, 0.083449, -0.887793,
		0.847816, -0.348783, 0.399449,
		-0.276314, -0.933481, -0.228613,
		42.339233, 32.447758, 35.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969933, 32.819969, 34.849358>,  <42.532654, 33.101196, 35.473488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969933, 32.819969, 34.849358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103275, 32.489086, 35.030289>,  <43.183281, 32.290558, 35.138847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103275, 32.489086, 35.030289>,  <42.969933, 32.819969, 34.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103275, 32.489086, 35.030289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940044, 0.254959, -0.226522,
		0.072054, 0.500724, 0.862603,
		0.333353, -0.827207, 0.452332,
		43.203281, 32.240925, 35.165989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727959, 33.594143, 34.951885>,  <42.969933, 32.819969, 34.849358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727959, 33.594143, 34.951885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547150, 33.835690, 34.689278>,  <42.438663, 33.980618, 34.531715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547150, 33.835690, 34.689278>,  <42.727959, 33.594143, 34.951885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547150, 33.835690, 34.689278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426502, 0.500101, 0.753654,
		0.783434, 0.620677, 0.031492,
		-0.452026, 0.603870, -0.656516,
		42.411541, 34.016850, 34.492321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990227, 34.324127, 34.876732>,  <42.727959, 33.594143, 34.951885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990227, 34.324127, 34.876732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592403, 34.304199, 34.840145>,  <42.353710, 34.292244, 34.818192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592403, 34.304199, 34.840145>,  <42.990227, 34.324127, 34.876732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592403, 34.304199, 34.840145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103987, 0.524405, 0.845095,
		0.005867, 0.850011, -0.526733,
		-0.994561, -0.049815, -0.091466,
		42.294037, 34.289253, 34.812706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548359, 34.556656, 34.233234>,  <42.990227, 34.324127, 34.876732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548359, 34.556656, 34.233234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748508, 34.474285, 34.569622>,  <43.868599, 34.424862, 34.771454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748508, 34.474285, 34.569622>,  <43.548359, 34.556656, 34.233234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748508, 34.474285, 34.569622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488221, -0.735044, -0.470480,
		0.715032, 0.645991, -0.267255,
		0.500370, -0.205929, 0.840966,
		43.898621, 34.412506, 34.821911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275116, 34.704445, 34.231796>,  <43.548359, 34.556656, 34.233234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275116, 34.704445, 34.231796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118721, 34.395882, 34.432621>,  <44.024883, 34.210743, 34.553116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118721, 34.395882, 34.432621>,  <44.275116, 34.704445, 34.231796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118721, 34.395882, 34.432621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438129, -0.635706, -0.635548,
		0.809429, -0.028520, 0.586525,
		-0.390983, -0.771404, 0.502063,
		44.001427, 34.164459, 34.583241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765884, 34.254051, 34.609249>,  <44.275116, 34.704445, 34.231796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765884, 34.254051, 34.609249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443878, 34.069405, 34.460194>,  <44.250675, 33.958618, 34.370762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443878, 34.069405, 34.460194>,  <44.765884, 34.254051, 34.609249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443878, 34.069405, 34.460194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578653, -0.472491, -0.664765,
		0.130798, -0.750775, 0.647478,
		-0.805017, -0.461615, -0.372638,
		44.202374, 33.930920, 34.348404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022949, 33.536976, 34.508018>,  <44.765884, 34.254051, 34.609249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022949, 33.536976, 34.508018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721886, 33.669331, 34.280327>,  <44.541248, 33.748741, 34.143711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721886, 33.669331, 34.280327>,  <45.022949, 33.536976, 34.508018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721886, 33.669331, 34.280327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412656, -0.436611, -0.799429,
		-0.513050, -0.836592, 0.192077,
		-0.752658, 0.330886, -0.569228,
		44.496086, 33.768597, 34.109558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768154, 32.924549, 34.197208>,  <45.022949, 33.536976, 34.508018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768154, 32.924549, 34.197208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716335, 33.255272, 33.978260>,  <44.685246, 33.453705, 33.846893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716335, 33.255272, 33.978260>,  <44.768154, 32.924549, 34.197208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716335, 33.255272, 33.978260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463797, -0.437387, -0.770445,
		-0.876419, -0.353674, -0.326809,
		-0.129544, 0.826806, -0.547367,
		44.677471, 33.503315, 33.814049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096569, 32.890095, 33.524021>,  <44.768154, 32.924549, 34.197208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096569, 32.890095, 33.524021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332630, 32.921993, 33.202686>,  <45.474266, 32.941132, 33.009884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332630, 32.921993, 33.202686>,  <45.096569, 32.890095, 33.524021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332630, 32.921993, 33.202686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375229, 0.853988, 0.360427,
		0.714785, -0.514145, 0.474065,
		0.590158, 0.079745, -0.803340,
		45.509678, 32.945915, 32.961685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803123, 32.991859, 33.866570>,  <45.096569, 32.890095, 33.524021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803123, 32.991859, 33.866570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758694, 33.092293, 33.481941>,  <45.732037, 33.152554, 33.251163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758694, 33.092293, 33.481941>,  <45.803123, 32.991859, 33.866570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758694, 33.092293, 33.481941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484246, 0.858600, 0.168263,
		0.867853, -0.446948, -0.216953,
		-0.111071, 0.251086, -0.961571,
		45.725372, 33.167618, 33.193470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398506, 33.185246, 33.721905>,  <45.803123, 32.991859, 33.866570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398506, 33.185246, 33.721905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144672, 33.377689, 33.479969>,  <45.992371, 33.493156, 33.334808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144672, 33.377689, 33.479969>,  <46.398506, 33.185246, 33.721905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144672, 33.377689, 33.479969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536239, 0.837671, 0.103702,
		0.556551, -0.258532, -0.789565,
		-0.634585, 0.481111, -0.604842,
		45.954296, 33.522022, 33.298515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678555, 33.771099, 33.992680>,  <46.398506, 33.185246, 33.721905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678555, 33.771099, 33.992680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431576, 33.933571, 33.723225>,  <46.283390, 34.031052, 33.561554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431576, 33.933571, 33.723225>,  <46.678555, 33.771099, 33.992680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431576, 33.933571, 33.723225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249021, 0.913258, 0.322411,
		0.746158, 0.031321, -0.665032,
		-0.617444, 0.406176, -0.673635,
		46.246342, 34.055424, 33.521133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865917, 34.279137, 34.441383>,  <46.678555, 33.771099, 33.992680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865917, 34.279137, 34.441383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795628, 34.659615, 34.542847>,  <46.753452, 34.887901, 34.603725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795628, 34.659615, 34.542847>,  <46.865917, 34.279137, 34.441383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795628, 34.659615, 34.542847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919881, 0.066885, 0.386453,
		0.350626, 0.301249, -0.886742,
		-0.175728, 0.951197, 0.253661,
		46.742908, 34.944973, 34.618946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.449520, 34.597260, 34.247581>,  <46.865917, 34.279137, 34.441383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.449520, 34.597260, 34.247581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275845, 34.759548, 34.569294>,  <47.171638, 34.856922, 34.762321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275845, 34.759548, 34.569294>,  <47.449520, 34.597260, 34.247581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275845, 34.759548, 34.569294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866745, -0.055093, 0.495700,
		0.245426, 0.912336, -0.327734,
		-0.434189, 0.405719, 0.804284,
		47.145588, 34.881264, 34.810577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836945, 35.208641, 34.537373>,  <47.449520, 34.597260, 34.247581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836945, 35.208641, 34.537373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619583, 35.041946, 34.828865>,  <47.489166, 34.941929, 35.003761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619583, 35.041946, 34.828865>,  <47.836945, 35.208641, 34.537373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.619583, 35.041946, 34.828865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809547, -0.030428, 0.586267,
		-0.222145, 0.908518, 0.353903,
		-0.543402, -0.416737, 0.728728,
		47.456562, 34.916924, 35.047482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.777176, 33.965565, 25.709585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.378143, 33.937840, 25.711805>,  <29.138723, 33.921204, 25.713137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.378143, 33.937840, 25.711805>,  <29.777176, 33.965565, 25.709585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378143, 33.937840, 25.711805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024078, -0.269444, 0.962715,
		-0.065237, 0.960518, 0.270460,
		-0.997579, -0.069317, 0.005550,
		29.078869, 33.917046, 25.713470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523823, 34.411125, 26.211868>,  <29.777176, 33.965565, 25.709585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523823, 34.411125, 26.211868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.264412, 34.109356, 26.171352>,  <29.108765, 33.928295, 26.147043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.264412, 34.109356, 26.171352>,  <29.523823, 34.411125, 26.211868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264412, 34.109356, 26.171352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070194, -0.191771, 0.978926,
		-0.757947, 0.627751, 0.177325,
		-0.648528, -0.754422, -0.101288,
		29.069853, 33.883030, 26.140966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366116, 34.309559, 26.894005>,  <29.523823, 34.411125, 26.211868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366116, 34.309559, 26.894005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.215130, 33.974808, 26.735430>,  <29.124538, 33.773956, 26.640285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.215130, 33.974808, 26.735430>,  <29.366116, 34.309559, 26.894005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215130, 33.974808, 26.735430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102109, -0.463111, 0.880399,
		-0.920377, 0.291840, 0.260261,
		-0.377466, -0.836873, -0.396437,
		29.101891, 33.723747, 26.616499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802200, 34.096272, 27.386723>,  <29.366116, 34.309559, 26.894005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802200, 34.096272, 27.386723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.878000, 33.754631, 27.192978>,  <28.923481, 33.549648, 27.076731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.878000, 33.754631, 27.192978>,  <28.802200, 34.096272, 27.386723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878000, 33.754631, 27.192978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083168, -0.505490, 0.858815,
		-0.978352, -0.122463, -0.166824,
		0.189501, -0.854098, -0.484362,
		28.934851, 33.498402, 27.047668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257551, 33.508823, 27.508804>,  <28.802200, 34.096272, 27.386723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257551, 33.508823, 27.508804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.580978, 33.302864, 27.394896>,  <28.775034, 33.179287, 27.326551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.580978, 33.302864, 27.394896>,  <28.257551, 33.508823, 27.508804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580978, 33.302864, 27.394896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007052, -0.475457, 0.879711,
		-0.588361, -0.713314, -0.380808,
		0.808568, -0.514902, -0.284771,
		28.823549, 33.148396, 27.309465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116228, 32.871384, 27.788921>,  <28.257551, 33.508823, 27.508804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116228, 32.871384, 27.788921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.510654, 32.884106, 27.723600>,  <28.747311, 32.891739, 27.684408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.510654, 32.884106, 27.723600>,  <28.116228, 32.871384, 27.788921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510654, 32.884106, 27.723600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165262, -0.300309, 0.939416,
		-0.019163, -0.953311, -0.301380,
		0.986063, 0.031805, -0.163301,
		28.806473, 32.893646, 27.674610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310869, 32.333534, 28.147396>,  <28.116228, 32.871384, 27.788921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310869, 32.333534, 28.147396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.672531, 32.489292, 28.077108>,  <28.889528, 32.582748, 28.034937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.672531, 32.489292, 28.077108>,  <28.310869, 32.333534, 28.147396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672531, 32.489292, 28.077108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308233, -0.309816, 0.899448,
		0.295800, -0.867402, -0.400145,
		0.904154, 0.389395, -0.175718,
		28.943777, 32.606110, 28.024393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848196, 31.856380, 28.419888>,  <28.310869, 32.333534, 28.147396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848196, 31.856380, 28.419888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.026886, 32.214043, 28.407763>,  <29.134100, 32.428642, 28.400488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.026886, 32.214043, 28.407763>,  <28.848196, 31.856380, 28.419888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026886, 32.214043, 28.407763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539953, -0.242439, 0.806024,
		0.713363, -0.376439, -0.591106,
		0.446726, 0.894157, -0.030312,
		29.160904, 32.482288, 28.398668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565453, 31.695263, 28.452419>,  <28.848196, 31.856380, 28.419888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565453, 31.695263, 28.452419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.459961, 32.049751, 28.604765>,  <29.396666, 32.262444, 28.696173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.459961, 32.049751, 28.604765>,  <29.565453, 31.695263, 28.452419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459961, 32.049751, 28.604765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529797, -0.196877, 0.824957,
		0.806079, 0.419346, -0.417596,
		-0.263727, 0.886222, 0.380866,
		29.380842, 32.315617, 28.719025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148588, 31.893616, 28.886532>,  <29.565453, 31.695263, 28.452419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148588, 31.893616, 28.886532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.861610, 32.143879, 29.009058>,  <29.689425, 32.294037, 29.082573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.861610, 32.143879, 29.009058>,  <30.148588, 31.893616, 28.886532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861610, 32.143879, 29.009058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382202, -0.014091, 0.923971,
		0.582405, 0.779971, -0.229017,
		-0.717444, 0.625656, 0.306314,
		29.646378, 32.331577, 29.100952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521357, 32.424969, 29.190281>,  <30.148588, 31.893616, 28.886532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521357, 32.424969, 29.190281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154478, 32.383583, 29.344187>,  <29.934351, 32.358749, 29.436531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154478, 32.383583, 29.344187>,  <30.521357, 32.424969, 29.190281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154478, 32.383583, 29.344187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397004, -0.319074, 0.860569,
		0.033727, 0.942065, 0.333731,
		-0.917197, -0.103468, 0.384765,
		29.879318, 32.352543, 29.459616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480600, 32.859024, 29.910875>,  <30.521357, 32.424969, 29.190281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480600, 32.859024, 29.910875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192478, 32.582695, 29.885799>,  <30.019606, 32.416897, 29.870754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192478, 32.582695, 29.885799>,  <30.480600, 32.859024, 29.910875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192478, 32.582695, 29.885799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236615, -0.329657, 0.913969,
		-0.652054, 0.643503, 0.400912,
		-0.720305, -0.690819, -0.062691,
		29.976387, 32.375450, 29.866991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170700, 32.915939, 30.515657>,  <30.480600, 32.859024, 29.910875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170700, 32.915939, 30.515657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056702, 32.555408, 30.385189>,  <29.988302, 32.339092, 30.306908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056702, 32.555408, 30.385189>,  <30.170700, 32.915939, 30.515657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056702, 32.555408, 30.385189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256237, -0.399541, 0.880176,
		-0.923644, 0.167271, 0.344821,
		-0.284998, -0.901325, -0.326173,
		29.971203, 32.285011, 30.287336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036552, 32.544796, 31.170626>,  <30.170700, 32.915939, 30.515657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036552, 32.544796, 31.170626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.962082, 32.242489, 30.919498>,  <29.917398, 32.061104, 30.768822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.962082, 32.242489, 30.919498>,  <30.036552, 32.544796, 31.170626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962082, 32.242489, 30.919498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091532, -0.649551, 0.754788,
		-0.978243, 0.083060, 0.190110,
		-0.186178, -0.755767, -0.627816,
		29.906229, 32.015759, 30.731153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628513, 32.018250, 31.672321>,  <30.036552, 32.544796, 31.170626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628513, 32.018250, 31.672321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.761684, 31.834534, 31.342907>,  <29.841587, 31.724304, 31.145258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.761684, 31.834534, 31.342907>,  <29.628513, 32.018250, 31.672321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761684, 31.834534, 31.342907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229923, -0.807457, 0.543275,
		-0.914492, -0.370221, -0.163222,
		0.332926, -0.459292, -0.823535,
		29.861563, 31.696747, 31.095846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305040, 31.353119, 31.655331>,  <29.628513, 32.018250, 31.672321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305040, 31.353119, 31.655331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.655571, 31.374493, 31.463835>,  <29.865891, 31.387316, 31.348936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.655571, 31.374493, 31.463835>,  <29.305040, 31.353119, 31.655331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655571, 31.374493, 31.463835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377070, -0.694562, 0.612700,
		-0.299778, -0.717445, -0.628813,
		0.876329, 0.053433, -0.478741,
		29.918470, 31.390522, 31.320211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546919, 30.667019, 31.642351>,  <29.305040, 31.353119, 31.655331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546919, 30.667019, 31.642351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.872618, 30.886477, 31.566463>,  <30.068037, 31.018150, 31.520931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.872618, 30.886477, 31.566463>,  <29.546919, 30.667019, 31.642351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872618, 30.886477, 31.566463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516179, -0.534706, 0.669066,
		0.265636, -0.642712, -0.718581,
		0.814246, 0.548644, -0.189717,
		30.116892, 31.051069, 31.509548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003922, 30.164801, 31.482302>,  <29.546919, 30.667019, 31.642351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003922, 30.164801, 31.482302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192217, 30.499678, 31.593668>,  <30.305193, 30.700603, 31.660488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.192217, 30.499678, 31.593668>,  <30.003922, 30.164801, 31.482302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192217, 30.499678, 31.593668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414296, -0.488365, 0.768022,
		0.778952, -0.246189, -0.576737,
		0.470736, 0.837192, 0.278418,
		30.333437, 30.750835, 31.677193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667305, 29.907665, 31.532011>,  <30.003922, 30.164801, 31.482302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667305, 29.907665, 31.532011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.667606, 30.241812, 31.751886>,  <30.667788, 30.442301, 31.883812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.667606, 30.241812, 31.751886>,  <30.667305, 29.907665, 31.532011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667606, 30.241812, 31.751886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531543, -0.465939, 0.707364,
		0.847031, 0.291652, -0.444384,
		0.000751, 0.835368, 0.549690,
		30.667831, 30.492422, 31.916794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384695, 30.064198, 31.765488>,  <30.667305, 29.907665, 31.532011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384695, 30.064198, 31.765488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154915, 30.274368, 32.016544>,  <31.017046, 30.400471, 32.167179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154915, 30.274368, 32.016544>,  <31.384695, 30.064198, 31.765488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154915, 30.274368, 32.016544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509513, -0.370588, 0.776570,
		0.640626, 0.765893, -0.054827,
		-0.574451, 0.525426, 0.627641,
		30.982580, 30.431995, 32.204838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848745, 30.397638, 32.272804>,  <31.384695, 30.064198, 31.765488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848745, 30.397638, 32.272804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488266, 30.424196, 32.444122>,  <31.271978, 30.440132, 32.546913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488266, 30.424196, 32.444122>,  <31.848745, 30.397638, 32.272804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488266, 30.424196, 32.444122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422194, -0.088867, 0.902139,
		0.097960, 0.993828, 0.052054,
		-0.901197, 0.066397, 0.428293,
		31.217907, 30.444115, 32.572609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962460, 30.852394, 32.830296>,  <31.848745, 30.397638, 32.272804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962460, 30.852394, 32.830296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.634281, 30.638464, 32.911118>,  <31.437374, 30.510105, 32.959610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.634281, 30.638464, 32.911118>,  <31.962460, 30.852394, 32.830296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634281, 30.638464, 32.911118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348670, -0.187982, 0.918200,
		-0.453094, 0.823787, 0.340707,
		-0.820448, -0.534825, 0.202056,
		31.388147, 30.478016, 32.971733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581219, 30.776583, 33.131592>,  <31.962460, 30.852394, 32.830296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581219, 30.776583, 33.131592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.840420, 30.526026, 32.958286>,  <32.995941, 30.375692, 32.854301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.840420, 30.526026, 32.958286>,  <32.581219, 30.776583, 33.131592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840420, 30.526026, 32.958286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161127, 0.443242, -0.881802,
		0.744396, 0.641225, 0.186295,
		0.648007, -0.626392, -0.433266,
		33.034821, 30.338108, 32.828308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071838, 31.146418, 32.802059>,  <32.581219, 30.776583, 33.131592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071838, 31.146418, 32.802059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.063503, 30.800476, 32.601421>,  <33.058502, 30.592911, 32.481037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.063503, 30.800476, 32.601421>,  <33.071838, 31.146418, 32.802059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063503, 30.800476, 32.601421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124239, 0.495574, -0.859634,
		0.992033, -0.080232, 0.097121,
		-0.020840, -0.864852, -0.501594,
		33.057251, 30.541021, 32.450943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576084, 31.285038, 32.258911>,  <33.071838, 31.146418, 32.802059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576084, 31.285038, 32.258911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375900, 30.956497, 32.149426>,  <33.255791, 30.759373, 32.083733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375900, 30.956497, 32.149426>,  <33.576084, 31.285038, 32.258911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375900, 30.956497, 32.149426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169836, 0.216872, -0.961313,
		0.848935, -0.527589, 0.030958,
		-0.500464, -0.821350, -0.273714,
		33.225761, 30.710093, 32.067310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934032, 31.067648, 31.654902>,  <33.576084, 31.285038, 32.258911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934032, 31.067648, 31.654902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569050, 30.908289, 31.617594>,  <33.350060, 30.812674, 31.595209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569050, 30.908289, 31.617594>,  <33.934032, 31.067648, 31.654902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569050, 30.908289, 31.617594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036259, 0.148321, -0.988274,
		0.407562, -0.905140, -0.120891,
		-0.912457, -0.398399, -0.093269,
		33.295311, 30.788769, 31.589613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911884, 30.580017, 31.078663>,  <33.934032, 31.067648, 31.654902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911884, 30.580017, 31.078663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.521511, 30.646185, 31.135500>,  <33.287289, 30.685884, 31.169601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.521511, 30.646185, 31.135500>,  <33.911884, 30.580017, 31.078663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521511, 30.646185, 31.135500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100770, 0.235757, -0.966573,
		-0.193389, -0.957630, -0.213413,
		-0.975933, 0.165419, 0.142093,
		33.228729, 30.695810, 31.178127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456638, 30.226908, 30.609148>,  <33.911884, 30.580017, 31.078663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456638, 30.226908, 30.609148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.245838, 30.545841, 30.726807>,  <33.119358, 30.737202, 30.797401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.245838, 30.545841, 30.726807>,  <33.456638, 30.226908, 30.609148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245838, 30.545841, 30.726807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138542, 0.260883, -0.955378,
		-0.838494, -0.544241, -0.027023,
		-0.527005, 0.797334, 0.294149,
		33.087738, 30.785042, 30.815052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102962, 30.312134, 30.025743>,  <33.456638, 30.226908, 30.609148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102962, 30.312134, 30.025743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017597, 30.633675, 30.247833>,  <32.966377, 30.826599, 30.381086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017597, 30.633675, 30.247833>,  <33.102962, 30.312134, 30.025743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017597, 30.633675, 30.247833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527138, 0.383743, -0.758200,
		-0.822546, -0.454489, 0.341847,
		-0.213412, 0.803854, 0.555224,
		32.953575, 30.874830, 30.414400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391579, 30.461573, 29.925407>,  <33.102962, 30.312134, 30.025743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391579, 30.461573, 29.925407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.552315, 30.795185, 30.076628>,  <32.648754, 30.995352, 30.167360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.552315, 30.795185, 30.076628>,  <32.391579, 30.461573, 29.925407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552315, 30.795185, 30.076628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534813, 0.548873, -0.642428,
		-0.743306, 0.055965, 0.666607,
		0.401836, 0.834030, 0.378049,
		32.672867, 31.045395, 30.190042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870523, 30.978951, 30.048697>,  <32.391579, 30.461573, 29.925407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870523, 30.978951, 30.048697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.208805, 31.187771, 30.004433>,  <32.411774, 31.313063, 29.977875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.208805, 31.187771, 30.004433>,  <31.870523, 30.978951, 30.048697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208805, 31.187771, 30.004433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432184, 0.548375, -0.715893,
		-0.313052, 0.653258, 0.689385,
		0.845704, 0.522053, -0.110657,
		32.462517, 31.344387, 29.971235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633106, 31.629530, 29.969439>,  <31.870523, 30.978951, 30.048697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633106, 31.629530, 29.969439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001350, 31.630356, 29.813250>,  <32.222298, 31.630852, 29.719536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001350, 31.630356, 29.813250>,  <31.633106, 31.629530, 29.969439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001350, 31.630356, 29.813250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353361, 0.429924, -0.830844,
		0.166159, 0.902863, 0.396523,
		0.920612, 0.002063, -0.390472,
		32.277534, 31.630976, 29.696108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619810, 32.222469, 29.635204>,  <31.633106, 31.629530, 29.969439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619810, 32.222469, 29.635204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936125, 32.031227, 29.482327>,  <32.125912, 31.916483, 29.390600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936125, 32.031227, 29.482327>,  <31.619810, 32.222469, 29.635204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936125, 32.031227, 29.482327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265335, 0.294935, -0.917938,
		0.551593, 0.827303, 0.106373,
		0.790786, -0.478104, -0.382196,
		32.173359, 31.887796, 29.367668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170677, 32.741550, 29.426451>,  <31.619810, 32.222469, 29.635204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170677, 32.741550, 29.426451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.222328, 32.405880, 29.215124>,  <32.253319, 32.204479, 29.088329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.222328, 32.405880, 29.215124>,  <32.170677, 32.741550, 29.426451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222328, 32.405880, 29.215124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014676, 0.531100, -0.847182,
		0.991520, 0.117147, 0.056263,
		0.129126, -0.839172, -0.528315,
		32.261066, 32.154129, 29.056629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527130, 32.873306, 28.717978>,  <32.170677, 32.741550, 29.426451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527130, 32.873306, 28.717978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369522, 32.510784, 28.656843>,  <32.274956, 32.293270, 28.620163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369522, 32.510784, 28.656843>,  <32.527130, 32.873306, 28.717978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369522, 32.510784, 28.656843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148064, 0.226711, -0.962642,
		0.907096, -0.356674, -0.223520,
		-0.394023, -0.906304, -0.152838,
		32.251316, 32.238892, 28.610992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774540, 32.662979, 28.062284>,  <32.527130, 32.873306, 28.717978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774540, 32.662979, 28.062284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.473049, 32.404972, 28.112633>,  <32.292152, 32.250168, 28.142841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.473049, 32.404972, 28.112633>,  <32.774540, 32.662979, 28.062284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473049, 32.404972, 28.112633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345383, 0.225845, -0.910881,
		0.559107, -0.730032, -0.393004,
		-0.753731, -0.645017, 0.125869,
		32.246929, 32.211468, 28.150394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759586, 32.248440, 27.439848>,  <32.774540, 32.662979, 28.062284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759586, 32.248440, 27.439848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.395679, 32.187546, 27.594326>,  <32.177334, 32.151009, 27.687012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.395679, 32.187546, 27.594326>,  <32.759586, 32.248440, 27.439848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395679, 32.187546, 27.594326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413728, 0.256513, -0.873516,
		0.033912, -0.954477, -0.296349,
		-0.909769, -0.152231, 0.386195,
		32.122749, 32.141876, 27.710184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311428, 31.715414, 27.035204>,  <32.759586, 32.248440, 27.439848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311428, 31.715414, 27.035204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.077904, 31.980587, 27.222685>,  <31.937788, 32.139690, 27.335173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.077904, 31.980587, 27.222685>,  <32.311428, 31.715414, 27.035204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077904, 31.980587, 27.222685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520887, 0.136983, -0.842563,
		-0.622766, -0.736041, 0.265341,
		-0.583814, 0.662932, 0.468702,
		31.902760, 32.179466, 27.363297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689222, 31.594669, 26.722506>,  <32.311428, 31.715414, 27.035204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689222, 31.594669, 26.722506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620584, 31.947382, 26.898239>,  <31.579401, 32.159008, 27.003679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620584, 31.947382, 26.898239>,  <31.689222, 31.594669, 26.722506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620584, 31.947382, 26.898239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544586, 0.286719, -0.788174,
		-0.820963, -0.374504, 0.431006,
		-0.171597, 0.881782, 0.439335,
		31.569105, 32.211918, 27.030039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059074, 31.733141, 26.458324>,  <31.689222, 31.594669, 26.722506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059074, 31.733141, 26.458324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.183325, 32.089970, 26.589609>,  <31.257875, 32.304066, 26.668379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.183325, 32.089970, 26.589609>,  <31.059074, 31.733141, 26.458324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183325, 32.089970, 26.589609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419145, 0.438456, -0.795031,
		-0.853129, 0.109390, 0.510103,
		0.310626, 0.892070, 0.328210,
		31.276512, 32.357590, 26.688072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.379927, 32.459259, 26.375170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742071, 32.627384, 26.399353>,  <30.959358, 32.728260, 26.413862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742071, 32.627384, 26.399353>,  <30.379927, 32.459259, 26.375170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742071, 32.627384, 26.399353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275048, 0.688916, -0.670629,
		-0.323527, 0.590533, 0.739325,
		0.905361, 0.420316, 0.060458,
		31.013680, 32.753479, 26.417490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236034, 33.064342, 26.237717>,  <30.379927, 32.459259, 26.375170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236034, 33.064342, 26.237717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.625881, 33.044189, 26.150457>,  <30.859789, 33.032097, 26.098103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.625881, 33.044189, 26.150457>,  <30.236034, 33.064342, 26.237717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625881, 33.044189, 26.150457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148836, 0.582090, -0.799387,
		0.167252, 0.811562, 0.559816,
		0.974615, -0.050378, -0.218146,
		30.918266, 33.029076, 26.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458960, 33.719559, 26.041363>,  <30.236034, 33.064342, 26.237717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458960, 33.719559, 26.041363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.758593, 33.513294, 25.875008>,  <30.938372, 33.389534, 25.775194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.758593, 33.513294, 25.875008>,  <30.458960, 33.719559, 26.041363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758593, 33.513294, 25.875008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057702, 0.574607, -0.816393,
		0.659958, 0.635544, 0.400673,
		0.749083, -0.515666, -0.415889,
		30.983318, 33.358593, 25.750240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892054, 34.263401, 25.781914>,  <30.458960, 33.719559, 26.041363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892054, 34.263401, 25.781914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965221, 33.919487, 25.591208>,  <31.009123, 33.713139, 25.476784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965221, 33.919487, 25.591208>,  <30.892054, 34.263401, 25.781914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965221, 33.919487, 25.591208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185944, 0.445939, -0.875536,
		0.965383, 0.248806, -0.078301,
		0.182921, -0.859787, -0.476766,
		31.020098, 33.661552, 25.448177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554657, 34.450577, 25.388554>,  <30.892054, 34.263401, 25.781914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554657, 34.450577, 25.388554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361805, 34.146473, 25.214401>,  <31.246094, 33.964012, 25.109909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361805, 34.146473, 25.214401>,  <31.554657, 34.450577, 25.388554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361805, 34.146473, 25.214401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070813, 0.461511, -0.884304,
		0.873233, -0.457181, -0.168672,
		-0.482131, -0.760259, -0.435381,
		31.217165, 33.918396, 25.083788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644997, 34.485401, 24.602016>,  <31.554657, 34.450577, 25.388554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644997, 34.485401, 24.602016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372934, 34.192223, 24.596697>,  <31.209698, 34.016315, 24.593506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372934, 34.192223, 24.596697>,  <31.644997, 34.485401, 24.602016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372934, 34.192223, 24.596697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058366, 0.072227, -0.995679,
		0.730741, -0.676440, -0.091905,
		-0.680155, -0.732947, -0.013298,
		31.168888, 33.972340, 24.592707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873619, 33.986561, 24.124969>,  <31.644997, 34.485401, 24.602016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873619, 33.986561, 24.124969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477610, 33.952248, 24.169676>,  <31.240004, 33.931660, 24.196499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477610, 33.952248, 24.169676>,  <31.873619, 33.986561, 24.124969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477610, 33.952248, 24.169676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122822, 0.136834, -0.982950,
		0.069029, -0.986872, -0.146005,
		-0.990025, -0.085784, 0.111764,
		31.180603, 33.926514, 24.203205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580442, 33.450672, 23.645136>,  <31.873619, 33.986561, 24.124969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580442, 33.450672, 23.645136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285048, 33.706047, 23.731882>,  <31.107811, 33.859272, 23.783930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285048, 33.706047, 23.731882>,  <31.580442, 33.450672, 23.645136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285048, 33.706047, 23.731882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262063, 0.024573, -0.964738,
		-0.621256, -0.769280, 0.149164,
		-0.738488, 0.638439, 0.216866,
		31.063501, 33.897579, 23.796942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144426, 33.186890, 23.174435>,  <31.580442, 33.450672, 23.645136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144426, 33.186890, 23.174435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973835, 33.529476, 23.290770>,  <30.871481, 33.735027, 23.360571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973835, 33.529476, 23.290770>,  <31.144426, 33.186890, 23.174435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973835, 33.529476, 23.290770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238123, 0.203887, -0.949593,
		-0.872591, -0.474234, 0.116991,
		-0.426477, 0.856465, 0.290836,
		30.845892, 33.786415, 23.378019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497063, 33.193115, 22.845238>,  <31.144426, 33.186890, 23.174435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497063, 33.193115, 22.845238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555813, 33.577515, 22.938963>,  <30.591063, 33.808155, 22.995199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555813, 33.577515, 22.938963>,  <30.497063, 33.193115, 22.845238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555813, 33.577515, 22.938963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268166, 0.266698, -0.925721,
		-0.952111, 0.073129, 0.296879,
		0.146875, 0.961002, 0.234315,
		30.599874, 33.865814, 23.009258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933962, 33.497120, 22.637627>,  <30.497063, 33.193115, 22.845238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933962, 33.497120, 22.637627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178576, 33.812977, 22.657566>,  <30.325344, 34.002491, 22.669529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178576, 33.812977, 22.657566>,  <29.933962, 33.497120, 22.637627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178576, 33.812977, 22.657566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325880, 0.308782, -0.893564,
		-0.720990, 0.530202, 0.446160,
		0.611535, 0.789645, 0.049847,
		30.362036, 34.049870, 22.672520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518152, 34.003658, 22.344450>,  <29.933962, 33.497120, 22.637627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518152, 34.003658, 22.344450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899035, 34.116886, 22.298538>,  <30.127563, 34.184822, 22.270990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899035, 34.116886, 22.298538>,  <29.518152, 34.003658, 22.344450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899035, 34.116886, 22.298538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259928, 0.553522, -0.791234,
		-0.160442, 0.783252, 0.600645,
		0.952206, 0.283072, -0.114781,
		30.184696, 34.201809, 22.264105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450495, 34.716309, 22.199015>,  <29.518152, 34.003658, 22.344450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450495, 34.716309, 22.199015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807659, 34.587173, 22.073486>,  <30.021957, 34.509693, 21.998169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807659, 34.587173, 22.073486>,  <29.450495, 34.716309, 22.199015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807659, 34.587173, 22.073486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164612, 0.414677, -0.894956,
		0.419058, 0.850776, 0.317128,
		0.892913, -0.322836, -0.313821,
		30.075533, 34.490322, 21.979340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775579, 35.340221, 21.898491>,  <29.450495, 34.716309, 22.199015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775579, 35.340221, 21.898491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965128, 35.030910, 21.729971>,  <30.078857, 34.845325, 21.628859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965128, 35.030910, 21.729971>,  <29.775579, 35.340221, 21.898491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965128, 35.030910, 21.729971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044885, 0.456594, -0.888542,
		0.879448, 0.439966, 0.181660,
		0.473873, -0.773273, -0.421299,
		30.107290, 34.798927, 21.603580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266531, 35.623344, 21.424654>,  <29.775579, 35.340221, 21.898491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266531, 35.623344, 21.424654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.197817, 35.246838, 21.308374>,  <30.156588, 35.020935, 21.238605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.197817, 35.246838, 21.308374>,  <30.266531, 35.623344, 21.424654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197817, 35.246838, 21.308374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037979, 0.301196, -0.952805,
		0.984402, -0.152639, -0.087490,
		-0.171787, -0.941266, -0.290701,
		30.146280, 34.964458, 21.221165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770676, 35.485950, 20.991100>,  <30.266531, 35.623344, 21.424654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770676, 35.485950, 20.991100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471018, 35.233635, 20.910225>,  <30.291224, 35.082245, 20.861700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471018, 35.233635, 20.910225>,  <30.770676, 35.485950, 20.991100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471018, 35.233635, 20.910225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116083, 0.425531, -0.897468,
		0.652154, -0.648864, -0.392009,
		-0.749146, -0.630792, -0.202190,
		30.246273, 35.044395, 20.849567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855791, 35.192383, 20.278749>,  <30.770676, 35.485950, 20.991100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855791, 35.192383, 20.278749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468941, 35.146870, 20.369715>,  <30.236830, 35.119560, 20.424294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468941, 35.146870, 20.369715>,  <30.855791, 35.192383, 20.278749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468941, 35.146870, 20.369715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253555, 0.363557, -0.896402,
		0.019321, -0.924597, -0.380457,
		-0.967128, -0.113786, 0.227412,
		30.178802, 35.112732, 20.437939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582867, 34.913387, 19.741863>,  <30.855791, 35.192383, 20.278749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582867, 34.913387, 19.741863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.241957, 35.039993, 19.908451>,  <30.037411, 35.115955, 20.008404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.241957, 35.039993, 19.908451>,  <30.582867, 34.913387, 19.741863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241957, 35.039993, 19.908451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285007, 0.386638, -0.877087,
		-0.438635, -0.866215, -0.239312,
		-0.852273, 0.316516, 0.416470,
		29.986275, 35.134949, 20.033392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084076, 34.860943, 19.126207>,  <30.582867, 34.913387, 19.741863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084076, 34.860943, 19.126207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.897503, 35.076561, 19.406742>,  <29.785559, 35.205933, 19.575064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.897503, 35.076561, 19.406742>,  <30.084076, 34.860943, 19.126207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897503, 35.076561, 19.406742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483009, 0.509021, -0.712461,
		-0.741041, -0.671068, 0.022937,
		-0.466434, 0.539041, 0.701337,
		29.757572, 35.238274, 19.617144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319891, 34.855556, 18.951469>,  <30.084076, 34.860943, 19.126207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319891, 34.855556, 18.951469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.384130, 35.164669, 19.197075>,  <29.422674, 35.350136, 19.344439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.384130, 35.164669, 19.197075>,  <29.319891, 34.855556, 18.951469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384130, 35.164669, 19.197075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495760, 0.601079, -0.626838,
		-0.853481, -0.203734, 0.479648,
		0.160598, 0.772785, 0.614013,
		29.432310, 35.396503, 19.381279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725235, 35.251736, 18.961746>,  <29.319891, 34.855556, 18.951469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725235, 35.251736, 18.961746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.017845, 35.502003, 19.070126>,  <29.193411, 35.652164, 19.135153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.017845, 35.502003, 19.070126>,  <28.725235, 35.251736, 18.961746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017845, 35.502003, 19.070126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304806, 0.655565, -0.690890,
		-0.609891, 0.422816, 0.670268,
		0.731523, 0.625669, 0.270947,
		29.237303, 35.689705, 19.151409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367758, 35.855293, 18.963760>,  <28.725235, 35.251736, 18.961746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367758, 35.855293, 18.963760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.751116, 35.967747, 18.983513>,  <28.981131, 36.035221, 18.995365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.751116, 35.967747, 18.983513>,  <28.367758, 35.855293, 18.963760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751116, 35.967747, 18.983513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192628, 0.764681, -0.614945,
		-0.210645, 0.579849, 0.787022,
		0.958396, 0.281138, 0.049381,
		29.038635, 36.052090, 18.998327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341015, 36.616924, 19.194004>,  <28.367758, 35.855293, 18.963760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341015, 36.616924, 19.194004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678082, 36.514996, 19.004276>,  <28.880322, 36.453838, 18.890440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678082, 36.514996, 19.004276>,  <28.341015, 36.616924, 19.194004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678082, 36.514996, 19.004276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018825, 0.866437, -0.498932,
		0.538109, 0.429361, 0.725319,
		0.842665, -0.254825, -0.474320,
		28.930882, 36.438549, 18.861980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788271, 37.239529, 19.287376>,  <28.341015, 36.616924, 19.194004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788271, 37.239529, 19.287376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960577, 37.032875, 18.991396>,  <29.063961, 36.908882, 18.813807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960577, 37.032875, 18.991396>,  <28.788271, 37.239529, 19.287376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960577, 37.032875, 18.991396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313093, 0.854553, -0.414382,
		0.846413, -0.053172, 0.529866,
		0.430765, -0.516635, -0.739952,
		29.089806, 36.877884, 18.769411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313906, 37.496464, 18.777468>,  <28.788271, 37.239529, 19.287376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313906, 37.496464, 18.777468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.926733, 37.596905, 18.774422>,  <27.694429, 37.657169, 18.772594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.926733, 37.596905, 18.774422>,  <28.313906, 37.496464, 18.777468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926733, 37.596905, 18.774422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001035, 0.026331, 0.999653,
		0.251216, 0.967602, -0.025226,
		-0.967930, 0.251103, -0.007616,
		27.636354, 37.672237, 18.772137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188154, 38.005821, 19.183741>,  <28.313906, 37.496464, 18.777468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188154, 38.005821, 19.183741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835743, 37.817215, 19.168444>,  <27.624296, 37.704052, 19.159266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835743, 37.817215, 19.168444>,  <28.188154, 38.005821, 19.183741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835743, 37.817215, 19.168444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008406, -0.065222, 0.997835,
		-0.472993, 0.879440, 0.053499,
		-0.881026, -0.471520, -0.038242,
		27.571436, 37.675758, 19.156971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818275, 38.200752, 19.719040>,  <28.188154, 38.005821, 19.183741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818275, 38.200752, 19.719040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.642519, 37.854824, 19.621868>,  <27.537066, 37.647266, 19.563566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.642519, 37.854824, 19.621868>,  <27.818275, 38.200752, 19.719040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642519, 37.854824, 19.621868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132323, -0.205169, 0.969740,
		-0.888497, 0.458239, -0.024287,
		-0.439390, -0.864825, -0.242928,
		27.510702, 37.595375, 19.548990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115976, 38.194286, 20.105213>,  <27.818275, 38.200752, 19.719040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115976, 38.194286, 20.105213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.255260, 37.827927, 20.025330>,  <27.338831, 37.608112, 19.977400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.255260, 37.827927, 20.025330>,  <27.115976, 38.194286, 20.105213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255260, 37.827927, 20.025330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049125, -0.194922, 0.979588,
		-0.936128, -0.350913, -0.022881,
		0.348210, -0.915896, -0.199711,
		27.359724, 37.553158, 19.965416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773298, 37.737370, 20.600649>,  <27.115976, 38.194286, 20.105213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773298, 37.737370, 20.600649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093063, 37.535759, 20.469870>,  <27.284924, 37.414795, 20.391401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093063, 37.535759, 20.469870>,  <26.773298, 37.737370, 20.600649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093063, 37.535759, 20.469870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118645, -0.401044, 0.908343,
		-0.588948, -0.764934, -0.260800,
		0.799415, -0.504024, -0.326950,
		27.332888, 37.384552, 20.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668875, 37.183132, 20.963814>,  <26.773298, 37.737370, 20.600649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668875, 37.183132, 20.963814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050665, 37.180061, 20.844538>,  <27.279739, 37.178219, 20.772972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050665, 37.180061, 20.844538>,  <26.668875, 37.183132, 20.963814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050665, 37.180061, 20.844538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240517, -0.571485, 0.784574,
		-0.176432, -0.820576, -0.543623,
		0.954475, -0.007673, -0.298191,
		27.337008, 37.177761, 20.755081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962917, 36.506077, 20.792170>,  <26.668875, 37.183132, 20.963814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962917, 36.506077, 20.792170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296259, 36.709526, 20.878725>,  <27.496264, 36.831596, 20.930658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296259, 36.709526, 20.878725>,  <26.962917, 36.506077, 20.792170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296259, 36.709526, 20.878725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335815, -0.776841, 0.532678,
		0.439033, -0.371243, -0.818186,
		0.833354, 0.508623, 0.216390,
		27.546265, 36.862114, 20.943642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369898, 35.984921, 20.800310>,  <26.962917, 36.506077, 20.792170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369898, 35.984921, 20.800310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.590767, 36.256863, 20.993351>,  <27.723289, 36.420029, 21.109175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.590767, 36.256863, 20.993351>,  <27.369898, 35.984921, 20.800310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590767, 36.256863, 20.993351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320709, -0.707510, 0.629742,
		0.769577, -0.192952, -0.608704,
		0.552175, 0.679852, 0.482602,
		27.756420, 36.460819, 21.138132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114735, 35.641582, 20.981157>,  <27.369898, 35.984921, 20.800310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114735, 35.641582, 20.981157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.070555, 35.952591, 21.228790>,  <28.044046, 36.139194, 21.377371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.070555, 35.952591, 21.228790>,  <28.114735, 35.641582, 20.981157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070555, 35.952591, 21.228790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446396, -0.517723, 0.729859,
		0.887993, 0.356971, -0.289899,
		-0.110451, 0.777519, 0.619084,
		28.037420, 36.185848, 21.414516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708296, 35.617790, 21.390600>,  <28.114735, 35.641582, 20.981157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708296, 35.617790, 21.390600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.444624, 35.834778, 21.598911>,  <28.286421, 35.964970, 21.723898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.444624, 35.834778, 21.598911>,  <28.708296, 35.617790, 21.390600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444624, 35.834778, 21.598911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233354, -0.510786, 0.827432,
		0.714860, 0.666954, 0.210114,
		-0.659182, 0.542467, 0.520777,
		28.246870, 35.997517, 21.755144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062418, 35.919498, 21.917675>,  <28.708296, 35.617790, 21.390600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062418, 35.919498, 21.917675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689260, 35.914394, 22.061644>,  <28.465366, 35.911331, 22.148026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689260, 35.914394, 22.061644>,  <29.062418, 35.919498, 21.917675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689260, 35.914394, 22.061644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322204, -0.476071, 0.818255,
		0.160911, 0.879314, 0.448234,
		-0.932895, -0.012756, 0.359924,
		28.409391, 35.910568, 22.169621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075987, 36.122314, 22.627796>,  <29.062418, 35.919498, 21.917675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075987, 36.122314, 22.627796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.713352, 35.953522, 22.625578>,  <28.495771, 35.852245, 22.624247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.713352, 35.953522, 22.625578>,  <29.075987, 36.122314, 22.627796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713352, 35.953522, 22.625578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247855, -0.543042, 0.802292,
		-0.341563, 0.725974, 0.596906,
		-0.906588, -0.421980, -0.005547,
		28.441376, 35.826927, 22.623915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685770, 36.287251, 23.344398>,  <29.075987, 36.122314, 22.627796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685770, 36.287251, 23.344398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.566963, 35.960106, 23.147268>,  <28.495680, 35.763817, 23.028990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.566963, 35.960106, 23.147268>,  <28.685770, 36.287251, 23.344398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566963, 35.960106, 23.147268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246521, -0.564301, 0.787903,
		-0.922501, 0.112529, 0.369228,
		-0.297018, -0.817864, -0.492827,
		28.477858, 35.714748, 22.999420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220066, 36.022026, 23.698420>,  <28.685770, 36.287251, 23.344398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220066, 36.022026, 23.698420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.336365, 35.702091, 23.488382>,  <28.406143, 35.510128, 23.362360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.336365, 35.702091, 23.488382>,  <28.220066, 36.022026, 23.698420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336365, 35.702091, 23.488382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049866, -0.535389, 0.843132,
		-0.955500, -0.271322, -0.115778,
		0.290747, -0.799839, -0.525094,
		28.423588, 35.462139, 23.330854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900372, 35.480011, 24.087275>,  <28.220066, 36.022026, 23.698420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900372, 35.480011, 24.087275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.163929, 35.300735, 23.845617>,  <28.322063, 35.193172, 23.700623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.163929, 35.300735, 23.845617>,  <27.900372, 35.480011, 24.087275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163929, 35.300735, 23.845617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096712, -0.745993, 0.658894,
		-0.745993, -0.492569, -0.448185,
		-0.658894, 0.448185, 0.604143,
		28.361597, 35.166279, 23.664375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718237, 34.832409, 24.120041>,  <27.900372, 35.480011, 24.087275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718237, 34.832409, 24.120041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095846, 34.806553, 23.990648>,  <28.322412, 34.791039, 23.913013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095846, 34.806553, 23.990648>,  <27.718237, 34.832409, 24.120041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095846, 34.806553, 23.990648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178208, -0.725278, 0.664991,
		-0.277596, -0.685415, -0.673162,
		0.944025, -0.064636, -0.323481,
		28.379053, 34.787163, 23.893604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793734, 34.096722, 24.068380>,  <27.718237, 34.832409, 24.120041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793734, 34.096722, 24.068380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.162205, 34.250832, 24.090279>,  <28.383287, 34.343296, 24.103418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.162205, 34.250832, 24.090279>,  <27.793734, 34.096722, 24.068380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162205, 34.250832, 24.090279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260341, -0.714718, 0.649154,
		0.289228, -0.583734, -0.758684,
		0.921178, 0.385270, 0.054747,
		28.438559, 34.366413, 24.106703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281029, 33.501507, 24.041622>,  <27.793734, 34.096722, 24.068380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281029, 33.501507, 24.041622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.450132, 33.803123, 24.242699>,  <28.551594, 33.984093, 24.363344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.450132, 33.803123, 24.242699>,  <28.281029, 33.501507, 24.041622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450132, 33.803123, 24.242699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131416, -0.599842, 0.789252,
		0.896663, -0.267603, -0.352682,
		0.422759, 0.754041, 0.502689,
		28.576960, 34.029335, 24.393505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885754, 33.206600, 24.385963>,  <28.281029, 33.501507, 24.041622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885754, 33.206600, 24.385963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.814548, 33.541889, 24.592144>,  <28.771826, 33.743065, 24.715853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.814548, 33.541889, 24.592144>,  <28.885754, 33.206600, 24.385963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814548, 33.541889, 24.592144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039208, -0.517358, 0.854870,
		0.983247, 0.172387, 0.059231,
		-0.178012, 0.838226, 0.515449,
		28.761145, 33.793358, 24.746778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353096, 33.121899, 24.829187>,  <28.885754, 33.206600, 24.385963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353096, 33.121899, 24.829187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070768, 33.367043, 24.971296>,  <28.901371, 33.514130, 25.056562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070768, 33.367043, 24.971296>,  <29.353096, 33.121899, 24.829187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070768, 33.367043, 24.971296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116654, -0.595231, 0.795042,
		0.698720, 0.519712, 0.491619,
		-0.705820, 0.612861, 0.355274,
		28.859022, 33.550900, 25.077879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.485550, 31.012648, 28.430626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.413174, 31.355167, 28.624125>,  <32.369747, 31.560678, 28.740225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.413174, 31.355167, 28.624125>,  <32.485550, 31.012648, 28.430626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413174, 31.355167, 28.624125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563167, -0.313033, 0.764757,
		0.806290, 0.410807, -0.425599,
		-0.180941, 0.856299, 0.483748,
		32.358891, 31.612057, 28.769249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135338, 31.164001, 28.934196>,  <32.485550, 31.012648, 28.430626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135338, 31.164001, 28.934196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855473, 31.426559, 29.047068>,  <32.687553, 31.584093, 29.114790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855473, 31.426559, 29.047068>,  <33.135338, 31.164001, 28.934196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855473, 31.426559, 29.047068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367925, -0.007550, 0.929825,
		0.612462, 0.754381, -0.236221,
		-0.699659, 0.656394, 0.282179,
		32.645576, 31.623478, 29.131721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540138, 31.699404, 29.222010>,  <33.135338, 31.164001, 28.934196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540138, 31.699404, 29.222010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.168861, 31.675261, 29.368879>,  <32.946095, 31.660774, 29.457001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.168861, 31.675261, 29.368879>,  <33.540138, 31.699404, 29.222010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168861, 31.675261, 29.368879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370339, -0.053955, 0.927328,
		-0.036161, 0.996717, 0.072433,
		-0.928192, -0.060358, 0.367172,
		32.890404, 31.657154, 29.479031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548420, 32.067520, 29.832558>,  <33.540138, 31.699404, 29.222010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548420, 32.067520, 29.832558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.217365, 31.847040, 29.874886>,  <33.018734, 31.714752, 29.900282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.217365, 31.847040, 29.874886>,  <33.548420, 32.067520, 29.832558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217365, 31.847040, 29.874886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245630, -0.186179, 0.951316,
		-0.504665, 0.813335, 0.289480,
		-0.827634, -0.551201, 0.105821,
		32.969074, 31.681679, 29.906631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162556, 32.174416, 30.608759>,  <33.548420, 32.067520, 29.832558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162556, 32.174416, 30.608759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.033054, 31.824709, 30.464071>,  <32.955353, 31.614885, 30.377258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.033054, 31.824709, 30.464071>,  <33.162556, 32.174416, 30.608759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033054, 31.824709, 30.464071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244698, -0.446674, 0.860584,
		-0.913951, 0.190105, 0.358544,
		-0.323754, -0.874267, -0.361720,
		32.935928, 31.562429, 30.355555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855156, 31.952860, 31.143812>,  <33.162556, 32.174416, 30.608759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855156, 31.952860, 31.143812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.847355, 31.622368, 30.918615>,  <32.842674, 31.424072, 30.783497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.847355, 31.622368, 30.918615>,  <32.855156, 31.952860, 31.143812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847355, 31.622368, 30.918615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062614, -0.563003, 0.824080,
		-0.997847, -0.019183, 0.062711,
		-0.019499, -0.826232, -0.562992,
		32.841507, 31.374498, 30.749718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368992, 31.697886, 31.436350>,  <32.855156, 31.952860, 31.143812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368992, 31.697886, 31.436350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.568703, 31.419703, 31.229639>,  <32.688530, 31.252792, 31.105612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.568703, 31.419703, 31.229639>,  <32.368992, 31.697886, 31.436350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568703, 31.419703, 31.229639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023457, -0.585371, 0.810426,
		-0.866124, -0.416750, -0.275950,
		0.499278, -0.695457, -0.516779,
		32.718487, 31.211065, 31.074606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032063, 30.968174, 31.551226>,  <32.368992, 31.697886, 31.436350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032063, 30.968174, 31.551226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.397343, 30.879158, 31.414675>,  <32.616512, 30.825748, 31.332745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.397343, 30.879158, 31.414675>,  <32.032063, 30.968174, 31.551226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397343, 30.879158, 31.414675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093207, -0.701451, 0.706597,
		-0.396707, -0.677084, -0.619824,
		0.913201, -0.222540, -0.341379,
		32.671303, 30.812395, 31.312262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089130, 30.260180, 31.589460>,  <32.032063, 30.968174, 31.551226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089130, 30.260180, 31.589460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.456150, 30.419094, 31.595970>,  <32.676361, 30.514442, 31.599876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.456150, 30.419094, 31.595970>,  <32.089130, 30.260180, 31.589460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456150, 30.419094, 31.595970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160618, -0.407777, 0.898844,
		0.363738, -0.822119, -0.437967,
		0.917550, 0.397289, 0.016277,
		32.731415, 30.538280, 31.600853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542789, 29.741154, 31.605167>,  <32.089130, 30.260180, 31.589460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542789, 29.741154, 31.605167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.749649, 30.049551, 31.753828>,  <32.873764, 30.234589, 31.843025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.749649, 30.049551, 31.753828>,  <32.542789, 29.741154, 31.605167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749649, 30.049551, 31.753828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233770, -0.544954, 0.805218,
		0.823352, -0.329536, -0.462057,
		0.517149, 0.770993, 0.371654,
		32.904793, 30.280849, 31.865324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117821, 29.419317, 31.942627>,  <32.542789, 29.741154, 31.605167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117821, 29.419317, 31.942627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101788, 29.784788, 32.104412>,  <33.092167, 30.004070, 32.201481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101788, 29.784788, 32.104412>,  <33.117821, 29.419317, 31.942627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101788, 29.784788, 32.104412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400912, -0.356069, 0.844088,
		0.915240, 0.195984, -0.352033,
		-0.040080, 0.913677, 0.404461,
		33.089764, 30.058891, 32.225750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837646, 29.559605, 32.083115>,  <33.117821, 29.419317, 31.942627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837646, 29.559605, 32.083115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.592823, 29.780161, 32.309868>,  <33.445930, 29.912495, 32.445919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.592823, 29.780161, 32.309868>,  <33.837646, 29.559605, 32.083115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592823, 29.780161, 32.309868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340538, -0.463201, 0.818217,
		0.713739, 0.693839, 0.095734,
		-0.612054, 0.551392, 0.566883,
		33.409206, 29.945580, 32.479931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192127, 29.868710, 32.747795>,  <33.837646, 29.559605, 32.083115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192127, 29.868710, 32.747795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.806953, 29.818542, 32.843315>,  <33.575848, 29.788443, 32.900627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.806953, 29.818542, 32.843315>,  <34.192127, 29.868710, 32.747795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806953, 29.818542, 32.843315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268620, -0.365520, 0.891201,
		-0.024485, 0.922316, 0.385661,
		-0.962935, -0.125417, 0.238803,
		33.518074, 29.780918, 32.914955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713615, 30.205938, 33.174980>,  <34.192127, 29.868710, 32.747795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713615, 30.205938, 33.174980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.737072, 30.275864, 32.781837>,  <34.751144, 30.317820, 32.545952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.737072, 30.275864, 32.781837>,  <34.713615, 30.205938, 33.174980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737072, 30.275864, 32.781837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466561, 0.865604, 0.181797,
		0.882543, -0.469222, -0.030800,
		0.058642, 0.174813, -0.982854,
		34.754665, 30.328308, 32.486980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407215, 30.329092, 33.314762>,  <34.713615, 30.205938, 33.174980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407215, 30.329092, 33.314762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770298, 30.485815, 33.374836>,  <35.988148, 30.579849, 33.410881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770298, 30.485815, 33.374836>,  <35.407215, 30.329092, 33.314762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770298, 30.485815, 33.374836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187163, 0.698397, -0.690805,
		-0.375551, 0.598939, 0.707272,
		0.907707, 0.391808, 0.150185,
		36.042610, 30.603357, 33.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340874, 31.034790, 33.245686>,  <35.407215, 30.329092, 33.314762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340874, 31.034790, 33.245686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736164, 30.977003, 33.225540>,  <35.973339, 30.942331, 33.213455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736164, 30.977003, 33.225540>,  <35.340874, 31.034790, 33.245686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736164, 30.977003, 33.225540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055587, 0.645724, -0.761545,
		0.142537, 0.749781, 0.646152,
		0.988227, -0.144466, -0.050362,
		36.032631, 30.933662, 33.210430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628403, 31.716839, 33.220776>,  <35.340874, 31.034790, 33.245686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628403, 31.716839, 33.220776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.884979, 31.457476, 33.056767>,  <36.038925, 31.301857, 32.958359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.884979, 31.457476, 33.056767>,  <35.628403, 31.716839, 33.220776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884979, 31.457476, 33.056767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002022, 0.533031, -0.846093,
		0.767170, 0.543547, 0.340596,
		0.641440, -0.648409, -0.410025,
		36.077412, 31.262953, 32.933758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036980, 32.092163, 32.803528>,  <35.628403, 31.716839, 33.220776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036980, 32.092163, 32.803528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106686, 31.728634, 32.651913>,  <36.148510, 31.510515, 32.560944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106686, 31.728634, 32.651913>,  <36.036980, 32.092163, 32.803528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106686, 31.728634, 32.651913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033409, 0.390163, -0.920140,
		0.984132, 0.147684, 0.098354,
		0.174264, -0.908824, -0.379038,
		36.158966, 31.455986, 32.538200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605682, 32.199844, 32.351124>,  <36.036980, 32.092163, 32.803528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605682, 32.199844, 32.351124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425900, 31.856359, 32.252659>,  <36.318027, 31.650269, 32.193581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.425900, 31.856359, 32.252659>,  <36.605682, 32.199844, 32.351124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425900, 31.856359, 32.252659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051899, 0.249999, -0.966854,
		0.891791, -0.447338, -0.067798,
		-0.449461, -0.858714, -0.246163,
		36.291061, 31.598745, 32.178810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992329, 31.977808, 31.826162>,  <36.605682, 32.199844, 32.351124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992329, 31.977808, 31.826162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.644527, 31.783659, 31.789551>,  <36.435848, 31.667170, 31.767584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.644527, 31.783659, 31.789551>,  <36.992329, 31.977808, 31.826162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644527, 31.783659, 31.789551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003780, 0.191845, -0.981418,
		0.493914, -0.852999, -0.168644,
		-0.869502, -0.485374, -0.091531,
		36.383678, 31.638046, 31.762091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933689, 31.696796, 31.199593>,  <36.992329, 31.977808, 31.826162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933689, 31.696796, 31.199593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540829, 31.661087, 31.265818>,  <36.305111, 31.639662, 31.305552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540829, 31.661087, 31.265818>,  <36.933689, 31.696796, 31.199593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540829, 31.661087, 31.265818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176155, 0.127927, -0.976014,
		0.065950, -0.987758, -0.141370,
		-0.982151, -0.089271, 0.165561,
		36.246185, 31.634304, 31.315485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670719, 31.236050, 30.684538>,  <36.933689, 31.696796, 31.199593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670719, 31.236050, 30.684538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.346863, 31.440634, 30.799702>,  <36.152550, 31.563385, 30.868799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.346863, 31.440634, 30.799702>,  <36.670719, 31.236050, 30.684538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346863, 31.440634, 30.799702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207652, 0.209196, -0.955572,
		-0.548967, -0.833454, -0.063167,
		-0.809639, 0.511461, 0.287910,
		36.103970, 31.594072, 30.886074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154335, 31.067656, 30.178934>,  <36.670719, 31.236050, 30.684538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154335, 31.067656, 30.178934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.042274, 31.405676, 30.361101>,  <35.975037, 31.608488, 30.470402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.042274, 31.405676, 30.361101>,  <36.154335, 31.067656, 30.178934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042274, 31.405676, 30.361101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356999, 0.348672, -0.866591,
		-0.891104, -0.405360, 0.204002,
		-0.280152, 0.845051, 0.455416,
		35.958229, 31.659191, 30.497726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550285, 31.100306, 29.949614>,  <36.154335, 31.067656, 30.178934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550285, 31.100306, 29.949614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.633945, 31.468914, 30.080488>,  <35.684143, 31.690079, 30.159014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.633945, 31.468914, 30.080488>,  <35.550285, 31.100306, 29.949614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633945, 31.468914, 30.080488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409855, 0.386390, -0.826270,
		-0.887848, 0.038715, 0.458504,
		0.209150, 0.921523, 0.327188,
		35.696690, 31.745371, 30.178644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899929, 31.485497, 29.880459>,  <35.550285, 31.100306, 29.949614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899929, 31.485497, 29.880459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.155556, 31.793039, 29.889040>,  <35.308929, 31.977564, 29.894188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.155556, 31.793039, 29.889040>,  <34.899929, 31.485497, 29.880459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155556, 31.793039, 29.889040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539194, 0.467711, -0.700369,
		-0.548515, 0.436014, 0.713459,
		0.639063, 0.768856, 0.021451,
		35.347275, 32.023697, 29.895475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449776, 32.126266, 29.701950>,  <34.899929, 31.485497, 29.880459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449776, 32.126266, 29.701950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.823967, 32.261879, 29.662062>,  <35.048481, 32.343246, 29.638128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.823967, 32.261879, 29.662062>,  <34.449776, 32.126266, 29.701950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823967, 32.261879, 29.662062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309150, 0.648390, -0.695712,
		-0.171212, 0.681650, 0.711365,
		0.935474, 0.339033, -0.099720,
		35.104610, 32.363590, 29.632145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416145, 32.990200, 29.713959>,  <34.449776, 32.126266, 29.701950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416145, 32.990200, 29.713959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.745468, 32.855453, 29.531229>,  <34.943062, 32.774605, 29.421591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.745468, 32.855453, 29.531229>,  <34.416145, 32.990200, 29.713959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745468, 32.855453, 29.531229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188987, 0.596225, -0.780256,
		0.535213, 0.728723, 0.427212,
		0.823305, -0.336865, -0.456826,
		34.992458, 32.754395, 29.394180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646812, 33.564644, 29.414354>,  <34.416145, 32.990200, 29.713959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646812, 33.564644, 29.414354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.824593, 33.266331, 29.215847>,  <34.931259, 33.087345, 29.096743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.824593, 33.266331, 29.215847>,  <34.646812, 33.564644, 29.414354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824593, 33.266331, 29.215847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193486, 0.460995, -0.866052,
		0.874660, 0.480935, 0.060590,
		0.444446, -0.745778, -0.496268,
		34.957928, 33.042599, 29.066967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784340, 34.189903, 29.803547>,  <34.646812, 33.564644, 29.414354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784340, 34.189903, 29.803547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.654495, 34.554451, 29.904764>,  <34.576588, 34.773178, 29.965494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.654495, 34.554451, 29.904764>,  <34.784340, 34.189903, 29.803547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654495, 34.554451, 29.904764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316097, -0.356679, 0.879126,
		0.891465, 0.205388, 0.403864,
		-0.324612, 0.911370, 0.253045,
		34.557110, 34.827862, 29.980677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933006, 34.176960, 30.495218>,  <34.784340, 34.189903, 29.803547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933006, 34.176960, 30.495218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.677994, 34.483566, 30.464245>,  <34.524986, 34.667530, 30.445662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.677994, 34.483566, 30.464245>,  <34.933006, 34.176960, 30.495218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677994, 34.483566, 30.464245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347558, -0.196457, 0.916847,
		0.687569, 0.611435, 0.391659,
		-0.637536, 0.766520, -0.077432,
		34.486732, 34.713524, 30.441015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920555, 34.487892, 31.143215>,  <34.933006, 34.176960, 30.495218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920555, 34.487892, 31.143215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578979, 34.612988, 30.976851>,  <34.374035, 34.688046, 30.877031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578979, 34.612988, 30.976851>,  <34.920555, 34.487892, 31.143215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578979, 34.612988, 30.976851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493954, -0.235743, 0.836919,
		0.163687, 0.920120, 0.355788,
		-0.853941, 0.312736, -0.415909,
		34.322796, 34.706810, 30.852077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569530, 34.835152, 31.677891>,  <34.920555, 34.487892, 31.143215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569530, 34.835152, 31.677891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277599, 34.746666, 31.419151>,  <34.102440, 34.693573, 31.263908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277599, 34.746666, 31.419151>,  <34.569530, 34.835152, 31.677891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277599, 34.746666, 31.419151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618138, -0.190586, 0.762615,
		-0.291981, 0.956421, 0.002356,
		-0.729830, -0.221213, -0.646848,
		34.058651, 34.680302, 31.225098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859402, 35.046455, 31.985397>,  <34.569530, 34.835152, 31.677891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859402, 35.046455, 31.985397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762493, 34.775539, 31.707523>,  <33.704350, 34.612991, 31.540800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762493, 34.775539, 31.707523>,  <33.859402, 35.046455, 31.985397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762493, 34.775539, 31.707523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453473, -0.553941, 0.698220,
		-0.857710, 0.484180, -0.172927,
		-0.242272, -0.677288, -0.694683,
		33.689812, 34.572353, 31.499119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123226, 34.996807, 32.015961>,  <33.859402, 35.046455, 31.985397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123226, 34.996807, 32.015961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.219387, 34.649963, 31.841457>,  <33.277084, 34.441856, 31.736753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.219387, 34.649963, 31.841457>,  <33.123226, 34.996807, 32.015961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219387, 34.649963, 31.841457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504750, -0.495571, 0.706850,
		-0.829116, 0.050275, -0.556811,
		0.240403, -0.867111, -0.436263,
		33.291508, 34.389832, 31.710579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566189, 34.540752, 32.081646>,  <33.123226, 34.996807, 32.015961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566189, 34.540752, 32.081646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874863, 34.295235, 32.015011>,  <33.060066, 34.147923, 31.975031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874863, 34.295235, 32.015011>,  <32.566189, 34.540752, 32.081646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874863, 34.295235, 32.015011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321346, -0.602322, 0.730716,
		-0.548848, -0.510354, -0.662046,
		0.771688, -0.613797, -0.166583,
		33.106369, 34.111095, 31.965034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278053, 34.000896, 31.759253>,  <32.566189, 34.540752, 32.081646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278053, 34.000896, 31.759253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.617092, 33.887928, 31.938948>,  <32.820515, 33.820148, 32.046764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.617092, 33.887928, 31.938948>,  <32.278053, 34.000896, 31.759253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617092, 33.887928, 31.938948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524185, -0.577231, 0.626126,
		0.082484, -0.766188, -0.637300,
		0.847600, -0.282418, 0.449237,
		32.871372, 33.803204, 32.073719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061787, 33.383205, 32.131184>,  <32.278053, 34.000896, 31.759253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061787, 33.383205, 32.131184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.421757, 33.468277, 32.283443>,  <32.637741, 33.519321, 32.374798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.421757, 33.468277, 32.283443>,  <32.061787, 33.383205, 32.131184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421757, 33.468277, 32.283443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158323, -0.654018, 0.739726,
		0.406280, -0.725966, -0.554897,
		0.899928, 0.212683, 0.380651,
		32.691734, 33.532082, 32.397640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519135, 32.691795, 32.176487>,  <32.061787, 33.383205, 32.131184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519135, 32.691795, 32.176487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.623856, 32.981468, 32.431679>,  <32.686687, 33.155273, 32.584793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.623856, 32.981468, 32.431679>,  <32.519135, 32.691795, 32.176487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623856, 32.981468, 32.431679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298820, -0.567728, 0.767067,
		0.917696, -0.391459, 0.067769,
		0.261801, 0.724186, 0.637977,
		32.702396, 33.198723, 32.623074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668903, 32.294476, 32.733418>,  <32.519135, 32.691795, 32.176487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668903, 32.294476, 32.733418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.660557, 32.668079, 32.876072>,  <32.655548, 32.892242, 32.961662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.660557, 32.668079, 32.876072>,  <32.668903, 32.294476, 32.733418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660557, 32.668079, 32.876072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260610, -0.349460, 0.899978,
		0.965219, -0.074166, 0.250704,
		-0.020863, 0.934012, 0.356634,
		32.654297, 32.948284, 32.983063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811035, 32.178558, 33.385735>,  <32.668903, 32.294476, 32.733418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811035, 32.178558, 33.385735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.683895, 32.555870, 33.424095>,  <32.607613, 32.782257, 33.447113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.683895, 32.555870, 33.424095>,  <32.811035, 32.178558, 33.385735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683895, 32.555870, 33.424095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167805, -0.155519, 0.973476,
		0.933175, 0.293323, 0.207718,
		-0.317847, 0.943279, 0.095905,
		32.588539, 32.838852, 33.452866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.037800, 36.548286, 26.732180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657070, 36.614571, 26.835382>,  <34.428631, 36.654339, 26.897305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657070, 36.614571, 26.835382>,  <35.037800, 36.548286, 26.732180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657070, 36.614571, 26.835382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246567, -0.086622, 0.965247,
		0.182297, 0.982364, 0.041591,
		-0.951826, 0.165706, 0.258009,
		34.371521, 36.664284, 26.912785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097252, 36.988880, 27.425436>,  <35.037800, 36.548286, 26.732180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097252, 36.988880, 27.425436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726883, 36.839722, 27.401390>,  <34.504662, 36.750225, 27.386963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726883, 36.839722, 27.401390>,  <35.097252, 36.988880, 27.425436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726883, 36.839722, 27.401390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003296, -0.151176, 0.988501,
		-0.377700, 0.915473, 0.138749,
		-0.925922, -0.372900, -0.060117,
		34.449108, 36.727852, 27.383354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810581, 37.173534, 28.110704>,  <35.097252, 36.988880, 27.425436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810581, 37.173534, 28.110704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562733, 36.894119, 27.967535>,  <34.414024, 36.726471, 27.881634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562733, 36.894119, 27.967535>,  <34.810581, 37.173534, 28.110704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562733, 36.894119, 27.967535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113297, -0.371636, 0.921439,
		-0.776679, 0.611497, 0.151132,
		-0.619623, -0.698540, -0.357923,
		34.376846, 36.684559, 27.860159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193909, 37.239426, 28.553230>,  <34.810581, 37.173534, 28.110704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193909, 37.239426, 28.553230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249363, 36.879822, 28.387072>,  <34.282635, 36.664059, 28.287376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249363, 36.879822, 28.387072>,  <34.193909, 37.239426, 28.553230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249363, 36.879822, 28.387072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131274, -0.432428, 0.892061,
		-0.981604, -0.069143, -0.177968,
		0.138638, -0.899014, -0.415396,
		34.290955, 36.610119, 28.262453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786652, 37.006969, 28.940924>,  <34.193909, 37.239426, 28.553230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786652, 37.006969, 28.940924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977520, 36.690769, 28.787342>,  <34.092041, 36.501049, 28.695194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977520, 36.690769, 28.787342>,  <33.786652, 37.006969, 28.940924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977520, 36.690769, 28.787342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032401, -0.420777, 0.906585,
		-0.878215, -0.445033, -0.175168,
		0.477167, -0.790501, -0.383952,
		34.120670, 36.453617, 28.672157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479954, 36.300270, 29.160807>,  <33.786652, 37.006969, 28.940924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479954, 36.300270, 29.160807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856354, 36.220856, 29.051180>,  <34.082191, 36.173206, 28.985405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856354, 36.220856, 29.051180>,  <33.479954, 36.300270, 29.160807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856354, 36.220856, 29.051180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130335, -0.534768, 0.834887,
		-0.312313, -0.821345, -0.477339,
		0.940996, -0.198532, -0.274065,
		34.138653, 36.161297, 28.968960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558994, 35.583225, 29.413465>,  <33.479954, 36.300270, 29.160807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558994, 35.583225, 29.413465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937973, 35.657291, 29.309109>,  <34.165359, 35.701729, 29.246494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937973, 35.657291, 29.309109>,  <33.558994, 35.583225, 29.413465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937973, 35.657291, 29.309109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304191, -0.773966, 0.555378,
		-0.099087, -0.605550, -0.789615,
		0.947444, 0.185163, -0.260892,
		34.222206, 35.712841, 29.230841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916733, 35.006027, 29.046013>,  <33.558994, 35.583225, 29.413465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916733, 35.006027, 29.046013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204559, 35.235622, 29.202353>,  <34.377254, 35.373379, 29.296156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204559, 35.235622, 29.202353>,  <33.916733, 35.006027, 29.046013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204559, 35.235622, 29.202353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286380, -0.758034, 0.585979,
		0.632618, -0.309721, -0.709836,
		0.719569, 0.573984, 0.390848,
		34.420429, 35.407818, 29.319607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465389, 34.550644, 29.004526>,  <33.916733, 35.006027, 29.046013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465389, 34.550644, 29.004526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504299, 34.824017, 29.293930>,  <34.527645, 34.988041, 29.467571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504299, 34.824017, 29.293930>,  <34.465389, 34.550644, 29.004526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504299, 34.824017, 29.293930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041956, -0.723494, 0.689054,
		0.994373, -0.097384, -0.041706,
		0.097277, 0.683427, 0.723509,
		34.533482, 35.029045, 29.510983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039093, 33.961517, 28.945450>,  <34.465389, 34.550644, 29.004526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039093, 33.961517, 28.945450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021545, 33.581955, 28.820448>,  <35.011017, 33.354218, 28.745447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021545, 33.581955, 28.820448>,  <35.039093, 33.961517, 28.945450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021545, 33.581955, 28.820448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299862, 0.310889, -0.901904,
		0.952973, 0.054145, -0.298177,
		-0.043866, -0.948903, -0.312505,
		35.008385, 33.297283, 28.726696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373833, 33.928761, 28.362715>,  <35.039093, 33.961517, 28.945450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373833, 33.928761, 28.362715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125786, 33.615025, 28.356230>,  <34.976955, 33.426785, 28.352339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125786, 33.615025, 28.356230>,  <35.373833, 33.928761, 28.362715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125786, 33.615025, 28.356230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276130, 0.237563, -0.931298,
		0.734305, -0.573041, -0.363897,
		-0.620120, -0.784339, -0.016210,
		34.939751, 33.379723, 28.351366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452209, 33.710663, 27.687378>,  <35.373833, 33.928761, 28.362715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452209, 33.710663, 27.687378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116432, 33.521759, 27.794939>,  <34.914967, 33.408417, 27.859476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116432, 33.521759, 27.794939>,  <35.452209, 33.710663, 27.687378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116432, 33.521759, 27.794939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371892, 0.138389, -0.917902,
		0.396275, -0.870528, -0.291799,
		-0.839442, -0.472259, 0.268903,
		34.864601, 33.380081, 27.875610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375702, 33.150188, 27.198183>,  <35.452209, 33.710663, 27.687378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375702, 33.150188, 27.198183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009151, 33.184307, 27.354633>,  <34.789223, 33.204777, 27.448503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009151, 33.184307, 27.354633>,  <35.375702, 33.150188, 27.198183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009151, 33.184307, 27.354633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381532, 0.109695, -0.917824,
		-0.121190, -0.990299, -0.067979,
		-0.916377, 0.085294, 0.391124,
		34.734238, 33.209896, 27.471972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873127, 32.568764, 26.889809>,  <35.375702, 33.150188, 27.198183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873127, 32.568764, 26.889809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686779, 32.903694, 27.004251>,  <34.574970, 33.104652, 27.072918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686779, 32.903694, 27.004251>,  <34.873127, 32.568764, 26.889809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686779, 32.903694, 27.004251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237633, 0.193068, -0.951974,
		-0.852348, -0.511483, 0.109031,
		-0.465868, 0.837323, 0.286106,
		34.547020, 33.154892, 27.090084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321869, 32.570911, 26.505909>,  <34.873127, 32.568764, 26.889809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321869, 32.570911, 26.505909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307766, 32.955433, 26.615194>,  <34.299305, 33.186146, 26.680765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307766, 32.955433, 26.615194>,  <34.321869, 32.570911, 26.505909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307766, 32.955433, 26.615194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253186, 0.255873, -0.932966,
		-0.966775, -0.102068, 0.234368,
		-0.035258, 0.961307, 0.273213,
		34.297188, 33.243824, 26.697159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715694, 32.807434, 26.247583>,  <34.321869, 32.570911, 26.505909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715694, 32.807434, 26.247583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931423, 33.133045, 26.333834>,  <34.060860, 33.328411, 26.385584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931423, 33.133045, 26.333834>,  <33.715694, 32.807434, 26.247583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931423, 33.133045, 26.333834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241493, 0.394812, -0.886456,
		-0.806730, 0.426013, 0.409511,
		0.539321, 0.814025, 0.215628,
		34.093220, 33.377254, 26.398521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280952, 33.456573, 26.185741>,  <33.715694, 32.807434, 26.247583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280952, 33.456573, 26.185741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658852, 33.579639, 26.140512>,  <33.885593, 33.653481, 26.113375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658852, 33.579639, 26.140512>,  <33.280952, 33.456573, 26.185741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658852, 33.579639, 26.140512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224994, 0.357814, -0.906282,
		-0.238371, 0.881653, 0.407268,
		0.944753, 0.307664, -0.113074,
		33.942276, 33.671940, 26.106590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183147, 34.077431, 25.917957>,  <33.280952, 33.456573, 26.185741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183147, 34.077431, 25.917957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561298, 33.989483, 25.821688>,  <33.788189, 33.936714, 25.763926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561298, 33.989483, 25.821688>,  <33.183147, 34.077431, 25.917957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561298, 33.989483, 25.821688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135266, 0.407160, -0.903285,
		0.296600, 0.886497, 0.355177,
		0.945374, -0.219871, -0.240676,
		33.844910, 33.923523, 25.749485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402531, 34.663174, 25.699421>,  <33.183147, 34.077431, 25.917957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402531, 34.663174, 25.699421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652851, 34.386250, 25.555710>,  <33.803043, 34.220097, 25.469482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652851, 34.386250, 25.555710>,  <33.402531, 34.663174, 25.699421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652851, 34.386250, 25.555710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217094, 0.287822, -0.932753,
		0.749162, 0.661715, 0.029823,
		0.625801, -0.692309, -0.359280,
		33.840591, 34.178558, 25.447926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692467, 34.975712, 25.126806>,  <33.402531, 34.663174, 25.699421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692467, 34.975712, 25.126806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810669, 34.603233, 25.041439>,  <33.881588, 34.379745, 24.990219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810669, 34.603233, 25.041439>,  <33.692467, 34.975712, 25.126806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810669, 34.603233, 25.041439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251877, 0.139552, -0.957645,
		0.921540, 0.336743, -0.193309,
		0.295504, -0.931198, -0.213420,
		33.899319, 34.323875, 24.977413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269375, 34.961788, 24.623400>,  <33.692467, 34.975712, 25.126806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269375, 34.961788, 24.623400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075439, 34.613602, 24.589436>,  <33.959076, 34.404690, 24.569057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075439, 34.613602, 24.589436>,  <34.269375, 34.961788, 24.623400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075439, 34.613602, 24.589436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259010, 0.235636, -0.936691,
		0.835370, -0.432154, -0.339706,
		-0.484842, -0.870471, -0.084911,
		33.929985, 34.352459, 24.563963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427071, 34.773796, 23.950108>,  <34.269375, 34.961788, 24.623400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427071, 34.773796, 23.950108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150433, 34.492420, 24.015669>,  <33.984447, 34.323593, 24.055006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150433, 34.492420, 24.015669>,  <34.427071, 34.773796, 23.950108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150433, 34.492420, 24.015669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214674, -0.016475, -0.976547,
		0.689642, -0.710564, -0.139616,
		-0.691599, -0.703439, 0.163902,
		33.942951, 34.281387, 24.064840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519001, 34.210781, 23.492132>,  <34.427071, 34.773796, 23.950108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519001, 34.210781, 23.492132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131382, 34.155834, 23.574183>,  <33.898811, 34.122864, 23.623413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131382, 34.155834, 23.574183>,  <34.519001, 34.210781, 23.492132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131382, 34.155834, 23.574183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201175, -0.042210, -0.978646,
		0.143095, -0.989620, 0.013268,
		-0.969047, -0.137370, 0.205127,
		33.840668, 34.114624, 23.635721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.982449, 36.120590, 25.659027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.379604, 36.167850, 25.653158>,  <26.617897, 36.196205, 25.649637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.379604, 36.167850, 25.653158>,  <25.982449, 36.120590, 25.659027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379604, 36.167850, 25.653158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089934, -0.663532, 0.742723,
		0.078017, -0.738760, -0.669438,
		0.992887, 0.118151, -0.014673,
		26.677471, 36.203297, 25.648756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150146, 35.497108, 25.687893>,  <25.982449, 36.120590, 25.659027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150146, 35.497108, 25.687893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.478636, 35.704357, 25.783508>,  <26.675730, 35.828705, 25.840878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.478636, 35.704357, 25.783508>,  <26.150146, 35.497108, 25.687893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478636, 35.704357, 25.783508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154310, -0.604969, 0.781154,
		0.549344, -0.604617, -0.576766,
		0.821225, 0.518123, 0.239038,
		26.725004, 35.859795, 25.855219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686661, 34.943501, 25.891773>,  <26.150146, 35.497108, 25.687893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686661, 34.943501, 25.891773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.775913, 35.297955, 26.054243>,  <26.829466, 35.510628, 26.151726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.775913, 35.297955, 26.054243>,  <26.686661, 34.943501, 25.891773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775913, 35.297955, 26.054243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141238, -0.441674, 0.885989,
		0.964502, -0.140326, -0.223707,
		0.223133, 0.886134, 0.406176,
		26.842854, 35.563793, 26.176096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323116, 34.827389, 26.155781>,  <26.686661, 34.943501, 25.891773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323116, 34.827389, 26.155781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.182594, 35.144962, 26.354277>,  <27.098282, 35.335506, 26.473373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.182594, 35.144962, 26.354277>,  <27.323116, 34.827389, 26.155781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182594, 35.144962, 26.354277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172677, -0.465987, 0.867778,
		0.920200, 0.390544, 0.026610,
		-0.351306, 0.793934, 0.496239,
		27.077202, 35.383144, 26.503149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819637, 34.928181, 26.622278>,  <27.323116, 34.827389, 26.155781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819637, 34.928181, 26.622278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.515207, 35.141357, 26.770189>,  <27.332550, 35.269264, 26.858936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.515207, 35.141357, 26.770189>,  <27.819637, 34.928181, 26.622278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515207, 35.141357, 26.770189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241844, -0.295826, 0.924120,
		0.601897, 0.792752, 0.096255,
		-0.761073, 0.532946, 0.369779,
		27.286886, 35.301243, 26.881123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106462, 35.437496, 27.126745>,  <27.819637, 34.928181, 26.622278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106462, 35.437496, 27.126745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.724751, 35.402290, 27.241011>,  <27.495724, 35.381168, 27.309570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.724751, 35.402290, 27.241011>,  <28.106462, 35.437496, 27.126745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724751, 35.402290, 27.241011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298000, -0.205358, 0.932215,
		-0.023385, 0.974721, 0.222198,
		-0.954279, -0.088015, 0.285664,
		27.438467, 35.375885, 27.326710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046978, 35.792450, 27.785788>,  <28.106462, 35.437496, 27.126745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046978, 35.792450, 27.785788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.727957, 35.551662, 27.770065>,  <27.536545, 35.407188, 27.760632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.727957, 35.551662, 27.770065>,  <28.046978, 35.792450, 27.785788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727957, 35.551662, 27.770065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219767, -0.350612, 0.910370,
		-0.561795, 0.717430, 0.411924,
		-0.797552, -0.601968, -0.039304,
		27.488691, 35.371071, 27.758274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663565, 35.825584, 28.459684>,  <28.046978, 35.792450, 27.785788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663565, 35.825584, 28.459684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.541437, 35.475140, 28.310442>,  <27.468161, 35.264874, 28.220896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.541437, 35.475140, 28.310442>,  <27.663565, 35.825584, 28.459684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541437, 35.475140, 28.310442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135890, -0.427892, 0.893556,
		-0.942503, 0.222120, 0.249699,
		-0.305321, -0.876111, -0.373106,
		27.449841, 35.212307, 28.198509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360189, 35.609646, 28.985380>,  <27.663565, 35.825584, 28.459684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360189, 35.609646, 28.985380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.407372, 35.268330, 28.782213>,  <27.435680, 35.063541, 28.660313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.407372, 35.268330, 28.782213>,  <27.360189, 35.609646, 28.985380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407372, 35.268330, 28.782213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192896, -0.482058, 0.854641,
		-0.974104, -0.198785, 0.107735,
		0.117955, -0.853290, -0.507919,
		27.442759, 35.012344, 28.629837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055992, 35.125298, 29.364170>,  <27.360189, 35.609646, 28.985380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055992, 35.125298, 29.364170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.283356, 34.879726, 29.145081>,  <27.419775, 34.732384, 29.013626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.283356, 34.879726, 29.145081>,  <27.055992, 35.125298, 29.364170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283356, 34.879726, 29.145081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180668, -0.556341, 0.811076,
		-0.802664, -0.559980, -0.205313,
		0.568410, -0.613927, -0.547725,
		27.453878, 34.695549, 28.980762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844034, 34.406258, 29.486965>,  <27.055992, 35.125298, 29.364170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844034, 34.406258, 29.486965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.210184, 34.383652, 29.327518>,  <27.429874, 34.370087, 29.231850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.210184, 34.383652, 29.327518>,  <26.844034, 34.406258, 29.486965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210184, 34.383652, 29.327518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326415, -0.475395, 0.816978,
		-0.235675, -0.877955, -0.416716,
		0.915375, -0.056518, -0.398616,
		27.484797, 34.366695, 29.207933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059917, 33.613609, 29.372719>,  <26.844034, 34.406258, 29.486965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059917, 33.613609, 29.372719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.388197, 33.840054, 29.403622>,  <27.585165, 33.975922, 29.422163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.388197, 33.840054, 29.403622>,  <27.059917, 33.613609, 29.372719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388197, 33.840054, 29.403622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261207, -0.492009, 0.830481,
		0.508157, -0.661395, -0.551664,
		0.820699, 0.566113, 0.077257,
		27.634407, 34.009888, 29.426798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470375, 33.142353, 29.752708>,  <27.059917, 33.613609, 29.372719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470375, 33.142353, 29.752708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.671705, 33.485996, 29.789789>,  <27.792503, 33.692184, 29.812038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.671705, 33.485996, 29.789789>,  <27.470375, 33.142353, 29.752708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671705, 33.485996, 29.789789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443710, -0.349021, 0.825412,
		0.741475, -0.374317, -0.556867,
		0.503325, 0.859110, 0.092702,
		27.822702, 33.743729, 29.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168549, 32.983017, 29.669563>,  <27.470375, 33.142353, 29.752708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168549, 32.983017, 29.669563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.166054, 33.322968, 29.880341>,  <28.164557, 33.526939, 30.006807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.166054, 33.322968, 29.880341>,  <28.168549, 32.983017, 29.669563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166054, 33.322968, 29.880341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529397, -0.444245, 0.722762,
		0.848351, 0.283469, -0.447152,
		-0.006236, 0.849878, 0.526943,
		28.164183, 33.577930, 30.038424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783834, 33.263634, 29.507215>,  <28.168549, 32.983017, 29.669563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783834, 33.263634, 29.507215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.031034, 32.972095, 29.389326>,  <29.179356, 32.797173, 29.318592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.031034, 32.972095, 29.389326>,  <28.783834, 33.263634, 29.507215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031034, 32.972095, 29.389326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277527, 0.148498, -0.949172,
		0.735563, 0.668383, -0.110502,
		0.618001, -0.728843, -0.294724,
		29.216434, 32.753441, 29.300909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284790, 33.634796, 28.983015>,  <28.783834, 33.263634, 29.507215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284790, 33.634796, 28.983015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.311384, 33.239880, 28.925274>,  <29.327341, 33.002930, 28.890629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.311384, 33.239880, 28.925274>,  <29.284790, 33.634796, 28.983015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311384, 33.239880, 28.925274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049285, 0.141249, -0.988747,
		0.996570, 0.072851, -0.039268,
		0.066484, -0.987290, -0.144355,
		29.331329, 32.943691, 28.881968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831648, 33.524326, 28.447464>,  <29.284790, 33.634796, 28.983015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831648, 33.524326, 28.447464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.620207, 33.185127, 28.432077>,  <29.493341, 32.981609, 28.422846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.620207, 33.185127, 28.432077>,  <29.831648, 33.524326, 28.447464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620207, 33.185127, 28.432077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043760, 0.072478, -0.996410,
		0.847741, -0.525022, -0.075420,
		-0.528603, -0.847997, -0.038468,
		29.461626, 32.930729, 28.420538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083092, 33.241455, 27.802238>,  <29.831648, 33.524326, 28.447464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083092, 33.241455, 27.802238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.740774, 33.046200, 27.870747>,  <29.535383, 32.929047, 27.911852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.740774, 33.046200, 27.870747>,  <30.083092, 33.241455, 27.802238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740774, 33.046200, 27.870747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229751, 0.062006, -0.971272,
		0.463498, -0.870560, -0.165215,
		-0.855795, -0.488141, 0.171272,
		29.484035, 32.899757, 27.922129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061554, 32.733700, 27.361099>,  <30.083092, 33.241455, 27.802238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061554, 32.733700, 27.361099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.680590, 32.793953, 27.467098>,  <29.452011, 32.830105, 27.530697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.680590, 32.793953, 27.467098>,  <30.061554, 32.733700, 27.361099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680590, 32.793953, 27.467098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224956, 0.239292, -0.944528,
		-0.205685, -0.959192, -0.194020,
		-0.952412, 0.150629, 0.264995,
		29.394867, 32.839142, 27.546597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722807, 32.426208, 26.829311>,  <30.061554, 32.733700, 27.361099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722807, 32.426208, 26.829311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.457354, 32.683926, 26.981354>,  <29.298082, 32.838554, 27.072578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.457354, 32.683926, 26.981354>,  <29.722807, 32.426208, 26.829311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457354, 32.683926, 26.981354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334113, 0.199336, -0.921213,
		-0.669299, -0.738344, 0.082981,
		-0.663631, 0.644292, 0.380106,
		29.258265, 32.877213, 27.095387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158459, 32.374352, 26.402128>,  <29.722807, 32.426208, 26.829311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158459, 32.374352, 26.402128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.085756, 32.718548, 26.592505>,  <29.042135, 32.925064, 26.706730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.085756, 32.718548, 26.592505>,  <29.158459, 32.374352, 26.402128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085756, 32.718548, 26.592505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289379, 0.415766, -0.862206,
		-0.939801, -0.294437, 0.173441,
		-0.181755, 0.860492, 0.475941,
		29.031229, 32.976696, 26.735287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527748, 32.693638, 26.070726>,  <29.158459, 32.374352, 26.402128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527748, 32.693638, 26.070726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.661375, 33.025600, 26.249460>,  <28.741550, 33.224777, 26.356701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.661375, 33.025600, 26.249460>,  <28.527748, 32.693638, 26.070726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661375, 33.025600, 26.249460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267074, 0.537987, -0.799526,
		-0.903920, 0.147757, 0.401369,
		0.334067, 0.829902, 0.446835,
		28.761595, 33.274570, 26.383511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015732, 33.152435, 26.088772>,  <28.527748, 32.693638, 26.070726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015732, 33.152435, 26.088772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.350451, 33.369804, 26.115496>,  <28.551281, 33.500225, 26.131531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.350451, 33.369804, 26.115496>,  <28.015732, 33.152435, 26.088772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350451, 33.369804, 26.115496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251467, 0.489856, -0.834748,
		-0.486348, 0.681714, 0.546563,
		0.836797, 0.543421, 0.066812,
		28.601490, 33.532829, 26.135540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768452, 33.846184, 25.761217>,  <28.015732, 33.152435, 26.088772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768452, 33.846184, 25.761217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.167934, 33.825974, 25.763395>,  <28.407625, 33.813847, 25.764702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.167934, 33.825974, 25.763395>,  <27.768452, 33.846184, 25.761217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167934, 33.825974, 25.763395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027565, 0.448569, -0.893323,
		0.042691, 0.892319, 0.449382,
		0.998708, -0.050524, 0.005447,
		28.467546, 33.810818, 25.765030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094666, 34.521244, 25.663757>,  <27.768452, 33.846184, 25.761217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094666, 34.521244, 25.663757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.342985, 34.255241, 25.497684>,  <28.491978, 34.095638, 25.398041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.342985, 34.255241, 25.497684>,  <28.094666, 34.521244, 25.663757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342985, 34.255241, 25.497684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007318, 0.524649, -0.851287,
		0.783935, 0.531517, 0.320835,
		0.620800, -0.665006, -0.415180,
		28.529224, 34.055740, 25.373131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606514, 34.904072, 25.379883>,  <28.094666, 34.521244, 25.663757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606514, 34.904072, 25.379883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.689289, 34.561237, 25.191172>,  <28.738955, 34.355537, 25.077944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.689289, 34.561237, 25.191172>,  <28.606514, 34.904072, 25.379883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689289, 34.561237, 25.191172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019076, 0.485660, -0.873939,
		0.978168, 0.171853, 0.116852,
		0.206940, -0.857088, -0.471779,
		28.751371, 34.304111, 25.049639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140604, 34.983868, 25.051096>,  <28.606514, 34.904072, 25.379883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140604, 34.983868, 25.051096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.956646, 34.699642, 24.838079>,  <28.846272, 34.529106, 24.710270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.956646, 34.699642, 24.838079>,  <29.140604, 34.983868, 25.051096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956646, 34.699642, 24.838079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059909, 0.623190, -0.779772,
		0.885950, -0.326710, -0.329172,
		-0.459896, -0.710559, -0.532542,
		28.818678, 34.486473, 24.678316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506979, 34.991066, 24.468689>,  <29.140604, 34.983868, 25.051096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506979, 34.991066, 24.468689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.171270, 34.805626, 24.355057>,  <28.969845, 34.694363, 24.286877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.171270, 34.805626, 24.355057>,  <29.506979, 34.991066, 24.468689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171270, 34.805626, 24.355057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045866, 0.580987, -0.812620,
		0.541772, -0.668981, -0.508870,
		-0.839273, -0.463594, -0.284079,
		28.919489, 34.666546, 24.269833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931835, 34.353218, 24.065577>,  <29.506979, 34.991066, 24.468689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931835, 34.353218, 24.065577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.295002, 34.213154, 23.973429>,  <30.512903, 34.129116, 23.918140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.295002, 34.213154, 23.973429>,  <29.931835, 34.353218, 24.065577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295002, 34.213154, 23.973429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118140, -0.313552, 0.942193,
		-0.402154, -0.882650, -0.243311,
		0.907918, -0.350162, -0.230372,
		30.567377, 34.108105, 23.904318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860258, 33.709332, 24.391953>,  <29.931835, 34.353218, 24.065577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860258, 33.709332, 24.391953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.250210, 33.774532, 24.331228>,  <30.484180, 33.813652, 24.294794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.250210, 33.774532, 24.331228>,  <29.860258, 33.709332, 24.391953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250210, 33.774532, 24.331228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196977, -0.312669, 0.929213,
		0.103993, -0.935772, -0.336921,
		0.974877, 0.162998, -0.151810,
		30.542673, 33.823433, 24.285685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142321, 33.185127, 24.739241>,  <29.860258, 33.709332, 24.391953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142321, 33.185127, 24.739241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.468189, 33.400845, 24.653948>,  <30.663712, 33.530273, 24.602772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.468189, 33.400845, 24.653948>,  <30.142321, 33.185127, 24.739241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468189, 33.400845, 24.653948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483942, -0.429615, 0.762385,
		0.319542, -0.724288, -0.610983,
		0.814674, 0.539294, -0.213233,
		30.712591, 33.562634, 24.589977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698435, 32.798069, 24.600245>,  <30.142321, 33.185127, 24.739241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698435, 32.798069, 24.600245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.864666, 33.139042, 24.727148>,  <30.964405, 33.343624, 24.803291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.864666, 33.139042, 24.727148>,  <30.698435, 32.798069, 24.600245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864666, 33.139042, 24.727148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422269, -0.489757, 0.762776,
		0.805596, -0.183023, -0.563488,
		0.415577, 0.852432, 0.317261,
		30.989340, 33.394772, 24.822327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340830, 32.677376, 24.729235>,  <30.698435, 32.798069, 24.600245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340830, 32.677376, 24.729235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.254465, 32.977497, 24.979174>,  <31.202646, 33.157570, 25.129137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.254465, 32.977497, 24.979174>,  <31.340830, 32.677376, 24.729235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254465, 32.977497, 24.979174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407320, -0.512388, 0.756009,
		0.887396, 0.417744, -0.194980,
		-0.215913, 0.750299, 0.624846,
		31.189692, 33.202587, 25.166628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888214, 32.707787, 25.208124>,  <31.340830, 32.677376, 24.729235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888214, 32.707787, 25.208124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.600105, 32.917168, 25.390203>,  <31.427240, 33.042797, 25.499451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.600105, 32.917168, 25.390203>,  <31.888214, 32.707787, 25.208124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600105, 32.917168, 25.390203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279262, -0.381876, 0.881013,
		0.634996, 0.761690, 0.128875,
		-0.720273, 0.523449, 0.455201,
		31.384024, 33.074203, 25.526764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160259, 32.993046, 25.771763>,  <31.888214, 32.707787, 25.208124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160259, 32.993046, 25.771763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.775246, 33.009346, 25.879002>,  <31.544239, 33.019127, 25.943344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.775246, 33.009346, 25.879002>,  <32.160259, 32.993046, 25.771763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775246, 33.009346, 25.879002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225342, -0.429786, 0.874360,
		0.150853, 0.902011, 0.404499,
		-0.962530, 0.040749, 0.268095,
		31.486486, 33.021572, 25.959431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212971, 33.243595, 26.434202>,  <32.160259, 32.993046, 25.771763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212971, 33.243595, 26.434202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.843925, 33.089336, 26.437311>,  <31.622499, 32.996780, 26.439177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.843925, 33.089336, 26.437311>,  <32.212971, 33.243595, 26.434202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843925, 33.089336, 26.437311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147331, -0.333708, 0.931092,
		-0.356483, 0.860182, 0.364702,
		-0.922612, -0.385651, 0.007770,
		31.567142, 32.973640, 26.439642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843369, 33.423786, 27.092274>,  <32.212971, 33.243595, 26.434202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843369, 33.423786, 27.092274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.637634, 33.096340, 26.990034>,  <31.514193, 32.899872, 26.928690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.637634, 33.096340, 26.990034>,  <31.843369, 33.423786, 27.092274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637634, 33.096340, 26.990034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013252, -0.305593, 0.952070,
		-0.857485, 0.486299, 0.168026,
		-0.514338, -0.818613, -0.255597,
		31.483334, 32.850758, 26.913355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268110, 33.336647, 27.546982>,  <31.843369, 33.423786, 27.092274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268110, 33.336647, 27.546982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.351425, 32.975449, 27.396666>,  <31.401415, 32.758732, 27.306477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.351425, 32.975449, 27.396666>,  <31.268110, 33.336647, 27.546982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351425, 32.975449, 27.396666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077966, -0.367666, 0.926684,
		-0.974955, -0.222316, -0.006178,
		0.208288, -0.902993, -0.375791,
		31.413912, 32.704552, 27.283928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941643, 32.825954, 27.934986>,  <31.268110, 33.336647, 27.546982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941643, 32.825954, 27.934986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.245251, 32.627720, 27.766092>,  <31.427416, 32.508778, 27.664757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.245251, 32.627720, 27.766092>,  <30.941643, 32.825954, 27.934986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245251, 32.627720, 27.766092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207747, -0.430265, 0.878472,
		-0.617034, -0.754495, -0.223622,
		0.759019, -0.495590, -0.422232,
		31.472956, 32.479042, 27.639423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951162, 32.162460, 28.242197>,  <30.941643, 32.825954, 27.934986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951162, 32.162460, 28.242197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.315424, 32.153019, 28.077198>,  <31.533981, 32.147354, 27.978199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.315424, 32.153019, 28.077198>,  <30.951162, 32.162460, 28.242197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315424, 32.153019, 28.077198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383000, -0.326280, 0.864206,
		-0.154985, -0.944978, -0.288089,
		0.910654, -0.023601, -0.412496,
		31.588619, 32.145939, 27.953449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194992, 31.534828, 28.456245>,  <30.951162, 32.162460, 28.242197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194992, 31.534828, 28.456245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.516634, 31.747540, 28.349943>,  <31.709620, 31.875166, 28.286161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.516634, 31.747540, 28.349943>,  <31.194992, 31.534828, 28.456245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516634, 31.747540, 28.349943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468202, -0.291016, 0.834324,
		0.366337, -0.795311, -0.482987,
		0.804104, 0.531780, -0.265756,
		31.757866, 31.907074, 28.270216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705278, 31.083712, 28.596327>,  <31.194992, 31.534828, 28.456245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705278, 31.083712, 28.596327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.868553, 31.448807, 28.589510>,  <31.966518, 31.667864, 28.585421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.868553, 31.448807, 28.589510>,  <31.705278, 31.083712, 28.596327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868553, 31.448807, 28.589510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533926, -0.223553, 0.815442,
		0.740477, -0.341951, -0.578587,
		0.408186, 0.912740, -0.017040,
		31.991009, 31.722630, 28.584398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.990620, 33.537052, 22.885895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722618, 33.756382, 23.086071>,  <33.561817, 33.887981, 23.206177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722618, 33.756382, 23.086071>,  <33.990620, 33.537052, 22.885895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722618, 33.756382, 23.086071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509909, 0.150012, -0.847047,
		-0.539528, -0.822701, 0.179087,
		-0.670002, 0.548324, 0.500439,
		33.521618, 33.920879, 23.236202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372257, 33.474529, 22.626036>,  <33.990620, 33.537052, 22.885895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372257, 33.474529, 22.626036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307468, 33.831699, 22.794060>,  <33.268593, 34.046001, 22.894875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307468, 33.831699, 22.794060>,  <33.372257, 33.474529, 22.626036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307468, 33.831699, 22.794060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335353, 0.350537, -0.874450,
		-0.928063, -0.282509, 0.242666,
		-0.161977, 0.892923, 0.420061,
		33.258877, 34.099575, 22.920078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749733, 33.756554, 22.264580>,  <33.372257, 33.474529, 22.626036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749733, 33.756554, 22.264580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902405, 34.094009, 22.415625>,  <32.994007, 34.296482, 22.506252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902405, 34.094009, 22.415625>,  <32.749733, 33.756554, 22.264580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902405, 34.094009, 22.415625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217229, 0.478974, -0.850527,
		-0.898405, 0.242601, 0.366079,
		0.381681, 0.843640, 0.377612,
		33.016911, 34.347103, 22.528908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131771, 34.210014, 22.341747>,  <32.749733, 33.756554, 22.264580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131771, 34.210014, 22.341747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461807, 34.434673, 22.317167>,  <32.659828, 34.569469, 22.302420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461807, 34.434673, 22.317167>,  <32.131771, 34.210014, 22.341747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461807, 34.434673, 22.317167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419506, 0.536139, -0.732509,
		-0.378464, 0.630167, 0.677978,
		0.825094, 0.561644, -0.061450,
		32.709335, 34.603168, 22.298733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955427, 35.006706, 22.306849>,  <32.131771, 34.210014, 22.341747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955427, 35.006706, 22.306849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327698, 34.970005, 22.165190>,  <32.551060, 34.947987, 22.080194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327698, 34.970005, 22.165190>,  <31.955427, 35.006706, 22.306849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327698, 34.970005, 22.165190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209165, 0.660768, -0.720857,
		0.300149, 0.744961, 0.595771,
		0.930677, -0.091751, -0.354149,
		32.606899, 34.942478, 22.058945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122414, 35.666294, 22.139832>,  <31.955427, 35.006706, 22.306849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122414, 35.666294, 22.139832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368717, 35.433151, 21.927748>,  <32.516499, 35.293266, 21.800497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368717, 35.433151, 21.927748>,  <32.122414, 35.666294, 22.139832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368717, 35.433151, 21.927748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143041, 0.579037, -0.802655,
		0.774842, 0.570084, 0.273175,
		0.615759, -0.582856, -0.530208,
		32.553444, 35.258293, 21.768686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519009, 36.168633, 21.805521>,  <32.122414, 35.666294, 22.139832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519009, 36.168633, 21.805521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551056, 35.823475, 21.605923>,  <32.570286, 35.616383, 21.486164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551056, 35.823475, 21.605923>,  <32.519009, 36.168633, 21.805521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551056, 35.823475, 21.605923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108087, 0.490133, -0.864920,
		0.990908, 0.123232, -0.053998,
		0.080120, -0.862892, -0.498997,
		32.575092, 35.564606, 21.456224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029819, 36.200336, 21.320871>,  <32.519009, 36.168633, 21.805521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029819, 36.200336, 21.320871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780159, 35.927650, 21.168188>,  <32.630363, 35.764038, 21.076578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780159, 35.927650, 21.168188>,  <33.029819, 36.200336, 21.320871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780159, 35.927650, 21.168188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017244, 0.476415, -0.879051,
		0.781111, -0.555246, -0.285601,
		-0.624154, -0.681711, -0.381708,
		32.592911, 35.723137, 21.053677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354786, 36.171631, 20.659344>,  <33.029819, 36.200336, 21.320871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354786, 36.171631, 20.659344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001690, 35.984501, 20.641884>,  <32.789833, 35.872223, 20.631409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001690, 35.984501, 20.641884>,  <33.354786, 36.171631, 20.659344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001690, 35.984501, 20.641884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221711, 0.496645, -0.839159,
		0.414252, -0.731087, -0.542132,
		-0.882746, -0.467820, -0.043646,
		32.736866, 35.844154, 20.628790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280979, 35.973610, 19.965008>,  <33.354786, 36.171631, 20.659344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280979, 35.973610, 19.965008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898842, 35.928020, 20.074064>,  <32.669559, 35.900665, 20.139498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898842, 35.928020, 20.074064>,  <33.280979, 35.973610, 19.965008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898842, 35.928020, 20.074064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275393, 0.677957, -0.681567,
		-0.107157, -0.726212, -0.679068,
		-0.955341, -0.113976, 0.272641,
		32.612240, 35.893829, 20.155857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068771, 35.787781, 19.328056>,  <33.280979, 35.973610, 19.965008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068771, 35.787781, 19.328056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761929, 35.912857, 19.552116>,  <32.577824, 35.987904, 19.686552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761929, 35.912857, 19.552116>,  <33.068771, 35.787781, 19.328056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761929, 35.912857, 19.552116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311150, 0.582229, -0.751129,
		-0.561006, -0.750489, -0.349340,
		-0.767110, 0.312690, 0.560149,
		32.531796, 36.006664, 19.720161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561043, 35.975601, 18.826044>,  <33.068771, 35.787781, 19.328056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561043, 35.975601, 18.826044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488281, 36.166840, 19.169750>,  <32.444626, 36.281582, 19.375975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488281, 36.166840, 19.169750>,  <32.561043, 35.975601, 18.826044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488281, 36.166840, 19.169750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453425, 0.734613, -0.504727,
		-0.872535, -0.481423, 0.083154,
		-0.181901, 0.478096, 0.859265,
		32.433712, 36.310268, 19.427530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771238, 36.105030, 18.959949>,  <32.561043, 35.975601, 18.826044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771238, 36.105030, 18.959949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041565, 36.366764, 19.095667>,  <32.203762, 36.523804, 19.177097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041565, 36.366764, 19.095667>,  <31.771238, 36.105030, 18.959949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041565, 36.366764, 19.095667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467812, 0.736510, -0.488574,
		-0.569585, 0.171460, 0.803850,
		0.675815, 0.654335, 0.339294,
		32.244308, 36.563065, 19.197454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071856, 36.257324, 18.893862>,  <31.771238, 36.105030, 18.959949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071856, 36.257324, 18.893862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944990, 36.181232, 18.522223>,  <30.868872, 36.135578, 18.299238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944990, 36.181232, 18.522223>,  <31.071856, 36.257324, 18.893862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944990, 36.181232, 18.522223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005024, -0.980000, 0.198932,
		-0.948358, 0.058426, 0.311774,
		-0.317162, -0.190225, -0.929098,
		30.849842, 36.124165, 18.243494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335855, 36.228207, 18.896206>,  <31.071856, 36.257324, 18.893862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335855, 36.228207, 18.896206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.940222, 36.179626, 18.929590>,  <29.702843, 36.150478, 18.949621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.940222, 36.179626, 18.929590>,  <30.335855, 36.228207, 18.896206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940222, 36.179626, 18.929590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132295, -0.482369, 0.865921,
		-0.064905, 0.867509, 0.493169,
		-0.989083, -0.121447, 0.083459,
		29.643497, 36.143192, 18.954628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132116, 36.511692, 19.554766>,  <30.335855, 36.228207, 18.896206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132116, 36.511692, 19.554766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.862349, 36.250324, 19.417242>,  <29.700489, 36.093506, 19.334728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.862349, 36.250324, 19.417242>,  <30.132116, 36.511692, 19.554766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862349, 36.250324, 19.417242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034435, -0.492977, 0.869361,
		-0.737546, 0.574474, 0.354973,
		-0.674418, -0.653417, -0.343811,
		29.660023, 36.054298, 19.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833157, 36.402103, 20.225641>,  <30.132116, 36.511692, 19.554766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833157, 36.402103, 20.225641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.695889, 36.116505, 19.981531>,  <29.613527, 35.945145, 19.835064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.695889, 36.116505, 19.981531>,  <29.833157, 36.402103, 20.225641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695889, 36.116505, 19.981531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117077, -0.677182, 0.726441,
		-0.931948, 0.177844, 0.315982,
		-0.343171, -0.714000, -0.610277,
		29.592937, 35.902306, 19.798449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242588, 36.030701, 20.518240>,  <29.833157, 36.402103, 20.225641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242588, 36.030701, 20.518240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424219, 35.796803, 20.249352>,  <29.533197, 35.656464, 20.088018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424219, 35.796803, 20.249352>,  <29.242588, 36.030701, 20.518240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424219, 35.796803, 20.249352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039740, -0.767031, 0.640378,
		-0.890075, -0.264068, -0.371530,
		0.454079, -0.584749, -0.672221,
		29.560442, 35.621376, 20.047686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921448, 35.435745, 20.700499>,  <29.242588, 36.030701, 20.518240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921448, 35.435745, 20.700499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.251810, 35.348190, 20.492666>,  <29.450027, 35.295658, 20.367966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.251810, 35.348190, 20.492666>,  <28.921448, 35.435745, 20.700499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251810, 35.348190, 20.492666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235856, -0.702919, 0.671026,
		-0.512102, -0.676752, -0.528921,
		0.825908, -0.218885, -0.519583,
		29.499582, 35.282524, 20.336792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954601, 34.815395, 20.668274>,  <28.921448, 35.435745, 20.700499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954601, 34.815395, 20.668274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331472, 34.932446, 20.602949>,  <29.557594, 35.002674, 20.563753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331472, 34.932446, 20.602949>,  <28.954601, 34.815395, 20.668274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331472, 34.932446, 20.602949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314709, -0.605170, 0.731251,
		0.115151, -0.740364, -0.662269,
		0.942177, 0.292626, -0.163313,
		29.614126, 35.020233, 20.553955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287081, 34.193123, 20.618206>,  <28.954601, 34.815395, 20.668274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287081, 34.193123, 20.618206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.560141, 34.472187, 20.705166>,  <29.723976, 34.639626, 20.757341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.560141, 34.472187, 20.705166>,  <29.287081, 34.193123, 20.618206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560141, 34.472187, 20.705166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420976, -0.618636, 0.663376,
		0.597303, -0.361332, -0.716009,
		0.682648, 0.697659, 0.217401,
		29.764935, 34.681484, 20.770386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964935, 33.751667, 20.816294>,  <29.287081, 34.193123, 20.618206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964935, 33.751667, 20.816294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.034744, 34.128616, 20.930464>,  <30.076630, 34.354786, 20.998966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.034744, 34.128616, 20.930464>,  <29.964935, 33.751667, 20.816294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034744, 34.128616, 20.930464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410996, -0.333134, 0.848589,
		0.894776, -0.030791, -0.445453,
		0.174525, 0.942377, 0.285425,
		30.087101, 34.411331, 21.016090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684269, 33.727341, 21.104443>,  <29.964935, 33.751667, 20.816294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684269, 33.727341, 21.104443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.504824, 34.054497, 21.248558>,  <30.397156, 34.250790, 21.335028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.504824, 34.054497, 21.248558>,  <30.684269, 33.727341, 21.104443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504824, 34.054497, 21.248558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470456, -0.126646, 0.873288,
		0.759880, 0.561268, -0.327965,
		-0.448614, 0.817887, 0.360288,
		30.370239, 34.299862, 21.356644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183907, 33.976513, 21.524189>,  <30.684269, 33.727341, 21.104443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183907, 33.976513, 21.524189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845905, 34.143604, 21.657740>,  <30.643105, 34.243858, 21.737869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845905, 34.143604, 21.657740>,  <31.183907, 33.976513, 21.524189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845905, 34.143604, 21.657740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301551, -0.143399, 0.942605,
		0.441628, 0.897185, -0.004793,
		-0.845004, 0.417726, 0.333876,
		30.592403, 34.268921, 21.757902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392534, 34.534847, 21.953419>,  <31.183907, 33.976513, 21.524189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392534, 34.534847, 21.953419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.021067, 34.453171, 22.077274>,  <30.798185, 34.404163, 22.151588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.021067, 34.453171, 22.077274>,  <31.392534, 34.534847, 21.953419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021067, 34.453171, 22.077274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329580, -0.071336, 0.941429,
		-0.170147, 0.976327, 0.133546,
		-0.928669, -0.204195, 0.309641,
		30.742466, 34.391911, 22.170166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173304, 34.999493, 22.581360>,  <31.392534, 34.534847, 21.953419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173304, 34.999493, 22.581360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934927, 34.679794, 22.612499>,  <30.791901, 34.487976, 22.631184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934927, 34.679794, 22.612499>,  <31.173304, 34.999493, 22.581360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934927, 34.679794, 22.612499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164108, -0.026314, 0.986091,
		-0.786080, 0.600429, 0.146844,
		-0.595942, -0.799245, 0.077850,
		30.756144, 34.440022, 22.635855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974871, 35.088711, 23.240738>,  <31.173304, 34.999493, 22.581360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974871, 35.088711, 23.240738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833542, 34.720863, 23.172073>,  <30.748745, 34.500156, 23.130875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833542, 34.720863, 23.172073>,  <30.974871, 35.088711, 23.240738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833542, 34.720863, 23.172073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023783, -0.174606, 0.984351,
		-0.935199, 0.351877, 0.039822,
		-0.353324, -0.919617, -0.171660,
		30.727545, 34.444977, 23.120575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347284, 34.946297, 23.609713>,  <30.974871, 35.088711, 23.240738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347284, 34.946297, 23.609713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515656, 34.589134, 23.545782>,  <30.616678, 34.374836, 23.507423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515656, 34.589134, 23.545782>,  <30.347284, 34.946297, 23.609713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515656, 34.589134, 23.545782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090596, -0.216699, 0.972026,
		-0.902559, -0.394673, -0.172109,
		0.420928, -0.892902, -0.159828,
		30.641933, 34.321262, 23.497833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639694, 34.764462, 23.466499>,  <30.347284, 34.946297, 23.609713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639694, 34.764462, 23.466499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.259186, 34.762478, 23.589823>,  <29.030880, 34.761288, 23.663816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.259186, 34.762478, 23.589823>,  <29.639694, 34.764462, 23.466499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259186, 34.762478, 23.589823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276665, 0.455198, -0.846316,
		-0.136147, -0.890377, -0.434389,
		-0.951273, -0.004957, 0.308310,
		28.973804, 34.760990, 23.682316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267693, 34.510616, 22.898367>,  <29.639694, 34.764462, 23.466499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267693, 34.510616, 22.898367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995514, 34.714233, 23.109217>,  <28.832207, 34.836403, 23.235727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995514, 34.714233, 23.109217>,  <29.267693, 34.510616, 22.898367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995514, 34.714233, 23.109217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251532, 0.513384, -0.820469,
		-0.688275, -0.690875, -0.221289,
		-0.680447, 0.509047, 0.527127,
		28.791380, 34.866947, 23.267355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531321, 34.397015, 22.562860>,  <29.267693, 34.510616, 22.898367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531321, 34.397015, 22.562860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.483149, 34.715946, 22.799423>,  <28.454247, 34.907307, 22.941360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.483149, 34.715946, 22.799423>,  <28.531321, 34.397015, 22.562860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483149, 34.715946, 22.799423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395805, 0.507780, -0.765179,
		-0.910404, -0.326232, 0.254435,
		-0.120429, 0.797328, 0.591408,
		28.447020, 34.955143, 22.976847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836521, 34.667656, 22.477951>,  <28.531321, 34.397015, 22.562860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836521, 34.667656, 22.477951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.030655, 34.978283, 22.638647>,  <28.147135, 35.164658, 22.735065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.030655, 34.978283, 22.638647>,  <27.836521, 34.667656, 22.477951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030655, 34.978283, 22.638647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342449, 0.591610, -0.729881,
		-0.804475, 0.216661, 0.553063,
		0.485334, 0.776566, 0.401740,
		28.176254, 35.211254, 22.759169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281849, 35.254616, 22.495392>,  <27.836521, 34.667656, 22.477951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281849, 35.254616, 22.495392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.640438, 35.428123, 22.531576>,  <27.855591, 35.532227, 22.553288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.640438, 35.428123, 22.531576>,  <27.281849, 35.254616, 22.495392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640438, 35.428123, 22.531576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284730, 0.720355, -0.632469,
		-0.339507, 0.541234, 0.769285,
		0.896473, 0.433766, 0.090460,
		27.909380, 35.558254, 22.558714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130556, 36.014198, 22.465107>,  <27.281849, 35.254616, 22.495392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130556, 36.014198, 22.465107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.525454, 35.985775, 22.408110>,  <27.762392, 35.968723, 22.373911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.525454, 35.985775, 22.408110>,  <27.130556, 36.014198, 22.465107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525454, 35.985775, 22.408110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048734, 0.717125, -0.695238,
		0.151588, 0.693313, 0.704513,
		0.987242, -0.071056, -0.142496,
		27.821627, 35.964458, 22.365360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438477, 36.708042, 22.474625>,  <27.130556, 36.014198, 22.465107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438477, 36.708042, 22.474625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.708055, 36.507721, 22.257372>,  <27.869802, 36.387527, 22.127020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.708055, 36.507721, 22.257372>,  <27.438477, 36.708042, 22.474625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708055, 36.507721, 22.257372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097099, 0.668751, -0.737119,
		0.732369, 0.549518, 0.402076,
		0.673949, -0.500802, -0.543131,
		27.910240, 36.357479, 22.094433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819464, 37.184013, 23.000820>,  <27.438477, 36.708042, 22.474625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819464, 37.184013, 23.000820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.739437, 37.470127, 23.268652>,  <27.691422, 37.641796, 23.429352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.739437, 37.470127, 23.268652>,  <27.819464, 37.184013, 23.000820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739437, 37.470127, 23.268652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304958, -0.694912, 0.651228,
		0.931115, -0.073906, 0.357160,
		-0.200065, 0.715287, 0.669581,
		27.679417, 37.684711, 23.469526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233582, 37.084080, 23.640333>,  <27.819464, 37.184013, 23.000820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233582, 37.084080, 23.640333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.921852, 37.317204, 23.732405>,  <27.734814, 37.457077, 23.787647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.921852, 37.317204, 23.732405>,  <28.233582, 37.084080, 23.640333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921852, 37.317204, 23.732405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326534, -0.691236, 0.644646,
		0.534815, 0.427227, 0.729006,
		-0.779325, 0.582812, 0.230179,
		27.688055, 37.492046, 23.801458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299599, 37.122414, 24.316282>,  <28.233582, 37.084080, 23.640333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299599, 37.122414, 24.316282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.922358, 37.223568, 24.229925>,  <27.696012, 37.284260, 24.178110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.922358, 37.223568, 24.229925>,  <28.299599, 37.122414, 24.316282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922358, 37.223568, 24.229925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321525, -0.528094, 0.785963,
		0.084747, 0.810657, 0.579355,
		-0.943101, 0.252885, -0.215892,
		27.639427, 37.299435, 24.165157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014566, 37.328289, 24.948008>,  <28.299599, 37.122414, 24.316282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014566, 37.328289, 24.948008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.693384, 37.262390, 24.718882>,  <27.500675, 37.222851, 24.581406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.693384, 37.262390, 24.718882>,  <28.014566, 37.328289, 24.948008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693384, 37.262390, 24.718882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496298, -0.347401, 0.795613,
		-0.330071, 0.923131, 0.197185,
		-0.802958, -0.164746, -0.572815,
		27.452497, 37.212967, 24.547037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448212, 37.441017, 25.430115>,  <28.014566, 37.328289, 24.948008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448212, 37.441017, 25.430115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.307093, 37.239288, 25.114851>,  <27.222422, 37.118252, 24.925694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.307093, 37.239288, 25.114851>,  <27.448212, 37.441017, 25.430115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307093, 37.239288, 25.114851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405249, -0.676870, 0.614509,
		-0.843390, 0.536198, 0.034422,
		-0.352798, -0.504321, -0.788159,
		27.201254, 37.087994, 24.878403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720324, 37.442829, 25.473478>,  <27.448212, 37.441017, 25.430115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720324, 37.442829, 25.473478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.885307, 37.123634, 25.297707>,  <26.984297, 36.932117, 25.192244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.885307, 37.123634, 25.297707>,  <26.720324, 37.442829, 25.473478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885307, 37.123634, 25.297707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426838, -0.595434, 0.680638,
		-0.804790, -0.093168, -0.586201,
		0.412458, -0.797984, -0.439432,
		27.009045, 36.884239, 25.165876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181753, 36.945656, 25.648218>,  <26.720324, 37.442829, 25.473478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181753, 36.945656, 25.648218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.512806, 36.775459, 25.501806>,  <26.711437, 36.673340, 25.413960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.512806, 36.775459, 25.501806>,  <26.181753, 36.945656, 25.648218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512806, 36.775459, 25.501806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163294, -0.806479, 0.568267,
		-0.536989, -0.410546, -0.736949,
		0.827634, -0.425493, -0.366030,
		26.761097, 36.647812, 25.391996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.330118, 39.061024, 21.179672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.512794, 38.739059, 21.028120>,  <31.622400, 38.545879, 20.937187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.512794, 38.739059, 21.028120>,  <31.330118, 39.061024, 21.179672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512794, 38.739059, 21.028120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299117, -0.262165, 0.917496,
		-0.837833, -0.532340, 0.121035,
		0.456688, -0.804912, -0.378883,
		31.649801, 38.497585, 20.914455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232750, 38.554028, 21.664684>,  <31.330118, 39.061024, 21.179672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232750, 38.554028, 21.664684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.548485, 38.413692, 21.463146>,  <31.737926, 38.329491, 21.342224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.548485, 38.413692, 21.463146>,  <31.232750, 38.554028, 21.664684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548485, 38.413692, 21.463146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481035, -0.156548, 0.862611,
		-0.381514, -0.923257, 0.045197,
		0.789337, -0.350840, -0.503844,
		31.785286, 38.308441, 21.311993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411242, 38.014153, 22.109562>,  <31.232750, 38.554028, 21.664684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411242, 38.014153, 22.109562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.725594, 38.051289, 21.865013>,  <31.914204, 38.073570, 21.718283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.725594, 38.051289, 21.865013>,  <31.411242, 38.014153, 22.109562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725594, 38.051289, 21.865013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604483, -0.323770, 0.727856,
		-0.130371, -0.941570, -0.310563,
		0.785878, 0.092839, -0.611373,
		31.961357, 38.079140, 21.681601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770023, 37.370152, 22.026831>,  <31.411242, 38.014153, 22.109562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770023, 37.370152, 22.026831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040741, 37.649323, 21.933153>,  <32.203171, 37.816826, 21.876947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040741, 37.649323, 21.933153>,  <31.770023, 37.370152, 22.026831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040741, 37.649323, 21.933153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601090, -0.340232, 0.723141,
		0.425022, -0.630187, -0.649785,
		0.676792, 0.697930, -0.234192,
		32.243778, 37.858700, 21.862896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395527, 37.062180, 22.034185>,  <31.770023, 37.370152, 22.026831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395527, 37.062180, 22.034185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.492367, 37.449753, 22.054438>,  <32.550468, 37.682297, 22.066589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.492367, 37.449753, 22.054438>,  <32.395527, 37.062180, 22.034185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492367, 37.449753, 22.054438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624305, -0.195507, 0.756320,
		0.742720, -0.151493, -0.652240,
		0.242095, 0.968931, 0.050630,
		32.564995, 37.740433, 22.069626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016373, 37.113934, 21.876978>,  <32.395527, 37.062180, 22.034185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016373, 37.113934, 21.876978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.944038, 37.427765, 22.114206>,  <32.900639, 37.616066, 22.256544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.944038, 37.427765, 22.114206>,  <33.016373, 37.113934, 21.876978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944038, 37.427765, 22.114206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670263, -0.342985, 0.658110,
		0.719754, 0.516522, -0.463852,
		-0.180834, 0.784580, 0.593071,
		32.889790, 37.663139, 22.292128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667900, 37.252899, 22.263880>,  <33.016373, 37.113934, 21.876978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667900, 37.252899, 22.263880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.400017, 37.463268, 22.473602>,  <33.239288, 37.589489, 22.599436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.400017, 37.463268, 22.473602>,  <33.667900, 37.252899, 22.263880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400017, 37.463268, 22.473602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532640, -0.151794, 0.832619,
		0.517479, 0.836878, -0.178469,
		-0.669709, 0.525922, 0.524305,
		33.199104, 37.621044, 22.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081333, 37.733704, 22.719748>,  <33.667900, 37.252899, 22.263880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081333, 37.733704, 22.719748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.713898, 37.746025, 22.877350>,  <33.493435, 37.753418, 22.971910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.713898, 37.746025, 22.877350>,  <34.081333, 37.733704, 22.719748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713898, 37.746025, 22.877350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391804, -0.059592, 0.918117,
		0.051757, 0.997748, 0.042673,
		-0.918592, 0.030799, 0.394005,
		33.438320, 37.755264, 22.995552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171421, 38.178078, 23.270788>,  <34.081333, 37.733704, 22.719748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171421, 38.178078, 23.270788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.833969, 37.979958, 23.353701>,  <33.631496, 37.861084, 23.403448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.833969, 37.979958, 23.353701>,  <34.171421, 38.178078, 23.270788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833969, 37.979958, 23.353701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214873, 0.042348, 0.975723,
		-0.492055, 0.867688, 0.070701,
		-0.843630, -0.495302, 0.207280,
		33.580879, 37.831367, 23.415884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882408, 38.630596, 23.886011>,  <34.171421, 38.178078, 23.270788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882408, 38.630596, 23.886011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725094, 38.263172, 23.901869>,  <33.630703, 38.042717, 23.911385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725094, 38.263172, 23.901869>,  <33.882408, 38.630596, 23.886011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725094, 38.263172, 23.901869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134140, -0.014668, 0.990854,
		-0.909576, 0.395011, 0.128985,
		-0.393290, -0.918559, 0.039646,
		33.607105, 37.987606, 23.913763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396553, 38.658234, 24.485193>,  <33.882408, 38.630596, 23.886011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396553, 38.658234, 24.485193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.435848, 38.264225, 24.428499>,  <33.459427, 38.027821, 24.394484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.435848, 38.264225, 24.428499>,  <33.396553, 38.658234, 24.485193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435848, 38.264225, 24.428499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000884, -0.142511, 0.989793,
		-0.995163, -0.097109, -0.014871,
		0.098238, -0.985018, -0.141736,
		33.465321, 37.968719, 24.385979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920792, 38.366280, 24.927189>,  <33.396553, 38.658234, 24.485193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920792, 38.366280, 24.927189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190952, 38.076778, 24.870594>,  <33.353050, 37.903080, 24.836637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190952, 38.076778, 24.870594>,  <32.920792, 38.366280, 24.927189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190952, 38.076778, 24.870594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007003, -0.198147, 0.980147,
		-0.737416, -0.661003, -0.138898,
		0.675403, -0.723748, -0.141488,
		33.393574, 37.859653, 24.828148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170197, 38.356647, 25.201056>,  <32.920792, 38.366280, 24.927189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170197, 38.356647, 25.201056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025822, 38.601349, 25.482616>,  <31.939198, 38.748169, 25.651554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025822, 38.601349, 25.482616>,  <32.170197, 38.356647, 25.201056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025822, 38.601349, 25.482616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438453, 0.554849, -0.707037,
		-0.823096, -0.563821, 0.067963,
		-0.360933, 0.611758, 0.703903,
		31.917542, 38.784878, 25.693787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418774, 38.319195, 25.129230>,  <32.170197, 38.356647, 25.201056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418774, 38.319195, 25.129230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526096, 38.665703, 25.297794>,  <31.590490, 38.873608, 25.398933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526096, 38.665703, 25.297794>,  <31.418774, 38.319195, 25.129230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526096, 38.665703, 25.297794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466585, 0.499574, -0.729880,
		-0.842799, -0.000793, 0.538228,
		0.268306, 0.866271, 0.421410,
		31.606588, 38.925583, 25.424217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806051, 38.731110, 25.260300>,  <31.418774, 38.319195, 25.129230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806051, 38.731110, 25.260300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.128773, 38.966534, 25.239656>,  <31.322405, 39.107788, 25.227270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.128773, 38.966534, 25.239656>,  <30.806051, 38.731110, 25.260300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128773, 38.966534, 25.239656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505318, 0.642150, -0.576452,
		-0.306138, 0.491161, 0.815500,
		0.806804, 0.588561, -0.051606,
		31.370813, 39.143101, 25.224174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554281, 39.399368, 24.984951>,  <30.806051, 38.731110, 25.260300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554281, 39.399368, 24.984951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940706, 39.501282, 24.967939>,  <31.172562, 39.562431, 24.957733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940706, 39.501282, 24.967939>,  <30.554281, 39.399368, 24.984951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940706, 39.501282, 24.967939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219915, 0.724882, -0.652827,
		-0.135500, 0.640025, 0.756312,
		0.966063, 0.254782, -0.042529,
		31.230526, 39.577717, 24.955181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583574, 40.210526, 25.061329>,  <30.554281, 39.399368, 24.984951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583574, 40.210526, 25.061329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928518, 40.124950, 24.877779>,  <31.135485, 40.073605, 24.767649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928518, 40.124950, 24.877779>,  <30.583574, 40.210526, 25.061329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928518, 40.124950, 24.877779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161052, 0.743341, -0.649236,
		0.479997, 0.633778, 0.606572,
		0.862360, -0.213941, -0.458873,
		31.187227, 40.060768, 24.740118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018799, 40.900726, 25.007025>,  <30.583574, 40.210526, 25.061329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018799, 40.900726, 25.007025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.153927, 40.642887, 24.732689>,  <31.235003, 40.488186, 24.568089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.153927, 40.642887, 24.732689>,  <31.018799, 40.900726, 25.007025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153927, 40.642887, 24.732689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120567, 0.752310, -0.647683,
		0.933457, 0.136110, 0.331861,
		0.337819, -0.644596, -0.685838,
		31.255272, 40.449509, 24.526937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596439, 41.211807, 24.673439>,  <31.018799, 40.900726, 25.007025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596439, 41.211807, 24.673439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.491903, 40.907310, 24.436050>,  <31.429182, 40.724613, 24.293617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.491903, 40.907310, 24.436050>,  <31.596439, 41.211807, 24.673439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491903, 40.907310, 24.436050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001367, 0.614545, -0.788881,
		0.965245, -0.206978, -0.159566,
		-0.261341, -0.761246, -0.593469,
		31.413502, 40.678936, 24.258009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765314, 41.462143, 24.011980>,  <31.596439, 41.211807, 24.673439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765314, 41.462143, 24.011980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525871, 41.155418, 23.919321>,  <31.382206, 40.971382, 23.863726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525871, 41.155418, 23.919321>,  <31.765314, 41.462143, 24.011980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525871, 41.155418, 23.919321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197639, 0.421628, -0.884969,
		0.776278, -0.483967, -0.403942,
		-0.598608, -0.766816, -0.231649,
		31.346289, 40.925373, 23.849827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967962, 41.190285, 23.350344>,  <31.765314, 41.462143, 24.011980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967962, 41.190285, 23.350344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602247, 41.032024, 23.385075>,  <31.382818, 40.937069, 23.405912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602247, 41.032024, 23.385075>,  <31.967962, 41.190285, 23.350344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602247, 41.032024, 23.385075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234072, 0.341111, -0.910414,
		0.330580, -0.852707, -0.404484,
		-0.914290, -0.395643, 0.086830,
		31.327961, 40.913330, 23.411121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830030, 40.751923, 22.731041>,  <31.967962, 41.190285, 23.350344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830030, 40.751923, 22.731041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.488197, 40.877651, 22.896395>,  <31.283098, 40.953091, 22.995607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.488197, 40.877651, 22.896395>,  <31.830030, 40.751923, 22.731041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488197, 40.877651, 22.896395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333679, 0.277605, -0.900885,
		-0.397928, -0.907819, -0.132353,
		-0.854583, 0.314324, 0.413387,
		31.231823, 40.971947, 23.020411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254711, 40.425465, 22.273918>,  <31.830030, 40.751923, 22.731041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254711, 40.425465, 22.273918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125111, 40.736469, 22.489513>,  <31.047350, 40.923073, 22.618870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125111, 40.736469, 22.489513>,  <31.254711, 40.425465, 22.273918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125111, 40.736469, 22.489513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380656, 0.414428, -0.826650,
		-0.866097, -0.473004, 0.161688,
		-0.324001, 0.777507, 0.538986,
		31.027910, 40.969723, 22.651209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474836, 40.361893, 22.154921>,  <31.254711, 40.425465, 22.273918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474836, 40.361893, 22.154921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.596140, 40.722416, 22.278645>,  <30.668922, 40.938732, 22.352879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.596140, 40.722416, 22.278645>,  <30.474836, 40.361893, 22.154921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596140, 40.722416, 22.278645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479037, 0.424795, -0.768161,
		-0.823746, 0.084782, 0.560585,
		0.303260, 0.901311, 0.309310,
		30.687119, 40.992809, 22.371437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486193, 39.645153, 22.446436>,  <30.474836, 40.361893, 22.154921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486193, 39.645153, 22.446436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271935, 39.959862, 22.569117>,  <30.143379, 40.148689, 22.642725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271935, 39.959862, 22.569117>,  <30.486193, 39.645153, 22.446436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271935, 39.959862, 22.569117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696364, -0.616998, 0.366593,
		0.477660, -0.017211, 0.878376,
		-0.535647, 0.786776, 0.306701,
		30.111240, 40.195896, 22.661127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216606, 39.589127, 23.178497>,  <30.486193, 39.645153, 22.446436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216606, 39.589127, 23.178497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.966440, 39.814331, 22.962395>,  <29.816341, 39.949455, 22.832733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.966440, 39.814331, 22.962395>,  <30.216606, 39.589127, 23.178497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966440, 39.814331, 22.962395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772936, -0.541856, 0.330095,
		-0.106894, 0.624029, 0.774055,
		-0.625415, 0.563009, -0.540255,
		29.778816, 39.983234, 22.800318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628809, 39.857372, 23.569174>,  <30.216606, 39.589127, 23.178497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628809, 39.857372, 23.569174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472866, 39.881538, 23.201616>,  <29.379301, 39.896038, 22.981083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472866, 39.881538, 23.201616>,  <29.628809, 39.857372, 23.569174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472866, 39.881538, 23.201616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746959, -0.604340, 0.277174,
		-0.538577, 0.794432, 0.280737,
		-0.389856, 0.060420, -0.918891,
		29.355909, 39.899666, 22.925949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912300, 39.724010, 23.694386>,  <29.628809, 39.857372, 23.569174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912300, 39.724010, 23.694386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932222, 39.709518, 23.295145>,  <28.944176, 39.700825, 23.055601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932222, 39.709518, 23.295145>,  <28.912300, 39.724010, 23.694386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932222, 39.709518, 23.295145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704986, -0.709158, -0.009438,
		-0.707470, 0.704118, -0.060861,
		0.049805, -0.036229, -0.998102,
		28.947165, 39.698650, 22.995714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187904, 39.813923, 23.475128>,  <28.912300, 39.724010, 23.694386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187904, 39.813923, 23.475128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412560, 39.615192, 23.210485>,  <28.547352, 39.495953, 23.051701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412560, 39.615192, 23.210485>,  <28.187904, 39.813923, 23.475128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412560, 39.615192, 23.210485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728670, -0.675796, -0.111081,
		-0.391923, 0.544480, -0.741578,
		0.561637, -0.496831, -0.661606,
		28.581051, 39.466145, 23.012003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647730, 39.505665, 23.104305>,  <28.187904, 39.813923, 23.475128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647730, 39.505665, 23.104305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.971239, 39.298195, 22.993414>,  <28.165344, 39.173714, 22.926878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.971239, 39.298195, 22.993414>,  <27.647730, 39.505665, 23.104305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971239, 39.298195, 22.993414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570370, -0.806688, -0.154704,
		-0.143396, 0.283244, -0.948267,
		0.808774, -0.518679, -0.277230,
		28.213871, 39.142590, 22.910244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545759, 39.055210, 22.469450>,  <27.647730, 39.505665, 23.104305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545759, 39.055210, 22.469450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834761, 38.876286, 22.680317>,  <28.008162, 38.768932, 22.806837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834761, 38.876286, 22.680317>,  <27.545759, 39.055210, 22.469450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834761, 38.876286, 22.680317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632710, -0.735154, 0.243365,
		0.278691, -0.509377, -0.814166,
		0.722502, -0.447308, 0.527169,
		28.051512, 38.742092, 22.838467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355259, 38.449455, 22.448002>,  <27.545759, 39.055210, 22.469450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355259, 38.449455, 22.448002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625229, 38.414371, 22.741064>,  <27.787210, 38.393322, 22.916901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625229, 38.414371, 22.741064>,  <27.355259, 38.449455, 22.448002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625229, 38.414371, 22.741064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562612, -0.703611, 0.434050,
		0.477433, -0.705151, -0.524232,
		0.674927, -0.087710, 0.732653,
		27.827707, 38.388058, 22.960859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530050, 37.709690, 22.576180>,  <27.355259, 38.449455, 22.448002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530050, 37.709690, 22.576180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626995, 37.907051, 22.910320>,  <27.685162, 38.025467, 23.110806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626995, 37.907051, 22.910320>,  <27.530050, 37.709690, 22.576180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626995, 37.907051, 22.910320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467610, -0.695007, 0.546173,
		0.850060, -0.522991, 0.062278,
		0.242360, 0.493402, 0.835354,
		27.699703, 38.055073, 23.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996164, 37.208714, 22.180889>,  <27.530050, 37.709690, 22.576180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996164, 37.208714, 22.180889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005150, 36.884335, 21.947016>,  <28.010540, 36.689705, 21.806692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005150, 36.884335, 21.947016>,  <27.996164, 37.208714, 22.180889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005150, 36.884335, 21.947016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017432, 0.585061, -0.810802,
		0.999596, 0.008020, 0.027279,
		0.022462, -0.810950, -0.584685,
		28.011889, 36.641048, 21.771610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409853, 37.458138, 21.657099>,  <27.996164, 37.208714, 22.180889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409853, 37.458138, 21.657099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.196377, 37.151398, 21.514488>,  <28.068291, 36.967354, 21.428923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.196377, 37.151398, 21.514488>,  <28.409853, 37.458138, 21.657099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196377, 37.151398, 21.514488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101081, 0.476409, -0.873394,
		0.839617, -0.430085, -0.331770,
		-0.533691, -0.766852, -0.356527,
		28.036270, 36.921341, 21.407530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701912, 37.422813, 20.999083>,  <28.409853, 37.458138, 21.657099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701912, 37.422813, 20.999083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344818, 37.242672, 20.993347>,  <28.130562, 37.134586, 20.989906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344818, 37.242672, 20.993347>,  <28.701912, 37.422813, 20.999083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344818, 37.242672, 20.993347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106632, 0.242084, -0.964378,
		0.437780, -0.859406, -0.264139,
		-0.892736, -0.450352, -0.014339,
		28.076998, 37.107567, 20.989046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610802, 37.001804, 20.359127>,  <28.701912, 37.422813, 20.999083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610802, 37.001804, 20.359127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229517, 37.016678, 20.479128>,  <28.000746, 37.025600, 20.551128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229517, 37.016678, 20.479128>,  <28.610802, 37.001804, 20.359127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229517, 37.016678, 20.479128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285683, 0.213674, -0.934199,
		-0.098838, -0.976197, -0.193055,
		-0.953213, 0.037182, 0.300002,
		27.943552, 37.027832, 20.569128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209190, 36.592648, 19.905079>,  <28.610802, 37.001804, 20.359127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209190, 36.592648, 19.905079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906502, 36.815533, 20.041830>,  <27.724888, 36.949265, 20.123880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906502, 36.815533, 20.041830>,  <28.209190, 36.592648, 19.905079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906502, 36.815533, 20.041830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342448, 0.107599, -0.933355,
		-0.556865, -0.823367, 0.109394,
		-0.756724, 0.557215, 0.341879,
		27.679485, 36.982697, 20.144394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634546, 36.347824, 19.507397>,  <28.209190, 36.592648, 19.905079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634546, 36.347824, 19.507397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569643, 36.714245, 19.654104>,  <27.530701, 36.934097, 19.742128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569643, 36.714245, 19.654104>,  <27.634546, 36.347824, 19.507397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569643, 36.714245, 19.654104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333492, 0.298911, -0.894111,
		-0.928685, -0.267389, 0.256997,
		-0.162257, 0.916054, 0.366767,
		27.520966, 36.989059, 19.764133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015253, 36.430893, 19.332434>,  <27.634546, 36.347824, 19.507397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015253, 36.430893, 19.332434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.165710, 36.796612, 19.392527>,  <27.255985, 37.016045, 19.428583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.165710, 36.796612, 19.392527>,  <27.015253, 36.430893, 19.332434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165710, 36.796612, 19.392527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373749, 0.298085, -0.878326,
		-0.847836, 0.274229, 0.453842,
		0.376146, 0.914300, 0.150234,
		27.278555, 37.070900, 19.437597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457205, 37.051857, 19.135124>,  <27.015253, 36.430893, 19.332434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457205, 37.051857, 19.135124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799656, 37.258312, 19.145287>,  <27.005127, 37.382187, 19.151384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799656, 37.258312, 19.145287>,  <26.457205, 37.051857, 19.135124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799656, 37.258312, 19.145287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190242, 0.360500, -0.913153,
		-0.480473, 0.776942, 0.406825,
		0.856127, 0.516141, 0.025404,
		27.056494, 37.413155, 19.152908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327362, 37.752625, 18.838322>,  <26.457205, 37.051857, 19.135124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327362, 37.752625, 18.838322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702013, 37.622494, 18.786337>,  <26.926804, 37.544415, 18.755146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702013, 37.622494, 18.786337>,  <26.327362, 37.752625, 18.838322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702013, 37.622494, 18.786337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052884, 0.235422, -0.970453,
		0.346311, 0.915827, 0.203298,
		0.936628, -0.325328, -0.129962,
		26.983002, 37.524895, 18.747349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.198471, 29.952305, 33.243305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.539852, 30.144403, 33.162331>,  <30.744680, 30.259663, 33.113747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.539852, 30.144403, 33.162331>,  <30.198471, 29.952305, 33.243305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539852, 30.144403, 33.162331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347784, 0.235511, -0.907514,
		-0.388155, 0.844925, 0.368020,
		0.853453, 0.480247, -0.202436,
		30.795889, 30.288477, 33.101601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030725, 30.548306, 33.011261>,  <30.198471, 29.952305, 33.243305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030725, 30.548306, 33.011261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409000, 30.518192, 32.884766>,  <30.635965, 30.500124, 32.808868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409000, 30.518192, 32.884766>,  <30.030725, 30.548306, 33.011261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409000, 30.518192, 32.884766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260146, 0.408086, -0.875094,
		0.194932, 0.909834, 0.366337,
		0.945688, -0.075283, -0.316239,
		30.692707, 30.495607, 32.789894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252338, 31.251717, 32.828037>,  <30.030725, 30.548306, 33.011261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252338, 31.251717, 32.828037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.482668, 30.995319, 32.625038>,  <30.620865, 30.841480, 32.503239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.482668, 30.995319, 32.625038>,  <30.252338, 31.251717, 32.828037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482668, 30.995319, 32.625038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210829, 0.483327, -0.849674,
		0.789923, 0.596258, 0.143171,
		0.575823, -0.640993, -0.507500,
		30.655415, 30.803022, 32.472790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593441, 31.663391, 32.446980>,  <30.252338, 31.251717, 32.828037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593441, 31.663391, 32.446980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628368, 31.301479, 32.280247>,  <30.649324, 31.084332, 32.180206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628368, 31.301479, 32.280247>,  <30.593441, 31.663391, 32.446980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628368, 31.301479, 32.280247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007846, 0.417794, -0.908508,
		0.996150, 0.082600, 0.029382,
		0.087318, -0.904779, -0.416833,
		30.654564, 31.030046, 32.155197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159698, 31.657108, 31.972488>,  <30.593441, 31.663391, 32.446980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159698, 31.657108, 31.972488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885639, 31.378778, 31.886328>,  <30.721203, 31.211781, 31.834631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885639, 31.378778, 31.886328>,  <31.159698, 31.657108, 31.972488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885639, 31.378778, 31.886328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260916, 0.510539, -0.819313,
		0.680070, -0.505149, -0.531347,
		-0.685148, -0.695827, -0.215401,
		30.680094, 31.170031, 31.821707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206579, 31.729879, 31.299538>,  <31.159698, 31.657108, 31.972488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206579, 31.729879, 31.299538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890680, 31.488865, 31.345589>,  <30.701141, 31.344257, 31.373219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890680, 31.488865, 31.345589>,  <31.206579, 31.729879, 31.299538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890680, 31.488865, 31.345589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438762, 0.423673, -0.792458,
		0.428715, -0.676348, -0.598964,
		-0.789742, -0.602541, 0.115121,
		30.653757, 31.308105, 31.380127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055052, 31.421513, 30.670538>,  <31.206579, 31.729879, 31.299538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055052, 31.421513, 30.670538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.716351, 31.427515, 30.883249>,  <30.513130, 31.431116, 31.010876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.716351, 31.427515, 30.883249>,  <31.055052, 31.421513, 30.670538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716351, 31.427515, 30.883249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493724, 0.350084, -0.796039,
		-0.198113, -0.936598, -0.289024,
		-0.846751, 0.015008, 0.531777,
		30.462326, 31.432018, 31.042782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584415, 31.019344, 30.261543>,  <31.055052, 31.421513, 30.670538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584415, 31.019344, 30.261543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380186, 31.259413, 30.507830>,  <30.257648, 31.403454, 30.655602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380186, 31.259413, 30.507830>,  <30.584415, 31.019344, 30.261543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380186, 31.259413, 30.507830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476357, 0.398708, -0.783656,
		-0.715820, -0.693415, 0.082326,
		-0.510575, 0.600173, 0.615716,
		30.227015, 31.439465, 30.692545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922865, 30.941681, 30.085289>,  <30.584415, 31.019344, 30.261543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922865, 30.941681, 30.085289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.948614, 31.296082, 30.268967>,  <29.964064, 31.508722, 30.379173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.948614, 31.296082, 30.268967>,  <29.922865, 30.941681, 30.085289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948614, 31.296082, 30.268967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554302, 0.414382, -0.721829,
		-0.829823, -0.208067, 0.517786,
		0.064372, 0.886000, 0.459196,
		29.967926, 31.561882, 30.406725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348402, 31.243879, 29.819563>,  <29.922865, 30.941681, 30.085289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348402, 31.243879, 29.819563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551607, 31.558935, 29.959017>,  <29.673531, 31.747969, 30.042688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551607, 31.558935, 29.959017>,  <29.348402, 31.243879, 29.819563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551607, 31.558935, 29.959017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317414, 0.547455, -0.774301,
		-0.800731, 0.282695, 0.528123,
		0.508015, 0.787640, 0.348633,
		29.704012, 31.795227, 30.063606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856604, 31.721455, 29.987076>,  <29.348402, 31.243879, 29.819563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856604, 31.721455, 29.987076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.208755, 31.899782, 29.922363>,  <29.420048, 32.006779, 29.883535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.208755, 31.899782, 29.922363>,  <28.856604, 31.721455, 29.987076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208755, 31.899782, 29.922363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412658, 0.551941, -0.724621,
		-0.233756, 0.704703, 0.669889,
		0.880382, 0.445820, -0.161781,
		29.472870, 32.033527, 29.873829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658072, 32.417767, 29.903561>,  <28.856604, 31.721455, 29.987076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658072, 32.417767, 29.903561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.035452, 32.372105, 29.779066>,  <29.261881, 32.344707, 29.704369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.035452, 32.372105, 29.779066>,  <28.658072, 32.417767, 29.903561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035452, 32.372105, 29.779066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190343, 0.582126, -0.790505,
		0.271423, 0.805044, 0.527478,
		0.943451, -0.114159, -0.311237,
		29.318487, 32.337856, 29.685696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808868, 33.039753, 30.198011>,  <28.658072, 32.417767, 29.903561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808868, 33.039753, 30.198011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.598225, 33.345119, 30.347614>,  <28.471838, 33.528339, 30.437376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.598225, 33.345119, 30.347614>,  <28.808868, 33.039753, 30.198011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598225, 33.345119, 30.347614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296512, -0.247377, 0.922434,
		0.796719, 0.596662, -0.096090,
		-0.526611, 0.763413, 0.374007,
		28.440241, 33.574142, 30.459816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326813, 33.526455, 30.659256>,  <28.808868, 33.039753, 30.198011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326813, 33.526455, 30.659256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.942635, 33.577065, 30.758484>,  <28.712128, 33.607430, 30.818020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.942635, 33.577065, 30.758484>,  <29.326813, 33.526455, 30.659256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942635, 33.577065, 30.758484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233554, -0.119143, 0.965017,
		0.151653, 0.984783, 0.084880,
		-0.960445, 0.126523, 0.248068,
		28.654501, 33.615021, 30.832905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364571, 34.096153, 31.154213>,  <29.326813, 33.526455, 30.659256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364571, 34.096153, 31.154213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012140, 33.917591, 31.216726>,  <28.800682, 33.810455, 31.254234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012140, 33.917591, 31.216726>,  <29.364571, 34.096153, 31.154213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012140, 33.917591, 31.216726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124762, 0.099369, 0.987198,
		-0.456220, 0.889296, -0.031857,
		-0.881077, -0.446405, 0.156285,
		28.747818, 33.783669, 31.263611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988115, 34.530483, 31.544201>,  <29.364571, 34.096153, 31.154213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988115, 34.530483, 31.544201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.806557, 34.176498, 31.585794>,  <28.697622, 33.964108, 31.610750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.806557, 34.176498, 31.585794>,  <28.988115, 34.530483, 31.544201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806557, 34.176498, 31.585794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021659, 0.127621, 0.991586,
		-0.890792, 0.447824, -0.077095,
		-0.453896, -0.884967, 0.103984,
		28.670387, 33.911007, 31.616989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294086, 34.665581, 31.852797>,  <28.988115, 34.530483, 31.544201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294086, 34.665581, 31.852797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.353300, 34.277035, 31.927137>,  <28.388828, 34.043907, 31.971743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.353300, 34.277035, 31.927137>,  <28.294086, 34.665581, 31.852797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353300, 34.277035, 31.927137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000297, 0.187881, 0.982192,
		-0.988982, -0.145451, 0.027524,
		0.148032, -0.971362, 0.185854,
		28.397711, 33.985626, 31.982893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996946, 34.679611, 32.528271>,  <28.294086, 34.665581, 31.852797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996946, 34.679611, 32.528271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.251478, 34.373230, 32.491596>,  <28.404198, 34.189404, 32.469589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.251478, 34.373230, 32.491596>,  <27.996946, 34.679611, 32.528271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251478, 34.373230, 32.491596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267906, 0.107963, 0.957377,
		-0.723404, -0.633770, 0.273902,
		0.636328, -0.765950, -0.091690,
		28.442377, 34.143444, 32.464088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815144, 34.291237, 33.023148>,  <27.996946, 34.679611, 32.528271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815144, 34.291237, 33.023148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.185976, 34.164574, 32.942902>,  <28.408476, 34.088577, 32.894753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.185976, 34.164574, 32.942902>,  <27.815144, 34.291237, 33.023148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185976, 34.164574, 32.942902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194367, -0.051544, 0.979574,
		-0.320531, -0.947138, 0.013762,
		0.927082, -0.316659, -0.200614,
		28.464100, 34.069576, 32.882717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935665, 33.799435, 33.439510>,  <27.815144, 34.291237, 33.023148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935665, 33.799435, 33.439510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.318624, 33.852455, 33.336895>,  <28.548401, 33.884270, 33.275326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.318624, 33.852455, 33.336895>,  <27.935665, 33.799435, 33.439510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318624, 33.852455, 33.336895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271281, -0.108467, 0.956369,
		0.098946, -0.985223, -0.139806,
		0.957400, 0.132556, -0.256540,
		28.605844, 33.892223, 33.259933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343941, 33.236782, 33.695480>,  <27.935665, 33.799435, 33.439510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343941, 33.236782, 33.695480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.587748, 33.550697, 33.650581>,  <28.734032, 33.739044, 33.623642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.587748, 33.550697, 33.650581>,  <28.343941, 33.236782, 33.695480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587748, 33.550697, 33.650581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131219, 0.039771, 0.990556,
		0.781838, -0.618491, -0.078738,
		0.609518, 0.784785, -0.112252,
		28.770603, 33.786133, 33.616905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936476, 33.072319, 34.149918>,  <28.343941, 33.236782, 33.695480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936476, 33.072319, 34.149918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.955891, 33.466084, 34.082302>,  <28.967541, 33.702343, 34.041733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.955891, 33.466084, 34.082302>,  <28.936476, 33.072319, 34.149918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955891, 33.466084, 34.082302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438528, 0.131053, 0.889111,
		0.897406, -0.117286, -0.425332,
		0.048539, 0.984413, -0.169040,
		28.970453, 33.761406, 34.031590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555323, 33.205933, 34.466591>,  <28.936476, 33.072319, 34.149918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555323, 33.205933, 34.466591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397793, 33.570133, 34.416164>,  <29.303274, 33.788654, 34.385910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397793, 33.570133, 34.416164>,  <29.555323, 33.205933, 34.466591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397793, 33.570133, 34.416164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403958, 0.294636, 0.866030,
		0.825664, 0.290138, -0.483838,
		-0.393824, 0.910500, -0.126067,
		29.279646, 33.843285, 34.378345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073284, 33.653206, 34.654968>,  <29.555323, 33.205933, 34.466591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073284, 33.653206, 34.654968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.737196, 33.863640, 34.707520>,  <29.535543, 33.989899, 34.739048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.737196, 33.863640, 34.707520>,  <30.073284, 33.653206, 34.654968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737196, 33.863640, 34.707520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320441, 0.286292, 0.902970,
		0.437428, 0.800794, -0.409128,
		-0.840223, 0.526086, 0.131375,
		29.485128, 34.021465, 34.746933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189745, 34.383602, 34.713058>,  <30.073284, 33.653206, 34.654968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189745, 34.383602, 34.713058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837971, 34.339695, 34.898335>,  <29.626907, 34.313351, 35.009502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837971, 34.339695, 34.898335>,  <30.189745, 34.383602, 34.713058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837971, 34.339695, 34.898335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416344, 0.294355, 0.860240,
		-0.230767, 0.949372, -0.213166,
		-0.879434, -0.109764, 0.463193,
		29.574141, 34.306767, 35.037292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166685, 34.853840, 35.275654>,  <30.189745, 34.383602, 34.713058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166685, 34.853840, 35.275654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.884445, 34.590878, 35.381443>,  <29.715101, 34.433102, 35.444916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.884445, 34.590878, 35.381443>,  <30.166685, 34.853840, 35.275654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884445, 34.590878, 35.381443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216578, 0.155291, 0.963835,
		-0.674700, 0.737363, 0.032806,
		-0.705602, -0.657405, 0.264471,
		29.672764, 34.393658, 35.460785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737669, 34.767937, 35.684624>,  <30.166685, 34.853840, 35.275654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737669, 34.767937, 35.684624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057411, 34.609451, 35.865311>,  <31.249256, 34.514359, 35.973724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057411, 34.609451, 35.865311>,  <30.737669, 34.767937, 35.684624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057411, 34.609451, 35.865311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576845, 0.295614, -0.761487,
		0.168176, 0.869269, 0.464853,
		0.799354, -0.396212, 0.451719,
		31.297216, 34.490589, 36.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238056, 35.285530, 35.855785>,  <30.737669, 34.767937, 35.684624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238056, 35.285530, 35.855785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.421652, 34.936882, 35.786953>,  <31.531809, 34.727692, 35.745655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.421652, 34.936882, 35.786953>,  <31.238056, 35.285530, 35.855785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421652, 34.936882, 35.786953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634126, 0.457055, -0.623686,
		0.622265, 0.177146, 0.762499,
		0.458988, -0.871619, -0.172077,
		31.559347, 34.675396, 35.735329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990213, 35.262852, 36.051624>,  <31.238056, 35.285530, 35.855785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990213, 35.262852, 36.051624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.877350, 35.041328, 35.738274>,  <31.809631, 34.908417, 35.550262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.877350, 35.041328, 35.738274>,  <31.990213, 35.262852, 36.051624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877350, 35.041328, 35.738274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658668, 0.481868, -0.577892,
		0.697526, -0.679045, 0.228810,
		-0.282159, -0.553805, -0.783381,
		31.792702, 34.875187, 35.503258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536572, 35.377945, 35.701912>,  <31.990213, 35.262852, 36.051624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536572, 35.377945, 35.701912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281120, 35.198650, 35.451717>,  <32.127850, 35.091072, 35.301601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281120, 35.198650, 35.451717>,  <32.536572, 35.377945, 35.701912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281120, 35.198650, 35.451717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519070, 0.349133, -0.780174,
		0.568082, -0.822915, 0.009699,
		-0.638631, -0.448238, -0.625487,
		32.089531, 35.064178, 35.264072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993343, 35.254528, 35.091469>,  <32.536572, 35.377945, 35.701912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993343, 35.254528, 35.091469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621479, 35.175716, 34.966949>,  <32.398361, 35.128429, 34.892239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621479, 35.175716, 34.966949>,  <32.993343, 35.254528, 35.091469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621479, 35.175716, 34.966949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238291, 0.322842, -0.915964,
		0.280968, -0.925718, -0.253185,
		-0.929663, -0.197025, -0.311299,
		32.342579, 35.116608, 34.873558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036785, 34.904648, 34.487789>,  <32.993343, 35.254528, 35.091469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036785, 34.904648, 34.487789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659477, 35.037457, 34.486427>,  <32.433094, 35.117142, 34.485611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659477, 35.037457, 34.486427>,  <33.036785, 34.904648, 34.487789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659477, 35.037457, 34.486427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130036, 0.359964, -0.923859,
		-0.305517, -0.871887, -0.382717,
		-0.943266, 0.332022, -0.003402,
		32.376499, 35.137062, 34.485405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876144, 34.836113, 33.842663>,  <33.036785, 34.904648, 34.487789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876144, 34.836113, 33.842663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601997, 35.097935, 33.970314>,  <32.437511, 35.255028, 34.046906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601997, 35.097935, 33.970314>,  <32.876144, 34.836113, 33.842663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601997, 35.097935, 33.970314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058328, 0.387487, -0.920028,
		-0.725862, -0.649167, -0.227391,
		-0.685363, 0.654550, 0.319126,
		32.396389, 35.294300, 34.066051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254086, 34.820835, 33.388241>,  <32.876144, 34.836113, 33.842663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254086, 34.820835, 33.388241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232822, 35.180454, 33.562084>,  <32.220066, 35.396225, 33.666389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232822, 35.180454, 33.562084>,  <32.254086, 34.820835, 33.388241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232822, 35.180454, 33.562084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098343, 0.428391, -0.898226,
		-0.993732, -0.090487, 0.065644,
		-0.053156, 0.899051, 0.434605,
		32.216877, 35.450169, 33.692467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772799, 35.218380, 32.983009>,  <32.254086, 34.820835, 33.388241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772799, 35.218380, 32.983009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939047, 35.510086, 33.200420>,  <32.038795, 35.685112, 33.330868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939047, 35.510086, 33.200420>,  <31.772799, 35.218380, 32.983009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939047, 35.510086, 33.200420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027349, 0.607339, -0.793972,
		-0.909127, 0.315127, 0.272367,
		0.415621, 0.729270, 0.543530,
		32.063732, 35.728867, 33.363480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360685, 35.695560, 32.971405>,  <31.772799, 35.218380, 32.983009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360685, 35.695560, 32.971405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.702394, 35.892143, 33.039150>,  <31.907419, 36.010094, 33.079796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.702394, 35.892143, 33.039150>,  <31.360685, 35.695560, 32.971405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702394, 35.892143, 33.039150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192998, 0.602381, -0.774525,
		-0.482669, 0.628969, 0.609449,
		0.854273, 0.491462, 0.169361,
		31.958677, 36.039581, 33.089958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221960, 36.300159, 32.588890>,  <31.360685, 35.695560, 32.971405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221960, 36.300159, 32.588890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618818, 36.283298, 32.635994>,  <31.856934, 36.273182, 32.664257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618818, 36.283298, 32.635994>,  <31.221960, 36.300159, 32.588890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618818, 36.283298, 32.635994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124351, 0.433570, -0.892499,
		-0.013434, 0.900134, 0.435407,
		0.992147, -0.042153, 0.117757,
		31.916462, 36.270653, 32.671322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399517, 37.019836, 32.557251>,  <31.221960, 36.300159, 32.588890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399517, 37.019836, 32.557251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708380, 36.780880, 32.470619>,  <31.893698, 36.637508, 32.418640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708380, 36.780880, 32.470619>,  <31.399517, 37.019836, 32.557251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708380, 36.780880, 32.470619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103670, 0.454697, -0.884592,
		0.626920, 0.660590, 0.413028,
		0.772155, -0.597387, -0.216576,
		31.940027, 36.601665, 32.405647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824179, 37.525272, 32.386116>,  <31.399517, 37.019836, 32.557251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824179, 37.525272, 32.386116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937304, 37.174904, 32.229767>,  <32.005180, 36.964684, 32.135960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937304, 37.174904, 32.229767>,  <31.824179, 37.525272, 32.386116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937304, 37.174904, 32.229767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321491, 0.470499, -0.821751,
		0.903692, 0.106741, 0.414664,
		0.282814, -0.875921, -0.390870,
		32.022148, 36.912128, 32.112507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533924, 37.566154, 32.202572>,  <31.824179, 37.525272, 32.386116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533924, 37.566154, 32.202572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391380, 37.290016, 31.950722>,  <32.305855, 37.124332, 31.799610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391380, 37.290016, 31.950722>,  <32.533924, 37.566154, 32.202572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391380, 37.290016, 31.950722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491922, 0.434290, -0.754589,
		0.794368, -0.578632, 0.184833,
		-0.356358, -0.690345, -0.629629,
		32.284473, 37.082912, 31.761833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800758, 37.798611, 31.676882>,  <32.533924, 37.566154, 32.202572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800758, 37.798611, 31.676882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639446, 37.473412, 31.508881>,  <32.542660, 37.278294, 31.408079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639446, 37.473412, 31.508881>,  <32.800758, 37.798611, 31.676882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639446, 37.473412, 31.508881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325364, 0.301596, -0.896202,
		0.855280, -0.498075, 0.142892,
		-0.403280, -0.812995, -0.420004,
		32.518463, 37.229511, 31.382879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335041, 37.573811, 31.025883>,  <32.800758, 37.798611, 31.676882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335041, 37.573811, 31.025883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992760, 37.385750, 30.939411>,  <32.787392, 37.272911, 30.887529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992760, 37.385750, 30.939411>,  <33.335041, 37.573811, 31.025883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992760, 37.385750, 30.939411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087815, 0.279762, -0.956045,
		0.509968, -0.837070, -0.198105,
		-0.855699, -0.470156, -0.216177,
		32.736050, 37.244701, 30.874557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494095, 37.210228, 30.394354>,  <33.335041, 37.573811, 31.025883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494095, 37.210228, 30.394354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095406, 37.242374, 30.398159>,  <32.856194, 37.261662, 30.400442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095406, 37.242374, 30.398159>,  <33.494095, 37.210228, 30.394354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095406, 37.242374, 30.398159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028528, 0.458917, -0.888021,
		-0.075730, -0.884837, -0.459704,
		-0.996720, 0.080364, 0.009511,
		32.796391, 37.266483, 30.401012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291466, 36.989391, 29.672312>,  <33.494095, 37.210228, 30.394354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291466, 36.989391, 29.672312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983665, 37.202854, 29.812641>,  <32.798985, 37.330933, 29.896839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983665, 37.202854, 29.812641>,  <33.291466, 36.989391, 29.672312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983665, 37.202854, 29.812641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154008, 0.378059, -0.912882,
		-0.619795, -0.756496, -0.208731,
		-0.769504, 0.533653, 0.350825,
		32.752815, 37.362949, 29.917889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818005, 36.875443, 29.160349>,  <33.291466, 36.989391, 29.672312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818005, 36.875443, 29.160349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688854, 37.201962, 29.351936>,  <32.611362, 37.397873, 29.466888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688854, 37.201962, 29.351936>,  <32.818005, 36.875443, 29.160349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688854, 37.201962, 29.351936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360105, 0.362055, -0.859791,
		-0.875256, -0.450088, 0.177051,
		-0.322879, 0.816294, 0.478970,
		32.591991, 37.446850, 29.495626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156006, 36.971844, 28.839584>,  <32.818005, 36.875443, 29.160349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156006, 36.971844, 28.839584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212158, 37.309319, 29.046850>,  <32.245850, 37.511803, 29.171209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212158, 37.309319, 29.046850>,  <32.156006, 36.971844, 28.839584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212158, 37.309319, 29.046850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535357, 0.504922, -0.677087,
		-0.832879, -0.182354, 0.522551,
		0.140378, 0.843683, 0.518163,
		32.254272, 37.562424, 29.202299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540735, 37.247509, 29.093145>,  <32.156006, 36.971844, 28.839584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540735, 37.247509, 29.093145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819994, 37.520676, 29.007156>,  <31.987549, 37.684578, 28.955563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819994, 37.520676, 29.007156>,  <31.540735, 37.247509, 29.093145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819994, 37.520676, 29.007156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535535, 0.298836, -0.789873,
		-0.475178, 0.666572, 0.574358,
		0.698147, 0.682919, -0.214972,
		32.029438, 37.725552, 28.942665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144180, 37.734570, 28.705956>,  <31.540735, 37.247509, 29.093145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144180, 37.734570, 28.705956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516962, 37.867218, 28.647320>,  <31.740631, 37.946808, 28.612139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516962, 37.867218, 28.647320>,  <31.144180, 37.734570, 28.705956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516962, 37.867218, 28.647320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309002, 0.514949, -0.799591,
		-0.189673, 0.790479, 0.582380,
		0.931956, 0.331617, -0.146588,
		31.796549, 37.966702, 28.603344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126225, 38.477814, 28.430496>,  <31.144180, 37.734570, 28.705956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126225, 38.477814, 28.430496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493498, 38.352386, 28.333656>,  <31.713861, 38.277130, 28.275553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493498, 38.352386, 28.333656>,  <31.126225, 38.477814, 28.430496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493498, 38.352386, 28.333656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018486, 0.644378, -0.764483,
		0.395722, 0.697461, 0.597455,
		0.918184, -0.313568, -0.242101,
		31.768953, 38.258316, 28.261026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565479, 39.033043, 28.124853>,  <31.126225, 38.477814, 28.430496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565479, 39.033043, 28.124853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759256, 38.718834, 27.970827>,  <31.875523, 38.530308, 27.878412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759256, 38.718834, 27.970827>,  <31.565479, 39.033043, 28.124853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759256, 38.718834, 27.970827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172233, 0.517189, -0.838362,
		0.857700, 0.339818, 0.385842,
		0.484444, -0.785518, -0.385065,
		31.904589, 38.483177, 27.855307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186577, 39.239014, 27.751104>,  <31.565479, 39.033043, 28.124853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186577, 39.239014, 27.751104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124977, 38.872730, 27.602644>,  <32.088017, 38.652958, 27.513567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124977, 38.872730, 27.602644>,  <32.186577, 39.239014, 27.751104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124977, 38.872730, 27.602644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146156, 0.350388, -0.925131,
		0.977201, -0.196718, 0.079876,
		-0.154002, -0.915713, -0.371151,
		32.078777, 38.598015, 27.491299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642517, 39.301620, 27.084669>,  <32.186577, 39.239014, 27.751104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642517, 39.301620, 27.084669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416306, 38.972534, 27.061628>,  <32.280579, 38.775082, 27.047804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416306, 38.972534, 27.061628>,  <32.642517, 39.301620, 27.084669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416306, 38.972534, 27.061628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034357, 0.093287, -0.995046,
		0.824014, -0.560746, -0.081023,
		-0.565526, -0.822716, -0.057604,
		32.246647, 38.725719, 27.044348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926540, 38.779053, 26.502098>,  <32.642517, 39.301620, 27.084669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926540, 38.779053, 26.502098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539829, 38.683697, 26.539001>,  <32.307804, 38.626484, 26.561144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539829, 38.683697, 26.539001>,  <32.926540, 38.779053, 26.502098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539829, 38.683697, 26.539001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112338, 0.072032, -0.991056,
		0.229615, -0.968494, -0.096419,
		-0.966776, -0.238393, 0.092259,
		32.249798, 38.612179, 26.566679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797504, 38.537014, 25.817150>,  <32.926540, 38.779053, 26.502098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797504, 38.537014, 25.817150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436768, 38.603729, 25.976578>,  <32.220325, 38.643761, 26.072235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436768, 38.603729, 25.976578>,  <32.797504, 38.537014, 25.817150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436768, 38.603729, 25.976578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333810, 0.316708, -0.887844,
		-0.274315, -0.933744, -0.229944,
		-0.901844, 0.166791, 0.398571,
		32.166214, 38.653767, 26.096149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803463, 37.713215, 25.435732>,  <32.797504, 38.537014, 25.817150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803463, 37.713215, 25.435732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184528, 37.647839, 25.333187>,  <33.413166, 37.608612, 25.271660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184528, 37.647839, 25.333187>,  <32.803463, 37.713215, 25.435732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184528, 37.647839, 25.333187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158704, -0.451884, 0.877846,
		-0.259320, -0.876977, -0.404555,
		0.952662, -0.163439, -0.256362,
		33.470325, 37.598808, 25.256279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950588, 37.090946, 25.477692>,  <32.803463, 37.713215, 25.435732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950588, 37.090946, 25.477692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328037, 37.223095, 25.486092>,  <33.554504, 37.302383, 25.491133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328037, 37.223095, 25.486092>,  <32.950588, 37.090946, 25.477692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328037, 37.223095, 25.486092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181741, -0.570037, 0.801266,
		0.276685, -0.752273, -0.597939,
		0.943618, 0.330368, 0.021002,
		33.611122, 37.322205, 25.492392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379440, 36.543949, 25.588493>,  <32.950588, 37.090946, 25.477692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379440, 36.543949, 25.588493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620937, 36.845161, 25.693132>,  <33.765835, 37.025890, 25.755915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620937, 36.845161, 25.693132>,  <33.379440, 36.543949, 25.588493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620937, 36.845161, 25.693132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319820, -0.529392, 0.785786,
		0.730209, -0.390752, -0.560454,
		0.603747, 0.753032, 0.261596,
		33.802063, 37.071072, 25.771610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951920, 36.239902, 25.793016>,  <33.379440, 36.543949, 25.588493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951920, 36.239902, 25.793016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968441, 36.598492, 25.969482>,  <33.978355, 36.813644, 26.075361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968441, 36.598492, 25.969482>,  <33.951920, 36.239902, 25.793016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968441, 36.598492, 25.969482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291867, -0.433109, 0.852778,
		0.955566, 0.093536, -0.279542,
		0.041306, 0.896475, 0.441165,
		33.980831, 36.867435, 26.101831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670769, 36.324764, 26.123671>,  <33.951920, 36.239902, 25.793016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670769, 36.324764, 26.123671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425396, 36.562901, 26.331236>,  <34.278172, 36.705784, 26.455774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425396, 36.562901, 26.331236>,  <34.670769, 36.324764, 26.123671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425396, 36.562901, 26.331236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381627, -0.351798, 0.854751,
		0.691422, 0.722361, -0.011394,
		-0.613430, 0.595342, 0.518914,
		34.241367, 36.741505, 26.486910>
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
