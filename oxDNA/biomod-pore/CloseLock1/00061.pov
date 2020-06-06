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
	<24.441593, 35.175091, 34.715130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258417, 35.042343, 35.045017>,  <24.148512, 34.962696, 35.242950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258417, 35.042343, 35.045017>,  <24.441593, 35.175091, 34.715130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258417, 35.042343, 35.045017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644240, 0.515367, 0.565112,
		-0.612574, 0.790101, -0.022204,
		-0.457939, -0.331868, 0.824715,
		24.121035, 34.942783, 35.292431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.584343, 35.883747, 34.841587>,  <24.441593, 35.175091, 34.715130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.584343, 35.883747, 34.841587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730667, 36.130569, 35.120277>,  <24.818462, 36.278664, 35.287491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730667, 36.130569, 35.120277>,  <24.584343, 35.883747, 34.841587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730667, 36.130569, 35.120277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689812, 0.322778, -0.648054,
		-0.624774, 0.717672, -0.307579,
		0.365810, 0.617059, 0.696721,
		24.840410, 36.315689, 35.329292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712814, 36.567406, 34.556820>,  <24.584343, 35.883747, 34.841587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712814, 36.567406, 34.556820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954756, 36.480354, 34.863228>,  <25.099920, 36.428123, 35.047073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954756, 36.480354, 34.863228>,  <24.712814, 36.567406, 34.556820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954756, 36.480354, 34.863228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789068, 0.293456, -0.539681,
		-0.107346, 0.930872, 0.349218,
		0.604855, -0.217624, 0.766023,
		25.136211, 36.415066, 35.093033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126253, 37.151890, 34.799446>,  <24.712814, 36.567406, 34.556820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126253, 37.151890, 34.799446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325428, 36.812473, 34.871044>,  <25.444933, 36.608826, 34.914005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325428, 36.812473, 34.871044>,  <25.126253, 37.151890, 34.799446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325428, 36.812473, 34.871044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798583, 0.368182, -0.476138,
		0.338117, 0.380032, 0.860960,
		0.497938, -0.848538, 0.178999,
		25.474810, 36.557911, 34.924744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740578, 37.513912, 34.821903>,  <25.126253, 37.151890, 34.799446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740578, 37.513912, 34.821903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785841, 37.125534, 34.737556>,  <25.813000, 36.892509, 34.686947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785841, 37.125534, 34.737556>,  <25.740578, 37.513912, 34.821903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785841, 37.125534, 34.737556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889206, 0.193655, -0.414500,
		0.443291, -0.140602, 0.885282,
		0.113160, -0.970942, -0.210870,
		25.819790, 36.834251, 34.674294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385302, 37.242294, 35.102985>,  <25.740578, 37.513912, 34.821903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385302, 37.242294, 35.102985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235115, 37.099239, 34.760963>,  <26.145002, 37.013409, 34.555752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235115, 37.099239, 34.760963>,  <26.385302, 37.242294, 35.102985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235115, 37.099239, 34.760963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857387, 0.216359, -0.466986,
		0.352010, -0.908452, 0.225397,
		-0.375468, -0.357636, -0.855056,
		26.122475, 36.991947, 34.504448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115433, 36.990734, 35.211548>,  <26.385302, 37.242294, 35.102985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115433, 36.990734, 35.211548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444746, 36.931496, 35.430737>,  <27.642334, 36.895954, 35.562252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444746, 36.931496, 35.430737>,  <27.115433, 36.990734, 35.211548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444746, 36.931496, 35.430737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556437, 0.019766, -0.830654,
		0.112183, 0.988776, 0.098678,
		0.823282, -0.148093, 0.547974,
		27.691730, 36.887066, 35.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531572, 37.478897, 35.027454>,  <27.115433, 36.990734, 35.211548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531572, 37.478897, 35.027454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786352, 37.227207, 35.205612>,  <27.939220, 37.076195, 35.312508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786352, 37.227207, 35.205612>,  <27.531572, 37.478897, 35.027454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786352, 37.227207, 35.205612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654867, 0.136793, -0.743261,
		0.406751, 0.765091, 0.499189,
		0.636948, -0.629225, 0.445392,
		27.977436, 37.038441, 35.339230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161476, 37.847332, 35.147217>,  <27.531572, 37.478897, 35.027454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161476, 37.847332, 35.147217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274450, 37.463753, 35.137089>,  <28.342236, 37.233604, 35.131012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274450, 37.463753, 35.137089>,  <28.161476, 37.847332, 35.147217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274450, 37.463753, 35.137089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657727, 0.212797, -0.722574,
		0.698302, 0.187426, 0.690830,
		0.282435, -0.958952, -0.025322,
		28.359180, 37.176067, 35.129494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833090, 37.888870, 35.188961>,  <28.161476, 37.847332, 35.147217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833090, 37.888870, 35.188961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793991, 37.510391, 35.065571>,  <28.770533, 37.283302, 34.991539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793991, 37.510391, 35.065571>,  <28.833090, 37.888870, 35.188961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793991, 37.510391, 35.065571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718872, 0.147220, -0.679374,
		0.688236, -0.288158, 0.665805,
		-0.097747, -0.946198, -0.308471,
		28.764668, 37.226532, 34.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509344, 37.678585, 35.130878>,  <28.833090, 37.888870, 35.188961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509344, 37.678585, 35.130878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292776, 37.425659, 34.909233>,  <29.162836, 37.273903, 34.776245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292776, 37.425659, 34.909233>,  <29.509344, 37.678585, 35.130878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292776, 37.425659, 34.909233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716841, -0.002792, -0.697231,
		0.439324, -0.774706, 0.454781,
		-0.541419, -0.632316, -0.554114,
		29.130350, 37.235966, 34.743000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013742, 37.227512, 34.804657>,  <29.509344, 37.678585, 35.130878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013742, 37.227512, 34.804657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682138, 37.186417, 34.584770>,  <29.483175, 37.161758, 34.452839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682138, 37.186417, 34.584770>,  <30.013742, 37.227512, 34.804657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682138, 37.186417, 34.584770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467419, 0.412362, -0.781970,
		0.307018, -0.905209, -0.293832,
		-0.829011, -0.102736, -0.549715,
		29.433435, 37.155594, 34.419857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161860, 36.886257, 34.183071>,  <30.013742, 37.227512, 34.804657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161860, 36.886257, 34.183071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820541, 37.078239, 34.101555>,  <29.615751, 37.193428, 34.052647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820541, 37.078239, 34.101555>,  <30.161860, 36.886257, 34.183071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820541, 37.078239, 34.101555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441042, 0.455851, -0.773099,
		-0.278155, -0.749561, -0.600656,
		-0.853295, 0.479956, -0.203791,
		29.564552, 37.222225, 34.040417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917202, 36.618263, 33.470078>,  <30.161860, 36.886257, 34.183071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917202, 36.618263, 33.470078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757202, 36.976025, 33.550121>,  <29.661201, 37.190681, 33.598148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757202, 36.976025, 33.550121>,  <29.917202, 36.618263, 33.470078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757202, 36.976025, 33.550121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320302, 0.340985, -0.883819,
		-0.858723, -0.289435, -0.422873,
		-0.400002, 0.894403, 0.200105,
		29.637201, 37.244347, 33.610153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549871, 36.739033, 32.855629>,  <29.917202, 36.618263, 33.470078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549871, 36.739033, 32.855629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628189, 37.079922, 33.049694>,  <29.675180, 37.284454, 33.166134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628189, 37.079922, 33.049694>,  <29.549871, 36.739033, 32.855629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628189, 37.079922, 33.049694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312039, 0.414877, -0.854698,
		-0.929675, 0.318736, -0.184696,
		0.195796, 0.852223, 0.485159,
		29.686928, 37.335590, 33.195240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272881, 37.242912, 32.477219>,  <29.549871, 36.739033, 32.855629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272881, 37.242912, 32.477219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528784, 37.467106, 32.687580>,  <29.682325, 37.601620, 32.813797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528784, 37.467106, 32.687580>,  <29.272881, 37.242912, 32.477219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528784, 37.467106, 32.687580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268874, 0.477805, -0.836307,
		-0.720011, 0.676435, 0.154981,
		0.639758, 0.560480, 0.525901,
		29.720711, 37.635250, 32.845352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264870, 37.747410, 32.014339>,  <29.272881, 37.242912, 32.477219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264870, 37.747410, 32.014339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571486, 37.860981, 32.244751>,  <29.755455, 37.929123, 32.382996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571486, 37.860981, 32.244751>,  <29.264870, 37.747410, 32.014339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571486, 37.860981, 32.244751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197906, 0.748864, -0.632484,
		-0.610944, 0.598822, 0.517842,
		0.766538, 0.283929, 0.576024,
		29.801447, 37.946159, 32.417557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206816, 38.444695, 32.333210>,  <29.264870, 37.747410, 32.014339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206816, 38.444695, 32.333210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594809, 38.347771, 32.324986>,  <29.827604, 38.289616, 32.320049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594809, 38.347771, 32.324986>,  <29.206816, 38.444695, 32.333210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594809, 38.347771, 32.324986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202145, 0.850430, -0.485703,
		0.135176, 0.466966, 0.873882,
		0.969982, -0.242307, -0.020563,
		29.885803, 38.275078, 32.318817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459406, 39.078823, 32.272346>,  <29.206816, 38.444695, 32.333210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459406, 39.078823, 32.272346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782001, 38.857708, 32.188442>,  <29.975559, 38.725040, 32.138100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782001, 38.857708, 32.188442>,  <29.459406, 39.078823, 32.272346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782001, 38.857708, 32.188442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346958, 0.729754, -0.589133,
		0.478740, 0.402351, 0.780334,
		0.806491, -0.552785, -0.209764,
		30.023949, 38.691872, 32.125511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000608, 39.544090, 32.406101>,  <29.459406, 39.078823, 32.272346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000608, 39.544090, 32.406101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161997, 39.251129, 32.186722>,  <30.258829, 39.075352, 32.055096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161997, 39.251129, 32.186722>,  <30.000608, 39.544090, 32.406101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161997, 39.251129, 32.186722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534020, 0.675212, -0.508834,
		0.742990, -0.087581, 0.663547,
		0.403471, -0.732406, -0.548446,
		30.283037, 39.031406, 32.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779497, 39.663570, 32.430367>,  <30.000608, 39.544090, 32.406101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779497, 39.663570, 32.430367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685791, 39.458618, 32.099892>,  <30.629568, 39.335648, 31.901606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685791, 39.458618, 32.099892>,  <30.779497, 39.663570, 32.430367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685791, 39.458618, 32.099892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318392, 0.762534, -0.563177,
		0.918557, -0.394984, -0.015497,
		-0.234263, -0.512376, -0.826191,
		30.615511, 39.304905, 31.852034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325598, 39.618690, 32.068493>,  <30.779497, 39.663570, 32.430367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325598, 39.618690, 32.068493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028564, 39.577332, 31.803804>,  <30.850344, 39.552517, 31.644991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028564, 39.577332, 31.803804>,  <31.325598, 39.618690, 32.068493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028564, 39.577332, 31.803804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363256, 0.767892, -0.527624,
		0.562687, -0.632181, -0.532665,
		-0.742583, -0.103394, -0.661726,
		30.805790, 39.546314, 31.605288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547234, 39.799816, 31.387686>,  <31.325598, 39.618690, 32.068493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547234, 39.799816, 31.387686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158997, 39.843834, 31.302044>,  <30.926054, 39.870247, 31.250660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158997, 39.843834, 31.302044>,  <31.547234, 39.799816, 31.387686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158997, 39.843834, 31.302044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222781, 0.747589, -0.625683,
		0.091206, -0.654981, -0.750121,
		-0.970592, 0.110047, -0.214102,
		30.867819, 39.876846, 31.237814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445761, 39.915615, 30.648846>,  <31.547234, 39.799816, 31.387686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445761, 39.915615, 30.648846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089506, 40.030579, 30.789793>,  <30.875753, 40.099556, 30.874361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089506, 40.030579, 30.789793>,  <31.445761, 39.915615, 30.648846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089506, 40.030579, 30.789793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126367, 0.587945, -0.798969,
		-0.436805, -0.756118, -0.487325,
		-0.890636, 0.287412, 0.352366,
		30.822315, 40.116802, 30.895502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013895, 39.976276, 30.047415>,  <31.445761, 39.915615, 30.648846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013895, 39.976276, 30.047415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807596, 40.161530, 30.335724>,  <30.683817, 40.272682, 30.508709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807596, 40.161530, 30.335724>,  <31.013895, 39.976276, 30.047415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807596, 40.161530, 30.335724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327137, 0.671093, -0.665294,
		-0.791825, -0.578914, -0.194607,
		-0.515747, 0.463133, 0.720772,
		30.652872, 40.300468, 30.551956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264385, 39.888821, 29.997169>,  <31.013895, 39.976276, 30.047415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264385, 39.888821, 29.997169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356001, 40.230827, 30.183285>,  <30.410971, 40.436031, 30.294954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356001, 40.230827, 30.183285>,  <30.264385, 39.888821, 29.997169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356001, 40.230827, 30.183285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505888, 0.512926, -0.693530,
		-0.831636, -0.076538, 0.550021,
		0.229039, 0.855013, 0.465288,
		30.424713, 40.487331, 30.322870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620600, 40.336323, 30.064814>,  <30.264385, 39.888821, 29.997169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620600, 40.336323, 30.064814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934664, 40.583832, 30.054676>,  <30.123102, 40.732338, 30.048594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934664, 40.583832, 30.054676>,  <29.620600, 40.336323, 30.064814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934664, 40.583832, 30.054676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540542, 0.664771, -0.515649,
		-0.302222, 0.418566, 0.856425,
		0.785160, 0.618774, -0.025345,
		30.170212, 40.769463, 30.047073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678993, 40.956387, 30.489655>,  <29.620600, 40.336323, 30.064814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678993, 40.956387, 30.489655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876566, 41.028183, 30.149345>,  <29.995110, 41.071259, 29.945160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876566, 41.028183, 30.149345>,  <29.678993, 40.956387, 30.489655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876566, 41.028183, 30.149345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673157, 0.698260, -0.243500,
		0.550356, 0.692977, 0.465717,
		0.493932, 0.179489, -0.850773,
		30.024746, 41.082031, 29.894114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827383, 41.811806, 30.334541>,  <29.678993, 40.956387, 30.489655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827383, 41.811806, 30.334541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776722, 41.568989, 30.020737>,  <29.746325, 41.423298, 29.832455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776722, 41.568989, 30.020737>,  <29.827383, 41.811806, 30.334541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776722, 41.568989, 30.020737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718517, 0.601401, -0.349357,
		0.683880, 0.519436, -0.512342,
		-0.126655, -0.607045, -0.784510,
		29.738726, 41.386875, 29.785383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040688, 42.153961, 29.649687>,  <29.827383, 41.811806, 30.334541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040688, 42.153961, 29.649687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751595, 41.879368, 29.617678>,  <29.578138, 41.714611, 29.598473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751595, 41.879368, 29.617678>,  <30.040688, 42.153961, 29.649687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751595, 41.879368, 29.617678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625337, 0.698836, -0.347248,
		0.294302, -0.200926, -0.934353,
		-0.722731, -0.686482, -0.080022,
		29.534775, 41.673424, 29.593672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731359, 41.921425, 28.921350>,  <30.040688, 42.153961, 29.649687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731359, 41.921425, 28.921350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497396, 41.948708, 29.244642>,  <29.357019, 41.965076, 29.438618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497396, 41.948708, 29.244642>,  <29.731359, 41.921425, 28.921350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497396, 41.948708, 29.244642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448252, 0.803282, -0.392184,
		-0.675983, -0.591681, -0.439273,
		-0.584908, 0.068205, 0.808227,
		29.321924, 41.969170, 29.487110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048132, 42.155590, 28.757280>,  <29.731359, 41.921425, 28.921350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048132, 42.155590, 28.757280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068760, 42.258408, 29.143290>,  <29.081137, 42.320099, 29.374895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068760, 42.258408, 29.143290>,  <29.048132, 42.155590, 28.757280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068760, 42.258408, 29.143290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571548, 0.800005, -0.182550,
		-0.818947, -0.542142, 0.188171,
		0.051569, 0.257048, 0.965022,
		29.084230, 42.335522, 29.432796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326626, 42.160069, 28.914917>,  <29.048132, 42.155590, 28.757280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326626, 42.160069, 28.914917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571598, 42.419987, 29.095005>,  <28.718582, 42.575939, 29.203058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571598, 42.419987, 29.095005>,  <28.326626, 42.160069, 28.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571598, 42.419987, 29.095005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499728, 0.759516, -0.416421,
		-0.612536, 0.030042, 0.789871,
		0.612430, 0.649794, 0.450218,
		28.755327, 42.614925, 29.230070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831329, 42.700111, 29.281425>,  <28.326626, 42.160069, 28.914917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831329, 42.700111, 29.281425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204885, 42.801697, 29.180746>,  <28.429020, 42.862648, 29.120338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204885, 42.801697, 29.180746>,  <27.831329, 42.700111, 29.281425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204885, 42.801697, 29.180746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357367, 0.685997, -0.633796,
		0.011705, 0.681845, 0.731403,
		0.933891, 0.253961, -0.251698,
		28.485052, 42.877884, 29.105236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048557, 43.435745, 29.344055>,  <27.831329, 42.700111, 29.281425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048557, 43.435745, 29.344055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270908, 43.262978, 29.059959>,  <28.404320, 43.159317, 28.889502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270908, 43.262978, 29.059959>,  <28.048557, 43.435745, 29.344055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270908, 43.262978, 29.059959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353413, 0.650547, -0.672226,
		0.752395, 0.624684, 0.208979,
		0.555879, -0.431924, -0.710240,
		28.437672, 43.133400, 28.846888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246271, 43.253788, 29.449852>,  <28.048557, 43.435745, 29.344055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246271, 43.253788, 29.449852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854494, 43.197647, 29.507807>,  <26.619427, 43.163963, 29.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854494, 43.197647, 29.507807>,  <27.246271, 43.253788, 29.449852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854494, 43.197647, 29.507807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194447, -0.465824, 0.863248,
		-0.053665, 0.873676, 0.483539,
		-0.979444, -0.140349, 0.144885,
		26.560661, 43.155540, 29.551271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110521, 43.415859, 30.115658>,  <27.246271, 43.253788, 29.449852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110521, 43.415859, 30.115658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780085, 43.209831, 30.024199>,  <26.581823, 43.086216, 29.969324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780085, 43.209831, 30.024199>,  <27.110521, 43.415859, 30.115658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780085, 43.209831, 30.024199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100146, -0.533454, 0.839880,
		-0.554567, 0.670919, 0.492263,
		-0.826091, -0.515068, -0.228646,
		26.532257, 43.055309, 29.955605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547209, 43.432236, 30.669708>,  <27.110521, 43.415859, 30.115658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547209, 43.432236, 30.669708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479961, 43.102711, 30.453165>,  <26.439613, 42.904995, 30.323238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479961, 43.102711, 30.453165>,  <26.547209, 43.432236, 30.669708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479961, 43.102711, 30.453165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231822, -0.500733, 0.833981,
		-0.958120, 0.265707, -0.106795,
		-0.168118, -0.823812, -0.541359,
		26.429525, 42.855568, 30.290758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072275, 42.995388, 31.129663>,  <26.547209, 43.432236, 30.669708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072275, 42.995388, 31.129663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172558, 42.739216, 30.839287>,  <26.232727, 42.585510, 30.665060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172558, 42.739216, 30.839287>,  <26.072275, 42.995388, 31.129663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172558, 42.739216, 30.839287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095519, -0.762597, 0.639782,
		-0.963339, -0.091057, -0.252362,
		0.250707, -0.640433, -0.725942,
		26.247770, 42.547085, 30.621504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601427, 42.443466, 31.222313>,  <26.072275, 42.995388, 31.129663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601427, 42.443466, 31.222313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923380, 42.295582, 31.036636>,  <26.116552, 42.206852, 30.925230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923380, 42.295582, 31.036636>,  <25.601427, 42.443466, 31.222313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923380, 42.295582, 31.036636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038071, -0.812777, 0.581329,
		-0.592209, -0.450231, -0.668267,
		0.804885, -0.369710, -0.464193,
		26.164845, 42.184669, 30.897379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521132, 41.799919, 31.303576>,  <25.601427, 42.443466, 31.222313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521132, 41.799919, 31.303576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907543, 41.820282, 31.202225>,  <26.139389, 41.832500, 31.141415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907543, 41.820282, 31.202225>,  <25.521132, 41.799919, 31.303576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907543, 41.820282, 31.202225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201084, -0.763921, 0.613180,
		-0.162344, -0.643298, -0.748206,
		0.966028, 0.050906, -0.253375,
		26.197351, 41.835552, 31.126213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661947, 41.188324, 31.260763>,  <25.521132, 41.799919, 31.303576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661947, 41.188324, 31.260763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015438, 41.371212, 31.300711>,  <26.227533, 41.480946, 31.324678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015438, 41.371212, 31.300711>,  <25.661947, 41.188324, 31.260763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015438, 41.371212, 31.300711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336885, -0.769617, 0.542400,
		0.324856, -0.445691, -0.834163,
		0.883729, 0.457219, 0.099868,
		26.280558, 41.508377, 31.330671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161081, 40.756733, 31.044580>,  <25.661947, 41.188324, 31.260763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161081, 40.756733, 31.044580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352989, 41.016544, 31.280523>,  <26.468134, 41.172432, 31.422089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352989, 41.016544, 31.280523>,  <26.161081, 40.756733, 31.044580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352989, 41.016544, 31.280523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386118, -0.759984, 0.522817,
		0.787868, -0.023076, -0.615412,
		0.479768, 0.649532, 0.589857,
		26.496920, 41.211403, 31.457479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874374, 40.555313, 31.070236>,  <26.161081, 40.756733, 31.044580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874374, 40.555313, 31.070236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823002, 40.775345, 31.400309>,  <26.792179, 40.907364, 31.598352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823002, 40.775345, 31.400309>,  <26.874374, 40.555313, 31.070236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823002, 40.775345, 31.400309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401611, -0.731942, 0.550427,
		0.906760, 0.402094, -0.126911,
		-0.128432, 0.550075, 0.825181,
		26.784472, 40.940369, 31.647863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545536, 40.505100, 31.417549>,  <26.874374, 40.555313, 31.070236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545536, 40.505100, 31.417549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301632, 40.639919, 31.704491>,  <27.155291, 40.720810, 31.876656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301632, 40.639919, 31.704491>,  <27.545536, 40.505100, 31.417549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301632, 40.639919, 31.704491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543180, -0.481407, 0.687898,
		0.577191, 0.809103, 0.110466,
		-0.609759, 0.337045, 0.717352,
		27.118704, 40.741032, 31.919697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949770, 40.648636, 31.988455>,  <27.545536, 40.505100, 31.417549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949770, 40.648636, 31.988455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594826, 40.634781, 32.172363>,  <27.381859, 40.626469, 32.282707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594826, 40.634781, 32.172363>,  <27.949770, 40.648636, 31.988455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594826, 40.634781, 32.172363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418860, -0.477401, 0.772428,
		0.192738, 0.878002, 0.438137,
		-0.887360, -0.034642, 0.459773,
		27.328617, 40.624390, 32.310295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110540, 40.844135, 32.699398>,  <27.949770, 40.648636, 31.988455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110540, 40.844135, 32.699398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780939, 40.618904, 32.674232>,  <27.583178, 40.483765, 32.659134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780939, 40.618904, 32.674232>,  <28.110540, 40.844135, 32.699398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780939, 40.618904, 32.674232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251896, -0.463536, 0.849519,
		-0.507512, 0.684158, 0.523793,
		-0.824003, -0.563082, -0.062914,
		27.533739, 40.449978, 32.655357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823399, 40.808922, 33.413918>,  <28.110540, 40.844135, 32.699398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823399, 40.808922, 33.413918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658592, 40.499569, 33.221199>,  <27.559710, 40.313957, 33.105568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658592, 40.499569, 33.221199>,  <27.823399, 40.808922, 33.413918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658592, 40.499569, 33.221199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152632, -0.579869, 0.800285,
		-0.898303, 0.256192, 0.356957,
		-0.412015, -0.773381, -0.481795,
		27.534988, 40.267555, 33.076660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429165, 40.393433, 33.853859>,  <27.823399, 40.808922, 33.413918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429165, 40.393433, 33.853859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483118, 40.115849, 33.570950>,  <27.515490, 39.949299, 33.401203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483118, 40.115849, 33.570950>,  <27.429165, 40.393433, 33.853859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483118, 40.115849, 33.570950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156942, -0.689821, 0.706764,
		-0.978354, -0.206329, 0.015868,
		0.134880, -0.693956, -0.707271,
		27.523582, 39.907661, 33.358768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144005, 39.889343, 34.087349>,  <27.429165, 40.393433, 33.853859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144005, 39.889343, 34.087349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357830, 39.705078, 33.803932>,  <27.486124, 39.594517, 33.633881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357830, 39.705078, 33.803932>,  <27.144005, 39.889343, 34.087349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357830, 39.705078, 33.803932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254345, -0.711822, 0.654689,
		-0.805949, -0.530186, -0.263344,
		0.534561, -0.460666, -0.708542,
		27.518198, 39.566879, 33.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031914, 39.166389, 34.238628>,  <27.144005, 39.889343, 34.087349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031914, 39.166389, 34.238628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360670, 39.143562, 34.011917>,  <27.557924, 39.129864, 33.875893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360670, 39.143562, 34.011917>,  <27.031914, 39.166389, 34.238628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360670, 39.143562, 34.011917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390393, -0.668137, 0.633393,
		-0.414831, -0.741846, -0.526858,
		0.821894, -0.057069, -0.566775,
		27.607239, 39.126442, 33.841885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359308, 38.407356, 34.193085>,  <27.031914, 39.166389, 34.238628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359308, 38.407356, 34.193085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642899, 38.666576, 34.081814>,  <27.813053, 38.822109, 34.015049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642899, 38.666576, 34.081814>,  <27.359308, 38.407356, 34.193085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642899, 38.666576, 34.081814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644888, -0.436097, 0.627645,
		0.285430, -0.624382, -0.727101,
		0.708977, 0.648048, -0.278182,
		27.855591, 38.860992, 33.998360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900311, 37.979511, 34.294930>,  <27.359308, 38.407356, 34.193085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900311, 37.979511, 34.294930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092039, 38.328484, 34.256748>,  <28.207075, 38.537868, 34.233841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092039, 38.328484, 34.256748>,  <27.900311, 37.979511, 34.294930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092039, 38.328484, 34.256748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721479, -0.329769, 0.608868,
		0.499719, -0.360711, -0.787508,
		0.479321, 0.872434, -0.095454,
		28.235836, 38.590214, 34.228111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622011, 37.765015, 34.499908>,  <27.900311, 37.979511, 34.294930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622011, 37.765015, 34.499908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615734, 38.164021, 34.527367>,  <28.611967, 38.403423, 34.543842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615734, 38.164021, 34.527367>,  <28.622011, 37.765015, 34.499908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615734, 38.164021, 34.527367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764529, -0.032276, 0.643781,
		0.644399, 0.062588, -0.762124,
		-0.015695, 0.997518, 0.068649,
		28.611025, 38.463276, 34.547962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350267, 38.057144, 34.350967>,  <28.622011, 37.765015, 34.499908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350267, 38.057144, 34.350967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152973, 38.324032, 34.574226>,  <29.034595, 38.484165, 34.708183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152973, 38.324032, 34.574226>,  <29.350267, 38.057144, 34.350967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152973, 38.324032, 34.574226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786131, 0.067176, 0.614399,
		0.372446, 0.741825, -0.557656,
		-0.493237, 0.667221, 0.558152,
		29.005001, 38.524197, 34.741673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919230, 38.518810, 34.510849>,  <29.350267, 38.057144, 34.350967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919230, 38.518810, 34.510849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612547, 38.583691, 34.759319>,  <29.428537, 38.622620, 34.908401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612547, 38.583691, 34.759319>,  <29.919230, 38.518810, 34.510849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612547, 38.583691, 34.759319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631710, 0.018061, 0.774994,
		0.114485, 0.986592, -0.116311,
		-0.766704, 0.162200, 0.621173,
		29.382536, 38.632351, 34.945671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126986, 38.944664, 34.915443>,  <29.919230, 38.518810, 34.510849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126986, 38.944664, 34.915443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836849, 38.787754, 35.141716>,  <29.662767, 38.693607, 35.277481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836849, 38.787754, 35.141716>,  <30.126986, 38.944664, 34.915443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836849, 38.787754, 35.141716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613508, 0.004348, 0.789676,
		-0.312230, 0.919838, 0.237510,
		-0.725342, -0.392275, 0.565685,
		29.619247, 38.670071, 35.311420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002874, 39.186195, 35.567520>,  <30.126986, 38.944664, 34.915443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002874, 39.186195, 35.567520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871075, 38.809685, 35.596992>,  <29.791996, 38.583778, 35.614674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871075, 38.809685, 35.596992>,  <30.002874, 39.186195, 35.567520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871075, 38.809685, 35.596992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619946, -0.156836, 0.768811,
		-0.712109, 0.298998, 0.635218,
		-0.329498, -0.941277, 0.073678,
		29.772226, 38.527302, 35.619095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676800, 39.179394, 36.237762>,  <30.002874, 39.186195, 35.567520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676800, 39.179394, 36.237762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813637, 38.833569, 36.090519>,  <29.895739, 38.626072, 36.002174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813637, 38.833569, 36.090519>,  <29.676800, 39.179394, 36.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813637, 38.833569, 36.090519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817764, 0.080957, 0.569831,
		-0.462856, -0.495956, 0.734705,
		0.342091, -0.864565, -0.368104,
		29.916264, 38.574200, 35.980087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618843, 38.514061, 36.655586>,  <29.676800, 39.179394, 36.237762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618843, 38.514061, 36.655586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925756, 38.596931, 36.412815>,  <30.109903, 38.646652, 36.267155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925756, 38.596931, 36.412815>,  <29.618843, 38.514061, 36.655586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925756, 38.596931, 36.412815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624031, -0.022984, 0.781062,
		0.147866, -0.978034, -0.146918,
		0.767282, 0.207173, -0.606925,
		30.155941, 38.659084, 36.230736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230516, 38.087540, 36.774643>,  <29.618843, 38.514061, 36.655586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230516, 38.087540, 36.774643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373840, 38.432003, 36.630409>,  <30.459835, 38.638680, 36.543869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373840, 38.432003, 36.630409>,  <30.230516, 38.087540, 36.774643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373840, 38.432003, 36.630409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627080, 0.064141, 0.776310,
		0.691654, -0.504275, -0.517032,
		0.358311, 0.861158, -0.360584,
		30.481333, 38.690350, 36.522236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897152, 38.050011, 36.897404>,  <30.230516, 38.087540, 36.774643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897152, 38.050011, 36.897404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793066, 38.436165, 36.904560>,  <30.730614, 38.667858, 36.908855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793066, 38.436165, 36.904560>,  <30.897152, 38.050011, 36.897404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793066, 38.436165, 36.904560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158288, 0.024373, 0.987092,
		0.952487, 0.259690, -0.159151,
		-0.260217, 0.965385, 0.017891,
		30.715000, 38.725780, 36.909927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303396, 38.433685, 37.389000>,  <30.897152, 38.050011, 36.897404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303396, 38.433685, 37.389000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015175, 38.711037, 37.391159>,  <30.842241, 38.877445, 37.392452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015175, 38.711037, 37.391159>,  <31.303396, 38.433685, 37.389000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015175, 38.711037, 37.391159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017477, 0.010384, 0.999793,
		0.693177, 0.720501, -0.019601,
		-0.720556, 0.693376, 0.005394,
		30.799007, 38.919048, 37.392776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581602, 39.060749, 37.648438>,  <31.303396, 38.433685, 37.389000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581602, 39.060749, 37.648438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209568, 38.939896, 37.732018>,  <30.986347, 38.867382, 37.782166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209568, 38.939896, 37.732018>,  <31.581602, 39.060749, 37.648438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209568, 38.939896, 37.732018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182085, 0.114827, 0.976555,
		-0.319044, 0.946324, -0.051784,
		-0.930084, -0.302135, 0.208947,
		30.930542, 38.849255, 37.794701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140715, 39.575161, 37.973148>,  <31.581602, 39.060749, 37.648438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140715, 39.575161, 37.973148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078474, 39.195305, 38.081944>,  <31.041130, 38.967392, 38.147221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078474, 39.195305, 38.081944>,  <31.140715, 39.575161, 37.973148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078474, 39.195305, 38.081944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210669, 0.237104, 0.948367,
		-0.965094, 0.204867, 0.163166,
		-0.155602, -0.949638, 0.271987,
		31.031794, 38.910412, 38.163540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818665, 39.623898, 38.645874>,  <31.140715, 39.575161, 37.973148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818665, 39.623898, 38.645874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020325, 39.282787, 38.591316>,  <31.141321, 39.078121, 38.558582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020325, 39.282787, 38.591316>,  <30.818665, 39.623898, 38.645874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020325, 39.282787, 38.591316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304039, 0.027438, 0.952265,
		-0.808328, -0.521552, 0.273111,
		0.504149, -0.852778, -0.136393,
		31.171570, 39.026955, 38.550400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649450, 39.264942, 39.211082>,  <30.818665, 39.623898, 38.645874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649450, 39.264942, 39.211082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987337, 39.102390, 39.071766>,  <31.190069, 39.004860, 38.988174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987337, 39.102390, 39.071766>,  <30.649450, 39.264942, 39.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987337, 39.102390, 39.071766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382998, 0.004417, 0.923739,
		-0.373855, -0.913692, 0.159375,
		0.844716, -0.406384, -0.348290,
		31.240751, 38.980476, 38.967278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882837, 38.685650, 39.689987>,  <30.649450, 39.264942, 39.211082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882837, 38.685650, 39.689987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208368, 38.785629, 39.480145>,  <31.403687, 38.845615, 39.354240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208368, 38.785629, 39.480145>,  <30.882837, 38.685650, 39.689987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208368, 38.785629, 39.480145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534573, 0.031959, 0.844517,
		0.227852, -0.967731, -0.107606,
		0.813827, 0.249949, -0.524606,
		31.452517, 38.860615, 39.322762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437429, 38.281452, 39.911198>,  <30.882837, 38.685650, 39.689987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437429, 38.281452, 39.911198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600241, 38.606560, 39.744473>,  <31.697927, 38.801624, 39.644440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600241, 38.606560, 39.744473>,  <31.437429, 38.281452, 39.911198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600241, 38.606560, 39.744473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446625, 0.220958, 0.867009,
		0.796777, -0.539055, -0.273068,
		0.407028, 0.812772, -0.416809,
		31.722349, 38.850391, 39.619431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035629, 38.253624, 40.166206>,  <31.437429, 38.281452, 39.911198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035629, 38.253624, 40.166206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020016, 38.628895, 40.028629>,  <32.010647, 38.854057, 39.946083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020016, 38.628895, 40.028629>,  <32.035629, 38.253624, 40.166206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020016, 38.628895, 40.028629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328558, 0.337116, 0.882271,
		0.943677, -0.078569, -0.321405,
		-0.039031, 0.938179, -0.343943,
		32.008305, 38.910347, 39.925446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710281, 38.554874, 40.289730>,  <32.035629, 38.253624, 40.166206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710281, 38.554874, 40.289730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459469, 38.864815, 40.257660>,  <32.308979, 39.050781, 40.238419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459469, 38.864815, 40.257660>,  <32.710281, 38.554874, 40.289730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459469, 38.864815, 40.257660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285506, 0.324350, 0.901822,
		0.724785, 0.542584, -0.424604,
		-0.627035, 0.774854, -0.080173,
		32.271358, 39.097271, 40.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121918, 39.145214, 40.480331>,  <32.710281, 38.554874, 40.289730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121918, 39.145214, 40.480331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738873, 39.247639, 40.533108>,  <32.509045, 39.309093, 40.564774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738873, 39.247639, 40.533108>,  <33.121918, 39.145214, 40.480331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738873, 39.247639, 40.533108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207591, 0.295910, 0.932386,
		0.199701, 0.920256, -0.336523,
		-0.957614, 0.256058, 0.131943,
		32.451588, 39.324455, 40.572689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163647, 39.737785, 40.884453>,  <33.121918, 39.145214, 40.480331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163647, 39.737785, 40.884453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775265, 39.643879, 40.902893>,  <32.542236, 39.587536, 40.913956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775265, 39.643879, 40.902893>,  <33.163647, 39.737785, 40.884453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775265, 39.643879, 40.902893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063837, 0.439930, 0.895760,
		-0.230574, 0.866803, -0.442141,
		-0.970958, -0.234764, 0.046102,
		32.483978, 39.573448, 40.916725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884647, 40.411694, 40.993164>,  <33.163647, 39.737785, 40.884453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884647, 40.411694, 40.993164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631008, 40.128654, 41.117893>,  <32.478825, 39.958832, 41.192730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631008, 40.128654, 41.117893>,  <32.884647, 40.411694, 40.993164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631008, 40.128654, 41.117893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006222, 0.407913, 0.913000,
		-0.773230, 0.576988, -0.263059,
		-0.634095, -0.707596, 0.311821,
		32.440781, 39.916374, 41.211441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203838, 40.692802, 41.296505>,  <32.884647, 40.411694, 40.993164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203838, 40.692802, 41.296505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270557, 40.338158, 41.469063>,  <32.310589, 40.125370, 41.572598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270557, 40.338158, 41.469063>,  <32.203838, 40.692802, 41.296505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270557, 40.338158, 41.469063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201889, 0.397540, 0.895099,
		-0.965101, -0.236393, -0.112689,
		0.166796, -0.886612, 0.431391,
		32.320595, 40.072174, 41.598480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559034, 40.629032, 41.740307>,  <32.203838, 40.692802, 41.296505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559034, 40.629032, 41.740307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832918, 40.369938, 41.873940>,  <31.997248, 40.214481, 41.954117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832918, 40.369938, 41.873940>,  <31.559034, 40.629032, 41.740307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832918, 40.369938, 41.873940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071446, 0.396523, 0.915240,
		-0.725307, -0.650541, 0.225224,
		0.684708, -0.647739, 0.334079,
		32.038330, 40.175617, 41.974163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262466, 40.313530, 42.410576>,  <31.559034, 40.629032, 41.740307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262466, 40.313530, 42.410576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659966, 40.269276, 42.404560>,  <31.898464, 40.242722, 42.400951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659966, 40.269276, 42.404560>,  <31.262466, 40.313530, 42.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659966, 40.269276, 42.404560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041597, 0.241848, 0.969422,
		-0.103619, -0.963986, 0.244938,
		0.993747, -0.110639, -0.015039,
		31.958090, 40.236084, 42.400047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440456, 39.791634, 42.803967>,  <31.262466, 40.313530, 42.410576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440456, 39.791634, 42.803967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796179, 39.974434, 42.797215>,  <32.009613, 40.084114, 42.793163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796179, 39.974434, 42.797215>,  <31.440456, 39.791634, 42.803967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796179, 39.974434, 42.797215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035205, -0.031608, 0.998880,
		0.455960, -0.888902, -0.044198,
		0.889304, 0.457005, -0.016881,
		32.062969, 40.111534, 42.792149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816957, 39.446457, 43.332058>,  <31.440456, 39.791634, 42.803967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816957, 39.446457, 43.332058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013672, 39.792126, 43.289444>,  <32.131702, 39.999527, 43.263874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013672, 39.792126, 43.289444>,  <31.816957, 39.446457, 43.332058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013672, 39.792126, 43.289444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269743, -0.034870, 0.962301,
		0.827879, -0.501985, -0.250253,
		0.491787, 0.864173, -0.106539,
		32.161209, 40.051376, 43.257481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341351, 39.312050, 43.752823>,  <31.816957, 39.446457, 43.332058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341351, 39.312050, 43.752823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304333, 39.707439, 43.704914>,  <32.282120, 39.944675, 43.676170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304333, 39.707439, 43.704914>,  <32.341351, 39.312050, 43.752823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304333, 39.707439, 43.704914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003915, 0.119926, 0.992775,
		0.995700, 0.092348, -0.007229,
		-0.092547, 0.988478, -0.119771,
		32.276569, 40.003983, 43.668983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683617, 39.534176, 44.253277>,  <32.341351, 39.312050, 43.752823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683617, 39.534176, 44.253277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454872, 39.849892, 44.163834>,  <32.317627, 40.039322, 44.110168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454872, 39.849892, 44.163834>,  <32.683617, 39.534176, 44.253277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454872, 39.849892, 44.163834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091601, 0.209430, 0.973524,
		0.815220, 0.577204, -0.047466,
		-0.571862, 0.789288, -0.223604,
		32.283314, 40.086678, 44.096752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932590, 40.103981, 44.661148>,  <32.683617, 39.534176, 44.253277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932590, 40.103981, 44.661148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563522, 40.228592, 44.570267>,  <32.342079, 40.303360, 44.515739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563522, 40.228592, 44.570267>,  <32.932590, 40.103981, 44.661148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563522, 40.228592, 44.570267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196710, 0.126479, 0.972270,
		0.331629, 0.941781, -0.055418,
		-0.922674, 0.311532, -0.227202,
		32.286720, 40.322052, 44.502106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803257, 40.820698, 45.075310>,  <32.932590, 40.103981, 44.661148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803257, 40.820698, 45.075310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445274, 40.683056, 44.961716>,  <32.230484, 40.600471, 44.893559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445274, 40.683056, 44.961716>,  <32.803257, 40.820698, 45.075310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445274, 40.683056, 44.961716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376082, 0.239368, 0.895134,
		-0.240042, 0.907907, -0.343635,
		-0.894954, -0.344105, -0.283989,
		32.176788, 40.579823, 44.876518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352268, 41.416534, 45.094799>,  <32.803257, 40.820698, 45.075310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352268, 41.416534, 45.094799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136326, 41.083527, 45.144547>,  <32.006760, 40.883720, 45.174397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136326, 41.083527, 45.144547>,  <32.352268, 41.416534, 45.094799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136326, 41.083527, 45.144547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332820, 0.346818, 0.876897,
		-0.773168, 0.432003, -0.464311,
		-0.539854, -0.832521, 0.124370,
		31.974369, 40.833771, 45.181858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816671, 41.611015, 45.452232>,  <32.352268, 41.416534, 45.094799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816671, 41.611015, 45.452232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819427, 41.215656, 45.512928>,  <31.821081, 40.978439, 45.549343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819427, 41.215656, 45.512928>,  <31.816671, 41.611015, 45.452232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819427, 41.215656, 45.512928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300244, 0.142693, 0.943129,
		-0.953837, -0.052058, -0.295777,
		0.006892, -0.988397, 0.151736,
		31.821495, 40.919136, 45.558449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165297, 41.431290, 45.782951>,  <31.816671, 41.611015, 45.452232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165297, 41.431290, 45.782951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427505, 41.137398, 45.852772>,  <31.584831, 40.961063, 45.894665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427505, 41.137398, 45.852772>,  <31.165297, 41.431290, 45.782951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427505, 41.137398, 45.852772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216226, 0.038852, 0.975570,
		-0.723559, -0.677250, -0.133399,
		0.655522, -0.734727, 0.174551,
		31.624163, 40.916981, 45.905136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839228, 40.986301, 46.215694>,  <31.165297, 41.431290, 45.782951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839228, 40.986301, 46.215694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234632, 40.939644, 46.254143>,  <31.471876, 40.911648, 46.277210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234632, 40.939644, 46.254143>,  <30.839228, 40.986301, 46.215694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234632, 40.939644, 46.254143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082595, 0.115735, 0.989840,
		-0.126583, -0.986408, 0.104771,
		0.988511, -0.116644, 0.096122,
		31.531185, 40.904652, 46.282978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849724, 40.581982, 46.802830>,  <30.839228, 40.986301, 46.215694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849724, 40.581982, 46.802830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221075, 40.728176, 46.775902>,  <31.443886, 40.815895, 46.759743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221075, 40.728176, 46.775902>,  <30.849724, 40.581982, 46.802830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221075, 40.728176, 46.775902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014646, 0.216994, 0.976063,
		0.371350, -0.905169, 0.206805,
		0.928377, 0.365490, -0.067323,
		31.499588, 40.837822, 46.755703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217335, 40.300011, 47.385193>,  <30.849724, 40.581982, 46.802830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217335, 40.300011, 47.385193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454449, 40.598167, 47.263210>,  <31.596718, 40.777061, 47.190022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454449, 40.598167, 47.263210>,  <31.217335, 40.300011, 47.385193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454449, 40.598167, 47.263210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028032, 0.359327, 0.932791,
		0.804873, -0.561492, 0.192108,
		0.592784, 0.745393, -0.304952,
		31.632284, 40.821785, 47.171726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876661, 40.214485, 47.661652>,  <31.217335, 40.300011, 47.385193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876661, 40.214485, 47.661652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846006, 40.601486, 47.565262>,  <31.827614, 40.833687, 47.507427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846006, 40.601486, 47.565262>,  <31.876661, 40.214485, 47.661652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846006, 40.601486, 47.565262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209270, 0.251907, 0.944854,
		0.974850, 0.021984, -0.221775,
		-0.076639, 0.967502, -0.240971,
		31.823015, 40.891735, 47.492970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438736, 40.519955, 47.900669>,  <31.876661, 40.214485, 47.661652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438736, 40.519955, 47.900669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192612, 40.833008, 47.862972>,  <32.044937, 41.020840, 47.840355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192612, 40.833008, 47.862972>,  <32.438736, 40.519955, 47.900669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192612, 40.833008, 47.862972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153760, 0.236417, 0.959408,
		0.773140, 0.575847, -0.265808,
		-0.615314, 0.782628, -0.094241,
		32.008018, 41.067795, 47.834702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774670, 41.083736, 48.141811>,  <32.438736, 40.519955, 47.900669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774670, 41.083736, 48.141811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391346, 41.195843, 48.164074>,  <32.161350, 41.263107, 48.177429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391346, 41.195843, 48.164074>,  <32.774670, 41.083736, 48.141811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391346, 41.195843, 48.164074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144755, 0.308261, 0.940224,
		0.246355, 0.909081, -0.335978,
		-0.958308, 0.280264, 0.055652,
		32.103855, 41.279922, 48.180771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768078, 41.761143, 48.340782>,  <32.774670, 41.083736, 48.141811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768078, 41.761143, 48.340782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392357, 41.660519, 48.434105>,  <32.166924, 41.600143, 48.490097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392357, 41.660519, 48.434105>,  <32.768078, 41.761143, 48.340782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392357, 41.660519, 48.434105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080013, 0.500641, 0.861949,
		-0.333639, 0.828296, -0.450124,
		-0.939299, -0.251564, 0.233308,
		32.110569, 41.585049, 48.504097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420734, 42.331913, 48.650684>,  <32.768078, 41.761143, 48.340782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420734, 42.331913, 48.650684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217716, 42.007271, 48.766399>,  <32.095905, 41.812485, 48.835831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217716, 42.007271, 48.766399>,  <32.420734, 42.331913, 48.650684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217716, 42.007271, 48.766399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059747, 0.301790, 0.951500,
		-0.859551, 0.500214, -0.104682,
		-0.507545, -0.811609, 0.289290,
		32.065453, 41.763786, 48.853188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035851, 42.608040, 49.123493>,  <32.420734, 42.331913, 48.650684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035851, 42.608040, 49.123493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978064, 42.226063, 49.227196>,  <31.943390, 41.996876, 49.289417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978064, 42.226063, 49.227196>,  <32.035851, 42.608040, 49.123493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978064, 42.226063, 49.227196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166102, 0.234882, 0.957727,
		-0.975468, 0.181426, 0.124685,
		-0.144470, -0.954943, 0.259255,
		31.934723, 41.939579, 49.304974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528179, 42.650227, 49.688717>,  <32.035851, 42.608040, 49.123493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528179, 42.650227, 49.688717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715199, 42.298088, 49.720680>,  <31.827410, 42.086803, 49.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715199, 42.298088, 49.720680>,  <31.528179, 42.650227, 49.688717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715199, 42.298088, 49.720680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133996, 0.159930, 0.977992,
		-0.873754, -0.446550, 0.192738,
		0.467546, -0.880350, 0.079904,
		31.855463, 42.033981, 49.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237513, 42.227283, 50.322094>,  <31.528179, 42.650227, 49.688717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237513, 42.227283, 50.322094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604250, 42.093475, 50.234924>,  <31.824293, 42.013191, 50.182621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604250, 42.093475, 50.234924>,  <31.237513, 42.227283, 50.322094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604250, 42.093475, 50.234924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286565, 0.171331, 0.942617,
		-0.277986, -0.926683, 0.252946,
		0.916845, -0.334520, -0.217927,
		31.879303, 41.993118, 50.169548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396177, 41.604912, 50.833935>,  <31.237513, 42.227283, 50.322094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396177, 41.604912, 50.833935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732523, 41.749737, 50.673008>,  <31.934330, 41.836632, 50.576454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732523, 41.749737, 50.673008>,  <31.396177, 41.604912, 50.833935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732523, 41.749737, 50.673008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455393, -0.071549, 0.887411,
		0.292514, -0.929403, -0.225044,
		0.840864, 0.362064, -0.402315,
		31.984783, 41.858356, 50.552315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854677, 41.062386, 50.748440>,  <31.396177, 41.604912, 50.833935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854677, 41.062386, 50.748440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048752, 41.410622, 50.781113>,  <32.165195, 41.619564, 50.800716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048752, 41.410622, 50.781113>,  <31.854677, 41.062386, 50.748440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048752, 41.410622, 50.781113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492835, -0.349433, 0.796875,
		0.722292, -0.346376, -0.598596,
		0.485188, 0.870586, 0.081686,
		32.194309, 41.671799, 50.805618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438026, 40.931561, 51.077984>,  <31.854677, 41.062386, 50.748440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438026, 40.931561, 51.077984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440029, 41.326408, 51.141956>,  <32.441231, 41.563316, 51.180340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440029, 41.326408, 51.141956>,  <32.438026, 40.931561, 51.077984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440029, 41.326408, 51.141956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594062, -0.131590, 0.793583,
		0.804404, 0.091037, -0.587066,
		0.005006, 0.987115, 0.159934,
		32.441532, 41.622543, 51.189938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131428, 41.073353, 51.188148>,  <32.438026, 40.931561, 51.077984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131428, 41.073353, 51.188148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918381, 41.374580, 51.342659>,  <32.790550, 41.555317, 51.435364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918381, 41.374580, 51.342659>,  <33.131428, 41.073353, 51.188148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918381, 41.374580, 51.342659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558845, -0.029831, 0.828735,
		0.635617, 0.657267, -0.404959,
		-0.532620, 0.753067, 0.386272,
		32.758595, 41.600502, 51.458542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628765, 41.542976, 51.470692>,  <33.131428, 41.073353, 51.188148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628765, 41.542976, 51.470692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282192, 41.592384, 51.664204>,  <33.074249, 41.622028, 51.780312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282192, 41.592384, 51.664204>,  <33.628765, 41.542976, 51.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282192, 41.592384, 51.664204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495312, 0.090438, 0.863995,
		0.062965, 0.988213, -0.139537,
		-0.866430, 0.123515, 0.483780,
		33.022263, 41.629440, 51.809338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854164, 41.960178, 51.986088>,  <33.628765, 41.542976, 51.470692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854164, 41.960178, 51.986088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485912, 41.857868, 52.104092>,  <33.264961, 41.796482, 52.174892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485912, 41.857868, 52.104092>,  <33.854164, 41.960178, 51.986088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485912, 41.857868, 52.104092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224320, 0.271937, 0.935805,
		-0.319577, 0.927702, -0.192977,
		-0.920625, -0.255773, 0.295007,
		33.209724, 41.781136, 52.192593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601685, 42.444191, 52.568768>,  <33.854164, 41.960178, 51.986088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601685, 42.444191, 52.568768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355946, 42.131500, 52.611649>,  <33.208504, 41.943886, 52.637379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355946, 42.131500, 52.611649>,  <33.601685, 42.444191, 52.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355946, 42.131500, 52.611649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024709, 0.116737, 0.992856,
		-0.788651, 0.612604, -0.052401,
		-0.614344, -0.781722, 0.107201,
		33.171642, 41.896984, 52.643810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919437, 42.665031, 52.948704>,  <33.601685, 42.444191, 52.568768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919437, 42.665031, 52.948704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036022, 42.284649, 52.990150>,  <33.105972, 42.056419, 53.015018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036022, 42.284649, 52.990150>,  <32.919437, 42.665031, 52.948704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036022, 42.284649, 52.990150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005538, 0.109991, 0.993917,
		-0.956567, -0.289113, 0.037324,
		0.291460, -0.950955, 0.103612,
		33.123459, 41.999363, 53.021233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480350, 42.331665, 53.424244>,  <32.919437, 42.665031, 52.948704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480350, 42.331665, 53.424244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819912, 42.120670, 53.410801>,  <33.023647, 41.994076, 53.402733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819912, 42.120670, 53.410801>,  <32.480350, 42.331665, 53.424244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819912, 42.120670, 53.410801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062759, -0.163735, 0.984506,
		-0.524816, -0.833636, -0.172099,
		0.848899, -0.527486, -0.033612,
		33.074581, 41.962425, 53.400719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349247, 41.721069, 53.799854>,  <32.480350, 42.331665, 53.424244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349247, 41.721069, 53.799854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738590, 41.792927, 53.856842>,  <32.972198, 41.836040, 53.891033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738590, 41.792927, 53.856842>,  <32.349247, 41.721069, 53.799854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738590, 41.792927, 53.856842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081726, -0.308712, 0.947638,
		0.214217, -0.934037, -0.285807,
		0.973362, 0.179642, 0.142466,
		33.030598, 41.846821, 53.899582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698353, 41.228596, 54.136524>,  <32.349247, 41.721069, 53.799854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698353, 41.228596, 54.136524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894020, 41.566631, 54.222816>,  <33.011421, 41.769451, 54.274593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894020, 41.566631, 54.222816>,  <32.698353, 41.228596, 54.136524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894020, 41.566631, 54.222816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007141, -0.251215, 0.967905,
		0.872162, -0.471925, -0.128921,
		0.489166, 0.845090, 0.215730,
		33.040771, 41.820160, 54.287537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305744, 40.888023, 54.375938>,  <32.698353, 41.228596, 54.136524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305744, 40.888023, 54.375938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209309, 41.251614, 54.511967>,  <33.151447, 41.469769, 54.593582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209309, 41.251614, 54.511967>,  <33.305744, 40.888023, 54.375938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209309, 41.251614, 54.511967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146184, -0.312392, 0.938638,
		0.959431, 0.276006, -0.057563,
		-0.241087, 0.908973, 0.340066,
		33.136982, 41.524307, 54.613987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837315, 41.089237, 54.768250>,  <33.305744, 40.888023, 54.375938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837315, 41.089237, 54.768250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534283, 41.316776, 54.896297>,  <33.352463, 41.453300, 54.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534283, 41.316776, 54.896297>,  <33.837315, 41.089237, 54.768250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534283, 41.316776, 54.896297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201246, -0.262985, 0.943578,
		0.620940, 0.779263, 0.084754,
		-0.757584, 0.568849, 0.320121,
		33.307007, 41.487431, 54.992332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521187, 41.396187, 54.903790>,  <33.837315, 41.089237, 54.768250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521187, 41.396187, 54.903790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780350, 41.173244, 54.696110>,  <34.935848, 41.039478, 54.571503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780350, 41.173244, 54.696110>,  <34.521187, 41.396187, 54.903790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780350, 41.173244, 54.696110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761050, -0.445088, -0.471911,
		0.031935, 0.700890, -0.712554,
		0.647906, -0.557360, -0.519198,
		34.974720, 41.006035, 54.540352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408020, 41.499889, 54.137962>,  <34.521187, 41.396187, 54.903790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408020, 41.499889, 54.137962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549126, 41.137421, 54.231258>,  <34.633789, 40.919937, 54.287235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549126, 41.137421, 54.231258>,  <34.408020, 41.499889, 54.137962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549126, 41.137421, 54.231258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789475, -0.422045, -0.445654,
		0.502279, -0.026928, -0.864286,
		0.352767, -0.906175, 0.233244,
		34.654957, 40.865570, 54.301231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599632, 41.199425, 53.584629>,  <34.408020, 41.499889, 54.137962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599632, 41.199425, 53.584629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529308, 40.912827, 53.854660>,  <34.487114, 40.740868, 54.016678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529308, 40.912827, 53.854660>,  <34.599632, 41.199425, 53.584629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529308, 40.912827, 53.854660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761594, -0.335514, -0.554442,
		0.623751, -0.611612, -0.486689,
		-0.175812, -0.716493, 0.675077,
		34.476566, 40.697880, 54.057182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334553, 41.392906, 53.506962>,  <34.599632, 41.199425, 53.584629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334553, 41.392906, 53.506962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239590, 41.060299, 53.707848>,  <35.182610, 40.860737, 53.828381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239590, 41.060299, 53.707848>,  <35.334553, 41.392906, 53.506962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239590, 41.060299, 53.707848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359809, -0.404952, -0.840566,
		0.902316, -0.380261, -0.203047,
		-0.237411, -0.831514, 0.502216,
		35.168365, 40.810844, 53.858513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712692, 40.778851, 53.283768>,  <35.334553, 41.392906, 53.506962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712692, 40.778851, 53.283768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353256, 40.675415, 53.425568>,  <35.137596, 40.613354, 53.510647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353256, 40.675415, 53.425568>,  <35.712692, 40.778851, 53.283768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353256, 40.675415, 53.425568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240017, -0.386655, -0.890443,
		0.367325, -0.885229, 0.285380,
		-0.898590, -0.258587, 0.354498,
		35.083679, 40.597839, 53.531918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611755, 40.037708, 53.295525>,  <35.712692, 40.778851, 53.283768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611755, 40.037708, 53.295525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272366, 40.247063, 53.264156>,  <35.068729, 40.372677, 53.245335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272366, 40.247063, 53.264156>,  <35.611755, 40.037708, 53.295525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272366, 40.247063, 53.264156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218820, -0.481873, -0.848479,
		-0.481873, -0.702755, 0.523387,
		0.848479, -0.523387, 0.078424,
		35.017822, 40.404079, 53.240627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062695, 39.516434, 53.264240>,  <35.611755, 40.037708, 53.295525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062695, 39.516434, 53.264240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909077, 39.858131, 53.124081>,  <34.816906, 40.063148, 53.039986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909077, 39.858131, 53.124081>,  <35.062695, 39.516434, 53.264240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909077, 39.858131, 53.124081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374141, -0.490928, -0.786771,
		-0.844115, -0.171053, 0.508144,
		-0.384042, 0.854242, -0.350402,
		34.793865, 40.114403, 53.018959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224457, 39.534786, 53.244595>,  <35.062695, 39.516434, 53.264240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224457, 39.534786, 53.244595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366989, 39.780968, 52.963383>,  <34.452507, 39.928677, 52.794655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366989, 39.780968, 52.963383>,  <34.224457, 39.534786, 53.244595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366989, 39.780968, 52.963383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548849, -0.471055, -0.690559,
		-0.756170, 0.631924, 0.169938,
		0.356331, 0.615450, -0.703028,
		34.473888, 39.965603, 52.752476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665874, 39.715813, 52.776154>,  <34.224457, 39.534786, 53.244595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665874, 39.715813, 52.776154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967339, 39.860462, 52.556618>,  <34.148216, 39.947250, 52.424896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967339, 39.860462, 52.556618>,  <33.665874, 39.715813, 52.776154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967339, 39.860462, 52.556618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402130, -0.406816, -0.820239,
		-0.519896, 0.838886, -0.161181,
		0.753657, 0.361623, -0.548844,
		34.193436, 39.968948, 52.391964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410820, 39.955280, 52.020142>,  <33.665874, 39.715813, 52.776154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410820, 39.955280, 52.020142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807587, 39.927692, 51.977539>,  <34.045647, 39.911140, 51.951977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807587, 39.927692, 51.977539>,  <33.410820, 39.955280, 52.020142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807587, 39.927692, 51.977539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125986, -0.435598, -0.891281,
		0.015082, 0.897495, -0.440767,
		0.991917, -0.068972, -0.106502,
		34.105164, 39.907001, 51.945587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549446, 40.132797, 51.273228>,  <33.410820, 39.955280, 52.020142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549446, 40.132797, 51.273228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869385, 39.926960, 51.396801>,  <34.061348, 39.803459, 51.470947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869385, 39.926960, 51.396801>,  <33.549446, 40.132797, 51.273228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869385, 39.926960, 51.396801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023306, -0.487702, -0.872699,
		0.599755, 0.705223, -0.378093,
		0.799844, -0.514594, 0.308938,
		34.109337, 39.772583, 51.489483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963081, 40.110397, 50.715515>,  <33.549446, 40.132797, 51.273228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963081, 40.110397, 50.715515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119297, 39.816090, 50.936829>,  <34.213028, 39.639503, 51.069618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119297, 39.816090, 50.936829>,  <33.963081, 40.110397, 50.715515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119297, 39.816090, 50.936829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102622, -0.562472, -0.820423,
		0.914849, 0.377187, -0.144161,
		0.390539, -0.735769, 0.553284,
		34.236458, 39.595360, 51.102814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585659, 39.990265, 50.356461>,  <33.963081, 40.110397, 50.715515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585659, 39.990265, 50.356461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508698, 39.665363, 50.576725>,  <34.462521, 39.470421, 50.708881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508698, 39.665363, 50.576725>,  <34.585659, 39.990265, 50.356461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508698, 39.665363, 50.576725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287763, -0.583175, -0.759671,
		0.938176, 0.012295, 0.345941,
		-0.192404, -0.812253, 0.550659,
		34.450977, 39.421688, 50.741924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131439, 39.331615, 50.157951>,  <34.585659, 39.990265, 50.356461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131439, 39.331615, 50.157951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838959, 39.144718, 50.356762>,  <34.663471, 39.032581, 50.476048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838959, 39.144718, 50.356762>,  <35.131439, 39.331615, 50.157951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838959, 39.144718, 50.356762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002435, -0.726807, -0.686837,
		0.682158, -0.503426, 0.530304,
		-0.731201, -0.467241, 0.497023,
		34.619598, 39.004547, 50.505867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365700, 38.670494, 50.219807>,  <35.131439, 39.331615, 50.157951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365700, 38.670494, 50.219807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969158, 38.683342, 50.270699>,  <34.731232, 38.691051, 50.301235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969158, 38.683342, 50.270699>,  <35.365700, 38.670494, 50.219807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969158, 38.683342, 50.270699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121755, -0.586800, -0.800526,
		0.048950, -0.809095, 0.585636,
		-0.991353, 0.032118, 0.127235,
		34.671753, 38.692978, 50.308868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139256, 37.962219, 50.165314>,  <35.365700, 38.670494, 50.219807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139256, 37.962219, 50.165314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825607, 38.190765, 50.068405>,  <34.637421, 38.327892, 50.010262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825607, 38.190765, 50.068405>,  <35.139256, 37.962219, 50.165314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825607, 38.190765, 50.068405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052829, -0.450408, -0.891258,
		-0.618359, -0.686053, 0.383358,
		-0.784118, 0.571370, -0.242271,
		34.590370, 38.362175, 49.995724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723110, 37.537388, 49.812511>,  <35.139256, 37.962219, 50.165314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723110, 37.537388, 49.812511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592709, 37.897038, 49.695686>,  <34.514469, 38.112827, 49.625591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592709, 37.897038, 49.695686>,  <34.723110, 37.537388, 49.812511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592709, 37.897038, 49.695686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110196, -0.342976, -0.932858,
		-0.938924, -0.271930, 0.210891,
		-0.326003, 0.899122, -0.292063,
		34.494907, 38.166775, 49.608067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037647, 37.434834, 49.437939>,  <34.723110, 37.537388, 49.812511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037647, 37.434834, 49.437939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181244, 37.791286, 49.326935>,  <34.267403, 38.005157, 49.260330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181244, 37.791286, 49.326935>,  <34.037647, 37.434834, 49.437939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181244, 37.791286, 49.326935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197047, -0.218266, -0.955789,
		-0.912302, 0.397806, 0.097238,
		0.358995, 0.891129, -0.277511,
		34.288940, 38.058624, 49.243683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519138, 37.832096, 49.012562>,  <34.037647, 37.434834, 49.437939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519138, 37.832096, 49.012562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886406, 37.961449, 48.921013>,  <34.106766, 38.039062, 48.866085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886406, 37.961449, 48.921013>,  <33.519138, 37.832096, 49.012562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886406, 37.961449, 48.921013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194137, -0.136332, -0.971455,
		-0.345355, 0.936396, -0.062396,
		0.918173, 0.323383, -0.228872,
		34.161858, 38.058464, 48.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457741, 38.213619, 48.397850>,  <33.519138, 37.832096, 49.012562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457741, 38.213619, 48.397850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856274, 38.182655, 48.383305>,  <34.095394, 38.164078, 48.374577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856274, 38.182655, 48.383305>,  <33.457741, 38.213619, 48.397850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856274, 38.182655, 48.383305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024099, 0.153865, -0.987798,
		0.082061, 0.985055, 0.151435,
		0.996336, -0.077410, -0.036365,
		34.155174, 38.159431, 48.372395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582466, 38.650867, 47.897945>,  <33.457741, 38.213619, 48.397850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582466, 38.650867, 47.897945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919319, 38.438114, 47.933537>,  <34.121429, 38.310463, 47.954891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919319, 38.438114, 47.933537>,  <33.582466, 38.650867, 47.897945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919319, 38.438114, 47.933537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083776, -0.033961, -0.995906,
		0.532726, 0.846137, 0.015959,
		0.842131, -0.531882, 0.088978,
		34.171959, 38.278549, 47.960228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994507, 38.925339, 47.382793>,  <33.582466, 38.650867, 47.897945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994507, 38.925339, 47.382793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163673, 38.579224, 47.490429>,  <34.265175, 38.371555, 47.555012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163673, 38.579224, 47.490429>,  <33.994507, 38.925339, 47.382793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163673, 38.579224, 47.490429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187073, -0.207190, -0.960248,
		0.886648, 0.456446, 0.074249,
		0.422918, -0.865291, 0.269093,
		34.290550, 38.319637, 47.571156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481586, 38.887775, 46.948990>,  <33.994507, 38.925339, 47.382793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481586, 38.887775, 46.948990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498829, 38.511272, 47.082966>,  <34.509174, 38.285370, 47.163353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498829, 38.511272, 47.082966>,  <34.481586, 38.887775, 46.948990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498829, 38.511272, 47.082966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310085, -0.306090, -0.900087,
		0.949731, 0.142656, 0.278675,
		0.043104, -0.941254, 0.334938,
		34.511761, 38.228897, 47.183449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192982, 38.451824, 46.888359>,  <34.481586, 38.887775, 46.948990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192982, 38.451824, 46.888359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901161, 38.178253, 46.888084>,  <34.726070, 38.014111, 46.887920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901161, 38.178253, 46.888084>,  <35.192982, 38.451824, 46.888359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901161, 38.178253, 46.888084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158615, -0.168220, -0.972904,
		0.665278, -0.709894, 0.231206,
		-0.729552, -0.683924, -0.000687,
		34.682297, 37.973076, 46.887878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316883, 37.910889, 46.406010>,  <35.192982, 38.451824, 46.888359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316883, 37.910889, 46.406010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925308, 37.848789, 46.459034>,  <34.690361, 37.811531, 46.490849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925308, 37.848789, 46.459034>,  <35.316883, 37.910889, 46.406010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925308, 37.848789, 46.459034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094524, -0.230810, -0.968397,
		0.180939, -0.960533, 0.211275,
		-0.978941, -0.155250, 0.132556,
		34.631626, 37.802216, 46.498802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190056, 37.128948, 46.229588>,  <35.316883, 37.910889, 46.406010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190056, 37.128948, 46.229588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843430, 37.327118, 46.205490>,  <34.635456, 37.446018, 46.191032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843430, 37.327118, 46.205490>,  <35.190056, 37.128948, 46.229588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843430, 37.327118, 46.205490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143546, -0.363039, -0.920650,
		-0.477981, -0.789152, 0.385712,
		-0.866561, 0.495420, -0.060246,
		34.583462, 37.475742, 46.187416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529709, 36.632595, 45.910408>,  <35.190056, 37.128948, 46.229588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529709, 36.632595, 45.910408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471542, 37.024551, 45.855759>,  <34.436642, 37.259724, 45.822968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471542, 37.024551, 45.855759>,  <34.529709, 36.632595, 45.910408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471542, 37.024551, 45.855759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325150, -0.177757, -0.928806,
		-0.934415, -0.090642, 0.344460,
		-0.145419, 0.979891, -0.136627,
		34.427917, 37.318520, 45.814770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867577, 36.606358, 45.554600>,  <34.529709, 36.632595, 45.910408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867577, 36.606358, 45.554600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997810, 36.981953, 45.510227>,  <34.075951, 37.207310, 45.483604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997810, 36.981953, 45.510227>,  <33.867577, 36.606358, 45.554600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997810, 36.981953, 45.510227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352968, 0.011859, -0.935561,
		-0.877160, 0.343758, 0.335292,
		0.325583, 0.938984, -0.110933,
		34.095486, 37.263649, 45.476948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294800, 37.035942, 45.252857>,  <33.867577, 36.606358, 45.554600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294800, 37.035942, 45.252857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637619, 37.218231, 45.156704>,  <33.843311, 37.327602, 45.099014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637619, 37.218231, 45.156704>,  <33.294800, 37.035942, 45.252857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637619, 37.218231, 45.156704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313950, 0.091984, -0.944973,
		-0.408532, 0.885357, 0.221909,
		0.857051, 0.455720, -0.240379,
		33.894733, 37.354946, 45.084591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030388, 37.637875, 44.936932>,  <33.294800, 37.035942, 45.252857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030388, 37.637875, 44.936932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409489, 37.592285, 44.817749>,  <33.636948, 37.564930, 44.746239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409489, 37.592285, 44.817749>,  <33.030388, 37.637875, 44.936932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409489, 37.592285, 44.817749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277247, 0.167766, -0.946038,
		0.157810, 0.979217, 0.127401,
		0.947750, -0.113973, -0.297960,
		33.693813, 37.558094, 44.728359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116619, 38.093548, 44.324574>,  <33.030388, 37.637875, 44.936932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116619, 38.093548, 44.324574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432838, 37.853554, 44.275486>,  <33.622570, 37.709557, 44.246033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432838, 37.853554, 44.275486>,  <33.116619, 38.093548, 44.324574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432838, 37.853554, 44.275486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155575, -0.002938, -0.987820,
		0.592313, 0.800009, -0.095665,
		0.790545, -0.599982, -0.122721,
		33.670002, 37.673561, 44.238670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267487, 38.290798, 43.680473>,  <33.116619, 38.093548, 44.324574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267487, 38.290798, 43.680473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485245, 37.961884, 43.746788>,  <33.615898, 37.764534, 43.786579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485245, 37.961884, 43.746788>,  <33.267487, 38.290798, 43.680473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485245, 37.961884, 43.746788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010659, -0.190846, -0.981562,
		0.838761, 0.536125, -0.095131,
		0.544396, -0.822282, 0.165789,
		33.648563, 37.715199, 43.796524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968521, 38.294891, 43.332607>,  <33.267487, 38.290798, 43.680473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968521, 38.294891, 43.332607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881584, 37.908913, 43.391445>,  <33.829422, 37.677326, 43.426750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881584, 37.908913, 43.391445>,  <33.968521, 38.294891, 43.332607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881584, 37.908913, 43.391445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021716, -0.155443, -0.987606,
		0.975853, -0.211458, 0.054739,
		-0.217346, -0.964947, 0.147097,
		33.816380, 37.619427, 43.435574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494225, 37.867805, 42.917953>,  <33.968521, 38.294891, 43.332607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494225, 37.867805, 42.917953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165482, 37.648228, 42.978901>,  <33.968235, 37.516483, 43.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165482, 37.648228, 42.978901>,  <34.494225, 37.867805, 42.917953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165482, 37.648228, 42.978901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038541, -0.213269, -0.976233,
		0.568391, -0.808195, 0.154119,
		-0.821855, -0.548943, 0.152369,
		33.918926, 37.483543, 43.024612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486336, 37.242977, 42.415527>,  <34.494225, 37.867805, 42.917953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486336, 37.242977, 42.415527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101639, 37.270935, 42.521477>,  <33.870819, 37.287708, 42.585049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101639, 37.270935, 42.521477>,  <34.486336, 37.242977, 42.415527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101639, 37.270935, 42.521477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273876, -0.224154, -0.935279,
		-0.005993, -0.972044, 0.234721,
		-0.961746, 0.069890, 0.264877,
		33.813114, 37.291901, 42.600941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104404, 36.669678, 42.108707>,  <34.486336, 37.242977, 42.415527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104404, 36.669678, 42.108707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808826, 36.924290, 42.197063>,  <33.631481, 37.077057, 42.250076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808826, 36.924290, 42.197063>,  <34.104404, 36.669678, 42.108707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808826, 36.924290, 42.197063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325452, -0.050151, -0.944228,
		-0.589955, -0.769617, 0.244220,
		-0.738941, 0.636533, 0.220886,
		33.587143, 37.115250, 42.263329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547997, 36.315060, 42.169495>,  <34.104404, 36.669678, 42.108707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547997, 36.315060, 42.169495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403404, 36.677940, 42.083405>,  <33.316650, 36.895668, 42.031750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403404, 36.677940, 42.083405>,  <33.547997, 36.315060, 42.169495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403404, 36.677940, 42.083405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412593, -0.362642, -0.835618,
		-0.836123, -0.213257, 0.505391,
		-0.361477, 0.907200, -0.215225,
		33.294960, 36.950100, 42.018837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808945, 36.198997, 41.995575>,  <33.547997, 36.315060, 42.169495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808945, 36.198997, 41.995575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904243, 36.555431, 41.841068>,  <32.961422, 36.769291, 41.748363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904243, 36.555431, 41.841068>,  <32.808945, 36.198997, 41.995575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904243, 36.555431, 41.841068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410232, -0.268167, -0.871663,
		-0.880311, 0.366133, 0.301661,
		0.238249, 0.891085, -0.386270,
		32.975719, 36.822758, 41.725189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294647, 36.350616, 41.548450>,  <32.808945, 36.198997, 41.995575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294647, 36.350616, 41.548450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573563, 36.613056, 41.432987>,  <32.740913, 36.770519, 41.363708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573563, 36.613056, 41.432987>,  <32.294647, 36.350616, 41.548450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573563, 36.613056, 41.432987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177268, -0.232360, -0.956339,
		-0.694525, 0.718014, -0.045716,
		0.697288, 0.656098, -0.288661,
		32.782749, 36.809887, 41.346390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061707, 36.724560, 40.906746>,  <32.294647, 36.350616, 41.548450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061707, 36.724560, 40.906746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461002, 36.736423, 40.927307>,  <32.700581, 36.743542, 40.939644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461002, 36.736423, 40.927307>,  <32.061707, 36.724560, 40.906746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461002, 36.736423, 40.927307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056868, -0.230478, -0.971414,
		-0.016966, 0.972625, -0.231759,
		0.998238, 0.029661, 0.051401,
		32.760475, 36.745323, 40.942726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324299, 37.037220, 40.320759>,  <32.061707, 36.724560, 40.906746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324299, 37.037220, 40.320759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645115, 36.838753, 40.453754>,  <32.837605, 36.719673, 40.533554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645115, 36.838753, 40.453754>,  <32.324299, 37.037220, 40.320759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645115, 36.838753, 40.453754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141564, -0.382902, -0.912878,
		0.580256, 0.779230, -0.236861,
		0.802036, -0.496172, 0.332492,
		32.885727, 36.689899, 40.553501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886894, 37.167953, 39.900585>,  <32.324299, 37.037220, 40.320759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886894, 37.167953, 39.900585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008373, 36.820168, 40.056427>,  <33.081261, 36.611496, 40.149933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008373, 36.820168, 40.056427>,  <32.886894, 37.167953, 39.900585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008373, 36.820168, 40.056427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273549, -0.312130, -0.909805,
		0.912654, 0.382883, 0.143049,
		0.303699, -0.869469, 0.389604,
		33.099483, 36.559326, 40.173309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450977, 37.074627, 39.541943>,  <32.886894, 37.167953, 39.900585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450977, 37.074627, 39.541943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391014, 36.710411, 39.696053>,  <33.355034, 36.491882, 39.788517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391014, 36.710411, 39.696053>,  <33.450977, 37.074627, 39.541943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391014, 36.710411, 39.696053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389788, -0.412548, -0.823329,
		0.908621, 0.026749, 0.416764,
		-0.149912, -0.910543, 0.385276,
		33.346039, 36.437248, 39.811634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120461, 36.702866, 39.785725>,  <33.450977, 37.074627, 39.541943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120461, 36.702866, 39.785725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854141, 36.416149, 39.702850>,  <33.694351, 36.244118, 39.653126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854141, 36.416149, 39.702850>,  <34.120461, 36.702866, 39.785725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854141, 36.416149, 39.702850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595972, -0.343819, -0.725676,
		0.448923, -0.606631, 0.656101,
		-0.665797, -0.716790, -0.207187,
		33.654404, 36.201111, 39.640694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497917, 36.275822, 39.348553>,  <34.120461, 36.702866, 39.785725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497917, 36.275822, 39.348553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143585, 36.090721, 39.334900>,  <33.930984, 35.979660, 39.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143585, 36.090721, 39.334900>,  <34.497917, 36.275822, 39.348553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143585, 36.090721, 39.334900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305308, -0.525890, -0.793868,
		0.349416, -0.713653, 0.607131,
		-0.885831, -0.462752, -0.034130,
		33.877834, 35.951897, 39.324661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724411, 36.935997, 39.409752>,  <34.497917, 36.275822, 39.348553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724411, 36.935997, 39.409752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104794, 36.870377, 39.304855>,  <35.333023, 36.831005, 39.241917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104794, 36.870377, 39.304855>,  <34.724411, 36.935997, 39.409752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104794, 36.870377, 39.304855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295291, 0.229006, 0.927556,
		-0.092109, -0.959502, 0.266217,
		0.950957, -0.164048, -0.262239,
		35.390079, 36.821163, 39.226185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055748, 36.450138, 39.785999>,  <34.724411, 36.935997, 39.409752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055748, 36.450138, 39.785999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374352, 36.660561, 39.666775>,  <35.565514, 36.786816, 39.595242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374352, 36.660561, 39.666775>,  <35.055748, 36.450138, 39.785999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374352, 36.660561, 39.666775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246271, 0.167957, 0.954537,
		0.552205, -0.833698, 0.004226,
		0.796505, 0.526059, -0.298063,
		35.613304, 36.818378, 39.577354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617596, 36.073128, 39.996769>,  <35.055748, 36.450138, 39.785999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617596, 36.073128, 39.996769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690136, 36.465359, 39.966877>,  <35.733662, 36.700695, 39.948940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690136, 36.465359, 39.966877>,  <35.617596, 36.073128, 39.996769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690136, 36.465359, 39.966877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155735, 0.046394, 0.986709,
		0.971009, -0.190578, -0.144296,
		0.181351, 0.980575, -0.074729,
		35.744541, 36.759533, 39.944458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250980, 36.054035, 40.356632>,  <35.617596, 36.073128, 39.996769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250980, 36.054035, 40.356632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103146, 36.424362, 40.324974>,  <36.014446, 36.646561, 40.305981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103146, 36.424362, 40.324974>,  <36.250980, 36.054035, 40.356632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103146, 36.424362, 40.324974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276731, 0.190979, 0.941779,
		0.887034, 0.326163, -0.326786,
		-0.369583, 0.925821, -0.079146,
		35.992271, 36.702110, 40.301231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703442, 36.332073, 40.733276>,  <36.250980, 36.054035, 40.356632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703442, 36.332073, 40.733276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409630, 36.603294, 40.722622>,  <36.233341, 36.766026, 40.716228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409630, 36.603294, 40.722622>,  <36.703442, 36.332073, 40.733276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409630, 36.603294, 40.722622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304810, 0.364769, 0.879792,
		0.606260, 0.638116, -0.474611,
		-0.734533, 0.678050, -0.026640,
		36.189270, 36.806709, 40.714630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087833, 36.933174, 40.861622>,  <36.703442, 36.332073, 40.733276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087833, 36.933174, 40.861622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704014, 37.026340, 40.924885>,  <36.473721, 37.082241, 40.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704014, 37.026340, 40.924885>,  <37.087833, 36.933174, 40.861622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704014, 37.026340, 40.924885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270991, 0.611751, 0.743185,
		0.076345, 0.755983, -0.650124,
		-0.959549, 0.232916, 0.158161,
		36.416149, 37.096214, 40.972332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242599, 37.573326, 40.999054>,  <37.087833, 36.933174, 40.861622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242599, 37.573326, 40.999054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880722, 37.494106, 41.149952>,  <36.663597, 37.446575, 41.240490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880722, 37.494106, 41.149952>,  <37.242599, 37.573326, 40.999054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880722, 37.494106, 41.149952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274947, 0.405009, 0.871993,
		-0.325484, 0.892606, -0.311954,
		-0.904690, -0.198049, 0.377243,
		36.609314, 37.434692, 41.263126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078510, 38.095535, 41.400097>,  <37.242599, 37.573326, 40.999054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078510, 38.095535, 41.400097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813728, 37.833878, 41.546474>,  <36.654858, 37.676884, 41.634300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813728, 37.833878, 41.546474>,  <37.078510, 38.095535, 41.400097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813728, 37.833878, 41.546474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142257, 0.369705, 0.918194,
		-0.735920, 0.659862, -0.151673,
		-0.661955, -0.654141, 0.365943,
		36.615143, 37.637634, 41.656258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546154, 38.473328, 41.784298>,  <37.078510, 38.095535, 41.400097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546154, 38.473328, 41.784298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556633, 38.101406, 41.931141>,  <36.562920, 37.878254, 42.019249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556633, 38.101406, 41.931141>,  <36.546154, 38.473328, 41.784298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556633, 38.101406, 41.931141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203374, 0.364514, 0.908718,
		-0.978751, 0.050858, 0.198647,
		0.026194, -0.929808, 0.367112,
		36.564491, 37.822464, 42.041275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148392, 38.381966, 42.389252>,  <36.546154, 38.473328, 41.784298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148392, 38.381966, 42.389252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400955, 38.073864, 42.425076>,  <36.552494, 37.889004, 42.446571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400955, 38.073864, 42.425076>,  <36.148392, 38.381966, 42.389252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400955, 38.073864, 42.425076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048976, 0.154876, 0.986719,
		-0.773899, -0.618640, 0.135515,
		0.631412, -0.770258, 0.089560,
		36.590378, 37.842785, 42.451942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934612, 38.070633, 43.043369>,  <36.148392, 38.381966, 42.389252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934612, 38.070633, 43.043369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295094, 37.913795, 42.969509>,  <36.511383, 37.819691, 42.925194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295094, 37.913795, 42.969509>,  <35.934612, 38.070633, 43.043369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295094, 37.913795, 42.969509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185812, -0.035364, 0.981949,
		-0.391550, -0.919243, 0.040986,
		0.901200, -0.392098, -0.184653,
		36.565453, 37.796165, 42.914112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000656, 37.473999, 43.483212>,  <35.934612, 38.070633, 43.043369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000656, 37.473999, 43.483212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369007, 37.586407, 43.375130>,  <36.590019, 37.653851, 43.310280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369007, 37.586407, 43.375130>,  <36.000656, 37.473999, 43.483212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369007, 37.586407, 43.375130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323972, -0.166112, 0.931370,
		0.216847, -0.945217, -0.244010,
		0.920880, 0.281017, -0.270203,
		36.645271, 37.670712, 43.294067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407467, 36.881397, 43.436775>,  <36.000656, 37.473999, 43.483212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407467, 36.881397, 43.436775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658020, 37.181728, 43.520596>,  <36.808350, 37.361927, 43.570889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658020, 37.181728, 43.520596>,  <36.407467, 36.881397, 43.436775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658020, 37.181728, 43.520596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005698, -0.264407, 0.964394,
		0.779497, -0.605271, -0.161341,
		0.626379, 0.750823, 0.209554,
		36.845932, 37.406975, 43.583462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821255, 36.583088, 43.915466>,  <36.407467, 36.881397, 43.436775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821255, 36.583088, 43.915466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966221, 36.953476, 43.957867>,  <37.053200, 37.175709, 43.983307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966221, 36.953476, 43.957867>,  <36.821255, 36.583088, 43.915466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966221, 36.953476, 43.957867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058931, -0.090735, 0.994130,
		0.930151, -0.366535, 0.021684,
		0.362416, 0.925969, 0.105997,
		37.074947, 37.231266, 43.989666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393051, 36.564354, 44.325054>,  <36.821255, 36.583088, 43.915466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393051, 36.564354, 44.325054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244579, 36.934013, 44.361221>,  <37.155495, 37.155807, 44.382919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244579, 36.934013, 44.361221>,  <37.393051, 36.564354, 44.325054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244579, 36.934013, 44.361221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030310, -0.109377, 0.993538,
		0.928066, 0.366042, 0.068609,
		-0.371181, 0.924148, 0.090414,
		37.133224, 37.211258, 44.388344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797344, 36.949276, 44.884613>,  <37.393051, 36.564354, 44.325054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797344, 36.949276, 44.884613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473026, 37.182407, 44.862980>,  <37.278435, 37.322289, 44.849998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473026, 37.182407, 44.862980>,  <37.797344, 36.949276, 44.884613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473026, 37.182407, 44.862980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010641, 0.077706, 0.996919,
		0.585240, 0.808868, -0.056801,
		-0.810790, 0.582833, -0.054083,
		37.229790, 37.357258, 44.846756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958721, 37.353279, 45.353199>,  <37.797344, 36.949276, 44.884613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958721, 37.353279, 45.353199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575085, 37.446568, 45.289017>,  <37.344902, 37.502541, 45.250507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575085, 37.446568, 45.289017>,  <37.958721, 37.353279, 45.353199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575085, 37.446568, 45.289017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121337, 0.173430, 0.977343,
		0.255763, 0.956834, -0.138038,
		-0.959095, 0.233219, -0.160456,
		37.287357, 37.516533, 45.240879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804119, 37.858723, 45.772171>,  <37.958721, 37.353279, 45.353199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804119, 37.858723, 45.772171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447472, 37.694683, 45.695400>,  <37.233482, 37.596260, 45.649338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447472, 37.694683, 45.695400>,  <37.804119, 37.858723, 45.772171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447472, 37.694683, 45.695400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300384, 0.218556, 0.928441,
		-0.338809, 0.885465, -0.318056,
		-0.891615, -0.410103, -0.191931,
		37.179989, 37.571651, 45.637821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323311, 38.252277, 46.124538>,  <37.804119, 37.858723, 45.772171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323311, 38.252277, 46.124538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149071, 37.892418, 46.112621>,  <37.044525, 37.676502, 46.105473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149071, 37.892418, 46.112621>,  <37.323311, 38.252277, 46.124538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149071, 37.892418, 46.112621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240109, 0.084233, 0.967085,
		-0.867525, 0.428416, -0.252705,
		-0.435600, -0.899647, -0.029793,
		37.018391, 37.622524, 46.103683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729595, 38.329697, 46.433102>,  <37.323311, 38.252277, 46.124538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729595, 38.329697, 46.433102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771378, 37.931984, 46.441975>,  <36.796448, 37.693356, 46.447296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771378, 37.931984, 46.441975>,  <36.729595, 38.329697, 46.433102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771378, 37.931984, 46.441975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276748, -0.007638, 0.960912,
		-0.955249, -0.106507, -0.275964,
		0.104452, -0.994283, 0.022179,
		36.802711, 37.633698, 46.448627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093456, 37.982670, 46.739994>,  <36.729595, 38.329697, 46.433102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093456, 37.982670, 46.739994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399021, 37.734921, 46.812450>,  <36.582359, 37.586269, 46.855923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399021, 37.734921, 46.812450>,  <36.093456, 37.982670, 46.739994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399021, 37.734921, 46.812450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097738, 0.166407, 0.981201,
		-0.637877, -0.767254, 0.066584,
		0.763911, -0.619378, 0.181137,
		36.628193, 37.549107, 46.866791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823578, 37.506237, 47.245800>,  <36.093456, 37.982670, 46.739994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823578, 37.506237, 47.245800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222881, 37.482624, 47.245701>,  <36.462463, 37.468456, 47.245640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222881, 37.482624, 47.245701>,  <35.823578, 37.506237, 47.245800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222881, 37.482624, 47.245701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012320, 0.204141, 0.978864,
		-0.057738, -0.977160, 0.204512,
		0.998256, -0.059037, -0.000252,
		36.522358, 37.464912, 47.245625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118328, 36.988655, 47.761436>,  <35.823578, 37.506237, 47.245800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118328, 36.988655, 47.761436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365192, 37.291107, 47.674370>,  <36.513309, 37.472580, 47.622128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365192, 37.291107, 47.674370>,  <36.118328, 36.988655, 47.761436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365192, 37.291107, 47.674370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068351, 0.224072, 0.972173,
		0.783864, -0.614863, 0.086606,
		0.617159, 0.756132, -0.217669,
		36.550339, 37.517948, 47.609070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552105, 36.937378, 48.297329>,  <36.118328, 36.988655, 47.761436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552105, 36.937378, 48.297329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632057, 37.292938, 48.132450>,  <36.680031, 37.506275, 48.033524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632057, 37.292938, 48.132450>,  <36.552105, 36.937378, 48.297329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632057, 37.292938, 48.132450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373256, 0.319887, 0.870834,
		0.905940, -0.327919, -0.267847,
		0.199882, 0.888899, -0.412196,
		36.692020, 37.559608, 48.008793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264996, 37.218632, 48.484409>,  <36.552105, 36.937378, 48.297329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264996, 37.218632, 48.484409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041149, 37.543587, 48.418869>,  <36.906841, 37.738560, 48.379543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041149, 37.543587, 48.418869>,  <37.264996, 37.218632, 48.484409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041149, 37.543587, 48.418869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409607, 0.443006, 0.797476,
		0.720450, 0.379166, -0.580676,
		-0.559619, 0.812391, -0.163854,
		36.873264, 37.787304, 48.369713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484352, 37.631680, 48.994801>,  <37.264996, 37.218632, 48.484409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484352, 37.631680, 48.994801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228474, 37.907806, 48.859596>,  <37.074947, 38.073483, 48.778473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228474, 37.907806, 48.859596>,  <37.484352, 37.631680, 48.994801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228474, 37.907806, 48.859596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128154, 0.529391, 0.838643,
		0.757867, 0.493162, -0.427118,
		-0.639699, 0.690316, -0.338007,
		37.036564, 38.114902, 48.758194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775784, 38.247498, 49.201984>,  <37.484352, 37.631680, 48.994801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775784, 38.247498, 49.201984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388050, 38.325562, 49.142254>,  <37.155411, 38.372398, 49.106415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388050, 38.325562, 49.142254>,  <37.775784, 38.247498, 49.201984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388050, 38.325562, 49.142254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001307, 0.603577, 0.797304,
		0.245731, 0.773052, -0.584814,
		-0.969337, 0.195157, -0.149328,
		37.097248, 38.384109, 49.097454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711063, 39.091385, 49.213451>,  <37.775784, 38.247498, 49.201984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711063, 39.091385, 49.213451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375275, 38.878551, 49.257572>,  <37.173801, 38.750851, 49.284042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375275, 38.878551, 49.257572>,  <37.711063, 39.091385, 49.213451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375275, 38.878551, 49.257572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234948, 0.538432, 0.809253,
		-0.489982, 0.653432, -0.577013,
		-0.839474, -0.532088, 0.110300,
		37.123432, 38.718925, 49.290661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078587, 39.499325, 49.245274>,  <37.711063, 39.091385, 49.213451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078587, 39.499325, 49.245274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969109, 39.158051, 49.422886>,  <36.903423, 38.953285, 49.529453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969109, 39.158051, 49.422886>,  <37.078587, 39.499325, 49.245274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969109, 39.158051, 49.422886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232979, 0.506717, 0.830035,
		-0.933173, 0.123727, -0.337461,
		-0.273695, -0.853188, 0.444029,
		36.887001, 38.902096, 49.556095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477299, 39.649422, 49.588612>,  <37.078587, 39.499325, 49.245274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477299, 39.649422, 49.588612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662296, 39.339993, 49.761902>,  <36.773296, 39.154335, 49.865875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662296, 39.339993, 49.761902>,  <36.477299, 39.649422, 49.588612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662296, 39.339993, 49.761902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117659, 0.430750, 0.894769,
		-0.878781, -0.464797, 0.108201,
		0.462493, -0.773575, 0.433222,
		36.801044, 39.107922, 49.891869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160419, 39.659679, 50.232552>,  <36.477299, 39.649422, 49.588612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160419, 39.659679, 50.232552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477566, 39.422237, 50.287701>,  <36.667854, 39.279774, 50.320789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477566, 39.422237, 50.287701>,  <36.160419, 39.659679, 50.232552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477566, 39.422237, 50.287701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001337, 0.227936, 0.973675,
		-0.609401, -0.771805, 0.181515,
		0.792861, -0.593601, 0.137873,
		36.715424, 39.244156, 50.329063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057167, 39.192753, 50.763481>,  <36.160419, 39.659679, 50.232552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057167, 39.192753, 50.763481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452419, 39.252316, 50.748344>,  <36.689571, 39.288052, 50.739262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452419, 39.252316, 50.748344>,  <36.057167, 39.192753, 50.763481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452419, 39.252316, 50.748344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007699, 0.198028, 0.980166,
		0.153441, -0.968821, 0.194531,
		0.988128, 0.148900, -0.037845,
		36.748859, 39.296986, 50.736992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434902, 38.812164, 51.318218>,  <36.057167, 39.192753, 50.763481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434902, 38.812164, 51.318218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626484, 39.148003, 51.215698>,  <36.741432, 39.349506, 51.154186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626484, 39.148003, 51.215698>,  <36.434902, 38.812164, 51.318218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626484, 39.148003, 51.215698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050182, 0.317676, 0.946871,
		0.876406, -0.440643, 0.194283,
		0.478951, 0.839592, -0.256301,
		36.770168, 39.399879, 51.138809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440327, 39.144886, 51.902378>,  <36.434902, 38.812164, 51.318218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440327, 39.144886, 51.902378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681900, 39.406017, 51.719479>,  <36.826843, 39.562695, 51.609737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681900, 39.406017, 51.719479>,  <36.440327, 39.144886, 51.902378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681900, 39.406017, 51.719479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089851, 0.514267, 0.852910,
		0.791952, -0.556188, 0.251928,
		0.603937, 0.652828, -0.457249,
		36.863079, 39.601868, 51.582306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131676, 39.308670, 52.312145>,  <36.440327, 39.144886, 51.902378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131676, 39.308670, 52.312145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058029, 39.613415, 52.063740>,  <37.013844, 39.796261, 51.914696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058029, 39.613415, 52.063740>,  <37.131676, 39.308670, 52.312145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058029, 39.613415, 52.063740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096958, 0.614660, 0.782810,
		0.978111, 0.204339, -0.039299,
		-0.184115, 0.761865, -0.621018,
		37.002796, 39.841972, 51.877434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620731, 39.710766, 52.538742>,  <37.131676, 39.308670, 52.312145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620731, 39.710766, 52.538742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379265, 39.959427, 52.339092>,  <37.234383, 40.108624, 52.219303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379265, 39.959427, 52.339092>,  <37.620731, 39.710766, 52.538742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379265, 39.959427, 52.339092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010676, 0.632323, 0.774631,
		0.797163, 0.462293, -0.388351,
		-0.603670, 0.621653, -0.499129,
		37.198162, 40.145924, 52.189354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858292, 40.457005, 52.559273>,  <37.620731, 39.710766, 52.538742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858292, 40.457005, 52.559273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465286, 40.489143, 52.492096>,  <37.229481, 40.508427, 52.451790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465286, 40.489143, 52.492096>,  <37.858292, 40.457005, 52.559273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465286, 40.489143, 52.492096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087389, 0.597506, 0.797089,
		0.164390, 0.797829, -0.580038,
		-0.982517, 0.080345, -0.167946,
		37.170532, 40.513248, 52.441711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653683, 41.142731, 52.633251>,  <37.858292, 40.457005, 52.559273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653683, 41.142731, 52.633251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282230, 41.001141, 52.677689>,  <37.059357, 40.916187, 52.704350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282230, 41.001141, 52.677689>,  <37.653683, 41.142731, 52.633251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282230, 41.001141, 52.677689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134807, 0.600921, 0.787858,
		-0.345642, 0.716655, -0.605754,
		-0.928633, -0.353977, 0.111094,
		37.003639, 40.894947, 52.711018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523842, 41.956554, 52.667023>,  <37.653683, 41.142731, 52.633251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523842, 41.956554, 52.667023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763702, 42.257397, 52.557655>,  <37.907619, 42.437901, 52.492035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763702, 42.257397, 52.557655>,  <37.523842, 41.956554, 52.667023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763702, 42.257397, 52.557655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319931, -0.538476, -0.779543,
		-0.733525, 0.379981, -0.563521,
		0.599654, 0.752102, -0.273418,
		37.943600, 42.483028, 52.475632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286770, 42.190849, 51.999828>,  <37.523842, 41.956554, 52.667023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286770, 42.190849, 51.999828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665443, 42.312126, 52.043407>,  <37.892647, 42.384892, 52.069553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665443, 42.312126, 52.043407>,  <37.286770, 42.190849, 51.999828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665443, 42.312126, 52.043407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243688, -0.452680, -0.857728,
		-0.210734, 0.838545, -0.502428,
		0.946683, 0.303188, 0.108948,
		37.949448, 42.403084, 52.076092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528748, 42.463596, 51.367069>,  <37.286770, 42.190849, 51.999828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528748, 42.463596, 51.367069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876820, 42.377136, 51.544186>,  <38.085663, 42.325260, 51.650455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876820, 42.377136, 51.544186>,  <37.528748, 42.463596, 51.367069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876820, 42.377136, 51.544186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394732, -0.232050, -0.889010,
		0.294912, 0.948383, -0.116603,
		0.870180, -0.216153, 0.442792,
		38.137875, 42.312290, 51.677025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045277, 42.859180, 50.926544>,  <37.528748, 42.463596, 51.367069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045277, 42.859180, 50.926544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220032, 42.550110, 51.110760>,  <38.324886, 42.364666, 51.221287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220032, 42.550110, 51.110760>,  <38.045277, 42.859180, 50.926544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220032, 42.550110, 51.110760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373696, -0.309799, -0.874286,
		0.818216, 0.554068, 0.153399,
		0.436891, -0.772679, 0.460535,
		38.351101, 42.318306, 51.248920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718254, 42.778362, 50.595726>,  <38.045277, 42.859180, 50.926544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718254, 42.778362, 50.595726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678864, 42.422585, 50.774250>,  <38.655231, 42.209118, 50.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678864, 42.422585, 50.774250>,  <38.718254, 42.778362, 50.595726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678864, 42.422585, 50.774250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357294, -0.450182, -0.818338,
		0.928786, 0.078877, 0.362125,
		-0.098474, -0.889446, 0.446305,
		38.649323, 42.155750, 50.908142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381149, 42.350773, 50.563530>,  <38.718254, 42.778362, 50.595726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381149, 42.350773, 50.563530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091221, 42.080883, 50.619217>,  <38.917263, 41.918949, 50.652630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091221, 42.080883, 50.619217>,  <39.381149, 42.350773, 50.563530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091221, 42.080883, 50.619217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396674, -0.573941, -0.716408,
		0.563278, -0.464046, 0.683651,
		-0.724822, -0.674724, 0.139214,
		38.873775, 41.878468, 50.660980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780041, 41.746544, 50.413803>,  <39.381149, 42.350773, 50.563530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780041, 41.746544, 50.413803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394268, 41.645527, 50.382607>,  <39.162804, 41.584915, 50.363888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394268, 41.645527, 50.382607>,  <39.780041, 41.746544, 50.413803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394268, 41.645527, 50.382607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195823, -0.484516, -0.852583,
		0.177528, -0.837535, 0.516739,
		-0.964436, -0.252546, -0.077994,
		39.104939, 41.569763, 50.359207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784271, 41.158184, 50.113281>,  <39.780041, 41.746544, 50.413803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784271, 41.158184, 50.113281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400993, 41.254997, 50.052246>,  <39.171028, 41.313084, 50.015625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400993, 41.254997, 50.052246>,  <39.784271, 41.158184, 50.113281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400993, 41.254997, 50.052246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008141, -0.510035, -0.860115,
		-0.286002, -0.825400, 0.486742,
		-0.958194, 0.242032, -0.152590,
		39.113537, 41.327606, 50.006470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573830, 40.531387, 49.831829>,  <39.784271, 41.158184, 50.113281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573830, 40.531387, 49.831829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297756, 40.805355, 49.738430>,  <39.132111, 40.969738, 49.682392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297756, 40.805355, 49.738430>,  <39.573830, 40.531387, 49.831829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297756, 40.805355, 49.738430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065393, -0.380390, -0.922511,
		-0.720671, -0.621436, 0.307329,
		-0.690187, 0.684925, -0.233498,
		39.090698, 41.010834, 49.668381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125664, 40.105408, 49.511669>,  <39.573830, 40.531387, 49.831829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125664, 40.105408, 49.511669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034969, 40.480022, 49.404720>,  <38.980553, 40.704792, 49.340549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034969, 40.480022, 49.404720>,  <39.125664, 40.105408, 49.511669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034969, 40.480022, 49.404720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195022, -0.312622, -0.929642,
		-0.954232, -0.158638, 0.253527,
		-0.226735, 0.936537, -0.267376,
		38.966949, 40.760983, 49.324509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528534, 40.001740, 49.111515>,  <39.125664, 40.105408, 49.511669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528534, 40.001740, 49.111515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656090, 40.358006, 48.981884>,  <38.732624, 40.571766, 48.904106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656090, 40.358006, 48.981884>,  <38.528534, 40.001740, 49.111515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656090, 40.358006, 48.981884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157369, -0.287424, -0.944787,
		-0.934636, 0.352282, 0.048507,
		0.318889, 0.890665, -0.324075,
		38.751755, 40.625206, 48.884663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106983, 40.303337, 48.471535>,  <38.528534, 40.001740, 49.111515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106983, 40.303337, 48.471535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466503, 40.478218, 48.458778>,  <38.682217, 40.583145, 48.451126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466503, 40.478218, 48.458778>,  <38.106983, 40.303337, 48.471535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466503, 40.478218, 48.458778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050187, -0.174902, -0.983306,
		-0.435477, 0.882195, -0.179143,
		0.898800, 0.437198, -0.031891,
		38.736141, 40.609379, 48.449211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061501, 40.718472, 47.949299>,  <38.106983, 40.303337, 48.471535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061501, 40.718472, 47.949299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459225, 40.693367, 47.983727>,  <38.697861, 40.678307, 48.004383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459225, 40.693367, 47.983727>,  <38.061501, 40.718472, 47.949299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459225, 40.693367, 47.983727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067205, -0.257337, -0.963982,
		0.082648, 0.964281, -0.251655,
		0.994310, -0.062759, 0.086073,
		38.757519, 40.674538, 48.009548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338715, 41.127941, 47.390591>,  <38.061501, 40.718472, 47.949299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338715, 41.127941, 47.390591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634922, 40.878242, 47.490150>,  <38.812645, 40.728424, 47.549889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634922, 40.878242, 47.490150>,  <38.338715, 41.127941, 47.390591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634922, 40.878242, 47.490150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104070, -0.259380, -0.960152,
		0.663934, 0.736909, -0.127108,
		0.740514, -0.624249, 0.248901,
		38.857075, 40.690968, 47.564819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899239, 41.257988, 46.913052>,  <38.338715, 41.127941, 47.390591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899239, 41.257988, 46.913052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980015, 40.893845, 47.057526>,  <39.028481, 40.675358, 47.144211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980015, 40.893845, 47.057526>,  <38.899239, 41.257988, 46.913052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980015, 40.893845, 47.057526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050441, -0.358631, -0.932116,
		0.978097, 0.206453, -0.026503,
		0.201943, -0.910363, 0.361190,
		39.040596, 40.620735, 47.165882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612411, 41.157429, 46.766945>,  <38.899239, 41.257988, 46.913052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612411, 41.157429, 46.766945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414837, 40.809719, 46.774773>,  <39.296291, 40.601093, 46.779469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414837, 40.809719, 46.774773>,  <39.612411, 41.157429, 46.766945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414837, 40.809719, 46.774773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316917, -0.200941, -0.926923,
		0.809686, -0.451639, 0.374741,
		-0.493935, -0.869278, 0.019567,
		39.266655, 40.548935, 46.780643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007999, 40.662598, 46.386547>,  <39.612411, 41.157429, 46.766945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007999, 40.662598, 46.386547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676079, 40.439377, 46.385681>,  <39.476925, 40.305447, 46.385162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676079, 40.439377, 46.385681>,  <40.007999, 40.662598, 46.386547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676079, 40.439377, 46.385681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112034, -0.162791, -0.980279,
		0.546692, -0.813683, 0.197605,
		-0.829805, -0.558049, -0.002164,
		39.427135, 40.271961, 46.385033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167389, 40.046223, 45.920113>,  <40.007999, 40.662598, 46.386547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167389, 40.046223, 45.920113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767845, 40.059299, 45.934082>,  <39.528118, 40.067146, 45.942463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767845, 40.059299, 45.934082>,  <40.167389, 40.046223, 45.920113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767845, 40.059299, 45.934082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043495, -0.316576, -0.947570,
		-0.019920, -0.948004, 0.317635,
		-0.998855, 0.032691, 0.034928,
		39.468189, 40.069107, 45.944561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940155, 39.414848, 45.643604>,  <40.167389, 40.046223, 45.920113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940155, 39.414848, 45.643604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631004, 39.665550, 45.603916>,  <39.445515, 39.815971, 45.580101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631004, 39.665550, 45.603916>,  <39.940155, 39.414848, 45.643604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631004, 39.665550, 45.603916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057971, -0.225450, -0.972528,
		-0.631907, -0.745889, 0.210578,
		-0.772873, 0.626755, -0.099224,
		39.399143, 39.853577, 45.574150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328800, 38.979080, 45.465572>,  <39.940155, 39.414848, 45.643604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328800, 38.979080, 45.465572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228207, 39.346489, 45.343544>,  <39.167850, 39.566936, 45.270329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228207, 39.346489, 45.343544>,  <39.328800, 38.979080, 45.465572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228207, 39.346489, 45.343544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165758, -0.351418, -0.921428,
		-0.953561, -0.181159, 0.240630,
		-0.251487, 0.918524, -0.305070,
		39.152760, 39.622047, 45.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830338, 38.828167, 45.035141>,  <39.328800, 38.979080, 45.465572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830338, 38.828167, 45.035141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886173, 39.215252, 44.951183>,  <38.919674, 39.447502, 44.900806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886173, 39.215252, 44.951183>,  <38.830338, 38.828167, 45.035141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886173, 39.215252, 44.951183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279520, -0.164846, -0.945883,
		-0.949939, 0.190703, 0.247483,
		0.139586, 0.967708, -0.209899,
		38.928047, 39.505566, 44.888214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230030, 39.095726, 44.811272>,  <38.830338, 38.828167, 45.035141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230030, 39.095726, 44.811272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473461, 39.371273, 44.653740>,  <38.619518, 39.536602, 44.559223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473461, 39.371273, 44.653740>,  <38.230030, 39.095726, 44.811272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473461, 39.371273, 44.653740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430590, -0.130186, -0.893109,
		-0.666501, 0.713105, 0.217389,
		0.608579, 0.688863, -0.393825,
		38.656036, 39.577930, 44.535591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904202, 39.710052, 44.397701>,  <38.230030, 39.095726, 44.811272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904202, 39.710052, 44.397701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273571, 39.641426, 44.260380>,  <38.495193, 39.600250, 44.177986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273571, 39.641426, 44.260380>,  <37.904202, 39.710052, 44.397701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273571, 39.641426, 44.260380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370564, -0.165809, -0.913887,
		0.099871, 0.971119, -0.216688,
		0.923422, -0.171567, -0.343302,
		38.550598, 39.589954, 44.157391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968014, 40.108994, 43.844059>,  <37.904202, 39.710052, 44.397701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968014, 40.108994, 43.844059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277588, 39.859241, 43.801773>,  <38.463333, 39.709393, 43.776402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277588, 39.859241, 43.801773>,  <37.968014, 40.108994, 43.844059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277588, 39.859241, 43.801773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189255, -0.068745, -0.979518,
		0.604322, 0.778092, -0.171371,
		0.773936, -0.624377, -0.105714,
		38.509769, 39.671928, 43.770058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171928, 40.373501, 43.201183>,  <37.968014, 40.108994, 43.844059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171928, 40.373501, 43.201183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360020, 40.032169, 43.291267>,  <38.472874, 39.827370, 43.345318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360020, 40.032169, 43.291267>,  <38.171928, 40.373501, 43.201183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360020, 40.032169, 43.291267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120329, -0.190809, -0.974224,
		0.874303, 0.485207, 0.012956,
		0.470228, -0.853326, 0.225210,
		38.501087, 39.776173, 43.358829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852093, 40.312405, 42.694775>,  <38.171928, 40.373501, 43.201183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852093, 40.312405, 42.694775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729668, 39.958694, 42.835846>,  <38.656212, 39.746468, 42.920486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729668, 39.958694, 42.835846>,  <38.852093, 40.312405, 42.694775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729668, 39.958694, 42.835846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045584, -0.383640, -0.922357,
		0.950920, -0.266220, 0.157726,
		-0.306060, -0.884278, 0.352676,
		38.637848, 39.693413, 42.941650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328072, 39.902248, 42.315479>,  <38.852093, 40.312405, 42.694775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328072, 39.902248, 42.315479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051048, 39.638702, 42.432953>,  <38.884834, 39.480576, 42.503437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051048, 39.638702, 42.432953>,  <39.328072, 39.902248, 42.315479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051048, 39.638702, 42.432953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094199, -0.486247, -0.868729,
		0.715181, -0.573984, 0.398821,
		-0.692563, -0.658867, 0.293686,
		38.843281, 39.441044, 42.521057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574314, 39.354263, 42.150894>,  <39.328072, 39.902248, 42.315479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574314, 39.354263, 42.150894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186165, 39.258080, 42.160282>,  <38.953274, 39.200371, 42.165916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186165, 39.258080, 42.160282>,  <39.574314, 39.354263, 42.150894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186165, 39.258080, 42.160282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033343, -0.229505, -0.972736,
		0.239287, -0.943138, 0.230724,
		-0.970376, -0.240456, 0.023471,
		38.895050, 39.185944, 42.167324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591679, 38.845833, 41.751472>,  <39.574314, 39.354263, 42.150894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591679, 38.845833, 41.751472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200729, 38.926605, 41.776676>,  <38.966160, 38.975067, 41.791798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200729, 38.926605, 41.776676>,  <39.591679, 38.845833, 41.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200729, 38.926605, 41.776676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148555, -0.443200, -0.884028,
		-0.150583, -0.873384, 0.463168,
		-0.977372, 0.201926, 0.063008,
		38.907516, 38.987183, 41.795578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280109, 38.219124, 41.469795>,  <39.591679, 38.845833, 41.751472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280109, 38.219124, 41.469795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045696, 38.541344, 41.434803>,  <38.905048, 38.734676, 41.413807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045696, 38.541344, 41.434803>,  <39.280109, 38.219124, 41.469795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045696, 38.541344, 41.434803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030545, -0.129846, -0.991064,
		-0.809715, -0.578119, 0.100699,
		-0.586028, 0.805555, -0.087480,
		38.869888, 38.783009, 41.408558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812988, 38.004101, 41.034660>,  <39.280109, 38.219124, 41.469795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812988, 38.004101, 41.034660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825558, 38.403507, 41.016907>,  <38.833099, 38.643150, 41.006252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825558, 38.403507, 41.016907>,  <38.812988, 38.004101, 41.034660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825558, 38.403507, 41.016907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031368, -0.045371, -0.998478,
		-0.999014, 0.029979, -0.032747,
		0.031419, 0.998520, -0.044386,
		38.834984, 38.703064, 41.003590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392258, 38.118866, 40.419353>,  <38.812988, 38.004101, 41.034660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392258, 38.118866, 40.419353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586666, 38.457424, 40.506435>,  <38.703312, 38.660561, 40.558685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586666, 38.457424, 40.506435>,  <38.392258, 38.118866, 40.419353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586666, 38.457424, 40.506435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047204, 0.223322, -0.973601,
		-0.872671, 0.483468, 0.068587,
		0.486022, 0.846396, 0.217708,
		38.732471, 38.711342, 40.571747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984039, 38.690990, 39.988838>,  <38.392258, 38.118866, 40.419353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984039, 38.690990, 39.988838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350231, 38.818008, 40.087677>,  <38.569946, 38.894218, 40.146980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350231, 38.818008, 40.087677>,  <37.984039, 38.690990, 39.988838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350231, 38.818008, 40.087677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226772, 0.100072, -0.968793,
		-0.332360, 0.942949, 0.019605,
		0.915484, 0.317542, 0.247094,
		38.624878, 38.913273, 40.161804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102264, 39.316181, 39.631618>,  <37.984039, 38.690990, 39.988838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102264, 39.316181, 39.631618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454449, 39.140362, 39.702713>,  <38.665760, 39.034870, 39.745369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454449, 39.140362, 39.702713>,  <38.102264, 39.316181, 39.631618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454449, 39.140362, 39.702713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283290, 0.187107, -0.940605,
		0.380184, 0.878515, 0.289259,
		0.880458, -0.439547, 0.177740,
		38.718586, 39.008499, 39.756035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598595, 39.727737, 39.301769>,  <38.102264, 39.316181, 39.631618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598595, 39.727737, 39.301769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779705, 39.373573, 39.343800>,  <38.888371, 39.161076, 39.369019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779705, 39.373573, 39.343800>,  <38.598595, 39.727737, 39.301769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779705, 39.373573, 39.343800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549535, 0.184311, -0.814887,
		0.702141, 0.426708, 0.570016,
		0.452779, -0.885409, 0.105079,
		38.915539, 39.107952, 39.375324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251995, 39.878399, 39.016163>,  <38.598595, 39.727737, 39.301769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251995, 39.878399, 39.016163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244694, 39.479324, 39.042385>,  <39.240314, 39.239880, 39.058117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244694, 39.479324, 39.042385>,  <39.251995, 39.878399, 39.016163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244694, 39.479324, 39.042385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532496, -0.065192, -0.843918,
		0.846236, 0.019505, 0.532452,
		-0.018251, -0.997682, 0.065554,
		39.239220, 39.180019, 39.062050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931751, 39.613037, 39.045258>,  <39.251995, 39.878399, 39.016163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931751, 39.613037, 39.045258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697170, 39.329491, 38.888500>,  <39.556419, 39.159363, 38.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697170, 39.329491, 38.888500>,  <39.931751, 39.613037, 39.045258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697170, 39.329491, 38.888500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447586, 0.119635, -0.886202,
		0.675082, -0.695124, 0.247118,
		-0.586456, -0.708865, -0.391891,
		39.521233, 39.116833, 38.770931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370083, 39.151978, 38.739189>,  <39.931751, 39.613037, 39.045258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370083, 39.151978, 38.739189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033833, 39.081795, 38.534225>,  <39.832081, 39.039684, 38.411247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033833, 39.081795, 38.534225>,  <40.370083, 39.151978, 38.739189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033833, 39.081795, 38.534225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504860, 0.088742, -0.858628,
		0.196129, -0.980478, 0.013985,
		-0.840625, -0.175463, -0.512409,
		39.781647, 39.029156, 38.380505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557884, 38.730965, 38.158398>,  <40.370083, 39.151978, 38.739189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557884, 38.730965, 38.158398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208958, 38.887657, 38.041363>,  <39.999599, 38.981674, 37.971142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208958, 38.887657, 38.041363>,  <40.557884, 38.730965, 38.158398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208958, 38.887657, 38.041363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360098, 0.109935, -0.926414,
		-0.330740, -0.913488, -0.236960,
		-0.872319, 0.391731, -0.292586,
		39.947262, 39.005177, 37.953587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268986, 38.359547, 37.504314>,  <40.557884, 38.730965, 38.158398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268986, 38.359547, 37.504314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132019, 38.735332, 37.509449>,  <40.049839, 38.960804, 37.512527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132019, 38.735332, 37.509449>,  <40.268986, 38.359547, 37.504314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132019, 38.735332, 37.509449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489578, 0.190067, -0.850992,
		-0.801912, -0.285112, -0.525022,
		-0.342418, 0.939460, 0.012833,
		40.029293, 39.017170, 37.513298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763546, 38.536209, 37.017250>,  <40.268986, 38.359547, 37.504314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763546, 38.536209, 37.017250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017399, 38.826836, 37.122585>,  <40.169712, 39.001209, 37.185787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017399, 38.826836, 37.122585>,  <39.763546, 38.536209, 37.017250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017399, 38.826836, 37.122585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505731, -0.132799, -0.852409,
		-0.584358, 0.674145, -0.451724,
		0.634636, 0.726562, 0.263334,
		40.207790, 39.044804, 37.201584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767712, 39.007225, 36.434208>,  <39.763546, 38.536209, 37.017250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767712, 39.007225, 36.434208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107582, 39.065262, 36.636986>,  <40.311504, 39.100082, 36.758652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107582, 39.065262, 36.636986>,  <39.767712, 39.007225, 36.434208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107582, 39.065262, 36.636986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517574, -0.045697, -0.854417,
		-0.100803, 0.988362, -0.113924,
		0.849680, 0.145092, 0.506945,
		40.362488, 39.108788, 36.789070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221077, 39.356014, 35.984318>,  <39.767712, 39.007225, 36.434208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221077, 39.356014, 35.984318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442360, 39.164886, 36.257271>,  <40.575130, 39.050209, 36.421043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442360, 39.164886, 36.257271>,  <40.221077, 39.356014, 35.984318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442360, 39.164886, 36.257271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537879, -0.420630, -0.730587,
		0.636122, 0.771205, 0.024316,
		0.553204, -0.477821, 0.682387,
		40.608322, 39.021542, 36.461987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862755, 39.653629, 36.027691>,  <40.221077, 39.356014, 35.984318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862755, 39.653629, 36.027691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868919, 39.259354, 36.094837>,  <40.872620, 39.022789, 36.135124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868919, 39.259354, 36.094837>,  <40.862755, 39.653629, 36.027691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868919, 39.259354, 36.094837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758666, -0.097825, -0.644093,
		0.651297, 0.137283, 0.746301,
		0.015416, -0.985689, 0.167865,
		40.873543, 38.963646, 36.145195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529205, 39.481033, 36.064907>,  <40.862755, 39.653629, 36.027691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529205, 39.481033, 36.064907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334793, 39.136860, 36.003677>,  <41.218147, 38.930355, 35.966938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334793, 39.136860, 36.003677>,  <41.529205, 39.481033, 36.064907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334793, 39.136860, 36.003677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756546, -0.326546, -0.566574,
		0.437511, -0.391181, 0.809667,
		-0.486026, -0.860433, -0.153079,
		41.188984, 38.878731, 35.957752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041950, 38.874680, 36.123623>,  <41.529205, 39.481033, 36.064907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041950, 38.874680, 36.123623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749687, 38.776268, 35.868874>,  <41.574329, 38.717220, 35.716022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749687, 38.776268, 35.868874>,  <42.041950, 38.874680, 36.123623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749687, 38.776268, 35.868874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682566, -0.284373, -0.673227,
		-0.015476, -0.926608, 0.375711,
		-0.730660, -0.246029, -0.636872,
		41.530491, 38.702461, 35.677811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047287, 38.091927, 35.985779>,  <42.041950, 38.874680, 36.123623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047287, 38.091927, 35.985779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946716, 38.355152, 35.701881>,  <41.886372, 38.513088, 35.531544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946716, 38.355152, 35.701881>,  <42.047287, 38.091927, 35.985779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946716, 38.355152, 35.701881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710091, -0.372875, -0.597274,
		-0.657688, -0.654157, -0.373530,
		-0.251431, 0.658060, -0.709746,
		41.871288, 38.552570, 35.488956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539909, 38.601574, 35.627872>,  <42.047287, 38.091927, 35.985779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539909, 38.601574, 35.627872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808910, 38.341469, 35.486511>,  <42.970310, 38.185406, 35.401695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808910, 38.341469, 35.486511>,  <42.539909, 38.601574, 35.627872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808910, 38.341469, 35.486511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276754, 0.663822, -0.694800,
		0.686400, 0.369451, 0.626387,
		0.672504, -0.650266, -0.353401,
		43.010662, 38.146389, 35.380489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958157, 39.025467, 35.384960>,  <42.539909, 38.601574, 35.627872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958157, 39.025467, 35.384960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067753, 38.685532, 35.204865>,  <43.133511, 38.481571, 35.096809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067753, 38.685532, 35.204865>,  <42.958157, 39.025467, 35.384960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067753, 38.685532, 35.204865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203967, 0.508849, -0.836344,
		0.939856, 0.137313, 0.312755,
		0.273986, -0.849834, -0.450237,
		43.149948, 38.430580, 35.069794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640675, 39.097157, 35.013477>,  <42.958157, 39.025467, 35.384960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640675, 39.097157, 35.013477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449905, 38.792084, 34.838726>,  <43.335442, 38.609039, 34.733875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449905, 38.792084, 34.838726>,  <43.640675, 39.097157, 35.013477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449905, 38.792084, 34.838726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158786, 0.414109, -0.896270,
		0.864481, -0.496826, -0.076397,
		-0.476927, -0.762678, -0.436878,
		43.306828, 38.563282, 34.707661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095261, 39.097664, 34.431938>,  <43.640675, 39.097157, 35.013477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095261, 39.097664, 34.431938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758698, 38.906811, 34.330441>,  <43.556759, 38.792301, 34.269543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758698, 38.906811, 34.330441>,  <44.095261, 39.097664, 34.431938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758698, 38.906811, 34.330441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038818, 0.414964, -0.909009,
		0.539010, -0.774695, -0.330631,
		-0.841405, -0.477131, -0.253742,
		43.506275, 38.763672, 34.254318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153576, 38.841274, 33.795559>,  <44.095261, 39.097664, 34.431938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153576, 38.841274, 33.795559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756233, 38.855404, 33.839363>,  <43.517826, 38.863884, 33.865646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756233, 38.855404, 33.839363>,  <44.153576, 38.841274, 33.795559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756233, 38.855404, 33.839363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090712, 0.345111, -0.934168,
		-0.070796, -0.937897, -0.339613,
		-0.993358, 0.035329, 0.109511,
		43.458225, 38.866001, 33.872215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869877, 38.416904, 33.219395>,  <44.153576, 38.841274, 33.795559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869877, 38.416904, 33.219395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553722, 38.634121, 33.332813>,  <43.364029, 38.764450, 33.400864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553722, 38.634121, 33.332813>,  <43.869877, 38.416904, 33.219395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553722, 38.634121, 33.332813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096223, 0.347055, -0.932895,
		-0.605003, -0.764632, -0.222055,
		-0.790387, 0.543038, 0.283545,
		43.316605, 38.797031, 33.417877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277046, 38.311783, 32.682510>,  <43.869877, 38.416904, 33.219395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277046, 38.311783, 32.682510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248203, 38.669273, 32.859619>,  <43.230896, 38.883770, 32.965885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248203, 38.669273, 32.859619>,  <43.277046, 38.311783, 32.682510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248203, 38.669273, 32.859619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005822, 0.443542, -0.896235,
		-0.997380, -0.067207, -0.026781,
		-0.072112, 0.893730, 0.442771,
		43.226570, 38.937393, 32.992451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815712, 38.509884, 32.237331>,  <43.277046, 38.311783, 32.682510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815712, 38.509884, 32.237331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960258, 38.834171, 32.421566>,  <43.046986, 39.028744, 32.532108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960258, 38.834171, 32.421566>,  <42.815712, 38.509884, 32.237331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960258, 38.834171, 32.421566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025930, 0.502518, -0.864178,
		-0.932063, 0.300342, 0.202615,
		0.361367, 0.810722, 0.460591,
		43.068668, 39.077389, 32.559742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349117, 39.142109, 32.075340>,  <42.815712, 38.509884, 32.237331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349117, 39.142109, 32.075340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714558, 39.269665, 32.176247>,  <42.933823, 39.346199, 32.236790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714558, 39.269665, 32.176247>,  <42.349117, 39.142109, 32.075340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714558, 39.269665, 32.176247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042980, 0.692678, -0.719965,
		-0.404326, 0.646921, 0.646540,
		0.913604, 0.318889, 0.252263,
		42.988640, 39.365330, 32.251926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311790, 39.816902, 32.067654>,  <42.349117, 39.142109, 32.075340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311790, 39.816902, 32.067654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706726, 39.761650, 32.036453>,  <42.943687, 39.728500, 32.017731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706726, 39.761650, 32.036453>,  <42.311790, 39.816902, 32.067654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706726, 39.761650, 32.036453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021803, 0.605210, -0.795767,
		0.157129, 0.783990, 0.600559,
		0.987337, -0.138132, -0.078003,
		43.002926, 39.720211, 32.013054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520046, 40.470001, 31.820404>,  <42.311790, 39.816902, 32.067654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520046, 40.470001, 31.820404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842182, 40.244068, 31.748407>,  <43.035465, 40.108509, 31.705210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842182, 40.244068, 31.748407>,  <42.520046, 40.470001, 31.820404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842182, 40.244068, 31.748407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159217, 0.498551, -0.852113,
		0.571034, 0.657582, 0.491433,
		0.805338, -0.564830, -0.179992,
		43.083782, 40.074619, 31.694410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085293, 40.917370, 31.730125>,  <42.520046, 40.470001, 31.820404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085293, 40.917370, 31.730125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253452, 40.595802, 31.561848>,  <43.354347, 40.402863, 31.460880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253452, 40.595802, 31.561848>,  <43.085293, 40.917370, 31.730125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253452, 40.595802, 31.561848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346010, 0.570665, -0.744727,
		0.838772, 0.167520, 0.518071,
		0.420402, -0.803914, -0.420695,
		43.379574, 40.354630, 31.435638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830818, 41.080776, 31.611654>,  <43.085293, 40.917370, 31.730125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830818, 41.080776, 31.611654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725288, 40.779984, 31.370022>,  <43.661972, 40.599506, 31.225042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725288, 40.779984, 31.370022>,  <43.830818, 41.080776, 31.611654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725288, 40.779984, 31.370022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456527, 0.454336, -0.764959,
		0.849694, -0.477594, 0.223437,
		-0.263824, -0.751986, -0.604081,
		43.646141, 40.554386, 31.188797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340828, 41.037533, 31.232954>,  <43.830818, 41.080776, 31.611654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340828, 41.037533, 31.232954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077106, 40.843079, 31.003527>,  <43.918873, 40.726406, 30.865870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077106, 40.843079, 31.003527>,  <44.340828, 41.037533, 31.232954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077106, 40.843079, 31.003527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341368, 0.486151, -0.804441,
		0.669912, -0.726172, -0.154570,
		-0.659307, -0.486140, -0.573571,
		43.879314, 40.697235, 30.831455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715832, 40.881977, 30.698877>,  <44.340828, 41.037533, 31.232954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715832, 40.881977, 30.698877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346764, 40.848328, 30.548355>,  <44.125324, 40.828136, 30.458042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346764, 40.848328, 30.548355>,  <44.715832, 40.881977, 30.698877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346764, 40.848328, 30.548355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275229, 0.539821, -0.795514,
		0.270060, -0.837566, -0.474922,
		-0.922668, -0.084124, -0.376306,
		44.069962, 40.823090, 30.435463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716740, 40.527985, 29.979906>,  <44.715832, 40.881977, 30.698877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716740, 40.527985, 29.979906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394909, 40.765522, 29.978849>,  <44.201809, 40.908043, 29.978214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394909, 40.765522, 29.978849>,  <44.716740, 40.527985, 29.979906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394909, 40.765522, 29.978849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284434, 0.381458, -0.879538,
		-0.521296, -0.708410, -0.475822,
		-0.804579, 0.593839, -0.002644,
		44.153534, 40.943672, 29.978056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682190, 40.776947, 29.309164>,  <44.716740, 40.527985, 29.979906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682190, 40.776947, 29.309164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402607, 41.016605, 29.465363>,  <44.234859, 41.160400, 29.559082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402607, 41.016605, 29.465363>,  <44.682190, 40.776947, 29.309164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402607, 41.016605, 29.465363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090047, 0.615404, -0.783051,
		-0.709475, -0.512154, -0.484090,
		-0.698954, 0.599146, 0.390496,
		44.192921, 41.196350, 29.582512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212048, 40.849415, 28.838251>,  <44.682190, 40.776947, 29.309164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212048, 40.849415, 28.838251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164658, 41.164738, 29.079758>,  <44.136223, 41.353931, 29.224663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164658, 41.164738, 29.079758>,  <44.212048, 40.849415, 28.838251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164658, 41.164738, 29.079758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118746, 0.614935, -0.779586,
		-0.985831, -0.020668, -0.166465,
		-0.118478, 0.788307, 0.603768,
		44.129116, 41.401230, 29.260887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687225, 41.251011, 28.549229>,  <44.212048, 40.849415, 28.838251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687225, 41.251011, 28.549229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899673, 41.500751, 28.778345>,  <44.027142, 41.650597, 28.915815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899673, 41.500751, 28.778345>,  <43.687225, 41.251011, 28.549229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899673, 41.500751, 28.778345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134405, 0.605381, -0.784506,
		-0.836568, 0.493653, 0.237614,
		0.531121, 0.624356, 0.572792,
		44.059010, 41.688057, 28.950182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425545, 41.890499, 28.352148>,  <43.687225, 41.251011, 28.549229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425545, 41.890499, 28.352148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795403, 41.910801, 28.503120>,  <44.017319, 41.922981, 28.593704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795403, 41.910801, 28.503120>,  <43.425545, 41.890499, 28.352148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795403, 41.910801, 28.503120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319501, 0.435941, -0.841353,
		-0.207241, 0.898543, 0.386875,
		0.924646, 0.050756, 0.377430,
		44.072796, 41.926029, 28.616350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784145, 42.536377, 28.264566>,  <43.425545, 41.890499, 28.352148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784145, 42.536377, 28.264566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076462, 42.263363, 28.268517>,  <44.251850, 42.099556, 28.270887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076462, 42.263363, 28.268517>,  <43.784145, 42.536377, 28.264566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076462, 42.263363, 28.268517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373747, 0.387982, -0.842486,
		0.571191, 0.619371, 0.538627,
		0.730789, -0.682532, 0.009877,
		44.295700, 42.058605, 28.271479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589252, 42.754868, 28.273930>,  <43.784145, 42.536377, 28.264566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589252, 42.754868, 28.273930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532459, 42.406597, 28.085558>,  <44.498383, 42.197636, 27.972536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532459, 42.406597, 28.085558>,  <44.589252, 42.754868, 28.273930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532459, 42.406597, 28.085558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449414, 0.367191, -0.814370,
		0.881969, -0.327265, 0.339159,
		-0.141979, -0.870672, -0.470928,
		44.489864, 42.145397, 27.944279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255039, 42.407330, 28.040382>,  <44.589252, 42.754868, 28.273930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255039, 42.407330, 28.040382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955357, 42.298313, 27.798920>,  <44.775547, 42.232903, 27.654041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955357, 42.298313, 27.798920>,  <45.255039, 42.407330, 28.040382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955357, 42.298313, 27.798920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453143, 0.453800, -0.767286,
		0.483063, -0.848400, -0.216487,
		-0.749207, -0.272548, -0.603660,
		44.730595, 42.216549, 27.617823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378326, 42.719154, 28.698153>,  <45.255039, 42.407330, 28.040382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378326, 42.719154, 28.698153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649761, 42.581543, 28.438562>,  <45.812622, 42.498978, 28.282808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649761, 42.581543, 28.438562>,  <45.378326, 42.719154, 28.698153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649761, 42.581543, 28.438562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734301, -0.296069, -0.610856,
		0.018010, 0.891060, -0.453527,
		0.678585, -0.344027, -0.648974,
		45.853336, 42.478336, 28.243870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979870, 43.080318, 29.087942>,  <45.378326, 42.719154, 28.698153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979870, 43.080318, 29.087942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665302, 42.888428, 29.243591>,  <45.476562, 42.773293, 29.336981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665302, 42.888428, 29.243591>,  <45.979870, 43.080318, 29.087942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665302, 42.888428, 29.243591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139894, -0.475263, -0.868651,
		0.601649, -0.737556, 0.306643,
		-0.786415, -0.479726, 0.389121,
		45.429379, 42.744511, 29.360327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726368, 43.057640, 28.712549>,  <45.979870, 43.080318, 29.087942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.726368, 43.057640, 28.712549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126190, 43.054298, 28.701149>,  <47.366085, 43.052296, 28.694309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126190, 43.054298, 28.701149>,  <46.726368, 43.057640, 28.712549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.126190, 43.054298, 28.701149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009932, -0.998391, -0.055825,
		-0.027990, 0.056084, -0.998034,
		0.999559, -0.008350, -0.028502,
		47.426060, 43.051792, 28.692598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003765, 42.736279, 28.131124>,  <46.726368, 43.057640, 28.712549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003765, 42.736279, 28.131124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.252991, 42.676094, 28.438148>,  <47.402527, 42.639984, 28.622362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.252991, 42.676094, 28.438148>,  <47.003765, 42.736279, 28.131124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252991, 42.676094, 28.438148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082373, -0.988489, -0.126901,
		0.777818, 0.015842, -0.628290,
		0.623068, -0.150460, 0.767560,
		47.439911, 42.630955, 28.668417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.289265, 42.135387, 28.552031>,  <47.003765, 42.736279, 28.131124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.289265, 42.135387, 28.552031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431992, 41.810898, 28.366732>,  <47.517628, 41.616203, 28.255552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431992, 41.810898, 28.366732>,  <47.289265, 42.135387, 28.552031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431992, 41.810898, 28.366732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423940, -0.582500, 0.693519,
		-0.832441, -0.051070, -0.551756,
		0.356816, -0.811225, -0.463246,
		47.539036, 41.567532, 28.227758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743790, 41.617504, 28.313231>,  <47.289265, 42.135387, 28.552031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743790, 41.617504, 28.313231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081123, 41.418816, 28.395258>,  <47.283524, 41.299603, 28.444475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081123, 41.418816, 28.395258>,  <46.743790, 41.617504, 28.313231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.081123, 41.418816, 28.395258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496569, -0.574427, 0.650733,
		-0.205433, -0.650619, -0.731090,
		0.843337, -0.496718, 0.205071,
		47.334126, 41.269798, 28.456779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703278, 40.845364, 28.236126>,  <46.743790, 41.617504, 28.313231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703278, 40.845364, 28.236126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936790, 40.993553, 28.525108>,  <47.076897, 41.082466, 28.698498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936790, 40.993553, 28.525108>,  <46.703278, 40.845364, 28.236126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936790, 40.993553, 28.525108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565804, -0.452535, 0.689259,
		0.582292, -0.811147, -0.054564,
		0.583782, 0.370477, 0.722457,
		47.111927, 41.104694, 28.741846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.975483, 40.330097, 28.709747>,  <46.703278, 40.845364, 28.236126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.975483, 40.330097, 28.709747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934601, 40.667454, 28.920746>,  <46.910072, 40.869865, 29.047344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934601, 40.667454, 28.920746>,  <46.975483, 40.330097, 28.709747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934601, 40.667454, 28.920746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417638, -0.517654, 0.746734,
		0.902847, -0.143985, 0.405136,
		-0.102202, 0.843388, 0.527496,
		46.903942, 40.920471, 29.078995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391937, 40.273457, 29.233831>,  <46.975483, 40.330097, 28.709747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391937, 40.273457, 29.233831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071167, 40.500484, 29.308428>,  <46.878704, 40.636700, 29.353186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071167, 40.500484, 29.308428>,  <47.391937, 40.273457, 29.233831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071167, 40.500484, 29.308428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207825, -0.557688, 0.803612,
		0.560110, 0.605680, 0.565180,
		-0.801926, 0.567570, 0.186491,
		46.830589, 40.670757, 29.364376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333443, 40.324387, 29.921476>,  <47.391937, 40.273457, 29.233831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333443, 40.324387, 29.921476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964966, 40.427025, 29.804472>,  <46.743881, 40.488605, 29.734268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964966, 40.427025, 29.804472>,  <47.333443, 40.324387, 29.921476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964966, 40.427025, 29.804472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385210, -0.707497, 0.592504,
		-0.054919, 0.658490, 0.750583,
		-0.921193, 0.256593, -0.292512,
		46.688606, 40.504002, 29.716719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942253, 40.601192, 30.505951>,  <47.333443, 40.324387, 29.921476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942253, 40.601192, 30.505951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686024, 40.457924, 30.234251>,  <46.532288, 40.371964, 30.071232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686024, 40.457924, 30.234251>,  <46.942253, 40.601192, 30.505951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686024, 40.457924, 30.234251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463213, -0.525269, 0.713811,
		-0.612454, 0.771886, 0.170565,
		-0.640573, -0.358169, -0.679250,
		46.493851, 40.350471, 30.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386326, 40.512642, 30.829149>,  <46.942253, 40.601192, 30.505951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386326, 40.512642, 30.829149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310875, 40.282467, 30.510832>,  <46.265602, 40.144363, 30.319841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310875, 40.282467, 30.510832>,  <46.386326, 40.512642, 30.829149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310875, 40.282467, 30.510832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436550, -0.676743, 0.592827,
		-0.879684, 0.459229, -0.123554,
		-0.188629, -0.575438, -0.795796,
		46.254288, 40.109837, 30.272093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770081, 40.260696, 31.016598>,  <46.386326, 40.512642, 30.829149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770081, 40.260696, 31.016598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925430, 40.020962, 30.736610>,  <46.018639, 39.877121, 30.568617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925430, 40.020962, 30.736610>,  <45.770081, 40.260696, 31.016598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925430, 40.020962, 30.736610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262093, -0.800067, 0.539629,
		-0.883445, -0.026119, -0.467806,
		0.388371, -0.599341, -0.699970,
		46.041943, 39.841160, 30.526619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315536, 39.643379, 31.019537>,  <45.770081, 40.260696, 31.016598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315536, 39.643379, 31.019537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634880, 39.488480, 30.835077>,  <45.826488, 39.395542, 30.724401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634880, 39.488480, 30.835077>,  <45.315536, 39.643379, 31.019537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634880, 39.488480, 30.835077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189033, -0.888258, 0.418646,
		-0.571737, -0.247059, -0.782355,
		0.798363, -0.387247, -0.461147,
		45.874390, 39.372307, 30.696733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108364, 38.880161, 30.886126>,  <45.315536, 39.643379, 31.019537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108364, 38.880161, 30.886126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504013, 38.872887, 30.827747>,  <45.741402, 38.868523, 30.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504013, 38.872887, 30.827747>,  <45.108364, 38.880161, 30.886126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504013, 38.872887, 30.827747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039725, -0.922401, 0.384186,
		-0.141607, -0.385806, -0.911648,
		0.989126, -0.018188, -0.145944,
		45.800751, 38.867432, 30.783964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292919, 38.190556, 30.456707>,  <45.108364, 38.880161, 30.886126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292919, 38.190556, 30.456707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619274, 38.341869, 30.631628>,  <45.815086, 38.432655, 30.736582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619274, 38.341869, 30.631628>,  <45.292919, 38.190556, 30.456707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619274, 38.341869, 30.631628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066179, -0.812425, 0.579298,
		0.574414, -0.443701, -0.687880,
		0.815885, 0.378280, 0.437304,
		45.864040, 38.455353, 30.762819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642975, 37.628613, 30.490683>,  <45.292919, 38.190556, 30.456707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642975, 37.628613, 30.490683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821159, 37.876839, 30.748819>,  <45.928070, 38.025776, 30.903702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821159, 37.876839, 30.748819>,  <45.642975, 37.628613, 30.490683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821159, 37.876839, 30.748819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120500, -0.755806, 0.643613,
		0.887156, -0.208940, -0.411460,
		0.445460, 0.620566, 0.645340,
		45.954796, 38.063007, 30.942421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179272, 37.239952, 30.827604>,  <45.642975, 37.628613, 30.490683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179272, 37.239952, 30.827604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071301, 37.527031, 31.084370>,  <46.006516, 37.699276, 31.238430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071301, 37.527031, 31.084370>,  <46.179272, 37.239952, 30.827604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071301, 37.527031, 31.084370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004061, -0.667504, 0.744595,
		0.962871, 0.198382, 0.183094,
		-0.269931, 0.717693, 0.641915,
		45.990322, 37.742340, 31.276943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640579, 37.140659, 31.427923>,  <46.179272, 37.239952, 30.827604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640579, 37.140659, 31.427923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317738, 37.333195, 31.564688>,  <46.124035, 37.448715, 31.646746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317738, 37.333195, 31.564688>,  <46.640579, 37.140659, 31.427923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.317738, 37.333195, 31.564688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045571, -0.526589, 0.848898,
		0.588654, 0.700727, 0.403075,
		-0.807100, 0.481338, 0.341912,
		46.075607, 37.477596, 31.667261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.833736, 37.267262, 32.132671>,  <46.640579, 37.140659, 31.427923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.833736, 37.267262, 32.132671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437874, 37.298901, 32.084812>,  <46.200356, 37.317883, 32.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437874, 37.298901, 32.084812>,  <46.833736, 37.267262, 32.132671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437874, 37.298901, 32.084812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143163, -0.595670, 0.790368,
		-0.008761, 0.799325, 0.600835,
		-0.989660, 0.079093, -0.119652,
		46.140976, 37.322628, 32.048916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571663, 37.437210, 32.785202>,  <46.833736, 37.267262, 32.132671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571663, 37.437210, 32.785202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237526, 37.307705, 32.607494>,  <46.037045, 37.230003, 32.500870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237526, 37.307705, 32.607494>,  <46.571663, 37.437210, 32.785202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237526, 37.307705, 32.607494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236079, -0.518575, 0.821795,
		-0.496454, 0.791365, 0.356755,
		-0.835344, -0.323761, -0.444273,
		45.986923, 37.210575, 32.474213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065029, 37.643246, 33.243607>,  <46.571663, 37.437210, 32.785202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065029, 37.643246, 33.243607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903946, 37.355244, 33.017536>,  <45.807297, 37.182442, 32.881893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903946, 37.355244, 33.017536>,  <46.065029, 37.643246, 33.243607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903946, 37.355244, 33.017536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489366, -0.352443, 0.797688,
		-0.773530, 0.597809, -0.210415,
		-0.402706, -0.720006, -0.565172,
		45.783134, 37.139240, 32.847984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328243, 37.624989, 33.413441>,  <46.065029, 37.643246, 33.243607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328243, 37.624989, 33.413441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397671, 37.258892, 33.267998>,  <45.439327, 37.039234, 33.180733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397671, 37.258892, 33.267998>,  <45.328243, 37.624989, 33.413441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397671, 37.258892, 33.267998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409874, -0.402849, 0.818361,
		-0.895476, 0.006990, -0.445056,
		0.173570, -0.915240, -0.363607,
		45.449741, 36.984322, 33.158916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739117, 37.326138, 33.620213>,  <45.328243, 37.624989, 33.413441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739117, 37.326138, 33.620213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001331, 37.039516, 33.524864>,  <45.158661, 36.867542, 33.467655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001331, 37.039516, 33.524864>,  <44.739117, 37.326138, 33.620213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001331, 37.039516, 33.524864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168939, -0.446812, 0.878532,
		-0.736025, -0.535639, -0.413955,
		0.655536, -0.716554, -0.238374,
		45.197990, 36.824551, 33.453350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367176, 36.788860, 33.715912>,  <44.739117, 37.326138, 33.620213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367176, 36.788860, 33.715912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743946, 36.657352, 33.743320>,  <44.970009, 36.578449, 33.759766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743946, 36.657352, 33.743320>,  <44.367176, 36.788860, 33.715912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743946, 36.657352, 33.743320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262490, -0.593458, 0.760859,
		-0.209482, -0.734656, -0.645289,
		0.941922, -0.328768, 0.068521,
		45.026524, 36.558723, 33.763878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307865, 36.009789, 33.735191>,  <44.367176, 36.788860, 33.715912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307865, 36.009789, 33.735191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660198, 36.132515, 33.879410>,  <44.871597, 36.206150, 33.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660198, 36.132515, 33.879410>,  <44.307865, 36.009789, 33.735191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660198, 36.132515, 33.879410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207717, -0.433886, 0.876696,
		0.425419, -0.847117, -0.318452,
		0.880836, 0.306816, 0.360544,
		44.924450, 36.224560, 33.987572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596043, 35.519455, 34.158726>,  <44.307865, 36.009789, 33.735191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596043, 35.519455, 34.158726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844463, 35.802723, 34.293060>,  <44.993515, 35.972683, 34.373661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844463, 35.802723, 34.293060>,  <44.596043, 35.519455, 34.158726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844463, 35.802723, 34.293060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055322, -0.387814, 0.920076,
		0.781813, -0.589995, -0.201676,
		0.621053, 0.708170, 0.335838,
		45.030781, 36.015175, 34.393810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295723, 35.215984, 34.455616>,  <44.596043, 35.519455, 34.158726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295723, 35.215984, 34.455616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230614, 35.563198, 34.643246>,  <45.191547, 35.771526, 34.755821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230614, 35.563198, 34.643246>,  <45.295723, 35.215984, 34.455616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230614, 35.563198, 34.643246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312856, -0.496285, 0.809829,
		0.935749, -0.014934, 0.352350,
		-0.162772, 0.868031, 0.469070,
		45.181782, 35.823608, 34.783966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462952, 35.106110, 35.167843>,  <45.295723, 35.215984, 34.455616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462952, 35.106110, 35.167843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230579, 35.431271, 35.151360>,  <45.091156, 35.626369, 35.141468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230579, 35.431271, 35.151360>,  <45.462952, 35.106110, 35.167843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230579, 35.431271, 35.151360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390530, -0.233949, 0.890368,
		0.714144, 0.533339, 0.453373,
		-0.580934, 0.812907, -0.041211,
		45.056297, 35.675144, 35.138996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432789, 35.465137, 35.936508>,  <45.462952, 35.106110, 35.167843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432789, 35.465137, 35.936508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129219, 35.552120, 35.690990>,  <44.947079, 35.604309, 35.543678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129219, 35.552120, 35.690990>,  <45.432789, 35.465137, 35.936508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129219, 35.552120, 35.690990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639328, -0.069802, 0.765760,
		0.123674, 0.973571, 0.191999,
		-0.758924, 0.217454, -0.613799,
		44.901543, 35.617355, 35.506851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121372, 35.767826, 35.948853>,  <45.432789, 35.465137, 35.936508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121372, 35.767826, 35.948853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304512, 35.710793, 36.299862>,  <46.414398, 35.676571, 36.510468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304512, 35.710793, 36.299862>,  <46.121372, 35.767826, 35.948853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304512, 35.710793, 36.299862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100754, 0.989018, 0.108131,
		-0.883301, 0.038906, 0.467189,
		0.457851, -0.142583, 0.877521,
		46.441868, 35.668018, 36.563118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743835, 35.438160, 35.634808>,  <46.121372, 35.767826, 35.948853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743835, 35.438160, 35.634808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594303, 35.260067, 35.960262>,  <46.504581, 35.153210, 36.155537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594303, 35.260067, 35.960262>,  <46.743835, 35.438160, 35.634808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594303, 35.260067, 35.960262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477079, 0.844604, 0.242981,
		-0.795389, -0.297336, -0.528155,
		-0.373835, -0.445237, 0.813641,
		46.482151, 35.126495, 36.204353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.228348, 34.974525, 35.280266>,  <46.743835, 35.438160, 35.634808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.228348, 34.974525, 35.280266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601597, 35.109802, 35.329105>,  <47.825546, 35.190968, 35.358410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601597, 35.109802, 35.329105>,  <47.228348, 34.974525, 35.280266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601597, 35.109802, 35.329105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101715, -0.077418, 0.991797,
		0.344868, -0.937888, -0.037842,
		0.933124, 0.338190, 0.122096,
		47.881535, 35.211258, 35.365734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.336956, 42.998821, 45.643314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957283, 42.873947, 45.659290>,  <34.729481, 42.799023, 45.668877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957283, 42.873947, 45.659290>,  <35.336956, 42.998821, 45.643314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957283, 42.873947, 45.659290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071284, -0.336842, -0.938859,
		0.306555, -0.888299, 0.341978,
		-0.949180, -0.312189, 0.039939,
		34.672527, 42.780289, 45.671272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362583, 42.249672, 45.380318>,  <35.336956, 42.998821, 45.643314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362583, 42.249672, 45.380318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979568, 42.363503, 45.361786>,  <34.749760, 42.431801, 45.350666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979568, 42.363503, 45.361786>,  <35.362583, 42.249672, 45.380318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979568, 42.363503, 45.361786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086941, -0.438196, -0.894665,
		-0.274897, -0.852645, 0.444329,
		-0.957534, 0.284571, -0.046329,
		34.692307, 42.448875, 45.347889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954868, 41.652023, 45.239616>,  <35.362583, 42.249672, 45.380318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954868, 41.652023, 45.239616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722153, 41.957329, 45.127228>,  <34.582523, 42.140514, 45.059795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722153, 41.957329, 45.127228>,  <34.954868, 41.652023, 45.239616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722153, 41.957329, 45.127228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184249, -0.460151, -0.868512,
		-0.792194, -0.453525, 0.408343,
		-0.581792, 0.763266, -0.280968,
		34.547615, 42.186310, 45.042938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413162, 41.270470, 44.896820>,  <34.954868, 41.652023, 45.239616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413162, 41.270470, 44.896820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399368, 41.650688, 44.773354>,  <34.391094, 41.878819, 44.699272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399368, 41.650688, 44.773354>,  <34.413162, 41.270470, 44.896820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399368, 41.650688, 44.773354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151378, -0.310258, -0.938523,
		-0.987874, 0.014365, 0.154589,
		-0.034480, 0.950544, -0.308671,
		34.389023, 41.935852, 44.680752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743843, 41.418854, 44.602276>,  <34.413162, 41.270470, 44.896820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743843, 41.418854, 44.602276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.013767, 41.674599, 44.454849>,  <34.175720, 41.828045, 44.366394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.013767, 41.674599, 44.454849>,  <33.743843, 41.418854, 44.602276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013767, 41.674599, 44.454849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261220, -0.260157, -0.929560,
		-0.690214, 0.723555, -0.008542,
		0.674810, 0.639364, -0.368571,
		34.216209, 41.866409, 44.344276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469379, 41.350941, 43.927818>,  <33.743843, 41.418854, 44.602276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469379, 41.350941, 43.927818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789730, 41.590229, 43.917065>,  <33.981941, 41.733803, 43.910614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789730, 41.590229, 43.917065>,  <33.469379, 41.350941, 43.927818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789730, 41.590229, 43.917065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007194, -0.035282, -0.999352,
		-0.598786, 0.800551, -0.023952,
		0.800877, 0.598225, -0.026886,
		34.029995, 41.769695, 43.909000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292820, 41.848835, 43.410389>,  <33.469379, 41.350941, 43.927818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292820, 41.848835, 43.410389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689453, 41.826748, 43.457222>,  <33.927433, 41.813496, 43.485321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689453, 41.826748, 43.457222>,  <33.292820, 41.848835, 43.410389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689453, 41.826748, 43.457222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106373, -0.167846, -0.980057,
		0.073771, 0.984265, -0.160560,
		0.991586, -0.055220, 0.117081,
		33.986927, 41.810181, 43.492348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605453, 42.370945, 42.979584>,  <33.292820, 41.848835, 43.410389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605453, 42.370945, 42.979584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898754, 42.107384, 43.046741>,  <34.074734, 41.949245, 43.087036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898754, 42.107384, 43.046741>,  <33.605453, 42.370945, 42.979584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898754, 42.107384, 43.046741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239924, 0.019682, -0.970592,
		0.636221, 0.751971, 0.172518,
		0.733253, -0.658903, 0.167894,
		34.118729, 41.909714, 43.097111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247303, 42.604149, 42.530819>,  <33.605453, 42.370945, 42.979584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247303, 42.604149, 42.530819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.195957, 42.209824, 42.574078>,  <34.165150, 41.973228, 42.600033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.195957, 42.209824, 42.574078>,  <34.247303, 42.604149, 42.530819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195957, 42.209824, 42.574078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089112, -0.120076, -0.988757,
		0.987716, -0.117280, 0.103261,
		-0.128361, -0.985813, 0.108149,
		34.157448, 41.914082, 42.606522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252720, 42.369751, 41.857029>,  <34.247303, 42.604149, 42.530819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252720, 42.369751, 41.857029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275177, 42.015110, 42.040676>,  <34.288651, 41.802326, 42.150864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275177, 42.015110, 42.040676>,  <34.252720, 42.369751, 41.857029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275177, 42.015110, 42.040676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060350, -0.455988, -0.887938,
		0.996597, 0.077561, 0.027905,
		0.056145, -0.886600, 0.459117,
		34.292019, 41.749130, 42.178410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803066, 42.027550, 41.617695>,  <34.252720, 42.369751, 41.857029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803066, 42.027550, 41.617695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.556812, 41.741737, 41.750626>,  <34.409058, 41.570251, 41.830383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.556812, 41.741737, 41.750626>,  <34.803066, 42.027550, 41.617695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556812, 41.741737, 41.750626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021968, -0.437114, -0.899138,
		0.787723, -0.546243, 0.284801,
		-0.615638, -0.714528, 0.332325,
		34.372120, 41.527378, 41.850323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173443, 41.485733, 41.472065>,  <34.803066, 42.027550, 41.617695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173443, 41.485733, 41.472065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791061, 41.371498, 41.499199>,  <34.561634, 41.302956, 41.515480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791061, 41.371498, 41.499199>,  <35.173443, 41.485733, 41.472065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791061, 41.371498, 41.499199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066558, -0.435982, -0.897491,
		0.285887, -0.853440, 0.435785,
		-0.955949, -0.285586, 0.067838,
		34.504276, 41.285824, 41.519550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213921, 40.829983, 41.300999>,  <35.173443, 41.485733, 41.472065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213921, 40.829983, 41.300999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.827194, 40.920624, 41.253807>,  <34.595158, 40.975006, 41.225494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.827194, 40.920624, 41.253807>,  <35.213921, 40.829983, 41.300999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827194, 40.920624, 41.253807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005345, -0.443759, -0.896130,
		-0.255415, -0.867024, 0.427823,
		-0.966817, 0.226598, -0.117976,
		34.537148, 40.988602, 41.218414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850437, 40.185749, 41.152084>,  <35.213921, 40.829983, 41.300999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850437, 40.185749, 41.152084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628445, 40.487957, 41.012840>,  <34.495251, 40.669281, 40.929295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628445, 40.487957, 41.012840>,  <34.850437, 40.185749, 41.152084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628445, 40.487957, 41.012840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001351, -0.419292, -0.907850,
		-0.831864, -0.503366, 0.233719,
		-0.554977, 0.755524, -0.348115,
		34.461952, 40.714615, 40.908405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564659, 39.872570, 40.579933>,  <34.850437, 40.185749, 41.152084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564659, 39.872570, 40.579933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467037, 40.252899, 40.503651>,  <34.408466, 40.481098, 40.457882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467037, 40.252899, 40.503651>,  <34.564659, 39.872570, 40.579933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467037, 40.252899, 40.503651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026403, -0.203090, -0.978804,
		-0.969403, -0.233843, 0.074669,
		-0.244051, 0.950827, -0.190702,
		34.393822, 40.538147, 40.446442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163853, 39.747669, 40.062874>,  <34.564659, 39.872570, 40.579933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163853, 39.747669, 40.062874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.257652, 40.135555, 40.035576>,  <34.313931, 40.368286, 40.019199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.257652, 40.135555, 40.035576>,  <34.163853, 39.747669, 40.062874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257652, 40.135555, 40.035576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139294, -0.102993, -0.984881,
		-0.962085, 0.221446, -0.159228,
		0.234497, 0.969719, -0.068242,
		34.328003, 40.426472, 40.015102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821308, 40.102940, 39.480808>,  <34.163853, 39.747669, 40.062874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821308, 40.102940, 39.480808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146744, 40.329720, 39.532410>,  <34.342003, 40.465790, 39.563370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146744, 40.329720, 39.532410>,  <33.821308, 40.102940, 39.480808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146744, 40.329720, 39.532410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283867, -0.193667, -0.939102,
		-0.507444, 0.800660, -0.318504,
		0.813585, 0.566954, 0.129006,
		34.390820, 40.499805, 39.571110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858551, 40.608879, 38.883732>,  <33.821308, 40.102940, 39.480808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858551, 40.608879, 38.883732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219727, 40.555393, 39.047112>,  <34.436432, 40.523300, 39.145138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219727, 40.555393, 39.047112>,  <33.858551, 40.608879, 38.883732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219727, 40.555393, 39.047112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386749, -0.161694, -0.907899,
		0.187442, 0.977740, -0.094286,
		0.902935, -0.133713, 0.408448,
		34.490608, 40.515278, 39.169647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310387, 40.989544, 38.433563>,  <33.858551, 40.608879, 38.883732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310387, 40.989544, 38.433563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540108, 40.741112, 38.646893>,  <34.677940, 40.592052, 38.774891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540108, 40.741112, 38.646893>,  <34.310387, 40.989544, 38.433563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540108, 40.741112, 38.646893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493444, -0.257192, -0.830882,
		0.653211, 0.740345, 0.158761,
		0.574307, -0.621081, 0.533320,
		34.712399, 40.554787, 38.806889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014233, 41.249187, 38.313347>,  <34.310387, 40.989544, 38.433563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014233, 41.249187, 38.313347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026535, 40.858746, 38.399395>,  <35.033916, 40.624481, 38.451023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026535, 40.858746, 38.399395>,  <35.014233, 41.249187, 38.313347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026535, 40.858746, 38.399395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517349, -0.168605, -0.839001,
		0.855222, 0.137100, 0.499800,
		0.030758, -0.976103, 0.215123,
		35.035763, 40.565914, 38.463932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570030, 41.157124, 37.923748>,  <35.014233, 41.249187, 38.313347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570030, 41.157124, 37.923748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394444, 40.805244, 37.996899>,  <35.289093, 40.594116, 38.040791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394444, 40.805244, 37.996899>,  <35.570030, 41.157124, 37.923748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394444, 40.805244, 37.996899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443383, -0.389111, -0.807468,
		0.781488, -0.273362, 0.560848,
		-0.438963, -0.879696, 0.182881,
		35.262756, 40.541336, 38.051762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089962, 40.579132, 37.855125>,  <35.570030, 41.157124, 37.923748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089962, 40.579132, 37.855125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724373, 40.427303, 37.797756>,  <35.505020, 40.336205, 37.763332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724373, 40.427303, 37.797756>,  <36.089962, 40.579132, 37.855125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724373, 40.427303, 37.797756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291330, -0.367807, -0.883088,
		0.282446, -0.848905, 0.446749,
		-0.913975, -0.379576, -0.143426,
		35.450180, 40.313431, 37.754730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626736, 40.422474, 37.277416>,  <36.089962, 40.579132, 37.855125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626736, 40.422474, 37.277416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982040, 40.593628, 37.344238>,  <37.195221, 40.696320, 37.384331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982040, 40.593628, 37.344238>,  <36.626736, 40.422474, 37.277416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982040, 40.593628, 37.344238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246655, 0.137497, 0.959300,
		0.387504, -0.893312, 0.227673,
		0.888258, 0.427889, 0.167059,
		37.248516, 40.721992, 37.394356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727726, 40.229317, 37.905167>,  <36.626736, 40.422474, 37.277416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727726, 40.229317, 37.905167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980408, 40.539261, 37.895786>,  <37.132015, 40.725227, 37.890160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980408, 40.539261, 37.895786>,  <36.727726, 40.229317, 37.905167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980408, 40.539261, 37.895786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253304, 0.234905, 0.938433,
		0.732660, -0.586870, 0.344665,
		0.631702, 0.774857, -0.023449,
		37.169918, 40.771717, 37.888752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163269, 40.282196, 38.560181>,  <36.727726, 40.229317, 37.905167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163269, 40.282196, 38.560181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142044, 40.647202, 38.397949>,  <37.129307, 40.866207, 38.300610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142044, 40.647202, 38.397949>,  <37.163269, 40.282196, 38.560181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142044, 40.647202, 38.397949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194700, 0.388906, 0.900469,
		0.979426, 0.126751, 0.157029,
		-0.053065, 0.912517, -0.405583,
		37.126125, 40.920956, 38.276276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504524, 40.681816, 39.005543>,  <37.163269, 40.282196, 38.560181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504524, 40.681816, 39.005543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340664, 40.966667, 38.777489>,  <37.242348, 41.137577, 38.640656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340664, 40.966667, 38.777489>,  <37.504524, 40.681816, 39.005543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340664, 40.966667, 38.777489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039531, 0.610538, 0.791000,
		0.911386, 0.346572, -0.221956,
		-0.409651, 0.712132, -0.570136,
		37.217770, 41.180305, 38.606449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857288, 41.318703, 39.053188>,  <37.504524, 40.681816, 39.005543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857288, 41.318703, 39.053188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482140, 41.409901, 38.948563>,  <37.257050, 41.464619, 38.885788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482140, 41.409901, 38.948563>,  <37.857288, 41.318703, 39.053188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482140, 41.409901, 38.948563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092195, 0.562983, 0.821310,
		0.334506, 0.794399, -0.506987,
		-0.937873, 0.227992, -0.261561,
		37.200779, 41.478298, 38.870094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924698, 42.031773, 39.202187>,  <37.857288, 41.318703, 39.053188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924698, 42.031773, 39.202187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541660, 41.920586, 39.171875>,  <37.311836, 41.853874, 39.153690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541660, 41.920586, 39.171875>,  <37.924698, 42.031773, 39.202187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541660, 41.920586, 39.171875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252721, 0.684124, 0.684183,
		-0.138339, 0.674322, -0.725364,
		-0.957598, -0.277964, -0.075775,
		37.254379, 41.837196, 39.149143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622665, 42.617203, 39.426975>,  <37.924698, 42.031773, 39.202187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622665, 42.617203, 39.426975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318260, 42.359913, 39.460720>,  <37.135616, 42.205540, 39.480965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318260, 42.359913, 39.460720>,  <37.622665, 42.617203, 39.426975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318260, 42.359913, 39.460720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082190, 0.224585, 0.970982,
		-0.643505, 0.732000, -0.223779,
		-0.761016, -0.643224, 0.084358,
		37.089954, 42.166946, 39.486027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969173, 42.973392, 39.751381>,  <37.622665, 42.617203, 39.426975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969173, 42.973392, 39.751381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925152, 42.581928, 39.820793>,  <36.898739, 42.347050, 39.862442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925152, 42.581928, 39.820793>,  <36.969173, 42.973392, 39.751381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925152, 42.581928, 39.820793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181058, 0.191415, 0.964665,
		-0.977295, 0.074748, -0.198260,
		-0.110057, -0.978659, 0.173535,
		36.892136, 42.288330, 39.872852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324348, 42.862919, 40.265717>,  <36.969173, 42.973392, 39.751381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324348, 42.862919, 40.265717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549629, 42.532738, 40.280880>,  <36.684795, 42.334629, 40.289978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549629, 42.532738, 40.280880>,  <36.324348, 42.862919, 40.265717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549629, 42.532738, 40.280880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199307, -0.091175, 0.975686,
		-0.801926, -0.557060, -0.215868,
		0.563198, -0.825452, 0.037910,
		36.718590, 42.285103, 40.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862762, 42.435703, 40.657024>,  <36.324348, 42.862919, 40.265717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862762, 42.435703, 40.657024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239113, 42.301773, 40.677608>,  <36.464924, 42.221413, 40.689960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239113, 42.301773, 40.677608>,  <35.862762, 42.435703, 40.657024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239113, 42.301773, 40.677608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058486, -0.010914, 0.998229,
		-0.333674, -0.942216, -0.029851,
		0.940872, -0.334829, 0.051465,
		36.521374, 42.201324, 40.693047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804497, 42.011051, 41.219929>,  <35.862762, 42.435703, 40.657024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804497, 42.011051, 41.219929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194878, 42.086308, 41.175900>,  <36.429108, 42.131462, 41.149483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194878, 42.086308, 41.175900>,  <35.804497, 42.011051, 41.219929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194878, 42.086308, 41.175900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121764, -0.051745, 0.991209,
		0.180796, -0.980777, -0.073410,
		0.975954, 0.188145, -0.110068,
		36.487663, 42.142750, 41.142879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227676, 41.491241, 41.570484>,  <35.804497, 42.011051, 41.219929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227676, 41.491241, 41.570484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464600, 41.810932, 41.529701>,  <36.606754, 42.002747, 41.505234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464600, 41.810932, 41.529701>,  <36.227676, 41.491241, 41.570484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464600, 41.810932, 41.529701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220866, -0.039372, 0.974509,
		0.774844, -0.599732, -0.199844,
		0.592313, 0.799232, -0.101953,
		36.642292, 42.050701, 41.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030407, 41.287476, 41.879791>,  <36.227676, 41.491241, 41.570484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030407, 41.287476, 41.879791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969498, 41.682785, 41.884270>,  <36.932953, 41.919971, 41.886955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969498, 41.682785, 41.884270>,  <37.030407, 41.287476, 41.879791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969498, 41.682785, 41.884270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170038, 0.015040, 0.985323,
		0.973601, 0.151946, -0.170335,
		-0.152277, 0.988274, 0.011193,
		36.923813, 41.979267, 41.887627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694992, 41.589802, 42.129017>,  <37.030407, 41.287476, 41.879791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694992, 41.589802, 42.129017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394039, 41.847385, 42.184494>,  <37.213467, 42.001934, 42.217781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394039, 41.847385, 42.184494>,  <37.694992, 41.589802, 42.129017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394039, 41.847385, 42.184494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250790, 0.085329, 0.964273,
		0.609117, 0.760287, -0.225699,
		-0.752383, 0.643959, 0.138697,
		37.168324, 42.040573, 42.226105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027737, 42.155518, 42.453899>,  <37.694992, 41.589802, 42.129017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027737, 42.155518, 42.453899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639538, 42.202057, 42.538376>,  <37.406620, 42.229980, 42.589062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639538, 42.202057, 42.538376>,  <38.027737, 42.155518, 42.453899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639538, 42.202057, 42.538376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212602, -0.000325, 0.977139,
		0.113761, 0.993208, -0.024421,
		-0.970494, 0.116352, 0.211195,
		37.348389, 42.236961, 42.601734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998055, 42.507931, 43.092960>,  <38.027737, 42.155518, 42.453899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998055, 42.507931, 43.092960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609165, 42.421642, 43.056656>,  <37.375832, 42.369869, 43.034874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609165, 42.421642, 43.056656>,  <37.998055, 42.507931, 43.092960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609165, 42.421642, 43.056656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150694, 0.280279, 0.948017,
		-0.179066, 0.935366, -0.305002,
		-0.972228, -0.215720, -0.090765,
		37.317497, 42.356926, 43.029427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602890, 43.160152, 43.157375>,  <37.998055, 42.507931, 43.092960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602890, 43.160152, 43.157375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365200, 42.855671, 43.261272>,  <37.222588, 42.672981, 43.323612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365200, 42.855671, 43.261272>,  <37.602890, 43.160152, 43.157375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365200, 42.855671, 43.261272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158821, 0.427633, 0.889891,
		-0.788464, 0.487542, -0.375005,
		-0.594223, -0.761205, 0.259741,
		37.186932, 42.627308, 43.339195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034424, 43.503628, 43.614033>,  <37.602890, 43.160152, 43.157375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034424, 43.503628, 43.614033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006878, 43.110744, 43.683910>,  <36.990349, 42.875015, 43.725838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006878, 43.110744, 43.683910>,  <37.034424, 43.503628, 43.614033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006878, 43.110744, 43.683910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233976, 0.186128, 0.954260,
		-0.969800, 0.024842, -0.242632,
		-0.068866, -0.982212, 0.174695,
		36.986217, 42.816082, 43.736320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.448357, 43.479729, 44.066292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658081, 43.141762, 44.108650>,  <36.783916, 42.938980, 44.134064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658081, 43.141762, 44.108650>,  <36.448357, 43.479729, 44.066292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658081, 43.141762, 44.108650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162072, 0.023071, 0.986509,
		-0.835963, -0.534396, -0.124842,
		0.524307, -0.844919, 0.105897,
		36.815372, 42.888287, 44.140419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963223, 43.022617, 44.441978>,  <36.448357, 43.479729, 44.066292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963223, 43.022617, 44.441978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344433, 42.918842, 44.504513>,  <36.573158, 42.856575, 44.542034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344433, 42.918842, 44.504513>,  <35.963223, 43.022617, 44.441978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344433, 42.918842, 44.504513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149616, 0.045569, 0.987693,
		-0.263371, -0.964684, 0.004611,
		0.953022, -0.259440, 0.156334,
		36.630341, 42.841011, 44.551414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917027, 42.525692, 44.891464>,  <35.963223, 43.022617, 44.441978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917027, 42.525692, 44.891464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298660, 42.636147, 44.937893>,  <36.527641, 42.702419, 44.965752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298660, 42.636147, 44.937893>,  <35.917027, 42.525692, 44.891464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298660, 42.636147, 44.937893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174809, 0.198616, 0.964362,
		0.243240, -0.940373, 0.237767,
		0.954084, 0.276135, 0.116074,
		36.584885, 42.718987, 44.972713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178207, 42.136684, 45.521046>,  <35.917027, 42.525692, 44.891464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178207, 42.136684, 45.521046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402901, 42.460102, 45.450947>,  <36.537716, 42.654152, 45.408890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402901, 42.460102, 45.450947>,  <36.178207, 42.136684, 45.521046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402901, 42.460102, 45.450947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006539, 0.207477, 0.978218,
		0.827292, -0.550644, 0.111260,
		0.561733, 0.808545, -0.175245,
		36.571423, 42.702667, 45.398373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586102, 42.014748, 45.983200>,  <36.178207, 42.136684, 45.521046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586102, 42.014748, 45.983200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658257, 42.402885, 45.918835>,  <36.701550, 42.635769, 45.880215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658257, 42.402885, 45.918835>,  <36.586102, 42.014748, 45.983200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658257, 42.402885, 45.918835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148551, 0.188597, 0.970754,
		0.972313, -0.151209, 0.178167,
		0.180388, 0.970344, -0.160913,
		36.712372, 42.693989, 45.870560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935165, 42.197784, 46.516155>,  <36.586102, 42.014748, 45.983200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935165, 42.197784, 46.516155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798607, 42.548672, 46.381142>,  <36.716671, 42.759205, 46.300133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798607, 42.548672, 46.381142>,  <36.935165, 42.197784, 46.516155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798607, 42.548672, 46.381142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040085, 0.345194, 0.937675,
		0.939064, 0.333650, -0.082684,
		-0.341398, 0.877222, -0.337533,
		36.696186, 42.811840, 46.279881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462902, 42.667755, 46.698738>,  <36.935165, 42.197784, 46.516155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462902, 42.667755, 46.698738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116032, 42.859493, 46.644714>,  <36.907909, 42.974537, 46.612301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116032, 42.859493, 46.644714>,  <37.462902, 42.667755, 46.698738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116032, 42.859493, 46.644714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179041, 0.553150, 0.813615,
		0.464708, 0.681364, -0.565499,
		-0.867174, 0.479342, -0.135061,
		36.855881, 43.003296, 46.604195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691280, 43.378872, 46.827511>,  <37.462902, 42.667755, 46.698738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691280, 43.378872, 46.827511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295300, 43.337105, 46.865665>,  <37.057713, 43.312046, 46.888557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295300, 43.337105, 46.865665>,  <37.691280, 43.378872, 46.827511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295300, 43.337105, 46.865665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015819, 0.588467, 0.808367,
		-0.140541, 0.801750, -0.580900,
		-0.989949, -0.104419, 0.095387,
		36.998314, 43.305779, 46.894283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368664, 44.091187, 47.083572>,  <37.691280, 43.378872, 46.827511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368664, 44.091187, 47.083572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122810, 43.789810, 47.176998>,  <36.975296, 43.608986, 47.233055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122810, 43.789810, 47.176998>,  <37.368664, 44.091187, 47.083572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122810, 43.789810, 47.176998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095683, 0.365125, 0.926028,
		-0.782987, 0.546822, -0.296510,
		-0.614636, -0.753438, 0.233567,
		36.938419, 43.563778, 47.247066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797707, 44.444260, 47.416332>,  <37.368664, 44.091187, 47.083572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797707, 44.444260, 47.416332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806976, 44.059776, 47.526268>,  <36.812538, 43.829086, 47.592232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806976, 44.059776, 47.526268>,  <36.797707, 44.444260, 47.416332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806976, 44.059776, 47.526268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095421, 0.271534, 0.957687,
		-0.995167, -0.048424, -0.085426,
		0.023179, -0.961210, 0.274842,
		36.813931, 43.771412, 47.608719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277023, 44.429581, 47.927742>,  <36.797707, 44.444260, 47.416332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277023, 44.429581, 47.927742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478310, 44.086128, 47.966759>,  <36.599083, 43.880054, 47.990170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478310, 44.086128, 47.966759>,  <36.277023, 44.429581, 47.927742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478310, 44.086128, 47.966759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036444, 0.133860, 0.990330,
		-0.863390, -0.494799, 0.098653,
		0.503220, -0.858636, 0.097541,
		36.629276, 43.828537, 47.996021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898602, 44.148087, 48.431976>,  <36.277023, 44.429581, 47.927742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898602, 44.148087, 48.431976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.273003, 44.007954, 48.445641>,  <36.497643, 43.923874, 48.453838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.273003, 44.007954, 48.445641>,  <35.898602, 44.148087, 48.431976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273003, 44.007954, 48.445641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023697, 0.159538, 0.986907,
		-0.351200, -0.922936, 0.157630,
		0.936001, -0.350337, 0.034159,
		36.553802, 43.902851, 48.455887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850414, 43.953693, 49.111485>,  <35.898602, 44.148087, 48.431976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850414, 43.953693, 49.111485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234951, 43.894154, 49.018826>,  <36.465675, 43.858429, 48.963230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234951, 43.894154, 49.018826>,  <35.850414, 43.953693, 49.111485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234951, 43.894154, 49.018826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233190, -0.007251, 0.972404,
		-0.146421, -0.988833, 0.027740,
		0.961344, -0.148849, -0.231648,
		36.523354, 43.849499, 48.949329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121189, 43.349617, 49.452015>,  <35.850414, 43.953693, 49.111485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121189, 43.349617, 49.452015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427094, 43.598518, 49.385159>,  <36.610638, 43.747860, 49.345047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427094, 43.598518, 49.385159>,  <36.121189, 43.349617, 49.452015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427094, 43.598518, 49.385159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280113, -0.087489, 0.955972,
		0.580235, -0.777911, -0.241210,
		0.764764, 0.622254, -0.167139,
		36.656525, 43.785194, 49.335018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479691, 43.135223, 50.062603>,  <36.121189, 43.349617, 49.452015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479691, 43.135223, 50.062603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685944, 43.454655, 49.938412>,  <36.809696, 43.646313, 49.863895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685944, 43.454655, 49.938412>,  <36.479691, 43.135223, 50.062603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685944, 43.454655, 49.938412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232455, 0.218393, 0.947771,
		0.824675, -0.560873, -0.073023,
		0.515631, 0.798577, -0.310481,
		36.840633, 43.694229, 49.845268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175648, 43.218090, 50.458813>,  <36.479691, 43.135223, 50.062603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175648, 43.218090, 50.458813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078323, 43.572254, 50.300400>,  <37.019928, 43.784752, 50.205353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078323, 43.572254, 50.300400>,  <37.175648, 43.218090, 50.458813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078323, 43.572254, 50.300400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161181, 0.439539, 0.883644,
		0.956462, 0.151169, -0.249657,
		-0.243313, 0.885412, -0.396037,
		37.005329, 43.837879, 50.181587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585564, 43.689125, 50.774319>,  <37.175648, 43.218090, 50.458813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585564, 43.689125, 50.774319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306675, 43.944313, 50.643551>,  <37.139343, 44.097424, 50.565090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306675, 43.944313, 50.643551>,  <37.585564, 43.689125, 50.774319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306675, 43.944313, 50.643551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061627, 0.507707, 0.859323,
		0.714201, 0.578992, -0.393300,
		-0.697222, 0.637967, -0.326923,
		37.097507, 44.135704, 50.545475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792446, 44.295235, 51.079407>,  <37.585564, 43.689125, 50.774319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792446, 44.295235, 51.079407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402740, 44.312790, 50.990974>,  <37.168915, 44.323322, 50.937916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402740, 44.312790, 50.990974>,  <37.792446, 44.295235, 51.079407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402740, 44.312790, 50.990974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167587, 0.514884, 0.840719,
		0.150727, 0.856136, -0.494280,
		-0.974267, 0.043884, -0.221084,
		37.110462, 44.325954, 50.924648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553993, 44.960396, 51.259495>,  <37.792446, 44.295235, 51.079407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553993, 44.960396, 51.259495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220966, 44.739159, 51.247383>,  <37.021149, 44.606415, 51.240116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220966, 44.739159, 51.247383>,  <37.553993, 44.960396, 51.259495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220966, 44.739159, 51.247383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244425, 0.317771, 0.916121,
		-0.497081, 0.770133, -0.399757,
		-0.832566, -0.553097, -0.030282,
		36.971195, 44.573231, 51.238300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984756, 45.426304, 51.360046>,  <37.553993, 44.960396, 51.259495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984756, 45.426304, 51.360046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869465, 45.062649, 51.480309>,  <36.800289, 44.844456, 51.552467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869465, 45.062649, 51.480309>,  <36.984756, 45.426304, 51.360046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869465, 45.062649, 51.480309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299888, 0.383889, 0.873325,
		-0.909392, 0.161551, -0.383286,
		-0.288226, -0.909137, 0.300658,
		36.782997, 44.789909, 51.570507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264923, 45.590836, 51.694454>,  <36.984756, 45.426304, 51.360046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264923, 45.590836, 51.694454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.345020, 45.218655, 51.817200>,  <36.393078, 44.995346, 51.890846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.345020, 45.218655, 51.817200>,  <36.264923, 45.590836, 51.694454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345020, 45.218655, 51.817200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173797, 0.274502, 0.945750,
		-0.964208, -0.242711, -0.106742,
		0.200244, -0.930451, 0.306859,
		36.405094, 44.939518, 51.909256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601433, 45.367874, 52.106453>,  <36.264923, 45.590836, 51.694454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601433, 45.367874, 52.106453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930031, 45.178318, 52.233315>,  <36.127190, 45.064587, 52.309429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930031, 45.178318, 52.233315>,  <35.601433, 45.367874, 52.106453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930031, 45.178318, 52.233315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205833, 0.272252, 0.939953,
		-0.531777, -0.837442, 0.126111,
		0.821490, -0.473888, 0.317151,
		36.176479, 45.036152, 52.328461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396618, 45.108402, 52.784634>,  <35.601433, 45.367874, 52.106453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396618, 45.108402, 52.784634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792660, 45.163631, 52.774559>,  <36.030285, 45.196770, 52.768513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792660, 45.163631, 52.774559>,  <35.396618, 45.108402, 52.784634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792660, 45.163631, 52.774559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017320, 0.298273, 0.954323,
		0.139280, -0.944441, 0.297712,
		0.990102, 0.138074, -0.025186,
		36.089691, 45.205055, 52.767002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172817, 45.330093, 53.565086>,  <35.396618, 45.108402, 52.784634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172817, 45.330093, 53.565086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857586, 45.146751, 53.729446>,  <34.668446, 45.036747, 53.828064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857586, 45.146751, 53.729446>,  <35.172817, 45.330093, 53.565086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857586, 45.146751, 53.729446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156763, -0.496068, -0.854015,
		0.595279, -0.737445, 0.319088,
		-0.788079, -0.458356, 0.410904,
		34.621162, 45.009243, 53.852718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214355, 44.615406, 53.365467>,  <35.172817, 45.330093, 53.565086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214355, 44.615406, 53.365467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836494, 44.731998, 53.425694>,  <34.609779, 44.801952, 53.461830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836494, 44.731998, 53.425694>,  <35.214355, 44.615406, 53.365467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836494, 44.731998, 53.425694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241821, -0.308497, -0.919974,
		-0.221706, -0.905466, 0.361909,
		-0.944653, 0.291480, 0.150565,
		34.553097, 44.819443, 53.470863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843945, 44.023628, 53.159630>,  <35.214355, 44.615406, 53.365467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843945, 44.023628, 53.159630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557293, 44.301392, 53.133614>,  <34.385300, 44.468052, 53.118004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557293, 44.301392, 53.133614>,  <34.843945, 44.023628, 53.159630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557293, 44.301392, 53.133614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399949, -0.485561, -0.777348,
		-0.571384, -0.531058, 0.625698,
		-0.716632, 0.694412, -0.065046,
		34.342304, 44.509716, 53.114101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125725, 43.763573, 53.324024>,  <34.843945, 44.023628, 53.159630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125725, 43.763573, 53.324024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073540, 44.091232, 53.100609>,  <34.042229, 44.287830, 52.966560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073540, 44.091232, 53.100609>,  <34.125725, 43.763573, 53.324024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073540, 44.091232, 53.100609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304885, -0.569206, -0.763577,
		-0.943411, 0.070673, 0.324008,
		-0.130463, 0.819152, -0.558542,
		34.034401, 44.336979, 52.933044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526657, 43.612946, 53.048225>,  <34.125725, 43.763573, 53.324024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526657, 43.612946, 53.048225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695278, 43.886089, 52.809563>,  <33.796452, 44.049976, 52.666367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695278, 43.886089, 52.809563>,  <33.526657, 43.612946, 53.048225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695278, 43.886089, 52.809563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289640, -0.522113, -0.802189,
		-0.859304, 0.510978, -0.022313,
		0.421551, 0.682861, -0.596653,
		33.821743, 44.090946, 52.630566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045544, 43.610382, 52.480286>,  <33.526657, 43.612946, 53.048225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045544, 43.610382, 52.480286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363121, 43.805340, 52.334896>,  <33.553665, 43.922314, 52.247662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363121, 43.805340, 52.334896>,  <33.045544, 43.610382, 52.480286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363121, 43.805340, 52.334896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260790, -0.267034, -0.927729,
		-0.549226, 0.831350, -0.084902,
		0.793939, 0.487392, -0.363470,
		33.601303, 43.951557, 52.225857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859444, 43.735058, 51.789494>,  <33.045544, 43.610382, 52.480286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859444, 43.735058, 51.789494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257629, 43.768085, 51.770611>,  <33.496540, 43.787903, 51.759281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257629, 43.768085, 51.770611>,  <32.859444, 43.735058, 51.789494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257629, 43.768085, 51.770611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008971, -0.412589, -0.910873,
		-0.094690, 0.907167, -0.409978,
		0.995466, 0.082572, -0.047207,
		33.556271, 43.792858, 51.756451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072952, 44.197197, 51.156364>,  <32.859444, 43.735058, 51.789494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072952, 44.197197, 51.156364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398602, 43.979622, 51.237694>,  <33.593990, 43.849075, 51.286491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398602, 43.979622, 51.237694>,  <33.072952, 44.197197, 51.156364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398602, 43.979622, 51.237694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194861, -0.073945, -0.978040,
		0.547028, 0.835861, 0.045792,
		0.814119, -0.543938, 0.203326,
		33.642838, 43.816441, 51.298691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647095, 44.528183, 50.775890>,  <33.072952, 44.197197, 51.156364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647095, 44.528183, 50.775890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729450, 44.142399, 50.842133>,  <33.778862, 43.910927, 50.881878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729450, 44.142399, 50.842133>,  <33.647095, 44.528183, 50.775890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729450, 44.142399, 50.842133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331054, -0.090605, -0.939252,
		0.920877, 0.248201, 0.300635,
		0.205884, -0.964462, 0.165604,
		33.791214, 43.853062, 50.891815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329323, 44.490795, 50.439728>,  <33.647095, 44.528183, 50.775890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329323, 44.490795, 50.439728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165089, 44.127018, 50.466053>,  <34.066547, 43.908752, 50.481846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165089, 44.127018, 50.466053>,  <34.329323, 44.490795, 50.439728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165089, 44.127018, 50.466053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351876, -0.224618, -0.908697,
		0.841189, -0.349945, 0.412237,
		-0.410590, -0.909442, 0.065809,
		34.041912, 43.854187, 50.485794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867863, 44.027580, 50.223991>,  <34.329323, 44.490795, 50.439728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867863, 44.027580, 50.223991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525700, 43.832535, 50.154133>,  <34.320400, 43.715508, 50.112217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525700, 43.832535, 50.154133>,  <34.867863, 44.027580, 50.223991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525700, 43.832535, 50.154133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348796, -0.293041, -0.890207,
		0.382900, -0.822410, 0.420749,
		-0.855412, -0.487616, -0.174648,
		34.269077, 43.686249, 50.101738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121933, 43.376282, 49.814198>,  <34.867863, 44.027580, 50.223991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121933, 43.376282, 49.814198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731976, 43.401794, 49.728870>,  <34.498001, 43.417103, 49.677673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731976, 43.401794, 49.728870>,  <35.121933, 43.376282, 49.814198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731976, 43.401794, 49.728870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165429, -0.433750, -0.885717,
		-0.149023, -0.898773, 0.412311,
		-0.974898, 0.063784, -0.213321,
		34.439507, 43.420929, 49.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011864, 42.828091, 49.445038>,  <35.121933, 43.376282, 49.814198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011864, 42.828091, 49.445038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.715763, 43.078796, 49.347717>,  <34.538101, 43.229221, 49.289326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.715763, 43.078796, 49.347717>,  <35.011864, 42.828091, 49.445038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715763, 43.078796, 49.347717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059673, -0.299196, -0.952324,
		-0.669678, -0.719476, 0.184079,
		-0.740250, 0.626766, -0.243298,
		34.493687, 43.266827, 49.274727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546547, 42.435837, 48.995090>,  <35.011864, 42.828091, 49.445038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546547, 42.435837, 48.995090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417149, 42.807560, 48.923832>,  <34.339512, 43.030594, 48.881077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417149, 42.807560, 48.923832>,  <34.546547, 42.435837, 48.995090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417149, 42.807560, 48.923832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084933, -0.216023, -0.972687,
		-0.942411, -0.299528, 0.148811,
		-0.323494, 0.929310, -0.178143,
		34.320099, 43.086353, 48.870388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855076, 42.285191, 48.551056>,  <34.546547, 42.435837, 48.995090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855076, 42.285191, 48.551056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991726, 42.658257, 48.504711>,  <34.073715, 42.882095, 48.476906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991726, 42.658257, 48.504711>,  <33.855076, 42.285191, 48.551056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991726, 42.658257, 48.504711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254803, -0.026744, -0.966623,
		-0.904637, 0.359744, 0.228510,
		0.341626, 0.932668, -0.115857,
		34.094215, 42.938057, 48.469955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480961, 42.576801, 48.033737>,  <33.855076, 42.285191, 48.551056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480961, 42.576801, 48.033737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793274, 42.826691, 48.029816>,  <33.980663, 42.976624, 48.027462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793274, 42.826691, 48.029816>,  <33.480961, 42.576801, 48.033737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793274, 42.826691, 48.029816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106074, 0.117073, -0.987442,
		-0.615734, 0.772017, 0.157676,
		0.780782, 0.624727, -0.009805,
		34.027508, 43.014111, 48.026875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284382, 43.038773, 47.537994>,  <33.480961, 42.576801, 48.033737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284382, 43.038773, 47.537994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676704, 43.098354, 47.588329>,  <33.912098, 43.134102, 47.618530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676704, 43.098354, 47.588329>,  <33.284382, 43.038773, 47.537994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676704, 43.098354, 47.588329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095416, 0.196209, -0.975909,
		-0.170054, 0.969183, 0.178230,
		0.980804, 0.148952, 0.125842,
		33.970947, 43.143040, 47.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376423, 43.456230, 47.014824>,  <33.284382, 43.038773, 47.537994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376423, 43.456230, 47.014824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.741039, 43.313770, 47.097046>,  <33.959808, 43.228294, 47.146378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.741039, 43.313770, 47.097046>,  <33.376423, 43.456230, 47.014824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741039, 43.313770, 47.097046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248852, 0.079828, -0.965246,
		0.327362, 0.931013, 0.161394,
		0.911541, -0.356148, 0.205552,
		34.014500, 43.206924, 47.158710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668697, 43.730495, 46.521751>,  <33.376423, 43.456230, 47.014824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668697, 43.730495, 46.521751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923389, 43.459915, 46.669804>,  <34.076202, 43.297569, 46.758636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923389, 43.459915, 46.669804>,  <33.668697, 43.730495, 46.521751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923389, 43.459915, 46.669804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403629, -0.116610, -0.907461,
		0.657011, 0.727201, 0.198785,
		0.636726, -0.676447, 0.370133,
		34.114407, 43.256981, 46.780842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197266, 43.904335, 46.191444>,  <33.668697, 43.730495, 46.521751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197266, 43.904335, 46.191444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234379, 43.519146, 46.292690>,  <34.256645, 43.288033, 46.353439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234379, 43.519146, 46.292690>,  <34.197266, 43.904335, 46.191444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234379, 43.519146, 46.292690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226038, -0.227202, -0.947252,
		0.969690, 0.145099, 0.196590,
		0.092780, -0.962977, 0.253114,
		34.262215, 43.230251, 46.368626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862099, 43.653351, 45.901623>,  <34.197266, 43.904335, 46.191444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862099, 43.653351, 45.901623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629879, 43.334423, 45.967644>,  <34.490547, 43.143066, 46.007256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629879, 43.334423, 45.967644>,  <34.862099, 43.653351, 45.901623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629879, 43.334423, 45.967644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205021, -0.339327, -0.918054,
		0.787988, -0.499139, 0.360464,
		-0.580552, -0.797319, 0.165052,
		34.455715, 43.095226, 46.017159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.130192, 41.579277, 28.716810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897141, 41.886883, 28.611607>,  <44.757309, 42.071445, 28.548485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897141, 41.886883, 28.611607>,  <45.130192, 41.579277, 28.716810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897141, 41.886883, 28.611607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625786, -0.217978, 0.748917,
		0.518595, 0.600924, 0.608236,
		-0.582624, 0.769010, -0.263007,
		44.722355, 42.117584, 28.532705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139156, 42.054386, 29.302031>,  <45.130192, 41.579277, 28.716810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139156, 42.054386, 29.302031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806770, 42.056740, 29.079512>,  <44.607338, 42.058151, 28.946001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806770, 42.056740, 29.079512>,  <45.139156, 42.054386, 29.302031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806770, 42.056740, 29.079512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544597, -0.212856, 0.811237,
		-0.113638, 0.977066, 0.180080,
		-0.830964, 0.005884, -0.556296,
		44.557480, 42.058506, 28.912622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704826, 42.511738, 29.692835>,  <45.139156, 42.054386, 29.302031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704826, 42.511738, 29.692835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490711, 42.271782, 29.454975>,  <44.362244, 42.127808, 29.312260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490711, 42.271782, 29.454975>,  <44.704826, 42.511738, 29.692835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490711, 42.271782, 29.454975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519711, -0.321063, 0.791719,
		-0.665862, 0.732839, -0.139908,
		-0.535284, -0.599887, -0.594648,
		44.330128, 42.091816, 29.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961506, 42.504688, 29.915922>,  <44.704826, 42.511738, 29.692835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961506, 42.504688, 29.915922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.021137, 42.165867, 29.711855>,  <44.056915, 41.962574, 29.589415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.021137, 42.165867, 29.711855>,  <43.961506, 42.504688, 29.915922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021137, 42.165867, 29.711855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302672, -0.530259, 0.791969,
		-0.941364, 0.036352, -0.335428,
		0.149074, -0.847056, -0.510170,
		44.065861, 41.911751, 29.558804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396385, 42.023731, 30.192623>,  <43.961506, 42.504688, 29.915922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396385, 42.023731, 30.192623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.627499, 41.759949, 30.000257>,  <43.766167, 41.601677, 29.884838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.627499, 41.759949, 30.000257>,  <43.396385, 42.023731, 30.192623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627499, 41.759949, 30.000257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229222, -0.696611, 0.679846,
		-0.783339, -0.282570, -0.553655,
		0.577786, -0.659460, -0.480912,
		43.800835, 41.562111, 29.855984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999321, 41.508793, 30.078791>,  <43.396385, 42.023731, 30.192623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999321, 41.508793, 30.078791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357594, 41.331673, 30.062374>,  <43.572556, 41.225403, 30.052525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357594, 41.331673, 30.062374>,  <42.999321, 41.508793, 30.078791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357594, 41.331673, 30.062374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312290, -0.692018, 0.650836,
		-0.316587, -0.570126, -0.758109,
		0.895683, -0.442795, -0.041039,
		43.626297, 41.198833, 30.050062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842403, 40.881828, 30.036795>,  <42.999321, 41.508793, 30.078791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842403, 40.881828, 30.036795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221504, 40.849777, 30.160309>,  <43.448963, 40.830547, 30.234417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221504, 40.849777, 30.160309>,  <42.842403, 40.881828, 30.036795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221504, 40.849777, 30.160309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250977, -0.784792, 0.566667,
		0.196926, -0.614557, -0.763898,
		0.947750, -0.080129, 0.308786,
		43.505829, 40.825737, 30.252945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949509, 40.182159, 30.110006>,  <42.842403, 40.881828, 30.036795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949509, 40.182159, 30.110006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.248837, 40.338978, 30.324041>,  <43.428432, 40.433071, 30.452461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.248837, 40.338978, 30.324041>,  <42.949509, 40.182159, 30.110006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248837, 40.338978, 30.324041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096387, -0.733829, 0.672461,
		0.656299, -0.554791, -0.511350,
		0.748319, 0.392048, 0.535086,
		43.473331, 40.456593, 30.484568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433563, 39.592812, 30.301384>,  <42.949509, 40.182159, 30.110006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433563, 39.592812, 30.301384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482395, 39.884010, 30.571234>,  <43.511696, 40.058731, 30.733145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482395, 39.884010, 30.571234>,  <43.433563, 39.592812, 30.301384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482395, 39.884010, 30.571234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031312, -0.676546, 0.735734,
		0.992026, -0.110942, -0.059797,
		0.122079, 0.727995, 0.674625,
		43.519020, 40.102409, 30.773621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722710, 39.267063, 30.845570>,  <43.433563, 39.592812, 30.301384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722710, 39.267063, 30.845570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631001, 39.608021, 31.033550>,  <43.575974, 39.812595, 31.146339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631001, 39.608021, 31.033550>,  <43.722710, 39.267063, 30.845570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631001, 39.608021, 31.033550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056917, -0.493730, 0.867751,
		0.971697, 0.172203, 0.161715,
		-0.229273, 0.852395, 0.469954,
		43.562218, 39.863739, 31.174536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140114, 39.322887, 31.468502>,  <43.722710, 39.267063, 30.845570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140114, 39.322887, 31.468502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.825623, 39.560524, 31.536493>,  <43.636929, 39.703106, 31.577288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.825623, 39.560524, 31.536493>,  <44.140114, 39.322887, 31.468502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825623, 39.560524, 31.536493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007864, -0.284675, 0.958592,
		0.617882, 0.752339, 0.228492,
		-0.786232, 0.594093, 0.169979,
		43.589752, 39.738750, 31.587486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318741, 39.734104, 32.071484>,  <44.140114, 39.322887, 31.468502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318741, 39.734104, 32.071484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920555, 39.700146, 32.054329>,  <43.681644, 39.679771, 32.044037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920555, 39.700146, 32.054329>,  <44.318741, 39.734104, 32.071484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920555, 39.700146, 32.054329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022041, -0.232752, 0.972286,
		-0.092522, 0.968824, 0.229826,
		-0.995467, -0.084893, -0.042888,
		43.621914, 39.674679, 32.041462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121048, 39.798584, 32.720608>,  <44.318741, 39.734104, 32.071484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121048, 39.798584, 32.720608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762920, 39.676910, 32.590454>,  <43.548042, 39.603905, 32.512360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762920, 39.676910, 32.590454>,  <44.121048, 39.798584, 32.720608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762920, 39.676910, 32.590454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229317, -0.311481, 0.922168,
		-0.381863, 0.900250, 0.209119,
		-0.895318, -0.304188, -0.325386,
		43.494324, 39.585655, 32.492840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586933, 40.107559, 33.158665>,  <44.121048, 39.798584, 32.720608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586933, 40.107559, 33.158665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409332, 39.795109, 32.983070>,  <43.302773, 39.607639, 32.877716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409332, 39.795109, 32.983070>,  <43.586933, 40.107559, 33.158665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409332, 39.795109, 32.983070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193564, -0.394740, 0.898173,
		-0.874868, 0.483764, 0.024068,
		-0.444004, -0.781123, -0.438984,
		43.276131, 39.560772, 32.851376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876442, 40.092510, 33.458355>,  <43.586933, 40.107559, 33.158665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876442, 40.092510, 33.458355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981384, 39.727749, 33.332123>,  <43.044350, 39.508892, 33.256382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981384, 39.727749, 33.332123>,  <42.876442, 40.092510, 33.458355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981384, 39.727749, 33.332123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323794, -0.391272, 0.861431,
		-0.909025, -0.123818, -0.397923,
		0.262356, -0.911908, -0.315585,
		43.060093, 39.454178, 33.237446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518219, 39.684582, 33.878315>,  <42.876442, 40.092510, 33.458355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518219, 39.684582, 33.878315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738602, 39.390980, 33.719475>,  <42.870831, 39.214821, 33.624168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738602, 39.390980, 33.719475>,  <42.518219, 39.684582, 33.878315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738602, 39.390980, 33.719475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089293, -0.421258, 0.902534,
		-0.829745, -0.532714, -0.166553,
		0.550954, -0.734001, -0.397104,
		42.903889, 39.170780, 33.600342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186958, 38.998169, 34.008236>,  <42.518219, 39.684582, 33.878315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186958, 38.998169, 34.008236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580753, 38.935383, 33.976860>,  <42.817028, 38.897709, 33.958035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580753, 38.935383, 33.976860>,  <42.186958, 38.998169, 34.008236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580753, 38.935383, 33.976860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039182, -0.632378, 0.773668,
		-0.171047, -0.758590, -0.628716,
		0.984484, -0.156968, -0.078444,
		42.876099, 38.888294, 33.953327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257851, 38.210186, 33.870285>,  <42.186958, 38.998169, 34.008236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257851, 38.210186, 33.870285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.599884, 38.377743, 33.992508>,  <42.805103, 38.478279, 34.065842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.599884, 38.377743, 33.992508>,  <42.257851, 38.210186, 33.870285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599884, 38.377743, 33.992508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155471, -0.769340, 0.619633,
		0.494639, -0.482330, -0.722973,
		0.855080, 0.418896, 0.305557,
		42.856407, 38.503410, 34.084175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671867, 37.615936, 34.180878>,  <42.257851, 38.210186, 33.870285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671867, 37.615936, 34.180878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898998, 37.902576, 34.342892>,  <43.035278, 38.074558, 34.440102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898998, 37.902576, 34.342892>,  <42.671867, 37.615936, 34.180878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898998, 37.902576, 34.342892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184097, -0.590154, 0.786020,
		0.802294, -0.371761, -0.467031,
		0.567832, 0.716598, 0.405037,
		43.069347, 38.117558, 34.464401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366749, 37.334850, 34.419796>,  <42.671867, 37.615936, 34.180878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366749, 37.334850, 34.419796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291813, 37.666508, 34.630482>,  <43.246853, 37.865501, 34.756893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291813, 37.666508, 34.630482>,  <43.366749, 37.334850, 34.419796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291813, 37.666508, 34.630482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230010, -0.484275, 0.844140,
		0.954986, 0.279292, -0.099986,
		-0.187341, 0.829140, 0.526716,
		43.235611, 37.915249, 34.788498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823490, 37.196335, 34.888226>,  <43.366749, 37.334850, 34.419796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823490, 37.196335, 34.888226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576698, 37.482296, 35.019836>,  <43.428623, 37.653873, 35.098801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576698, 37.482296, 35.019836>,  <43.823490, 37.196335, 34.888226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576698, 37.482296, 35.019836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044907, -0.449384, 0.892209,
		0.785698, 0.535699, 0.309364,
		-0.616979, 0.714899, 0.329023,
		43.391605, 37.696766, 35.118542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452209, 36.828972, 35.129456>,  <43.823490, 37.196335, 34.888226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452209, 36.828972, 35.129456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648636, 36.481918, 35.160610>,  <44.766491, 36.273685, 35.179302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648636, 36.481918, 35.160610>,  <44.452209, 36.828972, 35.129456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648636, 36.481918, 35.160610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588925, 0.264774, -0.763585,
		0.641889, 0.420841, 0.640992,
		0.491066, -0.867633, 0.077888,
		44.795956, 36.221630, 35.183975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055897, 37.059498, 35.201504>,  <44.452209, 36.828972, 35.129456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055897, 37.059498, 35.201504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.073624, 36.683487, 35.066223>,  <45.084259, 36.457878, 34.985054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.073624, 36.683487, 35.066223>,  <45.055897, 37.059498, 35.201504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073624, 36.683487, 35.066223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669191, 0.279290, -0.688607,
		0.741768, -0.195807, 0.641436,
		0.044313, -0.940030, -0.338201,
		45.086918, 36.401478, 34.964764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706917, 37.014839, 34.878445>,  <45.055897, 37.059498, 35.201504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706917, 37.014839, 34.878445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510193, 36.693527, 34.744068>,  <45.392159, 36.500740, 34.663441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510193, 36.693527, 34.744068>,  <45.706917, 37.014839, 34.878445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510193, 36.693527, 34.744068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540083, 0.021200, -0.841345,
		0.682961, -0.595218, 0.423414,
		-0.491807, -0.803285, -0.335946,
		45.362652, 36.452541, 34.643284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083748, 36.500294, 34.509212>,  <45.706917, 37.014839, 34.878445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083748, 36.500294, 34.509212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.724979, 36.414089, 34.354771>,  <45.509716, 36.362366, 34.262104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.724979, 36.414089, 34.354771>,  <46.083748, 36.500294, 34.509212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724979, 36.414089, 34.354771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364259, 0.134912, -0.921474,
		0.250679, -0.967137, -0.042504,
		-0.896925, -0.215512, -0.386108,
		45.455902, 36.349438, 34.238937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209499, 36.039242, 33.890862>,  <46.083748, 36.500294, 34.509212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209499, 36.039242, 33.890862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846867, 36.195004, 33.825783>,  <45.629288, 36.288460, 33.786736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846867, 36.195004, 33.825783>,  <46.209499, 36.039242, 33.890862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846867, 36.195004, 33.825783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244825, 0.171260, -0.954322,
		-0.343757, -0.905004, -0.250598,
		-0.906582, 0.389407, -0.162696,
		45.574890, 36.311825, 33.776974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027454, 35.831303, 33.214935>,  <46.209499, 36.039242, 33.890862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027454, 35.831303, 33.214935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781925, 36.140556, 33.278790>,  <45.634605, 36.326107, 33.317101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781925, 36.140556, 33.278790>,  <46.027454, 35.831303, 33.214935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781925, 36.140556, 33.278790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112281, 0.285657, -0.951731,
		-0.781415, -0.566274, -0.262153,
		-0.613827, 0.773132, 0.159635,
		45.597778, 36.372498, 33.326679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663040, 35.865128, 32.626476>,  <46.027454, 35.831303, 33.214935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663040, 35.865128, 32.626476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.583637, 36.223793, 32.784756>,  <45.535995, 36.438992, 32.879723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.583637, 36.223793, 32.784756>,  <45.663040, 35.865128, 32.626476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583637, 36.223793, 32.784756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116884, 0.422514, -0.898788,
		-0.973105, -0.132166, -0.188679,
		-0.198509, 0.896668, 0.395703,
		45.524086, 36.492794, 32.903465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329525, 36.150105, 32.045303>,  <45.663040, 35.865128, 32.626476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329525, 36.150105, 32.045303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467701, 36.447189, 32.274757>,  <45.550606, 36.625439, 32.412430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467701, 36.447189, 32.274757>,  <45.329525, 36.150105, 32.045303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467701, 36.447189, 32.274757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059055, 0.592844, -0.803149,
		-0.936580, 0.311317, 0.160933,
		0.345442, 0.742709, 0.573631,
		45.571335, 36.670002, 32.446846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856812, 36.788479, 31.934015>,  <45.329525, 36.150105, 32.045303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856812, 36.788479, 31.934015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193306, 36.924534, 32.102123>,  <45.395203, 37.006168, 32.202988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193306, 36.924534, 32.102123>,  <44.856812, 36.788479, 31.934015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193306, 36.924534, 32.102123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010637, 0.766756, -0.641850,
		-0.540564, 0.544418, 0.641405,
		0.841236, 0.340138, 0.420272,
		45.445675, 37.026577, 32.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835747, 37.562714, 32.127346>,  <44.856812, 36.788479, 31.934015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835747, 37.562714, 32.127346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.226067, 37.482365, 32.092808>,  <45.460258, 37.434155, 32.072083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.226067, 37.482365, 32.092808>,  <44.835747, 37.562714, 32.127346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226067, 37.482365, 32.092808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122751, 0.830111, -0.543919,
		0.180939, 0.520159, 0.834683,
		0.975804, -0.200874, -0.086349,
		45.518806, 37.422104, 32.066902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178505, 38.147659, 32.248226>,  <44.835747, 37.562714, 32.127346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178505, 38.147659, 32.248226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451935, 37.944836, 32.038231>,  <45.615993, 37.823139, 31.912233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451935, 37.944836, 32.038231>,  <45.178505, 38.147659, 32.248226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451935, 37.944836, 32.038231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294345, 0.849710, -0.437440,
		0.667897, 0.144495, 0.730092,
		0.683575, -0.507064, -0.524988,
		45.657005, 37.792717, 31.880735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638180, 38.650539, 32.078636>,  <45.178505, 38.147659, 32.248226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638180, 38.650539, 32.078636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.727402, 38.366058, 31.811972>,  <45.780933, 38.195370, 31.651972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.727402, 38.366058, 31.811972>,  <45.638180, 38.650539, 32.078636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727402, 38.366058, 31.811972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323911, 0.699109, -0.637439,
		0.919418, -0.073756, 0.386305,
		0.223055, -0.711201, -0.666663,
		45.794319, 38.152699, 31.611973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390968, 38.796597, 31.885586>,  <45.638180, 38.650539, 32.078636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390968, 38.796597, 31.885586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.257423, 38.568619, 31.585268>,  <46.177296, 38.431831, 31.405077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.257423, 38.568619, 31.585268>,  <46.390968, 38.796597, 31.885586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257423, 38.568619, 31.585268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398965, 0.636197, -0.660363,
		0.854027, -0.520012, 0.014986,
		-0.333863, -0.569947, -0.750797,
		46.157265, 38.397636, 31.360029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.912544, 38.803349, 31.375851>,  <46.390968, 38.796597, 31.885586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.912544, 38.803349, 31.375851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568035, 38.731152, 31.185848>,  <46.361328, 38.687832, 31.071848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568035, 38.731152, 31.185848>,  <46.912544, 38.803349, 31.375851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568035, 38.731152, 31.185848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249912, 0.663460, -0.705241,
		0.442438, -0.726115, -0.526314,
		-0.861274, -0.180493, -0.475004,
		46.309654, 38.677002, 31.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.063114, 38.897972, 30.713234>,  <46.912544, 38.803349, 31.375851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.063114, 38.897972, 30.713234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663284, 38.892933, 30.723730>,  <46.423386, 38.889908, 30.730028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663284, 38.892933, 30.723730>,  <47.063114, 38.897972, 30.713234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663284, 38.892933, 30.723730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026101, 0.786994, -0.616408,
		-0.012884, -0.616832, -0.786989,
		-0.999576, -0.012599, 0.026240,
		46.363411, 38.889153, 30.731602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.900810, 38.883789, 30.104309>,  <47.063114, 38.897972, 30.713234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.900810, 38.883789, 30.104309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.588581, 39.056557, 30.285042>,  <46.401245, 39.160217, 30.393482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.588581, 39.056557, 30.285042>,  <46.900810, 38.883789, 30.104309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588581, 39.056557, 30.285042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120526, 0.813293, -0.569235,
		-0.613337, -0.389871, -0.686890,
		-0.780571, 0.431921, 0.451833,
		46.354408, 39.186134, 30.420591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470905, 39.074516, 29.604403>,  <46.900810, 38.883789, 30.104309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470905, 39.074516, 29.604403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357212, 39.316605, 29.901838>,  <46.288998, 39.461857, 30.080299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357212, 39.316605, 29.901838>,  <46.470905, 39.074516, 29.604403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357212, 39.316605, 29.901838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112470, 0.749174, -0.652755,
		-0.952136, -0.269166, -0.144872,
		-0.284233, 0.605217, 0.743588,
		46.271942, 39.498169, 30.124914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826443, 39.379391, 29.302143>,  <46.470905, 39.074516, 29.604403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826443, 39.379391, 29.302143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949642, 39.602581, 29.610378>,  <46.023560, 39.736496, 29.795319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949642, 39.602581, 29.610378>,  <45.826443, 39.379391, 29.302143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949642, 39.602581, 29.610378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008164, 0.808379, -0.588605,
		-0.951353, 0.187578, 0.244421,
		0.307994, 0.557976, 0.770586,
		46.042042, 39.769974, 29.841555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625210, 39.979633, 29.110722>,  <45.826443, 39.379391, 29.302143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625210, 39.979633, 29.110722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867512, 40.091671, 29.408609>,  <46.012894, 40.158894, 29.587341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867512, 40.091671, 29.408609>,  <45.625210, 39.979633, 29.110722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867512, 40.091671, 29.408609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221342, 0.839720, -0.495860,
		-0.764242, 0.465209, 0.446671,
		0.605757, 0.280090, 0.744720,
		46.049240, 40.175697, 29.632025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459682, 40.722931, 29.274244>,  <45.625210, 39.979633, 29.110722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459682, 40.722931, 29.274244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831402, 40.659386, 29.407618>,  <46.054432, 40.621258, 29.487640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831402, 40.659386, 29.407618>,  <45.459682, 40.722931, 29.274244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831402, 40.659386, 29.407618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305218, 0.838665, -0.451091,
		-0.207978, 0.520965, 0.827853,
		0.929294, -0.158858, 0.333432,
		46.110191, 40.611729, 29.507647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696674, 41.347904, 29.558084>,  <45.459682, 40.722931, 29.274244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696674, 41.347904, 29.558084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030090, 41.145374, 29.469677>,  <46.230141, 41.023857, 29.416632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030090, 41.145374, 29.469677>,  <45.696674, 41.347904, 29.558084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030090, 41.145374, 29.469677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363095, 0.803597, -0.471587,
		0.416389, 0.312834, 0.853672,
		0.833536, -0.506328, -0.221020,
		46.280151, 40.993477, 29.403372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.368385, 43.093933, 41.254913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164265, 42.759888, 41.337059>,  <37.041790, 42.559460, 41.386345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164265, 42.759888, 41.337059>,  <37.368385, 43.093933, 41.254913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164265, 42.759888, 41.337059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049204, -0.210054, -0.976451,
		0.858585, -0.508393, 0.066101,
		-0.510306, -0.835113, 0.205364,
		37.011173, 42.509354, 41.398666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754253, 42.543064, 41.033340>,  <37.368385, 43.093933, 41.254913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754253, 42.543064, 41.033340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382416, 42.398918, 41.064289>,  <37.159313, 42.312431, 41.082859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382416, 42.398918, 41.064289>,  <37.754253, 42.543064, 41.033340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382416, 42.398918, 41.064289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033737, -0.292236, -0.955751,
		0.367026, -0.885854, 0.283820,
		-0.929598, -0.360361, 0.077373,
		37.103535, 42.290810, 41.087502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676773, 41.717552, 40.960594>,  <37.754253, 42.543064, 41.033340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676773, 41.717552, 40.960594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316013, 41.848305, 40.847645>,  <37.099560, 41.926758, 40.779877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316013, 41.848305, 40.847645>,  <37.676773, 41.717552, 40.960594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316013, 41.848305, 40.847645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193079, -0.279686, -0.940476,
		-0.386401, -0.902731, 0.189134,
		-0.901896, 0.326883, -0.282370,
		37.045444, 41.946369, 40.762936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336494, 41.229496, 40.485344>,  <37.676773, 41.717552, 40.960594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336494, 41.229496, 40.485344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165504, 41.586567, 40.428230>,  <37.062912, 41.800812, 40.393963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165504, 41.586567, 40.428230>,  <37.336494, 41.229496, 40.485344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165504, 41.586567, 40.428230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014196, -0.164552, -0.986266,
		-0.903918, -0.419573, 0.083014,
		-0.427471, 0.892682, -0.142786,
		37.037262, 41.854370, 40.385395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699055, 41.061626, 40.133423>,  <37.336494, 41.229496, 40.485344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699055, 41.061626, 40.133423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748646, 41.447357, 40.039867>,  <36.778400, 41.678795, 39.983734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748646, 41.447357, 40.039867>,  <36.699055, 41.061626, 40.133423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748646, 41.447357, 40.039867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213498, -0.204267, -0.955350,
		-0.969045, 0.168378, 0.180557,
		0.123978, 0.964326, -0.233892,
		36.785839, 41.736656, 39.969700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182312, 41.266235, 39.613850>,  <36.699055, 41.061626, 40.133423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182312, 41.266235, 39.613850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450684, 41.558327, 39.562283>,  <36.611706, 41.733582, 39.531342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450684, 41.558327, 39.562283>,  <36.182312, 41.266235, 39.613850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450684, 41.558327, 39.562283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030873, -0.201221, -0.979059,
		-0.740875, 0.652903, -0.157550,
		0.670933, 0.730225, -0.128922,
		36.651962, 41.777393, 39.523605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913887, 41.582420, 39.010395>,  <36.182312, 41.266235, 39.613850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913887, 41.582420, 39.010395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306194, 41.622746, 39.077244>,  <36.541580, 41.646942, 39.117355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306194, 41.622746, 39.077244>,  <35.913887, 41.582420, 39.010395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306194, 41.622746, 39.077244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182071, -0.164085, -0.969498,
		-0.070320, 0.981281, -0.179285,
		0.980768, 0.100818, 0.167124,
		36.600426, 41.652992, 39.127380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098988, 41.941769, 38.421173>,  <35.913887, 41.582420, 39.010395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098988, 41.941769, 38.421173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447826, 41.791149, 38.546177>,  <36.657127, 41.700779, 38.621181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447826, 41.791149, 38.546177>,  <36.098988, 41.941769, 38.421173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447826, 41.791149, 38.546177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200433, -0.307737, -0.930121,
		0.446404, 0.873791, -0.192904,
		0.872095, -0.376546, 0.312511,
		36.709454, 41.678185, 38.639931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570480, 42.046684, 37.864662>,  <36.098988, 41.941769, 38.421173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570480, 42.046684, 37.864662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777191, 41.782669, 38.082760>,  <36.901218, 41.624260, 38.213619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777191, 41.782669, 38.082760>,  <36.570480, 42.046684, 37.864662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777191, 41.782669, 38.082760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316800, -0.444239, -0.838027,
		0.795352, 0.605803, -0.020469,
		0.516772, -0.660042, 0.545244,
		36.932224, 41.584656, 38.246334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376167, 42.123341, 37.758869>,  <36.570480, 42.046684, 37.864662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376167, 42.123341, 37.758869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315865, 41.755035, 37.902794>,  <37.279682, 41.534050, 37.989147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315865, 41.755035, 37.902794>,  <37.376167, 42.123341, 37.758869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315865, 41.755035, 37.902794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494655, -0.385388, -0.778969,
		0.855914, 0.060547, 0.513561,
		-0.150756, -0.920766, 0.359809,
		37.270638, 41.478806, 38.010738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975677, 41.745598, 37.608036>,  <37.376167, 42.123341, 37.758869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975677, 41.745598, 37.608036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733398, 41.435322, 37.678951>,  <37.588032, 41.249157, 37.721500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733398, 41.435322, 37.678951>,  <37.975677, 41.745598, 37.608036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733398, 41.435322, 37.678951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483968, -0.536001, -0.691721,
		0.631592, -0.333169, 0.700064,
		-0.605696, -0.775694, 0.177291,
		37.551689, 41.202614, 37.732140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452812, 41.186489, 37.543266>,  <37.975677, 41.745598, 37.608036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452812, 41.186489, 37.543266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076435, 41.055050, 37.510639>,  <37.850609, 40.976185, 37.491062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076435, 41.055050, 37.510639>,  <38.452812, 41.186489, 37.543266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076435, 41.055050, 37.510639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280096, -0.620156, -0.732771,
		0.190206, -0.712339, 0.675569,
		-0.940940, -0.328602, -0.081566,
		37.794151, 40.956470, 37.486168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595623, 40.577930, 37.121277>,  <38.452812, 41.186489, 37.543266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595623, 40.577930, 37.121277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197567, 40.615929, 37.131702>,  <37.958733, 40.638725, 37.137959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197567, 40.615929, 37.131702>,  <38.595623, 40.577930, 37.121277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197567, 40.615929, 37.131702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092688, -0.813489, -0.574147,
		-0.033339, -0.573770, 0.818337,
		-0.995137, 0.094992, 0.026061,
		37.899025, 40.644424, 37.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391308, 39.959320, 37.439327>,  <38.595623, 40.577930, 37.121277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391308, 39.959320, 37.439327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155991, 40.117355, 37.157101>,  <38.014801, 40.212177, 36.987766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155991, 40.117355, 37.157101>,  <38.391308, 39.959320, 37.439327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155991, 40.117355, 37.157101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124856, -0.817679, -0.561971,
		-0.798952, -0.418697, 0.431705,
		-0.588292, 0.395086, -0.705563,
		37.979504, 40.235882, 36.945431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137730, 39.917858, 37.631390>,  <38.391308, 39.959320, 37.439327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137730, 39.917858, 37.631390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362778, 39.596508, 37.553368>,  <39.497807, 39.403698, 37.506554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362778, 39.596508, 37.553368>,  <39.137730, 39.917858, 37.631390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362778, 39.596508, 37.553368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258558, -0.395102, 0.881500,
		-0.785241, -0.445518, -0.430012,
		0.562623, -0.803373, -0.195058,
		39.531567, 39.355495, 37.494850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669662, 39.299538, 37.724056>,  <39.137730, 39.917858, 37.631390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669662, 39.299538, 37.724056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055695, 39.206860, 37.772961>,  <39.287312, 39.151253, 37.802303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055695, 39.206860, 37.772961>,  <38.669662, 39.299538, 37.724056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055695, 39.206860, 37.772961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225351, -0.496227, 0.838437,
		-0.133588, -0.836707, -0.531108,
		0.965076, -0.231691, 0.122263,
		39.345219, 39.137352, 37.809639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745209, 38.532745, 37.792999>,  <38.669662, 39.299538, 37.724056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745209, 38.532745, 37.792999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040237, 38.722454, 37.985268>,  <39.217255, 38.836281, 38.100628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040237, 38.722454, 37.985268>,  <38.745209, 38.532745, 37.792999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040237, 38.722454, 37.985268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291598, -0.418335, 0.860213,
		0.609058, -0.774636, -0.170257,
		0.737576, 0.474273, 0.480673,
		39.261509, 38.864735, 38.129471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916462, 38.104359, 38.301682>,  <38.745209, 38.532745, 37.792999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916462, 38.104359, 38.301682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078979, 38.441654, 38.442467>,  <39.176491, 38.644032, 38.526936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078979, 38.441654, 38.442467>,  <38.916462, 38.104359, 38.301682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078979, 38.441654, 38.442467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140881, -0.322770, 0.935934,
		0.902815, -0.429852, -0.012345,
		0.406297, 0.843236, 0.351960,
		39.200871, 38.694626, 38.548054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214008, 37.872463, 38.893867>,  <38.916462, 38.104359, 38.301682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214008, 37.872463, 38.893867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208992, 38.268551, 38.949440>,  <39.205982, 38.506203, 38.982784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208992, 38.268551, 38.949440>,  <39.214008, 37.872463, 38.893867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208992, 38.268551, 38.949440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066034, -0.139458, 0.988024,
		0.997739, 0.003213, 0.067137,
		-0.012537, 0.990223, 0.138931,
		39.205231, 38.565617, 38.991119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658913, 37.997372, 39.473225>,  <39.214008, 37.872463, 38.893867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658913, 37.997372, 39.473225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423710, 38.319717, 39.445427>,  <39.282589, 38.513126, 39.428749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423710, 38.319717, 39.445427>,  <39.658913, 37.997372, 39.473225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423710, 38.319717, 39.445427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011543, 0.077552, 0.996922,
		0.808772, 0.587001, -0.036299,
		-0.588009, 0.805863, -0.069498,
		39.247307, 38.561478, 39.424576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887718, 38.488678, 40.095821>,  <39.658913, 37.997372, 39.473225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887718, 38.488678, 40.095821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533222, 38.642406, 39.992382>,  <39.320522, 38.734642, 39.930321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533222, 38.642406, 39.992382>,  <39.887718, 38.488678, 40.095821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533222, 38.642406, 39.992382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160940, 0.268011, 0.949878,
		0.434366, 0.883440, -0.175670,
		-0.886242, 0.384322, -0.258595,
		39.267349, 38.757702, 39.914803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870815, 39.167667, 40.380810>,  <39.887718, 38.488678, 40.095821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870815, 39.167667, 40.380810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479805, 39.105633, 40.323681>,  <39.245201, 39.068413, 40.289402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479805, 39.105633, 40.323681>,  <39.870815, 39.167667, 40.380810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479805, 39.105633, 40.323681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178704, 0.250032, 0.951603,
		-0.111870, 0.955737, -0.272127,
		-0.977522, -0.155086, -0.142823,
		39.186550, 39.059109, 40.280834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507488, 39.733009, 40.693401>,  <39.870815, 39.167667, 40.380810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507488, 39.733009, 40.693401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256824, 39.422039, 40.671841>,  <39.106426, 39.235458, 40.658905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256824, 39.422039, 40.671841>,  <39.507488, 39.733009, 40.693401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256824, 39.422039, 40.671841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371497, 0.237214, 0.897619,
		-0.685046, 0.582526, -0.437465,
		-0.626659, -0.777427, -0.053904,
		39.068829, 39.188812, 40.655670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793930, 40.001335, 40.989494>,  <39.507488, 39.733009, 40.693401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793930, 40.001335, 40.989494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818588, 39.602127, 40.994385>,  <38.833382, 39.362602, 40.997318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818588, 39.602127, 40.994385>,  <38.793930, 40.001335, 40.989494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818588, 39.602127, 40.994385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263590, -0.004466, 0.964625,
		-0.962663, -0.062685, -0.263344,
		0.061644, -0.998023, 0.012223,
		38.837082, 39.302719, 40.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072857, 39.828758, 41.217297>,  <38.793930, 40.001335, 40.989494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072857, 39.828758, 41.217297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316532, 39.516930, 41.275482>,  <38.462738, 39.329834, 41.310394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316532, 39.516930, 41.275482>,  <38.072857, 39.828758, 41.217297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316532, 39.516930, 41.275482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258874, -0.022110, 0.965658,
		-0.749585, -0.625921, -0.215280,
		0.609186, -0.779573, 0.145461,
		38.499287, 39.283058, 41.319122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717194, 39.376678, 41.675453>,  <38.072857, 39.828758, 41.217297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717194, 39.376678, 41.675453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092995, 39.257046, 41.742256>,  <38.318474, 39.185265, 41.782337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092995, 39.257046, 41.742256>,  <37.717194, 39.376678, 41.675453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092995, 39.257046, 41.742256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158794, 0.051733, 0.985955,
		-0.303520, -0.952824, 0.001111,
		0.939500, -0.299081, 0.167005,
		38.374844, 39.167320, 41.792358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662891, 38.914753, 42.260906>,  <37.717194, 39.376678, 41.675453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662891, 38.914753, 42.260906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051968, 38.998558, 42.220940>,  <38.285412, 39.048843, 42.196960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051968, 38.998558, 42.220940>,  <37.662891, 38.914753, 42.260906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051968, 38.998558, 42.220940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002190, 0.438708, 0.898627,
		0.232108, -0.873864, 0.427185,
		0.972688, 0.209514, -0.099914,
		38.343773, 39.061413, 42.190964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887165, 38.674622, 42.832108>,  <37.662891, 38.914753, 42.260906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887165, 38.674622, 42.832108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185738, 38.923069, 42.736565>,  <38.364880, 39.072140, 42.679241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185738, 38.923069, 42.736565>,  <37.887165, 38.674622, 42.832108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185738, 38.923069, 42.736565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042967, 0.313198, 0.948715,
		0.664076, -0.718412, 0.207093,
		0.746429, 0.621121, -0.238855,
		38.409668, 39.109406, 42.664909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919216, 37.912449, 43.005314>,  <37.887165, 38.674622, 42.832108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919216, 37.912449, 43.005314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538895, 37.850910, 43.112865>,  <37.310699, 37.813988, 43.177399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538895, 37.850910, 43.112865>,  <37.919216, 37.912449, 43.005314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538895, 37.850910, 43.112865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204352, -0.340851, -0.917639,
		0.232823, -0.927444, 0.292645,
		-0.950807, -0.153845, 0.268883,
		37.253651, 37.804756, 43.193531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744713, 37.319824, 42.669151>,  <37.919216, 37.912449, 43.005314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744713, 37.319824, 42.669151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391235, 37.487026, 42.753395>,  <37.179150, 37.587349, 42.803940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391235, 37.487026, 42.753395>,  <37.744713, 37.319824, 42.669151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391235, 37.487026, 42.753395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371102, -0.351481, -0.859502,
		-0.285251, -0.837695, 0.465724,
		-0.883694, 0.418005, 0.210610,
		37.126129, 37.612427, 42.816578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284153, 36.832829, 42.393436>,  <37.744713, 37.319824, 42.669151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284153, 36.832829, 42.393436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062649, 37.163280, 42.435127>,  <36.929749, 37.361553, 42.460140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062649, 37.163280, 42.435127>,  <37.284153, 36.832829, 42.393436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062649, 37.163280, 42.435127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545635, -0.265460, -0.794867,
		-0.628996, -0.497031, 0.597766,
		-0.553757, 0.826130, 0.104224,
		36.896523, 37.411121, 42.466396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624916, 36.578938, 42.355968>,  <37.284153, 36.832829, 42.393436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624916, 36.578938, 42.355968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608173, 36.970100, 42.274044>,  <36.598129, 37.204800, 42.224888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608173, 36.970100, 42.274044>,  <36.624916, 36.578938, 42.355968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608173, 36.970100, 42.274044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442660, -0.201922, -0.873659,
		-0.895712, 0.054096, 0.441331,
		-0.041854, 0.977907, -0.204810,
		36.595615, 37.263474, 42.212601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972187, 36.627991, 42.045914>,  <36.624916, 36.578938, 42.355968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972187, 36.627991, 42.045914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166748, 36.958420, 41.932060>,  <36.283485, 37.156677, 41.863747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166748, 36.958420, 41.932060>,  <35.972187, 36.627991, 42.045914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166748, 36.958420, 41.932060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455160, -0.038511, -0.889577,
		-0.745814, 0.562251, 0.357262,
		0.486407, 0.826070, -0.284636,
		36.312672, 37.206242, 41.846668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404831, 37.192287, 41.831352>,  <35.972187, 36.627991, 42.045914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404831, 37.192287, 41.831352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759926, 37.244049, 41.654640>,  <35.972984, 37.275105, 41.548611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759926, 37.244049, 41.654640>,  <35.404831, 37.192287, 41.831352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759926, 37.244049, 41.654640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432980, -0.091235, -0.896775,
		-0.156353, 0.987386, -0.024963,
		0.887740, 0.129405, -0.441783,
		36.026249, 37.282871, 41.522106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219593, 37.492474, 41.236904>,  <35.404831, 37.192287, 41.831352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219593, 37.492474, 41.236904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586445, 37.354492, 41.157024>,  <35.806557, 37.271702, 41.109097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586445, 37.354492, 41.157024>,  <35.219593, 37.492474, 41.236904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586445, 37.354492, 41.157024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264363, -0.151464, -0.952455,
		0.298308, 0.926317, -0.230106,
		0.917128, -0.344957, -0.199701,
		35.861584, 37.251003, 41.097115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330044, 37.763344, 40.685471>,  <35.219593, 37.492474, 41.236904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330044, 37.763344, 40.685471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611416, 37.479141, 40.693157>,  <35.780239, 37.308620, 40.697769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611416, 37.479141, 40.693157>,  <35.330044, 37.763344, 40.685471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611416, 37.479141, 40.693157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060592, -0.086879, -0.994375,
		0.708181, 0.698305, -0.104164,
		0.703426, -0.710508, 0.019214,
		35.822445, 37.265987, 40.698921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637901, 37.956242, 40.139435>,  <35.330044, 37.763344, 40.685471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637901, 37.956242, 40.139435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733295, 37.573616, 40.206501>,  <35.790531, 37.344040, 40.246738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733295, 37.573616, 40.206501>,  <35.637901, 37.956242, 40.139435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733295, 37.573616, 40.206501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051613, -0.159915, -0.985781,
		0.969774, 0.243746, 0.011234,
		0.238484, -0.956564, 0.167662,
		35.804840, 37.286648, 40.256798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345646, 37.895809, 39.800556>,  <35.637901, 37.956242, 40.139435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345646, 37.895809, 39.800556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114326, 37.570740, 39.829201>,  <35.975536, 37.375698, 39.846386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114326, 37.570740, 39.829201>,  <36.345646, 37.895809, 39.800556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114326, 37.570740, 39.829201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172388, -0.207519, -0.962922,
		0.797403, -0.544513, 0.260103,
		-0.578300, -0.812675, 0.071609,
		35.940838, 37.326939, 39.850685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527843, 37.662483, 39.213055>,  <36.345646, 37.895809, 39.800556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527843, 37.662483, 39.213055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247501, 37.400818, 39.326805>,  <36.079296, 37.243816, 39.395058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247501, 37.400818, 39.326805>,  <36.527843, 37.662483, 39.213055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247501, 37.400818, 39.326805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162836, -0.241422, -0.956661,
		0.694470, -0.716787, 0.062680,
		-0.700854, -0.654166, 0.284379,
		36.037247, 37.204567, 39.412117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608208, 36.857235, 39.005405>,  <36.527843, 37.662483, 39.213055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608208, 36.857235, 39.005405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224712, 36.967121, 39.034657>,  <35.994614, 37.033054, 39.052208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224712, 36.967121, 39.034657>,  <36.608208, 36.857235, 39.005405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224712, 36.967121, 39.034657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190079, -0.428180, -0.883477,
		-0.211392, -0.860925, 0.462732,
		-0.958740, 0.274716, 0.073130,
		35.937092, 37.049538, 39.056595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.519886, 36.614555, 46.772236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.220966, 36.877460, 46.811329>,  <37.041615, 37.035202, 46.834785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.220966, 36.877460, 46.811329>,  <37.519886, 36.614555, 46.772236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220966, 36.877460, 46.811329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169154, -0.045932, -0.984519,
		-0.642597, -0.752262, 0.145503,
		-0.747299, 0.657261, 0.097732,
		36.996777, 37.074638, 46.840649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951752, 36.374462, 46.443928>,  <37.519886, 36.614555, 46.772236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951752, 36.374462, 46.443928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905781, 36.771305, 46.463974>,  <36.878201, 37.009411, 46.476002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905781, 36.771305, 46.463974>,  <36.951752, 36.374462, 46.443928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905781, 36.771305, 46.463974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225911, 0.023028, -0.973876,
		-0.967345, -0.123244, 0.221482,
		-0.114924, 0.992109, 0.050118,
		36.871304, 37.068939, 46.479008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350292, 36.497013, 46.099350>,  <36.951752, 36.374462, 46.443928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350292, 36.497013, 46.099350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581585, 36.823196, 46.088871>,  <36.720360, 37.018906, 46.082584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581585, 36.823196, 46.088871>,  <36.350292, 36.497013, 46.099350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581585, 36.823196, 46.088871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245822, 0.143508, -0.958633,
		-0.777961, 0.560750, 0.283437,
		0.578229, 0.815454, -0.026201,
		36.755054, 37.067833, 46.081009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117096, 36.806290, 45.538689>,  <36.350292, 36.497013, 46.099350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117096, 36.806290, 45.538689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453465, 37.017605, 45.585609>,  <36.655285, 37.144394, 45.613762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453465, 37.017605, 45.585609>,  <36.117096, 36.806290, 45.538689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453465, 37.017605, 45.585609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089433, 0.349444, -0.932679,
		-0.533717, 0.773819, 0.341102,
		0.840921, 0.528292, 0.117300,
		36.705742, 37.176094, 45.620800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961281, 37.416451, 45.180862>,  <36.117096, 36.806290, 45.538689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961281, 37.416451, 45.180862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.359932, 37.448063, 45.189762>,  <36.599121, 37.467030, 45.195103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.359932, 37.448063, 45.189762>,  <35.961281, 37.416451, 45.180862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359932, 37.448063, 45.189762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002821, 0.237907, -0.971284,
		-0.082054, 0.968068, 0.236880,
		0.996624, 0.079030, 0.022252,
		36.658920, 37.471771, 45.196438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190876, 38.106415, 44.905361>,  <35.961281, 37.416451, 45.180862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190876, 38.106415, 44.905361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495914, 37.851250, 44.862438>,  <36.678936, 37.698151, 44.836685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495914, 37.851250, 44.862438>,  <36.190876, 38.106415, 44.905361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495914, 37.851250, 44.862438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031430, 0.202233, -0.978833,
		0.646110, 0.743082, 0.174271,
		0.762597, -0.637912, -0.107309,
		36.724693, 37.659878, 44.830246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769318, 38.462189, 44.551228>,  <36.190876, 38.106415, 44.905361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769318, 38.462189, 44.551228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.910213, 38.091377, 44.499763>,  <36.994751, 37.868893, 44.468884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.910213, 38.091377, 44.499763>,  <36.769318, 38.462189, 44.551228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910213, 38.091377, 44.499763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245864, 0.224299, -0.942995,
		0.903038, 0.300526, 0.306929,
		0.352239, -0.927024, -0.128661,
		37.015884, 37.813271, 44.461166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272045, 38.512287, 44.138721>,  <36.769318, 38.462189, 44.551228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272045, 38.512287, 44.138721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219936, 38.118843, 44.088856>,  <37.188671, 37.882778, 44.058937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219936, 38.118843, 44.088856>,  <37.272045, 38.512287, 44.138721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219936, 38.118843, 44.088856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088776, 0.113658, -0.989546,
		0.987496, -0.139979, 0.072514,
		-0.130274, -0.983610, -0.124663,
		37.180855, 37.823761, 44.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699986, 38.358433, 43.576107>,  <37.272045, 38.512287, 44.138721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699986, 38.358433, 43.576107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.425022, 38.068340, 43.591648>,  <37.260044, 37.894283, 43.600971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.425022, 38.068340, 43.591648>,  <37.699986, 38.358433, 43.576107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425022, 38.068340, 43.591648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034331, -0.020984, -0.999190,
		0.725461, -0.688184, -0.010473,
		-0.687406, -0.725233, 0.038849,
		37.218800, 37.850769, 43.603302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339783, 38.485298, 43.339500>,  <37.699986, 38.358433, 43.576107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339783, 38.485298, 43.339500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453846, 38.846596, 43.211224>,  <38.522282, 39.063374, 43.134258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453846, 38.846596, 43.211224>,  <38.339783, 38.485298, 43.339500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453846, 38.846596, 43.211224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295806, 0.235320, 0.925810,
		0.911694, -0.358862, -0.200081,
		0.285155, 0.903240, -0.320693,
		38.539391, 39.117569, 43.115017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027122, 38.596790, 43.549637>,  <38.339783, 38.485298, 43.339500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027122, 38.596790, 43.549637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880764, 38.965965, 43.501793>,  <38.792950, 39.187469, 43.473087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880764, 38.965965, 43.501793>,  <39.027122, 38.596790, 43.549637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880764, 38.965965, 43.501793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384695, 0.267019, 0.883578,
		0.847426, 0.277283, -0.452751,
		-0.365894, 0.922938, -0.119609,
		38.770996, 39.242847, 43.465912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627758, 39.052006, 43.505054>,  <39.027122, 38.596790, 43.549637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627758, 39.052006, 43.505054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299740, 39.249695, 43.620476>,  <39.102928, 39.368309, 43.689728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299740, 39.249695, 43.620476>,  <39.627758, 39.052006, 43.505054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299740, 39.249695, 43.620476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462977, 0.276523, 0.842133,
		0.336411, 0.824183, -0.455577,
		-0.820049, 0.494224, 0.288552,
		39.053726, 39.397961, 43.707043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788330, 39.770863, 43.831192>,  <39.627758, 39.052006, 43.505054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788330, 39.770863, 43.831192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412971, 39.687843, 43.941704>,  <39.187756, 39.638031, 44.008011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412971, 39.687843, 43.941704>,  <39.788330, 39.770863, 43.831192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412971, 39.687843, 43.941704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183521, 0.378096, 0.907394,
		-0.292789, 0.902201, -0.316715,
		-0.938400, -0.207551, 0.276275,
		39.131451, 39.625576, 44.024586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516167, 40.370453, 44.124504>,  <39.788330, 39.770863, 43.831192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516167, 40.370453, 44.124504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272068, 40.089947, 44.271919>,  <39.125610, 39.921642, 44.360371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272068, 40.089947, 44.271919>,  <39.516167, 40.370453, 44.124504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272068, 40.089947, 44.271919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062461, 0.421167, 0.904830,
		-0.789747, 0.575187, -0.213213,
		-0.610244, -0.701269, 0.368543,
		39.088993, 39.879566, 44.382481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169880, 40.729424, 44.553211>,  <39.516167, 40.370453, 44.124504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169880, 40.729424, 44.553211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054138, 40.365936, 44.673553>,  <38.984692, 40.147846, 44.745758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054138, 40.365936, 44.673553>,  <39.169880, 40.729424, 44.553211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054138, 40.365936, 44.673553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038021, 0.303139, 0.952188,
		-0.956467, 0.286958, -0.053164,
		-0.289354, -0.908715, 0.300853,
		38.967331, 40.093323, 44.763809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666924, 40.756203, 44.999222>,  <39.169880, 40.729424, 44.553211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666924, 40.756203, 44.999222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.844479, 40.407413, 45.081818>,  <38.951012, 40.198139, 45.131374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.844479, 40.407413, 45.081818>,  <38.666924, 40.756203, 44.999222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844479, 40.407413, 45.081818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051568, 0.205192, 0.977362,
		-0.894598, -0.444485, 0.046116,
		0.443886, -0.871968, 0.206486,
		38.977646, 40.145824, 45.143764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308254, 40.586067, 45.568996>,  <38.666924, 40.756203, 44.999222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308254, 40.586067, 45.568996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.623146, 40.339405, 45.569717>,  <38.812080, 40.191410, 45.570152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.623146, 40.339405, 45.569717>,  <38.308254, 40.586067, 45.568996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623146, 40.339405, 45.569717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007483, -0.006627, 0.999950,
		-0.616610, -0.787208, -0.009831,
		0.787234, -0.616653, 0.001805,
		38.859318, 40.154408, 45.570259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215282, 40.046288, 46.100994>,  <38.308254, 40.586067, 45.568996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215282, 40.046288, 46.100994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612240, 40.044407, 46.051804>,  <38.850414, 40.043278, 46.022289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612240, 40.044407, 46.051804>,  <38.215282, 40.046288, 46.100994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612240, 40.044407, 46.051804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122846, -0.022223, 0.992177,
		-0.007394, -0.999742, -0.021476,
		0.992398, -0.004698, -0.122979,
		38.909958, 40.042995, 46.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430943, 39.486916, 46.463882>,  <38.215282, 40.046288, 46.100994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430943, 39.486916, 46.463882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722019, 39.758739, 46.426666>,  <38.896664, 39.921833, 46.404335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722019, 39.758739, 46.426666>,  <38.430943, 39.486916, 46.463882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722019, 39.758739, 46.426666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051851, 0.080755, 0.995384,
		0.683941, -0.729158, 0.023528,
		0.727692, 0.679564, -0.093040,
		38.940327, 39.962608, 46.398754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912529, 39.276794, 46.904945>,  <38.430943, 39.486916, 46.463882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912529, 39.276794, 46.904945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026047, 39.659046, 46.873379>,  <39.094158, 39.888397, 46.854439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026047, 39.659046, 46.873379>,  <38.912529, 39.276794, 46.904945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026047, 39.659046, 46.873379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286138, -0.005846, 0.958171,
		0.915196, -0.294508, -0.275102,
		0.283797, 0.955631, -0.078919,
		39.111187, 39.945736, 46.849705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342037, 39.413750, 47.492496>,  <38.912529, 39.276794, 46.904945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342037, 39.413750, 47.492496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298801, 39.802067, 47.406818>,  <39.272861, 40.035057, 47.355412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298801, 39.802067, 47.406818>,  <39.342037, 39.413750, 47.492496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298801, 39.802067, 47.406818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093813, 0.224458, 0.969957,
		0.989705, 0.084748, -0.115335,
		-0.108090, 0.970791, -0.214197,
		39.266373, 40.093304, 47.342560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729633, 39.796707, 47.969200>,  <39.342037, 39.413750, 47.492496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729633, 39.796707, 47.969200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449627, 40.055088, 47.847401>,  <39.281624, 40.210117, 47.774319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449627, 40.055088, 47.847401>,  <39.729633, 39.796707, 47.969200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449627, 40.055088, 47.847401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115822, 0.523446, 0.844150,
		0.704671, 0.555652, -0.441237,
		-0.700018, 0.645953, -0.304500,
		39.239620, 40.248875, 47.756050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069614, 40.469822, 48.149071>,  <39.729633, 39.796707, 47.969200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069614, 40.469822, 48.149071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674812, 40.512798, 48.101284>,  <39.437931, 40.538586, 48.072613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674812, 40.512798, 48.101284>,  <40.069614, 40.469822, 48.149071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674812, 40.512798, 48.101284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017666, 0.666448, 0.745343,
		0.159701, 0.737769, -0.655891,
		-0.987007, 0.107445, -0.119466,
		39.378712, 40.545033, 48.065445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.143286, 42.028305, 47.728664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423431, 41.745060, 47.764584>,  <31.591518, 41.575111, 47.786133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423431, 41.745060, 47.764584>,  <31.143286, 42.028305, 47.728664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423431, 41.745060, 47.764584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017645, -0.108588, -0.993930,
		0.713569, 0.697696, -0.063557,
		0.700363, -0.708116, 0.089796,
		31.633541, 41.532623, 47.791523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757523, 42.134094, 47.102047>,  <31.143286, 42.028305, 47.728664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757523, 42.134094, 47.102047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775421, 41.758389, 47.238148>,  <31.786160, 41.532963, 47.319809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775421, 41.758389, 47.238148>,  <31.757523, 42.134094, 47.102047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775421, 41.758389, 47.238148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106662, -0.334157, -0.936463,
		0.993288, 0.078194, 0.085232,
		0.044745, -0.939268, 0.340255,
		31.788845, 41.476608, 47.340225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352802, 41.850075, 46.774673>,  <31.757523, 42.134094, 47.102047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352802, 41.850075, 46.774673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150326, 41.527538, 46.897038>,  <32.028839, 41.334015, 46.970455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150326, 41.527538, 46.897038>,  <32.352802, 41.850075, 46.774673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150326, 41.527538, 46.897038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122780, -0.418474, -0.899891,
		0.853636, -0.417959, 0.310831,
		-0.506192, -0.806343, 0.305908,
		31.998468, 41.285637, 46.988811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712761, 41.279331, 46.596230>,  <32.352802, 41.850075, 46.774673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712761, 41.279331, 46.596230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333885, 41.157547, 46.636494>,  <32.106560, 41.084476, 46.660652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333885, 41.157547, 46.636494>,  <32.712761, 41.279331, 46.596230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333885, 41.157547, 46.636494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075790, -0.517559, -0.852284,
		0.311586, -0.799647, 0.513302,
		-0.947190, -0.304463, 0.100659,
		32.049728, 41.066208, 46.666691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743275, 40.553265, 46.327938>,  <32.712761, 41.279331, 46.596230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743275, 40.553265, 46.327938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350189, 40.627304, 46.326618>,  <32.114338, 40.671726, 46.325825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350189, 40.627304, 46.326618>,  <32.743275, 40.553265, 46.327938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350189, 40.627304, 46.326618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072465, -0.401025, -0.913197,
		-0.170356, -0.897172, 0.407506,
		-0.982714, 0.185099, -0.003303,
		32.055374, 40.682835, 46.325626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395760, 39.915993, 46.155991>,  <32.743275, 40.553265, 46.327938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395760, 39.915993, 46.155991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.160175, 40.230949, 46.083179>,  <32.018826, 40.419926, 46.039494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.160175, 40.230949, 46.083179>,  <32.395760, 39.915993, 46.155991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160175, 40.230949, 46.083179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164072, -0.337042, -0.927083,
		-0.791331, -0.516151, 0.327694,
		-0.588961, 0.787395, -0.182026,
		31.983486, 40.467167, 46.028572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878689, 39.656353, 45.811169>,  <32.395760, 39.915993, 46.155991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878689, 39.656353, 45.811169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.848143, 40.045063, 45.721886>,  <31.829815, 40.278290, 45.668316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.848143, 40.045063, 45.721886>,  <31.878689, 39.656353, 45.811169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848143, 40.045063, 45.721886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062023, -0.228059, -0.971670,
		-0.995149, -0.060359, 0.077689,
		-0.076366, 0.971774, -0.223209,
		31.825233, 40.336594, 45.654922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443058, 39.689178, 45.247894>,  <31.878689, 39.656353, 45.811169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443058, 39.689178, 45.247894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616205, 40.049610, 45.237415>,  <31.720095, 40.265869, 45.231129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616205, 40.049610, 45.237415>,  <31.443058, 39.689178, 45.247894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616205, 40.049610, 45.237415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085862, -0.070142, -0.993835,
		-0.897358, 0.427951, -0.107730,
		0.432869, 0.901076, -0.026198,
		31.746065, 40.319935, 45.229557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057035, 40.075706, 44.569523>,  <31.443058, 39.689178, 45.247894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057035, 40.075706, 44.569523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410929, 40.228127, 44.676895>,  <31.623264, 40.319576, 44.741318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410929, 40.228127, 44.676895>,  <31.057035, 40.075706, 44.569523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410929, 40.228127, 44.676895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250017, 0.098070, -0.963262,
		-0.393373, 0.919340, -0.008502,
		0.884731, 0.381047, 0.268429,
		31.676348, 40.342442, 44.757423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074604, 40.713802, 44.228729>,  <31.057035, 40.075706, 44.569523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074604, 40.713802, 44.228729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434999, 40.561634, 44.312157>,  <31.651236, 40.470333, 44.362213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434999, 40.561634, 44.312157>,  <31.074604, 40.713802, 44.228729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434999, 40.561634, 44.312157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265173, 0.102400, -0.958748,
		0.343374, 0.919126, 0.193139,
		0.900987, -0.380424, 0.208566,
		31.705296, 40.447506, 44.374725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546087, 41.176548, 43.870640>,  <31.074604, 40.713802, 44.228729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546087, 41.176548, 43.870640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.750645, 40.837761, 43.928783>,  <31.873379, 40.634491, 43.963669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.750645, 40.837761, 43.928783>,  <31.546087, 41.176548, 43.870640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750645, 40.837761, 43.928783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263464, -0.006474, -0.964647,
		0.817962, 0.531612, 0.219834,
		0.511395, -0.846963, 0.145357,
		31.904062, 40.583672, 43.972389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088177, 41.310795, 43.471889>,  <31.546087, 41.176548, 43.870640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088177, 41.310795, 43.471889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.149334, 40.918762, 43.522594>,  <32.186028, 40.683544, 43.553017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.149334, 40.918762, 43.522594>,  <32.088177, 41.310795, 43.471889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149334, 40.918762, 43.522594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061856, -0.118530, -0.991022,
		0.986305, 0.159361, 0.042502,
		0.152892, -0.980079, 0.126764,
		32.195202, 40.624737, 43.560623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624752, 41.203503, 43.030457>,  <32.088177, 41.310795, 43.471889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624752, 41.203503, 43.030457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500038, 40.834949, 43.123272>,  <32.425209, 40.613815, 43.178959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500038, 40.834949, 43.123272>,  <32.624752, 41.203503, 43.030457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500038, 40.834949, 43.123272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137890, -0.285501, -0.948407,
		0.940096, -0.263699, 0.216063,
		-0.311780, -0.921386, 0.232037,
		32.406506, 40.558533, 43.192883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206947, 40.751446, 42.751122>,  <32.624752, 41.203503, 43.030457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206947, 40.751446, 42.751122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855339, 40.562088, 42.773838>,  <32.644375, 40.448475, 42.787468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855339, 40.562088, 42.773838>,  <33.206947, 40.751446, 42.751122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855339, 40.562088, 42.773838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179370, -0.438706, -0.880547,
		0.441759, -0.763831, 0.470543,
		-0.879020, -0.473391, 0.056794,
		32.591633, 40.420071, 42.790874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961475, 40.656132, 42.805622>,  <33.206947, 40.751446, 42.751122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961475, 40.656132, 42.805622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102615, 40.970482, 42.602486>,  <34.187298, 41.159092, 42.480606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102615, 40.970482, 42.602486>,  <33.961475, 40.656132, 42.805622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102615, 40.970482, 42.602486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249681, 0.443985, 0.860544,
		0.901753, -0.430437, -0.039560,
		0.352846, 0.785876, -0.507837,
		34.208469, 41.206245, 42.450134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635162, 40.657104, 42.717960>,  <33.961475, 40.656132, 42.805622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635162, 40.657104, 42.717960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492233, 41.030445, 42.731693>,  <34.406475, 41.254448, 42.739933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492233, 41.030445, 42.731693>,  <34.635162, 40.657104, 42.717960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492233, 41.030445, 42.731693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285257, 0.074055, 0.955586,
		0.889355, 0.351242, -0.292706,
		-0.357319, 0.933351, 0.034333,
		34.385036, 41.310452, 42.741993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896076, 40.918800, 43.285172>,  <34.635162, 40.657104, 42.717960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896076, 40.918800, 43.285172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665070, 41.240112, 43.226921>,  <34.526466, 41.432899, 43.191971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665070, 41.240112, 43.226921>,  <34.896076, 40.918800, 43.285172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665070, 41.240112, 43.226921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159712, 0.286104, 0.944795,
		0.800603, 0.522378, -0.293524,
		-0.577518, 0.803284, -0.145625,
		34.491814, 41.481098, 43.183235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284424, 41.448792, 43.689983>,  <34.896076, 40.918800, 43.285172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284424, 41.448792, 43.689983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912151, 41.579559, 43.624302>,  <34.688789, 41.658020, 43.584892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912151, 41.579559, 43.624302>,  <35.284424, 41.448792, 43.689983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912151, 41.579559, 43.624302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032474, 0.373239, 0.927167,
		0.364392, 0.868227, -0.336750,
		-0.930679, 0.326916, -0.164200,
		34.632946, 41.677635, 43.575043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316391, 42.215450, 43.826252>,  <35.284424, 41.448792, 43.689983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316391, 42.215450, 43.826252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.925682, 42.129978, 43.819733>,  <34.691257, 42.078693, 43.815823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.925682, 42.129978, 43.819733>,  <35.316391, 42.215450, 43.826252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925682, 42.129978, 43.819733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148015, 0.617698, 0.772361,
		-0.154970, 0.756830, -0.634975,
		-0.976768, -0.213679, -0.016298,
		34.632652, 42.065876, 43.814842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989445, 42.745876, 43.857533>,  <35.316391, 42.215450, 43.826252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989445, 42.745876, 43.857533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734135, 42.478233, 44.009800>,  <34.580948, 42.317650, 44.101162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734135, 42.478233, 44.009800>,  <34.989445, 42.745876, 43.857533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734135, 42.478233, 44.009800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045828, 0.526645, 0.848849,
		-0.768446, 0.524352, -0.366806,
		-0.638272, -0.669104, 0.380668,
		34.542652, 42.277500, 44.124001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378979, 43.088825, 44.157757>,  <34.989445, 42.745876, 43.857533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378979, 43.088825, 44.157757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375820, 42.733086, 44.340622>,  <34.373924, 42.519642, 44.450340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375820, 42.733086, 44.340622>,  <34.378979, 43.088825, 44.157757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375820, 42.733086, 44.340622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004786, 0.457208, 0.889347,
		-0.999957, 0.004836, -0.007867,
		-0.007897, -0.889347, 0.457166,
		34.373451, 42.466282, 44.477772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834801, 43.178577, 44.660378>,  <34.378979, 43.088825, 44.157757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834801, 43.178577, 44.660378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038837, 42.853058, 44.771759>,  <34.161259, 42.657745, 44.838589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038837, 42.853058, 44.771759>,  <33.834801, 43.178577, 44.660378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038837, 42.853058, 44.771759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046443, 0.297206, 0.953683,
		-0.858868, -0.499394, 0.113806,
		0.510087, -0.813802, 0.278454,
		34.191864, 42.608917, 44.855297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489731, 42.964638, 45.156036>,  <33.834801, 43.178577, 44.660378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489731, 42.964638, 45.156036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853516, 42.807278, 45.209866>,  <34.071789, 42.712860, 45.242161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853516, 42.807278, 45.209866>,  <33.489731, 42.964638, 45.156036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853516, 42.807278, 45.209866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078389, 0.155612, 0.984703,
		-0.408325, -0.906101, 0.110685,
		0.909465, -0.393402, 0.134568,
		34.126354, 42.689259, 45.250237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420712, 42.431831, 45.714561>,  <33.489731, 42.964638, 45.156036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420712, 42.431831, 45.714561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806389, 42.537251, 45.702686>,  <34.037796, 42.600502, 45.695560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806389, 42.537251, 45.702686>,  <33.420712, 42.431831, 45.714561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806389, 42.537251, 45.702686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012219, 0.067695, 0.997631,
		0.264936, -0.962267, 0.062051,
		0.964189, 0.263550, -0.029693,
		34.095646, 42.616314, 45.693779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737061, 42.058151, 46.232803>,  <33.420712, 42.431831, 45.714561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737061, 42.058151, 46.232803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971260, 42.376656, 46.171932>,  <34.111778, 42.567760, 46.135410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971260, 42.376656, 46.171932>,  <33.737061, 42.058151, 46.232803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971260, 42.376656, 46.171932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132403, 0.091267, 0.986985,
		0.799790, -0.598024, -0.051992,
		0.585496, 0.796265, -0.152175,
		34.146908, 42.615536, 46.126278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339733, 41.964142, 46.714211>,  <33.737061, 42.058151, 46.232803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339733, 41.964142, 46.714211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302124, 42.347919, 46.607910>,  <34.279560, 42.578186, 46.544128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302124, 42.347919, 46.607910>,  <34.339733, 41.964142, 46.714211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302124, 42.347919, 46.607910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150081, 0.277541, 0.948918,
		0.984193, 0.049334, -0.170089,
		-0.094021, 0.959446, -0.265750,
		34.273918, 42.635754, 46.528187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866772, 42.277515, 47.116665>,  <34.339733, 41.964142, 46.714211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866772, 42.277515, 47.116665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643517, 42.587856, 46.998993>,  <34.509563, 42.774059, 46.928391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643517, 42.587856, 46.998993>,  <34.866772, 42.277515, 47.116665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643517, 42.587856, 46.998993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164839, 0.451150, 0.877093,
		0.813210, 0.441046, -0.379694,
		-0.558137, 0.775849, -0.294178,
		34.476074, 42.820610, 46.910740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203693, 42.743526, 47.348938>,  <34.866772, 42.277515, 47.116665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203693, 42.743526, 47.348938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841545, 42.904778, 47.295578>,  <34.624256, 43.001526, 47.263561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841545, 42.904778, 47.295578>,  <35.203693, 42.743526, 47.348938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841545, 42.904778, 47.295578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030442, 0.374972, 0.926536,
		0.423530, 0.834798, -0.351761,
		-0.905370, 0.403124, -0.133399,
		34.569935, 43.025715, 47.255558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702305, 43.195087, 46.982010>,  <35.203693, 42.743526, 47.348938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702305, 43.195087, 46.982010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100689, 43.227283, 46.966114>,  <36.339722, 43.246601, 46.956577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100689, 43.227283, 46.966114>,  <35.702305, 43.195087, 46.982010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100689, 43.227283, 46.966114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035241, -0.056564, -0.997777,
		-0.082558, 0.995149, -0.053500,
		0.995963, 0.080489, -0.039740,
		36.399479, 43.251431, 46.954193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727787, 43.615314, 46.383972>,  <35.702305, 43.195087, 46.982010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727787, 43.615314, 46.383972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079800, 43.435204, 46.444363>,  <36.291008, 43.327137, 46.480598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079800, 43.435204, 46.444363>,  <35.727787, 43.615314, 46.383972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079800, 43.435204, 46.444363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139569, -0.058656, -0.988474,
		0.453943, 0.890960, 0.011226,
		0.880032, -0.450277, 0.150977,
		36.343811, 43.300121, 46.489655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147945, 43.891026, 45.799976>,  <35.727787, 43.615314, 46.383972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147945, 43.891026, 45.799976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327114, 43.560738, 45.937122>,  <36.434616, 43.362564, 46.019409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327114, 43.560738, 45.937122>,  <36.147945, 43.891026, 45.799976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327114, 43.560738, 45.937122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334538, -0.200837, -0.920733,
		0.829124, 0.527121, 0.186273,
		0.447926, -0.825717, 0.342861,
		36.461491, 43.313023, 46.039982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834618, 43.958214, 45.562035>,  <36.147945, 43.891026, 45.799976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834618, 43.958214, 45.562035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.790550, 43.571930, 45.656063>,  <36.764111, 43.340160, 45.712482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.790550, 43.571930, 45.656063>,  <36.834618, 43.958214, 45.562035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790550, 43.571930, 45.656063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546455, -0.256410, -0.797271,
		0.830211, 0.040625, 0.555967,
		-0.110166, -0.965714, 0.235075,
		36.757500, 43.282215, 45.726585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494339, 43.578804, 45.360596>,  <36.834618, 43.958214, 45.562035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494339, 43.578804, 45.360596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233288, 43.276676, 45.384518>,  <37.076656, 43.095402, 45.398872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233288, 43.276676, 45.384518>,  <37.494339, 43.578804, 45.360596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233288, 43.276676, 45.384518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434657, -0.437875, -0.786980,
		0.620606, -0.487609, 0.614073,
		-0.652626, -0.755316, 0.059805,
		37.037498, 43.050083, 45.402458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858482, 43.007881, 45.065880>,  <37.494339, 43.578804, 45.360596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858482, 43.007881, 45.065880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465382, 42.936218, 45.047546>,  <37.229523, 42.893219, 45.036545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465382, 42.936218, 45.047546>,  <37.858482, 43.007881, 45.065880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465382, 42.936218, 45.047546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131624, -0.503563, -0.853873,
		0.129897, -0.845179, 0.518459,
		-0.982752, -0.179157, -0.045834,
		37.170555, 42.882473, 45.033794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849236, 42.416496, 44.704090>,  <37.858482, 43.007881, 45.065880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849236, 42.416496, 44.704090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.472672, 42.543575, 44.658798>,  <37.246735, 42.619823, 44.631622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.472672, 42.543575, 44.658798>,  <37.849236, 42.416496, 44.704090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472672, 42.543575, 44.658798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013706, -0.371473, -0.928343,
		-0.336990, -0.872398, 0.354062,
		-0.941408, 0.317695, -0.113226,
		37.190250, 42.638885, 44.624828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540657, 41.842655, 44.350758>,  <37.849236, 42.416496, 44.704090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540657, 41.842655, 44.350758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310871, 42.162769, 44.282017>,  <37.173000, 42.354839, 44.240772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310871, 42.162769, 44.282017>,  <37.540657, 41.842655, 44.350758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310871, 42.162769, 44.282017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197758, -0.339429, -0.919608,
		-0.794279, -0.494300, 0.353254,
		-0.574467, 0.800285, -0.171850,
		37.138531, 42.402855, 44.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093525, 41.546322, 43.990799>,  <37.540657, 41.842655, 44.350758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093525, 41.546322, 43.990799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044746, 41.933949, 43.904968>,  <37.015480, 42.166523, 43.853470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044746, 41.933949, 43.904968>,  <37.093525, 41.546322, 43.990799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044746, 41.933949, 43.904968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177815, -0.234020, -0.955833,
		-0.976479, -0.078402, 0.200852,
		-0.121943, 0.969065, -0.214574,
		37.008163, 42.224667, 43.840595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475281, 41.581238, 43.664288>,  <37.093525, 41.546322, 43.990799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475281, 41.581238, 43.664288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707455, 41.892265, 43.567551>,  <36.846760, 42.078880, 43.509510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707455, 41.892265, 43.567551>,  <36.475281, 41.581238, 43.664288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707455, 41.892265, 43.567551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129471, -0.205089, -0.970142,
		-0.803949, 0.594414, -0.018369,
		0.580433, 0.777567, -0.241840,
		36.881584, 42.125534, 43.494999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112541, 41.870335, 43.074036>,  <36.475281, 41.581238, 43.664288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112541, 41.870335, 43.074036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496582, 41.980499, 43.054619>,  <36.727005, 42.046597, 43.042969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496582, 41.980499, 43.054619>,  <36.112541, 41.870335, 43.074036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496582, 41.980499, 43.054619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063881, 0.046983, -0.996851,
		-0.272260, 0.960179, 0.062702,
		0.960101, 0.275408, -0.048545,
		36.784611, 42.063122, 43.040054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079189, 42.453625, 42.793415>,  <36.112541, 41.870335, 43.074036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079189, 42.453625, 42.793415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455128, 42.337013, 42.722198>,  <36.680691, 42.267044, 42.679470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455128, 42.337013, 42.722198>,  <36.079189, 42.453625, 42.793415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455128, 42.337013, 42.722198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095515, 0.276130, -0.956362,
		0.327972, 0.915839, 0.231675,
		0.939847, -0.291531, -0.178039,
		36.737083, 42.249554, 42.668785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213684, 42.995808, 42.342037>,  <36.079189, 42.453625, 42.793415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213684, 42.995808, 42.342037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492321, 42.710957, 42.307102>,  <36.659504, 42.540047, 42.286140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492321, 42.710957, 42.307102>,  <36.213684, 42.995808, 42.342037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492321, 42.710957, 42.307102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063125, 0.182087, -0.981254,
		0.714682, 0.678023, 0.171795,
		0.696595, -0.712129, -0.087334,
		36.701298, 42.497318, 42.280903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757256, 43.249004, 41.913418>,  <36.213684, 42.995808, 42.342037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757256, 43.249004, 41.913418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814034, 42.853188, 41.903145>,  <36.848099, 42.615696, 41.896980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814034, 42.853188, 41.903145>,  <36.757256, 43.249004, 41.913418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814034, 42.853188, 41.903145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124020, 0.043516, -0.991325,
		0.982075, 0.137527, 0.128900,
		0.141943, -0.989542, -0.025680,
		36.856617, 42.556324, 41.895439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.180305, 40.870579, 31.642427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269226, 40.718338, 31.283379>,  <30.322578, 40.626995, 31.067949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269226, 40.718338, 31.283379>,  <30.180305, 40.870579, 31.642427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269226, 40.718338, 31.283379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124018, -0.924218, 0.361166,
		-0.967059, 0.031034, -0.252655,
		0.222300, -0.380602, -0.897622,
		30.335917, 40.604156, 31.014091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714314, 40.377415, 31.387720>,  <30.180305, 40.870579, 31.642427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714314, 40.377415, 31.387720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055454, 40.305206, 31.191738>,  <30.260138, 40.261879, 31.074148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055454, 40.305206, 31.191738>,  <29.714314, 40.377415, 31.387720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055454, 40.305206, 31.191738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150149, -0.983490, 0.101004,
		-0.500101, -0.012574, -0.865876,
		0.852851, -0.180523, -0.489957,
		30.311310, 40.251049, 31.044750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601305, 39.880280, 30.924292>,  <29.714314, 40.377415, 31.387720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601305, 39.880280, 30.924292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986124, 39.878956, 31.033436>,  <30.217016, 39.878162, 31.098923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986124, 39.878956, 31.033436>,  <29.601305, 39.880280, 30.924292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986124, 39.878956, 31.033436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107488, -0.923681, 0.367777,
		0.250820, -0.383149, -0.888981,
		0.962048, -0.003309, 0.272861,
		30.274738, 39.877964, 31.115294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930006, 39.235962, 30.694260>,  <29.601305, 39.880280, 30.924292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930006, 39.235962, 30.694260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185158, 39.354370, 30.978649>,  <30.338249, 39.425415, 31.149282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185158, 39.354370, 30.978649>,  <29.930006, 39.235962, 30.694260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185158, 39.354370, 30.978649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040855, -0.908872, 0.415071,
		0.769052, -0.293812, -0.567657,
		0.637880, 0.296019, 0.710973,
		30.376522, 39.443176, 31.191940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434601, 38.679237, 30.736214>,  <29.930006, 39.235962, 30.694260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434601, 38.679237, 30.736214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.484098, 38.859371, 31.089911>,  <30.513798, 38.967453, 31.302130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.484098, 38.859371, 31.089911>,  <30.434601, 38.679237, 30.736214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484098, 38.859371, 31.089911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063396, -0.892859, 0.445851,
		0.990287, 0.000886, -0.139037,
		0.123745, 0.450335, 0.884243,
		30.521221, 38.994473, 31.355183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664700, 38.160820, 31.111834>,  <30.434601, 38.679237, 30.736214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664700, 38.160820, 31.111834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558479, 38.429558, 31.388414>,  <30.494747, 38.590801, 31.554363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558479, 38.429558, 31.388414>,  <30.664700, 38.160820, 31.111834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558479, 38.429558, 31.388414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207219, -0.740213, 0.639644,
		0.941564, 0.026577, 0.335785,
		-0.265553, 0.671847, 0.691450,
		30.478813, 38.631111, 31.595850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950397, 37.854740, 31.687000>,  <30.664700, 38.160820, 31.111834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950397, 37.854740, 31.687000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.687929, 38.119392, 31.832153>,  <30.530449, 38.278183, 31.919245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.687929, 38.119392, 31.832153>,  <30.950397, 37.854740, 31.687000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687929, 38.119392, 31.832153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177096, -0.602471, 0.778245,
		0.733539, 0.446396, 0.512496,
		-0.656169, 0.661634, 0.362881,
		30.491077, 38.317883, 31.941017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123329, 37.877724, 32.429531>,  <30.950397, 37.854740, 31.687000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123329, 37.877724, 32.429531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746243, 37.995472, 32.366760>,  <30.519991, 38.066120, 32.329098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746243, 37.995472, 32.366760>,  <31.123329, 37.877724, 32.429531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746243, 37.995472, 32.366760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308266, -0.588945, 0.747072,
		0.127495, 0.752654, 0.645954,
		-0.942718, 0.294374, -0.156930,
		30.463427, 38.083786, 32.319679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869215, 38.226658, 33.097229>,  <31.123329, 37.877724, 32.429531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869215, 38.226658, 33.097229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537909, 38.115524, 32.902588>,  <30.339125, 38.048843, 32.785801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537909, 38.115524, 32.902588>,  <30.869215, 38.226658, 33.097229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537909, 38.115524, 32.902588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392515, -0.332070, 0.857707,
		-0.399887, 0.901409, 0.165988,
		-0.828265, -0.277833, -0.486607,
		30.289429, 38.032173, 32.756607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298954, 38.464931, 33.556023>,  <30.869215, 38.226658, 33.097229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298954, 38.464931, 33.556023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107424, 38.205498, 33.319359>,  <29.992506, 38.049839, 33.177361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107424, 38.205498, 33.319359>,  <30.298954, 38.464931, 33.556023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107424, 38.205498, 33.319359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693743, -0.133466, 0.707748,
		-0.538001, 0.749350, -0.386043,
		-0.478828, -0.648584, -0.591661,
		29.963776, 38.010921, 33.141861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568363, 38.643871, 33.506981>,  <30.298954, 38.464931, 33.556023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568363, 38.643871, 33.506981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632442, 38.253166, 33.450027>,  <29.670889, 38.018742, 33.415855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632442, 38.253166, 33.450027>,  <29.568363, 38.643871, 33.506981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632442, 38.253166, 33.450027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587752, -0.210277, 0.781237,
		-0.793022, -0.041465, -0.607780,
		0.160196, -0.976762, -0.142383,
		29.680502, 37.960136, 33.407314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985167, 38.375916, 33.689342>,  <29.568363, 38.643871, 33.506981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985167, 38.375916, 33.689342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195759, 38.035889, 33.683540>,  <29.322115, 37.831875, 33.680058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195759, 38.035889, 33.683540>,  <28.985167, 38.375916, 33.689342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195759, 38.035889, 33.683540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515656, -0.332843, 0.789503,
		-0.675956, -0.408177, -0.613576,
		0.526482, -0.850063, -0.014508,
		29.353703, 37.780869, 33.679188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468945, 37.911888, 33.787167>,  <28.985167, 38.375916, 33.689342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468945, 37.911888, 33.787167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802280, 37.702477, 33.858112>,  <29.002281, 37.576828, 33.900681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802280, 37.702477, 33.858112>,  <28.468945, 37.911888, 33.787167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802280, 37.702477, 33.858112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497962, -0.571730, 0.652042,
		-0.239957, -0.631696, -0.737144,
		0.833339, -0.523532, 0.177370,
		29.052282, 37.545418, 33.911324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356743, 37.174217, 33.610779>,  <28.468945, 37.911888, 33.787167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356743, 37.174217, 33.610779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662399, 37.168247, 33.868729>,  <28.845793, 37.164665, 34.023499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662399, 37.168247, 33.868729>,  <28.356743, 37.174217, 33.610779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662399, 37.168247, 33.868729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583504, -0.442169, 0.681182,
		0.274976, -0.896807, -0.346590,
		0.764141, -0.014928, 0.644877,
		28.891642, 37.163769, 34.062191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463377, 36.425156, 33.966221>,  <28.356743, 37.174217, 33.610779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463377, 36.425156, 33.966221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654591, 36.681671, 34.206299>,  <28.769318, 36.835579, 34.350346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654591, 36.681671, 34.206299>,  <28.463377, 36.425156, 33.966221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654591, 36.681671, 34.206299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535471, -0.328888, 0.777884,
		0.696244, -0.693242, 0.186172,
		0.478032, 0.641287, 0.600197,
		28.798000, 36.874058, 34.386356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644186, 36.031246, 34.512463>,  <28.463377, 36.425156, 33.966221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644186, 36.031246, 34.512463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677639, 36.405014, 34.650951>,  <28.697712, 36.629276, 34.734043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677639, 36.405014, 34.650951>,  <28.644186, 36.031246, 34.512463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677639, 36.405014, 34.650951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555136, -0.244841, 0.794907,
		0.827544, -0.258679, 0.498253,
		0.083633, 0.934419, 0.346219,
		28.702728, 36.685341, 34.754818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853773, 35.962494, 35.191204>,  <28.644186, 36.031246, 34.512463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853773, 35.962494, 35.191204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697767, 36.330784, 35.186134>,  <28.604164, 36.551758, 35.183094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697767, 36.330784, 35.186134>,  <28.853773, 35.962494, 35.191204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697767, 36.330784, 35.186134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480653, -0.191828, 0.855672,
		0.785406, 0.339814, 0.517363,
		-0.390014, 0.920722, -0.012670,
		28.580763, 36.607002, 35.182335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814707, 36.192421, 35.892540>,  <28.853773, 35.962494, 35.191204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814707, 36.192421, 35.892540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573824, 36.461411, 35.720436>,  <28.429295, 36.622803, 35.617172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573824, 36.461411, 35.720436>,  <28.814707, 36.192421, 35.892540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573824, 36.461411, 35.720436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568361, 0.017340, 0.822597,
		0.560636, 0.739918, 0.371765,
		-0.602208, 0.672474, -0.430262,
		28.393162, 36.663151, 35.591358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852861, 36.812878, 36.274979>,  <28.814707, 36.192421, 35.892540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852861, 36.812878, 36.274979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.500738, 36.806915, 36.085308>,  <28.289465, 36.803337, 35.971508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.500738, 36.806915, 36.085308>,  <28.852861, 36.812878, 36.274979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500738, 36.806915, 36.085308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469914, 0.164624, 0.867226,
		0.065133, 0.986244, -0.151924,
		-0.880306, -0.014906, -0.474172,
		28.236647, 36.802444, 35.943058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402020, 37.480644, 36.371712>,  <28.852861, 36.812878, 36.274979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402020, 37.480644, 36.371712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.190332, 37.141388, 36.362064>,  <28.063320, 36.937836, 36.356277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.190332, 37.141388, 36.362064>,  <28.402020, 37.480644, 36.371712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190332, 37.141388, 36.362064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372778, 0.206880, 0.904565,
		-0.762210, 0.487704, -0.425654,
		-0.529219, -0.848142, -0.024119,
		28.031567, 36.886944, 36.354828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620089, 38.128002, 35.965855>,  <28.402020, 37.480644, 36.371712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620089, 38.128002, 35.965855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.913813, 38.336884, 35.792377>,  <29.090048, 38.462212, 35.688290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.913813, 38.336884, 35.792377>,  <28.620089, 38.128002, 35.965855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913813, 38.336884, 35.792377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661850, 0.408847, -0.628330,
		-0.150805, 0.748428, 0.645843,
		0.734311, 0.522206, -0.433691,
		29.134106, 38.493546, 35.662270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461811, 38.809090, 35.861885>,  <28.620089, 38.128002, 35.965855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461811, 38.809090, 35.861885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732183, 38.769081, 35.569828>,  <28.894407, 38.745075, 35.394592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732183, 38.769081, 35.569828>,  <28.461811, 38.809090, 35.861885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732183, 38.769081, 35.569828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654764, 0.373204, -0.657269,
		0.338232, 0.922342, 0.186771,
		0.675931, -0.100019, -0.730146,
		28.934963, 38.739075, 35.350784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381456, 39.462849, 35.390316>,  <28.461811, 38.809090, 35.861885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381456, 39.462849, 35.390316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565346, 39.168747, 35.191093>,  <28.675680, 38.992287, 35.071560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565346, 39.168747, 35.191093>,  <28.381456, 39.462849, 35.390316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565346, 39.168747, 35.191093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449857, 0.290748, -0.844449,
		0.765692, 0.612266, -0.197095,
		0.459723, -0.735252, -0.498055,
		28.703262, 38.948170, 35.041676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652676, 39.692101, 34.770111>,  <28.381456, 39.462849, 35.390316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652676, 39.692101, 34.770111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638832, 39.300659, 34.688976>,  <28.630526, 39.065796, 34.640293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638832, 39.300659, 34.688976>,  <28.652676, 39.692101, 34.770111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638832, 39.300659, 34.688976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374271, 0.200884, -0.905299,
		0.926673, 0.044585, -0.373214,
		-0.034610, -0.978600, -0.202841,
		28.628448, 39.007080, 34.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071217, 39.457939, 34.223625>,  <28.652676, 39.692101, 34.770111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071217, 39.457939, 34.223625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730726, 39.248650, 34.239880>,  <28.526432, 39.123077, 34.249634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730726, 39.248650, 34.239880>,  <29.071217, 39.457939, 34.223625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730726, 39.248650, 34.239880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315982, 0.449161, -0.835709,
		0.419008, -0.724220, -0.547666,
		-0.851228, -0.523221, 0.040638,
		28.475359, 39.091682, 34.252071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840929, 39.598087, 33.627541>,  <29.071217, 39.457939, 34.223625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840929, 39.598087, 33.627541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525305, 39.380142, 33.741039>,  <28.335930, 39.249374, 33.809139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525305, 39.380142, 33.741039>,  <28.840929, 39.598087, 33.627541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525305, 39.380142, 33.741039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511850, 0.327712, -0.794112,
		0.339708, -0.771827, -0.537477,
		-0.789055, -0.544874, 0.283733,
		28.288588, 39.216682, 33.826160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724176, 39.173405, 33.121067>,  <28.840929, 39.598087, 33.627541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724176, 39.173405, 33.121067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375751, 39.156651, 33.316818>,  <28.166697, 39.146599, 33.434269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375751, 39.156651, 33.316818>,  <28.724176, 39.173405, 33.121067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375751, 39.156651, 33.316818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468444, 0.370403, -0.802098,
		-0.147669, -0.927926, -0.342266,
		-0.871064, -0.041888, 0.489379,
		28.114431, 39.144085, 33.463631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252596, 39.058674, 32.619652>,  <28.724176, 39.173405, 33.121067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252596, 39.058674, 32.619652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032656, 39.207718, 32.918671>,  <27.900692, 39.297146, 33.098080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032656, 39.207718, 32.918671>,  <28.252596, 39.058674, 32.619652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032656, 39.207718, 32.918671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504111, 0.565560, -0.652697,
		-0.665985, -0.735732, -0.123136,
		-0.549851, 0.372612, 0.747546,
		27.867701, 39.319500, 33.142933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677605, 39.157433, 32.255272>,  <28.252596, 39.058674, 32.619652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677605, 39.157433, 32.255272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629242, 39.371487, 32.589699>,  <27.600225, 39.499920, 32.790356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629242, 39.371487, 32.589699>,  <27.677605, 39.157433, 32.255272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629242, 39.371487, 32.589699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516802, 0.685170, -0.513282,
		-0.847525, -0.494142, 0.193716,
		-0.120905, 0.535132, 0.836072,
		27.592970, 39.532024, 32.840519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931828, 39.345970, 32.345978>,  <27.677605, 39.157433, 32.255272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931828, 39.345970, 32.345978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129213, 39.626541, 32.551693>,  <27.247644, 39.794884, 32.675121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129213, 39.626541, 32.551693>,  <26.931828, 39.345970, 32.345978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129213, 39.626541, 32.551693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509545, 0.712341, -0.482633,
		-0.704881, -0.023891, 0.708924,
		0.493465, 0.701427, 0.514289,
		27.277252, 39.836967, 32.705978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459351, 39.767963, 32.622379>,  <26.931828, 39.345970, 32.345978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459351, 39.767963, 32.622379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791430, 39.990921, 32.618572>,  <26.990677, 40.124695, 32.616287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791430, 39.990921, 32.618572>,  <26.459351, 39.767963, 32.622379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791430, 39.990921, 32.618572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519669, 0.767606, -0.375133,
		-0.201791, 0.316379, 0.926922,
		0.830196, 0.557391, -0.009516,
		27.040487, 40.158138, 32.615719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169388, 40.387558, 32.845215>,  <26.459351, 39.767963, 32.622379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169388, 40.387558, 32.845215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514904, 40.438473, 32.650211>,  <26.722214, 40.469021, 32.533211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.514904, 40.438473, 32.650211>,  <26.169388, 40.387558, 32.845215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514904, 40.438473, 32.650211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349368, 0.848491, -0.397498,
		0.363051, 0.513675, 0.777388,
		0.863792, 0.127283, -0.487507,
		26.774042, 40.476658, 32.503960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342695, 41.182724, 32.846363>,  <26.169388, 40.387558, 32.845215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342695, 41.182724, 32.846363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589867, 41.057869, 32.557716>,  <26.738169, 40.982956, 32.384529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589867, 41.057869, 32.557716>,  <26.342695, 41.182724, 32.846363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589867, 41.057869, 32.557716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157855, 0.849872, -0.502791,
		0.770226, 0.424599, 0.475886,
		0.617927, -0.312142, -0.721619,
		26.775246, 40.964226, 32.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907831, 41.678566, 32.698372>,  <26.342695, 41.182724, 32.846363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907831, 41.678566, 32.698372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823938, 41.454155, 32.378056>,  <26.773602, 41.319508, 32.185867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823938, 41.454155, 32.378056>,  <26.907831, 41.678566, 32.698372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823938, 41.454155, 32.378056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017572, 0.816709, -0.576781,
		0.977601, -0.135041, -0.161432,
		-0.209733, -0.561025, -0.800789,
		26.761019, 41.285847, 32.137817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157366, 42.051418, 32.228355>,  <26.907831, 41.678566, 32.698372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157366, 42.051418, 32.228355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.947905, 41.809021, 31.988838>,  <26.822227, 41.663582, 31.845127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.947905, 41.809021, 31.988838>,  <27.157366, 42.051418, 32.228355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947905, 41.809021, 31.988838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169020, 0.762797, -0.624158,
		0.834998, -0.225632, -0.501865,
		-0.523651, -0.605996, -0.598797,
		26.790810, 41.627224, 31.809198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338688, 42.193371, 31.593931>,  <27.157366, 42.051418, 32.228355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338688, 42.193371, 31.593931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015568, 41.972775, 31.510681>,  <26.821695, 41.840416, 31.460732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015568, 41.972775, 31.510681>,  <27.338688, 42.193371, 31.593931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015568, 41.972775, 31.510681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226775, 0.616662, -0.753857,
		0.544088, -0.561769, -0.623204,
		-0.807800, -0.551492, -0.208123,
		26.773228, 41.807327, 31.448244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422068, 42.075069, 30.888981>,  <27.338688, 42.193371, 31.593931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422068, 42.075069, 30.888981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035082, 41.992371, 30.947319>,  <26.802891, 41.942753, 30.982323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035082, 41.992371, 30.947319>,  <27.422068, 42.075069, 30.888981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035082, 41.992371, 30.947319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231951, 0.494487, -0.837664,
		0.101063, -0.844239, -0.526353,
		-0.967463, -0.206745, 0.145847,
		26.744843, 41.930347, 30.991074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208235, 41.809647, 30.303007>,  <27.422068, 42.075069, 30.888981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208235, 41.809647, 30.303007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882538, 41.935040, 30.498449>,  <26.687119, 42.010277, 30.615715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882538, 41.935040, 30.498449>,  <27.208235, 41.809647, 30.303007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882538, 41.935040, 30.498449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199137, 0.639771, -0.742319,
		-0.545299, -0.701728, -0.458504,
		-0.814244, 0.313481, 0.488607,
		26.638266, 42.029083, 30.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649891, 41.653538, 29.822342>,  <27.208235, 41.809647, 30.303007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649891, 41.653538, 29.822342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549225, 41.934265, 30.088909>,  <26.488825, 42.102703, 30.248850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549225, 41.934265, 30.088909>,  <26.649891, 41.653538, 29.822342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549225, 41.934265, 30.088909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236957, 0.622943, -0.745515,
		-0.938358, -0.345533, 0.009528,
		-0.251665, 0.701818, 0.666420,
		26.473724, 42.144810, 30.288836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044577, 41.953335, 29.444527>,  <26.649891, 41.653538, 29.822342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044577, 41.953335, 29.444527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144728, 42.219223, 29.726084>,  <26.204819, 42.378754, 29.895018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144728, 42.219223, 29.726084>,  <26.044577, 41.953335, 29.444527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144728, 42.219223, 29.726084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210064, 0.747027, -0.630733,
		-0.945084, 0.010059, 0.326672,
		0.250377, 0.664718, 0.703891,
		26.219841, 42.418640, 29.937250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450787, 42.379410, 29.686308>,  <26.044577, 41.953335, 29.444527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450787, 42.379410, 29.686308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797731, 42.568695, 29.747953>,  <26.005898, 42.682266, 29.784941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797731, 42.568695, 29.747953>,  <25.450787, 42.379410, 29.686308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797731, 42.568695, 29.747953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313465, 0.759979, -0.569360,
		-0.386553, 0.445532, 0.807513,
		0.867362, 0.473215, 0.154114,
		26.057940, 42.710659, 29.794188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183031, 42.928150, 30.025375>,  <25.450787, 42.379410, 29.686308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183031, 42.928150, 30.025375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.534523, 43.019161, 29.857536>,  <25.745419, 43.073769, 29.756832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.534523, 43.019161, 29.857536>,  <25.183031, 42.928150, 30.025375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534523, 43.019161, 29.857536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361704, 0.891018, -0.274330,
		0.311453, 0.392833, 0.865263,
		0.878730, 0.227528, -0.419600,
		25.798141, 43.087421, 29.731657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.906044, 41.162773, 48.253223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557873, 40.982841, 48.333237>,  <39.348969, 40.874882, 48.381245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557873, 40.982841, 48.333237>,  <39.906044, 41.162773, 48.253223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557873, 40.982841, 48.333237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018831, 0.436458, 0.899528,
		-0.491937, 0.779206, -0.388375,
		-0.870427, -0.449825, 0.200036,
		39.296745, 40.847893, 48.393250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508671, 41.690693, 48.591900>,  <39.906044, 41.162773, 48.253223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508671, 41.690693, 48.591900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282631, 41.377872, 48.697014>,  <39.147007, 41.190182, 48.760082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282631, 41.377872, 48.697014>,  <39.508671, 41.690693, 48.591900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282631, 41.377872, 48.697014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062628, 0.358261, 0.931519,
		-0.822640, 0.509946, -0.251432,
		-0.565103, -0.782051, 0.262783,
		39.113102, 41.143257, 48.775848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853149, 41.991627, 48.824718>,  <39.508671, 41.690693, 48.591900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853149, 41.991627, 48.824718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888996, 41.624355, 48.979076>,  <38.910503, 41.403992, 49.071690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888996, 41.624355, 48.979076>,  <38.853149, 41.991627, 48.824718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888996, 41.624355, 48.979076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206649, 0.361878, 0.909033,
		-0.974302, -0.161208, -0.157311,
		0.089616, -0.918181, 0.385892,
		38.915882, 41.348900, 49.094845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346409, 41.992989, 49.411190>,  <38.853149, 41.991627, 48.824718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346409, 41.992989, 49.411190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583847, 41.677456, 49.474922>,  <38.726311, 41.488136, 49.513161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583847, 41.677456, 49.474922>,  <38.346409, 41.992989, 49.411190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583847, 41.677456, 49.474922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055196, 0.157609, 0.985958,
		-0.802870, -0.594053, 0.050015,
		0.593594, -0.788835, 0.159328,
		38.761925, 41.440804, 49.522720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884426, 41.510765, 49.725254>,  <38.346409, 41.992989, 49.411190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884426, 41.510765, 49.725254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267513, 41.476841, 49.835217>,  <38.497368, 41.456486, 49.901196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267513, 41.476841, 49.835217>,  <37.884426, 41.510765, 49.725254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267513, 41.476841, 49.835217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247349, 0.245244, 0.937376,
		-0.146923, -0.965744, 0.213897,
		0.957722, -0.084815, 0.274908,
		38.554829, 41.451397, 49.917690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912544, 41.033337, 50.324043>,  <37.884426, 41.510765, 49.725254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912544, 41.033337, 50.324043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.251060, 41.243744, 50.357742>,  <38.454170, 41.369987, 50.377964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.251060, 41.243744, 50.357742>,  <37.912544, 41.033337, 50.324043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251060, 41.243744, 50.357742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190753, 0.151555, 0.969868,
		0.497401, -0.836860, 0.228600,
		0.846289, 0.526020, 0.084250,
		38.504948, 41.401550, 50.383018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156242, 40.909729, 50.986614>,  <37.912544, 41.033337, 50.324043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156242, 40.909729, 50.986614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364456, 41.234375, 50.880543>,  <38.489384, 41.429165, 50.816898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364456, 41.234375, 50.880543>,  <38.156242, 40.909729, 50.986614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364456, 41.234375, 50.880543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017681, 0.320750, 0.946999,
		0.853659, -0.488256, 0.181312,
		0.520533, 0.811619, -0.265179,
		38.520615, 41.477859, 50.800991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540771, 41.038288, 51.479282>,  <38.156242, 40.909729, 50.986614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540771, 41.038288, 51.479282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529953, 41.401810, 51.312748>,  <38.523460, 41.619923, 51.212826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529953, 41.401810, 51.312748>,  <38.540771, 41.038288, 51.479282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529953, 41.401810, 51.312748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028888, 0.415607, 0.909086,
		0.999217, 0.036616, 0.015012,
		-0.027049, 0.908807, -0.416339,
		38.521839, 41.674454, 51.187847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011292, 41.362007, 51.874187>,  <38.540771, 41.038288, 51.479282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011292, 41.362007, 51.874187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794243, 41.645279, 51.693508>,  <38.664013, 41.815243, 51.585098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794243, 41.645279, 51.693508>,  <39.011292, 41.362007, 51.874187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794243, 41.645279, 51.693508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038450, 0.558135, 0.828859,
		0.839095, 0.432391, -0.330087,
		-0.542624, 0.708183, -0.451703,
		38.631454, 41.857735, 51.557999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263969, 42.012074, 52.189388>,  <39.011292, 41.362007, 51.874187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263969, 42.012074, 52.189388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907597, 42.116520, 52.040768>,  <38.693771, 42.179188, 51.951595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907597, 42.116520, 52.040768>,  <39.263969, 42.012074, 52.189388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907597, 42.116520, 52.040768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197030, 0.514889, 0.834307,
		0.409163, 0.816520, -0.407284,
		-0.890935, 0.261120, -0.371552,
		38.640316, 42.194855, 51.929302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202435, 42.660099, 52.443878>,  <39.263969, 42.012074, 52.189388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202435, 42.660099, 52.443878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837135, 42.551014, 52.322807>,  <38.617958, 42.485565, 52.250164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837135, 42.551014, 52.322807>,  <39.202435, 42.660099, 52.443878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837135, 42.551014, 52.322807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406268, 0.554031, 0.726634,
		-0.030468, 0.786562, -0.616759,
		-0.913246, -0.272709, -0.302675,
		38.563160, 42.469200, 52.232006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916794, 43.261566, 52.203472>,  <39.202435, 42.660099, 52.443878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916794, 43.261566, 52.203472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614052, 43.013821, 52.286957>,  <38.432407, 42.865173, 52.337048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614052, 43.013821, 52.286957>,  <38.916794, 43.261566, 52.203472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614052, 43.013821, 52.286957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438401, 0.717934, 0.540718,
		-0.484737, 0.317749, -0.814902,
		-0.756858, -0.619360, 0.208708,
		38.386993, 42.828014, 52.349567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280361, 43.639824, 52.205173>,  <38.916794, 43.261566, 52.203472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280361, 43.639824, 52.205173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257881, 43.338070, 52.466782>,  <38.244392, 43.157017, 52.623749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257881, 43.338070, 52.466782>,  <38.280361, 43.639824, 52.205173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257881, 43.338070, 52.466782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487297, 0.592463, 0.641506,
		-0.871426, -0.282649, -0.400906,
		-0.056201, -0.754385, 0.654022,
		38.241020, 43.111755, 52.662987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609653, 43.686340, 52.490379>,  <38.280361, 43.639824, 52.205173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609653, 43.686340, 52.490379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.809441, 43.463963, 52.756149>,  <37.929314, 43.330536, 52.915611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.809441, 43.463963, 52.756149>,  <37.609653, 43.686340, 52.490379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809441, 43.463963, 52.756149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466678, 0.473493, 0.747005,
		-0.729894, -0.683175, -0.022954,
		0.499466, -0.555946, 0.664423,
		37.959282, 43.297180, 52.955475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155025, 44.235245, 52.744892>,  <37.609653, 43.686340, 52.490379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155025, 44.235245, 52.744892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877094, 44.497612, 52.626926>,  <36.710335, 44.655033, 52.556145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877094, 44.497612, 52.626926>,  <37.155025, 44.235245, 52.744892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877094, 44.497612, 52.626926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145101, -0.273783, -0.950783,
		-0.704384, -0.703426, 0.095058,
		-0.694831, 0.655923, -0.294916,
		36.668644, 44.694389, 52.538452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825176, 43.807056, 52.358574>,  <37.155025, 44.235245, 52.744892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825176, 43.807056, 52.358574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687897, 44.158089, 52.224667>,  <36.605530, 44.368706, 52.144321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687897, 44.158089, 52.224667>,  <36.825176, 43.807056, 52.358574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687897, 44.158089, 52.224667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000706, -0.356175, -0.934419,
		-0.939261, -0.320932, 0.121621,
		-0.343203, 0.877577, -0.334768,
		36.584934, 44.421360, 52.124237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235115, 43.694427, 51.910030>,  <36.825176, 43.807056, 52.358574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235115, 43.694427, 51.910030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396065, 44.042580, 51.796524>,  <36.492634, 44.251472, 51.728420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396065, 44.042580, 51.796524>,  <36.235115, 43.694427, 51.910030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396065, 44.042580, 51.796524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004110, -0.311682, -0.950178,
		-0.915466, 0.381162, -0.128991,
		0.402375, 0.870385, -0.283767,
		36.516777, 44.303696, 51.711395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860985, 43.826271, 51.275005>,  <36.235115, 43.694427, 51.910030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860985, 43.826271, 51.275005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186783, 44.058170, 51.266163>,  <36.382263, 44.197311, 51.260857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186783, 44.058170, 51.266163>,  <35.860985, 43.826271, 51.275005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186783, 44.058170, 51.266163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002291, -0.034881, -0.999389,
		-0.580165, 0.814048, -0.027082,
		0.814495, 0.579749, -0.022102,
		36.431133, 44.232094, 51.259533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827137, 44.220016, 50.695625>,  <35.860985, 43.826271, 51.275005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827137, 44.220016, 50.695625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.217388, 44.287159, 50.752167>,  <36.451538, 44.327442, 50.786091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.217388, 44.287159, 50.752167>,  <35.827137, 44.220016, 50.695625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217388, 44.287159, 50.752167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142332, 0.006227, -0.989799,
		-0.167020, 0.985793, -0.017816,
		0.975626, 0.167852, 0.141350,
		36.510075, 44.337513, 50.794571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049408, 44.692337, 50.178837>,  <35.827137, 44.220016, 50.695625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049408, 44.692337, 50.178837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380775, 44.504597, 50.301102>,  <36.579597, 44.391953, 50.374462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380775, 44.504597, 50.301102>,  <36.049408, 44.692337, 50.178837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380775, 44.504597, 50.301102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346628, 0.000935, -0.938002,
		0.439970, 0.883009, 0.163467,
		0.828417, -0.469355, 0.305664,
		36.629299, 44.363789, 50.392799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643631, 44.981457, 49.855679>,  <36.049408, 44.692337, 50.178837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643631, 44.981457, 49.855679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781258, 44.617416, 49.948051>,  <36.863834, 44.398991, 50.003475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781258, 44.617416, 49.948051>,  <36.643631, 44.981457, 49.855679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781258, 44.617416, 49.948051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228688, -0.157314, -0.960705,
		0.910671, 0.383356, 0.154004,
		0.344065, -0.910105, 0.230930,
		36.884476, 44.344383, 50.017330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315418, 44.872379, 49.516808>,  <36.643631, 44.981457, 49.855679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315418, 44.872379, 49.516808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182236, 44.506542, 49.608597>,  <37.102325, 44.287041, 49.663673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182236, 44.506542, 49.608597>,  <37.315418, 44.872379, 49.516808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182236, 44.506542, 49.608597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092930, -0.274006, -0.957227,
		0.938352, -0.297389, 0.176225,
		-0.332956, -0.914593, 0.229478,
		37.082348, 44.232162, 49.677441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755234, 44.382442, 49.152191>,  <37.315418, 44.872379, 49.516808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755234, 44.382442, 49.152191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415726, 44.182453, 49.221027>,  <37.212021, 44.062458, 49.262329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415726, 44.182453, 49.221027>,  <37.755234, 44.382442, 49.152191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415726, 44.182453, 49.221027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004158, -0.319136, -0.947700,
		0.528746, -0.805095, 0.268794,
		-0.848770, -0.499975, 0.172090,
		37.161095, 44.032459, 49.272655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796268, 43.884571, 48.687309>,  <37.755234, 44.382442, 49.152191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796268, 43.884571, 48.687309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406796, 43.853352, 48.772968>,  <37.173111, 43.834621, 48.824364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406796, 43.853352, 48.772968>,  <37.796268, 43.884571, 48.687309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406796, 43.853352, 48.772968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166424, -0.398520, -0.901934,
		0.155736, -0.913833, 0.375041,
		-0.973678, -0.078048, 0.214147,
		37.114693, 43.829937, 48.837212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633335, 43.246895, 48.492985>,  <37.796268, 43.884571, 48.687309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633335, 43.246895, 48.492985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294292, 43.459126, 48.490063>,  <37.090866, 43.586464, 48.488308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294292, 43.459126, 48.490063>,  <37.633335, 43.246895, 48.492985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294292, 43.459126, 48.490063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218328, -0.361269, -0.906541,
		-0.483626, -0.766797, 0.422054,
		-0.847608, 0.530573, -0.007306,
		37.040009, 43.618298, 48.487869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324326, 42.693737, 48.182446>,  <37.633335, 43.246895, 48.492985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324326, 42.693737, 48.182446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121780, 43.033318, 48.121944>,  <37.000252, 43.237064, 48.085644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121780, 43.033318, 48.121944>,  <37.324326, 42.693737, 48.182446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121780, 43.033318, 48.121944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318648, -0.347200, -0.881995,
		-0.801286, -0.398414, 0.446326,
		-0.506364, 0.848951, -0.151252,
		36.969872, 43.288002, 48.076569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660397, 42.497513, 47.933327>,  <37.324326, 42.693737, 48.182446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660397, 42.497513, 47.933327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697205, 42.885208, 47.842018>,  <36.719288, 43.117825, 47.787235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697205, 42.885208, 47.842018>,  <36.660397, 42.497513, 47.933327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697205, 42.885208, 47.842018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393342, -0.175218, -0.902541,
		-0.914776, 0.172837, 0.365119,
		0.092017, 0.969240, -0.228269,
		36.724808, 43.175980, 47.773537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958324, 42.836021, 47.720806>,  <36.660397, 42.497513, 47.933327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958324, 42.836021, 47.720806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245712, 43.057949, 47.553005>,  <36.418144, 43.191105, 47.452324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245712, 43.057949, 47.553005>,  <35.958324, 42.836021, 47.720806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245712, 43.057949, 47.553005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343530, -0.241374, -0.907593,
		-0.604803, 0.796190, 0.017176,
		0.718471, 0.554815, -0.419499,
		36.461254, 43.224392, 47.427155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251816, 43.312458, 47.824409>,  <35.958324, 42.836021, 47.720806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251816, 43.312458, 47.824409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864952, 43.296246, 47.724045>,  <34.632835, 43.286518, 47.663826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864952, 43.296246, 47.724045>,  <35.251816, 43.312458, 47.824409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864952, 43.296246, 47.724045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248869, 0.351564, 0.902478,
		0.051633, 0.935286, -0.350106,
		-0.967160, -0.040533, -0.250916,
		34.574802, 43.284084, 47.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963947, 43.920162, 48.052856>,  <35.251816, 43.312458, 47.824409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963947, 43.920162, 48.052856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670090, 43.649075, 48.040218>,  <34.493774, 43.486423, 48.032635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670090, 43.649075, 48.040218>,  <34.963947, 43.920162, 48.052856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670090, 43.649075, 48.040218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161338, 0.129281, 0.978395,
		-0.658990, 0.723869, -0.204317,
		-0.734644, -0.677716, -0.031593,
		34.449696, 43.445759, 48.030739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417850, 44.208561, 48.386745>,  <34.963947, 43.920162, 48.052856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417850, 44.208561, 48.386745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354630, 43.814541, 48.414169>,  <34.316696, 43.578129, 48.430622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354630, 43.814541, 48.414169>,  <34.417850, 44.208561, 48.386745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354630, 43.814541, 48.414169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237401, 0.105301, 0.965687,
		-0.958468, 0.136354, -0.250495,
		-0.158053, -0.985048, 0.068557,
		34.307213, 43.519028, 48.434738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823067, 44.259884, 48.673473>,  <34.417850, 44.208561, 48.386745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823067, 44.259884, 48.673473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985451, 43.900555, 48.740654>,  <34.082882, 43.684956, 48.780964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985451, 43.900555, 48.740654>,  <33.823067, 44.259884, 48.673473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985451, 43.900555, 48.740654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398768, -0.008760, 0.917010,
		-0.822303, -0.439240, -0.361780,
		0.405957, -0.898327, 0.167952,
		34.107239, 43.631058, 48.791039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311356, 43.800491, 48.929348>,  <33.823067, 44.259884, 48.673473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311356, 43.800491, 48.929348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670811, 43.663963, 49.039581>,  <33.886486, 43.582047, 49.105721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670811, 43.663963, 49.039581>,  <33.311356, 43.800491, 48.929348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670811, 43.663963, 49.039581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293989, -0.002314, 0.955806,
		-0.325599, -0.939944, -0.102424,
		0.898641, -0.341321, 0.275579,
		33.940403, 43.561569, 49.122253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145615, 43.287144, 49.445892>,  <33.311356, 43.800491, 48.929348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145615, 43.287144, 49.445892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537254, 43.343773, 49.504288>,  <33.772240, 43.377750, 49.539326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537254, 43.343773, 49.504288>,  <33.145615, 43.287144, 49.445892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537254, 43.343773, 49.504288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146749, -0.005132, 0.989160,
		0.140793, -0.989914, 0.015752,
		0.979103, 0.141578, 0.145991,
		33.830986, 43.386246, 49.548084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215694, 42.959713, 50.059059>,  <33.145615, 43.287144, 49.445892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215694, 42.959713, 50.059059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561134, 43.161385, 50.059917>,  <33.768398, 43.282387, 50.060432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561134, 43.161385, 50.059917>,  <33.215694, 42.959713, 50.059059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561134, 43.161385, 50.059917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007892, 0.009256, 0.999926,
		0.504123, -0.863549, 0.011972,
		0.863596, 0.504180, 0.002150,
		33.820213, 43.312637, 50.060562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209137, 42.235470, 50.134918>,  <33.215694, 42.959713, 50.059059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209137, 42.235470, 50.134918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843311, 42.140079, 50.265579>,  <32.623817, 42.082844, 50.343975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843311, 42.140079, 50.265579>,  <33.209137, 42.235470, 50.134918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843311, 42.140079, 50.265579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262136, -0.265535, -0.927780,
		0.307992, -0.934142, 0.180335,
		-0.914563, -0.238476, 0.326655,
		32.568943, 42.068539, 50.363575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003208, 41.550541, 49.867138>,  <33.209137, 42.235470, 50.134918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003208, 41.550541, 49.867138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644604, 41.670044, 49.997986>,  <32.429440, 41.741745, 50.076496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644604, 41.670044, 49.997986>,  <33.003208, 41.550541, 49.867138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644604, 41.670044, 49.997986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422090, -0.351760, -0.835527,
		-0.134548, -0.887136, 0.441459,
		-0.896514, 0.298753, 0.327123,
		32.375648, 41.759670, 50.096123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604469, 40.952293, 49.849396>,  <33.003208, 41.550541, 49.867138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604469, 40.952293, 49.849396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365608, 41.271599, 49.817951>,  <32.222290, 41.463181, 49.799084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365608, 41.271599, 49.817951>,  <32.604469, 40.952293, 49.849396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365608, 41.271599, 49.817951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382976, -0.369848, -0.846488,
		-0.704795, -0.475379, 0.526573,
		-0.597155, 0.798265, -0.078608,
		32.186462, 41.511078, 49.794369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927305, 40.675373, 49.708309>,  <32.604469, 40.952293, 49.849396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927305, 40.675373, 49.708309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935989, 41.048019, 49.563187>,  <31.941200, 41.271606, 49.476112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935989, 41.048019, 49.563187>,  <31.927305, 40.675373, 49.708309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935989, 41.048019, 49.563187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293259, -0.340993, -0.893153,
		-0.955786, 0.125787, 0.265800,
		0.021711, 0.931612, -0.362804,
		31.942503, 41.327503, 49.454346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351570, 40.721451, 49.230011>,  <31.927305, 40.675373, 49.708309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351570, 40.721451, 49.230011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573679, 41.037910, 49.127434>,  <31.706944, 41.227787, 49.065887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573679, 41.037910, 49.127434>,  <31.351570, 40.721451, 49.230011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573679, 41.037910, 49.127434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230465, -0.149893, -0.961467,
		-0.799098, 0.592977, 0.099099,
		0.555273, 0.791145, -0.256440,
		31.740261, 41.275253, 49.050503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076996, 40.933170, 48.586113>,  <31.351570, 40.721451, 49.230011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076996, 40.933170, 48.586113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395161, 41.175529, 48.591785>,  <31.586060, 41.320946, 48.595188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395161, 41.175529, 48.591785>,  <31.076996, 40.933170, 48.586113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395161, 41.175529, 48.591785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020019, -0.002880, -0.999796,
		-0.605736, 0.795535, -0.014420,
		0.795414, 0.605901, 0.014181,
		31.633785, 41.357300, 48.596039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873703, 41.511303, 48.241005>,  <31.076996, 40.933170, 48.586113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873703, 41.511303, 48.241005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.270079, 41.463398, 48.216671>,  <31.507904, 41.434654, 48.202068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.270079, 41.463398, 48.216671>,  <30.873703, 41.511303, 48.241005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270079, 41.463398, 48.216671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066449, -0.043424, -0.996844,
		0.116738, 0.991853, -0.050988,
		0.990937, -0.119758, -0.060838,
		31.567360, 41.427471, 48.198418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.822727, 40.395187, 52.691982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179947, 40.575127, 52.695843>,  <36.394279, 40.683090, 52.698158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179947, 40.575127, 52.695843>,  <35.822727, 40.395187, 52.691982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179947, 40.575127, 52.695843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161795, -0.301034, -0.939788,
		-0.419857, 0.840841, -0.341622,
		0.893052, 0.449849, 0.009652,
		36.447861, 40.710083, 52.698738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946423, 40.744606, 52.046112>,  <35.822727, 40.395187, 52.691982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946423, 40.744606, 52.046112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.312363, 40.662041, 52.184929>,  <36.531929, 40.612499, 52.268219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.312363, 40.662041, 52.184929>,  <35.946423, 40.744606, 52.046112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312363, 40.662041, 52.184929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242012, -0.407687, -0.880467,
		0.323228, 0.889485, -0.323018,
		0.914852, -0.206417, 0.347042,
		36.586819, 40.600117, 52.289040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399529, 41.065033, 51.671619>,  <35.946423, 40.744606, 52.046112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399529, 41.065033, 51.671619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611275, 40.763573, 51.827454>,  <36.738323, 40.582695, 51.920956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611275, 40.763573, 51.827454>,  <36.399529, 41.065033, 51.671619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611275, 40.763573, 51.827454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254304, -0.297133, -0.920348,
		0.809381, 0.586278, 0.034363,
		0.529369, -0.753651, 0.389587,
		36.770084, 40.537476, 51.944328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805466, 40.868359, 51.076252>,  <36.399529, 41.065033, 51.671619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805466, 40.868359, 51.076252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.875759, 40.562473, 51.324230>,  <36.917934, 40.378944, 51.473019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.875759, 40.562473, 51.324230>,  <36.805466, 40.868359, 51.076252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875759, 40.562473, 51.324230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335396, -0.545563, -0.768030,
		0.925541, 0.342899, 0.160606,
		0.175736, -0.764710, 0.619948,
		36.928478, 40.333061, 51.510216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515079, 40.511963, 50.883675>,  <36.805466, 40.868359, 51.076252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515079, 40.511963, 50.883675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.273041, 40.245598, 51.058220>,  <37.127819, 40.085777, 51.162949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.273041, 40.245598, 51.058220>,  <37.515079, 40.511963, 50.883675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273041, 40.245598, 51.058220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186661, -0.651479, -0.735345,
		0.773961, -0.363502, 0.518508,
		-0.605097, -0.665914, 0.436367,
		37.091511, 40.045822, 51.189129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874222, 39.901310, 50.849922>,  <37.515079, 40.511963, 50.883675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874222, 39.901310, 50.849922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485455, 39.824406, 50.904186>,  <37.252193, 39.778263, 50.936745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485455, 39.824406, 50.904186>,  <37.874222, 39.901310, 50.849922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485455, 39.824406, 50.904186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056851, -0.751319, -0.657486,
		0.228330, -0.631313, 0.741154,
		-0.971923, -0.192259, 0.135658,
		37.193878, 39.766727, 50.944885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028439, 39.179451, 50.570583>,  <37.874222, 39.901310, 50.849922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028439, 39.179451, 50.570583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.635471, 39.214935, 50.636295>,  <37.399693, 39.236225, 50.675724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.635471, 39.214935, 50.636295>,  <38.028439, 39.179451, 50.570583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635471, 39.214935, 50.636295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179625, -0.689090, -0.702062,
		0.050923, -0.719226, 0.692908,
		-0.982416, 0.088712, 0.164281,
		37.340748, 39.241550, 50.685581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794296, 38.466805, 50.494129>,  <38.028439, 39.179451, 50.570583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794296, 38.466805, 50.494129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.476406, 38.705379, 50.449093>,  <37.285671, 38.848522, 50.422073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.476406, 38.705379, 50.449093>,  <37.794296, 38.466805, 50.494129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476406, 38.705379, 50.449093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307753, -0.555842, -0.772222,
		-0.523165, -0.579053, 0.625297,
		-0.794724, 0.596437, -0.112592,
		37.237988, 38.884308, 50.415318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180664, 37.998299, 50.415668>,  <37.794296, 38.466805, 50.494129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180664, 37.998299, 50.415668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077503, 38.350147, 50.255795>,  <37.015606, 38.561256, 50.159870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077503, 38.350147, 50.255795>,  <37.180664, 37.998299, 50.415668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077503, 38.350147, 50.255795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114609, -0.438608, -0.891340,
		-0.959349, -0.184073, 0.213932,
		-0.257904, 0.879625, -0.399682,
		37.000134, 38.614037, 50.135891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495701, 37.880760, 50.221386>,  <37.180664, 37.998299, 50.415668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495701, 37.880760, 50.221386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.640503, 38.195839, 50.021996>,  <36.727386, 38.384888, 49.902363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.640503, 38.195839, 50.021996>,  <36.495701, 37.880760, 50.221386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640503, 38.195839, 50.021996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200673, -0.456356, -0.866874,
		-0.910318, 0.413848, -0.007135,
		0.362009, 0.787699, -0.498477,
		36.749107, 38.432148, 49.872452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973557, 37.994514, 49.692638>,  <36.495701, 37.880760, 50.221386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973557, 37.994514, 49.692638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.312866, 38.169113, 49.572701>,  <36.516453, 38.273872, 49.500740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.312866, 38.169113, 49.572701>,  <35.973557, 37.994514, 49.692638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312866, 38.169113, 49.572701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170925, -0.310229, -0.935170,
		-0.501216, 0.844530, -0.188551,
		0.848273, 0.436495, -0.299843,
		36.567348, 38.300060, 49.482746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713905, 38.301769, 49.064964>,  <35.973557, 37.994514, 49.692638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713905, 38.301769, 49.064964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111782, 38.342861, 49.062496>,  <36.350506, 38.367516, 49.061016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111782, 38.342861, 49.062496>,  <35.713905, 38.301769, 49.064964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111782, 38.342861, 49.062496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022984, -0.280157, -0.959679,
		-0.100315, 0.954442, -0.281030,
		0.994690, 0.102730, -0.006167,
		36.410191, 38.373680, 49.060646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182541, 38.799614, 48.783653>,  <35.713905, 38.301769, 49.064964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182541, 38.799614, 48.783653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836170, 38.601307, 48.757183>,  <34.628345, 38.482323, 48.741302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836170, 38.601307, 48.757183>,  <35.182541, 38.799614, 48.783653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836170, 38.601307, 48.757183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299668, 0.408325, 0.862247,
		-0.400453, 0.766476, -0.502147,
		-0.865931, -0.495767, -0.066173,
		34.576389, 38.452576, 48.737331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720566, 39.289753, 48.908497>,  <35.182541, 38.799614, 48.783653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720566, 39.289753, 48.908497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.578842, 38.924179, 48.987682>,  <34.493809, 38.704834, 49.035194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.578842, 38.924179, 48.987682>,  <34.720566, 39.289753, 48.908497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578842, 38.924179, 48.987682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302231, 0.312249, 0.900642,
		-0.884941, 0.259277, -0.386853,
		-0.354310, -0.913934, 0.197960,
		34.472549, 38.649998, 49.047070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989456, 39.278061, 49.166191>,  <34.720566, 39.289753, 48.908497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989456, 39.278061, 49.166191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.175426, 38.949150, 49.297466>,  <34.287010, 38.751804, 49.376232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.175426, 38.949150, 49.297466>,  <33.989456, 39.278061, 49.166191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175426, 38.949150, 49.297466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223642, 0.249593, 0.942172,
		-0.856638, -0.511437, -0.067853,
		0.464926, -0.822274, 0.328189,
		34.314903, 38.702469, 49.395924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576775, 39.152859, 49.789940>,  <33.989456, 39.278061, 49.166191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576775, 39.152859, 49.789940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891006, 38.910854, 49.841824>,  <34.079548, 38.765652, 49.872955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891006, 38.910854, 49.841824>,  <33.576775, 39.152859, 49.789940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891006, 38.910854, 49.841824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010503, 0.222635, 0.974845,
		-0.618667, -0.764460, 0.181253,
		0.785583, -0.605008, 0.129708,
		34.126682, 38.729351, 49.880737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371540, 38.669010, 50.352444>,  <33.576775, 39.152859, 49.789940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371540, 38.669010, 50.352444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.771221, 38.656483, 50.342613>,  <34.011032, 38.648968, 50.336716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.771221, 38.656483, 50.342613>,  <33.371540, 38.669010, 50.352444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771221, 38.656483, 50.342613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034237, 0.361091, 0.931902,
		-0.020310, -0.932004, 0.361877,
		0.999207, -0.031317, -0.024575,
		34.070984, 38.647087, 50.335239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553436, 38.471447, 51.026154>,  <33.371540, 38.669010, 50.352444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553436, 38.471447, 51.026154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872112, 38.647022, 50.859966>,  <34.063320, 38.752365, 50.760254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872112, 38.647022, 50.859966>,  <33.553436, 38.471447, 51.026154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872112, 38.647022, 50.859966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134367, 0.541589, 0.829836,
		0.589261, -0.716949, 0.372500,
		0.796691, 0.438938, -0.415471,
		34.111122, 38.778702, 50.735325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217674, 38.320580, 51.404095>,  <33.553436, 38.471447, 51.026154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217674, 38.320580, 51.404095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284954, 38.655212, 51.195545>,  <34.325321, 38.855991, 51.070415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284954, 38.655212, 51.195545>,  <34.217674, 38.320580, 51.404095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284954, 38.655212, 51.195545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262867, 0.471695, 0.841667,
		0.950058, -0.278620, -0.140572,
		0.168198, 0.836585, -0.521378,
		34.335415, 38.906189, 51.039131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867580, 38.615719, 51.626507>,  <34.217674, 38.320580, 51.404095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867580, 38.615719, 51.626507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.682961, 38.934273, 51.470173>,  <34.572189, 39.125404, 51.376373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.682961, 38.934273, 51.470173>,  <34.867580, 38.615719, 51.626507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682961, 38.934273, 51.470173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420160, 0.584262, 0.694337,
		0.781305, 0.156259, -0.604273,
		-0.461549, 0.796380, -0.390833,
		34.544495, 39.173187, 51.352924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251526, 39.161606, 51.792107>,  <34.867580, 38.615719, 51.626507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251526, 39.161606, 51.792107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924805, 39.366478, 51.685898>,  <34.728771, 39.489399, 51.622173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924805, 39.366478, 51.685898>,  <35.251526, 39.161606, 51.792107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924805, 39.366478, 51.685898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304983, 0.774025, 0.554861,
		0.489706, 0.372235, -0.788435,
		-0.816807, 0.512178, -0.265520,
		34.679764, 39.520130, 51.606243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402428, 39.816296, 51.727127>,  <35.251526, 39.161606, 51.792107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402428, 39.816296, 51.727127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.009007, 39.849415, 51.791344>,  <34.772953, 39.869286, 51.829872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.009007, 39.849415, 51.791344>,  <35.402428, 39.816296, 51.727127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009007, 39.849415, 51.791344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166238, 0.762560, 0.625194,
		-0.070657, 0.641597, -0.763780,
		-0.983551, 0.082795, 0.160538,
		34.713940, 39.874252, 51.839504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191139, 40.512951, 51.656967>,  <35.402428, 39.816296, 51.727127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191139, 40.512951, 51.656967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905651, 40.334347, 51.872829>,  <34.734356, 40.227184, 52.002346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905651, 40.334347, 51.872829>,  <35.191139, 40.512951, 51.656967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905651, 40.334347, 51.872829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080648, 0.712949, 0.696563,
		-0.695771, 0.540674, -0.472837,
		-0.713722, -0.446514, 0.539653,
		34.691536, 40.200394, 52.034725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786476, 41.001953, 51.968296>,  <35.191139, 40.512951, 51.656967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786476, 41.001953, 51.968296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.691002, 40.696091, 52.207741>,  <34.633717, 40.512573, 52.351406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.691002, 40.696091, 52.207741>,  <34.786476, 41.001953, 51.968296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691002, 40.696091, 52.207741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260275, 0.543503, 0.798036,
		-0.935568, 0.346281, 0.069296,
		-0.238682, -0.764652, 0.598613,
		34.619396, 40.466694, 52.387325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420132, 41.299438, 52.518696>,  <34.786476, 41.001953, 51.968296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420132, 41.299438, 52.518696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.539539, 40.940975, 52.650017>,  <34.611183, 40.725895, 52.728809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.539539, 40.940975, 52.650017>,  <34.420132, 41.299438, 52.518696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539539, 40.940975, 52.650017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172716, 0.389032, 0.904889,
		-0.938646, -0.213423, 0.270915,
		0.298519, -0.896161, 0.328302,
		34.629093, 40.672127, 52.748508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981396, 41.085239, 53.060944>,  <34.420132, 41.299438, 52.518696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981396, 41.085239, 53.060944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337669, 40.910843, 53.112480>,  <34.551434, 40.806206, 53.143402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337669, 40.910843, 53.112480>,  <33.981396, 41.085239, 53.060944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337669, 40.910843, 53.112480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065241, 0.403039, 0.912855,
		-0.449921, -0.804658, 0.387423,
		0.890682, -0.435989, 0.128839,
		34.604874, 40.780045, 53.151131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275608, 40.733299, 52.886642>,  <33.981396, 41.085239, 53.060944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275608, 40.733299, 52.886642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.212448, 41.123093, 52.950443>,  <33.174553, 41.356968, 52.988724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.212448, 41.123093, 52.950443>,  <33.275608, 40.733299, 52.886642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212448, 41.123093, 52.950443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422512, 0.079318, -0.902880,
		-0.892497, -0.209957, 0.399208,
		-0.157902, 0.974488, 0.159500,
		33.165077, 41.415440, 52.998295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525074, 40.783104, 52.807644>,  <33.275608, 40.733299, 52.886642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525074, 40.783104, 52.807644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.739704, 41.115082, 52.746609>,  <32.868481, 41.314266, 52.709988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.739704, 41.115082, 52.746609>,  <32.525074, 40.783104, 52.807644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739704, 41.115082, 52.746609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454934, 0.132217, -0.880655,
		-0.710719, 0.541954, 0.448513,
		0.536576, 0.829942, -0.152584,
		32.900677, 41.364063, 52.700832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030067, 41.281013, 52.446514>,  <32.525074, 40.783104, 52.807644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030067, 41.281013, 52.446514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.384762, 41.458946, 52.396187>,  <32.597576, 41.565704, 52.365990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.384762, 41.458946, 52.396187>,  <32.030067, 41.281013, 52.446514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384762, 41.458946, 52.396187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318479, 0.390562, -0.863732,
		-0.335077, 0.805968, 0.487994,
		0.886732, 0.444833, -0.125816,
		32.650780, 41.592396, 52.358440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899214, 42.039589, 52.307339>,  <32.030067, 41.281013, 52.446514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899214, 42.039589, 52.307339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251354, 41.944454, 52.143185>,  <32.462639, 41.887375, 52.044693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251354, 41.944454, 52.143185>,  <31.899214, 42.039589, 52.307339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251354, 41.944454, 52.143185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325392, 0.326677, -0.887357,
		0.345109, 0.914721, 0.210200,
		0.880352, -0.237838, -0.410382,
		32.515461, 41.873104, 52.020069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119999, 42.627419, 51.875504>,  <31.899214, 42.039589, 52.307339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119999, 42.627419, 51.875504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.339546, 42.311447, 51.766136>,  <32.471275, 42.121864, 51.700516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.339546, 42.311447, 51.766136>,  <32.119999, 42.627419, 51.875504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339546, 42.311447, 51.766136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035596, 0.304708, -0.951780,
		0.835150, 0.532136, 0.139127,
		0.548869, -0.789927, -0.273419,
		32.504208, 42.074471, 51.684109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382553, 42.853935, 51.351772>,  <32.119999, 42.627419, 51.875504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382553, 42.853935, 51.351772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.450253, 42.463673, 51.296001>,  <32.490871, 42.229515, 51.262539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.450253, 42.463673, 51.296001>,  <32.382553, 42.853935, 51.351772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450253, 42.463673, 51.296001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044334, 0.133791, -0.990017,
		0.984576, 0.173741, -0.020611,
		0.169249, -0.975661, -0.139430,
		32.501026, 42.170975, 51.254173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991272, 42.757912, 50.946552>,  <32.382553, 42.853935, 51.351772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991272, 42.757912, 50.946552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.760109, 42.433632, 50.909039>,  <32.621410, 42.239063, 50.886532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.760109, 42.433632, 50.909039>,  <32.991272, 42.757912, 50.946552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760109, 42.433632, 50.909039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143209, 0.213868, -0.966308,
		0.803440, -0.545005, -0.239695,
		-0.577906, -0.810697, -0.093780,
		32.586739, 42.190422, 50.880905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659389, 42.645252, 50.567688>,  <32.991272, 42.757912, 50.946552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659389, 42.645252, 50.567688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804298, 43.017788, 50.552933>,  <33.891243, 43.241310, 50.544079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804298, 43.017788, 50.552933>,  <33.659389, 42.645252, 50.567688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804298, 43.017788, 50.552933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128687, 0.089179, 0.987667,
		0.923145, -0.353059, 0.152159,
		0.362274, 0.931341, -0.036891,
		33.912979, 43.297192, 50.541866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254047, 42.690113, 51.079597>,  <33.659389, 42.645252, 50.567688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254047, 42.690113, 51.079597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.099442, 43.053474, 51.015827>,  <34.006676, 43.271492, 50.977566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.099442, 43.053474, 51.015827>,  <34.254047, 42.690113, 51.079597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099442, 43.053474, 51.015827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014845, 0.166708, 0.985895,
		0.922163, 0.383431, -0.050950,
		-0.386517, 0.908399, -0.159424,
		33.983486, 43.325993, 50.967999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689186, 43.147434, 51.437977>,  <34.254047, 42.690113, 51.079597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689186, 43.147434, 51.437977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364986, 43.374561, 51.380455>,  <34.170467, 43.510838, 51.345943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364986, 43.374561, 51.380455>,  <34.689186, 43.147434, 51.437977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364986, 43.374561, 51.380455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214639, 0.516336, 0.829052,
		0.545002, 0.641077, -0.540364,
		-0.810495, 0.567818, -0.143804,
		34.121838, 43.544907, 51.337315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871876, 43.796467, 51.669594>,  <34.689186, 43.147434, 51.437977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871876, 43.796467, 51.669594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472694, 43.821815, 51.672920>,  <34.233185, 43.837025, 51.674915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472694, 43.821815, 51.672920>,  <34.871876, 43.796467, 51.669594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472694, 43.821815, 51.672920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044110, 0.588812, 0.807065,
		0.046248, 0.805782, -0.590404,
		-0.997956, 0.063367, 0.008312,
		34.173309, 43.840824, 51.675415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733120, 44.507393, 51.726082>,  <34.871876, 43.796467, 51.669594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733120, 44.507393, 51.726082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.388660, 44.364174, 51.870426>,  <34.181984, 44.278244, 51.957035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.388660, 44.364174, 51.870426>,  <34.733120, 44.507393, 51.726082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388660, 44.364174, 51.870426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040406, 0.755836, 0.653514,
		-0.506743, 0.548192, -0.665355,
		-0.861150, -0.358048, 0.360864,
		34.130314, 44.256760, 51.978683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232086, 45.068691, 51.886871>,  <34.733120, 44.507393, 51.726082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232086, 45.068691, 51.886871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117512, 44.764851, 52.120438>,  <34.048767, 44.582546, 52.260578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117512, 44.764851, 52.120438>,  <34.232086, 45.068691, 51.886871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117512, 44.764851, 52.120438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087237, 0.586247, 0.805422,
		-0.954120, 0.281640, -0.101656,
		-0.286435, -0.759601, 0.583920,
		34.031582, 44.536972, 52.295612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776028, 45.400196, 52.301258>,  <34.232086, 45.068691, 51.886871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776028, 45.400196, 52.301258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.866833, 45.059406, 52.489983>,  <33.921318, 44.854931, 52.603218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.866833, 45.059406, 52.489983>,  <33.776028, 45.400196, 52.301258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866833, 45.059406, 52.489983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070693, 0.497595, 0.864524,
		-0.971322, -0.162906, 0.173190,
		0.227015, -0.851974, 0.471809,
		33.934937, 44.803814, 52.631527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486259, 45.440212, 53.008175>,  <33.776028, 45.400196, 52.301258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486259, 45.440212, 53.008175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757126, 45.147633, 53.040253>,  <33.919643, 44.972084, 53.059498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757126, 45.147633, 53.040253>,  <33.486259, 45.440212, 53.008175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757126, 45.147633, 53.040253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237240, 0.320188, 0.917168,
		-0.696539, -0.602047, 0.390349,
		0.677163, -0.731450, 0.080193,
		33.960274, 44.928196, 53.064312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326572, 45.202892, 53.693420>,  <33.486259, 45.440212, 53.008175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326572, 45.202892, 53.693420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.702881, 45.095531, 53.610565>,  <33.928665, 45.031116, 53.560852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.702881, 45.095531, 53.610565>,  <33.326572, 45.202892, 53.693420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702881, 45.095531, 53.610565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286694, 0.303665, 0.908622,
		-0.180975, -0.914193, 0.362629,
		0.940773, -0.268402, -0.207138,
		33.985111, 45.015011, 53.548424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.502621, 39.596790, 37.502144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842804, 39.712029, 37.678200>,  <35.046913, 39.781174, 37.783833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842804, 39.712029, 37.678200>,  <34.502621, 39.596790, 37.502144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842804, 39.712029, 37.678200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501383, 0.190750, 0.843937,
		0.159167, -0.938415, 0.306666,
		0.850459, 0.288084, 0.440144,
		35.097942, 39.798458, 37.810242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787655, 39.275604, 38.256126>,  <34.502621, 39.596790, 37.502144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787655, 39.275604, 38.256126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991703, 39.619156, 38.237740>,  <35.114132, 39.825287, 38.226707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991703, 39.619156, 38.237740>,  <34.787655, 39.275604, 38.256126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991703, 39.619156, 38.237740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230003, 0.187717, 0.954914,
		0.828780, -0.476547, 0.293302,
		0.510119, 0.858874, -0.045969,
		35.144737, 39.876820, 38.223949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197941, 39.340984, 38.899097>,  <34.787655, 39.275604, 38.256126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197941, 39.340984, 38.899097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151806, 39.717010, 38.770741>,  <35.124126, 39.942627, 38.693726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151806, 39.717010, 38.770741>,  <35.197941, 39.340984, 38.899097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151806, 39.717010, 38.770741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138082, 0.304740, 0.942373,
		0.983683, 0.152996, 0.094660,
		-0.115333, 0.940067, -0.320893,
		35.117207, 39.999031, 38.674473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538155, 39.755711, 39.433525>,  <35.197941, 39.340984, 38.899097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538155, 39.755711, 39.433525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289955, 40.006832, 39.245548>,  <35.141037, 40.157505, 39.132763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289955, 40.006832, 39.245548>,  <35.538155, 39.755711, 39.433525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289955, 40.006832, 39.245548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148179, 0.494601, 0.856395,
		0.770083, 0.601025, -0.213870,
		-0.620495, 0.627805, -0.469943,
		35.103806, 40.195175, 39.104565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704292, 40.449539, 39.626247>,  <35.538155, 39.755711, 39.433525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704292, 40.449539, 39.626247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332203, 40.476028, 39.481861>,  <35.108948, 40.491920, 39.395229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332203, 40.476028, 39.481861>,  <35.704292, 40.449539, 39.626247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332203, 40.476028, 39.481861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273071, 0.532214, 0.801361,
		0.245180, 0.844016, -0.476995,
		-0.930225, 0.066224, -0.360965,
		35.053135, 40.495895, 39.373573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484848, 41.176338, 39.715263>,  <35.704292, 40.449539, 39.626247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484848, 41.176338, 39.715263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134228, 40.992107, 39.659351>,  <34.923855, 40.881569, 39.625805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134228, 40.992107, 39.659351>,  <35.484848, 41.176338, 39.715263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134228, 40.992107, 39.659351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331731, 0.367681, 0.868772,
		-0.348742, 0.807887, -0.475076,
		-0.876547, -0.460575, -0.139776,
		34.871265, 40.853935, 39.617420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852276, 41.681858, 39.814816>,  <35.484848, 41.176338, 39.715263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852276, 41.681858, 39.814816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735699, 41.312038, 39.913013>,  <34.665752, 41.090145, 39.971931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735699, 41.312038, 39.913013>,  <34.852276, 41.681858, 39.814816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735699, 41.312038, 39.913013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494169, 0.365253, 0.788915,
		-0.819059, 0.108609, -0.563335,
		-0.291443, -0.924551, 0.245493,
		34.648266, 41.034672, 39.986660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237293, 41.797783, 40.176525>,  <34.852276, 41.681858, 39.814816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237293, 41.797783, 40.176525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289665, 41.411022, 40.264118>,  <34.321091, 41.178967, 40.316673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289665, 41.411022, 40.264118>,  <34.237293, 41.797783, 40.176525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289665, 41.411022, 40.264118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377868, 0.155537, 0.912702,
		-0.916554, -0.202250, -0.344997,
		0.130934, -0.966904, 0.218982,
		34.328945, 41.120953, 40.329811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651913, 41.628445, 40.458485>,  <34.237293, 41.797783, 40.176525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651913, 41.628445, 40.458485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911499, 41.359245, 40.600422>,  <34.067249, 41.197723, 40.685585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911499, 41.359245, 40.600422>,  <33.651913, 41.628445, 40.458485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911499, 41.359245, 40.600422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339533, 0.161192, 0.926679,
		-0.680854, -0.721864, -0.123898,
		0.648965, -0.673000, 0.354845,
		34.106190, 41.157345, 40.706875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284790, 41.316196, 41.045303>,  <33.651913, 41.628445, 40.458485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284790, 41.316196, 41.045303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667614, 41.210003, 41.091873>,  <33.897308, 41.146286, 41.119816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667614, 41.210003, 41.091873>,  <33.284790, 41.316196, 41.045303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667614, 41.210003, 41.091873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143070, -0.083264, 0.986204,
		-0.252123, -0.960514, -0.117671,
		0.957061, -0.265480, 0.116428,
		33.954731, 41.130360, 41.126801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298527, 40.751526, 41.627106>,  <33.284790, 41.316196, 41.045303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298527, 40.751526, 41.627106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660591, 40.918133, 41.593166>,  <33.877831, 41.018097, 41.572803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660591, 40.918133, 41.593166>,  <33.298527, 40.751526, 41.627106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660591, 40.918133, 41.593166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067216, 0.056843, 0.996118,
		0.419722, -0.907349, 0.023455,
		0.905161, 0.416516, -0.084846,
		33.932140, 41.043087, 41.567711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689800, 40.465790, 42.151680>,  <33.298527, 40.751526, 41.627106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689800, 40.465790, 42.151680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883823, 40.806103, 42.070797>,  <34.000237, 41.010288, 42.022266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883823, 40.806103, 42.070797>,  <33.689800, 40.465790, 42.151680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883823, 40.806103, 42.070797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162305, 0.139631, 0.976811,
		0.859287, -0.506631, -0.070356,
		0.485059, 0.850780, -0.202212,
		34.029343, 41.061337, 42.010132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235630, 39.978424, 42.528492>,  <33.689800, 40.465790, 42.151680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235630, 39.978424, 42.528492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842842, 40.045586, 42.493752>,  <32.607170, 40.085884, 42.472908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842842, 40.045586, 42.493752>,  <33.235630, 39.978424, 42.528492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842842, 40.045586, 42.493752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027676, -0.582181, -0.812588,
		-0.187002, -0.795533, 0.576331,
		-0.981970, 0.167906, -0.086852,
		32.548252, 40.095959, 42.467697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954170, 39.419975, 42.412041>,  <33.235630, 39.978424, 42.528492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954170, 39.419975, 42.412041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670288, 39.654716, 42.256130>,  <32.499958, 39.795563, 42.162582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670288, 39.654716, 42.256130>,  <32.954170, 39.419975, 42.412041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670288, 39.654716, 42.256130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100893, -0.462897, -0.880651,
		-0.697239, -0.664327, 0.269310,
		-0.709703, 0.586853, -0.389776,
		32.457378, 39.830772, 42.139198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351685, 38.954914, 42.211140>,  <32.954170, 39.419975, 42.412041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351685, 38.954914, 42.211140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336685, 39.296295, 42.003208>,  <32.327686, 39.501122, 41.878448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336685, 39.296295, 42.003208>,  <32.351685, 38.954914, 42.211140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336685, 39.296295, 42.003208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069800, -0.521159, -0.850601,
		-0.996856, 0.004388, 0.079113,
		-0.037498, 0.853449, -0.519827,
		32.325436, 39.552330, 41.847260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777031, 38.865128, 41.659851>,  <32.351685, 38.954914, 42.211140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777031, 38.865128, 41.659851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935431, 39.210754, 41.535553>,  <32.030472, 39.418133, 41.460972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935431, 39.210754, 41.535553>,  <31.777031, 38.865128, 41.659851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935431, 39.210754, 41.535553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080598, -0.304398, -0.949129,
		-0.914706, 0.400902, -0.050900,
		0.396001, 0.864071, -0.310747,
		32.054230, 39.469975, 41.442329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308498, 39.226322, 41.200222>,  <31.777031, 38.865128, 41.659851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308498, 39.226322, 41.200222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672430, 39.364365, 41.108032>,  <31.890789, 39.447189, 41.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672430, 39.364365, 41.108032>,  <31.308498, 39.226322, 41.200222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672430, 39.364365, 41.108032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253419, 0.022253, -0.967100,
		-0.328622, 0.938300, 0.107702,
		0.909828, 0.345104, -0.230471,
		31.945379, 39.467896, 41.038891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240599, 39.793015, 40.769573>,  <31.308498, 39.226322, 41.200222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240599, 39.793015, 40.769573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608950, 39.655762, 40.695553>,  <31.829960, 39.573410, 40.651142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608950, 39.655762, 40.695553>,  <31.240599, 39.793015, 40.769573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608950, 39.655762, 40.695553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167946, 0.079189, -0.982610,
		0.351820, 0.935943, 0.015295,
		0.920878, -0.343133, -0.185048,
		31.885214, 39.552822, 40.640038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579216, 40.203918, 40.192421>,  <31.240599, 39.793015, 40.769573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579216, 40.203918, 40.192421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770473, 39.852684, 40.199722>,  <31.885229, 39.641941, 40.204105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770473, 39.852684, 40.199722>,  <31.579216, 40.203918, 40.192421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770473, 39.852684, 40.199722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033837, -0.039187, -0.998659,
		0.877628, 0.476887, -0.048449,
		0.478146, -0.878091, 0.018255,
		31.913918, 39.589256, 40.205200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038822, 40.192375, 39.649204>,  <31.579216, 40.203918, 40.192421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038822, 40.192375, 39.649204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989830, 39.800621, 39.713448>,  <31.960434, 39.565567, 39.751995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989830, 39.800621, 39.713448>,  <32.038822, 40.192375, 39.649204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989830, 39.800621, 39.713448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115126, -0.174758, -0.977858,
		0.985771, -0.101279, 0.134158,
		-0.122482, -0.979389, 0.160612,
		31.953085, 39.506805, 39.761631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363140, 39.817200, 39.098572>,  <32.038822, 40.192375, 39.649204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363140, 39.817200, 39.098572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179497, 39.509075, 39.275589>,  <32.069309, 39.324200, 39.381798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179497, 39.509075, 39.275589>,  <32.363140, 39.817200, 39.098572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179497, 39.509075, 39.275589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246988, -0.367827, -0.896493,
		0.853354, -0.520893, -0.021382,
		-0.459112, -0.770308, 0.442541,
		32.041763, 39.277985, 39.408352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533703, 39.240280, 38.707687>,  <32.363140, 39.817200, 39.098572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533703, 39.240280, 38.707687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215996, 39.096306, 38.903477>,  <32.025372, 39.009922, 39.020950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215996, 39.096306, 38.903477>,  <32.533703, 39.240280, 38.707687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215996, 39.096306, 38.903477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312334, -0.449139, -0.837091,
		0.521139, -0.817755, 0.244318,
		-0.794268, -0.359932, 0.489477,
		31.977715, 38.988327, 39.050320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389050, 38.520660, 38.477222>,  <32.533703, 39.240280, 38.707687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389050, 38.520660, 38.477222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041698, 38.649837, 38.627750>,  <31.833286, 38.727345, 38.718067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041698, 38.649837, 38.627750>,  <32.389050, 38.520660, 38.477222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041698, 38.649837, 38.627750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489346, -0.435101, -0.755796,
		-0.080342, -0.840472, 0.535866,
		-0.868381, 0.322946, 0.376325,
		31.781183, 38.746723, 38.740646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930161, 38.010036, 38.379471>,  <32.389050, 38.520660, 38.477222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930161, 38.010036, 38.379471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695318, 38.330521, 38.425724>,  <31.554413, 38.522812, 38.453476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695318, 38.330521, 38.425724>,  <31.930161, 38.010036, 38.379471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695318, 38.330521, 38.425724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544948, -0.285545, -0.788350,
		-0.598612, -0.525862, 0.604262,
		-0.587108, 0.801207, 0.115637,
		31.519186, 38.570881, 38.460415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474007, 37.838348, 38.913666>,  <31.930161, 38.010036, 38.379471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474007, 37.838348, 38.913666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555542, 37.452084, 38.978092>,  <32.604462, 37.220325, 39.016747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555542, 37.452084, 38.978092>,  <32.474007, 37.838348, 38.913666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555542, 37.452084, 38.978092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209469, -0.117689, -0.970707,
		0.956333, 0.231602, 0.178288,
		0.203835, -0.965665, 0.161064,
		32.616692, 37.162384, 39.026413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031937, 37.605061, 38.521835>,  <32.474007, 37.838348, 38.913666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031937, 37.605061, 38.521835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843285, 37.262001, 38.603817>,  <32.730095, 37.056164, 38.653004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843285, 37.262001, 38.603817>,  <33.031937, 37.605061, 38.521835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843285, 37.262001, 38.603817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092211, -0.183181, -0.978745,
		0.876963, -0.480502, 0.007308,
		-0.471628, -0.857649, 0.204951,
		32.701797, 37.004707, 38.665302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353828, 36.878170, 38.364128>,  <33.031937, 37.605061, 38.521835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353828, 36.878170, 38.364128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957905, 36.828381, 38.336475>,  <32.720348, 36.798508, 38.319885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957905, 36.828381, 38.336475>,  <33.353828, 36.878170, 38.364128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957905, 36.828381, 38.336475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085667, -0.132807, -0.987433,
		0.113724, -0.983295, 0.142116,
		-0.989812, -0.124470, -0.069133,
		32.660961, 36.791039, 38.315735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920799, 36.230694, 38.607819>,  <33.353828, 36.878170, 38.364128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920799, 36.230694, 38.607819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232693, 36.007641, 38.721706>,  <33.419827, 35.873810, 38.790039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232693, 36.007641, 38.721706>,  <32.920799, 36.230694, 38.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232693, 36.007641, 38.721706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295107, 0.073753, 0.952613,
		-0.552207, -0.826805, -0.107054,
		0.779730, -0.557633, 0.284723,
		33.466610, 35.840351, 38.807121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598698, 35.682564, 38.983906>,  <32.920799, 36.230694, 38.607819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598698, 35.682564, 38.983906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982735, 35.737953, 39.081108>,  <33.213158, 35.771187, 39.139431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982735, 35.737953, 39.081108>,  <32.598698, 35.682564, 38.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982735, 35.737953, 39.081108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274004, 0.291340, 0.916538,
		0.056118, -0.946544, 0.317655,
		0.960090, 0.138473, 0.243007,
		33.270763, 35.779495, 39.154011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751106, 35.250111, 39.660748>,  <32.598698, 35.682564, 38.983906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751106, 35.250111, 39.660748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000618, 35.561954, 39.638443>,  <33.150326, 35.749062, 39.625061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000618, 35.561954, 39.638443>,  <32.751106, 35.250111, 39.660748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000618, 35.561954, 39.638443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231218, 0.252207, 0.939644,
		0.746614, -0.573242, 0.337581,
		0.623783, 0.779606, -0.055758,
		33.187752, 35.795837, 39.621716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046886, 35.246536, 40.245358>,  <32.751106, 35.250111, 39.660748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046886, 35.246536, 40.245358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139687, 35.610264, 40.107193>,  <33.195366, 35.828503, 40.024296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139687, 35.610264, 40.107193>,  <33.046886, 35.246536, 40.245358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139687, 35.610264, 40.107193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064664, 0.368731, 0.927284,
		0.970565, -0.192791, 0.144345,
		0.231997, 0.909323, -0.345411,
		33.209286, 35.883060, 40.003571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614098, 35.505474, 40.671486>,  <33.046886, 35.246536, 40.245358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614098, 35.505474, 40.671486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430882, 35.826550, 40.518700>,  <33.320953, 36.019196, 40.427029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430882, 35.826550, 40.518700>,  <33.614098, 35.505474, 40.671486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430882, 35.826550, 40.518700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111610, 0.478215, 0.871122,
		0.881899, 0.356376, -0.308628,
		-0.458037, 0.802687, -0.381962,
		33.293468, 36.067356, 40.404110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010235, 36.116970, 40.935654>,  <33.614098, 35.505474, 40.671486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010235, 36.116970, 40.935654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662487, 36.284168, 40.830215>,  <33.453838, 36.384487, 40.766953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662487, 36.284168, 40.830215>,  <34.010235, 36.116970, 40.935654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662487, 36.284168, 40.830215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013730, 0.553635, 0.832646,
		0.493978, 0.720255, -0.487050,
		-0.869366, 0.417996, -0.263594,
		33.401676, 36.409569, 40.751137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061520, 36.834263, 41.073097>,  <34.010235, 36.116970, 40.935654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061520, 36.834263, 41.073097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666889, 36.806976, 41.013756>,  <33.430111, 36.790604, 40.978149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666889, 36.806976, 41.013756>,  <34.061520, 36.834263, 41.073097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666889, 36.806976, 41.013756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160222, 0.579757, 0.798881,
		0.031512, 0.811928, -0.582906,
		-0.986578, -0.068220, -0.148358,
		33.370914, 36.786510, 40.969250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759674, 37.493561, 40.885704>,  <34.061520, 36.834263, 41.073097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759674, 37.493561, 40.885704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471947, 37.279774, 41.063206>,  <33.299309, 37.151501, 41.169708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471947, 37.279774, 41.063206>,  <33.759674, 37.493561, 40.885704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471947, 37.279774, 41.063206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000807, 0.638157, 0.769906,
		-0.694676, 0.554169, -0.458609,
		-0.719323, -0.534465, 0.443759,
		33.256149, 37.119434, 41.196335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390907, 37.975933, 41.326637>,  <33.759674, 37.493561, 40.885704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390907, 37.975933, 41.326637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234650, 37.625221, 41.438828>,  <33.140896, 37.414795, 41.506142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234650, 37.625221, 41.438828>,  <33.390907, 37.975933, 41.326637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234650, 37.625221, 41.438828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099824, 0.343233, 0.933930,
		-0.915115, 0.336833, -0.221604,
		-0.390640, -0.876775, 0.280474,
		33.117458, 37.362190, 41.522968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805092, 38.118435, 41.710720>,  <33.390907, 37.975933, 41.326637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805092, 38.118435, 41.710720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967186, 37.768585, 41.817173>,  <33.064442, 37.558678, 41.881046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967186, 37.768585, 41.817173>,  <32.805092, 38.118435, 41.710720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967186, 37.768585, 41.817173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108778, 0.335166, 0.935859,
		-0.907719, -0.350291, 0.230959,
		0.405232, -0.874620, 0.266132,
		33.088757, 37.506199, 41.897015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685547, 38.018345, 42.391273>,  <32.805092, 38.118435, 41.710720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685547, 38.018345, 42.391273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961441, 37.730110, 42.362942>,  <33.126980, 37.557171, 42.345943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961441, 37.730110, 42.362942>,  <32.685547, 38.018345, 42.391273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961441, 37.730110, 42.362942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051633, -0.048624, 0.997482,
		-0.722215, -0.691659, 0.003668,
		0.689739, -0.720585, -0.070829,
		33.168362, 37.513935, 42.341694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566265, 37.497734, 43.006042>,  <32.685547, 38.018345, 42.391273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566265, 37.497734, 43.006042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930805, 37.410797, 42.866215>,  <33.149529, 37.358635, 42.782318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930805, 37.410797, 42.866215>,  <32.566265, 37.497734, 43.006042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930805, 37.410797, 42.866215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330789, -0.118706, 0.936209,
		-0.244972, -0.968851, -0.036289,
		0.911355, -0.217341, -0.349565,
		33.204212, 37.345596, 42.761345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870117, 36.750053, 43.194172>,  <32.566265, 37.497734, 43.006042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870117, 36.750053, 43.194172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176823, 37.004166, 43.157330>,  <33.360847, 37.156635, 43.135223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176823, 37.004166, 43.157330>,  <32.870117, 36.750053, 43.194172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176823, 37.004166, 43.157330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243916, -0.155610, 0.957231,
		0.593779, -0.756440, -0.274273,
		0.766767, 0.635283, -0.092110,
		33.406853, 37.194752, 43.129696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360111, 36.427216, 43.588127>,  <32.870117, 36.750053, 43.194172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360111, 36.427216, 43.588127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510681, 36.791714, 43.521271>,  <33.601025, 37.010414, 43.481155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510681, 36.791714, 43.521271>,  <33.360111, 36.427216, 43.588127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510681, 36.791714, 43.521271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332045, 0.035728, 0.942587,
		0.864900, -0.410311, -0.289126,
		0.376424, 0.911246, -0.167143,
		33.623608, 37.065086, 43.471127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123085, 36.518402, 43.862274>,  <33.360111, 36.427216, 43.588127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123085, 36.518402, 43.862274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967232, 36.886772, 43.858871>,  <33.873718, 37.107796, 43.856831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967232, 36.886772, 43.858871>,  <34.123085, 36.518402, 43.862274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967232, 36.886772, 43.858871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405935, 0.180020, 0.895997,
		0.826680, 0.345661, -0.443980,
		-0.389636, 0.920930, -0.008503,
		33.850342, 37.163052, 43.856319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657230, 36.849190, 44.126648>,  <34.123085, 36.518402, 43.862274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657230, 36.849190, 44.126648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350040, 37.102139, 44.167267>,  <34.165726, 37.253910, 44.191639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350040, 37.102139, 44.167267>,  <34.657230, 36.849190, 44.126648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350040, 37.102139, 44.167267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354523, 0.287679, 0.889693,
		0.533406, 0.719266, -0.445122,
		-0.767979, 0.632374, 0.101547,
		34.119648, 37.291851, 44.197731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945969, 37.533070, 44.399242>,  <34.657230, 36.849190, 44.126648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945969, 37.533070, 44.399242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554947, 37.502884, 44.477928>,  <34.320335, 37.484772, 44.525139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554947, 37.502884, 44.477928>,  <34.945969, 37.533070, 44.399242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554947, 37.502884, 44.477928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164477, 0.310142, 0.936354,
		-0.131671, 0.947690, -0.290768,
		-0.977553, -0.075466, 0.196710,
		34.261681, 37.480244, 44.536942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963322, 38.031250, 44.864864>,  <34.945969, 37.533070, 44.399242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963322, 38.031250, 44.864864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635647, 37.807404, 44.915077>,  <34.439041, 37.673096, 44.945206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635647, 37.807404, 44.915077>,  <34.963322, 38.031250, 44.864864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635647, 37.807404, 44.915077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081141, 0.103597, 0.991304,
		-0.567759, 0.822249, -0.039457,
		-0.819186, -0.559620, 0.125536,
		34.389893, 37.639519, 44.952740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460434, 38.455772, 45.144783>,  <34.963322, 38.031250, 44.864864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460434, 38.455772, 45.144783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372196, 38.079750, 45.248810>,  <34.319252, 37.854137, 45.311226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372196, 38.079750, 45.248810>,  <34.460434, 38.455772, 45.144783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372196, 38.079750, 45.248810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083554, 0.283866, 0.955217,
		-0.971780, 0.188987, -0.141165,
		-0.220595, -0.940056, 0.260064,
		34.306019, 37.797733, 45.326828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019371, 38.489536, 45.671642>,  <34.460434, 38.455772, 45.144783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019371, 38.489536, 45.671642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140846, 38.112309, 45.725906>,  <34.213730, 37.885971, 45.758465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140846, 38.112309, 45.725906>,  <34.019371, 38.489536, 45.671642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140846, 38.112309, 45.725906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188656, 0.080044, 0.978776,
		-0.933908, -0.322833, -0.153606,
		0.303686, -0.943065, 0.135658,
		34.231953, 37.829388, 45.766605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521774, 38.179005, 46.073635>,  <34.019371, 38.489536, 45.671642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521774, 38.179005, 46.073635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840752, 37.940266, 46.109070>,  <34.032139, 37.797020, 46.130333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840752, 37.940266, 46.109070>,  <33.521774, 38.179005, 46.073635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840752, 37.940266, 46.109070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084627, 0.034736, 0.995807,
		-0.597425, -0.801600, -0.022810,
		0.797447, -0.596850, 0.088590,
		34.079987, 37.761211, 46.135647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342186, 37.685589, 46.599083>,  <33.521774, 38.179005, 46.073635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342186, 37.685589, 46.599083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741093, 37.705418, 46.577141>,  <33.980434, 37.717316, 46.563976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741093, 37.705418, 46.577141>,  <33.342186, 37.685589, 46.599083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741093, 37.705418, 46.577141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055051, -0.002545, 0.998480,
		0.049361, -0.998767, -0.005267,
		0.997263, 0.049575, -0.054858,
		34.040272, 37.720287, 46.560684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658897, 37.204853, 47.065948>,  <33.342186, 37.685589, 46.599083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658897, 37.204853, 47.065948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971310, 37.447395, 47.006184>,  <34.158756, 37.592918, 46.970325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971310, 37.447395, 47.006184>,  <33.658897, 37.204853, 47.065948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971310, 37.447395, 47.006184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111807, 0.099620, 0.988724,
		0.614401, -0.788931, 0.010012,
		0.781032, 0.606353, -0.149415,
		34.205620, 37.629303, 46.961361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199337, 37.033592, 47.527195>,  <33.658897, 37.204853, 47.065948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199337, 37.033592, 47.527195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295147, 37.405346, 47.414852>,  <34.352634, 37.628399, 47.347446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295147, 37.405346, 47.414852>,  <34.199337, 37.033592, 47.527195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295147, 37.405346, 47.414852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228058, 0.227324, 0.946738,
		0.943725, -0.290819, -0.157503,
		0.239525, 0.929381, -0.280855,
		34.367004, 37.684158, 47.330597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880711, 37.145828, 47.694706>,  <34.199337, 37.033592, 47.527195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880711, 37.145828, 47.694706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666206, 37.483234, 47.682636>,  <34.537502, 37.685677, 47.675396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666206, 37.483234, 47.682636>,  <34.880711, 37.145828, 47.694706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666206, 37.483234, 47.682636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284576, 0.214344, 0.934384,
		0.794631, 0.492488, -0.354988,
		-0.536263, 0.843511, -0.030174,
		34.505329, 37.736286, 47.673584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153389, 37.437340, 48.144802>,  <34.880711, 37.145828, 47.694706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153389, 37.437340, 48.144802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855164, 37.698978, 48.093758>,  <34.676228, 37.855961, 48.063129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855164, 37.698978, 48.093758>,  <35.153389, 37.437340, 48.144802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855164, 37.698978, 48.093758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089352, 0.287867, 0.953493,
		0.660415, 0.699489, -0.273069,
		-0.745565, 0.654101, -0.127611,
		34.631493, 37.895210, 48.055473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411156, 38.207901, 48.324833>,  <35.153389, 37.437340, 48.144802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411156, 38.207901, 48.324833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013390, 38.167027, 48.335392>,  <34.774731, 38.142502, 48.341728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013390, 38.167027, 48.335392>,  <35.411156, 38.207901, 48.324833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013390, 38.167027, 48.335392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010973, 0.348853, 0.937113,
		-0.104970, 0.931590, -0.348026,
		-0.994415, -0.102187, 0.026397,
		34.715065, 38.136372, 48.343311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974842, 38.751984, 48.474487>,  <35.411156, 38.207901, 48.324833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974842, 38.751984, 48.474487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300198, 38.539070, 48.568359>,  <36.495411, 38.411324, 48.624683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300198, 38.539070, 48.568359>,  <35.974842, 38.751984, 48.474487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300198, 38.539070, 48.568359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161625, -0.180754, -0.970157,
		0.558820, 0.827043, -0.060992,
		0.813387, -0.532285, 0.234680,
		36.544212, 38.379383, 48.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426937, 38.926582, 48.002472>,  <35.974842, 38.751984, 48.474487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426937, 38.926582, 48.002472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551617, 38.567577, 48.127258>,  <36.626423, 38.352177, 48.202129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551617, 38.567577, 48.127258>,  <36.426937, 38.926582, 48.002472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551617, 38.567577, 48.127258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071810, -0.305129, -0.949600,
		0.947464, 0.318390, -0.030658,
		0.311698, -0.897510, 0.311963,
		36.645126, 38.298325, 48.220848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834927, 38.779938, 47.483105>,  <36.426937, 38.926582, 48.002472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834927, 38.779938, 47.483105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806641, 38.422653, 47.660721>,  <36.789669, 38.208282, 47.767292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806641, 38.422653, 47.660721>,  <36.834927, 38.779938, 47.483105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806641, 38.422653, 47.660721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275768, -0.445312, -0.851850,
		0.958620, 0.062216, 0.277808,
		-0.070712, -0.893211, 0.444042,
		36.785427, 38.154690, 47.793934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500225, 38.412811, 47.476196>,  <36.834927, 38.779938, 47.483105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500225, 38.412811, 47.476196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196758, 38.152699, 47.492020>,  <37.014679, 37.996632, 47.501514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196758, 38.152699, 47.492020>,  <37.500225, 38.412811, 47.476196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196758, 38.152699, 47.492020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299060, -0.401560, -0.865629,
		0.578787, -0.644890, 0.499122,
		-0.758662, -0.650282, 0.039557,
		36.969158, 37.957615, 47.503887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852646, 37.679890, 47.382160>,  <37.500225, 38.412811, 47.476196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852646, 37.679890, 47.382160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468994, 37.635300, 47.278122>,  <37.238804, 37.608543, 47.215698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468994, 37.635300, 47.278122>,  <37.852646, 37.679890, 47.382160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468994, 37.635300, 47.278122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278967, -0.526732, -0.802951,
		-0.047488, -0.842690, 0.536301,
		-0.959126, -0.111480, -0.260096,
		37.181255, 37.601856, 47.200092>
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
