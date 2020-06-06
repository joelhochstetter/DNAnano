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
	<23.907019, 34.986519, 34.786808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241716, 34.955132, 35.003586>,  <24.442535, 34.936298, 35.133652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241716, 34.955132, 35.003586>,  <23.907019, 34.986519, 34.786808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241716, 34.955132, 35.003586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064418, 0.996913, 0.044882,
		-0.543790, -0.002644, 0.839217,
		0.836746, -0.078467, 0.541941,
		24.492741, 34.931591, 35.166168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.849222, 35.448071, 35.380013>,  <23.907019, 34.986519, 34.786808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.849222, 35.448071, 35.380013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232841, 35.397785, 35.278484>,  <24.463013, 35.367615, 35.217567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232841, 35.397785, 35.278484>,  <23.849222, 35.448071, 35.380013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232841, 35.397785, 35.278484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196201, 0.941152, 0.275205,
		0.204287, -0.313735, 0.927274,
		0.959048, -0.125712, -0.253820,
		24.520555, 35.360073, 35.202339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305231, 35.821373, 35.800552>,  <23.849222, 35.448071, 35.380013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305231, 35.821373, 35.800552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542721, 35.772152, 35.482471>,  <24.685215, 35.742619, 35.291622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542721, 35.772152, 35.482471>,  <24.305231, 35.821373, 35.800552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542721, 35.772152, 35.482471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411879, 0.895436, 0.168965,
		0.691263, -0.427847, 0.582326,
		0.593726, -0.123048, -0.795203,
		24.720839, 35.735237, 35.243912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005527, 36.010422, 36.013008>,  <24.305231, 35.821373, 35.800552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005527, 36.010422, 36.013008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986420, 36.053616, 35.615807>,  <24.974955, 36.079533, 35.377487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986420, 36.053616, 35.615807>,  <25.005527, 36.010422, 36.013008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986420, 36.053616, 35.615807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398549, 0.913635, 0.080179,
		0.915902, -0.391931, -0.086679,
		-0.047768, 0.107982, -0.993005,
		24.972090, 36.086010, 35.317905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628107, 36.205589, 35.825569>,  <25.005527, 36.010422, 36.013008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628107, 36.205589, 35.825569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378481, 36.329998, 35.538845>,  <25.228704, 36.404644, 35.366810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378481, 36.329998, 35.538845>,  <25.628107, 36.205589, 35.825569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378481, 36.329998, 35.538845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251339, 0.948516, 0.192734,
		0.739846, -0.059883, -0.670107,
		-0.624065, 0.311017, -0.716806,
		25.191261, 36.423302, 35.323803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027153, 36.537659, 35.330669>,  <25.628107, 36.205589, 35.825569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027153, 36.537659, 35.330669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655380, 36.683125, 35.355667>,  <25.432318, 36.770405, 35.370667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655380, 36.683125, 35.355667>,  <26.027153, 36.537659, 35.330669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655380, 36.683125, 35.355667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364344, 0.877641, 0.311447,
		0.058417, 0.312237, -0.948207,
		-0.929430, 0.363667, 0.062492,
		25.376551, 36.792225, 35.374416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999071, 37.127911, 34.917568>,  <26.027153, 36.537659, 35.330669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999071, 37.127911, 34.917568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721296, 37.150253, 35.204521>,  <25.554630, 37.163658, 35.376694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721296, 37.150253, 35.204521>,  <25.999071, 37.127911, 34.917568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721296, 37.150253, 35.204521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382890, 0.872799, 0.302685,
		-0.609221, 0.484873, -0.627493,
		-0.694439, 0.055858, 0.717381,
		25.512964, 37.167011, 35.419735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565599, 37.761497, 34.952518>,  <25.999071, 37.127911, 34.917568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565599, 37.761497, 34.952518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572613, 37.613117, 35.323914>,  <25.576820, 37.524090, 35.546749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572613, 37.613117, 35.323914>,  <25.565599, 37.761497, 34.952518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572613, 37.613117, 35.323914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357308, 0.869632, 0.340693,
		-0.933822, 0.325782, 0.147790,
		0.017531, -0.370954, 0.928486,
		25.577871, 37.501831, 35.602459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241892, 38.259449, 35.422062>,  <25.565599, 37.761497, 34.952518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241892, 38.259449, 35.422062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478897, 38.024918, 35.643021>,  <25.621099, 37.884197, 35.775597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478897, 38.024918, 35.643021>,  <25.241892, 38.259449, 35.422062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478897, 38.024918, 35.643021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428182, 0.810071, 0.400556,
		-0.682341, -0.000807, 0.731034,
		0.592513, -0.586331, 0.552399,
		25.656651, 37.849018, 35.808739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146090, 38.574036, 36.078255>,  <25.241892, 38.259449, 35.422062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146090, 38.574036, 36.078255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483759, 38.363205, 36.117355>,  <25.686361, 38.236706, 36.140816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483759, 38.363205, 36.117355>,  <25.146090, 38.574036, 36.078255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483759, 38.363205, 36.117355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373784, 0.709462, 0.597452,
		-0.384257, -0.467816, 0.795924,
		0.844175, -0.527079, 0.097754,
		25.737011, 38.205082, 36.146683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321684, 38.649071, 36.804176>,  <25.146090, 38.574036, 36.078255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321684, 38.649071, 36.804176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656153, 38.579926, 36.595970>,  <25.856834, 38.538441, 36.471046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656153, 38.579926, 36.595970>,  <25.321684, 38.649071, 36.804176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656153, 38.579926, 36.595970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447370, 0.763990, 0.464951,
		0.317298, -0.621642, 0.716159,
		0.836171, -0.172860, -0.520517,
		25.907003, 38.528069, 36.439816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925491, 38.704189, 37.252838>,  <25.321684, 38.649071, 36.804176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925491, 38.704189, 37.252838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020144, 38.762314, 36.868568>,  <26.076935, 38.797188, 36.638008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020144, 38.762314, 36.868568>,  <25.925491, 38.704189, 37.252838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020144, 38.762314, 36.868568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435221, 0.868155, 0.238515,
		0.868684, -0.474537, 0.142138,
		0.236582, 0.145332, -0.960681,
		26.091131, 38.805904, 36.580368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409492, 39.187592, 37.545975>,  <25.925491, 38.704189, 37.252838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409492, 39.187592, 37.545975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745863, 39.268932, 37.345379>,  <26.947685, 39.317738, 37.225021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745863, 39.268932, 37.345379>,  <26.409492, 39.187592, 37.545975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745863, 39.268932, 37.345379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259320, -0.661949, -0.703262,
		-0.474972, 0.721437, -0.503915,
		0.840925, 0.203355, -0.501490,
		26.998140, 39.329937, 37.194931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236248, 39.370487, 36.905918>,  <26.409492, 39.187592, 37.545975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236248, 39.370487, 36.905918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608566, 39.224281, 36.907600>,  <26.831957, 39.136559, 36.908611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608566, 39.224281, 36.907600>,  <26.236248, 39.370487, 36.905918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608566, 39.224281, 36.907600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268996, -0.692713, -0.669171,
		0.247506, 0.621730, -0.743096,
		0.930796, -0.365514, 0.004208,
		26.887806, 39.114628, 36.908863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479176, 39.349411, 36.104809>,  <26.236248, 39.370487, 36.905918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479176, 39.349411, 36.104809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645969, 39.111248, 36.379505>,  <26.746046, 38.968349, 36.544323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645969, 39.111248, 36.379505>,  <26.479176, 39.349411, 36.104809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645969, 39.111248, 36.379505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158905, -0.791683, -0.589904,
		0.894915, 0.136854, -0.424733,
		0.416984, -0.595406, 0.686743,
		26.771065, 38.932625, 36.585529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099783, 38.846943, 35.886944>,  <26.479176, 39.349411, 36.104809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099783, 38.846943, 35.886944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834015, 38.727615, 36.161037>,  <26.674555, 38.656017, 36.325493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834015, 38.727615, 36.161037>,  <27.099783, 38.846943, 35.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834015, 38.727615, 36.161037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316989, -0.717831, -0.619868,
		0.676805, -0.629066, 0.382377,
		-0.664420, -0.298320, 0.685238,
		26.634689, 38.638119, 36.366608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082222, 38.156071, 35.875381>,  <27.099783, 38.846943, 35.886944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082222, 38.156071, 35.875381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729803, 38.252605, 36.038116>,  <26.518353, 38.310524, 36.135757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729803, 38.252605, 36.038116>,  <27.082222, 38.156071, 35.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729803, 38.252605, 36.038116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425306, -0.780619, -0.457983,
		0.207059, -0.576535, 0.790401,
		-0.881045, 0.241333, 0.406838,
		26.465490, 38.325005, 36.160168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852661, 37.547997, 36.186142>,  <27.082222, 38.156071, 35.875381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852661, 37.547997, 36.186142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504269, 37.742527, 36.214081>,  <26.295233, 37.859245, 36.230843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504269, 37.742527, 36.214081>,  <26.852661, 37.547997, 36.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504269, 37.742527, 36.214081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480977, -0.814969, -0.323243,
		-0.100281, -0.315132, 0.943735,
		-0.870979, 0.486330, 0.069845,
		26.242975, 37.888428, 36.235035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396152, 37.167171, 36.644871>,  <26.852661, 37.547997, 36.186142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396152, 37.167171, 36.644871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194307, 37.369404, 36.364941>,  <26.073200, 37.490742, 36.196983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194307, 37.369404, 36.364941>,  <26.396152, 37.167171, 36.644871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194307, 37.369404, 36.364941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475945, -0.839202, -0.263089,
		-0.720307, 0.200320, 0.664101,
		-0.504613, 0.505580, -0.699825,
		26.042923, 37.521076, 36.154995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753178, 36.863338, 36.686642>,  <26.396152, 37.167171, 36.644871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753178, 36.863338, 36.686642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804676, 37.033035, 36.328102>,  <25.835575, 37.134853, 36.112976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804676, 37.033035, 36.328102>,  <25.753178, 36.863338, 36.686642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804676, 37.033035, 36.328102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318371, -0.838345, -0.442513,
		-0.939183, 0.342344, 0.027132,
		0.128746, 0.424238, -0.896352,
		25.843300, 37.160305, 36.059196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167400, 36.834263, 36.154842>,  <25.753178, 36.863338, 36.686642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167400, 36.834263, 36.154842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514908, 36.842270, 35.956917>,  <25.723412, 36.847073, 35.838161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514908, 36.842270, 35.956917>,  <25.167400, 36.834263, 36.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514908, 36.842270, 35.956917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346841, -0.688597, -0.636817,
		-0.353474, 0.724868, -0.591289,
		0.868768, 0.020015, -0.494815,
		25.775537, 36.848274, 35.808472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560350, 37.165634, 36.298870>,  <25.167400, 36.834263, 36.154842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560350, 37.165634, 36.298870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836689, 37.197937, 36.011478>,  <25.002493, 37.217319, 35.839043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836689, 37.197937, 36.011478>,  <24.560350, 37.165634, 36.298870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836689, 37.197937, 36.011478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422720, -0.761071, -0.492016,
		-0.586546, 0.643622, -0.491645,
		0.690849, 0.080762, -0.718475,
		25.043943, 37.222164, 35.795937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.191357, 37.177132, 35.715389>,  <24.560350, 37.165634, 36.298870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.191357, 37.177132, 35.715389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557051, 37.081966, 35.584198>,  <24.776466, 37.024868, 35.505482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557051, 37.081966, 35.584198>,  <24.191357, 37.177132, 35.715389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557051, 37.081966, 35.584198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387376, -0.750552, -0.535362,
		-0.118799, 0.616499, -0.778341,
		0.914236, -0.237910, -0.327982,
		24.831322, 37.010593, 35.485802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.222109, 36.972015, 34.930531>,  <24.191357, 37.177132, 35.715389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.222109, 36.972015, 34.930531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491501, 36.767941, 35.144497>,  <24.653135, 36.645496, 35.272877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491501, 36.767941, 35.144497>,  <24.222109, 36.972015, 34.930531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491501, 36.767941, 35.144497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294851, -0.848987, -0.438502,
		0.677856, 0.137600, -0.722203,
		0.673479, -0.510184, 0.534919,
		24.693544, 36.614887, 35.304974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433699, 36.624004, 34.262962>,  <24.222109, 36.972015, 34.930531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433699, 36.624004, 34.262962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670921, 36.584873, 34.582642>,  <24.813255, 36.561394, 34.774448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670921, 36.584873, 34.582642>,  <24.433699, 36.624004, 34.262962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670921, 36.584873, 34.582642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069639, -0.982639, -0.171963,
		0.802143, 0.157639, -0.575949,
		0.593058, -0.097831, 0.799194,
		24.848839, 36.555523, 34.822399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927538, 36.161839, 34.011017>,  <24.433699, 36.624004, 34.262962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927538, 36.161839, 34.011017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924864, 36.141994, 34.410515>,  <24.923260, 36.130089, 34.650215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924864, 36.141994, 34.410515>,  <24.927538, 36.161839, 34.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924864, 36.141994, 34.410515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109493, -0.992799, -0.048586,
		0.993965, 0.109031, 0.012068,
		-0.006684, -0.049615, 0.998746,
		24.922857, 36.127110, 34.710140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487452, 35.759682, 34.227688>,  <24.927538, 36.161839, 34.011017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487452, 35.759682, 34.227688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236750, 35.731514, 34.538101>,  <25.086329, 35.714615, 34.724350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236750, 35.731514, 34.538101>,  <25.487452, 35.759682, 34.227688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236750, 35.731514, 34.538101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196916, -0.977896, 0.070305,
		0.753926, 0.196877, 0.626765,
		-0.626753, -0.070415, 0.776030,
		25.048723, 35.710388, 34.770908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690233, 35.286278, 34.596310>,  <25.487452, 35.759682, 34.227688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690233, 35.286278, 34.596310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330503, 35.279350, 34.771084>,  <25.114666, 35.275192, 34.875950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330503, 35.279350, 34.771084>,  <25.690233, 35.286278, 34.596310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330503, 35.279350, 34.771084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099879, -0.980938, 0.166687,
		0.425723, 0.193547, 0.883911,
		-0.899324, -0.017322, 0.436940,
		25.060707, 35.274155, 34.902164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766857, 34.669563, 35.064442>,  <25.690233, 35.286278, 34.596310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766857, 34.669563, 35.064442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377712, 34.762115, 35.064541>,  <25.144224, 34.817646, 35.064598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377712, 34.762115, 35.064541>,  <25.766857, 34.669563, 35.064442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377712, 34.762115, 35.064541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230013, -0.967229, 0.107526,
		0.025117, 0.104551, 0.994202,
		-0.972863, 0.231380, 0.000246,
		25.085854, 34.831528, 35.064613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301865, 34.423317, 35.686493>,  <25.766857, 34.669563, 35.064442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301865, 34.423317, 35.686493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092611, 34.422153, 35.345596>,  <24.967060, 34.421455, 35.141056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092611, 34.422153, 35.345596>,  <25.301865, 34.423317, 35.686493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092611, 34.422153, 35.345596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233297, -0.961308, 0.146488,
		-0.819697, 0.275460, 0.502214,
		-0.523134, -0.002911, -0.852245,
		24.935671, 34.421280, 35.089924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634033, 34.064308, 35.813183>,  <25.301865, 34.423317, 35.686493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634033, 34.064308, 35.813183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722889, 34.022343, 35.425442>,  <24.776201, 33.997162, 35.192795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722889, 34.022343, 35.425442>,  <24.634033, 34.064308, 35.813183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722889, 34.022343, 35.425442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208852, -0.976238, 0.057797,
		-0.952384, 0.189613, -0.238770,
		0.222137, -0.104913, -0.969355,
		24.789530, 33.990868, 35.134636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.030800, 33.826313, 35.369411>,  <24.634033, 34.064308, 35.813183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.030800, 33.826313, 35.369411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380596, 33.725670, 35.203541>,  <24.590475, 33.665283, 35.104019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380596, 33.725670, 35.203541>,  <24.030800, 33.826313, 35.369411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.380596, 33.725670, 35.203541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254468, -0.965819, 0.049389,
		-0.412928, 0.062332, -0.908628,
		0.874492, -0.251611, -0.414676,
		24.642944, 33.650188, 35.079140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.806910, 33.394382, 34.773376>,  <24.030800, 33.826313, 35.369411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.806910, 33.394382, 34.773376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179636, 33.319302, 34.897625>,  <24.403273, 33.274254, 34.972176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179636, 33.319302, 34.897625>,  <23.806910, 33.394382, 34.773376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.179636, 33.319302, 34.897625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254831, -0.947787, 0.191732,
		0.258418, -0.257816, -0.930995,
		0.931816, -0.187699, 0.310624,
		24.459181, 33.262993, 34.990810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.872520, 32.727074, 34.483475>,  <23.806910, 33.394382, 34.773376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.872520, 32.727074, 34.483475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134745, 32.799168, 34.776802>,  <24.292080, 32.842422, 34.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134745, 32.799168, 34.776802>,  <23.872520, 32.727074, 34.483475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.134745, 32.799168, 34.776802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049059, -0.979213, 0.196811,
		0.753547, -0.093046, -0.650776,
		0.655561, 0.180232, 0.733318,
		24.331413, 32.853237, 34.996796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633959, 32.358532, 34.426495>,  <23.872520, 32.727074, 34.483475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633959, 32.358532, 34.426495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534136, 32.424778, 34.808132>,  <24.474241, 32.464523, 35.037113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534136, 32.424778, 34.808132>,  <24.633959, 32.358532, 34.426495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534136, 32.424778, 34.808132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121115, -0.972192, 0.200434,
		0.960756, 0.165575, 0.222559,
		-0.249557, 0.165612, 0.954093,
		24.459269, 32.474461, 35.094360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055628, 32.250694, 33.955383>,  <24.633959, 32.358532, 34.426495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055628, 32.250694, 33.955383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191843, 32.374931, 34.310364>,  <25.273571, 32.449474, 34.523350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191843, 32.374931, 34.310364>,  <25.055628, 32.250694, 33.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191843, 32.374931, 34.310364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038845, -0.938409, 0.343337,
		0.939429, -0.151391, -0.307497,
		0.340536, 0.310596, 0.887449,
		25.294004, 32.468109, 34.576599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641687, 31.851358, 34.119930>,  <25.055628, 32.250694, 33.955383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641687, 31.851358, 34.119930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510580, 31.990301, 34.471363>,  <25.431915, 32.073666, 34.682224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510580, 31.990301, 34.471363>,  <25.641687, 31.851358, 34.119930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510580, 31.990301, 34.471363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050460, -0.922194, 0.383422,
		0.943409, 0.170007, 0.284739,
		-0.327769, 0.347356, 0.878585,
		25.412249, 32.094509, 34.734940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116781, 31.744204, 34.691010>,  <25.641687, 31.851358, 34.119930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116781, 31.744204, 34.691010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738281, 31.731384, 34.819748>,  <25.511181, 31.723694, 34.896992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738281, 31.731384, 34.819748>,  <26.116781, 31.744204, 34.691010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738281, 31.731384, 34.819748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142801, -0.934234, 0.326825,
		0.290204, 0.355218, 0.888595,
		-0.946250, -0.032047, 0.321844,
		25.454407, 31.721769, 34.916302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198078, 31.290258, 35.227776>,  <26.116781, 31.744204, 34.691010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198078, 31.290258, 35.227776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802980, 31.290405, 35.165344>,  <25.565922, 31.290493, 35.127884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802980, 31.290405, 35.165344>,  <26.198078, 31.290258, 35.227776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802980, 31.290405, 35.165344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008166, -0.998750, 0.049312,
		-0.155864, 0.049983, 0.986513,
		-0.987745, 0.000369, -0.156078,
		25.506657, 31.290516, 35.118523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757637, 30.815628, 35.703911>,  <26.198078, 31.290258, 35.227776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757637, 30.815628, 35.703911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565865, 30.853571, 35.354935>,  <25.450802, 30.876337, 35.145550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565865, 30.853571, 35.354935>,  <25.757637, 30.815628, 35.703911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565865, 30.853571, 35.354935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075754, -0.994904, -0.066545,
		-0.874304, 0.034187, 0.484173,
		-0.479430, 0.094859, -0.872438,
		25.422035, 30.882029, 35.093204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540203, 30.326681, 35.074951>,  <25.757637, 30.815628, 35.703911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540203, 30.326681, 35.074951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169149, 30.185881, 35.024998>,  <24.946518, 30.101400, 34.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169149, 30.185881, 35.024998>,  <25.540203, 30.326681, 35.074951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169149, 30.185881, 35.024998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370326, 0.910292, 0.185004,
		0.048556, 0.217862, -0.974771,
		-0.927632, -0.352000, -0.124880,
		24.890860, 30.080280, 34.987534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278568, 30.505795, 34.374870>,  <25.540203, 30.326681, 35.074951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278568, 30.505795, 34.374870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125887, 30.483927, 34.743938>,  <25.034279, 30.470806, 34.965378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125887, 30.483927, 34.743938>,  <25.278568, 30.505795, 34.374870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125887, 30.483927, 34.743938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268123, 0.961874, -0.053929,
		-0.884541, -0.267973, -0.381807,
		-0.381702, -0.054669, 0.922667,
		25.011375, 30.467525, 35.020741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629498, 30.848152, 34.415863>,  <25.278568, 30.505795, 34.374870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629498, 30.848152, 34.415863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796867, 30.856432, 34.779068>,  <24.897289, 30.861399, 34.996990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796867, 30.856432, 34.779068>,  <24.629498, 30.848152, 34.415863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796867, 30.856432, 34.779068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133200, 0.990329, 0.038805,
		-0.898430, -0.137184, 0.417137,
		0.418426, 0.020699, 0.908015,
		24.922396, 30.862642, 35.051472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172180, 31.160606, 34.937538>,  <24.629498, 30.848152, 34.415863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172180, 31.160606, 34.937538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563442, 31.218454, 34.997272>,  <24.798199, 31.253162, 35.033112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563442, 31.218454, 34.997272>,  <24.172180, 31.160606, 34.937538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563442, 31.218454, 34.997272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125357, 0.983391, -0.131252,
		-0.165837, 0.109664, 0.980037,
		0.978153, 0.144621, 0.149336,
		24.856888, 31.261841, 35.042072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.242363, 31.792881, 35.391785>,  <24.172180, 31.160606, 34.937538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.242363, 31.792881, 35.391785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605297, 31.760651, 35.226738>,  <24.823057, 31.741312, 35.127712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605297, 31.760651, 35.226738>,  <24.242363, 31.792881, 35.391785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605297, 31.760651, 35.226738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001300, 0.981994, -0.188906,
		0.420406, 0.170864, 0.891103,
		0.907335, -0.080576, -0.412614,
		24.877497, 31.736479, 35.102955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598848, 32.368011, 35.662205>,  <24.242363, 31.792881, 35.391785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598848, 32.368011, 35.662205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811632, 32.274635, 35.336620>,  <24.939302, 32.218609, 35.141270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811632, 32.274635, 35.336620>,  <24.598848, 32.368011, 35.662205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811632, 32.274635, 35.336620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098191, 0.971771, -0.214525,
		0.841058, 0.034195, 0.539864,
		0.531960, -0.233437, -0.813957,
		24.971220, 32.204605, 35.092434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231543, 32.655846, 35.803860>,  <24.598848, 32.368011, 35.662205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231543, 32.655846, 35.803860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044287, 32.680271, 35.451244>,  <24.931934, 32.694927, 35.239674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044287, 32.680271, 35.451244>,  <25.231543, 32.655846, 35.803860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044287, 32.680271, 35.451244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157490, 0.987403, -0.015233,
		0.869507, -0.145965, -0.471860,
		-0.468139, 0.061068, -0.881542,
		24.903845, 32.698593, 35.186783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666040, 32.875259, 35.240345>,  <25.231543, 32.655846, 35.803860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666040, 32.875259, 35.240345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293360, 33.000938, 35.167446>,  <25.069752, 33.076347, 35.123707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293360, 33.000938, 35.167446>,  <25.666040, 32.875259, 35.240345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293360, 33.000938, 35.167446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346434, 0.919472, -0.185888,
		0.109168, -0.236329, -0.965521,
		-0.931701, 0.314196, -0.182249,
		25.013849, 33.095196, 35.112770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730206, 33.182491, 34.591152>,  <25.666040, 32.875259, 35.240345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730206, 33.182491, 34.591152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413462, 33.341740, 34.776394>,  <25.223415, 33.437290, 34.887539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413462, 33.341740, 34.776394>,  <25.730206, 33.182491, 34.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413462, 33.341740, 34.776394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384080, 0.914216, -0.129196,
		-0.474810, 0.075563, -0.876838,
		-0.791857, 0.398119, 0.463102,
		25.175905, 33.461174, 34.915325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370739, 33.170429, 34.315289>,  <25.730206, 33.182491, 34.591152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370739, 33.170429, 34.315289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666521, 33.432453, 34.377388>,  <26.843990, 33.589668, 34.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666521, 33.432453, 34.377388>,  <26.370739, 33.170429, 34.315289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666521, 33.432453, 34.377388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485918, -0.678959, 0.550362,
		0.465926, -0.331532, -0.820366,
		0.739457, 0.655058, 0.155248,
		26.888359, 33.628971, 34.423962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957663, 32.752716, 34.080875>,  <26.370739, 33.170429, 34.315289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957663, 32.752716, 34.080875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048901, 33.044704, 34.338593>,  <27.103643, 33.219898, 34.493225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048901, 33.044704, 34.338593>,  <26.957663, 32.752716, 34.080875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048901, 33.044704, 34.338593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493233, -0.657177, 0.569947,
		0.839461, 0.187788, -0.509943,
		0.228093, 0.729969, 0.644297,
		27.117329, 33.263695, 34.531883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310339, 32.293118, 34.500626>,  <26.957663, 32.752716, 34.080875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310339, 32.293118, 34.500626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277180, 32.659931, 34.656666>,  <27.257284, 32.880020, 34.750290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277180, 32.659931, 34.656666>,  <27.310339, 32.293118, 34.500626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277180, 32.659931, 34.656666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431099, -0.319928, 0.843682,
		0.898488, 0.238115, -0.368810,
		-0.082900, 0.917032, 0.390103,
		27.252310, 32.935040, 34.773697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022614, 32.507175, 34.833195>,  <27.310339, 32.293118, 34.500626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022614, 32.507175, 34.833195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690994, 32.646843, 35.007900>,  <27.492023, 32.730644, 35.112724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690994, 32.646843, 35.007900>,  <28.022614, 32.507175, 34.833195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690994, 32.646843, 35.007900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308057, -0.366664, 0.877871,
		0.466673, 0.862344, 0.196417,
		-0.829046, 0.349171, 0.436764,
		27.442280, 32.751595, 35.138931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142006, 33.060341, 35.310745>,  <28.022614, 32.507175, 34.833195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142006, 33.060341, 35.310745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824133, 32.838478, 35.409405>,  <27.633410, 32.705360, 35.468601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824133, 32.838478, 35.409405>,  <28.142006, 33.060341, 35.310745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824133, 32.838478, 35.409405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466061, -0.297167, 0.833354,
		-0.388926, 0.777207, 0.494656,
		-0.794685, -0.554653, 0.246650,
		27.585728, 32.672081, 35.483398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192001, 33.034580, 35.994682>,  <28.142006, 33.060341, 35.310745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192001, 33.034580, 35.994682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956562, 32.725315, 35.900215>,  <27.815298, 32.539757, 35.843536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956562, 32.725315, 35.900215>,  <28.192001, 33.034580, 35.994682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956562, 32.725315, 35.900215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222451, -0.435751, 0.872145,
		-0.777217, 0.460809, 0.428473,
		-0.588600, -0.773160, -0.236165,
		27.779982, 32.493366, 35.829365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825264, 32.848331, 35.495129>,  <28.192001, 33.034580, 35.994682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825264, 32.848331, 35.495129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781706, 33.092472, 35.181286>,  <28.755571, 33.238956, 34.992981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781706, 33.092472, 35.181286>,  <28.825264, 32.848331, 35.495129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781706, 33.092472, 35.181286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459844, 0.730704, 0.504593,
		0.881297, -0.305851, -0.360237,
		-0.108896, 0.610349, -0.784612,
		28.749037, 33.275578, 34.945904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410625, 33.059326, 35.367668>,  <28.825264, 32.848331, 35.495129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410625, 33.059326, 35.367668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148886, 33.345772, 35.270500>,  <28.991842, 33.517639, 35.212200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148886, 33.345772, 35.270500>,  <29.410625, 33.059326, 35.367668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148886, 33.345772, 35.270500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449559, 0.626704, 0.636505,
		0.608049, 0.307288, -0.732018,
		-0.654349, 0.716112, -0.242923,
		28.952581, 33.560604, 35.197624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878639, 33.755482, 35.241512>,  <29.410625, 33.059326, 35.367668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878639, 33.755482, 35.241512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502155, 33.860287, 35.326813>,  <29.276264, 33.923168, 35.377995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502155, 33.860287, 35.326813>,  <29.878639, 33.755482, 35.241512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502155, 33.860287, 35.326813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328768, 0.565217, 0.756599,
		0.077700, 0.782229, -0.618127,
		-0.941209, 0.262008, 0.213254,
		29.219793, 33.938889, 35.390789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810930, 34.578770, 35.392399>,  <29.878639, 33.755482, 35.241512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810930, 34.578770, 35.392399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525084, 34.371284, 35.580128>,  <29.353577, 34.246796, 35.692764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525084, 34.371284, 35.580128>,  <29.810930, 34.578770, 35.392399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525084, 34.371284, 35.580128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227030, 0.462622, 0.856994,
		-0.661651, 0.718971, -0.212834,
		-0.714616, -0.518711, 0.469323,
		29.310699, 34.215672, 35.720924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029886, 35.301949, 35.431263>,  <29.810930, 34.578770, 35.392399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029886, 35.301949, 35.431263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155741, 35.681175, 35.449886>,  <30.231253, 35.908710, 35.461060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155741, 35.681175, 35.449886>,  <30.029886, 35.301949, 35.431263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155741, 35.681175, 35.449886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929425, -0.297744, -0.217985,
		-0.192804, 0.111856, -0.974841,
		0.314636, 0.948070, 0.046556,
		30.250132, 35.965595, 35.463852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503082, 35.488449, 34.885330>,  <30.029886, 35.301949, 35.431263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503082, 35.488449, 34.885330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661421, 35.726578, 35.165012>,  <30.756424, 35.869457, 35.332821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661421, 35.726578, 35.165012>,  <30.503082, 35.488449, 34.885330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661421, 35.726578, 35.165012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909832, -0.150980, -0.386536,
		-0.124548, 0.789171, -0.601412,
		0.395844, 0.595326, 0.699210,
		30.780174, 35.905174, 35.374775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821445, 36.066368, 34.564823>,  <30.503082, 35.488449, 34.885330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821445, 36.066368, 34.564823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011477, 36.011360, 34.912476>,  <31.125494, 35.978355, 35.121067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011477, 36.011360, 34.912476>,  <30.821445, 36.066368, 34.564823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011477, 36.011360, 34.912476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838832, -0.227604, -0.494527,
		0.265827, 0.963994, 0.007230,
		0.475075, -0.137523, 0.869132,
		31.153999, 35.970104, 35.173214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470383, 36.585888, 34.652714>,  <30.821445, 36.066368, 34.564823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470383, 36.585888, 34.652714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491629, 36.223286, 34.820251>,  <31.504375, 36.005726, 34.920773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491629, 36.223286, 34.820251>,  <31.470383, 36.585888, 34.652714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491629, 36.223286, 34.820251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828684, -0.194023, -0.525012,
		0.557190, 0.374974, 0.740901,
		0.053114, -0.906504, 0.418843,
		31.507563, 35.951336, 34.945904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116940, 36.366692, 34.870377>,  <31.470383, 36.585888, 34.652714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116940, 36.366692, 34.870377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929064, 36.030140, 34.763447>,  <31.816338, 35.828209, 34.699287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929064, 36.030140, 34.763447>,  <32.116940, 36.366692, 34.870377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929064, 36.030140, 34.763447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719300, -0.189158, -0.668451,
		0.511857, -0.506254, 0.694053,
		-0.469691, -0.841384, -0.267327,
		31.788157, 35.777725, 34.683250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547615, 35.748463, 35.011822>,  <32.116940, 36.366692, 34.870377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547615, 35.748463, 35.011822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294518, 35.695820, 34.706585>,  <32.142658, 35.664234, 34.523441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294518, 35.695820, 34.706585>,  <32.547615, 35.748463, 35.011822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294518, 35.695820, 34.706585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773942, -0.075198, -0.628776,
		0.025371, -0.988445, 0.149441,
		-0.632748, -0.131611, -0.763092,
		32.104694, 35.656338, 34.477657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948933, 35.323162, 34.549202>,  <32.547615, 35.748463, 35.011822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948933, 35.323162, 34.549202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610027, 35.402550, 34.352119>,  <32.406685, 35.450184, 34.233871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610027, 35.402550, 34.352119>,  <32.948933, 35.323162, 34.549202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610027, 35.402550, 34.352119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475343, -0.130667, -0.870043,
		-0.237059, -0.971357, 0.016368,
		-0.847261, 0.198471, -0.492704,
		32.355850, 35.462093, 34.204308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609406, 34.752728, 34.075611>,  <32.948933, 35.323162, 34.549202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609406, 34.752728, 34.075611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509838, 35.113037, 33.933258>,  <32.450096, 35.329224, 33.847847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509838, 35.113037, 33.933258>,  <32.609406, 34.752728, 34.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509838, 35.113037, 33.933258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315528, -0.271979, -0.909104,
		-0.915686, -0.338583, -0.216518,
		-0.248919, 0.900771, -0.355880,
		32.435162, 35.383270, 33.826492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434113, 34.759117, 33.329037>,  <32.609406, 34.752728, 34.075611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434113, 34.759117, 33.329037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582863, 35.126324, 33.384113>,  <32.672115, 35.346645, 33.417160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582863, 35.126324, 33.384113>,  <32.434113, 34.759117, 33.329037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582863, 35.126324, 33.384113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534421, -0.090447, -0.840365,
		-0.759013, 0.386098, -0.524241,
		0.371879, 0.918013, 0.137688,
		32.694427, 35.401726, 33.425419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382988, 35.187737, 32.686092>,  <32.434113, 34.759117, 33.329037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382988, 35.187737, 32.686092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673256, 35.351028, 32.907631>,  <32.847416, 35.449005, 33.040554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673256, 35.351028, 32.907631>,  <32.382988, 35.187737, 32.686092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673256, 35.351028, 32.907631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590404, 0.043880, -0.805914,
		-0.353302, 0.911824, -0.209178,
		0.725673, 0.408230, 0.553848,
		32.890957, 35.473499, 33.073784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604694, 35.807312, 32.345596>,  <32.382988, 35.187737, 32.686092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604694, 35.807312, 32.345596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894779, 35.666386, 32.582218>,  <33.068829, 35.581829, 32.724194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894779, 35.666386, 32.582218>,  <32.604694, 35.807312, 32.345596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894779, 35.666386, 32.582218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593570, -0.115477, -0.796455,
		0.348917, 0.928729, 0.125381,
		0.725212, -0.352319, 0.591557,
		33.112343, 35.560692, 32.759686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260906, 36.233204, 32.208462>,  <32.604694, 35.807312, 32.345596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260906, 36.233204, 32.208462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395267, 35.933441, 32.436691>,  <33.475883, 35.753582, 32.573631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395267, 35.933441, 32.436691>,  <33.260906, 36.233204, 32.208462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395267, 35.933441, 32.436691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838610, -0.037856, -0.543415,
		0.428839, 0.661026, 0.615745,
		0.335902, -0.749407, 0.570577,
		33.496037, 35.708618, 32.607864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979996, 36.440723, 32.308750>,  <33.260906, 36.233204, 32.208462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979996, 36.440723, 32.308750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934647, 36.045471, 32.350212>,  <33.907436, 35.808319, 32.375088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934647, 36.045471, 32.350212>,  <33.979996, 36.440723, 32.308750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934647, 36.045471, 32.350212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740703, -0.153597, -0.654039,
		0.662197, 0.002625, 0.749326,
		-0.113377, -0.988130, 0.103656,
		33.900635, 35.749031, 32.381310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693295, 36.156872, 32.467339>,  <33.979996, 36.440723, 32.308750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693295, 36.156872, 32.467339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487144, 35.839672, 32.337395>,  <34.363453, 35.649353, 32.259426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487144, 35.839672, 32.337395>,  <34.693295, 36.156872, 32.467339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487144, 35.839672, 32.337395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714237, -0.188001, -0.674181,
		0.473552, -0.579487, 0.663282,
		-0.515377, -0.793001, -0.324863,
		34.332531, 35.601772, 32.239937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107662, 35.538891, 32.567501>,  <34.693295, 36.156872, 32.467339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107662, 35.538891, 32.567501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829685, 35.444839, 32.295689>,  <34.662899, 35.388409, 32.132599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829685, 35.444839, 32.295689>,  <35.107662, 35.538891, 32.567501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829685, 35.444839, 32.295689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719007, -0.215457, -0.660763,
		0.008955, -0.947783, 0.318790,
		-0.694945, -0.235130, -0.679533,
		34.621201, 35.374302, 32.091827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337395, 34.919228, 32.237354>,  <35.107662, 35.538891, 32.567501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337395, 34.919228, 32.237354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087936, 35.050232, 31.953438>,  <34.938263, 35.128834, 31.783089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087936, 35.050232, 31.953438>,  <35.337395, 34.919228, 32.237354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087936, 35.050232, 31.953438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700724, -0.168248, -0.693310,
		-0.346490, -0.929746, -0.124570,
		-0.623643, 0.327514, -0.709792,
		34.900845, 35.148487, 31.740499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502415, 34.555164, 31.692184>,  <35.337395, 34.919228, 32.237354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502415, 34.555164, 31.692184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306999, 34.859566, 31.521442>,  <35.189751, 35.042206, 31.418997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306999, 34.859566, 31.521442>,  <35.502415, 34.555164, 31.692184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306999, 34.859566, 31.521442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666191, 0.009391, -0.745722,
		-0.563486, -0.648683, -0.511560,
		-0.488541, 0.761001, -0.426855,
		35.160439, 35.087868, 31.393385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467640, 34.429855, 30.975159>,  <35.502415, 34.555164, 31.692184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467640, 34.429855, 30.975159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425568, 34.827538, 30.984095>,  <35.400326, 35.066147, 30.989456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425568, 34.827538, 30.984095>,  <35.467640, 34.429855, 30.975159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425568, 34.827538, 30.984095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465363, 0.069061, -0.882422,
		-0.878849, -0.082414, -0.469929,
		-0.105177, 0.994203, 0.022341,
		35.394016, 35.125797, 30.990797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074711, 34.566971, 30.443127>,  <35.467640, 34.429855, 30.975159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074711, 34.566971, 30.443127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276100, 34.898312, 30.541386>,  <35.396935, 35.097115, 30.600340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276100, 34.898312, 30.541386>,  <35.074711, 34.566971, 30.443127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276100, 34.898312, 30.541386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400104, 0.028460, -0.916027,
		-0.765785, 0.559483, -0.317099,
		0.503477, 0.828353, 0.245646,
		35.427143, 35.146816, 30.615080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139366, 34.892365, 29.843925>,  <35.074711, 34.566971, 30.443127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139366, 34.892365, 29.843925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379333, 35.141495, 30.044798>,  <35.523315, 35.290974, 30.165321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379333, 35.141495, 30.044798>,  <35.139366, 34.892365, 29.843925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379333, 35.141495, 30.044798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517407, 0.176727, -0.837292,
		-0.610237, 0.762138, -0.216233,
		0.599917, 0.622827, 0.502181,
		35.559307, 35.328342, 30.195452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244289, 35.527901, 29.455637>,  <35.139366, 34.892365, 29.843925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244289, 35.527901, 29.455637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554543, 35.492928, 29.705679>,  <35.740692, 35.471943, 29.855703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554543, 35.492928, 29.705679>,  <35.244289, 35.527901, 29.455637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554543, 35.492928, 29.705679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628306, 0.201484, -0.751423,
		-0.060249, 0.975582, 0.211212,
		0.775630, -0.087434, 0.625103,
		35.787231, 35.466698, 29.893209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704048, 35.931820, 29.155165>,  <35.244289, 35.527901, 29.455637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704048, 35.931820, 29.155165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901962, 35.750248, 29.451578>,  <36.020710, 35.641304, 29.629427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901962, 35.750248, 29.451578>,  <35.704048, 35.931820, 29.155165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901962, 35.750248, 29.451578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868016, 0.217317, -0.446454,
		0.041619, 0.864130, 0.501544,
		0.494788, -0.453930, 0.741035,
		36.050400, 35.614071, 29.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186821, 36.381721, 29.340277>,  <35.704048, 35.931820, 29.155165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186821, 36.381721, 29.340277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290260, 35.999252, 29.395206>,  <36.352325, 35.769772, 29.428165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290260, 35.999252, 29.395206>,  <36.186821, 36.381721, 29.340277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290260, 35.999252, 29.395206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648287, 0.066398, -0.758495,
		0.716134, 0.285176, 0.637045,
		0.258603, -0.956173, 0.137326,
		36.367840, 35.712402, 29.436405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941231, 36.380829, 29.268843>,  <36.186821, 36.381721, 29.340277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941231, 36.380829, 29.268843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815086, 36.004250, 29.221134>,  <36.739399, 35.778301, 29.192509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815086, 36.004250, 29.221134>,  <36.941231, 36.380829, 29.268843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815086, 36.004250, 29.221134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591917, -0.096908, -0.800152,
		0.741741, -0.322938, 0.587819,
		-0.315364, -0.941446, -0.119272,
		36.720478, 35.721817, 29.185352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625652, 36.055290, 29.190016>,  <36.941231, 36.380829, 29.268843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625652, 36.055290, 29.190016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358273, 35.801537, 29.034716>,  <37.197845, 35.649284, 28.941536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358273, 35.801537, 29.034716>,  <37.625652, 36.055290, 29.190016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358273, 35.801537, 29.034716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608165, -0.165706, -0.776323,
		0.428150, -0.755051, 0.496574,
		-0.668448, -0.634382, -0.388249,
		37.157738, 35.611221, 28.918242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981380, 35.675087, 28.845531>,  <37.625652, 36.055290, 29.190016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981380, 35.675087, 28.845531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631535, 35.555225, 28.693079>,  <37.421627, 35.483307, 28.601608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631535, 35.555225, 28.693079>,  <37.981380, 35.675087, 28.845531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631535, 35.555225, 28.693079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385447, 0.047078, -0.921528,
		0.294087, -0.952884, 0.074328,
		-0.874611, -0.299659, -0.381131,
		37.369152, 35.465328, 28.578739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040794, 35.078796, 28.400036>,  <37.981380, 35.675087, 28.845531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040794, 35.078796, 28.400036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706600, 35.263752, 28.281267>,  <37.506084, 35.374725, 28.210005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706600, 35.263752, 28.281267>,  <38.040794, 35.078796, 28.400036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706600, 35.263752, 28.281267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354888, 0.041481, -0.933988,
		-0.419546, -0.885708, -0.198752,
		-0.835485, 0.462386, -0.296924,
		37.455956, 35.402466, 28.192190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894218, 34.670509, 27.848343>,  <38.040794, 35.078796, 28.400036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894218, 34.670509, 27.848343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649277, 34.981510, 27.791058>,  <37.502312, 35.168110, 27.756687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649277, 34.981510, 27.791058>,  <37.894218, 34.670509, 27.848343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649277, 34.981510, 27.791058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207583, -0.016664, -0.978076,
		-0.762842, -0.628660, -0.151192,
		-0.612357, 0.777502, -0.143211,
		37.465569, 35.214760, 27.748095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611465, 34.563843, 27.200390>,  <37.894218, 34.670509, 27.848343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611465, 34.563843, 27.200390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569073, 34.957424, 27.257799>,  <37.543636, 35.193573, 27.292244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569073, 34.957424, 27.257799>,  <37.611465, 34.563843, 27.200390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569073, 34.957424, 27.257799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149720, 0.158481, -0.975944,
		-0.983032, -0.081943, -0.164114,
		-0.105981, 0.983956, 0.143523,
		37.537277, 35.252609, 27.300856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187069, 34.830441, 26.646572>,  <37.611465, 34.563843, 27.200390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187069, 34.830441, 26.646572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388237, 35.154278, 26.767651>,  <37.508938, 35.348579, 26.840298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388237, 35.154278, 26.767651>,  <37.187069, 34.830441, 26.646572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388237, 35.154278, 26.767651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113937, 0.285054, -0.951716,
		-0.856791, 0.513124, 0.051116,
		0.502919, 0.809597, 0.302696,
		37.539112, 35.397156, 26.858459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931107, 35.288483, 26.252884>,  <37.187069, 34.830441, 26.646572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931107, 35.288483, 26.252884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256920, 35.491222, 26.365765>,  <37.452408, 35.612865, 26.433493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256920, 35.491222, 26.365765>,  <36.931107, 35.288483, 26.252884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256920, 35.491222, 26.365765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106352, 0.347747, -0.931537,
		-0.570289, 0.788778, 0.229346,
		0.814531, 0.506854, 0.282204,
		37.501278, 35.643280, 26.450426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873173, 36.092289, 25.950144>,  <36.931107, 35.288483, 26.252884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873173, 36.092289, 25.950144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256401, 36.001141, 26.019629>,  <37.486340, 35.946453, 26.061319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256401, 36.001141, 26.019629>,  <36.873173, 36.092289, 25.950144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256401, 36.001141, 26.019629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251919, 0.381031, -0.889580,
		0.136521, 0.896041, 0.422460,
		0.958070, -0.227872, 0.173711,
		37.543823, 35.932777, 26.071741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118755, 36.754650, 25.901705>,  <36.873173, 36.092289, 25.950144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118755, 36.754650, 25.901705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416328, 36.497128, 25.830053>,  <37.594872, 36.342613, 25.787064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416328, 36.497128, 25.830053>,  <37.118755, 36.754650, 25.901705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416328, 36.497128, 25.830053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116982, 0.389374, -0.913621,
		0.657941, 0.658713, 0.364980,
		0.743928, -0.643804, -0.179127,
		37.639507, 36.303986, 25.776316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710907, 37.101933, 25.532566>,  <37.118755, 36.754650, 25.901705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710907, 37.101933, 25.532566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752060, 36.713589, 25.445997>,  <37.776752, 36.480583, 25.394056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752060, 36.713589, 25.445997>,  <37.710907, 37.101933, 25.532566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752060, 36.713589, 25.445997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053756, 0.222687, -0.973407,
		0.993240, 0.088511, 0.075100,
		0.102881, -0.970864, -0.216423,
		37.782925, 36.422329, 25.381071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278255, 37.019333, 25.011637>,  <37.710907, 37.101933, 25.532566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278255, 37.019333, 25.011637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108719, 36.657204, 25.000710>,  <38.006996, 36.439926, 24.994154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108719, 36.657204, 25.000710>,  <38.278255, 37.019333, 25.011637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108719, 36.657204, 25.000710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146979, -0.038987, -0.988371,
		0.893731, -0.422930, 0.149588,
		-0.423843, -0.905324, -0.027318,
		37.981567, 36.385605, 24.992514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692734, 36.664562, 24.596300>,  <38.278255, 37.019333, 25.011637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692734, 36.664562, 24.596300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342705, 36.470966, 24.597172>,  <38.132687, 36.354809, 24.597694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342705, 36.470966, 24.597172>,  <38.692734, 36.664562, 24.596300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342705, 36.470966, 24.597172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099173, -0.183713, -0.977964,
		0.473723, -0.855573, 0.208761,
		-0.875072, -0.483988, 0.002179,
		38.080185, 36.325771, 24.597826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817879, 36.096069, 24.137068>,  <38.692734, 36.664562, 24.596300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817879, 36.096069, 24.137068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419193, 36.118408, 24.160513>,  <38.179981, 36.131813, 24.174580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419193, 36.118408, 24.160513>,  <38.817879, 36.096069, 24.137068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419193, 36.118408, 24.160513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072870, -0.303455, -0.950055,
		-0.035272, -0.951208, 0.306529,
		-0.996717, 0.055847, 0.058612,
		38.120178, 36.135162, 24.178097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559128, 35.402225, 23.880772>,  <38.817879, 36.096069, 24.137068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559128, 35.402225, 23.880772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267822, 35.673740, 23.843061>,  <38.093040, 35.836647, 23.820436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267822, 35.673740, 23.843061>,  <38.559128, 35.402225, 23.880772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267822, 35.673740, 23.843061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117876, -0.259590, -0.958498,
		-0.675084, -0.686925, 0.269062,
		-0.728262, 0.678783, -0.094273,
		38.049343, 35.877377, 23.814779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057919, 35.062374, 23.495899>,  <38.559128, 35.402225, 23.880772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057919, 35.062374, 23.495899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002216, 35.457150, 23.463514>,  <37.968796, 35.694016, 23.444082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002216, 35.457150, 23.463514>,  <38.057919, 35.062374, 23.495899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002216, 35.457150, 23.463514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136062, -0.100055, -0.985635,
		-0.980865, -0.126236, 0.148219,
		-0.139253, 0.986941, -0.080964,
		37.960442, 35.753231, 23.439224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631123, 35.170120, 22.920574>,  <38.057919, 35.062374, 23.495899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631123, 35.170120, 22.920574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777966, 35.536709, 22.984211>,  <37.866070, 35.756664, 23.022392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777966, 35.536709, 22.984211>,  <37.631123, 35.170120, 22.920574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777966, 35.536709, 22.984211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089950, 0.135255, -0.986719,
		-0.925820, 0.376539, -0.032784,
		0.367104, 0.916474, 0.159092,
		37.888096, 35.811649, 23.031939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353077, 35.569653, 22.294384>,  <37.631123, 35.170120, 22.920574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353077, 35.569653, 22.294384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666233, 35.766106, 22.447157>,  <37.854126, 35.883980, 22.538820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666233, 35.766106, 22.447157>,  <37.353077, 35.569653, 22.294384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666233, 35.766106, 22.447157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347834, 0.163463, -0.923197,
		-0.515846, 0.855608, -0.042861,
		0.782889, 0.491136, 0.381931,
		37.901100, 35.913445, 22.561737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455677, 36.129101, 21.794228>,  <37.353077, 35.569653, 22.294384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455677, 36.129101, 21.794228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781982, 36.133163, 22.025543>,  <37.977768, 36.135601, 22.164333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781982, 36.133163, 22.025543>,  <37.455677, 36.129101, 21.794228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781982, 36.133163, 22.025543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563305, 0.212828, -0.798368,
		-0.131188, 0.977037, 0.167895,
		0.815768, 0.010160, 0.578290,
		38.026714, 36.136211, 22.199030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855865, 36.582180, 21.442316>,  <37.455677, 36.129101, 21.794228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855865, 36.582180, 21.442316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133720, 36.380600, 21.647652>,  <38.300434, 36.259651, 21.770853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133720, 36.380600, 21.647652>,  <37.855865, 36.582180, 21.442316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133720, 36.380600, 21.647652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684581, 0.243906, -0.686920,
		0.220964, 0.828582, 0.514419,
		0.694639, -0.503946, 0.513337,
		38.342113, 36.229416, 21.801653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450401, 36.984432, 21.513962>,  <37.855865, 36.582180, 21.442316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450401, 36.984432, 21.513962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631210, 36.638699, 21.602144>,  <38.739697, 36.431259, 21.655054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631210, 36.638699, 21.602144>,  <38.450401, 36.984432, 21.513962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631210, 36.638699, 21.602144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842378, 0.332339, -0.424205,
		0.293389, 0.377457, 0.878322,
		0.452020, -0.864336, 0.220457,
		38.766815, 36.379398, 21.668282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174438, 37.220604, 21.731462>,  <38.450401, 36.984432, 21.513962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174438, 37.220604, 21.731462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190445, 36.850292, 21.581081>,  <39.200047, 36.628105, 21.490852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190445, 36.850292, 21.581081>,  <39.174438, 37.220604, 21.731462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190445, 36.850292, 21.581081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844931, 0.232194, -0.481848,
		0.533376, -0.298375, 0.791507,
		0.040012, -0.925775, -0.375953,
		39.202450, 36.572559, 21.468296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898712, 37.008362, 21.841639>,  <39.174438, 37.220604, 21.731462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898712, 37.008362, 21.841639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735031, 36.767433, 21.567482>,  <39.636822, 36.622875, 21.402988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735031, 36.767433, 21.567482>,  <39.898712, 37.008362, 21.841639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735031, 36.767433, 21.567482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793256, 0.136350, -0.593425,
		0.450888, -0.786519, 0.422004,
		-0.409200, -0.602325, -0.685390,
		39.612270, 36.586735, 21.361864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458279, 36.634167, 21.676430>,  <39.898712, 37.008362, 21.841639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458279, 36.634167, 21.676430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196224, 36.593769, 21.376936>,  <40.038994, 36.569530, 21.197241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196224, 36.593769, 21.376936>,  <40.458279, 36.634167, 21.676430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196224, 36.593769, 21.376936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679007, 0.355846, -0.642123,
		0.331287, -0.929071, -0.164548,
		-0.655132, -0.100998, -0.748733,
		39.999683, 36.563469, 21.152315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827621, 36.229153, 21.157143>,  <40.458279, 36.634167, 21.676430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827621, 36.229153, 21.157143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521374, 36.381683, 20.949903>,  <40.337627, 36.473202, 20.825560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521374, 36.381683, 20.949903>,  <40.827621, 36.229153, 21.157143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521374, 36.381683, 20.949903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634505, 0.314929, -0.705849,
		-0.105994, -0.869145, -0.483066,
		-0.765617, 0.381324, -0.518096,
		40.291687, 36.496078, 20.794474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892719, 36.002182, 20.491516>,  <40.827621, 36.229153, 21.157143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892719, 36.002182, 20.491516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668877, 36.333241, 20.474358>,  <40.534569, 36.531876, 20.464062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668877, 36.333241, 20.474358>,  <40.892719, 36.002182, 20.491516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668877, 36.333241, 20.474358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564684, 0.342901, -0.750700,
		-0.606602, -0.444324, -0.659249,
		-0.559611, 0.827644, -0.042898,
		40.500992, 36.581535, 20.461489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680405, 36.079109, 19.821451>,  <40.892719, 36.002182, 20.491516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680405, 36.079109, 19.821451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657063, 36.448063, 19.974190>,  <40.643055, 36.669434, 20.065832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657063, 36.448063, 19.974190>,  <40.680405, 36.079109, 19.821451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657063, 36.448063, 19.974190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396032, 0.372501, -0.839286,
		-0.916380, 0.102244, -0.387031,
		-0.058358, 0.922382, 0.381845,
		40.639557, 36.724777, 20.088743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337570, 36.464485, 19.357758>,  <40.680405, 36.079109, 19.821451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337570, 36.464485, 19.357758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521152, 36.758698, 19.557100>,  <40.631302, 36.935223, 19.676706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521152, 36.758698, 19.557100>,  <40.337570, 36.464485, 19.357758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521152, 36.758698, 19.557100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137391, 0.495420, -0.857719,
		-0.877774, 0.462122, 0.126319,
		0.458952, 0.735529, 0.498358,
		40.658836, 36.979355, 19.706608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995052, 37.127460, 19.173269>,  <40.337570, 36.464485, 19.357758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995052, 37.127460, 19.173269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381645, 37.159424, 19.270868>,  <40.613602, 37.178600, 19.329428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381645, 37.159424, 19.270868>,  <39.995052, 37.127460, 19.173269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381645, 37.159424, 19.270868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161112, 0.551192, -0.818676,
		-0.199906, 0.830544, 0.519841,
		0.966478, 0.079905, 0.243997,
		40.671589, 37.183395, 19.344067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279613, 37.860794, 19.179491>,  <39.995052, 37.127460, 19.173269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279613, 37.860794, 19.179491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594547, 37.624996, 19.107281>,  <40.783508, 37.483517, 19.063953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594547, 37.624996, 19.107281>,  <40.279613, 37.860794, 19.179491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594547, 37.624996, 19.107281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348977, 0.667522, -0.657745,
		0.508246, 0.454867, 0.731287,
		0.787337, -0.589499, -0.180527,
		40.830750, 37.448147, 19.053122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743534, 38.416611, 18.891661>,  <40.279613, 37.860794, 19.179491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743534, 38.416611, 18.891661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695927, 38.036007, 18.778198>,  <39.667362, 37.807644, 18.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695927, 38.036007, 18.778198>,  <39.743534, 38.416611, 18.891661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695927, 38.036007, 18.778198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759180, 0.096914, -0.643625,
		0.639907, -0.291948, 0.710834,
		-0.119015, -0.951511, -0.283657,
		39.660221, 37.750553, 18.693102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309486, 38.602345, 19.195316>,  <39.743534, 38.416611, 18.891661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309486, 38.602345, 19.195316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468727, 38.955517, 19.294874>,  <40.564270, 39.167419, 19.354609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468727, 38.955517, 19.294874>,  <40.309486, 38.602345, 19.195316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468727, 38.955517, 19.294874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071888, 0.240459, -0.967994,
		-0.914521, 0.403251, 0.032255,
		0.398100, 0.882932, 0.248893,
		40.588158, 39.220398, 19.369543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992626, 39.306896, 18.947672>,  <40.309486, 38.602345, 19.195316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992626, 39.306896, 18.947672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388763, 39.346863, 18.986132>,  <40.626446, 39.370842, 19.009207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388763, 39.346863, 18.986132>,  <39.992626, 39.306896, 18.947672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388763, 39.346863, 18.986132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046113, 0.416615, -0.907913,
		-0.130775, 0.903575, 0.407983,
		0.990339, 0.099919, 0.096150,
		40.685863, 39.376839, 19.014977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411385, 39.067822, 18.523920>,  <39.992626, 39.306896, 18.947672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411385, 39.067822, 18.523920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382881, 39.421776, 18.339792>,  <40.365780, 39.634148, 18.229317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382881, 39.421776, 18.339792>,  <40.411385, 39.067822, 18.523920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382881, 39.421776, 18.339792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346216, -0.454743, -0.820575,
		-0.935445, 0.100895, 0.338768,
		-0.071261, 0.884889, -0.460318,
		40.361504, 39.687244, 18.201696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052860, 39.212963, 18.420292>,  <40.411385, 39.067822, 18.523920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052860, 39.212963, 18.420292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292019, 39.531960, 18.452621>,  <41.435513, 39.723358, 18.472019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292019, 39.531960, 18.452621>,  <41.052860, 39.212963, 18.420292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292019, 39.531960, 18.452621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444043, 0.245578, 0.861695,
		0.667343, -0.551093, 0.500949,
		0.597896, 0.797489, 0.080824,
		41.471386, 39.771206, 18.476870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504532, 39.199139, 18.996731>,  <41.052860, 39.212963, 18.420292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504532, 39.199139, 18.996731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368809, 39.559166, 18.887375>,  <41.287373, 39.775181, 18.821762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368809, 39.559166, 18.887375>,  <41.504532, 39.199139, 18.996731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368809, 39.559166, 18.887375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499175, 0.074050, 0.863331,
		0.797302, 0.429408, 0.424167,
		-0.339312, 0.900069, -0.273391,
		41.267014, 39.829185, 18.805357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698071, 39.737865, 19.498699>,  <41.504532, 39.199139, 18.996731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698071, 39.737865, 19.498699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344486, 39.757378, 19.312695>,  <41.132336, 39.769085, 19.201092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344486, 39.757378, 19.312695>,  <41.698071, 39.737865, 19.498699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344486, 39.757378, 19.312695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466798, -0.148942, 0.871731,
		-0.026739, 0.987642, 0.154428,
		-0.883959, 0.048778, -0.465012,
		41.079300, 39.772011, 19.173191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259914, 40.254608, 19.858982>,  <41.698071, 39.737865, 19.498699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259914, 40.254608, 19.858982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055031, 39.955944, 19.689207>,  <40.932102, 39.776745, 19.587343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055031, 39.955944, 19.689207>,  <41.259914, 40.254608, 19.858982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055031, 39.955944, 19.689207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371908, -0.252628, 0.893232,
		-0.774164, 0.615370, -0.148291,
		-0.512206, -0.746658, -0.424436,
		40.901367, 39.731945, 19.561876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452026, 40.417938, 19.772423>,  <41.259914, 40.254608, 19.858982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452026, 40.417938, 19.772423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522457, 40.024986, 19.797506>,  <40.564716, 39.789215, 19.812557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522457, 40.024986, 19.797506>,  <40.452026, 40.417938, 19.772423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522457, 40.024986, 19.797506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589456, -0.054202, 0.805980,
		-0.788378, -0.178877, -0.588612,
		0.176076, -0.982377, 0.062709,
		40.575279, 39.730274, 19.816319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812950, 39.966778, 19.923405>,  <40.452026, 40.417938, 19.772423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812950, 39.966778, 19.923405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082264, 39.697235, 20.045135>,  <40.243851, 39.535511, 20.118174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082264, 39.697235, 20.045135>,  <39.812950, 39.966778, 19.923405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082264, 39.697235, 20.045135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529416, -0.152030, 0.834629,
		-0.516151, -0.723055, -0.459108,
		0.673281, -0.673853, 0.304326,
		40.284248, 39.495079, 20.136433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477219, 39.432545, 20.291691>,  <39.812950, 39.966778, 19.923405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477219, 39.432545, 20.291691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849762, 39.381474, 20.428087>,  <40.073288, 39.350830, 20.509926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849762, 39.381474, 20.428087>,  <39.477219, 39.432545, 20.291691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849762, 39.381474, 20.428087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344809, -0.008398, 0.938635,
		-0.116980, -0.991780, -0.051847,
		0.931355, -0.127679, 0.340992,
		40.129169, 39.343170, 20.530384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477188, 38.847160, 20.705444>,  <39.477219, 39.432545, 20.291691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477188, 38.847160, 20.705444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809364, 39.030388, 20.832279>,  <40.008671, 39.140324, 20.908381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809364, 39.030388, 20.832279>,  <39.477188, 38.847160, 20.705444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809364, 39.030388, 20.832279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287289, -0.135540, 0.948205,
		0.477320, -0.878523, 0.019040,
		0.830440, 0.458068, 0.317086,
		40.058495, 39.167809, 20.927404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718033, 38.438618, 21.290527>,  <39.477188, 38.847160, 20.705444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718033, 38.438618, 21.290527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895325, 38.793396, 21.342493>,  <40.001701, 39.006264, 21.373672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895325, 38.793396, 21.342493>,  <39.718033, 38.438618, 21.290527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895325, 38.793396, 21.342493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362792, 0.044964, 0.930785,
		0.819711, -0.459686, 0.341705,
		0.443234, 0.886942, 0.129913,
		40.028294, 39.059479, 21.381468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950508, 38.377838, 21.923452>,  <39.718033, 38.438618, 21.290527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950508, 38.377838, 21.923452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938347, 38.769886, 21.845028>,  <39.931049, 39.005116, 21.797974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938347, 38.769886, 21.845028>,  <39.950508, 38.377838, 21.923452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938347, 38.769886, 21.845028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300246, 0.178140, 0.937080,
		0.953377, 0.087355, 0.288861,
		-0.030401, 0.980120, -0.196063,
		39.929226, 39.063923, 21.786209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229313, 38.575237, 22.477591>,  <39.950508, 38.377838, 21.923452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229313, 38.575237, 22.477591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039291, 38.892941, 22.326075>,  <39.925278, 39.083561, 22.235165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039291, 38.892941, 22.326075>,  <40.229313, 38.575237, 22.477591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039291, 38.892941, 22.326075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231721, 0.302357, 0.924600,
		0.848897, 0.527012, 0.040409,
		-0.475058, 0.794253, -0.378790,
		39.896774, 39.131218, 22.212437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562416, 39.130020, 22.807514>,  <40.229313, 38.575237, 22.477591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562416, 39.130020, 22.807514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198154, 39.249023, 22.692835>,  <39.979599, 39.320427, 22.624027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198154, 39.249023, 22.692835>,  <40.562416, 39.130020, 22.807514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198154, 39.249023, 22.692835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229414, 0.213009, 0.949735,
		0.343626, 0.930653, -0.125725,
		-0.910654, 0.297510, -0.286700,
		39.924957, 39.338276, 22.606825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470627, 39.797203, 23.121172>,  <40.562416, 39.130020, 22.807514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470627, 39.797203, 23.121172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104019, 39.656548, 23.044910>,  <39.884056, 39.572155, 22.999153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104019, 39.656548, 23.044910>,  <40.470627, 39.797203, 23.121172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104019, 39.656548, 23.044910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256790, 0.151801, 0.954471,
		-0.306691, 0.923745, -0.229426,
		-0.916515, -0.351642, -0.190652,
		39.829063, 39.551056, 22.987715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077595, 40.228607, 23.502096>,  <40.470627, 39.797203, 23.121172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077595, 40.228607, 23.502096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865376, 39.896706, 23.432779>,  <39.738045, 39.697567, 23.391190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865376, 39.896706, 23.432779>,  <40.077595, 40.228607, 23.502096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865376, 39.896706, 23.432779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485975, 0.130247, 0.864213,
		-0.694511, 0.542723, -0.472341,
		-0.530549, -0.829751, -0.173292,
		39.706211, 39.647781, 23.380793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492931, 40.353951, 23.906126>,  <40.077595, 40.228607, 23.502096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492931, 40.353951, 23.906126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415257, 39.975403, 23.802834>,  <39.368652, 39.748276, 23.740858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415257, 39.975403, 23.802834>,  <39.492931, 40.353951, 23.906126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415257, 39.975403, 23.802834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597792, -0.094556, 0.796055,
		-0.777777, 0.308948, -0.547370,
		-0.194182, -0.946367, -0.258231,
		39.357002, 39.691494, 23.725365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826008, 40.222099, 24.061417>,  <39.492931, 40.353951, 23.906126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826008, 40.222099, 24.061417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943691, 39.840862, 24.032980>,  <39.014301, 39.612122, 24.015917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943691, 39.840862, 24.032980>,  <38.826008, 40.222099, 24.061417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943691, 39.840862, 24.032980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460130, -0.206450, 0.863515,
		-0.837687, -0.221344, -0.499287,
		0.294212, -0.953093, -0.071093,
		39.031956, 39.554935, 24.011652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255806, 39.840088, 24.077343>,  <38.826008, 40.222099, 24.061417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255806, 39.840088, 24.077343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573139, 39.632488, 24.204628>,  <38.763538, 39.507927, 24.280998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573139, 39.632488, 24.204628>,  <38.255806, 39.840088, 24.077343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573139, 39.632488, 24.204628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464013, -0.177132, 0.867938,
		-0.394094, -0.836220, -0.381348,
		0.793335, -0.519000, 0.318210,
		38.811138, 39.476788, 24.300091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089855, 39.155972, 24.104382>,  <38.255806, 39.840088, 24.077343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089855, 39.155972, 24.104382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403233, 39.181622, 24.351639>,  <38.591259, 39.197010, 24.499992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403233, 39.181622, 24.351639>,  <38.089855, 39.155972, 24.104382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403233, 39.181622, 24.351639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600190, -0.179923, 0.779359,
		0.161191, -0.981589, -0.102475,
		0.783448, 0.064121, 0.618141,
		38.638268, 39.200859, 24.537081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909550, 38.595707, 24.515440>,  <38.089855, 39.155972, 24.104382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909550, 38.595707, 24.515440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196079, 38.802979, 24.702362>,  <38.367996, 38.927341, 24.814514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196079, 38.802979, 24.702362>,  <37.909550, 38.595707, 24.515440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196079, 38.802979, 24.702362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353257, -0.308232, 0.883291,
		0.601743, -0.797798, -0.037742,
		0.716321, 0.518181, 0.467304,
		38.410976, 38.958431, 24.842554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111721, 38.166180, 25.092894>,  <37.909550, 38.595707, 24.515440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111721, 38.166180, 25.092894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247433, 38.524166, 25.208773>,  <38.328857, 38.738960, 25.278299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247433, 38.524166, 25.208773>,  <38.111721, 38.166180, 25.092894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247433, 38.524166, 25.208773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430889, -0.125898, 0.893579,
		0.836197, -0.427998, 0.342917,
		0.339277, 0.894968, 0.289696,
		38.349216, 38.792656, 25.295681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197094, 38.098106, 25.774719>,  <38.111721, 38.166180, 25.092894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197094, 38.098106, 25.774719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153915, 38.492924, 25.727245>,  <38.128010, 38.729816, 25.698761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153915, 38.492924, 25.727245>,  <38.197094, 38.098106, 25.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153915, 38.492924, 25.727245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349848, 0.074030, 0.933877,
		0.930567, 0.142329, 0.337325,
		-0.107946, 0.987047, -0.118684,
		38.121532, 38.789040, 25.691641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678082, 38.474136, 26.251795>,  <38.197094, 38.098106, 25.774719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678082, 38.474136, 26.251795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365845, 38.704807, 26.155373>,  <38.178501, 38.843212, 26.097519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365845, 38.704807, 26.155373>,  <38.678082, 38.474136, 26.251795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365845, 38.704807, 26.155373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304913, -0.014676, 0.952267,
		0.545616, 0.816838, 0.187293,
		-0.780597, 0.576681, -0.241057,
		38.131664, 38.877811, 26.083055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683968, 39.056335, 26.798351>,  <38.678082, 38.474136, 26.251795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683968, 39.056335, 26.798351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318829, 39.017643, 26.639677>,  <38.099747, 38.994427, 26.544472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318829, 39.017643, 26.639677>,  <38.683968, 39.056335, 26.798351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318829, 39.017643, 26.639677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403947, 0.072309, 0.911920,
		-0.059526, 0.992681, -0.105081,
		-0.912844, -0.096730, -0.396686,
		38.044975, 38.988625, 26.520672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336086, 39.354965, 27.294367>,  <38.683968, 39.056335, 26.798351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336086, 39.354965, 27.294367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084999, 39.143196, 27.066092>,  <37.934345, 39.016136, 26.929127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084999, 39.143196, 27.066092>,  <38.336086, 39.354965, 27.294367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084999, 39.143196, 27.066092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623857, -0.096344, 0.775577,
		-0.465589, 0.842871, -0.269806,
		-0.627717, -0.529420, -0.570688,
		37.896683, 38.984371, 26.894884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730583, 39.674263, 27.362040>,  <38.336086, 39.354965, 27.294367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730583, 39.674263, 27.362040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638680, 39.297249, 27.265020>,  <37.583538, 39.071041, 27.206808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638680, 39.297249, 27.265020>,  <37.730583, 39.674263, 27.362040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638680, 39.297249, 27.265020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591527, -0.062664, 0.803847,
		-0.772856, 0.328168, -0.543139,
		-0.229761, -0.942539, -0.242550,
		37.569752, 39.014488, 27.192255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090595, 39.627300, 27.580847>,  <37.730583, 39.674263, 27.362040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090595, 39.627300, 27.580847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159416, 39.237610, 27.522482>,  <37.200710, 39.003796, 27.487463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159416, 39.237610, 27.522482>,  <37.090595, 39.627300, 27.580847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159416, 39.237610, 27.522482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589539, -0.220498, 0.777061,
		-0.789202, -0.047677, -0.612279,
		0.172054, -0.974221, -0.145910,
		37.211033, 38.945343, 27.478708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421131, 39.344536, 27.711329>,  <37.090595, 39.627300, 27.580847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421131, 39.344536, 27.711329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679604, 39.039940, 27.731670>,  <36.834686, 38.857182, 27.743876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679604, 39.039940, 27.731670>,  <36.421131, 39.344536, 27.711329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679604, 39.039940, 27.731670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533792, -0.403323, 0.743234,
		-0.545454, -0.507407, -0.667096,
		0.646177, -0.761491, 0.050856,
		36.873459, 38.811493, 27.746927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002567, 38.715244, 27.637104>,  <36.421131, 39.344536, 27.711329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002567, 38.715244, 27.637104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341022, 38.660992, 27.843267>,  <36.544098, 38.628441, 27.966967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341022, 38.660992, 27.843267>,  <36.002567, 38.715244, 27.637104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341022, 38.660992, 27.843267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514022, -0.463166, 0.721982,
		0.140799, -0.875832, -0.461621,
		0.846143, -0.135629, 0.515410,
		36.594864, 38.620304, 27.997890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930099, 38.093376, 28.055048>,  <36.002567, 38.715244, 27.637104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930099, 38.093376, 28.055048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247700, 38.267559, 28.224726>,  <36.438259, 38.372070, 28.326532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247700, 38.267559, 28.224726>,  <35.930099, 38.093376, 28.055048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247700, 38.267559, 28.224726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301880, -0.323239, 0.896875,
		0.527672, -0.840172, -0.125194,
		0.793997, 0.435462, 0.424196,
		36.485897, 38.398197, 28.351984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275047, 37.546207, 28.508406>,  <35.930099, 38.093376, 28.055048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275047, 37.546207, 28.508406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364040, 37.910149, 28.648506>,  <36.417435, 38.128513, 28.732567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364040, 37.910149, 28.648506>,  <36.275047, 37.546207, 28.508406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364040, 37.910149, 28.648506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205039, -0.307553, 0.929177,
		0.953133, -0.278538, 0.118131,
		0.222479, 0.909850, 0.350250,
		36.430782, 38.183105, 28.753582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636177, 37.450100, 29.234787>,  <36.275047, 37.546207, 28.508406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636177, 37.450100, 29.234787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526382, 37.834404, 29.218777>,  <36.460506, 38.064987, 29.209169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526382, 37.834404, 29.218777>,  <36.636177, 37.450100, 29.234787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526382, 37.834404, 29.218777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333812, -0.056166, 0.940965,
		0.901792, 0.271641, 0.336129,
		-0.274483, 0.960759, -0.040027,
		36.444038, 38.122631, 29.206768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966816, 37.859909, 29.772793>,  <36.636177, 37.450100, 29.234787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966816, 37.859909, 29.772793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637325, 38.069942, 29.687231>,  <36.439629, 38.195961, 29.635895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637325, 38.069942, 29.687231>,  <36.966816, 37.859909, 29.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637325, 38.069942, 29.687231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209800, 0.068209, 0.975362,
		0.526738, 0.848312, 0.053977,
		-0.823730, 0.525085, -0.213904,
		36.390205, 38.227467, 29.623060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124748, 38.444916, 30.252155>,  <36.966816, 37.859909, 29.772793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124748, 38.444916, 30.252155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740639, 38.375568, 30.164688>,  <36.510174, 38.333961, 30.112207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740639, 38.375568, 30.164688>,  <37.124748, 38.444916, 30.252155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740639, 38.375568, 30.164688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261861, 0.289035, 0.920808,
		-0.096437, 0.941489, -0.322951,
		-0.960275, -0.173369, -0.218666,
		36.452557, 38.323559, 30.099089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768063, 38.884399, 30.692223>,  <37.124748, 38.444916, 30.252155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768063, 38.884399, 30.692223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464649, 38.681042, 30.529173>,  <36.282600, 38.559025, 30.431343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464649, 38.681042, 30.529173>,  <36.768063, 38.884399, 30.692223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464649, 38.681042, 30.529173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575340, 0.228813, 0.785257,
		-0.305953, 0.830167, -0.466064,
		-0.758536, -0.508397, -0.407622,
		36.237087, 38.528522, 30.406887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102211, 39.392262, 30.632990>,  <36.768063, 38.884399, 30.692223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102211, 39.392262, 30.632990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036007, 39.001854, 30.689552>,  <35.996284, 38.767609, 30.723490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036007, 39.001854, 30.689552>,  <36.102211, 39.392262, 30.632990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036007, 39.001854, 30.689552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450776, 0.202402, 0.869388,
		-0.877158, 0.080153, -0.473465,
		-0.165514, -0.976017, 0.141407,
		35.986351, 38.709049, 30.731974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462059, 39.444298, 31.053057>,  <36.102211, 39.392262, 30.632990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462059, 39.444298, 31.053057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554668, 39.057106, 31.091852>,  <35.610233, 38.824791, 31.115129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554668, 39.057106, 31.091852>,  <35.462059, 39.444298, 31.053057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554668, 39.057106, 31.091852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551576, -0.048489, 0.832714,
		-0.801350, -0.246287, -0.545143,
		0.231520, -0.967983, 0.096990,
		35.624123, 38.766712, 31.120949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826073, 39.057747, 31.198120>,  <35.462059, 39.444298, 31.053057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826073, 39.057747, 31.198120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105156, 38.795673, 31.314009>,  <35.272606, 38.638432, 31.383541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105156, 38.795673, 31.314009>,  <34.826073, 39.057747, 31.198120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105156, 38.795673, 31.314009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539757, -0.214869, 0.813937,
		-0.471024, -0.724272, -0.503555,
		0.697710, -0.655181, 0.289722,
		35.314468, 38.599121, 31.400925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529301, 38.466034, 31.442427>,  <34.826073, 39.057747, 31.198120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529301, 38.466034, 31.442427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887505, 38.464180, 31.620438>,  <35.102425, 38.463066, 31.727243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887505, 38.464180, 31.620438>,  <34.529301, 38.466034, 31.442427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887505, 38.464180, 31.620438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443247, -0.099214, 0.890892,
		0.040024, -0.995055, -0.090901,
		0.895505, -0.004635, 0.445027,
		35.156155, 38.462788, 31.753946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573994, 37.865131, 31.681677>,  <34.529301, 38.466034, 31.442427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573994, 37.865131, 31.681677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833069, 38.079418, 31.898380>,  <34.988514, 38.207989, 32.028400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833069, 38.079418, 31.898380>,  <34.573994, 37.865131, 31.681677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833069, 38.079418, 31.898380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453165, -0.300742, 0.839164,
		0.612485, -0.789025, 0.047981,
		0.647691, 0.535719, 0.541758,
		35.027378, 38.240135, 32.060909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862480, 37.383682, 32.141727>,  <34.573994, 37.865131, 31.681677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862480, 37.383682, 32.141727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966354, 37.728153, 32.316513>,  <35.028679, 37.934834, 32.421387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966354, 37.728153, 32.316513>,  <34.862480, 37.383682, 32.141727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966354, 37.728153, 32.316513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306356, -0.355651, 0.882983,
		0.915810, -0.363167, 0.171468,
		0.259687, 0.861175, 0.436967,
		35.044262, 37.986507, 32.447601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290600, 37.160210, 32.687065>,  <34.862480, 37.383682, 32.141727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290600, 37.160210, 32.687065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145569, 37.521774, 32.777828>,  <35.058548, 37.738712, 32.832287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145569, 37.521774, 32.777828>,  <35.290600, 37.160210, 32.687065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145569, 37.521774, 32.777828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470334, -0.387671, 0.792778,
		0.804563, 0.180723, 0.565701,
		-0.362579, 0.903908, 0.226906,
		35.036797, 37.792946, 32.845901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424236, 37.229488, 33.430817>,  <35.290600, 37.160210, 32.687065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424236, 37.229488, 33.430817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143288, 37.502556, 33.350189>,  <34.974716, 37.666397, 33.301815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143288, 37.502556, 33.350189>,  <35.424236, 37.229488, 33.430817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143288, 37.502556, 33.350189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449745, -0.206132, 0.869045,
		0.551725, 0.701047, 0.451811,
		-0.702374, 0.682673, -0.201564,
		34.932575, 37.707359, 33.289719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301292, 37.629494, 34.081741>,  <35.424236, 37.229488, 33.430817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301292, 37.629494, 34.081741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981468, 37.679790, 33.846832>,  <34.789574, 37.709969, 33.705887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981468, 37.679790, 33.846832>,  <35.301292, 37.629494, 34.081741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981468, 37.679790, 33.846832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599914, -0.213312, 0.771104,
		-0.028313, 0.968859, 0.245990,
		-0.799563, 0.125741, -0.587271,
		34.741600, 37.717514, 33.670650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676956, 38.160233, 33.532459>,  <35.301292, 37.629494, 34.081741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676956, 38.160233, 33.532459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962032, 37.952938, 33.721565>,  <36.133076, 37.828564, 33.835030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962032, 37.952938, 33.721565>,  <35.676956, 38.160233, 33.532459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962032, 37.952938, 33.721565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682906, 0.358507, -0.636484,
		0.160357, 0.776470, 0.609410,
		0.712688, -0.518234, 0.472767,
		36.175838, 37.797466, 33.863396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342621, 38.571846, 33.510231>,  <35.676956, 38.160233, 33.532459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342621, 38.571846, 33.510231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456848, 38.198914, 33.598969>,  <36.525387, 37.975155, 33.652210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456848, 38.198914, 33.598969>,  <36.342621, 38.571846, 33.510231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456848, 38.198914, 33.598969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840378, 0.132345, -0.525595,
		0.460667, 0.336526, 0.821301,
		0.285572, -0.932328, 0.221842,
		36.542519, 37.919216, 33.665520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014084, 38.638489, 33.785759>,  <36.342621, 38.571846, 33.510231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014084, 38.638489, 33.785759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001888, 38.255001, 33.672668>,  <36.994572, 38.024910, 33.604813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001888, 38.255001, 33.672668>,  <37.014084, 38.638489, 33.785759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001888, 38.255001, 33.672668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843566, 0.127051, -0.521780,
		0.536159, -0.254406, 0.804867,
		-0.030485, -0.958715, -0.282728,
		36.992744, 37.967388, 33.587849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745792, 38.318291, 33.715305>,  <37.014084, 38.638489, 33.785759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745792, 38.318291, 33.715305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547112, 38.055107, 33.488899>,  <37.427902, 37.897198, 33.353054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547112, 38.055107, 33.488899>,  <37.745792, 38.318291, 33.715305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547112, 38.055107, 33.488899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817230, -0.134940, -0.560292,
		0.292274, -0.740862, 0.604731,
		-0.496701, -0.657963, -0.566015,
		37.398102, 37.857719, 33.319096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054775, 37.710411, 33.741241>,  <37.745792, 38.318291, 33.715305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054775, 37.710411, 33.741241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842155, 37.670776, 33.404758>,  <37.714584, 37.646996, 33.202869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842155, 37.670776, 33.404758>,  <38.054775, 37.710411, 33.741241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842155, 37.670776, 33.404758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847022, -0.065167, -0.527548,
		-0.002547, -0.992943, 0.118567,
		-0.531551, -0.099085, -0.841211,
		37.682690, 37.641052, 33.152393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390797, 37.186054, 33.223930>,  <38.054775, 37.710411, 33.741241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390797, 37.186054, 33.223930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153080, 37.382217, 32.968956>,  <38.010448, 37.499916, 32.815971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153080, 37.382217, 32.968956>,  <38.390797, 37.186054, 33.223930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153080, 37.382217, 32.968956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731371, -0.000143, -0.681980,
		-0.334538, -0.871494, -0.358583,
		-0.594291, 0.490405, -0.637433,
		37.974792, 37.529339, 32.777725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546062, 36.906883, 32.513397>,  <38.390797, 37.186054, 33.223930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546062, 36.906883, 32.513397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351559, 37.240910, 32.410469>,  <38.234856, 37.441326, 32.348713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351559, 37.240910, 32.410469>,  <38.546062, 36.906883, 32.513397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351559, 37.240910, 32.410469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667545, 0.164980, -0.726061,
		-0.563859, -0.524826, -0.637668,
		-0.486258, 0.835069, -0.257319,
		38.205681, 37.491428, 32.333275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359886, 36.860233, 31.730946>,  <38.546062, 36.906883, 32.513397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359886, 36.860233, 31.730946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371387, 37.242199, 31.849134>,  <38.378288, 37.471378, 31.920048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371387, 37.242199, 31.849134>,  <38.359886, 36.860233, 31.730946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371387, 37.242199, 31.849134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535574, 0.234866, -0.811171,
		-0.843998, 0.181572, -0.504677,
		0.028755, 0.954919, 0.295472,
		38.380013, 37.528675, 31.937777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447269, 37.196732, 31.099642>,  <38.359886, 36.860233, 31.730946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447269, 37.196732, 31.099642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495953, 37.496208, 31.360304>,  <38.525162, 37.675892, 31.516701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495953, 37.496208, 31.360304>,  <38.447269, 37.196732, 31.099642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495953, 37.496208, 31.360304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558368, 0.491156, -0.668574,
		-0.820617, 0.445234, -0.358265,
		0.121708, 0.748687, 0.651655,
		38.532463, 37.720814, 31.555801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194565, 37.832226, 30.783407>,  <38.447269, 37.196732, 31.099642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194565, 37.832226, 30.783407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439362, 37.949848, 31.077074>,  <38.586239, 38.020420, 31.253275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439362, 37.949848, 31.077074>,  <38.194565, 37.832226, 30.783407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439362, 37.949848, 31.077074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549676, 0.509286, -0.662182,
		-0.568619, 0.808801, 0.150041,
		0.611987, 0.294055, 0.734168,
		38.622959, 38.038063, 31.297325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206982, 38.465256, 30.654963>,  <38.194565, 37.832226, 30.783407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206982, 38.465256, 30.654963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538578, 38.353027, 30.848476>,  <38.737537, 38.285690, 30.964584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538578, 38.353027, 30.848476>,  <38.206982, 38.465256, 30.654963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538578, 38.353027, 30.848476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559164, 0.431567, -0.707874,
		-0.010176, 0.857338, 0.514653,
		0.828995, -0.280572, 0.483784,
		38.787277, 38.268856, 30.993612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670166, 38.967781, 30.550127>,  <38.206982, 38.465256, 30.654963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670166, 38.967781, 30.550127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914112, 38.681915, 30.687136>,  <39.060478, 38.510395, 30.769341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914112, 38.681915, 30.687136>,  <38.670166, 38.967781, 30.550127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914112, 38.681915, 30.687136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613001, 0.151466, -0.775427,
		0.502290, 0.682871, 0.530464,
		0.609864, -0.714665, 0.342521,
		39.097073, 38.467514, 30.789892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334698, 39.199276, 30.610090>,  <38.670166, 38.967781, 30.550127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334698, 39.199276, 30.610090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348812, 38.807938, 30.528515>,  <39.357281, 38.573135, 30.479570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348812, 38.807938, 30.528515>,  <39.334698, 39.199276, 30.610090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348812, 38.807938, 30.528515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546373, 0.189753, -0.815763,
		0.836798, -0.082641, 0.541239,
		0.035286, -0.978348, -0.203938,
		39.359398, 38.514435, 30.467333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085350, 39.320854, 30.426964>,  <39.334698, 39.199276, 30.610090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085350, 39.320854, 30.426964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909916, 38.983841, 30.301891>,  <39.804653, 38.781631, 30.226847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909916, 38.983841, 30.301891>,  <40.085350, 39.320854, 30.426964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909916, 38.983841, 30.301891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403212, 0.126461, -0.906327,
		0.803156, -0.523583, 0.284256,
		-0.438589, -0.842537, -0.312682,
		39.778339, 38.731079, 30.208086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611401, 39.049267, 30.042234>,  <40.085350, 39.320854, 30.426964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611401, 39.049267, 30.042234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302372, 38.833069, 29.908966>,  <40.116955, 38.703350, 29.829006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302372, 38.833069, 29.908966>,  <40.611401, 39.049267, 30.042234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302372, 38.833069, 29.908966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283215, 0.176285, -0.942716,
		0.568267, -0.822671, 0.016884,
		-0.772568, -0.540496, -0.333170,
		40.070602, 38.670921, 29.809015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881294, 38.496365, 29.574928>,  <40.611401, 39.049267, 30.042234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881294, 38.496365, 29.574928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498104, 38.536076, 29.467283>,  <40.268188, 38.559902, 29.402697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498104, 38.536076, 29.467283>,  <40.881294, 38.496365, 29.574928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498104, 38.536076, 29.467283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261762, -0.081062, -0.961722,
		-0.117290, -0.991753, 0.051669,
		-0.957979, 0.099275, -0.269111,
		40.210709, 38.565857, 29.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828651, 38.065380, 29.089569>,  <40.881294, 38.496365, 29.574928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828651, 38.065380, 29.089569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503147, 38.289948, 29.029421>,  <40.307846, 38.424686, 28.993332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503147, 38.289948, 29.029421>,  <40.828651, 38.065380, 29.089569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503147, 38.289948, 29.029421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175293, -0.009601, -0.984470,
		-0.554142, -0.827477, -0.090600,
		-0.813756, 0.561418, -0.150371,
		40.259022, 38.458374, 28.984310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604900, 37.753540, 28.474985>,  <40.828651, 38.065380, 29.089569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604900, 37.753540, 28.474985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433025, 38.113102, 28.509241>,  <40.329899, 38.328838, 28.529795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433025, 38.113102, 28.509241>,  <40.604900, 37.753540, 28.474985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433025, 38.113102, 28.509241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090167, 0.137080, -0.986448,
		-0.898464, -0.416144, -0.139954,
		-0.429689, 0.898907, 0.085639,
		40.304119, 38.382774, 28.534933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071598, 37.830685, 27.956556>,  <40.604900, 37.753540, 28.474985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071598, 37.830685, 27.956556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160732, 38.210403, 28.045269>,  <40.214214, 38.438232, 28.098497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160732, 38.210403, 28.045269>,  <40.071598, 37.830685, 27.956556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160732, 38.210403, 28.045269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051682, 0.238688, -0.969720,
		-0.973485, 0.204626, 0.102249,
		0.222835, 0.949293, 0.221784,
		40.227581, 38.495190, 28.111805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762974, 38.278194, 27.468801>,  <40.071598, 37.830685, 27.956556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762974, 38.278194, 27.468801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046555, 38.533726, 27.588324>,  <40.216702, 38.687046, 27.660036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046555, 38.533726, 27.588324>,  <39.762974, 38.278194, 27.468801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046555, 38.533726, 27.588324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159284, 0.267699, -0.950245,
		-0.687034, 0.721274, 0.088031,
		0.708952, 0.638828, 0.298806,
		40.259239, 38.725376, 27.677965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610802, 38.852512, 27.104807>,  <39.762974, 38.278194, 27.468801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610802, 38.852512, 27.104807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997627, 38.842083, 27.206081>,  <40.229725, 38.835827, 27.266846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997627, 38.842083, 27.206081>,  <39.610802, 38.852512, 27.104807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997627, 38.842083, 27.206081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253369, 0.003939, -0.967362,
		0.024224, 0.999652, 0.010416,
		0.967066, -0.026073, 0.253186,
		40.287746, 38.834263, 27.282038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851501, 39.363663, 26.677027>,  <39.610802, 38.852512, 27.104807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851501, 39.363663, 26.677027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150738, 39.123486, 26.790039>,  <40.330280, 38.979378, 26.857845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150738, 39.123486, 26.790039>,  <39.851501, 39.363663, 26.677027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150738, 39.123486, 26.790039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362720, 0.013468, -0.931801,
		0.555689, 0.799554, 0.227868,
		0.748094, -0.600443, 0.282530,
		40.375164, 38.943352, 26.874798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387100, 39.489685, 26.196682>,  <39.851501, 39.363663, 26.677027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387100, 39.489685, 26.196682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538040, 39.164780, 26.374599>,  <40.628605, 38.969837, 26.481350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538040, 39.164780, 26.374599>,  <40.387100, 39.489685, 26.196682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538040, 39.164780, 26.374599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564679, -0.178864, -0.805696,
		0.733992, 0.555195, 0.391171,
		0.377352, -0.812260, 0.444791,
		40.651245, 38.921101, 26.508038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061520, 39.504467, 26.080975>,  <40.387100, 39.489685, 26.196682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061520, 39.504467, 26.080975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954597, 39.121429, 26.123985>,  <40.890442, 38.891605, 26.149792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954597, 39.121429, 26.123985>,  <41.061520, 39.504467, 26.080975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954597, 39.121429, 26.123985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483368, -0.229783, -0.844722,
		0.833607, -0.173828, 0.524293,
		-0.267310, -0.957593, 0.107526,
		40.874405, 38.834152, 26.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638161, 39.141579, 25.840586>,  <41.061520, 39.504467, 26.080975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638161, 39.141579, 25.840586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341026, 38.873787, 25.841402>,  <41.162746, 38.713112, 25.841892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341026, 38.873787, 25.841402>,  <41.638161, 39.141579, 25.840586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341026, 38.873787, 25.841402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385228, -0.429928, -0.816555,
		0.547541, -0.605776, 0.577265,
		-0.742832, -0.669475, 0.002041,
		41.118176, 38.672943, 25.842014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957935, 38.515018, 25.718193>,  <41.638161, 39.141579, 25.840586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957935, 38.515018, 25.718193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578636, 38.460888, 25.603296>,  <41.351055, 38.428410, 25.534359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578636, 38.460888, 25.603296>,  <41.957935, 38.515018, 25.718193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578636, 38.460888, 25.603296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308415, -0.607637, -0.731886,
		-0.075495, -0.782601, 0.617929,
		-0.948251, -0.135325, -0.287240,
		41.294159, 38.420292, 25.517124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917831, 37.755802, 25.594242>,  <41.957935, 38.515018, 25.718193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917831, 37.755802, 25.594242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621853, 37.938057, 25.396305>,  <41.444263, 38.047409, 25.277542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621853, 37.938057, 25.396305>,  <41.917831, 37.755802, 25.594242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621853, 37.938057, 25.396305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350122, -0.367257, -0.861706,
		-0.574360, -0.810874, 0.112222,
		-0.739949, 0.455638, -0.494842,
		41.399868, 38.074749, 25.247852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559673, 37.152294, 25.194620>,  <41.917831, 37.755802, 25.594242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559673, 37.152294, 25.194620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515690, 37.515839, 25.033680>,  <41.489300, 37.733963, 24.937117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515690, 37.515839, 25.033680>,  <41.559673, 37.152294, 25.194620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515690, 37.515839, 25.033680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196266, -0.376979, -0.905189,
		-0.974366, -0.178502, -0.136926,
		-0.109960, 0.908859, -0.402349,
		41.482700, 37.788498, 24.912975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070019, 37.069729, 24.635759>,  <41.559673, 37.152294, 25.194620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070019, 37.069729, 24.635759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288204, 37.392273, 24.544317>,  <41.419113, 37.585800, 24.489452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288204, 37.392273, 24.544317>,  <41.070019, 37.069729, 24.635759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288204, 37.392273, 24.544317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196445, -0.388155, -0.900414,
		-0.814791, 0.446231, -0.370127,
		0.545459, 0.806358, -0.228605,
		41.451843, 37.634182, 24.475737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086876, 37.031258, 23.969160>,  <41.070019, 37.069729, 24.635759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086876, 37.031258, 23.969160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345974, 37.333290, 24.009689>,  <41.501434, 37.514511, 24.034006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345974, 37.333290, 24.009689>,  <41.086876, 37.031258, 23.969160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345974, 37.333290, 24.009689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345857, -0.172946, -0.922211,
		-0.678825, 0.632404, -0.373177,
		0.647749, 0.755086, 0.101321,
		41.540298, 37.559814, 24.040085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073231, 37.572651, 23.358122>,  <41.086876, 37.031258, 23.969160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073231, 37.572651, 23.358122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440601, 37.610901, 23.511663>,  <41.661026, 37.633850, 23.603788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440601, 37.610901, 23.511663>,  <41.073231, 37.572651, 23.358122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440601, 37.610901, 23.511663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384244, 0.015044, -0.923109,
		-0.094046, 0.995304, -0.022927,
		0.918429, 0.095624, 0.383855,
		41.716129, 37.639587, 23.626820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280991, 38.137432, 22.926517>,  <41.073231, 37.572651, 23.358122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280991, 38.137432, 22.926517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586407, 37.948940, 23.103130>,  <41.769657, 37.835846, 23.209099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586407, 37.948940, 23.103130>,  <41.280991, 38.137432, 22.926517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586407, 37.948940, 23.103130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380353, -0.224381, -0.897210,
		0.521863, 0.852993, 0.007909,
		0.763539, -0.471228, 0.441534,
		41.815468, 37.807571, 23.235590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937603, 38.382797, 22.626484>,  <41.280991, 38.137432, 22.926517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937603, 38.382797, 22.626484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059933, 38.031242, 22.772926>,  <42.133331, 37.820309, 22.860792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059933, 38.031242, 22.772926>,  <41.937603, 38.382797, 22.626484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059933, 38.031242, 22.772926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309220, -0.271996, -0.911263,
		0.900475, 0.391893, 0.188586,
		0.305824, -0.878884, 0.366107,
		42.151680, 37.767578, 22.882759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470299, 38.237228, 22.234787>,  <41.937603, 38.382797, 22.626484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470299, 38.237228, 22.234787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390755, 37.887100, 22.411089>,  <42.343029, 37.677021, 22.516870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390755, 37.887100, 22.411089>,  <42.470299, 38.237228, 22.234787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390755, 37.887100, 22.411089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243146, -0.479741, -0.843047,
		0.949386, -0.060481, 0.308232,
		-0.198860, -0.875323, 0.440754,
		42.331097, 37.624504, 22.543316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073208, 37.792023, 22.093019>,  <42.470299, 38.237228, 22.234787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073208, 37.792023, 22.093019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783539, 37.528721, 22.175266>,  <42.609737, 37.370739, 22.224615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783539, 37.528721, 22.175266>,  <43.073208, 37.792023, 22.093019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783539, 37.528721, 22.175266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179204, -0.467541, -0.865616,
		0.665927, -0.590009, 0.456542,
		-0.724174, -0.658251, 0.205616,
		42.566288, 37.331245, 22.236952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317089, 37.149105, 21.857674>,  <43.073208, 37.792023, 22.093019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317089, 37.149105, 21.857674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919392, 37.106339, 21.860565>,  <42.680775, 37.080677, 21.862301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919392, 37.106339, 21.860565>,  <43.317089, 37.149105, 21.857674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919392, 37.106339, 21.860565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044732, -0.475367, -0.878650,
		0.097382, -0.873266, 0.477413,
		-0.994241, -0.106920, 0.007229,
		42.621120, 37.074265, 21.862734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171219, 36.485355, 21.567204>,  <43.317089, 37.149105, 21.857674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171219, 36.485355, 21.567204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802719, 36.640900, 21.570971>,  <42.581619, 36.734226, 21.573231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802719, 36.640900, 21.570971>,  <43.171219, 36.485355, 21.567204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802719, 36.640900, 21.570971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226608, -0.516852, -0.825538,
		-0.316153, -0.762659, 0.564268,
		-0.921247, 0.388864, 0.009420,
		42.526344, 36.757561, 21.573797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649021, 35.936275, 21.319302>,  <43.171219, 36.485355, 21.567204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649021, 35.936275, 21.319302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457561, 36.281605, 21.255337>,  <42.342686, 36.488800, 21.216959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457561, 36.281605, 21.255337>,  <42.649021, 35.936275, 21.319302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457561, 36.281605, 21.255337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292138, -0.328350, -0.898244,
		-0.827978, -0.383229, 0.409374,
		-0.478651, 0.863320, -0.159911,
		42.313965, 36.540600, 21.207363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755157, 35.518791, 21.892078>,  <42.649021, 35.936275, 21.319302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755157, 35.518791, 21.892078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948727, 35.184021, 21.789806>,  <43.064869, 34.983158, 21.728443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948727, 35.184021, 21.789806>,  <42.755157, 35.518791, 21.892078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948727, 35.184021, 21.789806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211897, -0.171411, 0.962142,
		-0.849068, -0.519782, 0.094392,
		0.483924, -0.836926, -0.255680,
		43.093903, 34.932941, 21.713102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400742, 34.926373, 22.156107>,  <42.755157, 35.518791, 21.892078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400742, 34.926373, 22.156107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795422, 34.873360, 22.118456>,  <43.032230, 34.841553, 22.095865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795422, 34.873360, 22.118456>,  <42.400742, 34.926373, 22.156107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795422, 34.873360, 22.118456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074735, -0.144362, 0.986699,
		-0.144362, -0.980609, -0.132537,
		-0.986699, 0.132537, 0.094126,
		43.091431, 34.833599, 22.090218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617691, 34.357155, 22.573702>,  <42.400742, 34.926373, 22.156107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617691, 34.357155, 22.573702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987438, 34.495926, 22.510223>,  <43.209286, 34.579189, 22.472137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987438, 34.495926, 22.510223>,  <42.617691, 34.357155, 22.573702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987438, 34.495926, 22.510223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225906, -0.162560, 0.960490,
		0.307420, -0.923698, -0.228638,
		0.924370, 0.346925, -0.158694,
		43.264748, 34.600002, 22.462616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090252, 33.885983, 22.891834>,  <42.617691, 34.357155, 22.573702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090252, 33.885983, 22.891834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260307, 34.247597, 22.874025>,  <43.362339, 34.464565, 22.863340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260307, 34.247597, 22.874025>,  <43.090252, 33.885983, 22.891834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260307, 34.247597, 22.874025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073827, 0.014390, 0.997167,
		0.902113, -0.427220, -0.060625,
		0.425138, 0.904033, -0.044522,
		43.387848, 34.518806, 22.860668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455929, 33.823074, 23.465412>,  <43.090252, 33.885983, 22.891834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455929, 33.823074, 23.465412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452511, 34.216068, 23.390949>,  <43.450462, 34.451862, 23.346272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452511, 34.216068, 23.390949>,  <43.455929, 33.823074, 23.465412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452511, 34.216068, 23.390949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060891, 0.185309, 0.980792,
		0.998108, 0.019713, 0.058242,
		-0.008542, 0.982482, -0.186159,
		43.449947, 34.510815, 23.335102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965317, 34.174137, 23.972305>,  <43.455929, 33.823074, 23.465412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965317, 34.174137, 23.972305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705624, 34.444336, 23.832474>,  <43.549809, 34.606457, 23.748575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705624, 34.444336, 23.832474>,  <43.965317, 34.174137, 23.972305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705624, 34.444336, 23.832474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105346, 0.375323, 0.920888,
		0.753263, 0.634694, -0.172509,
		-0.649228, 0.675497, -0.349579,
		43.510857, 34.646984, 23.727600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083511, 34.791233, 24.361464>,  <43.965317, 34.174137, 23.972305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083511, 34.791233, 24.361464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735126, 34.874313, 24.183350>,  <43.526096, 34.924160, 24.076481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735126, 34.874313, 24.183350>,  <44.083511, 34.791233, 24.361464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735126, 34.874313, 24.183350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255105, 0.583382, 0.771095,
		0.419927, 0.785192, -0.455121,
		-0.870966, 0.207700, -0.445284,
		43.473835, 34.936623, 24.049765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883343, 35.511154, 24.382910>,  <44.083511, 34.791233, 24.361464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883343, 35.511154, 24.382910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517170, 35.361233, 24.324249>,  <43.297466, 35.271282, 24.289053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517170, 35.361233, 24.324249>,  <43.883343, 35.511154, 24.382910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517170, 35.361233, 24.324249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344904, 0.542772, 0.765793,
		-0.207421, 0.751614, -0.626142,
		-0.915433, -0.374800, -0.146653,
		43.242538, 35.248795, 24.280252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383434, 36.061207, 24.499058>,  <43.883343, 35.511154, 24.382910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383434, 36.061207, 24.499058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191673, 35.711124, 24.524971>,  <43.076618, 35.501076, 24.540520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191673, 35.711124, 24.524971>,  <43.383434, 36.061207, 24.499058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191673, 35.711124, 24.524971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421452, 0.294347, 0.857752,
		-0.769775, 0.383903, -0.509966,
		-0.479400, -0.875202, 0.064784,
		43.047852, 35.448563, 24.544407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689568, 36.264473, 24.743624>,  <43.383434, 36.061207, 24.499058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689568, 36.264473, 24.743624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697651, 35.877098, 24.842999>,  <42.702503, 35.644672, 24.902622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697651, 35.877098, 24.842999>,  <42.689568, 36.264473, 24.743624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697651, 35.877098, 24.842999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451013, 0.212935, 0.866745,
		-0.892289, -0.129566, -0.432474,
		0.020212, -0.968438, 0.248435,
		42.703716, 35.586567, 24.917530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082325, 36.187206, 25.035252>,  <42.689568, 36.264473, 24.743624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082325, 36.187206, 25.035252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281803, 35.865082, 25.163486>,  <42.401489, 35.671806, 25.240427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281803, 35.865082, 25.163486>,  <42.082325, 36.187206, 25.035252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281803, 35.865082, 25.163486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613030, -0.066218, 0.787280,
		-0.612777, -0.589143, -0.526703,
		0.498697, -0.805311, 0.320585,
		42.431412, 35.623489, 25.259663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541775, 35.612255, 25.272667>,  <42.082325, 36.187206, 25.035252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541775, 35.612255, 25.272667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897160, 35.545403, 25.443644>,  <42.110390, 35.505291, 25.546230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897160, 35.545403, 25.443644>,  <41.541775, 35.612255, 25.272667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897160, 35.545403, 25.443644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457999, -0.383018, 0.802206,
		0.029645, -0.908496, -0.416841,
		0.888459, -0.167132, 0.427444,
		42.163696, 35.495262, 25.571877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516273, 34.869610, 25.576601>,  <41.541775, 35.612255, 25.272667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516273, 34.869610, 25.576601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775455, 35.120144, 25.749973>,  <41.930965, 35.270466, 25.853996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775455, 35.120144, 25.749973>,  <41.516273, 34.869610, 25.576601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775455, 35.120144, 25.749973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260060, -0.352934, 0.898781,
		0.715910, -0.695085, -0.065800,
		0.647952, 0.626334, 0.433433,
		41.969841, 35.308044, 25.880003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590996, 34.500774, 26.254700>,  <41.516273, 34.869610, 25.576601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590996, 34.500774, 26.254700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765869, 34.854527, 26.320118>,  <41.870792, 35.066776, 26.359369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765869, 34.854527, 26.320118>,  <41.590996, 34.500774, 26.254700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765869, 34.854527, 26.320118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377511, 0.015399, 0.925877,
		0.816307, -0.466516, 0.340595,
		0.437182, 0.884378, 0.163545,
		41.897022, 35.119839, 26.369181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841026, 34.449631, 26.929480>,  <41.590996, 34.500774, 26.254700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841026, 34.449631, 26.929480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816120, 34.837749, 26.835972>,  <41.801178, 35.070621, 26.779867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816120, 34.837749, 26.835972>,  <41.841026, 34.449631, 26.929480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816120, 34.837749, 26.835972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269189, 0.209216, 0.940088,
		0.961072, 0.121462, 0.248167,
		-0.062265, 0.970297, -0.233768,
		41.797440, 35.128838, 26.765841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222443, 34.746437, 27.380405>,  <41.841026, 34.449631, 26.929480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222443, 34.746437, 27.380405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972633, 35.030663, 27.250740>,  <41.822750, 35.201199, 27.172941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972633, 35.030663, 27.250740>,  <42.222443, 34.746437, 27.380405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972633, 35.030663, 27.250740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339694, 0.126612, 0.931975,
		0.703266, 0.692152, 0.162301,
		-0.624519, 0.710559, -0.324162,
		41.785278, 35.243832, 27.153492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322403, 35.391365, 27.771717>,  <42.222443, 34.746437, 27.380405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322403, 35.391365, 27.771717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962776, 35.431343, 27.601219>,  <41.746998, 35.455330, 27.498920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962776, 35.431343, 27.601219>,  <42.322403, 35.391365, 27.771717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962776, 35.431343, 27.601219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381911, 0.296974, 0.875186,
		0.214052, 0.949641, -0.228832,
		-0.899070, 0.099942, -0.426246,
		41.693054, 35.461327, 27.473345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067467, 35.997089, 27.872602>,  <42.322403, 35.391365, 27.771717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067467, 35.997089, 27.872602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729275, 35.791885, 27.813307>,  <41.526360, 35.668762, 27.777729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729275, 35.791885, 27.813307>,  <42.067467, 35.997089, 27.872602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729275, 35.791885, 27.813307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407493, 0.440415, 0.799990,
		-0.345117, 0.736785, -0.581413,
		-0.845484, -0.513012, -0.148240,
		41.475628, 35.637981, 27.768835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607079, 36.420383, 28.071911>,  <42.067467, 35.997089, 27.872602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607079, 36.420383, 28.071911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360607, 36.106918, 28.040422>,  <41.212723, 35.918839, 28.021528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360607, 36.106918, 28.040422>,  <41.607079, 36.420383, 28.071911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360607, 36.106918, 28.040422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464246, 0.280637, 0.840070,
		-0.636240, 0.554179, -0.536735,
		-0.616177, -0.783664, -0.078722,
		41.175755, 35.871819, 28.016806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944782, 36.703323, 28.171877>,  <41.607079, 36.420383, 28.071911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944782, 36.703323, 28.171877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898392, 36.315323, 28.257332>,  <40.870556, 36.082523, 28.308605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898392, 36.315323, 28.257332>,  <40.944782, 36.703323, 28.171877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898392, 36.315323, 28.257332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347842, 0.241135, 0.906013,
		-0.930352, 0.030766, -0.365375,
		-0.115979, -0.970004, 0.213639,
		40.863598, 36.024323, 28.321424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332619, 36.697807, 28.572178>,  <40.944782, 36.703323, 28.171877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332619, 36.697807, 28.572178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508823, 36.342873, 28.626694>,  <40.614548, 36.129910, 28.659403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508823, 36.342873, 28.626694>,  <40.332619, 36.697807, 28.572178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508823, 36.342873, 28.626694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312548, -0.009273, 0.949857,
		-0.841582, -0.461023, -0.281421,
		0.440516, -0.887339, 0.136288,
		40.640980, 36.076672, 28.667580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812958, 36.275940, 28.937260>,  <40.332619, 36.697807, 28.572178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812958, 36.275940, 28.937260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198643, 36.188541, 28.997328>,  <40.430054, 36.136105, 29.033369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198643, 36.188541, 28.997328>,  <39.812958, 36.275940, 28.937260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198643, 36.188541, 28.997328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085854, 0.278575, 0.956569,
		-0.250839, -0.935230, 0.249848,
		0.964214, -0.218495, 0.150171,
		40.487907, 36.122993, 29.042379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861511, 36.071953, 29.606991>,  <39.812958, 36.275940, 28.937260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861511, 36.071953, 29.606991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253193, 36.120354, 29.541851>,  <40.488201, 36.149395, 29.502768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253193, 36.120354, 29.541851>,  <39.861511, 36.071953, 29.606991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253193, 36.120354, 29.541851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148649, 0.118372, 0.981780,
		0.138087, -0.985568, 0.097921,
		0.979202, 0.121015, -0.162849,
		40.546955, 36.156654, 29.492996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296902, 35.563820, 30.008099>,  <39.861511, 36.071953, 29.606991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296902, 35.563820, 30.008099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553581, 35.862099, 29.936365>,  <40.707588, 36.041065, 29.893326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553581, 35.862099, 29.936365>,  <40.296902, 35.563820, 30.008099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553581, 35.862099, 29.936365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166611, 0.092705, 0.981655,
		0.748645, -0.659802, -0.064753,
		0.641695, 0.745700, -0.179334,
		40.746090, 36.085808, 29.882565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960861, 35.402340, 30.374168>,  <40.296902, 35.563820, 30.008099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960861, 35.402340, 30.374168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970058, 35.797298, 30.311544>,  <40.975578, 36.034275, 30.273970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970058, 35.797298, 30.311544>,  <40.960861, 35.402340, 30.374168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970058, 35.797298, 30.311544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459260, 0.128666, 0.878934,
		0.888004, -0.092114, -0.450515,
		0.022997, 0.987401, -0.156560,
		40.976959, 36.093517, 30.264576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580746, 35.597599, 30.604282>,  <40.960861, 35.402340, 30.374168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580746, 35.597599, 30.604282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398010, 35.952927, 30.585585>,  <41.288368, 36.166122, 30.574366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398010, 35.952927, 30.585585>,  <41.580746, 35.597599, 30.604282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398010, 35.952927, 30.585585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469119, 0.285234, 0.835805,
		0.755796, 0.359899, -0.547034,
		-0.456838, 0.888321, -0.046743,
		41.260960, 36.219421, 30.571562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071808, 36.096642, 30.811327>,  <41.580746, 35.597599, 30.604282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071808, 36.096642, 30.811327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705467, 36.244495, 30.874046>,  <41.485664, 36.333210, 30.911678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705467, 36.244495, 30.874046>,  <42.071808, 36.096642, 30.811327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705467, 36.244495, 30.874046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171129, 0.006080, 0.985230,
		0.363224, 0.929156, -0.068824,
		-0.915851, 0.369637, 0.156797,
		41.430714, 36.355385, 30.921085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217854, 36.556816, 31.311789>,  <42.071808, 36.096642, 30.811327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217854, 36.556816, 31.311789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823658, 36.492043, 31.332148>,  <41.587139, 36.453178, 31.344362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823658, 36.492043, 31.332148>,  <42.217854, 36.556816, 31.311789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823658, 36.492043, 31.332148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058889, -0.044943, 0.997252,
		-0.159199, 0.985778, 0.053827,
		-0.985489, -0.161932, 0.050897,
		41.528011, 36.443462, 31.347416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987656, 37.013550, 31.785583>,  <42.217854, 36.556816, 31.311789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987656, 37.013550, 31.785583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697212, 36.738522, 31.783865>,  <41.522945, 36.573505, 31.782833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697212, 36.738522, 31.783865>,  <41.987656, 37.013550, 31.785583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697212, 36.738522, 31.783865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128932, -0.142294, 0.981391,
		-0.675385, 0.712041, 0.191971,
		-0.726107, -0.687569, -0.004298,
		41.479382, 36.532249, 31.782576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507366, 37.213734, 32.280598>,  <41.987656, 37.013550, 31.785583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507366, 37.213734, 32.280598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432549, 36.828289, 32.204205>,  <41.387657, 36.597023, 32.158367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432549, 36.828289, 32.204205>,  <41.507366, 37.213734, 32.280598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432549, 36.828289, 32.204205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065823, -0.181686, 0.981151,
		-0.980144, 0.196090, -0.029444,
		-0.187045, -0.963607, -0.190986,
		41.376434, 36.539207, 32.146908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971142, 36.956120, 32.759651>,  <41.507366, 37.213734, 32.280598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971142, 36.956120, 32.759651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149796, 36.620754, 32.634697>,  <41.256989, 36.419537, 32.559723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149796, 36.620754, 32.634697>,  <40.971142, 36.956120, 32.759651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149796, 36.620754, 32.634697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017178, -0.357118, 0.933901,
		-0.894553, -0.411744, -0.173902,
		0.446632, -0.838411, -0.312388,
		41.283787, 36.369232, 32.540981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577724, 36.425644, 33.022057>,  <40.971142, 36.956120, 32.759651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577724, 36.425644, 33.022057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947754, 36.292347, 32.949192>,  <41.169773, 36.212368, 32.905472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947754, 36.292347, 32.949192>,  <40.577724, 36.425644, 33.022057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947754, 36.292347, 32.949192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030445, -0.413030, 0.910208,
		-0.378560, -0.847558, -0.371938,
		0.925076, -0.333245, -0.182161,
		41.225277, 36.192371, 32.894543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523357, 35.725491, 33.062145>,  <40.577724, 36.425644, 33.022057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523357, 35.725491, 33.062145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912323, 35.794975, 33.124416>,  <41.145702, 35.836666, 33.161781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912323, 35.794975, 33.124416>,  <40.523357, 35.725491, 33.062145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912323, 35.794975, 33.124416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099398, -0.295205, 0.950249,
		0.211029, -0.939509, -0.269795,
		0.972413, 0.173713, 0.155682,
		41.204048, 35.847088, 33.171120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669067, 35.157684, 33.508369>,  <40.523357, 35.725491, 33.062145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669067, 35.157684, 33.508369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975250, 35.411598, 33.550564>,  <41.158958, 35.563946, 33.575882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975250, 35.411598, 33.550564>,  <40.669067, 35.157684, 33.508369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975250, 35.411598, 33.550564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032934, -0.202365, 0.978756,
		0.642644, -0.745721, -0.175808,
		0.765457, 0.634782, 0.105489,
		41.204887, 35.602032, 33.582211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054546, 34.901035, 33.952347>,  <40.669067, 35.157684, 33.508369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054546, 34.901035, 33.952347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223953, 35.263172, 33.964901>,  <41.325600, 35.480453, 33.972431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223953, 35.263172, 33.964901>,  <41.054546, 34.901035, 33.952347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223953, 35.263172, 33.964901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247914, -0.149155, 0.957231,
		0.871303, -0.397627, -0.287618,
		0.423521, 0.905343, 0.031382,
		41.351009, 35.534775, 33.974316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725128, 34.897934, 34.290085>,  <41.054546, 34.901035, 33.952347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725128, 34.897934, 34.290085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598911, 35.276730, 34.314232>,  <41.523182, 35.504005, 34.328720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598911, 35.276730, 34.314232>,  <41.725128, 34.897934, 34.290085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598911, 35.276730, 34.314232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252977, 0.022634, 0.967207,
		0.914569, 0.320466, -0.246708,
		-0.315541, 0.946989, 0.060370,
		41.504250, 35.560825, 34.332344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114079, 35.101402, 34.749855>,  <41.725128, 34.897934, 34.290085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114079, 35.101402, 34.749855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811302, 35.362370, 34.764790>,  <41.629639, 35.518951, 34.773750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811302, 35.362370, 34.764790>,  <42.114079, 35.101402, 34.749855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811302, 35.362370, 34.764790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053753, 0.005221, 0.998541,
		0.651274, 0.757839, -0.039022,
		-0.756937, 0.652421, 0.037336,
		41.584221, 35.558094, 34.775990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423885, 35.636120, 35.291592>,  <42.114079, 35.101402, 34.749855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423885, 35.636120, 35.291592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032375, 35.706161, 35.249008>,  <41.797470, 35.748188, 35.223457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032375, 35.706161, 35.249008>,  <42.423885, 35.636120, 35.291592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032375, 35.706161, 35.249008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091273, 0.092645, 0.991507,
		0.183485, 0.980181, -0.074696,
		-0.978776, 0.175109, -0.106463,
		41.738743, 35.758694, 35.217068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342373, 36.215412, 35.594601>,  <42.423885, 35.636120, 35.291592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342373, 36.215412, 35.594601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000404, 36.008099, 35.585823>,  <41.795223, 35.883709, 35.580559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000404, 36.008099, 35.585823>,  <42.342373, 36.215412, 35.594601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000404, 36.008099, 35.585823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138708, 0.187640, 0.972395,
		-0.499863, 0.834368, -0.232309,
		-0.854925, -0.518287, -0.021939,
		41.743927, 35.852612, 35.579243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899544, 36.400623, 36.196201>,  <42.342373, 36.215412, 35.594601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899544, 36.400623, 36.196201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689865, 36.072380, 36.105141>,  <41.564056, 35.875435, 36.050507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689865, 36.072380, 36.105141>,  <41.899544, 36.400623, 36.196201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689865, 36.072380, 36.105141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315893, -0.060878, 0.946840,
		-0.790841, 0.568243, -0.227312,
		-0.524197, -0.820606, -0.227649,
		41.532608, 35.826199, 36.036846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163807, 36.432644, 36.304852>,  <41.899544, 36.400623, 36.196201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163807, 36.432644, 36.304852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308186, 36.064613, 36.365742>,  <41.394814, 35.843796, 36.402275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308186, 36.064613, 36.365742>,  <41.163807, 36.432644, 36.304852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308186, 36.064613, 36.365742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230602, 0.070101, 0.970520,
		-0.903626, -0.385410, -0.186869,
		0.360948, -0.920079, 0.152221,
		41.416470, 35.788589, 36.411407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762085, 36.261776, 36.794014>,  <41.163807, 36.432644, 36.304852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762085, 36.261776, 36.794014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066895, 36.003693, 36.816002>,  <41.249779, 35.848843, 36.829193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066895, 36.003693, 36.816002>,  <40.762085, 36.261776, 36.794014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066895, 36.003693, 36.816002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131224, -0.070737, 0.988826,
		-0.634114, -0.760721, -0.138571,
		0.762023, -0.645213, 0.054969,
		41.295502, 35.810127, 36.832493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537777, 35.618835, 37.119442>,  <40.762085, 36.261776, 36.794014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537777, 35.618835, 37.119442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932804, 35.663017, 37.164169>,  <41.169823, 35.689526, 37.191006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932804, 35.663017, 37.164169>,  <40.537777, 35.618835, 37.119442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932804, 35.663017, 37.164169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109793, -0.024234, 0.993659,
		0.112469, -0.993585, -0.011805,
		0.987571, 0.110460, 0.111814,
		41.229076, 35.696156, 37.197712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697159, 35.083725, 37.625961>,  <40.537777, 35.618835, 37.119442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697159, 35.083725, 37.625961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045979, 35.278915, 37.641033>,  <41.255268, 35.396030, 37.650078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045979, 35.278915, 37.641033>,  <40.697159, 35.083725, 37.625961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045979, 35.278915, 37.641033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021147, -0.039357, 0.999001,
		0.488969, -0.871971, -0.024002,
		0.872045, 0.487973, 0.037684,
		41.307590, 35.425308, 37.652340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069313, 34.808853, 38.131496>,  <40.697159, 35.083725, 37.625961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069313, 34.808853, 38.131496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211784, 35.180584, 38.092533>,  <41.297268, 35.403622, 38.069157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211784, 35.180584, 38.092533>,  <41.069313, 34.808853, 38.131496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211784, 35.180584, 38.092533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001272, 0.104725, 0.994501,
		0.934417, -0.354097, 0.038483,
		0.356180, 0.929327, -0.097407,
		41.318638, 35.459381, 38.063313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677036, 34.812099, 38.444695>,  <41.069313, 34.808853, 38.131496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677036, 34.812099, 38.444695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522701, 35.179199, 38.482361>,  <41.430099, 35.399460, 38.504963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522701, 35.179199, 38.482361>,  <41.677036, 34.812099, 38.444695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522701, 35.179199, 38.482361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006250, -0.104670, 0.994487,
		0.922547, 0.383119, 0.046121,
		-0.385835, 0.917749, 0.094168,
		41.406952, 35.454525, 38.510612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946457, 35.017200, 39.072720>,  <41.677036, 34.812099, 38.444695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946457, 35.017200, 39.072720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685204, 35.302864, 38.972012>,  <41.528450, 35.474262, 38.911587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685204, 35.302864, 38.972012>,  <41.946457, 35.017200, 39.072720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685204, 35.302864, 38.972012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113098, 0.236752, 0.964965,
		0.748747, 0.658728, -0.073861,
		-0.653136, 0.714161, -0.251768,
		41.489262, 35.517113, 38.896481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256088, 35.546261, 39.416691>,  <41.946457, 35.017200, 39.072720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256088, 35.546261, 39.416691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861942, 35.583420, 39.359520>,  <41.625454, 35.605717, 39.325218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861942, 35.583420, 39.359520>,  <42.256088, 35.546261, 39.416691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861942, 35.583420, 39.359520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110821, 0.288011, 0.951193,
		0.129530, 0.953111, -0.273500,
		-0.985363, 0.092898, -0.142930,
		41.566334, 35.611290, 39.316643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115982, 36.112701, 39.632030>,  <42.256088, 35.546261, 39.416691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115982, 36.112701, 39.632030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792622, 35.884789, 39.691132>,  <41.598606, 35.748043, 39.726593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792622, 35.884789, 39.691132>,  <42.115982, 36.112701, 39.632030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792622, 35.884789, 39.691132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016324, 0.229220, 0.973238,
		-0.588400, 0.789182, -0.176001,
		-0.808405, -0.569780, 0.147755,
		41.550098, 35.713856, 39.735458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688763, 36.542992, 40.059059>,  <42.115982, 36.112701, 39.632030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688763, 36.542992, 40.059059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579536, 36.161491, 40.109341>,  <41.514000, 35.932590, 40.139511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579536, 36.161491, 40.109341>,  <41.688763, 36.542992, 40.059059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579536, 36.161491, 40.109341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117361, 0.096665, 0.988374,
		-0.954811, 0.284639, 0.085537,
		-0.273061, -0.953749, 0.125702,
		41.497620, 35.875366, 40.147053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167183, 36.529301, 40.641937>,  <41.688763, 36.542992, 40.059059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167183, 36.529301, 40.641937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357174, 36.182640, 40.580868>,  <41.471169, 35.974644, 40.544228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357174, 36.182640, 40.580868>,  <41.167183, 36.529301, 40.641937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357174, 36.182640, 40.580868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264799, -0.024690, 0.963987,
		-0.839214, -0.498296, 0.217762,
		0.474975, -0.866655, -0.152669,
		41.499668, 35.922642, 40.535069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771957, 36.121914, 40.196888>,  <41.167183, 36.529301, 40.641937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771957, 36.121914, 40.196888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876312, 35.825455, 40.444321>,  <40.938927, 35.647579, 40.592781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876312, 35.825455, 40.444321>,  <40.771957, 36.121914, 40.196888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876312, 35.825455, 40.444321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194749, 0.668002, 0.718224,
		-0.945521, -0.066908, 0.318611,
		0.260888, -0.741146, 0.618579,
		40.954578, 35.603111, 40.629894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414532, 36.117809, 40.902493>,  <40.771957, 36.121914, 40.196888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414532, 36.117809, 40.902493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785465, 35.968830, 40.917049>,  <41.008026, 35.879440, 40.925781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785465, 35.968830, 40.917049>,  <40.414532, 36.117809, 40.902493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785465, 35.968830, 40.917049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219128, 0.619256, 0.753992,
		-0.303358, -0.691232, 0.655875,
		0.927339, -0.372450, 0.036388,
		41.063667, 35.857094, 40.927967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436893, 36.039425, 41.556393>,  <40.414532, 36.117809, 40.902493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436893, 36.039425, 41.556393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821415, 35.975750, 41.466450>,  <41.052128, 35.937546, 41.412483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821415, 35.975750, 41.466450>,  <40.436893, 36.039425, 41.556393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821415, 35.975750, 41.466450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265156, 0.313024, 0.911981,
		-0.074792, -0.936309, 0.343120,
		0.961301, -0.159189, -0.224856,
		41.109806, 35.927994, 41.398994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820137, 35.770699, 42.213573>,  <40.436893, 36.039425, 41.556393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820137, 35.770699, 42.213573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082821, 35.903137, 41.942543>,  <41.240433, 35.982601, 41.779926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082821, 35.903137, 41.942543>,  <40.820137, 35.770699, 42.213573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082821, 35.903137, 41.942543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570997, 0.368626, 0.733538,
		0.492643, -0.868615, 0.053026,
		0.656708, 0.331094, -0.677577,
		41.279835, 36.002464, 41.739269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485737, 35.629990, 42.481106>,  <40.820137, 35.770699, 42.213573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485737, 35.629990, 42.481106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573494, 35.914272, 42.213745>,  <41.626148, 36.084843, 42.053329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573494, 35.914272, 42.213745>,  <41.485737, 35.629990, 42.481106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573494, 35.914272, 42.213745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760263, 0.304822, 0.573658,
		0.611447, -0.634016, -0.473451,
		0.219390, 0.710709, -0.668401,
		41.639313, 36.127483, 42.013226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236675, 35.624035, 42.248196>,  <41.485737, 35.629990, 42.481106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236675, 35.624035, 42.248196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109722, 35.999012, 42.190971>,  <42.033550, 36.223999, 42.156635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109722, 35.999012, 42.190971>,  <42.236675, 35.624035, 42.248196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109722, 35.999012, 42.190971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820486, 0.347101, 0.454229,
		0.475471, 0.026785, -0.879324,
		-0.317381, 0.937445, -0.143059,
		42.014507, 36.280247, 42.148052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835667, 36.066967, 42.218464>,  <42.236675, 35.624035, 42.248196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835667, 36.066967, 42.218464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528542, 36.304096, 42.315647>,  <42.344265, 36.446373, 42.373955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528542, 36.304096, 42.315647>,  <42.835667, 36.066967, 42.218464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528542, 36.304096, 42.315647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603781, 0.542720, 0.583869,
		0.214274, 0.594993, -0.774642,
		-0.767812, 0.592822, 0.242954,
		42.298199, 36.481941, 42.388535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071938, 36.699234, 42.364166>,  <42.835667, 36.066967, 42.218464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071938, 36.699234, 42.364166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721687, 36.773808, 42.542393>,  <42.511539, 36.818554, 42.649330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721687, 36.773808, 42.542393>,  <43.071938, 36.699234, 42.364166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721687, 36.773808, 42.542393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459961, 0.603364, 0.651451,
		-0.147384, 0.775367, -0.614071,
		-0.875622, 0.186436, 0.445565,
		42.459000, 36.829739, 42.676064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953609, 37.369144, 42.439312>,  <43.071938, 36.699234, 42.364166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953609, 37.369144, 42.439312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739761, 37.190414, 42.726234>,  <42.611454, 37.083176, 42.898388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739761, 37.190414, 42.726234>,  <42.953609, 37.369144, 42.439312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739761, 37.190414, 42.726234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550012, 0.460455, 0.696755,
		-0.641616, 0.767026, -0.000408,
		-0.534617, -0.446825, 0.717309,
		42.579376, 37.056366, 42.941425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928326, 38.002460, 42.485405>,  <42.953609, 37.369144, 42.439312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928326, 38.002460, 42.485405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913918, 38.263298, 42.788319>,  <42.905273, 38.419800, 42.970066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913918, 38.263298, 42.788319>,  <42.928326, 38.002460, 42.485405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913918, 38.263298, 42.788319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941506, -0.276214, 0.193062,
		0.335066, -0.706029, 0.623902,
		-0.036023, 0.652096, 0.757280,
		42.903111, 38.458927, 43.015503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826332, 37.675072, 43.231598>,  <42.928326, 38.002460, 42.485405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826332, 37.675072, 43.231598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678829, 38.042461, 43.174427>,  <42.590328, 38.262894, 43.140125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678829, 38.042461, 43.174427>,  <42.826332, 37.675072, 43.231598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678829, 38.042461, 43.174427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847084, -0.268743, 0.458504,
		0.382712, 0.290148, 0.877124,
		-0.368755, 0.918473, -0.142929,
		42.568203, 38.318005, 43.131550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457436, 37.776299, 43.770859>,  <42.826332, 37.675072, 43.231598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457436, 37.776299, 43.770859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253426, 37.998318, 43.508015>,  <42.131020, 38.131527, 43.350307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253426, 37.998318, 43.508015>,  <42.457436, 37.776299, 43.770859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253426, 37.998318, 43.508015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851709, -0.432698, 0.295575,
		-0.120275, 0.710420, 0.693424,
		-0.510026, 0.555045, -0.657114,
		42.100418, 38.164833, 43.310879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529232, 37.176289, 44.271915>,  <42.457436, 37.776299, 43.770859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529232, 37.176289, 44.271915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552223, 36.998230, 44.629360>,  <42.566017, 36.891396, 44.843826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552223, 36.998230, 44.629360>,  <42.529232, 37.176289, 44.271915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552223, 36.998230, 44.629360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117769, 0.891863, 0.436704,
		-0.991376, 0.080137, 0.103690,
		0.057481, -0.445149, 0.893610,
		42.569466, 36.864685, 44.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395329, 36.565582, 43.825237>,  <42.529232, 37.176289, 44.271915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395329, 36.565582, 43.825237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371372, 36.936954, 43.678574>,  <42.356998, 37.159779, 43.590576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371372, 36.936954, 43.678574>,  <42.395329, 36.565582, 43.825237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371372, 36.936954, 43.678574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519706, -0.342608, -0.782640,
		-0.852243, 0.143683, 0.503027,
		-0.059889, 0.928426, -0.366659,
		42.353405, 37.215481, 43.568577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770115, 36.559570, 43.597195>,  <42.395329, 36.565582, 43.825237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770115, 36.559570, 43.597195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960255, 36.848457, 43.396217>,  <42.074337, 37.021790, 43.275631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960255, 36.848457, 43.396217>,  <41.770115, 36.559570, 43.597195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960255, 36.848457, 43.396217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558028, -0.194023, -0.806821,
		-0.680184, 0.663897, 0.310789,
		0.475346, 0.722216, -0.502445,
		42.102859, 37.065121, 43.245483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309189, 37.076355, 43.206390>,  <41.770115, 36.559570, 43.597195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309189, 37.076355, 43.206390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662212, 37.007111, 43.031525>,  <41.874027, 36.965565, 42.926605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662212, 37.007111, 43.031525>,  <41.309189, 37.076355, 43.206390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662212, 37.007111, 43.031525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466099, -0.444541, -0.764941,
		-0.061920, 0.878872, -0.473022,
		0.882563, -0.173110, -0.437167,
		41.926983, 36.955177, 42.900375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245827, 37.295494, 42.577061>,  <41.309189, 37.076355, 43.206390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245827, 37.295494, 42.577061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570152, 37.065346, 42.534103>,  <41.764748, 36.927258, 42.508327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570152, 37.065346, 42.534103>,  <41.245827, 37.295494, 42.577061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570152, 37.065346, 42.534103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416488, -0.438245, -0.796542,
		0.411240, 0.690575, -0.594968,
		0.810814, -0.575367, -0.107393,
		41.813396, 36.892735, 42.501884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428200, 37.442108, 41.905079>,  <41.245827, 37.295494, 42.577061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428200, 37.442108, 41.905079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607990, 37.094601, 41.988235>,  <41.715862, 36.886097, 42.038128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607990, 37.094601, 41.988235>,  <41.428200, 37.442108, 41.905079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607990, 37.094601, 41.988235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275283, -0.356109, -0.892976,
		0.849819, 0.344140, -0.399218,
		0.449474, -0.868766, 0.207892,
		41.742832, 36.833969, 42.050602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578392, 37.079903, 41.227455>,  <41.428200, 37.442108, 41.905079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578392, 37.079903, 41.227455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599281, 36.771946, 41.481869>,  <41.611816, 36.587170, 41.634518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599281, 36.771946, 41.481869>,  <41.578392, 37.079903, 41.227455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599281, 36.771946, 41.481869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263970, -0.624888, -0.734735,
		0.963116, -0.129522, -0.235863,
		0.052224, -0.769896, 0.636030,
		41.614948, 36.540977, 41.672676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981556, 36.645500, 40.939972>,  <41.578392, 37.079903, 41.227455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981556, 36.645500, 40.939972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788967, 36.432274, 41.218262>,  <41.673412, 36.304340, 41.385235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788967, 36.432274, 41.218262>,  <41.981556, 36.645500, 40.939972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788967, 36.432274, 41.218262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018042, -0.799644, -0.600204,
		0.876276, -0.276429, 0.394623,
		-0.481471, -0.533064, 0.695722,
		41.644527, 36.272354, 41.426979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346375, 35.981953, 40.952450>,  <41.981556, 36.645500, 40.939972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346375, 35.981953, 40.952450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986488, 35.928352, 41.118610>,  <41.770557, 35.896191, 41.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986488, 35.928352, 41.118610>,  <42.346375, 35.981953, 40.952450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986488, 35.928352, 41.118610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175410, -0.760473, -0.625229,
		0.399685, -0.635393, 0.660702,
		-0.899713, -0.134001, 0.415404,
		41.716576, 35.888153, 41.243233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387913, 35.296726, 40.532013>,  <42.346375, 35.981953, 40.952450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387913, 35.296726, 40.532013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443104, 34.909409, 40.615314>,  <42.476219, 34.677017, 40.665295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443104, 34.909409, 40.615314>,  <42.387913, 35.296726, 40.532013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443104, 34.909409, 40.615314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952811, -0.072366, 0.294813,
		-0.270395, -0.239106, -0.932585,
		0.137979, -0.968293, 0.208255,
		42.484497, 34.618919, 40.677792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104073, 34.999474, 41.036564>,  <42.387913, 35.296726, 40.532013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104073, 34.999474, 41.036564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807056, 35.266808, 41.018837>,  <41.628845, 35.427208, 41.008202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807056, 35.266808, 41.018837>,  <42.104073, 34.999474, 41.036564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807056, 35.266808, 41.018837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288997, -0.379369, -0.878954,
		-0.604246, -0.639852, 0.474844,
		-0.742541, 0.668333, -0.044317,
		41.584293, 35.467308, 41.005543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724545, 34.705921, 40.499458>,  <42.104073, 34.999474, 41.036564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724545, 34.705921, 40.499458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553619, 35.064854, 40.543633>,  <41.451065, 35.280212, 40.570137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553619, 35.064854, 40.543633>,  <41.724545, 34.705921, 40.499458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553619, 35.064854, 40.543633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298515, -0.024737, -0.954084,
		-0.853403, -0.440654, 0.278439,
		-0.427309, 0.897336, 0.110431,
		41.425426, 35.334053, 40.576763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986423, 34.696625, 40.266209>,  <41.724545, 34.705921, 40.499458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986423, 34.696625, 40.266209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129391, 35.069073, 40.237179>,  <41.215172, 35.292542, 40.219761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129391, 35.069073, 40.237179>,  <40.986423, 34.696625, 40.266209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129391, 35.069073, 40.237179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315366, 0.047179, -0.947797,
		-0.879087, 0.361653, 0.310506,
		0.357423, 0.931118, -0.072579,
		41.236618, 35.348408, 40.215405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462429, 35.098015, 39.979870>,  <40.986423, 34.696625, 40.266209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462429, 35.098015, 39.979870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804710, 35.287750, 39.897141>,  <41.010078, 35.401592, 39.847504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804710, 35.287750, 39.897141>,  <40.462429, 35.098015, 39.979870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804710, 35.287750, 39.897141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285536, 0.099492, -0.953190,
		-0.431557, 0.874703, 0.220576,
		0.855703, 0.474338, -0.206823,
		41.061420, 35.430050, 39.835094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337490, 35.704819, 39.600952>,  <40.462429, 35.098015, 39.979870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337490, 35.704819, 39.600952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686325, 35.558426, 39.471020>,  <40.895626, 35.470592, 39.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686325, 35.558426, 39.471020>,  <40.337490, 35.704819, 39.600952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686325, 35.558426, 39.471020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301266, 0.121550, -0.945761,
		0.385611, 0.922651, -0.004254,
		0.872091, -0.365978, -0.324835,
		40.947952, 35.448631, 39.373569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232422, 35.966869, 38.990200>,  <40.337490, 35.704819, 39.600952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232422, 35.966869, 38.990200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621670, 35.915726, 39.066811>,  <40.855221, 35.885040, 39.112778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621670, 35.915726, 39.066811>,  <40.232422, 35.966869, 38.990200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621670, 35.915726, 39.066811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178719, -0.105200, -0.978260,
		0.145229, 0.986197, -0.079521,
		0.973123, -0.127860, 0.191530,
		40.913605, 35.877369, 39.124271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612236, 36.424385, 38.609699>,  <40.232422, 35.966869, 38.990200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612236, 36.424385, 38.609699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862476, 36.123520, 38.692528>,  <41.012619, 35.943001, 38.742226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862476, 36.123520, 38.692528>,  <40.612236, 36.424385, 38.609699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862476, 36.123520, 38.692528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416384, 0.097457, -0.903950,
		0.659736, 0.651732, 0.374158,
		0.625598, -0.752162, 0.207075,
		41.050156, 35.897873, 38.754650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152180, 36.622353, 38.218380>,  <40.612236, 36.424385, 38.609699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152180, 36.622353, 38.218380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239948, 36.238464, 38.288559>,  <41.292610, 36.008129, 38.330666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239948, 36.238464, 38.288559>,  <41.152180, 36.622353, 38.218380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239948, 36.238464, 38.288559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304276, -0.103540, -0.946940,
		0.926968, 0.261165, 0.269302,
		0.219424, -0.959725, 0.175445,
		41.305775, 35.950546, 38.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904896, 36.588177, 37.977959>,  <41.152180, 36.622353, 38.218380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904896, 36.588177, 37.977959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730278, 36.228958, 37.999645>,  <41.625507, 36.013428, 38.012657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730278, 36.228958, 37.999645>,  <41.904896, 36.588177, 37.977959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730278, 36.228958, 37.999645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372247, -0.235156, -0.897849,
		0.819062, -0.371768, 0.436952,
		-0.436543, -0.898048, 0.054218,
		41.599316, 35.959545, 38.015911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391674, 36.132069, 37.721176>,  <41.904896, 36.588177, 37.977959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391674, 36.132069, 37.721176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032822, 35.967152, 37.657719>,  <41.817509, 35.868202, 37.619644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032822, 35.967152, 37.657719>,  <42.391674, 36.132069, 37.721176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032822, 35.967152, 37.657719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266919, -0.219742, -0.938332,
		0.352003, -0.884155, 0.307186,
		-0.897133, -0.412290, -0.158648,
		41.763683, 35.843464, 37.610123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512554, 35.830887, 37.191719>,  <42.391674, 36.132069, 37.721176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512554, 35.830887, 37.191719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119820, 35.755875, 37.203274>,  <41.884178, 35.710869, 37.210205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119820, 35.755875, 37.203274>,  <42.512554, 35.830887, 37.191719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119820, 35.755875, 37.203274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032654, -0.316979, -0.947870,
		0.186911, -0.929708, 0.317344,
		-0.981834, -0.187530, 0.028888,
		41.825268, 35.699615, 37.211941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334061, 35.138832, 36.916443>,  <42.512554, 35.830887, 37.191719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334061, 35.138832, 36.916443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975048, 35.310574, 36.876255>,  <41.759640, 35.413620, 36.852142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975048, 35.310574, 36.876255>,  <42.334061, 35.138832, 36.916443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975048, 35.310574, 36.876255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053298, -0.331799, -0.941844,
		-0.437722, -0.839978, 0.320683,
		-0.897529, 0.429357, -0.100466,
		41.705788, 35.439381, 36.846115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811161, 34.615150, 36.671268>,  <42.334061, 35.138832, 36.916443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811161, 34.615150, 36.671268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708439, 34.990307, 36.577965>,  <41.646805, 35.215401, 36.521984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708439, 34.990307, 36.577965>,  <41.811161, 34.615150, 36.671268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708439, 34.990307, 36.577965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042247, -0.252016, -0.966800,
		-0.965540, -0.238423, 0.104342,
		-0.256803, 0.937892, -0.233259,
		41.631397, 35.271675, 36.507988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375858, 34.106895, 36.779530>,  <41.811161, 34.615150, 36.671268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375858, 34.106895, 36.779530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227119, 33.813934, 36.551388>,  <42.137875, 33.638157, 36.414501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227119, 33.813934, 36.551388>,  <42.375858, 34.106895, 36.779530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227119, 33.813934, 36.551388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506068, 0.675025, -0.536877,
		0.778218, 0.089002, -0.621656,
		-0.371850, -0.732407, -0.570357,
		42.115562, 33.594212, 36.380280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496422, 34.260426, 36.122906>,  <42.375858, 34.106895, 36.779530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496422, 34.260426, 36.122906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165226, 34.039177, 36.159763>,  <41.966507, 33.906429, 36.181877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165226, 34.039177, 36.159763>,  <42.496422, 34.260426, 36.122906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165226, 34.039177, 36.159763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453835, 0.564502, -0.689472,
		0.329341, -0.612697, -0.718427,
		-0.827990, -0.553119, 0.092149,
		41.916828, 33.873241, 36.187408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586742, 33.910458, 35.412273>,  <42.496422, 34.260426, 36.122906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586742, 33.910458, 35.412273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712860, 33.531937, 35.383713>,  <42.788532, 33.304825, 35.366577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712860, 33.531937, 35.383713>,  <42.586742, 33.910458, 35.412273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712860, 33.531937, 35.383713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946181, 0.307685, 0.100360,
		-0.073002, -0.099202, 0.992386,
		0.315298, -0.946303, -0.071401,
		42.807449, 33.248047, 35.362293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372643, 34.081390, 34.660389>,  <42.586742, 33.910458, 35.412273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372643, 34.081390, 34.660389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728928, 33.912971, 34.728909>,  <42.942699, 33.811920, 34.770020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728928, 33.912971, 34.728909>,  <42.372643, 34.081390, 34.660389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728928, 33.912971, 34.728909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450350, 0.868588, -0.206735,
		-0.061740, 0.261286, 0.963285,
		0.890715, -0.421052, 0.171297,
		42.996143, 33.786655, 34.780296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850914, 34.609512, 34.921734>,  <42.372643, 34.081390, 34.660389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850914, 34.609512, 34.921734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123043, 34.323219, 34.858631>,  <43.286320, 34.151443, 34.820770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123043, 34.323219, 34.858631>,  <42.850914, 34.609512, 34.921734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123043, 34.323219, 34.858631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615980, 0.675014, -0.406110,
		0.397157, 0.179109, 0.900104,
		0.680320, -0.715735, -0.157759,
		43.327141, 34.108498, 34.811302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427971, 34.702137, 35.290878>,  <42.850914, 34.609512, 34.921734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427971, 34.702137, 35.290878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542088, 34.493450, 34.969276>,  <43.610558, 34.368237, 34.776318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542088, 34.493450, 34.969276>,  <43.427971, 34.702137, 35.290878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542088, 34.493450, 34.969276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547480, 0.777247, -0.310086,
		0.786685, -0.351709, 0.507373,
		0.285294, -0.521716, -0.804002,
		43.627674, 34.336937, 34.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133080, 34.749905, 35.301373>,  <43.427971, 34.702137, 35.290878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133080, 34.749905, 35.301373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985928, 34.698498, 34.932991>,  <43.897636, 34.667652, 34.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985928, 34.698498, 34.932991>,  <44.133080, 34.749905, 35.301373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985928, 34.698498, 34.932991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415439, 0.863348, -0.286428,
		0.831912, -0.487968, -0.264214,
		-0.367877, -0.128518, -0.920951,
		43.875565, 34.659943, 34.656704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506664, 34.426311, 34.772793>,  <44.133080, 34.749905, 35.301373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506664, 34.426311, 34.772793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279305, 34.721352, 34.626991>,  <44.142887, 34.898376, 34.539513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279305, 34.721352, 34.626991>,  <44.506664, 34.426311, 34.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279305, 34.721352, 34.626991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808517, 0.582814, -0.081414,
		0.152384, -0.340981, -0.927637,
		-0.568401, 0.737604, -0.364500,
		44.108784, 34.942635, 34.517643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853939, 34.777187, 34.302521>,  <44.506664, 34.426311, 34.772793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853939, 34.777187, 34.302521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555897, 35.037708, 34.359955>,  <44.377071, 35.194023, 34.394413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555897, 35.037708, 34.359955>,  <44.853939, 34.777187, 34.302521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555897, 35.037708, 34.359955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649828, 0.757421, -0.063534,
		-0.150133, 0.045965, -0.987597,
		-0.745107, 0.651307, 0.143583,
		44.332363, 35.233101, 34.403030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816895, 35.320953, 33.720844>,  <44.853939, 34.777187, 34.302521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816895, 35.320953, 33.720844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667309, 35.440079, 34.072174>,  <44.577557, 35.511555, 34.282970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667309, 35.440079, 34.072174>,  <44.816895, 35.320953, 33.720844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667309, 35.440079, 34.072174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650673, 0.759104, 0.019647,
		-0.660888, 0.578849, -0.477661,
		-0.373967, 0.297817, 0.878324,
		44.555119, 35.529423, 34.335670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616287, 35.981400, 33.641766>,  <44.816895, 35.320953, 33.720844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616287, 35.981400, 33.641766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740723, 35.892395, 34.011353>,  <44.815384, 35.838993, 34.233105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740723, 35.892395, 34.011353>,  <44.616287, 35.981400, 33.641766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740723, 35.892395, 34.011353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734532, 0.673205, -0.085187,
		-0.603065, 0.705184, 0.372864,
		0.311087, -0.222508, 0.923967,
		44.834049, 35.825642, 34.288544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916660, 36.590908, 33.877968>,  <44.616287, 35.981400, 33.641766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916660, 36.590908, 33.877968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095802, 36.339603, 34.132435>,  <45.203289, 36.188820, 34.285114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095802, 36.339603, 34.132435>,  <44.916660, 36.590908, 33.877968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095802, 36.339603, 34.132435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681303, 0.700561, 0.212226,
		-0.579008, 0.338376, 0.741789,
		0.447856, -0.628264, 0.636167,
		45.230160, 36.151123, 34.323284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167683, 36.643116, 33.285255>,  <44.916660, 36.590908, 33.877968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167683, 36.643116, 33.285255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061695, 36.777802, 32.923832>,  <44.998100, 36.858612, 32.706978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061695, 36.777802, 32.923832>,  <45.167683, 36.643116, 33.285255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061695, 36.777802, 32.923832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392962, 0.893413, 0.217700,
		0.880551, -0.297378, -0.369047,
		-0.264972, 0.336718, -0.903555,
		44.982204, 36.878819, 32.652767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460896, 36.165730, 33.698887>,  <45.167683, 36.643116, 33.285255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460896, 36.165730, 33.698887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434502, 35.768463, 33.660385>,  <45.418667, 35.530102, 33.637283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434502, 35.768463, 33.660385>,  <45.460896, 36.165730, 33.698887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434502, 35.768463, 33.660385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976903, -0.083945, 0.196505,
		-0.203242, -0.081062, 0.975767,
		-0.065981, -0.993168, -0.096251,
		45.414707, 35.470512, 33.631512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752663, 35.973358, 34.226124>,  <45.460896, 36.165730, 33.698887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752663, 35.973358, 34.226124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785988, 35.681774, 33.954338>,  <45.805981, 35.506824, 33.791267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785988, 35.681774, 33.954338>,  <45.752663, 35.973358, 34.226124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785988, 35.681774, 33.954338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963757, -0.114470, 0.240976,
		-0.253441, -0.674913, 0.693008,
		0.083309, -0.728965, -0.679463,
		45.810982, 35.463085, 33.750500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869270, 35.381672, 34.608990>,  <45.752663, 35.973358, 34.226124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869270, 35.381672, 34.608990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020340, 35.413578, 34.239990>,  <46.110981, 35.432720, 34.018593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020340, 35.413578, 34.239990>,  <45.869270, 35.381672, 34.608990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020340, 35.413578, 34.239990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905768, -0.238638, 0.350194,
		-0.192209, -0.967827, -0.162379,
		0.377677, 0.079767, -0.922496,
		46.133644, 35.437508, 33.963242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133785, 34.645912, 34.356354>,  <45.869270, 35.381672, 34.608990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133785, 34.645912, 34.356354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262600, 35.012848, 34.262726>,  <46.339890, 35.233009, 34.206551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262600, 35.012848, 34.262726>,  <46.133785, 34.645912, 34.356354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.262600, 35.012848, 34.262726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838965, -0.161961, 0.519525,
		0.438668, -0.363683, -0.821769,
		0.322037, 0.917335, -0.234070,
		46.359211, 35.288048, 34.192505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793358, 34.617504, 34.003716>,  <46.133785, 34.645912, 34.356354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793358, 34.617504, 34.003716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739597, 34.972279, 34.180477>,  <46.707340, 35.185143, 34.286533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739597, 34.972279, 34.180477>,  <46.793358, 34.617504, 34.003716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739597, 34.972279, 34.180477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796786, -0.168396, 0.580323,
		0.589125, 0.430100, -0.684066,
		-0.134403, 0.886937, 0.441904,
		46.699276, 35.238361, 34.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.387768, 35.063110, 33.966122>,  <46.793358, 34.617504, 34.003716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.387768, 35.063110, 33.966122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201157, 35.150143, 34.309052>,  <47.089191, 35.202362, 34.514809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201157, 35.150143, 34.309052>,  <47.387768, 35.063110, 33.966122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201157, 35.150143, 34.309052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759483, -0.398273, 0.514358,
		0.453366, 0.891087, 0.020554,
		-0.466524, 0.217582, 0.857329,
		47.061199, 35.215416, 34.566250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.683273, 35.544361, 34.428337>,  <47.387768, 35.063110, 33.966122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.683273, 35.544361, 34.428337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.499115, 35.247303, 34.622868>,  <47.388618, 35.069069, 34.739586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.499115, 35.247303, 34.622868>,  <47.683273, 35.544361, 34.428337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.499115, 35.247303, 34.622868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886518, -0.356243, 0.295258,
		-0.046019, 0.567076, 0.822379,
		-0.460401, -0.742641, 0.486329,
		47.360996, 35.024509, 34.768764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.924080, 35.500950, 35.124577>,  <47.683273, 35.544361, 34.428337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.924080, 35.500950, 35.124577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817493, 35.147129, 34.971439>,  <47.753544, 34.934837, 34.879559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817493, 35.147129, 34.971439>,  <47.924080, 35.500950, 35.124577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.817493, 35.147129, 34.971439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854942, -0.400320, 0.329876,
		-0.445052, -0.239409, 0.862909,
		-0.266464, -0.884549, -0.382844,
		47.737553, 34.881763, 34.856586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.681358, 32.073269, 26.588188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408962, 32.365585, 26.569468>,  <38.245525, 32.540977, 26.558235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408962, 32.365585, 26.569468>,  <38.681358, 32.073269, 26.588188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408962, 32.365585, 26.569468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098300, -0.027895, 0.994766,
		0.725663, 0.682029, 0.090833,
		-0.680993, 0.730793, -0.046801,
		38.204666, 32.584824, 26.555428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853718, 32.716640, 26.956148>,  <38.681358, 32.073269, 26.588188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853718, 32.716640, 26.956148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.454590, 32.742847, 26.953211>,  <38.215111, 32.758572, 26.951448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.454590, 32.742847, 26.953211>,  <38.853718, 32.716640, 26.956148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454590, 32.742847, 26.953211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009610, 0.254710, 0.966970,
		0.065227, 0.964795, -0.254785,
		-0.997824, 0.065521, -0.007342,
		38.155243, 32.762505, 26.951008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624733, 33.229801, 27.304026>,  <38.853718, 32.716640, 26.956148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624733, 33.229801, 27.304026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269424, 33.050102, 27.342295>,  <38.056240, 32.942284, 27.365255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269424, 33.050102, 27.342295>,  <38.624733, 33.229801, 27.304026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269424, 33.050102, 27.342295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037775, 0.279035, 0.959538,
		-0.457768, 0.848713, -0.264828,
		-0.888269, -0.449250, 0.095673,
		38.002945, 32.915329, 27.370996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260323, 33.614021, 27.722454>,  <38.624733, 33.229801, 27.304026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260323, 33.614021, 27.722454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048206, 33.274895, 27.721542>,  <37.920937, 33.071419, 27.720995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048206, 33.274895, 27.721542>,  <38.260323, 33.614021, 27.722454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048206, 33.274895, 27.721542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288294, 0.177794, 0.940891,
		-0.797297, 0.499599, -0.338702,
		-0.530287, -0.847815, -0.002277,
		37.889122, 33.020550, 27.720860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556190, 33.860016, 27.948757>,  <38.260323, 33.614021, 27.722454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556190, 33.860016, 27.948757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596523, 33.472874, 28.040928>,  <37.620724, 33.240589, 28.096231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596523, 33.472874, 28.040928>,  <37.556190, 33.860016, 27.948757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596523, 33.472874, 28.040928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362020, 0.180039, 0.914619,
		-0.926701, -0.175642, -0.332228,
		0.100832, -0.967851, 0.230428,
		37.626774, 33.182518, 28.110056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058220, 33.658821, 28.362885>,  <37.556190, 33.860016, 27.948757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058220, 33.658821, 28.362885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303032, 33.359436, 28.465042>,  <37.449921, 33.179806, 28.526337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303032, 33.359436, 28.465042>,  <37.058220, 33.658821, 28.362885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303032, 33.359436, 28.465042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346629, 0.036382, 0.937296,
		-0.710820, -0.662183, -0.237171,
		0.612033, -0.748459, 0.255393,
		37.486641, 33.134899, 28.541660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599571, 33.215752, 28.864321>,  <37.058220, 33.658821, 28.362885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599571, 33.215752, 28.864321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986286, 33.124363, 28.910137>,  <37.218315, 33.069530, 28.937626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986286, 33.124363, 28.910137>,  <36.599571, 33.215752, 28.864321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986286, 33.124363, 28.910137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107200, 0.044322, 0.993249,
		-0.232007, -0.972541, 0.018358,
		0.966789, -0.228473, 0.114539,
		37.276321, 33.055820, 28.944500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652252, 32.592697, 29.296000>,  <36.599571, 33.215752, 28.864321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652252, 32.592697, 29.296000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001953, 32.783047, 29.334414>,  <37.211773, 32.897255, 29.357462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001953, 32.783047, 29.334414>,  <36.652252, 32.592697, 29.296000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001953, 32.783047, 29.334414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067062, -0.077538, 0.994731,
		0.480813, -0.876089, -0.035875,
		0.874255, 0.475874, 0.096034,
		37.264229, 32.925808, 29.363224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988159, 32.242115, 29.784513>,  <36.652252, 32.592697, 29.296000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988159, 32.242115, 29.784513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147926, 32.608746, 29.791998>,  <37.243786, 32.828724, 29.796488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147926, 32.608746, 29.791998>,  <36.988159, 32.242115, 29.784513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147926, 32.608746, 29.791998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072790, 0.011364, 0.997283,
		0.913873, -0.399698, 0.071256,
		0.399422, 0.916577, 0.018709,
		37.267754, 32.883720, 29.797611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554340, 32.215282, 30.370777>,  <36.988159, 32.242115, 29.784513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554340, 32.215282, 30.370777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.521004, 32.609116, 30.309254>,  <37.501003, 32.845413, 30.272339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.521004, 32.609116, 30.309254>,  <37.554340, 32.215282, 30.370777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521004, 32.609116, 30.309254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163450, 0.165760, 0.972526,
		0.983025, 0.055912, -0.174744,
		-0.083342, 0.984580, -0.153808,
		37.496002, 32.904491, 30.263111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176479, 32.601555, 30.648148>,  <37.554340, 32.215282, 30.370777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176479, 32.601555, 30.648148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870010, 32.857918, 30.629326>,  <37.686131, 33.011734, 30.618032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870010, 32.857918, 30.629326>,  <38.176479, 32.601555, 30.648148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870010, 32.857918, 30.629326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201679, 0.309324, 0.929325,
		0.610167, 0.702534, -0.366254,
		-0.766174, 0.640909, -0.047053,
		37.640160, 33.050190, 30.615210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420948, 33.149292, 31.092779>,  <38.176479, 32.601555, 30.648148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420948, 33.149292, 31.092779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025242, 33.196655, 31.058508>,  <37.787819, 33.225075, 31.037945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025242, 33.196655, 31.058508>,  <38.420948, 33.149292, 31.092779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025242, 33.196655, 31.058508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042752, 0.326123, 0.944360,
		0.139764, 0.937882, -0.317559,
		-0.989261, 0.118411, -0.085676,
		37.728462, 33.232178, 31.032804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276619, 33.729816, 31.432465>,  <38.420948, 33.149292, 31.092779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276619, 33.729816, 31.432465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910721, 33.571602, 31.399488>,  <37.691181, 33.476673, 31.379702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910721, 33.571602, 31.399488>,  <38.276619, 33.729816, 31.432465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910721, 33.571602, 31.399488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249610, 0.392784, 0.885108,
		-0.317710, 0.830225, -0.458026,
		-0.914743, -0.395535, -0.082441,
		37.636299, 33.452942, 31.374756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686966, 34.256435, 31.434153>,  <38.276619, 33.729816, 31.432465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686966, 34.256435, 31.434153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478264, 33.932980, 31.542877>,  <37.353043, 33.738907, 31.608112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478264, 33.932980, 31.542877>,  <37.686966, 34.256435, 31.434153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478264, 33.932980, 31.542877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071932, 0.359185, 0.930490,
		-0.850059, 0.465933, -0.245573,
		-0.521752, -0.808636, 0.271813,
		37.321739, 33.690388, 31.624420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140366, 34.514381, 31.862986>,  <37.686966, 34.256435, 31.434153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140366, 34.514381, 31.862986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165115, 34.123596, 31.944683>,  <37.179966, 33.889126, 31.993702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165115, 34.123596, 31.944683>,  <37.140366, 34.514381, 31.862986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165115, 34.123596, 31.944683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083799, 0.198827, 0.976445,
		-0.994560, -0.077534, -0.069566,
		0.061876, -0.976963, 0.204242,
		37.183678, 33.830509, 32.005955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702030, 34.388763, 32.519585>,  <37.140366, 34.514381, 31.862986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702030, 34.388763, 32.519585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926296, 34.057915, 32.503952>,  <37.060856, 33.859406, 32.494572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926296, 34.057915, 32.503952>,  <36.702030, 34.388763, 32.519585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926296, 34.057915, 32.503952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066387, -0.002150, 0.997791,
		-0.825377, -0.562022, 0.053705,
		0.560665, -0.827120, -0.039085,
		37.094498, 33.809780, 32.492226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363678, 33.890617, 32.933205>,  <36.702030, 34.388763, 32.519585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363678, 33.890617, 32.933205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751736, 33.807171, 32.883743>,  <36.984570, 33.757103, 32.854065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751736, 33.807171, 32.883743>,  <36.363678, 33.890617, 32.933205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751736, 33.807171, 32.883743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138847, 0.059761, 0.988509,
		-0.198830, -0.976170, 0.086943,
		0.970149, -0.208617, -0.123656,
		37.042782, 33.744587, 32.846645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568066, 33.374077, 33.401394>,  <36.363678, 33.890617, 32.933205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568066, 33.374077, 33.401394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909378, 33.560329, 33.307499>,  <37.114166, 33.672081, 33.251163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909378, 33.560329, 33.307499>,  <36.568066, 33.374077, 33.401394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909378, 33.560329, 33.307499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232005, 0.064146, 0.970597,
		0.466996, -0.882652, -0.053293,
		0.853281, 0.465630, -0.234736,
		37.165363, 33.700020, 33.237080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021214, 33.104561, 33.877068>,  <36.568066, 33.374077, 33.401394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021214, 33.104561, 33.877068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216885, 33.433842, 33.761799>,  <37.334290, 33.631409, 33.692638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216885, 33.433842, 33.761799>,  <37.021214, 33.104561, 33.877068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216885, 33.433842, 33.761799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562522, -0.045286, 0.825541,
		0.666536, -0.565942, -0.485221,
		0.489182, 0.823200, -0.288170,
		37.363640, 33.680801, 33.675346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695465, 32.980564, 33.893978>,  <37.021214, 33.104561, 33.877068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695465, 32.980564, 33.893978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669178, 33.377064, 33.939774>,  <37.653408, 33.614964, 33.967251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669178, 33.377064, 33.939774>,  <37.695465, 32.980564, 33.893978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669178, 33.377064, 33.939774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524859, -0.063241, 0.848837,
		0.848649, 0.115871, -0.516110,
		-0.065716, 0.991249, 0.114485,
		37.649464, 33.674438, 33.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255825, 33.061619, 34.205185>,  <37.695465, 32.980564, 33.893978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255825, 33.061619, 34.205185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071102, 33.412308, 34.258991>,  <37.960270, 33.622719, 34.291275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071102, 33.412308, 34.258991>,  <38.255825, 33.061619, 34.205185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071102, 33.412308, 34.258991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478047, 0.118270, 0.870335,
		0.747131, 0.466233, -0.473731,
		-0.461807, 0.876720, 0.134518,
		37.932560, 33.675323, 34.299347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874535, 33.553806, 34.480438>,  <38.255825, 33.061619, 34.205185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874535, 33.553806, 34.480438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508221, 33.689873, 34.565872>,  <38.288433, 33.771515, 34.617130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508221, 33.689873, 34.565872>,  <38.874535, 33.553806, 34.480438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508221, 33.689873, 34.565872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251935, 0.072334, 0.965037,
		0.312825, 0.937578, -0.151943,
		-0.915789, 0.340168, 0.213581,
		38.233482, 33.791924, 34.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513084, 33.334724, 34.831932>,  <38.874535, 33.553806, 34.480438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513084, 33.334724, 34.831932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904781, 33.380501, 34.898849>,  <40.139801, 33.407967, 34.938999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904781, 33.380501, 34.898849>,  <39.513084, 33.334724, 34.831932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904781, 33.380501, 34.898849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192840, -0.271809, -0.942832,
		-0.062422, 0.955523, -0.288235,
		0.979243, 0.114436, 0.167296,
		40.198555, 33.414833, 34.949039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795925, 33.721256, 34.269215>,  <39.513084, 33.334724, 34.831932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795925, 33.721256, 34.269215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.116974, 33.557838, 34.443062>,  <40.309605, 33.459789, 34.547371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.116974, 33.557838, 34.443062>,  <39.795925, 33.721256, 34.269215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116974, 33.557838, 34.443062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279028, -0.386834, -0.878921,
		0.527199, 0.826713, -0.196488,
		0.802623, -0.408541, 0.434615,
		40.357761, 33.435276, 34.573448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326653, 33.844524, 33.822525>,  <39.795925, 33.721256, 34.269215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326653, 33.844524, 33.822525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.451572, 33.544918, 34.056259>,  <40.526524, 33.365154, 34.196499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.451572, 33.544918, 34.056259>,  <40.326653, 33.844524, 33.822525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451572, 33.544918, 34.056259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432170, -0.435749, -0.789526,
		0.845990, 0.499099, 0.187618,
		0.312297, -0.749014, 0.584335,
		40.545261, 33.320213, 34.231560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999660, 33.759701, 33.624104>,  <40.326653, 33.844524, 33.822525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999660, 33.759701, 33.624104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867260, 33.413647, 33.774830>,  <40.787819, 33.206017, 33.865265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867260, 33.413647, 33.774830>,  <40.999660, 33.759701, 33.624104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867260, 33.413647, 33.774830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323055, -0.479083, -0.816158,
		0.886608, -0.148417, 0.438062,
		-0.331000, -0.865131, 0.376812,
		40.767960, 33.154106, 33.887875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458107, 33.242168, 33.378654>,  <40.999660, 33.759701, 33.624104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458107, 33.242168, 33.378654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.168110, 32.998993, 33.508141>,  <40.994110, 32.853088, 33.585831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.168110, 32.998993, 33.508141>,  <41.458107, 33.242168, 33.378654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168110, 32.998993, 33.508141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087856, -0.547789, -0.831991,
		0.683130, -0.574747, 0.450554,
		-0.724993, -0.607942, 0.323716,
		40.950611, 32.816612, 33.605255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790115, 32.563503, 33.389263>,  <41.458107, 33.242168, 33.378654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790115, 32.563503, 33.389263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393463, 32.520386, 33.360851>,  <41.155472, 32.494514, 33.343803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393463, 32.520386, 33.360851>,  <41.790115, 32.563503, 33.389263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393463, 32.520386, 33.360851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117871, -0.531722, -0.838677,
		0.052642, -0.840031, 0.539979,
		-0.991633, -0.107797, -0.071025,
		41.095974, 32.488049, 33.339542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821392, 31.929670, 33.135387>,  <41.790115, 32.563503, 33.389263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821392, 31.929670, 33.135387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433521, 32.020473, 33.099190>,  <41.200798, 32.074955, 33.077469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433521, 32.020473, 33.099190>,  <41.821392, 31.929670, 33.135387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433521, 32.020473, 33.099190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028732, -0.473648, -0.880245,
		-0.242684, -0.850956, 0.465810,
		-0.969679, 0.227005, -0.090497,
		41.142616, 32.088577, 33.072041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513226, 31.330976, 32.879391>,  <41.821392, 31.929670, 33.135387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513226, 31.330976, 32.879391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.258198, 31.625637, 32.789188>,  <41.105183, 31.802433, 32.735065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.258198, 31.625637, 32.789188>,  <41.513226, 31.330976, 32.879391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258198, 31.625637, 32.789188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161801, -0.414226, -0.895677,
		-0.753210, -0.534569, 0.383289,
		-0.637569, 0.736650, -0.225505,
		41.066925, 31.846632, 32.721539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907375, 30.979858, 32.610954>,  <41.513226, 31.330976, 32.879391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907375, 30.979858, 32.610954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.907238, 31.357409, 32.478832>,  <40.907154, 31.583939, 32.399559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.907238, 31.357409, 32.478832>,  <40.907375, 30.979858, 32.610954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907238, 31.357409, 32.478832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279197, -0.317260, -0.906308,
		-0.960234, 0.091909, 0.263636,
		-0.000343, 0.943874, -0.330304,
		40.907135, 31.640572, 32.379742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336277, 31.108534, 32.223740>,  <40.907375, 30.979858, 32.610954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336277, 31.108534, 32.223740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.593136, 31.383074, 32.087170>,  <40.747250, 31.547798, 32.005226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.593136, 31.383074, 32.087170>,  <40.336277, 31.108534, 32.223740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593136, 31.383074, 32.087170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320103, -0.164621, -0.932970,
		-0.696549, 0.708396, 0.113992,
		0.642148, 0.686349, -0.341426,
		40.785782, 31.588978, 31.984741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976311, 31.551605, 31.731434>,  <40.336277, 31.108534, 32.223740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976311, 31.551605, 31.731434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365700, 31.600225, 31.653898>,  <40.599335, 31.629398, 31.607376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365700, 31.600225, 31.653898>,  <39.976311, 31.551605, 31.731434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365700, 31.600225, 31.653898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206955, 0.106554, -0.972531,
		-0.097559, 0.986849, 0.128883,
		0.973474, 0.121552, -0.193838,
		40.657742, 31.636690, 31.595747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022942, 32.136642, 31.262804>,  <39.976311, 31.551605, 31.731434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022942, 32.136642, 31.262804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.345932, 31.905230, 31.216698>,  <40.539726, 31.766382, 31.189034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.345932, 31.905230, 31.216698>,  <40.022942, 32.136642, 31.262804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345932, 31.905230, 31.216698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083685, 0.081081, -0.993188,
		0.583938, 0.811619, 0.017056,
		0.807473, -0.578533, -0.115267,
		40.588173, 31.731670, 31.182117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440861, 32.461426, 30.838524>,  <40.022942, 32.136642, 31.262804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440861, 32.461426, 30.838524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.601780, 32.096264, 30.810955>,  <40.698334, 31.877165, 30.794413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.601780, 32.096264, 30.810955>,  <40.440861, 32.461426, 30.838524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601780, 32.096264, 30.810955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126374, 0.129938, -0.983436,
		0.906744, 0.386927, 0.167642,
		0.402301, -0.912909, -0.068923,
		40.722469, 31.822392, 30.790277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216892, 32.504784, 30.584396>,  <40.440861, 32.461426, 30.838524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216892, 32.504784, 30.584396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.074097, 32.146053, 30.479887>,  <40.988419, 31.930815, 30.417181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.074097, 32.146053, 30.479887>,  <41.216892, 32.504784, 30.584396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074097, 32.146053, 30.479887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023502, 0.288238, -0.957270,
		0.933813, -0.335593, -0.123974,
		-0.356987, -0.896825, -0.261273,
		40.966999, 31.877007, 30.401505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742706, 32.079254, 30.174824>,  <41.216892, 32.504784, 30.584396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742706, 32.079254, 30.174824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.369953, 31.957645, 30.095667>,  <41.146301, 31.884680, 30.048172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.369953, 31.957645, 30.095667>,  <41.742706, 32.079254, 30.174824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369953, 31.957645, 30.095667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142846, 0.193904, -0.970565,
		0.333447, -0.932722, -0.137267,
		-0.931884, -0.304024, -0.197892,
		41.090389, 31.866438, 30.036299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839165, 31.639519, 29.606077>,  <41.742706, 32.079254, 30.174824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839165, 31.639519, 29.606077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.447796, 31.721375, 29.594713>,  <41.212975, 31.770489, 29.587894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.447796, 31.721375, 29.594713>,  <41.839165, 31.639519, 29.606077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447796, 31.721375, 29.594713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035947, 0.033218, -0.998801,
		-0.203454, -0.978273, -0.039858,
		-0.978424, 0.204643, -0.028408,
		41.154270, 31.782766, 29.586191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607491, 31.301645, 28.980927>,  <41.839165, 31.639519, 29.606077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607491, 31.301645, 28.980927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315037, 31.561901, 29.063017>,  <41.139565, 31.718054, 29.112270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315037, 31.561901, 29.063017>,  <41.607491, 31.301645, 28.980927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315037, 31.561901, 29.063017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006101, 0.307036, -0.951678,
		-0.682210, -0.694549, -0.228454,
		-0.731131, 0.650638, 0.205226,
		41.095699, 31.757093, 29.124584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046185, 31.049667, 28.651947>,  <41.607491, 31.301645, 28.980927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046185, 31.049667, 28.651947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009216, 31.445738, 28.693926>,  <40.987038, 31.683380, 28.719112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009216, 31.445738, 28.693926>,  <41.046185, 31.049667, 28.651947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009216, 31.445738, 28.693926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104667, 0.095152, -0.989945,
		-0.990204, -0.102471, 0.094845,
		-0.092416, 0.990175, 0.104945,
		40.981491, 31.742790, 28.725409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.493614, 31.202499, 28.079771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.649883, 31.546461, 28.211184>,  <40.743645, 31.752838, 28.290031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.649883, 31.546461, 28.211184>,  <40.493614, 31.202499, 28.079771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649883, 31.546461, 28.211184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051774, 0.335805, -0.940507,
		-0.919071, 0.384443, 0.086670,
		0.390675, 0.859906, 0.328533,
		40.767086, 31.804434, 28.309744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974674, 31.618263, 27.902487>,  <40.493614, 31.202499, 28.079771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974674, 31.618263, 27.902487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314507, 31.827129, 27.932295>,  <40.518406, 31.952450, 27.950180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314507, 31.827129, 27.932295>,  <39.974674, 31.618263, 27.902487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314507, 31.827129, 27.932295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082424, 0.270976, -0.959051,
		-0.520979, 0.808649, 0.273255,
		0.849581, 0.522168, 0.074521,
		40.569382, 31.983780, 27.954651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796043, 32.270439, 27.652493>,  <39.974674, 31.618263, 27.902487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796043, 32.270439, 27.652493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.195442, 32.277889, 27.631882>,  <40.435081, 32.282360, 27.619514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.195442, 32.277889, 27.631882>,  <39.796043, 32.270439, 27.652493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195442, 32.277889, 27.631882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053836, 0.508435, -0.859416,
		0.010187, 0.860899, 0.508674,
		0.998498, 0.018630, -0.051527,
		40.494991, 32.283478, 27.616423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037312, 32.982212, 27.501381>,  <39.796043, 32.270439, 27.652493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037312, 32.982212, 27.501381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324200, 32.736759, 27.369293>,  <40.496334, 32.589489, 27.290041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324200, 32.736759, 27.369293>,  <40.037312, 32.982212, 27.501381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324200, 32.736759, 27.369293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081656, 0.396606, -0.914350,
		0.692043, 0.682758, 0.234348,
		0.717223, -0.613633, -0.330220,
		40.539368, 32.552670, 27.270227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411850, 33.376213, 26.968126>,  <40.037312, 32.982212, 27.501381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411850, 33.376213, 26.968126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525066, 32.994907, 26.925852>,  <40.592999, 32.766125, 26.900488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525066, 32.994907, 26.925852>,  <40.411850, 33.376213, 26.968126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525066, 32.994907, 26.925852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080241, 0.086271, -0.993035,
		0.955745, 0.289552, -0.052073,
		0.283043, -0.953267, -0.105687,
		40.609978, 32.708927, 26.894146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962193, 33.402916, 26.551048>,  <40.411850, 33.376213, 26.968126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962193, 33.402916, 26.551048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822895, 33.029640, 26.515539>,  <40.739319, 32.805676, 26.494234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822895, 33.029640, 26.515539>,  <40.962193, 33.402916, 26.551048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822895, 33.029640, 26.515539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033908, 0.082099, -0.996047,
		0.936792, -0.349873, 0.003052,
		-0.348240, -0.933193, -0.088773,
		40.718422, 32.749683, 26.488907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332348, 33.110466, 26.017982>,  <40.962193, 33.402916, 26.551048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332348, 33.110466, 26.017982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033443, 32.846020, 26.044861>,  <40.854099, 32.687351, 26.060987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033443, 32.846020, 26.044861>,  <41.332348, 33.110466, 26.017982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033443, 32.846020, 26.044861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009263, -0.090748, -0.995831,
		0.664461, -0.744773, 0.061689,
		-0.747266, -0.661119, 0.067197,
		40.809265, 32.647682, 26.065020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481728, 32.510452, 25.650230>,  <41.332348, 33.110466, 26.017982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481728, 32.510452, 25.650230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083199, 32.533249, 25.675795>,  <40.844082, 32.546928, 25.691133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083199, 32.533249, 25.675795>,  <41.481728, 32.510452, 25.650230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083199, 32.533249, 25.675795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066471, -0.044256, -0.996807,
		-0.054017, -0.997392, 0.047884,
		-0.996325, 0.057027, 0.063907,
		40.784302, 32.550346, 25.694967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297134, 31.808949, 25.547728>,  <41.481728, 32.510452, 25.650230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297134, 31.808949, 25.547728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020393, 32.073647, 25.432184>,  <40.854351, 32.232464, 25.362858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020393, 32.073647, 25.432184>,  <41.297134, 31.808949, 25.547728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020393, 32.073647, 25.432184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261367, -0.143407, -0.954527,
		-0.673077, -0.735887, -0.073742,
		-0.691849, 0.661744, -0.288860,
		40.812840, 32.272171, 25.345526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031868, 31.504908, 24.855024>,  <41.297134, 31.808949, 25.547728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031868, 31.504908, 24.855024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895226, 31.880651, 24.842974>,  <40.813240, 32.106098, 24.835743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895226, 31.880651, 24.842974>,  <41.031868, 31.504908, 24.855024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895226, 31.880651, 24.842974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057311, -0.011177, -0.998294,
		-0.938095, -0.342747, -0.050018,
		-0.341603, 0.939361, -0.030129,
		40.792744, 32.162460, 24.833935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431580, 31.557922, 24.489859>,  <41.031868, 31.504908, 24.855024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431580, 31.557922, 24.489859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587822, 31.925926, 24.477156>,  <40.681568, 32.146729, 24.469534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587822, 31.925926, 24.477156>,  <40.431580, 31.557922, 24.489859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587822, 31.925926, 24.477156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057403, -0.010087, -0.998300,
		-0.918766, 0.391766, 0.048872,
		0.390607, 0.920010, -0.031756,
		40.705006, 32.201931, 24.467628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048412, 31.865362, 23.919624>,  <40.431580, 31.557922, 24.489859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048412, 31.865362, 23.919624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380474, 32.078964, 23.983732>,  <40.579712, 32.207127, 24.022196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380474, 32.078964, 23.983732>,  <40.048412, 31.865362, 23.919624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380474, 32.078964, 23.983732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175684, 0.022266, -0.984195,
		-0.529132, 0.845189, -0.075332,
		0.830153, 0.534004, 0.160268,
		40.629520, 32.239166, 24.031813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059662, 32.391178, 23.387112>,  <40.048412, 31.865362, 23.919624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059662, 32.391178, 23.387112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437733, 32.362701, 23.514595>,  <40.664574, 32.345615, 23.591085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437733, 32.362701, 23.514595>,  <40.059662, 32.391178, 23.387112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437733, 32.362701, 23.514595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324362, 0.091585, -0.941489,
		0.037837, 0.993249, 0.109656,
		0.945176, -0.071192, 0.318707,
		40.721287, 32.341343, 23.610207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517292, 32.962257, 23.115641>,  <40.059662, 32.391178, 23.387112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517292, 32.962257, 23.115641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785336, 32.685642, 23.223513>,  <40.946163, 32.519672, 23.288235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785336, 32.685642, 23.223513>,  <40.517292, 32.962257, 23.115641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785336, 32.685642, 23.223513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402135, 0.032857, -0.914991,
		0.623889, 0.721594, 0.300108,
		0.670112, -0.691536, 0.269679,
		40.986370, 32.478180, 23.304417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092121, 33.299805, 22.943100>,  <40.517292, 32.962257, 23.115641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092121, 33.299805, 22.943100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185417, 32.911926, 22.972172>,  <41.241394, 32.679199, 22.989614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185417, 32.911926, 22.972172>,  <41.092121, 33.299805, 22.943100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185417, 32.911926, 22.972172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348592, 0.013608, -0.937176,
		0.907789, 0.243926, 0.341203,
		0.233244, -0.969698, 0.072677,
		41.255390, 32.621017, 22.993975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714203, 33.261150, 22.582499>,  <41.092121, 33.299805, 22.943100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714203, 33.261150, 22.582499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.578472, 32.884884, 22.581985>,  <41.497036, 32.659122, 22.581678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.578472, 32.884884, 22.581985>,  <41.714203, 33.261150, 22.582499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578472, 32.884884, 22.581985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388722, -0.138981, -0.910812,
		0.856595, -0.309558, 0.412818,
		-0.339323, -0.940669, -0.001281,
		41.476677, 32.602684, 22.581600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220043, 32.890228, 22.347017>,  <41.714203, 33.261150, 22.582499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220043, 32.890228, 22.347017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894085, 32.671040, 22.271469>,  <41.698509, 32.539528, 22.226141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894085, 32.671040, 22.271469>,  <42.220043, 32.890228, 22.347017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894085, 32.671040, 22.271469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367831, -0.237092, -0.899159,
		0.447933, -0.802194, 0.394766,
		-0.814897, -0.547970, -0.188871,
		41.649616, 32.506649, 22.214808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466648, 32.222813, 22.142508>,  <42.220043, 32.890228, 22.347017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466648, 32.222813, 22.142508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.096642, 32.283447, 22.003151>,  <41.874638, 32.319828, 21.919537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.096642, 32.283447, 22.003151>,  <42.466648, 32.222813, 22.142508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096642, 32.283447, 22.003151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301043, -0.266999, -0.915470,
		-0.231781, -0.951702, 0.201347,
		-0.925014, 0.151574, -0.348388,
		41.819138, 32.328922, 21.898634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336685, 31.619057, 21.772739>,  <42.466648, 32.222813, 22.142508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336685, 31.619057, 21.772739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.106144, 31.913126, 21.630001>,  <41.967819, 32.089565, 21.544357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.106144, 31.913126, 21.630001>,  <42.336685, 31.619057, 21.772739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106144, 31.913126, 21.630001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188033, -0.305650, -0.933392,
		-0.795273, -0.605063, 0.037927,
		-0.576354, 0.735171, -0.356847,
		41.933239, 32.133678, 21.522947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097958, 31.355383, 21.179852>,  <42.336685, 31.619057, 21.772739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097958, 31.355383, 21.179852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.991665, 31.738371, 21.134890>,  <41.927887, 31.968164, 21.107912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.991665, 31.738371, 21.134890>,  <42.097958, 31.355383, 21.179852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991665, 31.738371, 21.134890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041978, -0.104992, -0.993587,
		-0.963132, -0.268748, -0.012292,
		-0.265734, 0.957471, -0.112403,
		41.911945, 32.025612, 21.101170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674870, 31.271669, 20.610199>,  <42.097958, 31.355383, 21.179852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674870, 31.271669, 20.610199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.775791, 31.657276, 20.643702>,  <41.836346, 31.888639, 20.663803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.775791, 31.657276, 20.643702>,  <41.674870, 31.271669, 20.610199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775791, 31.657276, 20.643702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162527, 0.043111, -0.985762,
		-0.953901, 0.262326, -0.145801,
		0.252305, 0.964016, 0.083759,
		41.851482, 31.946482, 20.668829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275661, 31.679146, 20.051035>,  <41.674870, 31.271669, 20.610199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275661, 31.679146, 20.051035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614685, 31.864243, 20.154966>,  <41.818100, 31.975300, 20.217325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614685, 31.864243, 20.154966>,  <41.275661, 31.679146, 20.051035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614685, 31.864243, 20.154966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284924, 0.016278, -0.958412,
		-0.447725, 0.886345, -0.118049,
		0.847562, 0.462740, 0.259829,
		41.868954, 32.003063, 20.232914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110001, 32.331879, 19.700800>,  <41.275661, 31.679146, 20.051035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110001, 32.331879, 19.700800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.782959, 32.388027, 19.924162>,  <40.586735, 32.421715, 20.058180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.782959, 32.388027, 19.924162>,  <41.110001, 32.331879, 19.700800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782959, 32.388027, 19.924162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241794, 0.796465, -0.554237,
		-0.522549, -0.588167, -0.617254,
		-0.817605, 0.140368, 0.558407,
		40.537678, 32.430138, 20.091684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229813, 32.951313, 19.175230>,  <41.110001, 32.331879, 19.700800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229813, 32.951313, 19.175230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.314964, 33.339169, 19.223379>,  <41.366055, 33.571880, 19.252270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.314964, 33.339169, 19.223379>,  <41.229813, 32.951313, 19.175230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314964, 33.339169, 19.223379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760716, 0.087158, 0.643206,
		0.613185, -0.228494, 0.756172,
		0.212875, 0.969636, 0.120375,
		41.378826, 33.630058, 19.259491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406181, 33.371319, 19.857210>,  <41.229813, 32.951313, 19.175230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406181, 33.371319, 19.857210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195919, 33.621143, 19.626175>,  <41.069763, 33.771038, 19.487555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195919, 33.621143, 19.626175>,  <41.406181, 33.371319, 19.857210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195919, 33.621143, 19.626175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566203, 0.249864, 0.785482,
		0.634901, 0.739926, 0.222286,
		-0.525657, 0.624562, -0.577587,
		41.038223, 33.808514, 19.452898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344891, 34.003422, 20.236876>,  <41.406181, 33.371319, 19.857210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344891, 34.003422, 20.236876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.042992, 33.963566, 19.977514>,  <40.861851, 33.939651, 19.821898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.042992, 33.963566, 19.977514>,  <41.344891, 34.003422, 20.236876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042992, 33.963566, 19.977514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655979, 0.104190, 0.747553,
		-0.006931, 0.989553, -0.144001,
		-0.754747, -0.099643, -0.648404,
		40.816566, 33.933674, 19.782993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955257, 34.562607, 20.194082>,  <41.344891, 34.003422, 20.236876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955257, 34.562607, 20.194082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.681644, 34.311459, 20.045551>,  <40.517479, 34.160770, 19.956432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.681644, 34.311459, 20.045551>,  <40.955257, 34.562607, 20.194082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681644, 34.311459, 20.045551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657458, 0.310142, 0.686703,
		-0.315997, 0.713856, -0.624944,
		-0.684029, -0.627871, -0.371326,
		40.476437, 34.123096, 19.934153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353699, 34.995857, 20.285984>,  <40.955257, 34.562607, 20.194082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353699, 34.995857, 20.285984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.242981, 34.612549, 20.257395>,  <40.176548, 34.382565, 20.240240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.242981, 34.612549, 20.257395>,  <40.353699, 34.995857, 20.285984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242981, 34.612549, 20.257395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610045, 0.117769, 0.783566,
		-0.742447, 0.260492, -0.617184,
		-0.276798, -0.958266, -0.071475,
		40.159943, 34.325069, 20.235952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591030, 34.961586, 20.335453>,  <40.353699, 34.995857, 20.285984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591030, 34.961586, 20.335453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.744793, 34.610802, 20.450808>,  <39.837051, 34.400330, 20.520021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.744793, 34.610802, 20.450808>,  <39.591030, 34.961586, 20.335453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744793, 34.610802, 20.450808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534852, 0.043052, 0.843848,
		-0.752439, -0.478626, -0.452496,
		0.384407, -0.876963, 0.288388,
		39.860115, 34.347713, 20.537325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058441, 34.617905, 20.686491>,  <39.591030, 34.961586, 20.335453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058441, 34.617905, 20.686491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385078, 34.425945, 20.814781>,  <39.581062, 34.310768, 20.891756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385078, 34.425945, 20.814781>,  <39.058441, 34.617905, 20.686491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385078, 34.425945, 20.814781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441751, -0.161956, 0.882398,
		-0.371521, -0.862244, -0.344250,
		0.816596, -0.479902, 0.320727,
		39.630058, 34.281975, 20.910999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754646, 33.977783, 21.065407>,  <39.058441, 34.617905, 20.686491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754646, 33.977783, 21.065407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126427, 34.056004, 21.190554>,  <39.349495, 34.102936, 21.265642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126427, 34.056004, 21.190554>,  <38.754646, 33.977783, 21.065407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126427, 34.056004, 21.190554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267144, -0.228195, 0.936248,
		0.254478, -0.953775, -0.159856,
		0.929449, 0.195550, 0.312866,
		39.405262, 34.114670, 21.284412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869217, 33.449600, 21.425735>,  <38.754646, 33.977783, 21.065407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869217, 33.449600, 21.425735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135235, 33.724373, 21.542927>,  <39.294846, 33.889236, 21.613241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135235, 33.724373, 21.542927>,  <38.869217, 33.449600, 21.425735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135235, 33.724373, 21.542927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133727, -0.276432, 0.951684,
		0.734733, -0.672092, -0.091978,
		0.665044, 0.686934, 0.292980,
		39.334747, 33.930454, 21.630821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204056, 33.123932, 22.020729>,  <38.869217, 33.449600, 21.425735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204056, 33.123932, 22.020729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282349, 33.514717, 22.054739>,  <39.329327, 33.749187, 22.075146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282349, 33.514717, 22.054739>,  <39.204056, 33.123932, 22.020729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282349, 33.514717, 22.054739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144536, -0.057016, 0.987856,
		0.969947, -0.205648, 0.130046,
		0.195736, 0.976964, 0.085026,
		39.341068, 33.807808, 22.080246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597588, 33.205338, 22.598326>,  <39.204056, 33.123932, 22.020729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597588, 33.205338, 22.598326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416695, 33.558399, 22.547087>,  <39.308159, 33.770237, 22.516342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416695, 33.558399, 22.547087>,  <39.597588, 33.205338, 22.598326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416695, 33.558399, 22.547087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155006, 0.063658, 0.985861,
		0.878325, 0.465698, 0.108028,
		-0.452237, 0.882651, -0.128098,
		39.281025, 33.823196, 22.508657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818115, 33.618328, 23.130686>,  <39.597588, 33.205338, 22.598326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818115, 33.618328, 23.130686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465843, 33.756859, 23.001406>,  <39.254478, 33.839977, 22.923838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465843, 33.756859, 23.001406>,  <39.818115, 33.618328, 23.130686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465843, 33.756859, 23.001406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306823, 0.102793, 0.946199,
		0.360916, 0.932466, 0.015733,
		-0.880681, 0.346326, -0.323202,
		39.201637, 33.860756, 22.904446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771053, 34.192783, 23.527950>,  <39.818115, 33.618328, 23.130686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771053, 34.192783, 23.527950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388721, 34.111698, 23.442810>,  <39.159325, 34.063049, 23.391726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388721, 34.111698, 23.442810>,  <39.771053, 34.192783, 23.527950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388721, 34.111698, 23.442810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219990, 0.013101, 0.975414,
		-0.194938, 0.979151, -0.057117,
		-0.955826, -0.202711, -0.212850,
		39.101974, 34.050884, 23.378956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366955, 34.496571, 24.043470>,  <39.771053, 34.192783, 23.527950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366955, 34.496571, 24.043470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097271, 34.247028, 23.885359>,  <38.935459, 34.097305, 23.790491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097271, 34.247028, 23.885359>,  <39.366955, 34.496571, 24.043470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097271, 34.247028, 23.885359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326887, -0.227862, 0.917183,
		-0.662255, 0.747588, -0.050302,
		-0.674213, -0.623852, -0.395279,
		38.895008, 34.059872, 23.766775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792831, 34.686863, 24.288418>,  <39.366955, 34.496571, 24.043470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792831, 34.686863, 24.288418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730171, 34.301849, 24.199886>,  <38.692574, 34.070843, 24.146767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730171, 34.301849, 24.199886>,  <38.792831, 34.686863, 24.288418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730171, 34.301849, 24.199886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354130, -0.154456, 0.922353,
		-0.921983, 0.222866, -0.316667,
		-0.156650, -0.962535, -0.221330,
		38.683178, 34.013088, 24.133488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152142, 34.508354, 24.575087>,  <38.792831, 34.686863, 24.288418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152142, 34.508354, 24.575087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281624, 34.137707, 24.498575>,  <38.359314, 33.915318, 24.452669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281624, 34.137707, 24.498575>,  <38.152142, 34.508354, 24.575087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281624, 34.137707, 24.498575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337705, -0.301998, 0.891489,
		-0.883839, -0.223982, -0.410683,
		0.323703, -0.926623, -0.191278,
		38.378735, 33.859718, 24.441193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619450, 34.133053, 24.814919>,  <38.152142, 34.508354, 24.575087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619450, 34.133053, 24.814919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902042, 33.853848, 24.768164>,  <38.071598, 33.686325, 24.740110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902042, 33.853848, 24.768164>,  <37.619450, 34.133053, 24.814919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902042, 33.853848, 24.768164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309703, -0.453413, 0.835764,
		-0.636372, -0.554251, -0.536504,
		0.706481, -0.698013, -0.116886,
		38.113987, 33.644444, 24.733097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289490, 33.421104, 24.840221>,  <37.619450, 34.133053, 24.814919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289490, 33.421104, 24.840221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674801, 33.397869, 24.945076>,  <37.905987, 33.383926, 25.007990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674801, 33.397869, 24.945076>,  <37.289490, 33.421104, 24.840221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674801, 33.397869, 24.945076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258704, -0.462101, 0.848254,
		0.071857, -0.884923, -0.460161,
		0.963280, -0.058092, 0.262138,
		37.963783, 33.380440, 25.023718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323223, 32.742069, 25.172911>,  <37.289490, 33.421104, 24.840221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323223, 32.742069, 25.172911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670898, 32.910812, 25.276096>,  <37.879505, 33.012058, 25.338009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670898, 32.910812, 25.276096>,  <37.323223, 32.742069, 25.172911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670898, 32.910812, 25.276096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001637, -0.524147, 0.851627,
		0.494474, -0.739803, -0.456274,
		0.869191, 0.421855, 0.257966,
		37.931656, 33.037369, 25.353487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742970, 32.243629, 25.340269>,  <37.323223, 32.742069, 25.172911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742970, 32.243629, 25.340269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899227, 32.561737, 25.525717>,  <37.992981, 32.752602, 25.636986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899227, 32.561737, 25.525717>,  <37.742970, 32.243629, 25.340269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899227, 32.561737, 25.525717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022325, -0.495307, 0.868431,
		0.920269, -0.349602, -0.175737,
		0.390648, 0.795267, 0.463620,
		38.016422, 32.800316, 25.664803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217209, 31.917944, 25.938745>,  <37.742970, 32.243629, 25.340269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217209, 31.917944, 25.938745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133114, 32.301899, 26.012947>,  <38.082657, 32.532272, 26.057468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133114, 32.301899, 26.012947>,  <38.217209, 31.917944, 25.938745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133114, 32.301899, 26.012947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073551, -0.204739, 0.976049,
		0.974879, 0.191561, 0.113645,
		-0.210240, 0.959889, 0.185506,
		38.070042, 32.589867, 26.068600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.738316, 31.153440, 31.261295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399719, 31.357790, 31.201347>,  <41.196560, 31.480400, 31.165379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399719, 31.357790, 31.201347>,  <41.738316, 31.153440, 31.261295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399719, 31.357790, 31.201347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099663, 0.428572, 0.897994,
		0.522992, 0.745207, -0.413698,
		-0.846491, 0.510874, -0.149871,
		41.145771, 31.511051, 31.156385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915459, 31.887861, 31.268248>,  <41.738316, 31.153440, 31.261295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915459, 31.887861, 31.268248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.536842, 31.811787, 31.372465>,  <41.309673, 31.766142, 31.434996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.536842, 31.811787, 31.372465>,  <41.915459, 31.887861, 31.268248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536842, 31.811787, 31.372465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161034, 0.421261, 0.892529,
		-0.279505, 0.886774, -0.368115,
		-0.946544, -0.190187, 0.260545,
		41.252880, 31.754730, 31.450628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631226, 32.519093, 31.716526>,  <41.915459, 31.887861, 31.268248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631226, 32.519093, 31.716526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358433, 32.235046, 31.786543>,  <41.194756, 32.064617, 31.828552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358433, 32.235046, 31.786543>,  <41.631226, 32.519093, 31.716526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358433, 32.235046, 31.786543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037474, 0.272946, 0.961299,
		-0.730409, 0.649029, -0.212755,
		-0.681981, -0.710114, 0.175040,
		41.153839, 32.022011, 31.839054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066036, 32.844650, 31.955387>,  <41.631226, 32.519093, 31.716526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066036, 32.844650, 31.955387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.014473, 32.470856, 32.088120>,  <40.983536, 32.246578, 32.167759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.014473, 32.470856, 32.088120>,  <41.066036, 32.844650, 31.955387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014473, 32.470856, 32.088120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130291, 0.347684, 0.928515,
		-0.983060, 0.076462, -0.166577,
		-0.128912, -0.934489, 0.331832,
		40.975800, 32.190510, 32.187668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379398, 32.841290, 32.297379>,  <41.066036, 32.844650, 31.955387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379398, 32.841290, 32.297379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.612133, 32.547333, 32.436749>,  <40.751774, 32.370960, 32.520370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.612133, 32.547333, 32.436749>,  <40.379398, 32.841290, 32.297379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612133, 32.547333, 32.436749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100373, 0.360252, 0.927440,
		-0.807090, -0.574589, 0.135843,
		0.581835, -0.734892, 0.348429,
		40.786682, 32.326866, 32.541279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983028, 32.634659, 32.844322>,  <40.379398, 32.841290, 32.297379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983028, 32.634659, 32.844322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338051, 32.468632, 32.924286>,  <40.551064, 32.369015, 32.972263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338051, 32.468632, 32.924286>,  <39.983028, 32.634659, 32.844322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338051, 32.468632, 32.924286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090632, 0.268139, 0.959108,
		-0.451702, -0.869378, 0.200369,
		0.887553, -0.415071, 0.199912,
		40.604317, 32.344112, 32.984261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842415, 32.300392, 33.427822>,  <39.983028, 32.634659, 32.844322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842415, 32.300392, 33.427822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239075, 32.345036, 33.401989>,  <40.477070, 32.371822, 33.386490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239075, 32.345036, 33.401989>,  <39.842415, 32.300392, 33.427822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239075, 32.345036, 33.401989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038566, 0.221182, 0.974470,
		0.123043, -0.968825, 0.215031,
		0.991652, 0.111609, -0.064579,
		40.536572, 32.378517, 33.382614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023220, 32.020233, 34.046501>,  <39.842415, 32.300392, 33.427822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023220, 32.020233, 34.046501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.317467, 32.256207, 33.913322>,  <40.494015, 32.397789, 33.833416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.317467, 32.256207, 33.913322>,  <40.023220, 32.020233, 34.046501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317467, 32.256207, 33.913322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056589, 0.436276, 0.898031,
		0.675033, -0.679445, 0.287547,
		0.735613, 0.589929, -0.332950,
		40.538151, 32.433186, 33.813438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525234, 31.991827, 34.472519>,  <40.023220, 32.020233, 34.046501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525234, 31.991827, 34.472519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619595, 32.347519, 34.315742>,  <40.676208, 32.560936, 34.221676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619595, 32.347519, 34.315742>,  <40.525234, 31.991827, 34.472519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619595, 32.347519, 34.315742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036995, 0.394817, 0.918015,
		0.971074, -0.231057, 0.060239,
		0.235897, 0.889231, -0.391944,
		40.690365, 32.614288, 34.198158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907383, 32.328785, 34.970428>,  <40.525234, 31.991827, 34.472519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907383, 32.328785, 34.970428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802742, 32.637695, 34.738861>,  <40.739956, 32.823044, 34.599922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802742, 32.637695, 34.738861>,  <40.907383, 32.328785, 34.970428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802742, 32.637695, 34.738861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144685, 0.561651, 0.814625,
		0.954269, 0.296869, -0.035192,
		-0.261603, 0.772280, -0.578919,
		40.724262, 32.869381, 34.565186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435120, 32.849186, 35.066311>,  <40.907383, 32.328785, 34.970428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435120, 32.849186, 35.066311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.096764, 33.013741, 34.930531>,  <40.893749, 33.112473, 34.849060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.096764, 33.013741, 34.930531>,  <41.435120, 32.849186, 35.066311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096764, 33.013741, 34.930531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009288, 0.624991, 0.780577,
		0.533273, 0.663437, -0.524853,
		-0.845892, 0.411386, -0.339453,
		40.842995, 33.137157, 34.828693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526581, 33.555431, 35.195297>,  <41.435120, 32.849186, 35.066311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526581, 33.555431, 35.195297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137691, 33.512554, 35.112076>,  <40.904358, 33.486828, 35.062141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137691, 33.512554, 35.112076>,  <41.526581, 33.555431, 35.195297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137691, 33.512554, 35.112076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230379, 0.595103, 0.769921,
		0.041281, 0.796468, -0.603270,
		-0.972225, -0.107197, -0.208056,
		40.846024, 33.480396, 35.049660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201099, 34.258095, 35.084057>,  <41.526581, 33.555431, 35.195297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201099, 34.258095, 35.084057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896324, 34.015865, 35.175903>,  <40.713459, 33.870525, 35.231010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896324, 34.015865, 35.175903>,  <41.201099, 34.258095, 35.084057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896324, 34.015865, 35.175903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306063, 0.649139, 0.696380,
		-0.570766, 0.460321, -0.679949,
		-0.761940, -0.605577, 0.229619,
		40.667744, 33.834190, 35.244789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669144, 34.839008, 34.969379>,  <41.201099, 34.258095, 35.084057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669144, 34.839008, 34.969379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720856, 34.534962, 35.224098>,  <40.751884, 34.352531, 35.376930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720856, 34.534962, 35.224098>,  <40.669144, 34.839008, 34.969379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720856, 34.534962, 35.224098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507976, 0.500753, 0.700861,
		-0.851614, -0.414083, -0.321386,
		0.129279, -0.760119, 0.636793,
		40.759640, 34.306927, 35.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099377, 34.695534, 35.649506>,  <40.669144, 34.839008, 34.969379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099377, 34.695534, 35.649506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.213768, 35.062458, 35.760326>,  <41.282402, 35.282612, 35.826820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.213768, 35.062458, 35.760326>,  <41.099377, 34.695534, 35.649506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213768, 35.062458, 35.760326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238486, 0.348166, -0.906590,
		-0.928084, 0.193193, 0.318334,
		0.285980, 0.917309, 0.277053,
		41.299561, 35.337650, 35.843441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603855, 35.221943, 35.567341>,  <41.099377, 34.695534, 35.649506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603855, 35.221943, 35.567341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.948288, 35.425144, 35.558685>,  <41.154949, 35.547066, 35.553490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.948288, 35.425144, 35.558685>,  <40.603855, 35.221943, 35.567341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948288, 35.425144, 35.558685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170293, 0.248023, -0.953669,
		-0.479104, 0.824871, 0.300078,
		0.861081, 0.508008, -0.021641,
		41.206612, 35.577545, 35.552193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450687, 35.836506, 35.195126>,  <40.603855, 35.221943, 35.567341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450687, 35.836506, 35.195126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850666, 35.832462, 35.195938>,  <41.090652, 35.830036, 35.196426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850666, 35.832462, 35.195938>,  <40.450687, 35.836506, 35.195126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850666, 35.832462, 35.195938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005331, 0.338310, -0.941020,
		0.008824, 0.940981, 0.338346,
		0.999947, -0.010107, 0.002031,
		41.150650, 35.829430, 35.196548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716919, 36.476032, 34.943878>,  <40.450687, 35.836506, 35.195126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716919, 36.476032, 34.943878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007526, 36.207401, 34.885708>,  <41.181892, 36.046223, 34.850807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007526, 36.207401, 34.885708>,  <40.716919, 36.476032, 34.943878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007526, 36.207401, 34.885708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054087, 0.266873, -0.962213,
		0.685015, 0.691200, 0.230212,
		0.726519, -0.671582, -0.145427,
		41.225483, 36.005928, 34.842079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996639, 36.701569, 34.354527>,  <40.716919, 36.476032, 34.943878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996639, 36.701569, 34.354527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177143, 36.345474, 34.379303>,  <41.285446, 36.131817, 34.394169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177143, 36.345474, 34.379303>,  <40.996639, 36.701569, 34.354527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177143, 36.345474, 34.379303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282686, 0.076771, -0.956135,
		0.846434, 0.448977, 0.286302,
		0.451263, -0.890239, 0.061938,
		41.312523, 36.078403, 34.397884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679104, 36.743080, 34.059555>,  <40.996639, 36.701569, 34.354527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679104, 36.743080, 34.059555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553753, 36.364037, 34.034794>,  <41.478542, 36.136612, 34.019939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553753, 36.364037, 34.034794>,  <41.679104, 36.743080, 34.059555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553753, 36.364037, 34.034794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283484, -0.031139, -0.958471,
		0.906330, -0.317907, 0.278391,
		-0.313373, -0.947610, -0.061899,
		41.459740, 36.079754, 34.016224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165993, 36.459484, 33.787605>,  <41.679104, 36.743080, 34.059555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165993, 36.459484, 33.787605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876106, 36.195503, 33.708359>,  <41.702175, 36.037117, 33.660809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876106, 36.195503, 33.708359>,  <42.165993, 36.459484, 33.787605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876106, 36.195503, 33.708359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350930, -0.106068, -0.930375,
		0.592986, -0.743785, 0.308465,
		-0.724718, -0.659949, -0.198120,
		41.658691, 35.997517, 33.648922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515759, 35.950291, 33.209965>,  <42.165993, 36.459484, 33.787605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515759, 35.950291, 33.209965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118195, 35.906876, 33.202324>,  <41.879658, 35.880825, 33.197739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118195, 35.906876, 33.202324>,  <42.515759, 35.950291, 33.209965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118195, 35.906876, 33.202324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024587, -0.049398, -0.998476,
		0.107431, -0.992864, 0.051766,
		-0.993908, -0.108540, -0.019105,
		41.820023, 35.874313, 33.196594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399258, 35.585140, 32.602753>,  <42.515759, 35.950291, 33.209965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399258, 35.585140, 32.602753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033535, 35.728287, 32.678619>,  <41.814102, 35.814175, 32.724140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033535, 35.728287, 32.678619>,  <42.399258, 35.585140, 32.602753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033535, 35.728287, 32.678619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183485, 0.051507, -0.981672,
		-0.361081, -0.932349, 0.018571,
		-0.914305, 0.357871, 0.189671,
		41.759243, 35.835648, 32.735519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981033, 35.361340, 32.066441>,  <42.399258, 35.585140, 32.602753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981033, 35.361340, 32.066441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.772346, 35.660553, 32.230515>,  <41.647133, 35.840080, 32.328960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.772346, 35.660553, 32.230515>,  <41.981033, 35.361340, 32.066441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772346, 35.660553, 32.230515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350359, 0.250524, -0.902489,
		-0.777856, -0.614556, 0.131379,
		-0.521717, 0.748036, 0.410187,
		41.615829, 35.884964, 32.353569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194267, 35.225193, 31.931562>,  <41.981033, 35.361340, 32.066441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194267, 35.225193, 31.931562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248993, 35.610836, 32.022575>,  <41.281826, 35.842224, 32.077183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248993, 35.610836, 32.022575>,  <41.194267, 35.225193, 31.931562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248993, 35.610836, 32.022575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322380, 0.260521, -0.910055,
		-0.936672, 0.051153, 0.346453,
		0.136810, 0.964112, 0.227532,
		41.290035, 35.900070, 32.090836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660084, 35.500927, 31.622723>,  <41.194267, 35.225193, 31.931562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660084, 35.500927, 31.622723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876804, 35.832912, 31.675797>,  <41.006836, 36.032104, 31.707642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876804, 35.832912, 31.675797>,  <40.660084, 35.500927, 31.622723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876804, 35.832912, 31.675797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215996, 0.290052, -0.932317,
		-0.812278, 0.476472, 0.336420,
		0.541802, 0.829967, 0.132687,
		41.039345, 36.081902, 31.715603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287067, 36.157982, 31.451952>,  <40.660084, 35.500927, 31.622723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287067, 36.157982, 31.451952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.674736, 36.251549, 31.421021>,  <40.907337, 36.307690, 31.402462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.674736, 36.251549, 31.421021>,  <40.287067, 36.157982, 31.451952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674736, 36.251549, 31.421021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154175, 0.331034, -0.930938,
		-0.192168, 0.914165, 0.356895,
		0.969176, 0.233921, -0.077328,
		40.965488, 36.321724, 31.397821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290447, 36.892250, 31.196770>,  <40.287067, 36.157982, 31.451952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290447, 36.892250, 31.196770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.624359, 36.689941, 31.109745>,  <40.824707, 36.568558, 31.057529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.624359, 36.689941, 31.109745>,  <40.290447, 36.892250, 31.196770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624359, 36.689941, 31.109745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133181, 0.197925, -0.971127,
		0.534231, 0.839655, 0.097865,
		0.834782, -0.505772, -0.217564,
		40.874794, 36.538208, 31.044476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973694, 37.555580, 31.065435>,  <40.290447, 36.892250, 31.196770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973694, 37.555580, 31.065435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696171, 37.831081, 30.981285>,  <39.529659, 37.996380, 30.930794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696171, 37.831081, 30.981285>,  <39.973694, 37.555580, 31.065435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696171, 37.831081, 30.981285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377061, -0.098531, 0.920932,
		0.613564, 0.718272, 0.328062,
		-0.693804, 0.688751, -0.210378,
		39.488029, 38.037708, 30.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816498, 37.800514, 31.681561>,  <39.973694, 37.555580, 31.065435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816498, 37.800514, 31.681561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.513222, 37.958401, 31.473965>,  <39.331257, 38.053131, 31.349407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.513222, 37.958401, 31.473965>,  <39.816498, 37.800514, 31.681561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513222, 37.958401, 31.473965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537335, 0.072642, 0.840235,
		0.369353, 0.915928, 0.157017,
		-0.758188, 0.394714, -0.518990,
		39.285767, 38.076817, 31.318268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568245, 38.186031, 32.171524>,  <39.816498, 37.800514, 31.681561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568245, 38.186031, 32.171524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.271496, 38.129234, 31.909389>,  <39.093445, 38.095154, 31.752110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.271496, 38.129234, 31.909389>,  <39.568245, 38.186031, 32.171524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271496, 38.129234, 31.909389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664359, 0.023259, 0.747052,
		-0.090836, 0.989594, -0.111592,
		-0.741874, -0.141997, -0.655332,
		39.048935, 38.086636, 31.712790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907192, 38.684601, 32.327644>,  <39.568245, 38.186031, 32.171524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907192, 38.684601, 32.327644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767788, 38.387146, 32.099419>,  <38.684147, 38.208672, 31.962482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767788, 38.387146, 32.099419>,  <38.907192, 38.684601, 32.327644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767788, 38.387146, 32.099419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692205, -0.206241, 0.691605,
		-0.631977, 0.635980, -0.442872,
		-0.348508, -0.743636, -0.570568,
		38.663235, 38.164055, 31.928247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220955, 38.786877, 32.343227>,  <38.907192, 38.684601, 32.327644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220955, 38.786877, 32.343227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.262299, 38.413998, 32.204479>,  <38.287106, 38.190269, 32.121231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.262299, 38.413998, 32.204479>,  <38.220955, 38.786877, 32.343227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262299, 38.413998, 32.204479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789154, -0.289133, 0.541883,
		-0.605435, 0.217721, -0.765536,
		0.103363, -0.932202, -0.346867,
		38.293308, 38.134338, 32.100418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545818, 38.619656, 32.102585>,  <38.220955, 38.786877, 32.343227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545818, 38.619656, 32.102585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752518, 38.283916, 32.170071>,  <37.876537, 38.082474, 32.210564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752518, 38.283916, 32.170071>,  <37.545818, 38.619656, 32.102585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752518, 38.283916, 32.170071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741198, -0.339972, 0.578830,
		-0.428482, -0.424159, -0.797804,
		0.516747, -0.839350, 0.168714,
		37.907543, 38.032112, 32.220684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127930, 38.117344, 31.952320>,  <37.545818, 38.619656, 32.102585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127930, 38.117344, 31.952320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.391029, 37.958973, 32.208633>,  <37.548889, 37.863949, 32.362423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.391029, 37.958973, 32.208633>,  <37.127930, 38.117344, 31.952320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391029, 37.958973, 32.208633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751034, -0.279734, 0.598078,
		-0.057547, -0.874636, -0.481352,
		0.657751, -0.395929, 0.640783,
		37.588356, 37.840195, 32.400867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910221, 37.433270, 32.166233>,  <37.127930, 38.117344, 31.952320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910221, 37.433270, 32.166233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.164818, 37.535652, 32.457260>,  <37.317577, 37.597084, 32.631878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.164818, 37.535652, 32.457260>,  <36.910221, 37.433270, 32.166233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164818, 37.535652, 32.457260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721436, -0.136037, 0.678987,
		0.272770, -0.957068, 0.098072,
		0.636495, 0.255960, 0.727570,
		37.355766, 37.612442, 32.675529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777939, 36.956184, 32.700726>,  <36.910221, 37.433270, 32.166233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777939, 36.956184, 32.700726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987198, 37.238457, 32.891865>,  <37.112751, 37.407818, 33.006550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987198, 37.238457, 32.891865>,  <36.777939, 36.956184, 32.700726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987198, 37.238457, 32.891865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500814, -0.199117, 0.842341,
		0.689569, -0.679978, 0.249247,
		0.523144, 0.705678, 0.477847,
		37.144142, 37.450161, 33.035217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859161, 36.709961, 33.354942>,  <36.777939, 36.956184, 32.700726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859161, 36.709961, 33.354942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932808, 37.097115, 33.423416>,  <36.976994, 37.329407, 33.464500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932808, 37.097115, 33.423416>,  <36.859161, 36.709961, 33.354942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932808, 37.097115, 33.423416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545937, -0.044126, 0.836663,
		0.817346, -0.247498, 0.520279,
		0.184114, 0.967883, 0.171184,
		36.988041, 37.387478, 33.474770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046867, 36.774307, 34.083050>,  <36.859161, 36.709961, 33.354942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046867, 36.774307, 34.083050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890301, 37.119022, 33.953979>,  <36.796360, 37.325851, 33.876537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890301, 37.119022, 33.953979>,  <37.046867, 36.774307, 34.083050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890301, 37.119022, 33.953979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442715, 0.131049, 0.887034,
		0.806720, 0.490050, 0.330231,
		-0.391415, 0.861787, -0.322672,
		36.772877, 37.377560, 33.857178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196793, 37.309971, 34.516525>,  <37.046867, 36.774307, 34.083050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196793, 37.309971, 34.516525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864849, 37.412449, 34.318253>,  <36.665684, 37.473938, 34.199287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864849, 37.412449, 34.318253>,  <37.196793, 37.309971, 34.516525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864849, 37.412449, 34.318253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520012, -0.033006, 0.853521,
		0.202311, 0.966060, 0.160617,
		-0.829854, 0.256200, -0.495685,
		36.615894, 37.489307, 34.169548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.506840, 38.876091, 27.726587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134834, 38.862568, 27.580204>,  <40.911629, 38.854454, 27.492374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134834, 38.862568, 27.580204>,  <41.506840, 38.876091, 27.726587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134834, 38.862568, 27.580204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361258, -0.098893, 0.927207,
		-0.067538, 0.994524, 0.079759,
		-0.930017, -0.033808, -0.365959,
		40.855827, 38.852425, 27.470417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210636, 39.391338, 28.175213>,  <41.506840, 38.876091, 27.726587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210636, 39.391338, 28.175213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915020, 39.180393, 28.007540>,  <40.737652, 39.053825, 27.906935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915020, 39.180393, 28.007540>,  <41.210636, 39.391338, 28.175213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915020, 39.180393, 28.007540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462865, -0.054606, 0.884745,
		-0.489471, 0.847884, -0.203742,
		-0.739036, -0.527362, -0.419184,
		40.693310, 39.022186, 27.881784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563900, 39.685459, 28.454161>,  <41.210636, 39.391338, 28.175213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563900, 39.685459, 28.454161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447132, 39.317135, 28.350714>,  <40.377071, 39.096138, 28.288645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447132, 39.317135, 28.350714>,  <40.563900, 39.685459, 28.454161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447132, 39.317135, 28.350714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427753, -0.116153, 0.896401,
		-0.855459, 0.372302, -0.359974,
		-0.291920, -0.920815, -0.258617,
		40.359554, 39.040890, 28.273129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974831, 39.634861, 28.766047>,  <40.563900, 39.685459, 28.454161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974831, 39.634861, 28.766047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049110, 39.255070, 28.664843>,  <40.093678, 39.027195, 28.604120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049110, 39.255070, 28.664843>,  <39.974831, 39.634861, 28.766047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049110, 39.255070, 28.664843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405081, -0.308563, 0.860638,
		-0.895224, -0.057327, -0.441914,
		0.185696, -0.949475, -0.253011,
		40.104820, 38.970226, 28.588940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293640, 39.365829, 28.864437>,  <39.974831, 39.634861, 28.766047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293640, 39.365829, 28.864437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591454, 39.099220, 28.879513>,  <39.770142, 38.939255, 28.888559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591454, 39.099220, 28.879513>,  <39.293640, 39.365829, 28.864437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591454, 39.099220, 28.879513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391862, -0.390624, 0.832981,
		-0.540477, -0.634951, -0.552016,
		0.744533, -0.666521, 0.037690,
		39.814816, 38.899265, 28.890820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950768, 38.794342, 29.135042>,  <39.293640, 39.365829, 28.864437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950768, 38.794342, 29.135042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333572, 38.708412, 29.212988>,  <39.563255, 38.656853, 29.259756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333572, 38.708412, 29.212988>,  <38.950768, 38.794342, 29.135042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333572, 38.708412, 29.212988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265327, -0.377079, 0.887363,
		-0.117148, -0.900923, -0.417869,
		0.957015, -0.214825, 0.194865,
		39.620678, 38.643963, 29.271448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039780, 38.001907, 29.326483>,  <38.950768, 38.794342, 29.135042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039780, 38.001907, 29.326483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347843, 38.203075, 29.483412>,  <39.532681, 38.323776, 29.577570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347843, 38.203075, 29.483412>,  <39.039780, 38.001907, 29.326483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347843, 38.203075, 29.483412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113656, -0.497025, 0.860261,
		0.627640, -0.707130, -0.325630,
		0.770163, 0.502924, 0.392322,
		39.578892, 38.353954, 29.601109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449352, 37.565628, 29.746565>,  <39.039780, 38.001907, 29.326483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449352, 37.565628, 29.746565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515480, 37.932701, 29.891077>,  <39.555157, 38.152946, 29.977783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515480, 37.932701, 29.891077>,  <39.449352, 37.565628, 29.746565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515480, 37.932701, 29.891077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025637, -0.362196, 0.931749,
		0.985907, -0.163297, -0.036351,
		0.165318, 0.917686, 0.361278,
		39.565075, 38.208008, 29.999460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795803, 37.362885, 30.234976>,  <39.449352, 37.565628, 29.746565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795803, 37.362885, 30.234976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669685, 37.728924, 30.335520>,  <39.594013, 37.948547, 30.395847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669685, 37.728924, 30.335520>,  <39.795803, 37.362885, 30.234976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669685, 37.728924, 30.335520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291584, -0.345475, 0.891979,
		0.903088, 0.207944, 0.375755,
		-0.315296, 0.915099, 0.251361,
		39.575096, 38.003452, 30.410929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537876, 37.295250, 30.454895>,  <39.795803, 37.362885, 30.234976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537876, 37.295250, 30.454895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748260, 36.959373, 30.508984>,  <40.874493, 36.757847, 30.541437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748260, 36.959373, 30.508984>,  <40.537876, 37.295250, 30.454895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748260, 36.959373, 30.508984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023416, -0.173227, -0.984603,
		0.850184, 0.514700, -0.110774,
		0.525965, -0.839688, 0.135223,
		40.906052, 36.707466, 30.549551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126816, 37.359550, 29.973654>,  <40.537876, 37.295250, 30.454895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126816, 37.359550, 29.973654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084690, 36.972095, 30.063669>,  <41.059414, 36.739620, 30.117680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084690, 36.972095, 30.063669>,  <41.126816, 37.359550, 29.973654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084690, 36.972095, 30.063669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130960, -0.237837, -0.962436,
		0.985778, -0.071890, 0.151902,
		-0.105317, -0.968641, 0.225039,
		41.053093, 36.681503, 30.131182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557159, 37.050091, 29.584486>,  <41.126816, 37.359550, 29.973654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557159, 37.050091, 29.584486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298599, 36.762440, 29.686489>,  <41.143463, 36.589851, 29.747690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298599, 36.762440, 29.686489>,  <41.557159, 37.050091, 29.584486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298599, 36.762440, 29.686489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090240, -0.403924, -0.910331,
		0.757644, -0.565426, 0.325990,
		-0.646400, -0.719124, 0.255006,
		41.104679, 36.546703, 29.762991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798569, 36.466949, 29.243216>,  <41.557159, 37.050091, 29.584486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798569, 36.466949, 29.243216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423298, 36.355068, 29.324791>,  <41.198135, 36.287941, 29.373735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423298, 36.355068, 29.324791>,  <41.798569, 36.466949, 29.243216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423298, 36.355068, 29.324791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012907, -0.617004, -0.786854,
		0.345918, -0.735575, 0.582469,
		-0.938176, -0.279705, 0.203939,
		41.141846, 36.271156, 29.385973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728138, 35.646294, 29.170298>,  <41.798569, 36.466949, 29.243216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728138, 35.646294, 29.170298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363255, 35.808174, 29.144722>,  <41.144325, 35.905304, 29.129375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363255, 35.808174, 29.144722>,  <41.728138, 35.646294, 29.170298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363255, 35.808174, 29.144722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141342, -0.457310, -0.878003,
		-0.384570, -0.791887, 0.474365,
		-0.912210, 0.404702, -0.063940,
		41.089592, 35.929585, 29.125540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255424, 35.020840, 29.091827>,  <41.728138, 35.646294, 29.170298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255424, 35.020840, 29.091827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073292, 35.334980, 28.924068>,  <40.964012, 35.523464, 28.823414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073292, 35.334980, 28.924068>,  <41.255424, 35.020840, 29.091827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073292, 35.334980, 28.924068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127814, -0.408523, -0.903754,
		-0.881100, -0.465112, 0.085634,
		-0.455331, 0.785353, -0.419398,
		40.936691, 35.570587, 28.798248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014641, 34.777149, 28.550045>,  <41.255424, 35.020840, 29.091827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014641, 34.777149, 28.550045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946320, 35.165012, 28.480080>,  <40.905327, 35.397728, 28.438101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946320, 35.165012, 28.480080>,  <41.014641, 34.777149, 28.550045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946320, 35.165012, 28.480080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124198, -0.154921, -0.980089,
		-0.977447, -0.189122, -0.093969,
		-0.170798, 0.969656, -0.174915,
		40.895081, 35.455910, 28.427605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477589, 34.760788, 27.962408>,  <41.014641, 34.777149, 28.550045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477589, 34.760788, 27.962408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685585, 35.102352, 27.970770>,  <40.810383, 35.307293, 27.975788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685585, 35.102352, 27.970770>,  <40.477589, 34.760788, 27.962408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685585, 35.102352, 27.970770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309148, -0.165328, -0.936533,
		-0.796262, 0.493455, -0.349955,
		0.519995, 0.853914, 0.020907,
		40.841583, 35.358528, 27.977041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361225, 34.994442, 27.392721>,  <40.477589, 34.760788, 27.962408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361225, 34.994442, 27.392721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677269, 35.208218, 27.512789>,  <40.866894, 35.336483, 27.584829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677269, 35.208218, 27.512789>,  <40.361225, 34.994442, 27.392721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677269, 35.208218, 27.512789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340610, 0.024340, -0.939889,
		-0.509622, 0.844855, -0.162805,
		0.790107, 0.534442, 0.300171,
		40.914303, 35.368549, 27.602840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515854, 35.506519, 26.892488>,  <40.361225, 34.994442, 27.392721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515854, 35.506519, 26.892488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876320, 35.504448, 27.065865>,  <41.092598, 35.503204, 27.169891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876320, 35.504448, 27.065865>,  <40.515854, 35.506519, 26.892488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876320, 35.504448, 27.065865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423244, 0.226454, -0.877259,
		-0.093612, 0.974008, 0.206264,
		0.901167, -0.005178, 0.433442,
		41.146671, 35.502895, 27.195898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899616, 36.087120, 26.661966>,  <40.515854, 35.506519, 26.892488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899616, 36.087120, 26.661966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163567, 35.823994, 26.807209>,  <41.321938, 35.666119, 26.894354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163567, 35.823994, 26.807209>,  <40.899616, 36.087120, 26.661966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163567, 35.823994, 26.807209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582191, 0.142126, -0.800534,
		0.474996, 0.739648, 0.476759,
		0.659873, -0.657815, 0.363107,
		41.361530, 35.626648, 26.916142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620941, 36.425999, 26.553961>,  <40.899616, 36.087120, 26.661966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620941, 36.425999, 26.553961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656265, 36.031654, 26.610928>,  <41.677460, 35.795048, 26.645107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656265, 36.031654, 26.610928>,  <41.620941, 36.425999, 26.553961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656265, 36.031654, 26.610928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577713, -0.065778, -0.813585,
		0.811449, 0.154124, 0.563735,
		0.088311, -0.985860, 0.142415,
		41.682758, 35.735897, 26.653652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325840, 36.332550, 26.575546>,  <41.620941, 36.425999, 26.553961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325840, 36.332550, 26.575546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164745, 35.979649, 26.478039>,  <42.068089, 35.767906, 26.419535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164745, 35.979649, 26.478039>,  <42.325840, 36.332550, 26.575546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164745, 35.979649, 26.478039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649648, -0.087909, -0.755135,
		0.644794, -0.462485, 0.608562,
		-0.402737, -0.882258, -0.243770,
		42.043922, 35.714970, 26.404907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910725, 35.862644, 26.616219>,  <42.325840, 36.332550, 26.575546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910725, 35.862644, 26.616219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618015, 35.715000, 26.387039>,  <42.442390, 35.626411, 26.249533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618015, 35.715000, 26.387039>,  <42.910725, 35.862644, 26.616219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618015, 35.715000, 26.387039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642639, -0.093697, -0.760418,
		0.226998, -0.924649, 0.305772,
		-0.731770, -0.369114, -0.572946,
		42.398483, 35.604267, 26.215155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.881275, 35.795616, 24.638130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250290, 35.944469, 24.597248>,  <37.471699, 36.033779, 24.572720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250290, 35.944469, 24.597248>,  <36.881275, 35.795616, 24.638130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250290, 35.944469, 24.597248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181093, -0.183585, 0.966179,
		0.340780, -0.909844, -0.236754,
		0.922537, 0.372129, -0.102204,
		37.527050, 36.056107, 24.566587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324718, 35.288361, 24.905085>,  <36.881275, 35.795616, 24.638130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324718, 35.288361, 24.905085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536694, 35.627338, 24.917732>,  <37.663879, 35.830727, 24.925320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536694, 35.627338, 24.917732>,  <37.324718, 35.288361, 24.905085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536694, 35.627338, 24.917732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217757, -0.172014, 0.960725,
		0.819604, -0.502237, -0.275694,
		0.529935, 0.847449, 0.031617,
		37.695675, 35.881573, 24.927217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940746, 35.160938, 25.180218>,  <37.324718, 35.288361, 24.905085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940746, 35.160938, 25.180218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906483, 35.555504, 25.236290>,  <37.885925, 35.792244, 25.269934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906483, 35.555504, 25.236290>,  <37.940746, 35.160938, 25.180218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906483, 35.555504, 25.236290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220295, -0.118464, 0.968213,
		0.971665, 0.113820, -0.207154,
		-0.085662, 0.986413, 0.140181,
		37.880783, 35.851429, 25.278345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548790, 35.422817, 25.582428>,  <37.940746, 35.160938, 25.180218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548790, 35.422817, 25.582428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246586, 35.678104, 25.641600>,  <38.065262, 35.831276, 25.677103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246586, 35.678104, 25.641600>,  <38.548790, 35.422817, 25.582428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246586, 35.678104, 25.641600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094115, -0.117727, 0.988576,
		0.648338, 0.760804, 0.028879,
		-0.755513, 0.638214, 0.147930,
		38.019932, 35.869568, 25.685978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855377, 35.829369, 26.141962>,  <38.548790, 35.422817, 25.582428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855377, 35.829369, 26.141962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455994, 35.831299, 26.119837>,  <38.216362, 35.832458, 26.106562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455994, 35.831299, 26.119837>,  <38.855377, 35.829369, 26.141962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455994, 35.831299, 26.119837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054862, -0.239023, 0.969463,
		-0.008542, 0.971002, 0.238919,
		-0.998457, 0.004827, -0.055313,
		38.156456, 35.832748, 26.103243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655964, 36.084793, 26.868845>,  <38.855377, 35.829369, 26.141962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655964, 36.084793, 26.868845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.301167, 35.944729, 26.748428>,  <38.088287, 35.860691, 26.676178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.301167, 35.944729, 26.748428>,  <38.655964, 36.084793, 26.868845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301167, 35.944729, 26.748428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160331, -0.377837, 0.911884,
		-0.433054, 0.857103, 0.278997,
		-0.886994, -0.350163, -0.301043,
		38.035069, 35.839680, 26.658115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082966, 36.431339, 27.263910>,  <38.655964, 36.084793, 26.868845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082966, 36.431339, 27.263910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911118, 36.094711, 27.132959>,  <37.808006, 35.892735, 27.054388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911118, 36.094711, 27.132959>,  <38.082966, 36.431339, 27.263910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911118, 36.094711, 27.132959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429497, -0.128466, 0.893884,
		-0.794327, 0.524642, -0.306262,
		-0.429624, -0.841574, -0.327377,
		37.782230, 35.842239, 27.034746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437065, 36.507244, 27.481216>,  <38.082966, 36.431339, 27.263910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437065, 36.507244, 27.481216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458920, 36.110222, 27.437672>,  <37.472031, 35.872009, 27.411545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458920, 36.110222, 27.437672>,  <37.437065, 36.507244, 27.481216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458920, 36.110222, 27.437672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605538, -0.119623, 0.786774,
		-0.793939, 0.022937, -0.607565,
		0.054632, -0.992555, -0.108863,
		37.475307, 35.812454, 27.405012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728512, 36.270687, 27.576653>,  <37.437065, 36.507244, 27.481216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728512, 36.270687, 27.576653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964199, 35.958294, 27.659491>,  <37.105610, 35.770859, 27.709194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964199, 35.958294, 27.659491>,  <36.728512, 36.270687, 27.576653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964199, 35.958294, 27.659491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652080, -0.308294, 0.692637,
		-0.477093, -0.543154, -0.690917,
		0.589214, -0.780986, 0.207095,
		37.140965, 35.723999, 27.721619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229107, 35.885513, 27.890638>,  <36.728512, 36.270687, 27.576653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229107, 35.885513, 27.890638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.587776, 35.728176, 27.971889>,  <36.802979, 35.633774, 28.020639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.587776, 35.728176, 27.971889>,  <36.229107, 35.885513, 27.890638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587776, 35.728176, 27.971889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310398, -0.231462, 0.921997,
		-0.315644, -0.889780, -0.329638,
		0.896673, -0.393341, 0.203126,
		36.856777, 35.610172, 28.032827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118156, 35.304668, 28.117424>,  <36.229107, 35.885513, 27.890638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118156, 35.304668, 28.117424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486069, 35.371838, 28.259300>,  <36.706818, 35.412140, 28.344427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486069, 35.371838, 28.259300>,  <36.118156, 35.304668, 28.117424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486069, 35.371838, 28.259300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345662, -0.081258, 0.934834,
		0.185800, -0.982446, -0.016696,
		0.919781, 0.167921, 0.354692,
		36.762001, 35.422215, 28.365707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112843, 34.840134, 28.624891>,  <36.118156, 35.304668, 28.117424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112843, 34.840134, 28.624891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435635, 35.067352, 28.689518>,  <36.629311, 35.203682, 28.728294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435635, 35.067352, 28.689518>,  <36.112843, 34.840134, 28.624891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435635, 35.067352, 28.689518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121006, -0.108735, 0.986678,
		0.578045, -0.815784, -0.019011,
		0.806983, 0.568044, 0.161568,
		36.677731, 35.237766, 28.737989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669407, 34.446320, 28.982876>,  <36.112843, 34.840134, 28.624891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669407, 34.446320, 28.982876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688881, 34.837032, 29.066336>,  <36.700565, 35.071461, 29.116411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688881, 34.837032, 29.066336>,  <36.669407, 34.446320, 28.982876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688881, 34.837032, 29.066336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237163, -0.191620, 0.952384,
		0.970249, -0.095848, 0.222328,
		0.048681, 0.976778, 0.208651,
		36.703484, 35.130066, 29.128931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660816, 34.463875, 29.723892>,  <36.669407, 34.446320, 28.982876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660816, 34.463875, 29.723892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594078, 34.852077, 29.654284>,  <36.554035, 35.084999, 29.612518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594078, 34.852077, 29.654284>,  <36.660816, 34.463875, 29.723892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594078, 34.852077, 29.654284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405972, 0.093220, 0.909119,
		0.898526, 0.222333, 0.378444,
		-0.166849, 0.970504, -0.174021,
		36.544022, 35.143230, 29.602077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317360, 34.155602, 30.007046>,  <36.660816, 34.463875, 29.723892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317360, 34.155602, 30.007046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376892, 33.768070, 30.086271>,  <37.412613, 33.535553, 30.133806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376892, 33.768070, 30.086271>,  <37.317360, 34.155602, 30.007046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376892, 33.768070, 30.086271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046417, -0.193228, -0.980055,
		0.987773, 0.155057, 0.016211,
		0.148832, -0.968824, 0.198062,
		37.421543, 33.477425, 30.145691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971653, 34.009689, 29.726965>,  <37.317360, 34.155602, 30.007046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971653, 34.009689, 29.726965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752842, 33.676899, 29.764017>,  <37.621555, 33.477226, 29.786249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752842, 33.676899, 29.764017>,  <37.971653, 34.009689, 29.726965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752842, 33.676899, 29.764017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156258, -0.210194, -0.965092,
		0.822402, -0.513457, 0.244984,
		-0.547027, -0.831974, 0.092632,
		37.588734, 33.427307, 29.791807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396801, 33.584618, 29.306543>,  <37.971653, 34.009689, 29.726965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396801, 33.584618, 29.306543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054585, 33.380905, 29.343824>,  <37.849255, 33.258678, 29.366194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054585, 33.380905, 29.343824>,  <38.396801, 33.584618, 29.306543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054585, 33.380905, 29.343824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129560, -0.384885, -0.913826,
		0.501265, -0.769738, 0.395267,
		-0.855539, -0.509280, 0.093202,
		37.797924, 33.228123, 29.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550888, 32.822823, 29.065462>,  <38.396801, 33.584618, 29.306543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550888, 32.822823, 29.065462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156067, 32.882057, 29.040798>,  <37.919174, 32.917599, 29.026001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156067, 32.882057, 29.040798>,  <38.550888, 32.822823, 29.065462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156067, 32.882057, 29.040798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017609, -0.282030, -0.959244,
		-0.159437, -0.947909, 0.275770,
		-0.987051, 0.148083, -0.061657,
		37.859951, 32.926483, 29.022301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192936, 32.147404, 28.862322>,  <38.550888, 32.822823, 29.065462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192936, 32.147404, 28.862322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992916, 32.468025, 28.731195>,  <37.872906, 32.660397, 28.652519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992916, 32.468025, 28.731195>,  <38.192936, 32.147404, 28.862322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992916, 32.468025, 28.731195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006968, -0.382253, -0.924031,
		-0.865968, -0.459778, 0.196731,
		-0.500051, 0.801552, -0.327815,
		37.842899, 32.708492, 28.632851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682053, 31.906494, 28.355400>,  <38.192936, 32.147404, 28.862322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682053, 31.906494, 28.355400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693481, 32.299259, 28.280529>,  <37.700336, 32.534916, 28.235605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693481, 32.299259, 28.280529>,  <37.682053, 31.906494, 28.355400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693481, 32.299259, 28.280529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149997, -0.180924, -0.971991,
		-0.988274, 0.055846, 0.142115,
		0.028570, 0.981910, -0.187179,
		37.702053, 32.593834, 28.224375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174129, 31.985529, 27.849655>,  <37.682053, 31.906494, 28.355400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174129, 31.985529, 27.849655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407978, 32.308620, 27.819208>,  <37.548286, 32.502476, 27.800940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407978, 32.308620, 27.819208>,  <37.174129, 31.985529, 27.849655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407978, 32.308620, 27.819208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024955, -0.075874, -0.996805,
		-0.810923, 0.584652, -0.024201,
		0.584620, 0.807728, -0.076119,
		37.583363, 32.550938, 27.796373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890854, 32.350929, 27.282019>,  <37.174129, 31.985529, 27.849655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890854, 32.350929, 27.282019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.244495, 32.535431, 27.311962>,  <37.456680, 32.646133, 27.329927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.244495, 32.535431, 27.311962>,  <36.890854, 32.350929, 27.282019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244495, 32.535431, 27.311962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055925, 0.054604, -0.996941,
		-0.463932, 0.885585, 0.022480,
		0.884104, 0.461256, 0.074859,
		37.509727, 32.673809, 27.334419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862789, 32.997623, 26.896296>,  <36.890854, 32.350929, 27.282019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862789, 32.997623, 26.896296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252892, 32.910000, 26.908278>,  <37.486954, 32.857426, 26.915466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252892, 32.910000, 26.908278>,  <36.862789, 32.997623, 26.896296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252892, 32.910000, 26.908278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086161, 0.251778, -0.963942,
		0.203618, 0.942667, 0.264421,
		0.975252, -0.219059, 0.029955,
		37.545467, 32.844284, 26.917263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270813, 33.494125, 26.548704>,  <36.862789, 32.997623, 26.896296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270813, 33.494125, 26.548704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.531754, 33.191196, 26.536636>,  <37.688316, 33.009441, 26.529396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.531754, 33.191196, 26.536636>,  <37.270813, 33.494125, 26.548704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531754, 33.191196, 26.536636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237949, 0.242436, -0.940534,
		0.719598, 0.606378, 0.338356,
		0.652349, -0.757318, -0.030170,
		37.727459, 32.964001, 26.527586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868267, 33.855930, 26.446964>,  <37.270813, 33.494125, 26.548704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868267, 33.855930, 26.446964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935757, 33.474926, 26.345566>,  <37.976250, 33.246323, 26.284727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935757, 33.474926, 26.345566>,  <37.868267, 33.855930, 26.446964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935757, 33.474926, 26.345566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394356, 0.300939, -0.868285,
		0.903335, 0.046536, 0.426403,
		0.168728, -0.952507, -0.253497,
		37.986374, 33.189175, 26.269516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499889, 33.844421, 26.275564>,  <37.868267, 33.855930, 26.446964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499889, 33.844421, 26.275564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368713, 33.526329, 26.071579>,  <38.290009, 33.335472, 25.949188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368713, 33.526329, 26.071579>,  <38.499889, 33.844421, 26.275564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368713, 33.526329, 26.071579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341805, 0.403366, -0.848802,
		0.880697, -0.452661, 0.139536,
		-0.327935, -0.795232, -0.509965,
		38.270332, 33.287758, 25.918589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929073, 33.704536, 25.778296>,  <38.499889, 33.844421, 26.275564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929073, 33.704536, 25.778296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.610806, 33.503803, 25.642609>,  <38.419846, 33.383362, 25.561197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.610806, 33.503803, 25.642609>,  <38.929073, 33.704536, 25.778296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610806, 33.503803, 25.642609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142696, 0.388962, -0.910135,
		0.588678, -0.772575, -0.237877,
		-0.795673, -0.501833, -0.339217,
		38.372105, 33.353252, 25.540844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127541, 33.127369, 25.447742>,  <38.929073, 33.704536, 25.778296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127541, 33.127369, 25.447742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773392, 33.239273, 25.299229>,  <38.560902, 33.306416, 25.210119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773392, 33.239273, 25.299229>,  <39.127541, 33.127369, 25.447742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773392, 33.239273, 25.299229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421152, 0.144496, -0.895406,
		-0.196849, -0.949134, -0.245753,
		-0.885371, 0.279759, -0.371286,
		38.507782, 33.323200, 25.187843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509563, 32.536419, 25.663549>,  <39.127541, 33.127369, 25.447742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509563, 32.536419, 25.663549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908867, 32.513741, 25.669991>,  <40.148449, 32.500134, 25.673855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908867, 32.513741, 25.669991>,  <39.509563, 32.536419, 25.663549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908867, 32.513741, 25.669991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028452, -0.224236, 0.974119,
		-0.051620, -0.972884, -0.225459,
		0.998261, -0.056699, 0.016105,
		40.208344, 32.496731, 25.674822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728382, 31.886692, 25.984686>,  <39.509563, 32.536419, 25.663549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728382, 31.886692, 25.984686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049973, 32.122463, 26.016191>,  <40.242928, 32.263927, 26.035095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049973, 32.122463, 26.016191>,  <39.728382, 31.886692, 25.984686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049973, 32.122463, 26.016191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201319, -0.394407, 0.896613,
		0.559553, -0.704995, -0.435755,
		0.803972, 0.589428, 0.078762,
		40.291164, 32.299290, 26.039820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191517, 31.506430, 26.439257>,  <39.728382, 31.886692, 25.984686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191517, 31.506430, 26.439257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337124, 31.878963, 26.435139>,  <40.424488, 32.102486, 26.432669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337124, 31.878963, 26.435139>,  <40.191517, 31.506430, 26.439257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337124, 31.878963, 26.435139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399213, -0.146027, 0.905155,
		0.841501, -0.333599, -0.424957,
		0.364014, 0.931337, -0.010295,
		40.446327, 32.158363, 26.432051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902927, 31.466806, 26.660267>,  <40.191517, 31.506430, 26.439257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902927, 31.466806, 26.660267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.786701, 31.843763, 26.726566>,  <40.716965, 32.069939, 26.766346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.786701, 31.843763, 26.726566>,  <40.902927, 31.466806, 26.660267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786701, 31.843763, 26.726566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322673, -0.066572, 0.944167,
		0.900808, 0.327824, -0.284740,
		-0.290565, 0.942390, 0.165749,
		40.699532, 32.126480, 26.776291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502129, 31.725138, 26.981693>,  <40.902927, 31.466806, 26.660267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502129, 31.725138, 26.981693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220581, 31.994890, 27.070936>,  <41.051651, 32.156742, 27.124483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220581, 31.994890, 27.070936>,  <41.502129, 31.725138, 26.981693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220581, 31.994890, 27.070936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315333, 0.015204, 0.948859,
		0.636502, 0.738226, -0.223357,
		-0.703869, 0.674382, 0.223109,
		41.009422, 32.197205, 27.137869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789902, 32.120232, 27.529861>,  <41.502129, 31.725138, 26.981693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789902, 32.120232, 27.529861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.398140, 32.193954, 27.562820>,  <41.163082, 32.238190, 27.582596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.398140, 32.193954, 27.562820>,  <41.789902, 32.120232, 27.529861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398140, 32.193954, 27.562820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072532, -0.059663, 0.995580,
		0.188410, 0.981056, 0.045066,
		-0.979408, 0.184308, 0.082399,
		41.104317, 32.249249, 27.587540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712082, 32.661575, 28.055157>,  <41.789902, 32.120232, 27.529861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712082, 32.661575, 28.055157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.366943, 32.461235, 28.027884>,  <41.159863, 32.341030, 28.011520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.366943, 32.461235, 28.027884>,  <41.712082, 32.661575, 28.055157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366943, 32.461235, 28.027884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054206, -0.042428, 0.997628,
		-0.502559, 0.864491, 0.009459,
		-0.862842, -0.500854, -0.068184,
		41.108089, 32.310978, 28.007429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235558, 32.994083, 28.523262>,  <41.712082, 32.661575, 28.055157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235558, 32.994083, 28.523262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088409, 32.627125, 28.462521>,  <41.000118, 32.406952, 28.426075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088409, 32.627125, 28.462521>,  <41.235558, 32.994083, 28.523262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088409, 32.627125, 28.462521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205657, -0.078992, 0.975431,
		-0.906849, 0.390064, -0.159609,
		-0.367872, -0.917393, -0.151853,
		40.978046, 32.351906, 28.416965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698338, 32.986160, 28.983746>,  <41.235558, 32.994083, 28.523262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698338, 32.986160, 28.983746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774223, 32.601734, 28.903389>,  <40.819756, 32.371078, 28.855175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774223, 32.601734, 28.903389>,  <40.698338, 32.986160, 28.983746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774223, 32.601734, 28.903389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136890, -0.228501, 0.963872,
		-0.972250, -0.155357, -0.174910,
		0.189711, -0.961068, -0.200893,
		40.831139, 32.313416, 28.843121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152180, 32.641567, 29.377403>,  <40.698338, 32.986160, 28.983746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152180, 32.641567, 29.377403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.425110, 32.360199, 29.297779>,  <40.588867, 32.191380, 29.250004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.425110, 32.360199, 29.297779>,  <40.152180, 32.641567, 29.377403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425110, 32.360199, 29.297779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191804, -0.435014, 0.879758,
		-0.705435, -0.562104, -0.431742,
		0.682329, -0.703422, -0.199060,
		40.629810, 32.149174, 29.238062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894180, 31.913258, 29.493200>,  <40.152180, 32.641567, 29.377403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894180, 31.913258, 29.493200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291462, 31.890459, 29.533781>,  <40.529831, 31.876780, 29.558130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291462, 31.890459, 29.533781>,  <39.894180, 31.913258, 29.493200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291462, 31.890459, 29.533781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114743, -0.334510, 0.935381,
		-0.019376, -0.940667, -0.338777,
		0.993206, -0.056996, 0.101454,
		40.589424, 31.873360, 29.564217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958496, 31.244381, 29.778847>,  <39.894180, 31.913258, 29.493200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958496, 31.244381, 29.778847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.294010, 31.452883, 29.841759>,  <40.495319, 31.577984, 29.879507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.294010, 31.452883, 29.841759>,  <39.958496, 31.244381, 29.778847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294010, 31.452883, 29.841759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002198, -0.285628, 0.958338,
		0.544463, -0.804182, -0.238434,
		0.838782, 0.521255, 0.157282,
		40.545647, 31.609259, 29.888943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459091, 30.713234, 30.127779>,  <39.958496, 31.244381, 29.778847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459091, 30.713234, 30.127779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.602570, 31.076372, 30.214638>,  <40.688656, 31.294256, 30.266752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.602570, 31.076372, 30.214638>,  <40.459091, 30.713234, 30.127779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602570, 31.076372, 30.214638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168678, -0.291835, 0.941478,
		0.918088, -0.301076, -0.257814,
		0.358696, 0.907846, 0.217146,
		40.710178, 31.348726, 30.279781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981647, 30.595984, 30.621180>,  <40.459091, 30.713234, 30.127779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981647, 30.595984, 30.621180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892605, 30.982971, 30.669264>,  <40.839180, 31.215164, 30.698114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892605, 30.982971, 30.669264>,  <40.981647, 30.595984, 30.621180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892605, 30.982971, 30.669264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191825, -0.077427, 0.978370,
		0.955850, 0.240850, -0.168349,
		-0.222605, 0.967469, 0.120210,
		40.825825, 31.273212, 30.705326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.209541, 35.210377, 26.200361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870598, 35.300999, 26.008255>,  <42.667233, 35.355373, 25.892992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870598, 35.300999, 26.008255>,  <43.209541, 35.210377, 26.200361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870598, 35.300999, 26.008255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476809, -0.073487, -0.875930,
		-0.233740, -0.971222, -0.045754,
		-0.847360, 0.226556, -0.480264,
		42.616390, 35.368965, 25.864176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134922, 34.646843, 25.750784>,  <43.209541, 35.210377, 26.200361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134922, 34.646843, 25.750784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.904972, 34.934372, 25.594414>,  <42.767002, 35.106888, 25.500591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.904972, 34.934372, 25.594414>,  <43.134922, 34.646843, 25.750784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904972, 34.934372, 25.594414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261537, -0.291278, -0.920193,
		-0.775320, -0.631235, -0.020550,
		-0.574872, 0.718818, -0.390925,
		42.732510, 35.150017, 25.477137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695541, 34.311707, 25.273378>,  <43.134922, 34.646843, 25.750784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695541, 34.311707, 25.273378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.718674, 34.698383, 25.173641>,  <42.732552, 34.930389, 25.113800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.718674, 34.698383, 25.173641>,  <42.695541, 34.311707, 25.273378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718674, 34.698383, 25.173641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145701, -0.255257, -0.955832,
		-0.987637, 0.018946, -0.155609,
		0.057829, 0.966688, -0.249341,
		42.736023, 34.988388, 25.098839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246346, 34.440929, 24.755505>,  <42.695541, 34.311707, 25.273378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246346, 34.440929, 24.755505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.501869, 34.742359, 24.693476>,  <42.655182, 34.923218, 24.656258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.501869, 34.742359, 24.693476>,  <42.246346, 34.440929, 24.755505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501869, 34.742359, 24.693476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148156, -0.318274, -0.936350,
		-0.754969, 0.575170, -0.314962,
		0.638805, 0.753579, -0.155072,
		42.693512, 34.968433, 24.646954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214558, 34.550743, 24.136978>,  <42.246346, 34.440929, 24.755505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214558, 34.550743, 24.136978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.560661, 34.740528, 24.201731>,  <42.768326, 34.854401, 24.240583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.560661, 34.740528, 24.201731>,  <42.214558, 34.550743, 24.136978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560661, 34.740528, 24.201731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253532, -0.135571, -0.957779,
		-0.432486, 0.869772, -0.237597,
		0.865261, 0.474464, 0.161883,
		42.820240, 34.882866, 24.250296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297104, 35.042507, 23.605631>,  <42.214558, 34.550743, 24.136978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297104, 35.042507, 23.605631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.671345, 35.017971, 23.744707>,  <42.895889, 35.003250, 23.828154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.671345, 35.017971, 23.744707>,  <42.297104, 35.042507, 23.605631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671345, 35.017971, 23.744707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347137, -0.019804, -0.937605,
		0.064403, 0.997920, 0.002767,
		0.935600, -0.061345, 0.347691,
		42.952026, 34.999569, 23.849014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759666, 35.611435, 23.295357>,  <42.297104, 35.042507, 23.605631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759666, 35.611435, 23.295357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.004944, 35.327633, 23.434263>,  <43.152111, 35.157352, 23.517607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.004944, 35.327633, 23.434263>,  <42.759666, 35.611435, 23.295357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004944, 35.327633, 23.434263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292149, -0.204750, -0.934198,
		0.733920, 0.674301, 0.081729,
		0.613197, -0.709504, 0.347267,
		43.188904, 35.114780, 23.538443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391590, 35.799999, 23.134743>,  <42.759666, 35.611435, 23.295357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391590, 35.799999, 23.134743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.396244, 35.402233, 23.176716>,  <43.399036, 35.163574, 23.201900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.396244, 35.402233, 23.176716>,  <43.391590, 35.799999, 23.134743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396244, 35.402233, 23.176716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268186, -0.097992, -0.958370,
		0.963297, 0.039294, 0.265547,
		0.011637, -0.994411, 0.104934,
		43.399734, 35.103909, 23.208197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945534, 35.718307, 22.719383>,  <43.391590, 35.799999, 23.134743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945534, 35.718307, 22.719383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786690, 35.355518, 22.775537>,  <43.691383, 35.137844, 22.809231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786690, 35.355518, 22.775537>,  <43.945534, 35.718307, 22.719383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786690, 35.355518, 22.775537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285768, -0.267552, -0.920191,
		0.872147, -0.325299, 0.365431,
		-0.397109, -0.906971, 0.140385,
		43.667557, 35.083427, 22.817654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308098, 35.286343, 22.317320>,  <43.945534, 35.718307, 22.719383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308098, 35.286343, 22.317320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.966370, 35.082615, 22.358753>,  <43.761333, 34.960381, 22.383614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.966370, 35.082615, 22.358753>,  <44.308098, 35.286343, 22.317320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966370, 35.082615, 22.358753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085988, -0.058043, -0.994604,
		0.512581, -0.858619, 0.005792,
		-0.854322, -0.509317, 0.103582,
		43.710072, 34.929821, 22.389828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373524, 34.718758, 21.795309>,  <44.308098, 35.286343, 22.317320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373524, 34.718758, 21.795309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.988937, 34.747948, 21.901333>,  <43.758186, 34.765461, 21.964947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.988937, 34.747948, 21.901333>,  <44.373524, 34.718758, 21.795309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988937, 34.747948, 21.901333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274037, -0.177131, -0.945266,
		-0.022027, -0.981478, 0.190303,
		-0.961467, 0.072971, 0.265059,
		43.700497, 34.769840, 21.980850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970661, 34.079685, 21.379501>,  <44.373524, 34.718758, 21.795309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970661, 34.079685, 21.379501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.735920, 34.390324, 21.471159>,  <43.595074, 34.576706, 21.526154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.735920, 34.390324, 21.471159>,  <43.970661, 34.079685, 21.379501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735920, 34.390324, 21.471159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300686, 0.053740, -0.952208,
		-0.751793, -0.627706, 0.201973,
		-0.586852, 0.776594, 0.229143,
		43.559864, 34.623302, 21.539902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185017, 34.028217, 21.149431>,  <43.970661, 34.079685, 21.379501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185017, 34.028217, 21.149431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.242092, 34.424026, 21.158316>,  <43.276337, 34.661510, 21.163647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.242092, 34.424026, 21.158316>,  <43.185017, 34.028217, 21.149431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242092, 34.424026, 21.158316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313822, 0.066512, -0.947150,
		-0.938699, 0.128174, 0.320023,
		0.142685, 0.989519, 0.022211,
		43.284897, 34.720882, 21.164978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157887, 33.552517, 20.460487>,  <43.185017, 34.028217, 21.149431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157887, 33.552517, 20.460487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265205, 33.902889, 20.300106>,  <43.329597, 34.113113, 20.203876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265205, 33.902889, 20.300106>,  <43.157887, 33.552517, 20.460487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265205, 33.902889, 20.300106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177262, -0.364218, -0.914288,
		-0.946888, 0.316372, 0.057552,
		0.268293, 0.875930, -0.400954,
		43.345692, 34.165668, 20.179819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840958, 32.842781, 20.681440>,  <43.157887, 33.552517, 20.460487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840958, 32.842781, 20.681440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.543980, 32.622280, 20.529179>,  <42.365795, 32.489979, 20.437820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.543980, 32.622280, 20.529179>,  <42.840958, 32.842781, 20.681440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543980, 32.622280, 20.529179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561354, 0.201839, 0.802585,
		-0.365597, 0.809556, -0.459302,
		-0.742442, -0.551254, -0.380656,
		42.321247, 32.456905, 20.414982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192341, 33.220669, 20.675327>,  <42.840958, 32.842781, 20.681440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192341, 33.220669, 20.675327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.090782, 32.833996, 20.662271>,  <42.029846, 32.601994, 20.654438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.090782, 32.833996, 20.662271>,  <42.192341, 33.220669, 20.675327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090782, 32.833996, 20.662271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470777, 0.094031, 0.877227,
		-0.844928, 0.238094, -0.478965,
		-0.253900, -0.966680, -0.032640,
		42.014610, 32.543991, 20.652479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621830, 33.304497, 21.036907>,  <42.192341, 33.220669, 20.675327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621830, 33.304497, 21.036907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704620, 32.913200, 21.042686>,  <41.754295, 32.678421, 21.046154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704620, 32.913200, 21.042686>,  <41.621830, 33.304497, 21.036907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704620, 32.913200, 21.042686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615272, -0.118665, 0.779333,
		-0.760660, -0.170189, -0.626444,
		0.206971, -0.978240, 0.014449,
		41.766712, 32.619728, 21.047022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955036, 32.943653, 21.158939>,  <41.621830, 33.304497, 21.036907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955036, 32.943653, 21.158939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.251999, 32.702152, 21.275087>,  <41.430176, 32.557251, 21.344776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.251999, 32.702152, 21.275087>,  <40.955036, 32.943653, 21.158939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251999, 32.702152, 21.275087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439173, -0.111281, 0.891484,
		-0.505922, -0.789367, -0.347767,
		0.742408, -0.603751, 0.290369,
		41.474720, 32.521027, 21.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613064, 32.382999, 21.518295>,  <40.955036, 32.943653, 21.158939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613064, 32.382999, 21.518295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995621, 32.377026, 21.634979>,  <41.225155, 32.373444, 21.704990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995621, 32.377026, 21.634979>,  <40.613064, 32.382999, 21.518295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995621, 32.377026, 21.634979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282733, -0.298113, 0.911697,
		0.073351, -0.954414, -0.289334,
		0.956390, -0.014930, 0.291711,
		41.282539, 32.372547, 21.722492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587540, 31.820948, 22.089666>,  <40.613064, 32.382999, 21.518295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587540, 31.820948, 22.089666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942966, 32.001835, 22.120504>,  <41.156223, 32.110367, 22.139008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942966, 32.001835, 22.120504>,  <40.587540, 31.820948, 22.089666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942966, 32.001835, 22.120504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009454, -0.186069, 0.982491,
		0.458645, -0.872283, -0.169610,
		0.888569, 0.452218, 0.077093,
		41.209538, 32.137501, 22.143633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939983, 31.441427, 22.645769>,  <40.587540, 31.820948, 22.089666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939983, 31.441427, 22.645769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131989, 31.791557, 22.622467>,  <41.247192, 32.001637, 22.608486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131989, 31.791557, 22.622467>,  <40.939983, 31.441427, 22.645769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131989, 31.791557, 22.622467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039909, 0.088127, 0.995310,
		0.876352, -0.475439, 0.077235,
		0.480016, 0.875323, -0.058256,
		41.275993, 32.054153, 22.604990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517998, 31.356958, 23.058985>,  <40.939983, 31.441427, 22.645769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517998, 31.356958, 23.058985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.422714, 31.743469, 23.019869>,  <41.365543, 31.975376, 22.996399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.422714, 31.743469, 23.019869>,  <41.517998, 31.356958, 23.058985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422714, 31.743469, 23.019869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057795, 0.086405, 0.994582,
		0.969492, 0.242573, 0.035263,
		-0.238212, 0.966278, -0.097788,
		41.351250, 32.033352, 22.990532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881287, 31.617598, 23.630644>,  <41.517998, 31.356958, 23.058985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881287, 31.617598, 23.630644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.602245, 31.889338, 23.539576>,  <41.434822, 32.052383, 23.484934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.602245, 31.889338, 23.539576>,  <41.881287, 31.617598, 23.630644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602245, 31.889338, 23.539576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112273, 0.210188, 0.971193,
		0.707634, 0.703068, -0.070355,
		-0.697602, 0.679351, -0.227672,
		41.392963, 32.093143, 23.471273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993580, 32.236469, 24.057850>,  <41.881287, 31.617598, 23.630644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993580, 32.236469, 24.057850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618439, 32.249947, 23.919695>,  <41.393353, 32.258034, 23.836802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618439, 32.249947, 23.919695>,  <41.993580, 32.236469, 24.057850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618439, 32.249947, 23.919695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307380, 0.381320, 0.871845,
		0.161080, 0.923829, -0.347265,
		-0.937854, 0.033695, -0.345389,
		41.337082, 32.260056, 23.816078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725552, 32.892361, 24.139454>,  <41.993580, 32.236469, 24.057850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725552, 32.892361, 24.139454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385181, 32.683830, 24.113720>,  <41.180958, 32.558712, 24.098280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385181, 32.683830, 24.113720>,  <41.725552, 32.892361, 24.139454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385181, 32.683830, 24.113720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344148, 0.460772, 0.818078,
		-0.396843, 0.718266, -0.571497,
		-0.850928, -0.521328, -0.064336,
		41.129902, 32.527431, 24.094419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173752, 33.418301, 24.383144>,  <41.725552, 32.892361, 24.139454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173752, 33.418301, 24.383144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.022923, 33.048176, 24.399187>,  <40.932426, 32.826099, 24.408813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.022923, 33.048176, 24.399187>,  <41.173752, 33.418301, 24.383144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022923, 33.048176, 24.399187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289093, 0.158726, 0.944050,
		-0.879911, 0.344377, -0.327353,
		-0.377069, -0.925316, 0.040108,
		40.909801, 32.770580, 24.411219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543098, 33.406944, 24.821121>,  <41.173752, 33.418301, 24.383144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543098, 33.406944, 24.821121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610691, 33.012699, 24.822786>,  <40.651249, 32.776154, 24.823786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610691, 33.012699, 24.822786>,  <40.543098, 33.406944, 24.821121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610691, 33.012699, 24.822786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381254, -0.061471, 0.922424,
		-0.908895, -0.157462, -0.386155,
		0.168984, -0.985610, 0.004162,
		40.661385, 32.717014, 24.824036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891792, 33.104939, 24.976332>,  <40.543098, 33.406944, 24.821121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891792, 33.104939, 24.976332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.197613, 32.876961, 25.096752>,  <40.381104, 32.740173, 25.169004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.197613, 32.876961, 25.096752>,  <39.891792, 33.104939, 24.976332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197613, 32.876961, 25.096752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349526, 0.025840, 0.936570,
		-0.541570, -0.821279, -0.179454,
		0.764548, -0.569942, 0.301053,
		40.426979, 32.705978, 25.187067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233463, 32.917751, 24.775560>,  <39.891792, 33.104939, 24.976332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233463, 32.917751, 24.775560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893471, 33.127071, 24.751280>,  <38.689476, 33.252663, 24.736712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893471, 33.127071, 24.751280>,  <39.233463, 32.917751, 24.775560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893471, 33.127071, 24.751280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209218, 0.229569, -0.950540,
		-0.483487, -0.820641, -0.304614,
		-0.849982, 0.523304, -0.060699,
		38.638477, 33.284061, 24.733070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909443, 32.601665, 24.241690>,  <39.233463, 32.917751, 24.775560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909443, 32.601665, 24.241690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734825, 32.957848, 24.293098>,  <38.630054, 33.171558, 24.323944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734825, 32.957848, 24.293098>,  <38.909443, 32.601665, 24.241690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734825, 32.957848, 24.293098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222113, 0.245099, -0.943712,
		-0.871833, -0.383427, -0.304779,
		-0.436546, 0.890455, 0.128521,
		38.603863, 33.224983, 24.331656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515980, 32.765129, 23.691483>,  <38.909443, 32.601665, 24.241690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515980, 32.765129, 23.691483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542820, 33.141220, 23.825033>,  <38.558926, 33.366875, 23.905163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542820, 33.141220, 23.825033>,  <38.515980, 32.765129, 23.691483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542820, 33.141220, 23.825033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116835, 0.324923, -0.938496,
		-0.990882, 0.101985, -0.088048,
		0.067104, 0.940226, 0.333876,
		38.562950, 33.423286, 23.925196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059544, 33.187252, 23.366047>,  <38.515980, 32.765129, 23.691483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059544, 33.187252, 23.366047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312084, 33.478733, 23.472170>,  <38.463608, 33.653622, 23.535843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312084, 33.478733, 23.472170>,  <38.059544, 33.187252, 23.366047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312084, 33.478733, 23.472170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175587, 0.198904, -0.964161,
		-0.755355, 0.655312, -0.002371,
		0.631354, 0.728700, 0.265307,
		38.501492, 33.697342, 23.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928040, 33.849861, 22.919785>,  <38.059544, 33.187252, 23.366047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928040, 33.849861, 22.919785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296932, 33.894291, 23.067923>,  <38.518269, 33.920948, 23.156805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296932, 33.894291, 23.067923>,  <37.928040, 33.849861, 22.919785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296932, 33.894291, 23.067923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327251, 0.285871, -0.900658,
		-0.205914, 0.951809, 0.227288,
		0.922229, 0.111077, 0.370345,
		38.573601, 33.927612, 23.179026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119492, 34.540653, 22.673098>,  <37.928040, 33.849861, 22.919785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119492, 34.540653, 22.673098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459141, 34.335823, 22.724903>,  <38.662930, 34.212925, 22.755987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459141, 34.335823, 22.724903>,  <38.119492, 34.540653, 22.673098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459141, 34.335823, 22.724903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291515, 0.249854, -0.923359,
		0.440470, 0.821798, 0.361433,
		0.849120, -0.512075, 0.129513,
		38.713879, 34.182201, 22.763758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587917, 34.893436, 22.429502>,  <38.119492, 34.540653, 22.673098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587917, 34.893436, 22.429502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806229, 34.558365, 22.437677>,  <38.937214, 34.357323, 22.442583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806229, 34.558365, 22.437677>,  <38.587917, 34.893436, 22.429502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806229, 34.558365, 22.437677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333409, 0.194720, -0.922455,
		0.768746, 0.510265, 0.385564,
		0.545774, -0.837683, 0.020437,
		38.969959, 34.307060, 22.443808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140079, 35.483974, 22.491940>,  <38.587917, 34.893436, 22.429502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140079, 35.483974, 22.491940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906624, 35.744473, 22.297930>,  <38.766552, 35.900772, 22.181524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906624, 35.744473, 22.297930>,  <39.140079, 35.483974, 22.491940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906624, 35.744473, 22.297930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494530, 0.188691, 0.848431,
		0.644055, 0.735036, 0.211932,
		-0.583638, 0.651243, -0.485025,
		38.731533, 35.939846, 22.152422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139740, 35.977661, 22.910099>,  <39.140079, 35.483974, 22.491940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139740, 35.977661, 22.910099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.813461, 36.031609, 22.685083>,  <38.617695, 36.063976, 22.550074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.813461, 36.031609, 22.685083>,  <39.139740, 35.977661, 22.910099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813461, 36.031609, 22.685083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531255, 0.210196, 0.820723,
		0.228935, 0.968312, -0.099806,
		-0.815694, 0.134870, -0.562541,
		38.568752, 36.072071, 22.516321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872787, 36.612968, 22.986320>,  <39.139740, 35.977661, 22.910099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872787, 36.612968, 22.986320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575237, 36.379524, 22.856060>,  <38.396706, 36.239460, 22.777903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575237, 36.379524, 22.856060>,  <38.872787, 36.612968, 22.986320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575237, 36.379524, 22.856060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588345, 0.340724, 0.733320,
		-0.317012, 0.737096, -0.596819,
		-0.743878, -0.583606, -0.325653,
		38.352074, 36.204441, 22.758364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312328, 37.022549, 23.099398>,  <38.872787, 36.612968, 22.986320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312328, 37.022549, 23.099398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166595, 36.650578, 23.079418>,  <38.079155, 36.427395, 23.067430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166595, 36.650578, 23.079418>,  <38.312328, 37.022549, 23.099398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166595, 36.650578, 23.079418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458732, 0.132532, 0.878636,
		-0.810447, 0.343032, -0.474873,
		-0.364336, -0.929927, -0.049950,
		38.057293, 36.371601, 23.064434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586807, 37.009159, 23.257019>,  <38.312328, 37.022549, 23.099398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586807, 37.009159, 23.257019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676849, 36.622879, 23.308777>,  <37.730877, 36.391109, 23.339830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676849, 36.622879, 23.308777>,  <37.586807, 37.009159, 23.257019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676849, 36.622879, 23.308777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347234, 0.044568, 0.936719,
		-0.910360, -0.255792, -0.325293,
		0.225107, -0.965704, 0.129393,
		37.744381, 36.333168, 23.347595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121124, 36.806019, 23.690042>,  <37.586807, 37.009159, 23.257019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121124, 36.806019, 23.690042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405891, 36.528202, 23.731579>,  <37.576752, 36.361511, 23.756500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405891, 36.528202, 23.731579>,  <37.121124, 36.806019, 23.690042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405891, 36.528202, 23.731579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127939, 0.017122, 0.991634,
		-0.690513, -0.719245, -0.076670,
		0.711915, -0.694545, 0.103842,
		37.619465, 36.319839, 23.762732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826324, 36.366108, 24.154419>,  <37.121124, 36.806019, 23.690042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826324, 36.366108, 24.154419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223694, 36.321106, 24.162857>,  <37.462116, 36.294106, 24.167919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223694, 36.321106, 24.162857>,  <36.826324, 36.366108, 24.154419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223694, 36.321106, 24.162857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027374, -0.054563, 0.998135,
		-0.111152, -0.992151, -0.057284,
		0.993427, -0.112512, 0.021094,
		37.521721, 36.287354, 24.169186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.940086, 37.734268, 20.909054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.049927, 37.362511, 21.007694>,  <42.115833, 37.139454, 21.066879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.049927, 37.362511, 21.007694>,  <41.940086, 37.734268, 20.909054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049927, 37.362511, 21.007694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063955, 0.238239, 0.969098,
		-0.959428, -0.281890, 0.005981,
		0.274604, -0.929398, 0.246602,
		42.132309, 37.083691, 21.081675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402775, 37.472969, 21.357092>,  <41.940086, 37.734268, 20.909054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402775, 37.472969, 21.357092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.749241, 37.281158, 21.413401>,  <41.957119, 37.166073, 21.447186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.749241, 37.281158, 21.413401>,  <41.402775, 37.472969, 21.357092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749241, 37.281158, 21.413401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064388, 0.172257, 0.982945,
		-0.495600, -0.860453, 0.118327,
		0.866161, -0.479529, 0.140774,
		42.009090, 37.137299, 21.455633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369137, 36.872669, 21.884426>,  <41.402775, 37.472969, 21.357092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369137, 36.872669, 21.884426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.757030, 36.969025, 21.900377>,  <41.989765, 37.026840, 21.909948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.757030, 36.969025, 21.900377>,  <41.369137, 36.872669, 21.884426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757030, 36.969025, 21.900377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066109, 0.101813, 0.992604,
		0.235051, -0.965197, 0.114657,
		0.969732, 0.240893, 0.039877,
		42.047951, 37.041294, 21.912340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573486, 36.504223, 22.447586>,  <41.369137, 36.872669, 21.884426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573486, 36.504223, 22.447586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.879704, 36.754330, 22.386951>,  <42.063435, 36.904396, 22.350571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.879704, 36.754330, 22.386951>,  <41.573486, 36.504223, 22.447586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879704, 36.754330, 22.386951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064779, 0.309323, 0.948748,
		0.640115, -0.716488, 0.277304,
		0.765543, 0.625272, -0.151589,
		42.109367, 36.941910, 22.341475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096588, 36.430290, 23.021585>,  <41.573486, 36.504223, 22.447586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096588, 36.430290, 23.021585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.151123, 36.797874, 22.873575>,  <42.183842, 37.018425, 22.784769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.151123, 36.797874, 22.873575>,  <42.096588, 36.430290, 23.021585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151123, 36.797874, 22.873575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150761, 0.349915, 0.924570,
		0.979124, -0.181836, -0.090838,
		0.136334, 0.918964, -0.370024,
		42.192024, 37.073563, 22.762568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517139, 36.706440, 23.492970>,  <42.096588, 36.430290, 23.021585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517139, 36.706440, 23.492970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.391319, 37.028332, 23.291588>,  <42.315826, 37.221466, 23.170759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.391319, 37.028332, 23.291588>,  <42.517139, 36.706440, 23.492970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391319, 37.028332, 23.291588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126829, 0.561247, 0.817873,
		0.940731, 0.193407, -0.278601,
		-0.314546, 0.804734, -0.503453,
		42.296955, 37.269753, 23.140553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915970, 37.205090, 23.707567>,  <42.517139, 36.706440, 23.492970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915970, 37.205090, 23.707567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.592804, 37.396515, 23.570019>,  <42.398903, 37.511368, 23.487490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.592804, 37.396515, 23.570019>,  <42.915970, 37.205090, 23.707567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592804, 37.396515, 23.570019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116087, 0.442844, 0.889051,
		0.577746, 0.758201, -0.302227,
		-0.807919, 0.478561, -0.343869,
		42.350430, 37.540085, 23.466858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852341, 37.634422, 24.207497>,  <42.915970, 37.205090, 23.707567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852341, 37.634422, 24.207497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.501350, 37.659454, 24.017284>,  <42.290756, 37.674473, 23.903158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.501350, 37.659454, 24.017284>,  <42.852341, 37.634422, 24.207497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501350, 37.659454, 24.017284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394262, 0.470485, 0.789431,
		0.273134, 0.880186, -0.388163,
		-0.877471, 0.062583, -0.475529,
		42.238110, 37.678230, 23.874626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604431, 38.338367, 24.102987>,  <42.852341, 37.634422, 24.207497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604431, 38.338367, 24.102987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.268780, 38.121357, 24.087387>,  <42.067387, 37.991150, 24.078026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.268780, 38.121357, 24.087387>,  <42.604431, 38.338367, 24.102987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268780, 38.121357, 24.087387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359659, 0.499638, 0.788041,
		-0.408046, 0.675298, -0.614387,
		-0.839133, -0.542526, -0.039001,
		42.017040, 37.958599, 24.075687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974789, 38.757603, 24.231071>,  <42.604431, 38.338367, 24.102987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974789, 38.757603, 24.231071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.810257, 38.402035, 24.311693>,  <41.711540, 38.188694, 24.360065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.810257, 38.402035, 24.311693>,  <41.974789, 38.757603, 24.231071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810257, 38.402035, 24.311693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506606, 0.406783, 0.760183,
		-0.757734, 0.210575, -0.617655,
		-0.411327, -0.888924, 0.201554,
		41.686859, 38.135357, 24.372160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419422, 38.946888, 24.316856>,  <41.974789, 38.757603, 24.231071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419422, 38.946888, 24.316856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428543, 38.595818, 24.508339>,  <41.434013, 38.385174, 24.623228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428543, 38.595818, 24.508339>,  <41.419422, 38.946888, 24.316856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428543, 38.595818, 24.508339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533520, 0.394265, 0.748272,
		-0.845480, -0.272460, -0.459270,
		0.022800, -0.877679, 0.478706,
		41.435383, 38.332516, 24.651951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593098, 38.686619, 24.442947>,  <41.419422, 38.946888, 24.316856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593098, 38.686619, 24.442947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838314, 38.511032, 24.705700>,  <40.985443, 38.405682, 24.863352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838314, 38.511032, 24.705700>,  <40.593098, 38.686619, 24.442947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838314, 38.511032, 24.705700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540203, 0.373816, 0.753951,
		-0.576511, -0.817051, -0.007966,
		0.613039, -0.438965, 0.656882,
		41.022224, 38.379341, 24.902765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802589, 38.618553, 24.634409>,  <40.593098, 38.686619, 24.442947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802589, 38.618553, 24.634409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515316, 38.882473, 24.545975>,  <39.342953, 39.040825, 24.492914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515316, 38.882473, 24.545975>,  <39.802589, 38.618553, 24.634409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515316, 38.882473, 24.545975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356230, 0.075686, -0.931328,
		-0.597754, -0.747623, -0.289396,
		-0.718185, 0.659797, -0.221084,
		39.299862, 39.080410, 24.479649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677200, 38.379005, 24.023977>,  <39.802589, 38.618553, 24.634409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677200, 38.379005, 24.023977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487209, 38.730385, 24.044849>,  <39.373215, 38.941212, 24.057373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487209, 38.730385, 24.044849>,  <39.677200, 38.379005, 24.023977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487209, 38.730385, 24.044849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109857, 0.118021, -0.986916,
		-0.873114, -0.463031, -0.152561,
		-0.474978, 0.878450, 0.052179,
		39.344715, 38.993919, 24.060503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309994, 38.416298, 23.430031>,  <39.677200, 38.379005, 24.023977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309994, 38.416298, 23.430031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306442, 38.803818, 23.529106>,  <39.304310, 39.036331, 23.588551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306442, 38.803818, 23.529106>,  <39.309994, 38.416298, 23.430031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306442, 38.803818, 23.529106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039441, 0.247164, -0.968171,
		-0.999183, -0.018368, 0.036015,
		-0.008882, 0.968800, 0.247686,
		39.303776, 39.094460, 23.603413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898548, 38.620911, 23.058355>,  <39.309994, 38.416298, 23.430031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898548, 38.620911, 23.058355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.092678, 38.960358, 23.142548>,  <39.209156, 39.164028, 23.193062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.092678, 38.960358, 23.142548>,  <38.898548, 38.620911, 23.058355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092678, 38.960358, 23.142548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039034, 0.261520, -0.964408,
		-0.873463, 0.459835, 0.160047,
		0.485324, 0.848622, 0.210479,
		39.238274, 39.214943, 23.205690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577168, 39.202034, 22.675102>,  <38.898548, 38.620911, 23.058355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577168, 39.202034, 22.675102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.952316, 39.297508, 22.775846>,  <39.177406, 39.354794, 22.836292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.952316, 39.297508, 22.775846>,  <38.577168, 39.202034, 22.675102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952316, 39.297508, 22.775846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183192, 0.275851, -0.943582,
		-0.294692, 0.931095, 0.214987,
		0.937868, 0.238682, 0.251860,
		39.233677, 39.369114, 22.851404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705051, 39.757473, 22.326963>,  <38.577168, 39.202034, 22.675102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705051, 39.757473, 22.326963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072834, 39.628876, 22.417505>,  <39.293503, 39.551716, 22.471830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072834, 39.628876, 22.417505>,  <38.705051, 39.757473, 22.326963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072834, 39.628876, 22.417505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329881, 0.317517, -0.889022,
		0.213943, 0.892090, 0.397999,
		0.919460, -0.321493, 0.226353,
		39.348671, 39.532429, 22.485411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173798, 40.180885, 21.849863>,  <38.705051, 39.757473, 22.326963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173798, 40.180885, 21.849863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.407619, 39.873207, 21.953114>,  <39.547913, 39.688599, 22.015064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.407619, 39.873207, 21.953114>,  <39.173798, 40.180885, 21.849863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407619, 39.873207, 21.953114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372393, -0.028294, -0.927644,
		0.720845, 0.638384, 0.269904,
		0.584556, -0.769198, 0.258126,
		39.582985, 39.642448, 22.030552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859623, 40.342358, 21.613707>,  <39.173798, 40.180885, 21.849863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859623, 40.342358, 21.613707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.881439, 39.947052, 21.670771>,  <39.894531, 39.709869, 21.705009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.881439, 39.947052, 21.670771>,  <39.859623, 40.342358, 21.613707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881439, 39.947052, 21.670771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566450, -0.087033, -0.819487,
		0.822289, 0.125509, 0.555057,
		0.054544, -0.988268, 0.142661,
		39.897804, 39.650570, 21.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568470, 40.244884, 21.435591>,  <39.859623, 40.342358, 21.613707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568470, 40.244884, 21.435591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.411716, 39.877735, 21.410461>,  <40.317665, 39.657448, 21.395384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.411716, 39.877735, 21.410461>,  <40.568470, 40.244884, 21.435591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411716, 39.877735, 21.410461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335176, -0.078842, -0.938851,
		0.856789, -0.388973, 0.338544,
		-0.391879, -0.917869, -0.062823,
		40.294151, 39.602375, 21.391615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114235, 39.926533, 21.139938>,  <40.568470, 40.244884, 21.435591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114235, 39.926533, 21.139938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796593, 39.689178, 21.087357>,  <40.606007, 39.546764, 21.055807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796593, 39.689178, 21.087357>,  <41.114235, 39.926533, 21.139938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796593, 39.689178, 21.087357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284947, -0.172450, -0.942903,
		0.536840, -0.786225, 0.306028,
		-0.794108, -0.593390, -0.131455,
		40.558361, 39.511162, 21.047920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369598, 39.270359, 20.826033>,  <41.114235, 39.926533, 21.139938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369598, 39.270359, 20.826033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978539, 39.298611, 20.746830>,  <40.743900, 39.315563, 20.699308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978539, 39.298611, 20.746830>,  <41.369598, 39.270359, 20.826033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978539, 39.298611, 20.746830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200738, 0.033832, -0.979060,
		-0.062452, -0.996929, -0.047255,
		-0.977652, 0.070631, -0.198009,
		40.685242, 39.319801, 20.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250313, 38.769058, 20.431957>,  <41.369598, 39.270359, 20.826033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250313, 38.769058, 20.431957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.955044, 39.026295, 20.350445>,  <40.777882, 39.180637, 20.301537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.955044, 39.026295, 20.350445>,  <41.250313, 38.769058, 20.431957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955044, 39.026295, 20.350445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229672, -0.044455, -0.972252,
		-0.634307, -0.764497, -0.114884,
		-0.738177, 0.643092, -0.203782,
		40.733589, 39.219223, 20.289310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951298, 38.430283, 19.915283>,  <41.250313, 38.769058, 20.431957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951298, 38.430283, 19.915283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.817947, 38.806263, 19.886028>,  <40.737938, 39.031853, 19.868475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.817947, 38.806263, 19.886028>,  <40.951298, 38.430283, 19.915283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817947, 38.806263, 19.886028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236229, 0.008180, -0.971663,
		-0.912721, -0.341202, -0.224771,
		-0.333372, 0.939954, -0.073135,
		40.717937, 39.088249, 19.864088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122883, 37.928089, 20.343817>,  <40.951298, 38.430283, 19.915283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122883, 37.928089, 20.343817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.946022, 37.634190, 20.138041>,  <40.839905, 37.457851, 20.014574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.946022, 37.634190, 20.138041>,  <41.122883, 37.928089, 20.343817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946022, 37.634190, 20.138041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594144, -0.189748, 0.781658,
		-0.671934, 0.651264, -0.352647,
		-0.442151, -0.734745, -0.514443,
		40.813377, 37.413765, 19.983707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461891, 37.941948, 20.589479>,  <41.122883, 37.928089, 20.343817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461891, 37.941948, 20.589479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511539, 37.574799, 20.438688>,  <40.541328, 37.354511, 20.348213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511539, 37.574799, 20.438688>,  <40.461891, 37.941948, 20.589479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511539, 37.574799, 20.438688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566943, -0.377396, 0.732221,
		-0.814352, 0.122840, -0.567222,
		0.124121, -0.917869, -0.376976,
		40.548775, 37.299438, 20.325596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828629, 37.673279, 20.510466>,  <40.461891, 37.941948, 20.589479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828629, 37.673279, 20.510466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030396, 37.328907, 20.484035>,  <40.151455, 37.122284, 20.468178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030396, 37.328907, 20.484035>,  <39.828629, 37.673279, 20.510466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030396, 37.328907, 20.484035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739316, -0.470161, 0.482037,
		-0.446066, -0.194297, -0.873656,
		0.504417, -0.860928, -0.066076,
		40.181721, 37.070629, 20.464214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336754, 37.150551, 20.207806>,  <39.828629, 37.673279, 20.510466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336754, 37.150551, 20.207806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626755, 36.932671, 20.376406>,  <39.800755, 36.801941, 20.477566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626755, 36.932671, 20.376406>,  <39.336754, 37.150551, 20.207806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626755, 36.932671, 20.376406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687232, -0.531628, 0.495060,
		-0.045581, -0.648590, -0.759772,
		0.725006, -0.544705, 0.421499,
		39.844257, 36.769260, 20.502855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188450, 36.401264, 20.119232>,  <39.336754, 37.150551, 20.207806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188450, 36.401264, 20.119232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.421982, 36.463352, 20.437992>,  <39.562103, 36.500603, 20.629248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.421982, 36.463352, 20.437992>,  <39.188450, 36.401264, 20.119232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421982, 36.463352, 20.437992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611221, -0.562015, 0.557269,
		0.534366, -0.812433, -0.233251,
		0.583834, 0.155217, 0.796898,
		39.597134, 36.509918, 20.677061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172291, 35.773945, 20.408487>,  <39.188450, 36.401264, 20.119232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172291, 35.773945, 20.408487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279411, 36.027008, 20.699148>,  <39.343685, 36.178844, 20.873545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279411, 36.027008, 20.699148>,  <39.172291, 35.773945, 20.408487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279411, 36.027008, 20.699148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482016, -0.565056, 0.669606,
		0.834232, -0.529580, 0.153629,
		0.267801, 0.632659, 0.726654,
		39.359753, 36.216805, 20.917145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222431, 35.340210, 21.065527>,  <39.172291, 35.773945, 20.408487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222431, 35.340210, 21.065527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.198730, 35.718502, 21.193325>,  <39.184509, 35.945477, 21.270004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.198730, 35.718502, 21.193325>,  <39.222431, 35.340210, 21.065527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198730, 35.718502, 21.193325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557558, -0.296833, 0.775254,
		0.828021, -0.132205, 0.544888,
		-0.059249, 0.945734, 0.319496,
		39.180958, 36.002224, 21.289173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267292, 35.207520, 21.837536>,  <39.222431, 35.340210, 21.065527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267292, 35.207520, 21.837536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115738, 35.571716, 21.771271>,  <39.024807, 35.790234, 21.731512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115738, 35.571716, 21.771271>,  <39.267292, 35.207520, 21.837536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115738, 35.571716, 21.771271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638313, -0.127495, 0.759146,
		0.670078, 0.393373, 0.629487,
		-0.378884, 0.910496, -0.165663,
		39.002071, 35.844864, 21.721571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781761, 35.030766, 22.196449>,  <39.267292, 35.207520, 21.837536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781761, 35.030766, 22.196449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.645905, 34.656590, 22.157267>,  <39.564392, 34.432083, 22.133757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.645905, 34.656590, 22.157267>,  <39.781761, 35.030766, 22.196449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645905, 34.656590, 22.157267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384437, -0.043015, -0.922148,
		0.858402, -0.350855, 0.374228,
		-0.339637, -0.935441, -0.097958,
		39.544014, 34.375957, 22.127880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278473, 34.784275, 21.992373>,  <39.781761, 35.030766, 22.196449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278473, 34.784275, 21.992373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.990570, 34.535576, 21.868835>,  <39.817829, 34.386356, 21.794714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.990570, 34.535576, 21.868835>,  <40.278473, 34.784275, 21.992373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990570, 34.535576, 21.868835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495708, -0.148828, -0.855642,
		0.486027, -0.768950, 0.415323,
		-0.719758, -0.621744, -0.308840,
		39.774643, 34.349052, 21.776184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649364, 34.287247, 21.688042>,  <40.278473, 34.784275, 21.992373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649364, 34.287247, 21.688042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273815, 34.234501, 21.560841>,  <40.048485, 34.202854, 21.484520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273815, 34.234501, 21.560841>,  <40.649364, 34.287247, 21.688042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273815, 34.234501, 21.560841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341034, -0.230122, -0.911449,
		0.047012, -0.964186, 0.261027,
		-0.938875, -0.131868, -0.318001,
		39.992153, 34.194942, 21.465441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681343, 33.636124, 21.297344>,  <40.649364, 34.287247, 21.688042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681343, 33.636124, 21.297344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345791, 33.824135, 21.187548>,  <40.144459, 33.936943, 21.121670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345791, 33.824135, 21.187548>,  <40.681343, 33.636124, 21.297344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345791, 33.824135, 21.187548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192379, -0.215710, -0.957319,
		-0.509179, -0.855886, 0.090531,
		-0.838884, 0.470031, -0.274490,
		40.094124, 33.965145, 21.105200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288010, 33.154236, 20.905682>,  <40.681343, 33.636124, 21.297344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288010, 33.154236, 20.905682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156387, 33.519138, 20.808104>,  <40.077415, 33.738079, 20.749556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156387, 33.519138, 20.808104>,  <40.288010, 33.154236, 20.905682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156387, 33.519138, 20.808104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253348, -0.163578, -0.953445,
		-0.909692, -0.375537, -0.177293,
		-0.329052, 0.912258, -0.243947,
		40.057671, 33.792816, 20.734921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892586, 33.017487, 20.323181>,  <40.288010, 33.154236, 20.905682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892586, 33.017487, 20.323181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967175, 33.409016, 20.289394>,  <40.011929, 33.643932, 20.269123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967175, 33.409016, 20.289394>,  <39.892586, 33.017487, 20.323181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967175, 33.409016, 20.289394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354918, -0.147282, -0.923223,
		-0.916112, 0.142179, -0.374866,
		0.186474, 0.978822, -0.084465,
		40.023117, 33.702663, 20.264055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696999, 33.138790, 19.636131>,  <39.892586, 33.017487, 20.323181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696999, 33.138790, 19.636131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.922474, 33.454288, 19.734217>,  <40.057758, 33.643589, 19.793068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.922474, 33.454288, 19.734217>,  <39.696999, 33.138790, 19.636131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922474, 33.454288, 19.734217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459860, -0.053072, -0.886404,
		-0.686135, 0.612423, -0.392630,
		0.563691, 0.788747, 0.245214,
		40.091583, 33.690914, 19.807781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859474, 33.587379, 19.021425>,  <39.696999, 33.138790, 19.636131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859474, 33.587379, 19.021425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.162205, 33.684616, 19.264116>,  <40.343842, 33.742958, 19.409731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.162205, 33.684616, 19.264116>,  <39.859474, 33.587379, 19.021425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162205, 33.684616, 19.264116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604317, 0.093420, -0.791248,
		-0.249026, 0.965494, -0.076201,
		0.756827, 0.243091, 0.606729,
		40.389252, 33.757542, 19.446135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147995, 34.251823, 18.802126>,  <39.859474, 33.587379, 19.021425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147995, 34.251823, 18.802126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.424290, 34.016560, 18.970388>,  <40.590069, 33.875401, 19.071346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.424290, 34.016560, 18.970388>,  <40.147995, 34.251823, 18.802126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424290, 34.016560, 18.970388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491099, -0.045419, -0.869919,
		0.530753, 0.807472, 0.257470,
		0.690741, -0.588155, 0.420655,
		40.631512, 33.840115, 19.096584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.052315, 34.264614, 34.903324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432205, 34.179424, 34.811539>,  <37.660141, 34.128311, 34.756466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432205, 34.179424, 34.811539>,  <37.052315, 34.264614, 34.903324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432205, 34.179424, 34.811539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230832, 0.018772, -0.972812,
		0.211492, 0.976877, -0.031333,
		0.949730, -0.212975, -0.229465,
		37.717125, 34.115532, 34.742699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223755, 34.743816, 34.499550>,  <37.052315, 34.264614, 34.903324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223755, 34.743816, 34.499550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447994, 34.419525, 34.432091>,  <37.582539, 34.224949, 34.391617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447994, 34.419525, 34.432091>,  <37.223755, 34.743816, 34.499550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447994, 34.419525, 34.432091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149011, 0.101573, -0.983605,
		0.814570, 0.576538, -0.063866,
		0.560599, -0.810732, -0.168649,
		37.616173, 34.176304, 34.381496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558655, 34.964348, 33.946037>,  <37.223755, 34.743816, 34.499550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558655, 34.964348, 33.946037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610119, 34.567684, 33.949009>,  <37.640995, 34.329685, 33.950790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610119, 34.567684, 33.949009>,  <37.558655, 34.964348, 33.946037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610119, 34.567684, 33.949009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066577, -0.016112, -0.997651,
		0.989452, 0.127860, -0.068095,
		0.128657, -0.991661, 0.007430,
		37.648716, 34.270187, 33.951237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876183, 34.821899, 33.313503>,  <37.558655, 34.964348, 33.946037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876183, 34.821899, 33.313503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.752007, 34.459930, 33.429951>,  <37.677502, 34.242748, 33.499821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.752007, 34.459930, 33.429951>,  <37.876183, 34.821899, 33.313503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752007, 34.459930, 33.429951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139209, -0.259670, -0.955611,
		0.940346, -0.337182, -0.045361,
		-0.310436, -0.904920, 0.291119,
		37.658875, 34.188454, 33.517288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277973, 34.250881, 33.016228>,  <37.876183, 34.821899, 33.313503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277973, 34.250881, 33.016228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929203, 34.071545, 33.094944>,  <37.719940, 33.963943, 33.142174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929203, 34.071545, 33.094944>,  <38.277973, 34.250881, 33.016228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929203, 34.071545, 33.094944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003626, -0.395994, -0.918246,
		0.489618, -0.801359, 0.343654,
		-0.871930, -0.448344, 0.196791,
		37.667625, 33.937042, 33.153980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275761, 33.503757, 32.711285>,  <38.277973, 34.250881, 33.016228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275761, 33.503757, 32.711285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887592, 33.577419, 32.773727>,  <37.654690, 33.621616, 32.811192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887592, 33.577419, 32.773727>,  <38.275761, 33.503757, 32.711285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887592, 33.577419, 32.773727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227052, -0.476452, -0.849377,
		-0.082043, -0.859697, 0.504172,
		-0.970421, 0.184158, 0.156106,
		37.596466, 33.632668, 32.820560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036926, 32.890465, 32.579430>,  <38.275761, 33.503757, 32.711285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036926, 32.890465, 32.579430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.765846, 33.178032, 32.517612>,  <37.603199, 33.350571, 32.480522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.765846, 33.178032, 32.517612>,  <38.036926, 32.890465, 32.579430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765846, 33.178032, 32.517612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220533, -0.399198, -0.889947,
		-0.701491, -0.569034, 0.429081,
		-0.677699, 0.718916, -0.154543,
		37.562538, 33.393707, 32.471249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342800, 32.592815, 32.292454>,  <38.036926, 32.890465, 32.579430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342800, 32.592815, 32.292454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300163, 32.980709, 32.204594>,  <37.274582, 33.213448, 32.151878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300163, 32.980709, 32.204594>,  <37.342800, 32.592815, 32.292454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300163, 32.980709, 32.204594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156761, -0.234534, -0.959385,
		-0.981867, -0.067833, 0.177017,
		-0.106595, 0.969738, -0.219648,
		37.268185, 33.271629, 32.138699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702362, 32.639656, 32.001198>,  <37.342800, 32.592815, 32.292454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702362, 32.639656, 32.001198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894566, 32.975224, 31.898966>,  <37.009888, 33.176563, 31.837627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894566, 32.975224, 31.898966>,  <36.702362, 32.639656, 32.001198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894566, 32.975224, 31.898966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046241, -0.266787, -0.962646,
		-0.875769, 0.474380, -0.089401,
		0.480511, 0.838921, -0.255580,
		37.038719, 33.226898, 31.822292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527737, 32.746078, 31.295361>,  <36.702362, 32.639656, 32.001198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527737, 32.746078, 31.295361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866352, 32.957409, 31.321398>,  <37.069523, 33.084206, 31.337019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866352, 32.957409, 31.321398>,  <36.527737, 32.746078, 31.295361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866352, 32.957409, 31.321398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151852, -0.122478, -0.980786,
		-0.510203, 0.840161, -0.183910,
		0.846542, 0.528327, 0.065091,
		37.120316, 33.115906, 31.340925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462303, 33.434498, 30.926319>,  <36.527737, 32.746078, 31.295361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462303, 33.434498, 30.926319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855877, 33.368370, 30.953266>,  <37.092022, 33.328693, 30.969435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855877, 33.368370, 30.953266>,  <36.462303, 33.434498, 30.926319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855877, 33.368370, 30.953266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055914, -0.072987, -0.995764,
		0.169539, 0.983535, -0.062571,
		0.983936, -0.165322, 0.067367,
		37.151058, 33.318775, 30.973476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725357, 33.929943, 30.423729>,  <36.462303, 33.434498, 30.926319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725357, 33.929943, 30.423729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001091, 33.653469, 30.510513>,  <37.166531, 33.487583, 30.562584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001091, 33.653469, 30.510513>,  <36.725357, 33.929943, 30.423729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001091, 33.653469, 30.510513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243883, -0.060591, -0.967910,
		0.682155, 0.720129, 0.126801,
		0.689337, -0.691189, 0.216960,
		37.207893, 33.446114, 30.575602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843082, 34.733101, 30.375101>,  <36.725357, 33.929943, 30.423729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843082, 34.733101, 30.375101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614853, 34.980122, 30.158556>,  <36.477913, 35.128334, 30.028629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614853, 34.980122, 30.158556>,  <36.843082, 34.733101, 30.375101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614853, 34.980122, 30.158556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505493, 0.255437, 0.824153,
		0.647239, 0.743899, 0.166420,
		-0.570577, 0.617549, -0.541364,
		36.443680, 35.165386, 29.996147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641209, 35.257809, 30.819040>,  <36.843082, 34.733101, 30.375101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641209, 35.257809, 30.819040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395245, 35.337540, 30.513844>,  <36.247665, 35.385380, 30.330725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395245, 35.337540, 30.513844>,  <36.641209, 35.257809, 30.819040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395245, 35.337540, 30.513844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663499, 0.392148, 0.637172,
		0.426215, 0.898046, -0.108877,
		-0.614906, 0.199332, -0.762992,
		36.210773, 35.397339, 30.284946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493523, 35.948456, 30.840050>,  <36.641209, 35.257809, 30.819040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493523, 35.948456, 30.840050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.184814, 35.760742, 30.668402>,  <35.999588, 35.648113, 30.565413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.184814, 35.760742, 30.668402>,  <36.493523, 35.948456, 30.840050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184814, 35.760742, 30.668402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566676, 0.201363, 0.798956,
		-0.288531, 0.859781, -0.421340,
		-0.771769, -0.469287, -0.429118,
		35.953285, 35.619957, 30.539667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899426, 36.288818, 30.917486>,  <36.493523, 35.948456, 30.840050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899426, 36.288818, 30.917486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.724548, 35.946125, 30.808035>,  <35.619621, 35.740509, 30.742365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.724548, 35.946125, 30.808035>,  <35.899426, 36.288818, 30.917486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724548, 35.946125, 30.808035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619301, 0.066154, 0.782362,
		-0.652175, 0.511497, -0.559498,
		-0.437189, -0.856735, -0.273627,
		35.593391, 35.689106, 30.725946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178616, 36.382561, 31.009068>,  <35.899426, 36.288818, 30.917486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178616, 36.382561, 31.009068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217010, 35.984932, 30.988619>,  <35.240047, 35.746357, 30.976349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217010, 35.984932, 30.988619>,  <35.178616, 36.382561, 31.009068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217010, 35.984932, 30.988619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770028, -0.106706, 0.629023,
		-0.630747, -0.021013, -0.775704,
		0.095990, -0.994068, -0.051123,
		35.245808, 35.686710, 30.973282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494228, 36.152943, 31.015987>,  <35.178616, 36.382561, 31.009068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494228, 36.152943, 31.015987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697033, 35.819973, 31.105440>,  <34.818714, 35.620190, 31.159111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697033, 35.819973, 31.105440>,  <34.494228, 36.152943, 31.015987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697033, 35.819973, 31.105440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724713, -0.271238, 0.633419,
		-0.466617, -0.483218, -0.740790,
		0.507010, -0.832424, 0.223630,
		34.849136, 35.570244, 31.172529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985619, 35.571411, 30.888191>,  <34.494228, 36.152943, 31.015987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985619, 35.571411, 30.888191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257973, 35.449883, 31.154753>,  <34.421383, 35.376965, 31.314690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257973, 35.449883, 31.154753>,  <33.985619, 35.571411, 30.888191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257973, 35.449883, 31.154753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715004, -0.078649, 0.694683,
		-0.158647, -0.949477, -0.270784,
		0.680882, -0.303821, 0.666402,
		34.462238, 35.358738, 31.354673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726624, 35.002285, 31.174410>,  <33.985619, 35.571411, 30.888191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726624, 35.002285, 31.174410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005070, 35.127285, 31.432949>,  <34.172138, 35.202286, 31.588074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005070, 35.127285, 31.432949>,  <33.726624, 35.002285, 31.174410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005070, 35.127285, 31.432949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648897, -0.111333, 0.752687,
		0.307173, -0.943372, 0.125277,
		0.696116, 0.312497, 0.646350,
		34.213905, 35.221035, 31.626854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571449, 34.629169, 31.786642>,  <33.726624, 35.002285, 31.174410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571449, 34.629169, 31.786642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819584, 34.900749, 31.943722>,  <33.968464, 35.063698, 32.037971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819584, 34.900749, 31.943722>,  <33.571449, 34.629169, 31.786642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819584, 34.900749, 31.943722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552493, 0.022879, 0.833203,
		0.556717, -0.733830, 0.389307,
		0.620336, 0.678948, 0.392699,
		34.005684, 35.104435, 32.061531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698799, 34.465263, 32.547237>,  <33.571449, 34.629169, 31.786642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698799, 34.465263, 32.547237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795174, 34.852642, 32.521767>,  <33.852997, 35.085072, 32.506485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795174, 34.852642, 32.521767>,  <33.698799, 34.465263, 32.547237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795174, 34.852642, 32.521767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534449, 0.187159, 0.824218,
		0.810132, -0.164550, 0.562680,
		0.240935, 0.968449, -0.063680,
		33.867455, 35.143177, 32.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014477, 34.725224, 33.205990>,  <33.698799, 34.465263, 32.547237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014477, 34.725224, 33.205990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870056, 35.044746, 33.013512>,  <33.783405, 35.236462, 32.898026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870056, 35.044746, 33.013512>,  <34.014477, 34.725224, 33.205990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870056, 35.044746, 33.013512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481877, 0.281964, 0.829633,
		0.798396, 0.531417, 0.283124,
		-0.361051, 0.798807, -0.481197,
		33.761742, 35.284389, 32.869152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120365, 35.290249, 33.616837>,  <34.014477, 34.725224, 33.205990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120365, 35.290249, 33.616837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823673, 35.399044, 33.371605>,  <33.645660, 35.464321, 33.224464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823673, 35.399044, 33.371605>,  <34.120365, 35.290249, 33.616837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823673, 35.399044, 33.371605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464299, 0.451428, 0.761997,
		0.484012, 0.849846, -0.208554,
		-0.741727, 0.271984, -0.613079,
		33.601154, 35.480640, 33.187679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839161, 35.970676, 33.763905>,  <34.120365, 35.290249, 33.616837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839161, 35.970676, 33.763905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537090, 35.795467, 33.568832>,  <33.355846, 35.690342, 33.451790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537090, 35.795467, 33.568832>,  <33.839161, 35.970676, 33.763905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537090, 35.795467, 33.568832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655087, 0.531214, 0.537282,
		0.023722, 0.725221, -0.688108,
		-0.755181, -0.438025, -0.487684,
		33.310535, 35.664059, 33.422527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343304, 36.538429, 33.614162>,  <33.839161, 35.970676, 33.763905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343304, 36.538429, 33.614162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141796, 36.193569, 33.592548>,  <33.020889, 35.986652, 33.579582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141796, 36.193569, 33.592548>,  <33.343304, 36.538429, 33.614162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141796, 36.193569, 33.592548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729517, 0.391108, 0.561106,
		-0.462623, 0.322086, -0.825979,
		-0.503771, -0.862146, -0.054032,
		32.990665, 35.934925, 33.576340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983025, 36.724365, 33.401680>,  <33.343304, 36.538429, 33.614162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983025, 36.724365, 33.401680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848934, 37.092922, 33.480328>,  <33.768482, 37.314056, 33.527515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848934, 37.092922, 33.480328>,  <33.983025, 36.724365, 33.401680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848934, 37.092922, 33.480328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931809, 0.355067, -0.075229,
		-0.139129, 0.157993, -0.977590,
		-0.335224, 0.921393, 0.196619,
		33.748367, 37.369339, 33.539314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081539, 37.254917, 32.880554>,  <33.983025, 36.724365, 33.401680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081539, 37.254917, 32.880554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121052, 37.423618, 33.241081>,  <34.144760, 37.524837, 33.457397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121052, 37.423618, 33.241081>,  <34.081539, 37.254917, 32.880554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121052, 37.423618, 33.241081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693228, 0.620639, -0.366390,
		-0.713917, 0.661009, -0.231063,
		0.098781, 0.421751, 0.901315,
		34.150684, 37.550144, 33.511475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768078, 37.935822, 32.849545>,  <34.081539, 37.254917, 32.880554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768078, 37.935822, 32.849545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051975, 37.888393, 33.127308>,  <34.222313, 37.859936, 33.293964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051975, 37.888393, 33.127308>,  <33.768078, 37.935822, 32.849545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051975, 37.888393, 33.127308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609291, 0.598090, -0.520627,
		-0.353589, 0.792609, 0.496735,
		0.709746, -0.118568, 0.694408,
		34.264900, 37.852821, 33.335629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000675, 38.607521, 33.051849>,  <33.768078, 37.935822, 32.849545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000675, 38.607521, 33.051849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301437, 38.356003, 33.131104>,  <34.481895, 38.205090, 33.178658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301437, 38.356003, 33.131104>,  <34.000675, 38.607521, 33.051849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301437, 38.356003, 33.131104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601967, 0.532242, -0.595277,
		0.268851, 0.566861, 0.778709,
		0.751901, -0.628798, 0.198138,
		34.527008, 38.167362, 33.190544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634216, 39.049847, 33.178986>,  <34.000675, 38.607521, 33.051849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634216, 39.049847, 33.178986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756264, 38.681835, 33.080643>,  <34.829494, 38.461029, 33.021637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756264, 38.681835, 33.080643>,  <34.634216, 39.049847, 33.178986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756264, 38.681835, 33.080643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678738, 0.391189, -0.621518,
		0.667993, 0.022765, 0.743820,
		0.305123, -0.920029, -0.245860,
		34.847801, 38.405827, 33.006886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330811, 39.081230, 33.115856>,  <34.634216, 39.049847, 33.178986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330811, 39.081230, 33.115856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262859, 38.750263, 32.901749>,  <35.222088, 38.551682, 32.773285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262859, 38.750263, 32.901749>,  <35.330811, 39.081230, 33.115856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262859, 38.750263, 32.901749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612314, 0.336965, -0.715210,
		0.772148, -0.449253, 0.449398,
		-0.169879, -0.827421, -0.535271,
		35.211895, 38.502037, 32.741169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934856, 38.914886, 32.780190>,  <35.330811, 39.081230, 33.115856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934856, 38.914886, 32.780190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674572, 38.703178, 32.562401>,  <35.518402, 38.576153, 32.431728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674572, 38.703178, 32.562401>,  <35.934856, 38.914886, 32.780190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674572, 38.703178, 32.562401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582734, 0.111640, -0.804958,
		0.486828, -0.841075, 0.235780,
		-0.650707, -0.529273, -0.544472,
		35.479359, 38.544395, 32.399059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283794, 38.395096, 32.312832>,  <35.934856, 38.914886, 32.780190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283794, 38.395096, 32.312832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926998, 38.424274, 32.134380>,  <35.712921, 38.441780, 32.027309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926998, 38.424274, 32.134380>,  <36.283794, 38.395096, 32.312832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926998, 38.424274, 32.134380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431326, -0.158051, -0.888244,
		-0.135296, -0.984734, 0.109520,
		-0.891994, 0.072937, -0.446125,
		35.659401, 38.446159, 32.000542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335117, 37.820538, 31.826078>,  <36.283794, 38.395096, 32.312832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335117, 37.820538, 31.826078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039238, 38.065514, 31.714539>,  <35.861710, 38.212502, 31.647615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039238, 38.065514, 31.714539>,  <36.335117, 37.820538, 31.826078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039238, 38.065514, 31.714539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393724, 0.057835, -0.917407,
		-0.545732, -0.788397, -0.283914,
		-0.739701, 0.612442, -0.278848,
		35.817329, 38.249245, 31.630884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012466, 37.505253, 31.296322>,  <36.335117, 37.820538, 31.826078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012466, 37.505253, 31.296322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909214, 37.886398, 31.232552>,  <35.847263, 38.115086, 31.194288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909214, 37.886398, 31.232552>,  <36.012466, 37.505253, 31.296322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909214, 37.886398, 31.232552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132021, -0.128681, -0.982859,
		-0.957047, -0.274755, -0.092581,
		-0.258132, 0.952864, -0.159427,
		35.831776, 38.172256, 31.184723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650295, 37.421574, 30.675200>,  <36.012466, 37.505253, 31.296322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650295, 37.421574, 30.675200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728058, 37.812073, 30.713444>,  <35.774715, 38.046371, 30.736391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728058, 37.812073, 30.713444>,  <35.650295, 37.421574, 30.675200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728058, 37.812073, 30.713444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234191, 0.048458, -0.970982,
		-0.952555, 0.211157, -0.219208,
		0.194407, 0.976250, 0.095610,
		35.786381, 38.104946, 30.742126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239880, 37.795517, 30.163916>,  <35.650295, 37.421574, 30.675200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239880, 37.795517, 30.163916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539032, 38.045509, 30.253428>,  <35.718525, 38.195503, 30.307135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539032, 38.045509, 30.253428>,  <35.239880, 37.795517, 30.163916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539032, 38.045509, 30.253428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198072, 0.111657, -0.973807,
		-0.633594, 0.772616, -0.040285,
		0.747881, 0.624978, 0.223779,
		35.763397, 38.233002, 30.320560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185966, 38.332565, 29.638819>,  <35.239880, 37.795517, 30.163916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185966, 38.332565, 29.638819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556023, 38.342361, 29.790352>,  <35.778057, 38.348240, 29.881271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556023, 38.342361, 29.790352>,  <35.185966, 38.332565, 29.638819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556023, 38.342361, 29.790352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371977, 0.140779, -0.917505,
		-0.075803, 0.989738, 0.121130,
		0.925142, 0.024492, 0.378831,
		35.833565, 38.349709, 29.904001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478573, 39.021015, 29.267403>,  <35.185966, 38.332565, 29.638819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478573, 39.021015, 29.267403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774433, 38.780247, 29.387814>,  <35.951950, 38.635784, 29.460060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774433, 38.780247, 29.387814>,  <35.478573, 39.021015, 29.267403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774433, 38.780247, 29.387814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462304, 0.129373, -0.877233,
		0.489079, 0.788007, 0.373960,
		0.739646, -0.601920, 0.301026,
		35.996326, 38.599670, 29.478121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034828, 39.365326, 29.207989>,  <35.478573, 39.021015, 29.267403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034828, 39.365326, 29.207989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160072, 38.985527, 29.199903>,  <36.235218, 38.757648, 29.195053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160072, 38.985527, 29.199903>,  <36.034828, 39.365326, 29.207989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160072, 38.985527, 29.199903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584570, 0.209457, -0.783841,
		0.748492, 0.233613, 0.620633,
		0.313111, -0.949501, -0.020214,
		36.254005, 38.700676, 29.193840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741188, 39.414852, 29.034807>,  <36.034828, 39.365326, 29.207989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741188, 39.414852, 29.034807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671440, 39.023144, 28.993570>,  <36.629593, 38.788120, 28.968828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671440, 39.023144, 28.993570>,  <36.741188, 39.414852, 29.034807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671440, 39.023144, 28.993570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541582, -0.007939, -0.840610,
		0.822365, -0.202410, 0.531739,
		-0.174369, -0.979269, -0.103093,
		36.619129, 38.729362, 28.962643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456142, 39.024025, 28.927221>,  <36.741188, 39.414852, 29.034807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456142, 39.024025, 28.927221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159500, 38.807472, 28.768763>,  <36.981514, 38.677540, 28.673687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159500, 38.807472, 28.768763>,  <37.456142, 39.024025, 28.927221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159500, 38.807472, 28.768763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531457, -0.113791, -0.839408,
		0.409361, -0.833042, 0.372108,
		-0.741604, -0.541381, -0.396145,
		36.937019, 38.645058, 28.649920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783932, 38.471508, 28.557285>,  <37.456142, 39.024025, 28.927221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783932, 38.471508, 28.557285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419121, 38.515766, 28.399315>,  <37.200233, 38.542320, 28.304533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419121, 38.515766, 28.399315>,  <37.783932, 38.471508, 28.557285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419121, 38.515766, 28.399315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389258, -0.069777, -0.918482,
		-0.129189, -0.991407, 0.020566,
		-0.912024, 0.110653, -0.394928,
		37.145512, 38.548962, 28.280836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732765, 37.881340, 28.100201>,  <37.783932, 38.471508, 28.557285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732765, 37.881340, 28.100201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.475166, 38.170036, 27.998724>,  <37.320606, 38.343254, 27.937838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.475166, 38.170036, 27.998724>,  <37.732765, 37.881340, 28.100201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475166, 38.170036, 27.998724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381049, 0.015068, -0.924432,
		-0.663377, -0.692000, -0.284722,
		-0.643997, 0.721740, -0.253691,
		37.281967, 38.386559, 27.922617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549435, 37.686878, 27.385391>,  <37.732765, 37.881340, 28.100201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549435, 37.686878, 27.385391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426426, 38.066750, 27.409208>,  <37.352619, 38.294670, 27.423498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426426, 38.066750, 27.409208>,  <37.549435, 37.686878, 27.385391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426426, 38.066750, 27.409208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136649, 0.106000, -0.984932,
		-0.941678, -0.294752, -0.162369,
		-0.307522, 0.949676, 0.059540,
		37.334167, 38.351654, 27.427071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275410, 37.862812, 26.753185>,  <37.549435, 37.686878, 27.385391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275410, 37.862812, 26.753185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352486, 38.238075, 26.868231>,  <37.398731, 38.463234, 26.937258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352486, 38.238075, 26.868231>,  <37.275410, 37.862812, 26.753185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352486, 38.238075, 26.868231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216826, 0.245154, -0.944926,
		-0.957004, 0.244443, -0.156179,
		0.192693, 0.938162, 0.287615,
		37.410294, 38.519524, 26.954515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858482, 38.430782, 26.328030>,  <37.275410, 37.862812, 26.753185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858482, 38.430782, 26.328030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191612, 38.596764, 26.474575>,  <37.391491, 38.696354, 26.562502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191612, 38.596764, 26.474575>,  <36.858482, 38.430782, 26.328030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191612, 38.596764, 26.474575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320080, 0.178977, -0.930331,
		-0.451615, 0.892065, 0.016237,
		0.832822, 0.414954, 0.366361,
		37.441460, 38.721249, 26.584484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901371, 38.986504, 25.918970>,  <36.858482, 38.430782, 26.328030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901371, 38.986504, 25.918970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256413, 39.018555, 26.100407>,  <37.469437, 39.037785, 26.209269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256413, 39.018555, 26.100407>,  <36.901371, 38.986504, 25.918970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256413, 39.018555, 26.100407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398434, 0.360550, -0.843359,
		-0.231119, 0.929292, 0.288099,
		0.887600, 0.080128, 0.453591,
		37.522694, 39.042595, 26.236485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174427, 39.659851, 25.641945>,  <36.901371, 38.986504, 25.918970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174427, 39.659851, 25.641945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473412, 39.438808, 25.789415>,  <37.652802, 39.306183, 25.877897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473412, 39.438808, 25.789415>,  <37.174427, 39.659851, 25.641945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473412, 39.438808, 25.789415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524046, 0.149434, -0.838478,
		0.408254, 0.819937, 0.401287,
		0.747465, -0.552605, 0.368678,
		37.697651, 39.273026, 25.900019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928989, 40.036324, 25.593344>,  <37.174427, 39.659851, 25.641945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928989, 40.036324, 25.593344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014923, 39.646454, 25.618208>,  <38.066483, 39.412533, 25.633127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014923, 39.646454, 25.618208>,  <37.928989, 40.036324, 25.593344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014923, 39.646454, 25.618208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702199, 0.109916, -0.703445,
		0.678794, 0.194774, 0.708026,
		0.214837, -0.974670, 0.062160,
		38.079372, 39.354053, 25.636856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743088, 39.986980, 25.624338>,  <37.928989, 40.036324, 25.593344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743088, 39.986980, 25.624338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604809, 39.627377, 25.516804>,  <38.521843, 39.411613, 25.452282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604809, 39.627377, 25.516804>,  <38.743088, 39.986980, 25.624338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604809, 39.627377, 25.516804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659772, -0.029154, -0.750900,
		0.667230, -0.436953, 0.603221,
		-0.345694, -0.899011, -0.268838,
		38.501099, 39.357674, 25.436152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361588, 39.589947, 25.542240>,  <38.743088, 39.986980, 25.624338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361588, 39.589947, 25.542240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077602, 39.395180, 25.338724>,  <38.907211, 39.278320, 25.216614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077602, 39.395180, 25.338724>,  <39.361588, 39.589947, 25.542240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077602, 39.395180, 25.338724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617965, -0.084239, -0.781680,
		0.337753, -0.869376, 0.360704,
		-0.709959, -0.486917, -0.508792,
		38.864616, 39.249104, 25.186087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694084, 39.042801, 25.282299>,  <39.361588, 39.589947, 25.542240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694084, 39.042801, 25.282299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377563, 39.098080, 25.044060>,  <39.187649, 39.131245, 24.901115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377563, 39.098080, 25.044060>,  <39.694084, 39.042801, 25.282299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377563, 39.098080, 25.044060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582642, -0.124912, -0.803072,
		-0.185378, -0.982496, 0.018325,
		-0.791304, 0.138195, -0.595600,
		39.140171, 39.139538, 24.865379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043961, 38.300964, 25.232630>,  <39.694084, 39.042801, 25.282299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043961, 38.300964, 25.232630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.434624, 38.331383, 25.312990>,  <40.669022, 38.349636, 25.361206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.434624, 38.331383, 25.312990>,  <40.043961, 38.300964, 25.232630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434624, 38.331383, 25.312990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211299, 0.171587, 0.962242,
		0.038707, -0.982229, 0.183651,
		0.976655, 0.076051, 0.200902,
		40.727619, 38.354198, 25.373260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205627, 37.767563, 25.782255>,  <40.043961, 38.300964, 25.232630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205627, 37.767563, 25.782255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478603, 38.059258, 25.802198>,  <40.642391, 38.234276, 25.814165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478603, 38.059258, 25.802198>,  <40.205627, 37.767563, 25.782255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478603, 38.059258, 25.802198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152062, 0.074922, 0.985527,
		0.714945, -0.680149, 0.162019,
		0.682444, 0.729235, 0.049859,
		40.683338, 38.278027, 25.817156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699734, 37.558998, 26.242462>,  <40.205627, 37.767563, 25.782255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699734, 37.558998, 26.242462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740665, 37.956886, 26.239298>,  <40.765224, 38.195618, 26.237400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740665, 37.956886, 26.239298>,  <40.699734, 37.558998, 26.242462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740665, 37.956886, 26.239298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326509, 0.041095, 0.944300,
		0.939639, -0.094043, 0.328990,
		0.102325, 0.994720, -0.007909,
		40.771362, 38.255302, 26.236925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033241, 37.782970, 26.909142>,  <40.699734, 37.558998, 26.242462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033241, 37.782970, 26.909142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902397, 38.139286, 26.782970>,  <40.823891, 38.353073, 26.707268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902397, 38.139286, 26.782970>,  <41.033241, 37.782970, 26.909142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902397, 38.139286, 26.782970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238143, 0.245313, 0.939739,
		0.914485, 0.382520, 0.131889,
		-0.327115, 0.890786, -0.315429,
		40.804264, 38.406521, 26.688341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418732, 38.266251, 27.329296>,  <41.033241, 37.782970, 26.909142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418732, 38.266251, 27.329296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.114079, 38.471790, 27.171371>,  <40.931286, 38.595112, 27.076616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.114079, 38.471790, 27.171371>,  <41.418732, 38.266251, 27.329296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114079, 38.471790, 27.171371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230145, 0.355052, 0.906075,
		0.605762, 0.780961, -0.152161,
		-0.761634, 0.513846, -0.394811,
		40.885590, 38.625946, 27.052929>
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
