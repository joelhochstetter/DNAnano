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
	<24.000296, 34.890354, 35.491837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312334, 34.938084, 35.246166>,  <24.499557, 34.966721, 35.098763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312334, 34.938084, 35.246166>,  <24.000296, 34.890354, 35.491837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312334, 34.938084, 35.246166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323300, 0.763558, 0.558979,
		0.535658, -0.634620, 0.557071,
		0.780095, 0.119321, -0.614179,
		24.546362, 34.973881, 35.061913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641062, 34.944248, 35.895493>,  <24.000296, 34.890354, 35.491837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641062, 34.944248, 35.895493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620884, 35.166836, 35.563759>,  <24.608778, 35.300388, 35.364719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620884, 35.166836, 35.563759>,  <24.641062, 34.944248, 35.895493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620884, 35.166836, 35.563759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002027, 0.830332, 0.557265,
		0.998725, 0.029791, -0.040757,
		-0.050444, 0.556472, -0.829334,
		24.605751, 35.333778, 35.314960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215115, 35.398926, 35.953033>,  <24.641062, 34.944248, 35.895493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215115, 35.398926, 35.953033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927610, 35.567707, 35.732002>,  <24.755108, 35.668976, 35.599384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927610, 35.567707, 35.732002>,  <25.215115, 35.398926, 35.953033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927610, 35.567707, 35.732002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099920, 0.849220, 0.518499,
		0.688040, 0.317463, -0.652548,
		-0.718761, 0.421950, -0.552576,
		24.711983, 35.694294, 35.566231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821524, 35.645813, 35.510056>,  <25.215115, 35.398926, 35.953033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821524, 35.645813, 35.510056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103304, 35.905960, 35.623737>,  <26.272371, 36.062050, 35.691948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103304, 35.905960, 35.623737>,  <25.821524, 35.645813, 35.510056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103304, 35.905960, 35.623737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279364, -0.622182, 0.731331,
		0.652461, -0.435790, -0.619985,
		0.704451, 0.650366, 0.284205,
		26.314640, 36.101070, 35.709000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612495, 35.454662, 35.460773>,  <25.821524, 35.645813, 35.510056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612495, 35.454662, 35.460773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574785, 35.729576, 35.748871>,  <26.552158, 35.894524, 35.921730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574785, 35.729576, 35.748871>,  <26.612495, 35.454662, 35.460773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574785, 35.729576, 35.748871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301892, -0.669667, 0.678533,
		0.948669, 0.281406, -0.144351,
		-0.094276, 0.687282, 0.720247,
		26.546503, 35.935760, 35.964947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194386, 35.338860, 36.052853>,  <26.612495, 35.454662, 35.460773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194386, 35.338860, 36.052853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900347, 35.540333, 36.234371>,  <26.723923, 35.661217, 36.343281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900347, 35.540333, 36.234371>,  <27.194386, 35.338860, 36.052853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900347, 35.540333, 36.234371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268426, -0.398426, 0.877043,
		0.622557, 0.766524, 0.157681,
		-0.735099, 0.503684, 0.453798,
		26.679817, 35.691437, 36.370510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993748, 35.494900, 35.996918>,  <27.194386, 35.338860, 36.052853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993748, 35.494900, 35.996918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297262, 35.386322, 36.233749>,  <28.479370, 35.321175, 36.375851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297262, 35.386322, 36.233749>,  <27.993748, 35.494900, 35.996918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297262, 35.386322, 36.233749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521610, 0.291169, 0.801962,
		-0.390087, -0.917353, 0.079345,
		0.758785, -0.271448, 0.592082,
		28.524899, 35.304886, 36.411373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729620, 35.193211, 36.731194>,  <27.993748, 35.494900, 35.996918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729620, 35.193211, 36.731194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111832, 35.300922, 36.779282>,  <28.341158, 35.365551, 36.808132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111832, 35.300922, 36.779282>,  <27.729620, 35.193211, 36.731194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111832, 35.300922, 36.779282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264898, 0.604631, 0.751166,
		0.129589, -0.749606, 0.649074,
		0.955529, 0.269282, 0.120215,
		28.398491, 35.381706, 36.815346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829512, 35.306129, 37.452572>,  <27.729620, 35.193211, 36.731194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829512, 35.306129, 37.452572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137829, 35.524078, 37.320515>,  <28.322819, 35.654846, 37.241280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137829, 35.524078, 37.320515>,  <27.829512, 35.306129, 37.452572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137829, 35.524078, 37.320515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190733, 0.691797, 0.696447,
		0.607865, -0.473847, 0.637157,
		0.770793, 0.544872, -0.330141,
		28.369066, 35.687542, 37.221474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031170, 35.639675, 38.064159>,  <27.829512, 35.306129, 37.452572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031170, 35.639675, 38.064159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211626, 35.839314, 37.768219>,  <28.319901, 35.959095, 37.590656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211626, 35.839314, 37.768219>,  <28.031170, 35.639675, 38.064159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211626, 35.839314, 37.768219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192892, 0.863943, 0.465183,
		0.871362, -0.067147, 0.486024,
		0.451132, 0.499093, -0.739855,
		28.346968, 35.989040, 37.546265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515505, 36.086906, 38.393078>,  <28.031170, 35.639675, 38.064159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515505, 36.086906, 38.393078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440310, 36.258675, 38.039749>,  <28.395191, 36.361736, 37.827751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440310, 36.258675, 38.039749>,  <28.515505, 36.086906, 38.393078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440310, 36.258675, 38.039749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121719, 0.882236, 0.454800,
		0.974599, 0.193015, -0.113583,
		-0.187990, 0.429423, -0.883321,
		28.383913, 36.387501, 37.774754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844402, 36.779335, 38.437336>,  <28.515505, 36.086906, 38.393078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844402, 36.779335, 38.437336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605194, 36.814934, 38.118725>,  <28.461670, 36.836292, 37.927559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605194, 36.814934, 38.118725>,  <28.844402, 36.779335, 38.437336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605194, 36.814934, 38.118725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275013, 0.910695, 0.308224,
		0.752822, 0.403378, -0.520139,
		-0.598019, 0.088993, -0.796526,
		28.425789, 36.841633, 37.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102694, 37.407799, 37.942875>,  <28.844402, 36.779335, 38.437336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102694, 37.407799, 37.942875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718805, 37.359310, 37.841492>,  <28.488472, 37.330215, 37.780663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718805, 37.359310, 37.841492>,  <29.102694, 37.407799, 37.942875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718805, 37.359310, 37.841492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119684, 0.992579, -0.021536,
		0.254185, 0.009666, -0.967107,
		-0.959722, -0.121221, -0.253455,
		28.430889, 37.322945, 37.765453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854004, 37.869839, 37.349091>,  <29.102694, 37.407799, 37.942875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854004, 37.869839, 37.349091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513992, 37.766964, 37.532963>,  <28.309986, 37.705238, 37.643288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513992, 37.766964, 37.532963>,  <28.854004, 37.869839, 37.349091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513992, 37.766964, 37.532963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191967, 0.963934, 0.184334,
		-0.490513, 0.068445, -0.868742,
		-0.850027, -0.257188, 0.459683,
		28.258984, 37.689808, 37.670868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341314, 38.370045, 37.174847>,  <28.854004, 37.869839, 37.349091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341314, 38.370045, 37.174847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198540, 38.204910, 37.510025>,  <28.112875, 38.105827, 37.711132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198540, 38.204910, 37.510025>,  <28.341314, 38.370045, 37.174847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198540, 38.204910, 37.510025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251459, 0.906391, 0.339446,
		-0.899646, -0.089549, -0.427337,
		-0.356938, -0.412839, 0.837950,
		28.091459, 38.081059, 37.761410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647369, 38.634567, 37.184353>,  <28.341314, 38.370045, 37.174847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647369, 38.634567, 37.184353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774630, 38.526737, 37.547916>,  <27.850986, 38.462040, 37.766052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774630, 38.526737, 37.547916>,  <27.647369, 38.634567, 37.184353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774630, 38.526737, 37.547916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121873, 0.939135, 0.321204,
		-0.940174, -0.212962, 0.265932,
		0.318151, -0.269578, 0.908905,
		27.870075, 38.445866, 37.820587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293083, 39.101326, 37.673138>,  <27.647369, 38.634567, 37.184353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293083, 39.101326, 37.673138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591789, 38.950542, 37.892315>,  <27.771013, 38.860073, 38.023819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591789, 38.950542, 37.892315>,  <27.293083, 39.101326, 37.673138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591789, 38.950542, 37.892315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030009, 0.803927, 0.593971,
		-0.664408, -0.460001, 0.589034,
		0.746767, -0.376963, 0.547940,
		27.815819, 38.837452, 38.056698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067120, 38.874866, 38.388653>,  <27.293083, 39.101326, 37.673138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067120, 38.874866, 38.388653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455088, 38.955929, 38.442593>,  <27.687868, 39.004566, 38.474957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455088, 38.955929, 38.442593>,  <27.067120, 38.874866, 38.388653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455088, 38.955929, 38.442593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238623, 0.682141, 0.691190,
		0.048088, -0.702577, 0.709981,
		0.969921, 0.202655, 0.134849,
		27.746063, 39.016727, 38.483047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071573, 39.135975, 39.091034>,  <27.067120, 38.874866, 38.388653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071573, 39.135975, 39.091034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433319, 39.224308, 38.944962>,  <27.650366, 39.277309, 38.857319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433319, 39.224308, 38.944962>,  <27.071573, 39.135975, 39.091034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433319, 39.224308, 38.944962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050547, 0.794248, 0.605487,
		0.423759, -0.566039, 0.707126,
		0.904363, 0.220837, -0.365182,
		27.704628, 39.290558, 38.835407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502516, 39.202946, 39.737194>,  <27.071573, 39.135975, 39.091034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502516, 39.202946, 39.737194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694790, 39.402874, 39.448994>,  <27.810154, 39.522831, 39.276073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694790, 39.402874, 39.448994>,  <27.502516, 39.202946, 39.737194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694790, 39.402874, 39.448994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067568, 0.798094, 0.598733,
		0.874286, -0.336486, 0.349860,
		0.480686, 0.499824, -0.720498,
		27.838997, 39.552822, 39.232845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148119, 39.475643, 40.017670>,  <27.502516, 39.202946, 39.737194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148119, 39.475643, 40.017670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091722, 39.720795, 39.706673>,  <28.057884, 39.867886, 39.520073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091722, 39.720795, 39.706673>,  <28.148119, 39.475643, 40.017670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091722, 39.720795, 39.706673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169054, 0.788710, 0.591064,
		0.975470, -0.048105, -0.214810,
		-0.140990, 0.612880, -0.777496,
		28.049425, 39.904659, 39.473423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579136, 40.090771, 40.054630>,  <28.148119, 39.475643, 40.017670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579136, 40.090771, 40.054630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297985, 40.257729, 39.824242>,  <28.129295, 40.357903, 39.686008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297985, 40.257729, 39.824242>,  <28.579136, 40.090771, 40.054630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297985, 40.257729, 39.824242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065131, 0.844100, 0.532215,
		0.708324, 0.336568, -0.620483,
		-0.702876, 0.417394, -0.575975,
		28.087122, 40.382946, 39.651447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895378, 40.673672, 39.814213>,  <28.579136, 40.090771, 40.054630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895378, 40.673672, 39.814213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506649, 40.743198, 39.750534>,  <28.273411, 40.784916, 39.712326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506649, 40.743198, 39.750534>,  <28.895378, 40.673672, 39.814213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506649, 40.743198, 39.750534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096461, 0.909555, 0.404233,
		0.215063, 0.377488, -0.900695,
		-0.971825, 0.173817, -0.159198,
		28.215101, 40.795345, 39.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907146, 41.377022, 39.605404>,  <28.895378, 40.673672, 39.814213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907146, 41.377022, 39.605404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531113, 41.300739, 39.718449>,  <28.305492, 41.254971, 39.786278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531113, 41.300739, 39.718449>,  <28.907146, 41.377022, 39.605404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531113, 41.300739, 39.718449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008544, 0.841846, 0.539650,
		-0.340832, 0.504902, -0.793037,
		-0.940086, -0.190705, 0.282614,
		28.249086, 41.243526, 39.803234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493698, 41.957970, 39.419312>,  <28.907146, 41.377022, 39.605404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493698, 41.957970, 39.419312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302450, 41.761589, 39.710617>,  <28.187702, 41.643761, 39.885403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302450, 41.761589, 39.710617>,  <28.493698, 41.957970, 39.419312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302450, 41.761589, 39.710617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074389, 0.803566, 0.590549,
		-0.875140, 0.336527, -0.347678,
		-0.478118, -0.490950, 0.728266,
		28.159016, 41.614304, 39.929096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925037, 42.409519, 39.787514>,  <28.493698, 41.957970, 39.419312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925037, 42.409519, 39.787514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073664, 42.125221, 40.026440>,  <28.162840, 41.954643, 40.169796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073664, 42.125221, 40.026440>,  <27.925037, 42.409519, 39.787514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073664, 42.125221, 40.026440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277044, 0.698943, 0.659337,
		-0.886108, -0.079504, 0.456609,
		0.371564, -0.710745, 0.597313,
		28.185133, 41.911999, 40.205635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702892, 42.607208, 40.471939>,  <27.925037, 42.409519, 39.787514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702892, 42.607208, 40.471939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029770, 42.376671, 40.470089>,  <28.225897, 42.238346, 40.468979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029770, 42.376671, 40.470089>,  <27.702892, 42.607208, 40.471939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029770, 42.376671, 40.470089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485709, 0.684315, 0.543876,
		-0.310296, -0.446697, 0.839153,
		0.817193, -0.576346, -0.004625,
		28.274927, 42.203766, 40.468700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912077, 42.583969, 41.204609>,  <27.702892, 42.607208, 40.471939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912077, 42.583969, 41.204609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176636, 42.551842, 40.906319>,  <28.335371, 42.532566, 40.727345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176636, 42.551842, 40.906319>,  <27.912077, 42.583969, 41.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176636, 42.551842, 40.906319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621216, 0.615796, 0.484651,
		0.420287, -0.783802, 0.457179,
		0.661399, -0.080315, -0.745722,
		28.375055, 42.527748, 40.682602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596943, 42.250488, 41.513935>,  <27.912077, 42.583969, 41.204609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596943, 42.250488, 41.513935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562065, 42.494358, 41.198799>,  <28.541138, 42.640678, 41.009716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562065, 42.494358, 41.198799>,  <28.596943, 42.250488, 41.513935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562065, 42.494358, 41.198799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303499, 0.769517, 0.561899,
		0.948834, -0.190116, -0.252133,
		-0.087195, 0.609671, -0.787844,
		28.535906, 42.677258, 40.962444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570543, 42.924088, 41.686539>,  <28.596943, 42.250488, 41.513935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570543, 42.924088, 41.686539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751434, 43.086426, 41.368851>,  <28.859968, 43.183830, 41.178238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751434, 43.086426, 41.368851>,  <28.570543, 42.924088, 41.686539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751434, 43.086426, 41.368851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200815, 0.821277, 0.534020,
		0.869003, -0.400988, 0.289902,
		0.452226, 0.405848, -0.794216,
		28.887102, 43.208179, 41.130585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186464, 43.275105, 41.826347>,  <28.570543, 42.924088, 41.686539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186464, 43.275105, 41.826347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041410, 43.476807, 41.512859>,  <28.954378, 43.597828, 41.324764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041410, 43.476807, 41.512859>,  <29.186464, 43.275105, 41.826347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041410, 43.476807, 41.512859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078830, 0.821357, 0.564941,
		0.928591, 0.266648, -0.258103,
		-0.362635, 0.504254, -0.783725,
		28.932619, 43.628082, 41.277740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596479, 43.975712, 41.885754>,  <29.186464, 43.275105, 41.826347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596479, 43.975712, 41.885754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250051, 44.000870, 41.687374>,  <29.042194, 44.015965, 41.568348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250051, 44.000870, 41.687374>,  <29.596479, 43.975712, 41.885754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250051, 44.000870, 41.687374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155491, 0.908960, 0.386800,
		0.475126, 0.412111, -0.777444,
		-0.866070, 0.062893, -0.495950,
		28.990231, 44.019737, 41.538589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930433, 43.327858, 41.590725>,  <29.596479, 43.975712, 41.885754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930433, 43.327858, 41.590725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304190, 43.269588, 41.460682>,  <30.528444, 43.234627, 41.382656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304190, 43.269588, 41.460682>,  <29.930433, 43.327858, 41.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304190, 43.269588, 41.460682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001502, -0.914178, 0.405310,
		-0.356247, -0.378229, -0.854418,
		0.934391, -0.145674, -0.325105,
		30.584507, 43.225887, 41.363152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967066, 42.577942, 41.311893>,  <29.930433, 43.327858, 41.590725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967066, 42.577942, 41.311893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335003, 42.683701, 41.427814>,  <30.555765, 42.747154, 41.497368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335003, 42.683701, 41.427814>,  <29.967066, 42.577942, 41.311893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335003, 42.683701, 41.427814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106239, -0.879035, 0.464769,
		0.377633, -0.396725, -0.836662,
		0.919840, 0.264398, 0.289805,
		30.610954, 42.763020, 41.514755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452694, 42.057140, 41.063507>,  <29.967066, 42.577942, 41.311893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452694, 42.057140, 41.063507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576120, 42.208839, 41.412441>,  <30.650175, 42.299858, 41.621799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576120, 42.208839, 41.412441>,  <30.452694, 42.057140, 41.063507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576120, 42.208839, 41.412441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086171, -0.924455, 0.371426,
		0.947292, -0.039439, -0.317934,
		0.308564, 0.379246, 0.872331,
		30.668690, 42.322613, 41.674141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167587, 41.729855, 41.258400>,  <30.452694, 42.057140, 41.063507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167587, 41.729855, 41.258400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920385, 41.852501, 41.547966>,  <30.772064, 41.926090, 41.721706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920385, 41.852501, 41.547966>,  <31.167587, 41.729855, 41.258400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920385, 41.852501, 41.547966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100187, -0.944017, 0.314316,
		0.779766, 0.121720, 0.614124,
		-0.618003, 0.306620, 0.723918,
		30.734985, 41.944489, 41.765141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435802, 41.506828, 41.939598>,  <31.167587, 41.729855, 41.258400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435802, 41.506828, 41.939598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037388, 41.542381, 41.940723>,  <30.798338, 41.563713, 41.941399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037388, 41.542381, 41.940723>,  <31.435802, 41.506828, 41.939598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037388, 41.542381, 41.940723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083630, -0.946961, 0.310275,
		0.030244, 0.308810, 0.950643,
		-0.996038, 0.088886, 0.002814,
		30.738577, 41.569046, 41.941566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242304, 41.108452, 42.437813>,  <31.435802, 41.506828, 41.939598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242304, 41.108452, 42.437813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898418, 41.165733, 42.241695>,  <30.692087, 41.200100, 42.124023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898418, 41.165733, 42.241695>,  <31.242304, 41.108452, 42.437813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898418, 41.165733, 42.241695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206012, -0.975570, 0.076298,
		-0.467392, 0.166601, 0.868210,
		-0.859712, 0.143200, -0.490295,
		30.640505, 41.208694, 42.094608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780262, 40.666054, 42.694164>,  <31.242304, 41.108452, 42.437813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780262, 40.666054, 42.694164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573317, 40.729710, 42.357830>,  <30.449150, 40.767902, 42.156029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573317, 40.729710, 42.357830>,  <30.780262, 40.666054, 42.694164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573317, 40.729710, 42.357830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046014, -0.986309, -0.158358,
		-0.854527, -0.043238, 0.517604,
		-0.517364, 0.159138, -0.840838,
		30.418108, 40.777451, 42.105579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211105, 40.184067, 42.757538>,  <30.780262, 40.666054, 42.694164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211105, 40.184067, 42.757538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208023, 40.275700, 42.368187>,  <30.206175, 40.330681, 42.134575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208023, 40.275700, 42.368187>,  <30.211105, 40.184067, 42.757538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208023, 40.275700, 42.368187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113133, -0.967355, -0.226773,
		-0.993550, 0.108374, 0.033369,
		-0.007704, 0.229085, -0.973376,
		30.205711, 40.344425, 42.076176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633751, 39.900105, 42.476894>,  <30.211105, 40.184067, 42.757538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633751, 39.900105, 42.476894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900084, 39.930092, 42.179962>,  <30.059883, 39.948086, 42.001804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900084, 39.930092, 42.179962>,  <29.633751, 39.900105, 42.476894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900084, 39.930092, 42.179962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212127, -0.934858, -0.284681,
		-0.715312, 0.347017, -0.606554,
		0.665831, 0.074969, -0.742327,
		30.099833, 39.952583, 41.957264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341635, 39.596268, 41.941502>,  <29.633751, 39.900105, 42.476894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341635, 39.596268, 41.941502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714769, 39.589985, 41.797516>,  <29.938650, 39.586216, 41.711124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714769, 39.589985, 41.797516>,  <29.341635, 39.596268, 41.941502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714769, 39.589985, 41.797516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195053, -0.862007, -0.467866,
		-0.302940, 0.506653, -0.807174,
		0.932835, -0.015707, -0.359960,
		29.994619, 39.585274, 41.689529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302876, 39.102230, 41.366734>,  <29.341635, 39.596268, 41.941502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302876, 39.102230, 41.366734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695890, 39.157146, 41.416969>,  <29.931700, 39.190098, 41.447109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695890, 39.157146, 41.416969>,  <29.302876, 39.102230, 41.366734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695890, 39.157146, 41.416969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179606, -0.876134, -0.447361,
		0.048614, 0.462105, -0.885492,
		0.982537, 0.137291, 0.125589,
		29.990652, 39.198334, 41.454647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590040, 38.899708, 40.681099>,  <29.302876, 39.102230, 41.366734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590040, 38.899708, 40.681099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869381, 38.881538, 40.966824>,  <30.036985, 38.870636, 41.138260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869381, 38.881538, 40.966824>,  <29.590040, 38.899708, 40.681099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869381, 38.881538, 40.966824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261539, -0.912777, -0.313743,
		0.666261, 0.405923, -0.625558,
		0.698351, -0.045427, 0.714312,
		30.078886, 38.867908, 41.181118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210627, 38.613659, 40.279606>,  <29.590040, 38.899708, 40.681099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210627, 38.613659, 40.279606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266979, 38.561852, 40.672215>,  <30.300791, 38.530766, 40.907780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266979, 38.561852, 40.672215>,  <30.210627, 38.613659, 40.279606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266979, 38.561852, 40.672215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300640, -0.938992, -0.167062,
		0.943275, 0.318620, -0.093348,
		0.140882, -0.129521, 0.981517,
		30.309244, 38.522995, 40.966671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904257, 38.202648, 40.359600>,  <30.210627, 38.613659, 40.279606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904257, 38.202648, 40.359600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664427, 38.137558, 40.673042>,  <30.520529, 38.098503, 40.861107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664427, 38.137558, 40.673042>,  <30.904257, 38.202648, 40.359600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664427, 38.137558, 40.673042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029239, -0.982911, -0.181745,
		0.799785, -0.086058, 0.594086,
		-0.599574, -0.162727, 0.783601,
		30.484554, 38.088741, 40.908123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294094, 37.731129, 40.762608>,  <30.904257, 38.202648, 40.359600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294094, 37.731129, 40.762608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910410, 37.702644, 40.872044>,  <30.680201, 37.685555, 40.937706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910410, 37.702644, 40.872044>,  <31.294094, 37.731129, 40.762608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910410, 37.702644, 40.872044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012112, -0.977220, -0.211882,
		0.282442, -0.199925, 0.938220,
		-0.959208, -0.071208, 0.273586,
		30.622648, 37.681282, 40.954121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263765, 37.087524, 41.156776>,  <31.294094, 37.731129, 40.762608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263765, 37.087524, 41.156776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877707, 37.119404, 41.057060>,  <30.646072, 37.138531, 40.997231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877707, 37.119404, 41.057060>,  <31.263765, 37.087524, 41.156776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877707, 37.119404, 41.057060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035072, -0.904533, -0.424959,
		-0.259356, -0.418890, 0.870210,
		-0.965145, 0.079695, -0.249287,
		30.588163, 37.143314, 40.982273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976387, 36.318661, 41.160721>,  <31.263765, 37.087524, 41.156776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976387, 36.318661, 41.160721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716179, 36.522980, 40.935898>,  <30.560053, 36.645573, 40.801006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716179, 36.522980, 40.935898>,  <30.976387, 36.318661, 41.160721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716179, 36.522980, 40.935898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053045, -0.768793, -0.637294,
		-0.757631, -0.384761, 0.527214,
		-0.650524, 0.510799, -0.562051,
		30.521023, 36.676220, 40.767281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366505, 35.974285, 41.055809>,  <30.976387, 36.318661, 41.160721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366505, 35.974285, 41.055809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340288, 36.221699, 40.742599>,  <30.324558, 36.370148, 40.554672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340288, 36.221699, 40.742599>,  <30.366505, 35.974285, 41.055809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340288, 36.221699, 40.742599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048401, -0.785757, -0.616639,
		-0.996675, -0.002516, 0.081436,
		-0.065541, 0.618531, -0.783023,
		30.320625, 36.407257, 40.507694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906042, 35.565128, 40.539162>,  <30.366505, 35.974285, 41.055809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906042, 35.565128, 40.539162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068073, 35.864796, 40.329533>,  <30.165291, 36.044598, 40.203754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068073, 35.864796, 40.329533>,  <29.906042, 35.565128, 40.539162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068073, 35.864796, 40.329533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123759, -0.523003, -0.843298,
		-0.905868, 0.406459, -0.119139,
		0.405076, 0.749172, -0.524075,
		30.189596, 36.089546, 40.172310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449076, 35.720268, 39.972519>,  <29.906042, 35.565128, 40.539162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449076, 35.720268, 39.972519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793253, 35.870441, 39.834713>,  <29.999760, 35.960545, 39.752029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793253, 35.870441, 39.834713>,  <29.449076, 35.720268, 39.972519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793253, 35.870441, 39.834713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015844, -0.656081, -0.754524,
		-0.509301, 0.654684, -0.558571,
		0.860443, 0.375430, -0.344515,
		30.051386, 35.983070, 39.731358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380619, 35.858902, 39.226460>,  <29.449076, 35.720268, 39.972519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380619, 35.858902, 39.226460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772219, 35.859005, 39.308002>,  <30.007179, 35.859066, 39.356930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772219, 35.859005, 39.308002>,  <29.380619, 35.858902, 39.226460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772219, 35.859005, 39.308002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180494, -0.465959, -0.866201,
		0.094767, 0.884806, -0.456220,
		0.979000, 0.000258, 0.203860,
		30.065918, 35.859081, 39.369160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790037, 36.319355, 38.737911>,  <29.380619, 35.858902, 39.226460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790037, 36.319355, 38.737911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033337, 36.032970, 38.874985>,  <30.179316, 35.861137, 38.957230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033337, 36.032970, 38.874985>,  <29.790037, 36.319355, 38.737911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033337, 36.032970, 38.874985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021951, -0.416386, -0.908923,
		0.793444, 0.560372, -0.237550,
		0.608248, -0.715965, 0.342680,
		30.215811, 35.818180, 38.977787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353514, 36.203678, 38.238312>,  <29.790037, 36.319355, 38.737911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353514, 36.203678, 38.238312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296726, 35.868660, 38.449352>,  <30.262653, 35.667648, 38.575977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296726, 35.868660, 38.449352>,  <30.353514, 36.203678, 38.238312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296726, 35.868660, 38.449352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142912, -0.544761, -0.826324,
		0.979501, -0.041910, 0.197033,
		-0.141967, -0.837543, 0.527605,
		30.254137, 35.617397, 38.607635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643095, 35.803429, 37.751873>,  <30.353514, 36.203678, 38.238312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643095, 35.803429, 37.751873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484371, 35.557144, 38.024181>,  <30.389137, 35.409374, 38.187565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484371, 35.557144, 38.024181>,  <30.643095, 35.803429, 37.751873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484371, 35.557144, 38.024181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177300, -0.779103, -0.601301,
		0.900616, -0.117901, 0.418319,
		-0.396808, -0.615709, 0.680769,
		30.365328, 35.372433, 38.228413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065351, 35.214775, 37.718777>,  <30.643095, 35.803429, 37.751873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065351, 35.214775, 37.718777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737646, 35.067345, 37.894485>,  <30.541023, 34.978886, 37.999912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737646, 35.067345, 37.894485>,  <31.065351, 35.214775, 37.718777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737646, 35.067345, 37.894485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031119, -0.793510, -0.607761,
		0.572569, -0.484248, 0.661565,
		-0.819266, -0.368572, 0.439270,
		30.491867, 34.956772, 38.026268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224665, 34.497364, 38.018250>,  <31.065351, 35.214775, 37.718777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224665, 34.497364, 38.018250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833780, 34.537251, 37.943291>,  <30.599251, 34.561184, 37.898315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833780, 34.537251, 37.943291>,  <31.224665, 34.497364, 38.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833780, 34.537251, 37.943291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029256, -0.811116, -0.584153,
		-0.210252, -0.576322, 0.789713,
		-0.977209, 0.099716, -0.187400,
		30.540617, 34.567165, 37.887070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971739, 33.908810, 38.077015>,  <31.224665, 34.497364, 38.018250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971739, 33.908810, 38.077015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779934, 34.131596, 37.805763>,  <30.664850, 34.265266, 37.643013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779934, 34.131596, 37.805763>,  <30.971739, 33.908810, 38.077015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779934, 34.131596, 37.805763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189265, -0.688934, -0.699678,
		-0.856882, -0.463849, 0.224937,
		-0.479511, 0.556969, -0.678126,
		30.636080, 34.298687, 37.602325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374931, 33.551781, 37.707020>,  <30.971739, 33.908810, 38.077015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374931, 33.551781, 37.707020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514540, 33.846333, 37.475178>,  <30.598305, 34.023064, 37.336075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514540, 33.846333, 37.475178>,  <30.374931, 33.551781, 37.707020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514540, 33.846333, 37.475178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477690, -0.671907, -0.565998,
		-0.806224, -0.079324, -0.586268,
		0.349020, 0.736375, -0.579601,
		30.619246, 34.067245, 37.301296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311235, 33.220772, 37.069508>,  <30.374931, 33.551781, 37.707020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311235, 33.220772, 37.069508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570621, 33.524937, 37.083759>,  <30.726254, 33.707436, 37.092312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570621, 33.524937, 37.083759>,  <30.311235, 33.220772, 37.069508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570621, 33.524937, 37.083759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593960, -0.476133, -0.648466,
		-0.476133, 0.441674, -0.760409,
		0.648466, 0.760409, 0.035634,
		30.765162, 33.753059, 37.094448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526842, 33.350563, 36.395481>,  <30.311235, 33.220772, 37.069508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526842, 33.350563, 36.395481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815207, 33.458828, 36.650677>,  <30.988224, 33.523788, 36.803795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815207, 33.458828, 36.650677>,  <30.526842, 33.350563, 36.395481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815207, 33.458828, 36.650677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672791, -0.494183, -0.550578,
		0.166263, 0.826150, -0.538361,
		0.720909, 0.270663, 0.637991,
		31.031479, 33.540028, 36.842075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135527, 33.133263, 36.053822>,  <30.526842, 33.350563, 36.395481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135527, 33.133263, 36.053822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252848, 33.265469, 36.412651>,  <31.323240, 33.344791, 36.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252848, 33.265469, 36.412651>,  <31.135527, 33.133263, 36.053822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252848, 33.265469, 36.412651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789081, -0.613456, -0.031976,
		0.539746, 0.717241, -0.440727,
		0.293301, 0.330510, 0.897072,
		31.340837, 33.364620, 36.681774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893833, 33.243484, 36.073803>,  <31.135527, 33.133263, 36.053822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893833, 33.243484, 36.073803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786907, 33.197887, 36.456539>,  <31.722752, 33.170528, 36.686180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786907, 33.197887, 36.456539>,  <31.893833, 33.243484, 36.073803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786907, 33.197887, 36.456539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785034, -0.601600, 0.147647,
		0.558807, 0.790622, 0.250303,
		-0.267315, -0.113991, 0.956843,
		31.706713, 33.163689, 36.743591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438992, 33.350830, 36.568604>,  <31.893833, 33.243484, 36.073803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438992, 33.350830, 36.568604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626717, 33.010548, 36.663300>,  <32.739353, 32.806377, 36.720119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626717, 33.010548, 36.663300>,  <32.438992, 33.350830, 36.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626717, 33.010548, 36.663300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572833, 0.497340, 0.651549,
		-0.672017, -0.170166, 0.720719,
		0.469314, -0.850704, 0.236744,
		32.767509, 32.755337, 36.734322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315792, 33.169861, 37.271675>,  <32.438992, 33.350830, 36.568604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315792, 33.169861, 37.271675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663445, 33.014847, 37.148758>,  <32.872036, 32.921841, 37.075008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663445, 33.014847, 37.148758>,  <32.315792, 33.169861, 37.271675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663445, 33.014847, 37.148758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454810, 0.382136, 0.804438,
		-0.194316, -0.838923, 0.508379,
		0.869131, -0.387532, -0.307295,
		32.924183, 32.898586, 37.056568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655155, 32.665855, 37.761997>,  <32.315792, 33.169861, 37.271675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655155, 32.665855, 37.761997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946003, 32.835728, 37.546242>,  <33.120514, 32.937653, 37.416790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946003, 32.835728, 37.546242>,  <32.655155, 32.665855, 37.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946003, 32.835728, 37.546242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466701, 0.270429, 0.842056,
		0.503470, -0.864011, -0.001563,
		0.727123, 0.424679, -0.539388,
		33.164139, 32.963131, 37.384426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255795, 32.558735, 38.160282>,  <32.655155, 32.665855, 37.761997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255795, 32.558735, 38.160282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335960, 32.871872, 37.924656>,  <33.384060, 33.059753, 37.783279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335960, 32.871872, 37.924656>,  <33.255795, 32.558735, 38.160282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335960, 32.871872, 37.924656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510091, 0.429958, 0.744945,
		0.836445, -0.449774, -0.313150,
		0.200416, 0.782841, -0.589062,
		33.396084, 33.106724, 37.747936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933990, 32.750530, 38.216183>,  <33.255795, 32.558735, 38.160282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933990, 32.750530, 38.216183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797161, 33.093674, 38.062786>,  <33.715065, 33.299561, 37.970749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797161, 33.093674, 38.062786>,  <33.933990, 32.750530, 38.216183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797161, 33.093674, 38.062786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509741, 0.512249, 0.691205,
		0.789398, 0.040964, -0.612514,
		-0.342074, 0.857859, -0.383488,
		33.694538, 33.351032, 37.947739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506786, 33.230362, 38.263329>,  <33.933990, 32.750530, 38.216183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506786, 33.230362, 38.263329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206539, 33.485855, 38.195694>,  <34.026390, 33.639153, 38.155113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206539, 33.485855, 38.195694>,  <34.506786, 33.230362, 38.263329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206539, 33.485855, 38.195694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419678, 0.658550, 0.624645,
		0.510336, 0.397907, -0.762383,
		-0.750618, 0.638734, -0.169088,
		33.981354, 33.677475, 38.144966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800499, 33.995667, 38.164871>,  <34.506786, 33.230362, 38.263329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800499, 33.995667, 38.164871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428612, 34.010723, 38.311405>,  <34.205479, 34.019756, 38.399326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428612, 34.010723, 38.311405>,  <34.800499, 33.995667, 38.164871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428612, 34.010723, 38.311405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293330, 0.677134, 0.674868,
		-0.222657, 0.734897, -0.640586,
		-0.929721, 0.037639, 0.366336,
		34.149696, 34.022015, 38.421307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694752, 34.786701, 38.465996>,  <34.800499, 33.995667, 38.164871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694752, 34.786701, 38.465996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407066, 34.568546, 38.638176>,  <34.234455, 34.437653, 38.741482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407066, 34.568546, 38.638176>,  <34.694752, 34.786701, 38.465996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407066, 34.568546, 38.638176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002574, 0.621622, 0.783313,
		-0.694789, 0.562258, -0.448480,
		-0.719209, -0.545392, 0.430449,
		34.191303, 34.404930, 38.767311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186256, 35.350166, 38.651287>,  <34.694752, 34.786701, 38.465996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186256, 35.350166, 38.651287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128605, 35.017365, 38.865574>,  <34.094013, 34.817684, 38.994144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128605, 35.017365, 38.865574>,  <34.186256, 35.350166, 38.651287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128605, 35.017365, 38.865574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077587, 0.549204, 0.832079,
		-0.986513, 0.078360, -0.143708,
		-0.144127, -0.832007, 0.535717,
		34.085365, 34.767761, 39.026287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618107, 35.456257, 39.124275>,  <34.186256, 35.350166, 38.651287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618107, 35.456257, 39.124275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776844, 35.134472, 39.301071>,  <33.872086, 34.941402, 39.407150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776844, 35.134472, 39.301071>,  <33.618107, 35.456257, 39.124275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776844, 35.134472, 39.301071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193495, 0.397395, 0.897016,
		-0.897262, -0.441494, 0.002043,
		0.396839, -0.804463, 0.441994,
		33.895897, 34.893131, 39.433670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206825, 35.425995, 39.739140>,  <33.618107, 35.456257, 39.124275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206825, 35.425995, 39.739140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529591, 35.200996, 39.811245>,  <33.723248, 35.065998, 39.854507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529591, 35.200996, 39.811245>,  <33.206825, 35.425995, 39.739140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529591, 35.200996, 39.811245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078612, 0.200207, 0.976595,
		-0.585419, -0.802196, 0.117331,
		0.806911, -0.562494, 0.180267,
		33.771664, 35.032249, 39.865326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007835, 35.068409, 40.304062>,  <33.206825, 35.425995, 39.739140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007835, 35.068409, 40.304062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403477, 35.011185, 40.290157>,  <33.640862, 34.976849, 40.281815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403477, 35.011185, 40.290157>,  <33.007835, 35.068409, 40.304062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403477, 35.011185, 40.290157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037745, 0.018188, 0.999122,
		-0.142307, -0.989546, 0.023390,
		0.989103, -0.143065, -0.034762,
		33.700207, 34.968266, 40.279728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147690, 34.525452, 40.786873>,  <33.007835, 35.068409, 40.304062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147690, 34.525452, 40.786873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478893, 34.739517, 40.719929>,  <33.677616, 34.867954, 40.679764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478893, 34.739517, 40.719929>,  <33.147690, 34.525452, 40.786873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478893, 34.739517, 40.719929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068866, 0.199149, 0.977547,
		0.556474, -0.820939, 0.128042,
		0.828006, 0.535162, -0.167356,
		33.727295, 34.900066, 40.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640232, 34.262016, 41.236919>,  <33.147690, 34.525452, 40.786873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640232, 34.262016, 41.236919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733170, 34.639294, 41.141930>,  <33.788933, 34.865662, 41.084934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733170, 34.639294, 41.141930>,  <33.640232, 34.262016, 41.236919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733170, 34.639294, 41.141930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022398, 0.238904, 0.970785,
		0.972375, -0.230878, 0.034383,
		0.232347, 0.943197, -0.237476,
		33.802876, 34.922253, 41.070686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006855, 34.476952, 41.714859>,  <33.640232, 34.262016, 41.236919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006855, 34.476952, 41.714859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947289, 34.845951, 41.572411>,  <33.911549, 35.067352, 41.486942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947289, 34.845951, 41.572411>,  <34.006855, 34.476952, 41.714859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947289, 34.845951, 41.572411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044296, 0.353550, 0.934367,
		0.987857, 0.154919, -0.011787,
		-0.148918, 0.922498, -0.356119,
		33.902615, 35.122700, 41.465576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553036, 35.022781, 41.916660>,  <34.006855, 34.476952, 41.714859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553036, 35.022781, 41.916660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208710, 35.212086, 41.841801>,  <34.002113, 35.325668, 41.796886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208710, 35.212086, 41.841801>,  <34.553036, 35.022781, 41.916660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208710, 35.212086, 41.841801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031752, 0.317070, 0.947871,
		0.507932, 0.821881, -0.257911,
		-0.860812, 0.473264, -0.187146,
		33.950466, 35.354065, 41.785656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644833, 35.560268, 42.290794>,  <34.553036, 35.022781, 41.916660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644833, 35.560268, 42.290794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250622, 35.554626, 42.223228>,  <34.014095, 35.551239, 42.182690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250622, 35.554626, 42.223228>,  <34.644833, 35.560268, 42.290794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250622, 35.554626, 42.223228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162957, 0.353103, 0.921283,
		0.046646, 0.935478, -0.350293,
		-0.985530, -0.014109, -0.168914,
		33.954964, 35.550392, 42.172554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452694, 36.223568, 42.437294>,  <34.644833, 35.560268, 42.290794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452694, 36.223568, 42.437294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150967, 35.961777, 42.457928>,  <33.969929, 35.804703, 42.470310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150967, 35.961777, 42.457928>,  <34.452694, 36.223568, 42.437294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150967, 35.961777, 42.457928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046857, 0.132049, 0.990135,
		-0.654835, 0.744459, -0.130274,
		-0.754317, -0.654480, 0.051588,
		33.924671, 35.765434, 42.473404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158962, 36.448879, 42.986282>,  <34.452694, 36.223568, 42.437294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158962, 36.448879, 42.986282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941341, 36.115204, 42.950203>,  <33.810768, 35.914997, 42.928555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941341, 36.115204, 42.950203>,  <34.158962, 36.448879, 42.986282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941341, 36.115204, 42.950203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314074, 0.102784, 0.943818,
		-0.778050, 0.541819, -0.317917,
		-0.544055, -0.834187, -0.090200,
		33.778126, 35.864948, 42.923141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473934, 36.653454, 43.162117>,  <34.158962, 36.448879, 42.986282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473934, 36.653454, 43.162117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538353, 36.263500, 43.223637>,  <33.577003, 36.029526, 43.260548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538353, 36.263500, 43.223637>,  <33.473934, 36.653454, 43.162117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538353, 36.263500, 43.223637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311433, 0.097674, 0.945235,
		-0.936521, -0.200130, -0.287882,
		0.161051, -0.974889, 0.153801,
		33.586670, 35.971035, 43.269775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971821, 36.495129, 43.565899>,  <33.473934, 36.653454, 43.162117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971821, 36.495129, 43.565899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218094, 36.186520, 43.630016>,  <33.365856, 36.001354, 43.668488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218094, 36.186520, 43.630016>,  <32.971821, 36.495129, 43.565899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218094, 36.186520, 43.630016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227714, 0.020548, 0.973511,
		-0.754378, -0.635872, -0.163035,
		0.615679, -0.771520, 0.160298,
		33.402798, 35.955063, 43.678104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555683, 36.063011, 43.980244>,  <32.971821, 36.495129, 43.565899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555683, 36.063011, 43.980244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934498, 35.953419, 44.047241>,  <33.161785, 35.887665, 44.087440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934498, 35.953419, 44.047241>,  <32.555683, 36.063011, 43.980244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934498, 35.953419, 44.047241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135713, 0.131244, 0.982017,
		-0.291038, -0.952738, 0.087111,
		0.947037, -0.273982, 0.167495,
		33.218609, 35.871223, 44.097488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542011, 35.763760, 44.625153>,  <32.555683, 36.063011, 43.980244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542011, 35.763760, 44.625153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938862, 35.808491, 44.602570>,  <33.176971, 35.835327, 44.589020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938862, 35.808491, 44.602570>,  <32.542011, 35.763760, 44.625153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938862, 35.808491, 44.602570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043207, 0.117582, 0.992123,
		0.117582, -0.986747, 0.111824,
		-0.992123, -0.111824, 0.056460,
		33.236500, 35.842037, 44.585632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807491, 35.477043, 45.259373>,  <32.542011, 35.763760, 44.625153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807491, 35.477043, 45.259373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070553, 35.752857, 45.138031>,  <33.228390, 35.918346, 45.065228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070553, 35.752857, 45.138031>,  <32.807491, 35.477043, 45.259373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070553, 35.752857, 45.138031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035668, 0.373738, 0.926848,
		0.752473, -0.620368, 0.221197,
		0.657656, 0.689539, -0.303355,
		33.267849, 35.959721, 45.047024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322453, 35.566856, 45.813244>,  <32.807491, 35.477043, 45.259373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322453, 35.566856, 45.813244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320454, 35.909458, 45.606796>,  <33.319252, 36.115017, 45.482925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320454, 35.909458, 45.606796>,  <33.322453, 35.566856, 45.813244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320454, 35.909458, 45.606796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236705, 0.502475, 0.831559,
		0.971569, -0.118010, -0.205251,
		-0.005002, 0.856501, -0.516122,
		33.318954, 36.166409, 45.451962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049141, 35.917343, 45.931961>,  <33.322453, 35.566856, 45.813244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049141, 35.917343, 45.931961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799854, 36.215408, 45.837017>,  <33.650284, 36.394245, 45.780048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799854, 36.215408, 45.837017>,  <34.049141, 35.917343, 45.931961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799854, 36.215408, 45.837017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345340, 0.534536, 0.771370,
		0.701674, 0.398757, -0.590463,
		-0.623213, 0.745160, -0.237363,
		33.612892, 36.438957, 45.765808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435154, 36.596119, 45.985394>,  <34.049141, 35.917343, 45.931961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435154, 36.596119, 45.985394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042473, 36.667828, 46.011093>,  <33.806866, 36.710854, 46.026512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042473, 36.667828, 46.011093>,  <34.435154, 36.596119, 45.985394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042473, 36.667828, 46.011093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139735, 0.448877, 0.882600,
		0.129390, 0.875425, -0.465714,
		-0.981699, 0.179276, 0.064247,
		33.747963, 36.721611, 46.030369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517624, 37.088669, 46.449226>,  <34.435154, 36.596119, 45.985394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517624, 37.088669, 46.449226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129238, 36.993988, 46.435383>,  <33.896206, 36.937180, 46.427078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129238, 36.993988, 46.435383>,  <34.517624, 37.088669, 46.449226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129238, 36.993988, 46.435383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131835, 0.408758, 0.903071,
		-0.199614, 0.881413, -0.428095,
		-0.970966, -0.236703, -0.034607,
		33.837948, 36.922977, 46.424999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161423, 37.681698, 46.450985>,  <34.517624, 37.088669, 46.449226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161423, 37.681698, 46.450985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973820, 37.381153, 46.636665>,  <33.861259, 37.200825, 46.748074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973820, 37.381153, 46.636665>,  <34.161423, 37.681698, 46.450985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973820, 37.381153, 46.636665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010474, 0.530292, 0.847750,
		-0.883132, 0.392739, -0.256580,
		-0.469007, -0.751363, 0.464205,
		33.833118, 37.155743, 46.775928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714508, 38.008694, 46.859581>,  <34.161423, 37.681698, 46.450985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714508, 38.008694, 46.859581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670769, 37.642075, 47.013451>,  <33.644527, 37.422104, 47.105774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670769, 37.642075, 47.013451>,  <33.714508, 38.008694, 46.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670769, 37.642075, 47.013451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023887, 0.389309, 0.920797,
		-0.993717, 0.091497, -0.064463,
		-0.109346, -0.916551, 0.384677,
		33.637966, 37.367107, 47.128853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962872, 37.970154, 47.138752>,  <33.714508, 38.008694, 46.859581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962872, 37.970154, 47.138752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210876, 37.708900, 47.312653>,  <33.359680, 37.552147, 47.416992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210876, 37.708900, 47.312653>,  <32.962872, 37.970154, 47.138752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210876, 37.708900, 47.312653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130990, 0.460161, 0.878119,
		-0.773583, -0.601389, 0.199750,
		0.620008, -0.653133, 0.434749,
		33.396877, 37.512962, 47.443077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647861, 37.684505, 47.727203>,  <32.962872, 37.970154, 47.138752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647861, 37.684505, 47.727203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036541, 37.611546, 47.787251>,  <33.269749, 37.567772, 47.823280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036541, 37.611546, 47.787251>,  <32.647861, 37.684505, 47.727203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036541, 37.611546, 47.787251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113872, 0.195109, 0.974149,
		-0.206970, -0.963672, 0.168817,
		0.971698, -0.182396, 0.150117,
		33.328049, 37.556828, 47.832287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607376, 37.454254, 48.401974>,  <32.647861, 37.684505, 47.727203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607376, 37.454254, 48.401974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986927, 37.554295, 48.324947>,  <33.214657, 37.614319, 48.278732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986927, 37.554295, 48.324947>,  <32.607376, 37.454254, 48.401974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986927, 37.554295, 48.324947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073426, 0.418443, 0.905270,
		0.306991, -0.873128, 0.378686,
		0.948876, 0.250105, -0.192569,
		33.271591, 37.629326, 48.267178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961197, 37.217712, 48.914299>,  <32.607376, 37.454254, 48.401974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961197, 37.217712, 48.914299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202030, 37.501266, 48.767345>,  <33.346531, 37.671398, 48.679173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202030, 37.501266, 48.767345>,  <32.961197, 37.217712, 48.914299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202030, 37.501266, 48.767345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030893, 0.480470, 0.876467,
		0.797833, -0.516359, 0.311184,
		0.602086, 0.708888, -0.367384,
		33.382656, 37.713932, 48.657131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556976, 37.338902, 49.155434>,  <32.961197, 37.217712, 48.914299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556976, 37.338902, 49.155434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522175, 37.719841, 49.038498>,  <33.501293, 37.948406, 48.968338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522175, 37.719841, 49.038498>,  <33.556976, 37.338902, 49.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522175, 37.719841, 49.038498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022996, 0.295294, 0.955130,
		0.995943, 0.076376, -0.047592,
		-0.087003, 0.952349, -0.292340,
		33.496075, 38.005547, 48.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151634, 37.656307, 49.462299>,  <33.556976, 37.338902, 49.155434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151634, 37.656307, 49.462299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878174, 37.933804, 49.371655>,  <33.714100, 38.100300, 49.317268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878174, 37.933804, 49.371655>,  <34.151634, 37.656307, 49.462299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878174, 37.933804, 49.371655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114377, 0.408522, 0.905554,
		0.720794, 0.593160, -0.358632,
		-0.683648, 0.693737, -0.226617,
		33.673080, 38.141926, 49.303669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444748, 38.274029, 49.661942>,  <34.151634, 37.656307, 49.462299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444748, 38.274029, 49.661942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056225, 38.365688, 49.636452>,  <33.823112, 38.420685, 49.621159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056225, 38.365688, 49.636452>,  <34.444748, 38.274029, 49.661942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056225, 38.365688, 49.636452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044175, 0.437082, 0.898336,
		0.233703, 0.869742, -0.434662,
		-0.971304, 0.229145, -0.063727,
		33.764835, 38.434433, 49.617332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331993, 38.982380, 50.055450>,  <34.444748, 38.274029, 49.661942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331993, 38.982380, 50.055450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978214, 38.796490, 50.038574>,  <33.765945, 38.684956, 50.028450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978214, 38.796490, 50.038574>,  <34.331993, 38.982380, 50.055450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978214, 38.796490, 50.038574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076873, 0.055935, 0.995471,
		-0.460262, 0.883686, -0.085197,
		-0.884449, -0.464726, -0.042186,
		33.712879, 38.657070, 50.025917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813560, 39.418312, 50.454292>,  <34.331993, 38.982380, 50.055450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813560, 39.418312, 50.454292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686913, 39.038902, 50.451263>,  <33.610924, 38.811256, 50.449444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686913, 39.038902, 50.451263>,  <33.813560, 39.418312, 50.454292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686913, 39.038902, 50.451263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282055, 0.086521, 0.955489,
		-0.905646, 0.304666, -0.294929,
		-0.316623, -0.948521, -0.007576,
		33.591927, 38.754345, 50.448990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309959, 39.425575, 50.912235>,  <33.813560, 39.418312, 50.454292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309959, 39.425575, 50.912235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380657, 39.032619, 50.888016>,  <33.423077, 38.796844, 50.873486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380657, 39.032619, 50.888016>,  <33.309959, 39.425575, 50.912235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380657, 39.032619, 50.888016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284739, -0.109920, 0.952282,
		-0.942171, -0.151067, -0.299154,
		0.176741, -0.982393, -0.060549,
		33.433678, 38.737900, 50.869850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719536, 39.069382, 51.057396>,  <33.309959, 39.425575, 50.912235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719536, 39.069382, 51.057396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045921, 38.860462, 51.156513>,  <33.241753, 38.735111, 51.215984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045921, 38.860462, 51.156513>,  <32.719536, 39.069382, 51.057396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045921, 38.860462, 51.156513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400767, -0.202156, 0.893599,
		-0.416634, -0.828454, -0.374273,
		0.815967, -0.522300, 0.247792,
		33.290710, 38.703773, 51.230850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596008, 38.355133, 51.151321>,  <32.719536, 39.069382, 51.057396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596008, 38.355133, 51.151321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836605, 38.550110, 51.404495>,  <32.980965, 38.667095, 51.556400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836605, 38.550110, 51.404495>,  <32.596008, 38.355133, 51.151321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836605, 38.550110, 51.404495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478248, -0.414913, 0.774032,
		0.639907, -0.768276, -0.016451,
		0.601496, 0.487441, 0.632933,
		33.017056, 38.696342, 51.594376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874737, 37.815208, 51.556412>,  <32.596008, 38.355133, 51.151321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874737, 37.815208, 51.556412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822468, 38.172691, 51.728088>,  <32.791107, 38.387180, 51.831097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822468, 38.172691, 51.728088>,  <32.874737, 37.815208, 51.556412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822468, 38.172691, 51.728088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633060, -0.408377, 0.657619,
		0.762993, -0.185772, 0.619136,
		-0.130674, 0.893709, 0.429194,
		32.783264, 38.440804, 51.856846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092194, 37.830158, 52.291725>,  <32.874737, 37.815208, 51.556412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092194, 37.830158, 52.291725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793587, 38.084534, 52.213463>,  <32.614422, 38.237160, 52.166504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793587, 38.084534, 52.213463>,  <33.092194, 37.830158, 52.291725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793587, 38.084534, 52.213463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573611, -0.466116, 0.673577,
		0.337158, 0.615071, 0.712750,
		-0.746522, 0.635943, -0.195657,
		32.569630, 38.275318, 52.154766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343414, 37.187214, 51.862045>,  <33.092194, 37.830158, 52.291725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343414, 37.187214, 51.862045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531609, 36.843414, 51.782139>,  <33.644524, 36.637135, 51.734196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531609, 36.843414, 51.782139>,  <33.343414, 37.187214, 51.862045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531609, 36.843414, 51.782139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073686, 0.187334, -0.979529,
		0.879326, 0.475573, 0.024805,
		0.470485, -0.859498, -0.199771,
		33.672752, 36.585564, 51.722206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008514, 36.591133, 51.894905>,  <33.343414, 37.187214, 51.862045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008514, 36.591133, 51.894905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851929, 36.330006, 52.154316>,  <32.757977, 36.173328, 52.309963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851929, 36.330006, 52.154316>,  <33.008514, 36.591133, 51.894905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851929, 36.330006, 52.154316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015006, -0.709205, -0.704842,
		0.920071, -0.266190, 0.287425,
		-0.391465, -0.652818, 0.648525,
		32.734489, 36.134159, 52.348873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351250, 35.982620, 51.954723>,  <33.008514, 36.591133, 51.894905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351250, 35.982620, 51.954723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979412, 35.868465, 52.048031>,  <32.756310, 35.799973, 52.104015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979412, 35.868465, 52.048031>,  <33.351250, 35.982620, 51.954723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979412, 35.868465, 52.048031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029358, -0.688183, -0.724943,
		0.367416, -0.667054, 0.648108,
		-0.929593, -0.285383, 0.233267,
		32.700535, 35.782852, 52.118011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431164, 36.290131, 52.768017>,  <33.351250, 35.982620, 51.954723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431164, 36.290131, 52.768017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752472, 36.249126, 53.002705>,  <33.945259, 36.224522, 53.143517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752472, 36.249126, 53.002705>,  <33.431164, 36.290131, 52.768017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752472, 36.249126, 53.002705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544193, -0.274065, -0.792933,
		0.242086, 0.956232, -0.164363,
		0.803273, -0.102513, 0.586722,
		33.993454, 36.218372, 53.178722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943005, 36.835426, 52.612183>,  <33.431164, 36.290131, 52.768017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943005, 36.835426, 52.612183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087696, 36.485043, 52.739841>,  <34.174511, 36.274815, 52.816437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087696, 36.485043, 52.739841>,  <33.943005, 36.835426, 52.612183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087696, 36.485043, 52.739841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338668, -0.195477, -0.920376,
		0.868596, 0.441007, 0.225950,
		0.361724, -0.875957, 0.319146,
		34.196213, 36.222256, 52.835587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653343, 36.741856, 52.412941>,  <33.943005, 36.835426, 52.612183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653343, 36.741856, 52.412941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518711, 36.366722, 52.446838>,  <34.437931, 36.141644, 52.467178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518711, 36.366722, 52.446838>,  <34.653343, 36.741856, 52.412941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518711, 36.366722, 52.446838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112012, -0.129232, -0.985267,
		0.934967, -0.322134, 0.148546,
		-0.336585, -0.937832, 0.084745,
		34.417736, 36.085373, 52.472263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135277, 36.094852, 52.464256>,  <34.653343, 36.741856, 52.412941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135277, 36.094852, 52.464256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791363, 36.056213, 52.263683>,  <34.585014, 36.033031, 52.143341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791363, 36.056213, 52.263683>,  <35.135277, 36.094852, 52.464256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791363, 36.056213, 52.263683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508779, -0.078043, -0.857352,
		0.043685, -0.992259, 0.116247,
		-0.859788, -0.096598, -0.501432,
		34.533428, 36.027233, 52.113255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214455, 35.687950, 51.818344>,  <35.135277, 36.094852, 52.464256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214455, 35.687950, 51.818344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862816, 35.853172, 51.723198>,  <34.651833, 35.952305, 51.666111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862816, 35.853172, 51.723198>,  <35.214455, 35.687950, 51.818344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862816, 35.853172, 51.723198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222228, -0.086308, -0.971167,
		-0.421672, -0.906609, -0.015919,
		-0.879094, 0.413051, -0.237868,
		34.599087, 35.977089, 51.651836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724743, 35.240849, 51.383854>,  <35.214455, 35.687950, 51.818344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724743, 35.240849, 51.383854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718792, 35.635872, 51.321239>,  <34.715221, 35.872887, 51.283672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718792, 35.635872, 51.321239>,  <34.724743, 35.240849, 51.383854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718792, 35.635872, 51.321239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255745, -0.147584, -0.955413,
		-0.966630, -0.054248, -0.250367,
		-0.014879, 0.987561, -0.156533,
		34.714329, 35.932140, 51.274281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380165, 35.418854, 50.712955>,  <34.724743, 35.240849, 51.383854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380165, 35.418854, 50.712955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611267, 35.726479, 50.822308>,  <34.749928, 35.911057, 50.887917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611267, 35.726479, 50.822308>,  <34.380165, 35.418854, 50.712955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611267, 35.726479, 50.822308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262627, 0.141960, -0.954398,
		-0.772804, 0.623204, -0.119960,
		0.577755, 0.769067, 0.273377,
		34.784595, 35.957199, 50.904320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331955, 35.851044, 50.227840>,  <34.380165, 35.418854, 50.712955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331955, 35.851044, 50.227840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663036, 35.985222, 50.407787>,  <34.861687, 36.065731, 50.515755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663036, 35.985222, 50.407787>,  <34.331955, 35.851044, 50.227840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663036, 35.985222, 50.407787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440003, 0.109610, -0.891282,
		-0.348288, 0.935661, -0.056874,
		0.827703, 0.335448, 0.449870,
		34.911346, 36.085857, 50.542747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427269, 36.645809, 50.062977>,  <34.331955, 35.851044, 50.227840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427269, 36.645809, 50.062977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776104, 36.477123, 50.162273>,  <34.985405, 36.375912, 50.221851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776104, 36.477123, 50.162273>,  <34.427269, 36.645809, 50.062977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776104, 36.477123, 50.162273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375015, 0.250050, -0.892658,
		0.314372, 0.871570, 0.376213,
		0.872086, -0.421713, 0.248243,
		35.037731, 36.350609, 50.236748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909916, 37.075729, 49.807575>,  <34.427269, 36.645809, 50.062977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909916, 37.075729, 49.807575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134373, 36.748417, 49.857414>,  <35.269047, 36.552029, 49.887318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134373, 36.748417, 49.857414>,  <34.909916, 37.075729, 49.807575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134373, 36.748417, 49.857414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530675, 0.240145, -0.812843,
		0.635215, 0.522245, 0.569000,
		0.561146, -0.818285, 0.124599,
		35.302715, 36.502930, 49.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567501, 37.294586, 49.640419>,  <34.909916, 37.075729, 49.807575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567501, 37.294586, 49.640419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618317, 36.898659, 49.614719>,  <35.648808, 36.661102, 49.599300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618317, 36.898659, 49.614719>,  <35.567501, 37.294586, 49.640419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618317, 36.898659, 49.614719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552670, 0.124421, -0.824060,
		0.823660, 0.069184, 0.562848,
		0.127042, -0.989815, -0.064245,
		35.656429, 36.601715, 49.595448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225914, 37.172581, 49.624466>,  <35.567501, 37.294586, 49.640419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225914, 37.172581, 49.624466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088467, 36.831566, 49.466927>,  <36.006001, 36.626957, 49.372402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088467, 36.831566, 49.466927>,  <36.225914, 37.172581, 49.624466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088467, 36.831566, 49.466927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499227, 0.189392, -0.845519,
		0.795425, -0.487152, 0.360530,
		-0.343615, -0.852534, -0.393847,
		35.985382, 36.575806, 49.348774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725925, 37.067020, 49.143688>,  <36.225914, 37.172581, 49.624466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725925, 37.067020, 49.143688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479866, 36.767181, 49.045952>,  <36.332230, 36.587280, 48.987309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479866, 36.767181, 49.045952>,  <36.725925, 37.067020, 49.143688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479866, 36.767181, 49.045952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211668, 0.141516, -0.967042,
		0.759468, -0.646591, 0.071612,
		-0.615147, -0.749595, -0.244339,
		36.295322, 36.542301, 48.972649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113026, 36.620529, 48.615273>,  <36.725925, 37.067020, 49.143688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113026, 36.620529, 48.615273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721462, 36.563072, 48.557159>,  <36.486523, 36.528599, 48.522293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721462, 36.563072, 48.557159>,  <37.113026, 36.620529, 48.615273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721462, 36.563072, 48.557159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127640, 0.125242, -0.983881,
		0.159529, -0.981672, -0.104265,
		-0.978907, -0.143649, -0.145280,
		36.427792, 36.519981, 48.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039745, 36.155319, 48.018970>,  <37.113026, 36.620529, 48.615273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039745, 36.155319, 48.018970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687019, 36.342701, 48.040726>,  <36.475384, 36.455128, 48.053780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687019, 36.342701, 48.040726>,  <37.039745, 36.155319, 48.018970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687019, 36.342701, 48.040726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016023, 0.145021, -0.989299,
		-0.471325, -0.871506, -0.135387,
		-0.881814, 0.468451, 0.054388,
		36.422474, 36.483234, 48.057041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620762, 35.785610, 47.545506>,  <37.039745, 36.155319, 48.018970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620762, 35.785610, 47.545506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432243, 36.137066, 47.576172>,  <36.319134, 36.347939, 47.594574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432243, 36.137066, 47.576172>,  <36.620762, 35.785610, 47.545506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432243, 36.137066, 47.576172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218296, -0.031983, -0.975358,
		-0.854534, -0.476417, 0.206877,
		-0.471294, 0.878638, 0.076670,
		36.290855, 36.400658, 47.599174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010899, 35.745518, 47.195576>,  <36.620762, 35.785610, 47.545506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010899, 35.745518, 47.195576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092991, 36.136982, 47.199532>,  <36.142246, 36.371861, 47.201904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092991, 36.136982, 47.199532>,  <36.010899, 35.745518, 47.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092991, 36.136982, 47.199532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109378, 0.032981, -0.993453,
		-0.972582, 0.202809, 0.113813,
		0.205235, 0.978663, 0.009894,
		36.154560, 36.430580, 47.202499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508839, 36.122349, 46.838516>,  <36.010899, 35.745518, 47.195576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508839, 36.122349, 46.838516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854958, 36.319054, 46.799671>,  <36.062630, 36.437077, 46.776363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854958, 36.319054, 46.799671>,  <35.508839, 36.122349, 46.838516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854958, 36.319054, 46.799671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080086, -0.055627, -0.995234,
		-0.494824, 0.868949, -0.008750,
		0.865295, 0.491765, -0.097117,
		36.114548, 36.466583, 46.770535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392105, 36.610649, 46.200497>,  <35.508839, 36.122349, 46.838516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392105, 36.610649, 46.200497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784248, 36.551582, 46.252792>,  <36.019535, 36.516144, 46.284168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784248, 36.551582, 46.252792>,  <35.392105, 36.610649, 46.200497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784248, 36.551582, 46.252792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119579, -0.082096, -0.989425,
		0.156838, 0.985624, -0.062826,
		0.980358, -0.147667, 0.130735,
		36.078358, 36.507282, 46.292011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729427, 37.090733, 45.729477>,  <35.392105, 36.610649, 46.200497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729427, 37.090733, 45.729477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004833, 36.811283, 45.807323>,  <36.170078, 36.643612, 45.854031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004833, 36.811283, 45.807323>,  <35.729427, 37.090733, 45.729477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004833, 36.811283, 45.807323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244246, -0.029302, -0.969270,
		0.682857, 0.714890, 0.150461,
		0.688513, -0.698622, 0.194618,
		36.211388, 36.601696, 45.865707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347271, 37.324528, 45.377537>,  <35.729427, 37.090733, 45.729477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347271, 37.324528, 45.377537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397278, 36.932125, 45.436852>,  <36.427280, 36.696682, 45.472439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397278, 36.932125, 45.436852>,  <36.347271, 37.324528, 45.377537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397278, 36.932125, 45.436852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270733, -0.110054, -0.956343,
		0.954502, 0.159705, 0.251833,
		0.125018, -0.981011, 0.148285,
		36.434784, 36.637821, 45.481339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970856, 37.118408, 45.031147>,  <36.347271, 37.324528, 45.377537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970856, 37.118408, 45.031147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760399, 36.780495, 45.070152>,  <36.634125, 36.577747, 45.093555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760399, 36.780495, 45.070152>,  <36.970856, 37.118408, 45.031147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760399, 36.780495, 45.070152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187221, -0.226926, -0.955747,
		0.829529, -0.484607, 0.277558,
		-0.526147, -0.844784, 0.097513,
		36.602554, 36.527058, 45.099407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347359, 36.540546, 44.707939>,  <36.970856, 37.118408, 45.031147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347359, 36.540546, 44.707939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966328, 36.419125, 44.716358>,  <36.737709, 36.346272, 44.721409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966328, 36.419125, 44.716358>,  <37.347359, 36.540546, 44.707939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966328, 36.419125, 44.716358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097166, -0.369002, -0.924335,
		0.288353, -0.878460, 0.381000,
		-0.952581, -0.303555, 0.021047,
		36.680553, 36.328056, 44.722672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427452, 35.983540, 44.365891>,  <37.347359, 36.540546, 44.707939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427452, 35.983540, 44.365891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031361, 36.038136, 44.354485>,  <36.793705, 36.070892, 44.347641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031361, 36.038136, 44.354485>,  <37.427452, 35.983540, 44.365891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031361, 36.038136, 44.354485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069648, -0.661335, -0.746850,
		-0.120800, -0.737568, 0.664380,
		-0.990230, 0.136492, -0.028519,
		36.734291, 36.079082, 44.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253639, 35.352428, 44.266068>,  <37.427452, 35.983540, 44.365891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253639, 35.352428, 44.266068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923840, 35.548668, 44.153267>,  <36.725960, 35.666412, 44.085587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923840, 35.548668, 44.153267>,  <37.253639, 35.352428, 44.266068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923840, 35.548668, 44.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102397, -0.619473, -0.778311,
		-0.556525, -0.612839, 0.560989,
		-0.824496, 0.490593, -0.281999,
		36.676491, 35.695847, 44.068668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894489, 34.914272, 43.851940>,  <37.253639, 35.352428, 44.266068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894489, 34.914272, 43.851940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734634, 35.263691, 43.740799>,  <36.638721, 35.473343, 43.674114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734634, 35.263691, 43.740799>,  <36.894489, 34.914272, 43.851940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734634, 35.263691, 43.740799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132485, -0.354975, -0.925441,
		-0.907049, -0.333030, 0.257593,
		-0.399638, 0.873547, -0.277858,
		36.614742, 35.525757, 43.657440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354794, 34.708542, 43.617092>,  <36.894489, 34.914272, 43.851940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354794, 34.708542, 43.617092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376842, 35.069530, 43.446213>,  <36.390072, 35.286125, 43.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376842, 35.069530, 43.446213>,  <36.354794, 34.708542, 43.617092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376842, 35.069530, 43.446213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102204, -0.420505, -0.901515,
		-0.993235, 0.093354, 0.069058,
		0.055121, 0.902475, -0.427201,
		36.393379, 35.340275, 43.318054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780926, 34.795925, 43.144348>,  <36.354794, 34.708542, 43.617092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780926, 34.795925, 43.144348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083515, 35.024849, 43.017723>,  <36.265068, 35.162205, 42.941750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083515, 35.024849, 43.017723>,  <35.780926, 34.795925, 43.144348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083515, 35.024849, 43.017723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153312, -0.315360, -0.936506,
		-0.635805, 0.756972, -0.150818,
		0.756471, 0.572313, -0.316560,
		36.310455, 35.196545, 42.922756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491306, 34.995785, 42.533989>,  <35.780926, 34.795925, 43.144348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491306, 34.995785, 42.533989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879883, 35.090416, 42.526707>,  <36.113029, 35.147194, 42.522339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879883, 35.090416, 42.526707>,  <35.491306, 34.995785, 42.533989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879883, 35.090416, 42.526707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052063, -0.287363, -0.956406,
		-0.231496, 0.928145, -0.291474,
		0.971442, 0.236579, -0.018201,
		36.171314, 35.161388, 42.521248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524090, 35.303200, 41.965599>,  <35.491306, 34.995785, 42.533989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524090, 35.303200, 41.965599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897964, 35.193481, 42.056034>,  <36.122292, 35.127651, 42.110294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897964, 35.193481, 42.056034>,  <35.524090, 35.303200, 41.965599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897964, 35.193481, 42.056034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149671, -0.273206, -0.950240,
		0.322415, 0.922020, -0.214309,
		0.934691, -0.274296, 0.226085,
		36.178371, 35.111191, 42.123859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863995, 35.407803, 41.306141>,  <35.524090, 35.303200, 41.965599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863995, 35.407803, 41.306141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129421, 35.179695, 41.499832>,  <36.288677, 35.042831, 41.616047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129421, 35.179695, 41.499832>,  <35.863995, 35.407803, 41.306141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129421, 35.179695, 41.499832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347060, -0.338749, -0.874527,
		0.662745, 0.748363, -0.026866,
		0.663565, -0.570265, 0.484231,
		36.328491, 35.008617, 41.645103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523457, 35.581219, 40.910210>,  <35.863995, 35.407803, 41.306141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523457, 35.581219, 40.910210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575146, 35.250488, 41.129173>,  <36.606159, 35.052048, 41.260551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575146, 35.250488, 41.129173>,  <36.523457, 35.581219, 40.910210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575146, 35.250488, 41.129173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419099, -0.454773, -0.785836,
		0.898698, 0.330965, 0.287757,
		0.129220, -0.826828, 0.547411,
		36.613911, 35.002441, 41.293396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158905, 35.401505, 40.933735>,  <36.523457, 35.581219, 40.910210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158905, 35.401505, 40.933735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965340, 35.053867, 40.974735>,  <36.849201, 34.845284, 40.999336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965340, 35.053867, 40.974735>,  <37.158905, 35.401505, 40.933735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965340, 35.053867, 40.974735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419417, -0.333122, -0.844464,
		0.768064, -0.365654, 0.525714,
		-0.483908, -0.869096, 0.102497,
		36.820168, 34.793140, 41.005486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613007, 34.908875, 40.598671>,  <37.158905, 35.401505, 40.933735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613007, 34.908875, 40.598671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270851, 34.706398, 40.642628>,  <37.065559, 34.584911, 40.669003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270851, 34.706398, 40.642628>,  <37.613007, 34.908875, 40.598671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270851, 34.706398, 40.642628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188816, -0.502268, -0.843846,
		0.482347, -0.701066, 0.525212,
		-0.855388, -0.506195, 0.109895,
		37.014236, 34.554539, 40.675594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822323, 34.305050, 40.499149>,  <37.613007, 34.908875, 40.598671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822323, 34.305050, 40.499149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429104, 34.263248, 40.438892>,  <37.193172, 34.238167, 40.402737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429104, 34.263248, 40.438892>,  <37.822323, 34.305050, 40.499149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429104, 34.263248, 40.438892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182747, -0.492208, -0.851078,
		0.014794, -0.864181, 0.502963,
		-0.983049, -0.104506, -0.150644,
		37.134190, 34.231895, 40.393700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665298, 33.581020, 40.441975>,  <37.822323, 34.305050, 40.499149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665298, 33.581020, 40.441975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374924, 33.783943, 40.256218>,  <37.200699, 33.905697, 40.144764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374924, 33.783943, 40.256218>,  <37.665298, 33.581020, 40.441975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374924, 33.783943, 40.256218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223268, -0.464824, -0.856790,
		-0.650517, -0.725656, 0.224165,
		-0.725933, 0.507308, -0.464392,
		37.157143, 33.936134, 40.116901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448425, 33.084873, 40.015423>,  <37.665298, 33.581020, 40.441975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448425, 33.084873, 40.015423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324703, 33.423965, 39.843056>,  <37.250469, 33.627419, 39.739635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324703, 33.423965, 39.843056>,  <37.448425, 33.084873, 40.015423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324703, 33.423965, 39.843056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356325, -0.316807, -0.879014,
		-0.881682, -0.425430, -0.204077,
		-0.309306, 0.847728, -0.430914,
		37.231911, 33.678284, 39.713783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028603, 32.841419, 39.522343>,  <37.448425, 33.084873, 40.015423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028603, 32.841419, 39.522343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105984, 33.214310, 39.400013>,  <37.152412, 33.438046, 39.326614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105984, 33.214310, 39.400013>,  <37.028603, 32.841419, 39.522343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105984, 33.214310, 39.400013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158624, -0.337333, -0.927925,
		-0.968201, 0.131002, -0.213133,
		0.193457, 0.932226, -0.305826,
		37.164021, 33.493977, 39.308266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589283, 32.943325, 38.934319>,  <37.028603, 32.841419, 39.522343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589283, 32.943325, 38.934319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897327, 33.198402, 38.927681>,  <37.082153, 33.351448, 38.923698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897327, 33.198402, 38.927681>,  <36.589283, 32.943325, 38.934319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897327, 33.198402, 38.927681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244489, -0.319087, -0.915647,
		-0.589200, 0.701090, -0.401641,
		0.770110, 0.637696, -0.016597,
		37.128361, 33.389709, 38.922703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537048, 33.243294, 38.234222>,  <36.589283, 32.943325, 38.934319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537048, 33.243294, 38.234222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902546, 33.349163, 38.357521>,  <37.121845, 33.412685, 38.431499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902546, 33.349163, 38.357521>,  <36.537048, 33.243294, 38.234222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902546, 33.349163, 38.357521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367069, -0.212573, -0.905579,
		-0.174159, 0.940617, -0.291391,
		0.913744, 0.264675, 0.308250,
		37.176670, 33.428566, 38.449997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852337, 33.691593, 37.697453>,  <36.537048, 33.243294, 38.234222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852337, 33.691593, 37.697453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154526, 33.538559, 37.910206>,  <37.335838, 33.446739, 38.037857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154526, 33.538559, 37.910206>,  <36.852337, 33.691593, 37.697453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154526, 33.538559, 37.910206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468045, -0.252933, -0.846734,
		0.458478, 0.888625, -0.012016,
		0.755468, -0.382585, 0.531880,
		37.381165, 33.423782, 38.069771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366737, 34.051800, 37.443340>,  <36.852337, 33.691593, 37.697453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366737, 34.051800, 37.443340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538952, 33.740448, 37.626106>,  <37.642281, 33.553638, 37.735767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538952, 33.740448, 37.626106>,  <37.366737, 34.051800, 37.443340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538952, 33.740448, 37.626106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573716, -0.154800, -0.804293,
		0.696772, 0.608416, 0.379920,
		0.430533, -0.778375, 0.456918,
		37.668110, 33.506935, 37.763180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174889, 34.030651, 37.156963>,  <37.366737, 34.051800, 37.443340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174889, 34.030651, 37.156963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076710, 33.675018, 37.311516>,  <38.017803, 33.461639, 37.404247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076710, 33.675018, 37.311516>,  <38.174889, 34.030651, 37.156963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076710, 33.675018, 37.311516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482032, -0.457735, -0.747077,
		0.841072, 0.002880, 0.540915,
		-0.245444, -0.889084, 0.386377,
		38.003075, 33.408295, 37.427429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782570, 33.617958, 37.354446>,  <38.174889, 34.030651, 37.156963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782570, 33.617958, 37.354446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494991, 33.349480, 37.282223>,  <38.322445, 33.188393, 37.238888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494991, 33.349480, 37.282223>,  <38.782570, 33.617958, 37.354446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494991, 33.349480, 37.282223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483666, -0.296555, -0.823482,
		0.499177, -0.679371, 0.537845,
		-0.718950, -0.671200, -0.180556,
		38.279305, 33.148121, 37.228058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253422, 33.231880, 37.803581>,  <38.782570, 33.617958, 37.354446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253422, 33.231880, 37.803581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645035, 33.189800, 37.873367>,  <39.880001, 33.164551, 37.915237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645035, 33.189800, 37.873367>,  <39.253422, 33.231880, 37.803581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645035, 33.189800, 37.873367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077172, 0.601028, 0.795493,
		-0.188545, -0.792274, 0.580305,
		0.979028, -0.105203, 0.174462,
		39.938744, 33.158241, 37.925705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375790, 32.928917, 38.516407>,  <39.253422, 33.231880, 37.803581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375790, 32.928917, 38.516407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691856, 33.139046, 38.390129>,  <39.881496, 33.265125, 38.314362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691856, 33.139046, 38.390129>,  <39.375790, 32.928917, 38.516407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691856, 33.139046, 38.390129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068007, 0.587064, 0.806679,
		0.609109, -0.615940, 0.499604,
		0.790165, 0.525332, -0.315698,
		39.928909, 33.296642, 38.295422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013149, 32.915913, 39.008686>,  <39.375790, 32.928917, 38.516407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013149, 32.915913, 39.008686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025276, 33.261730, 38.808033>,  <40.032551, 33.469223, 38.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025276, 33.261730, 38.808033>,  <40.013149, 32.915913, 39.008686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025276, 33.261730, 38.808033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033698, 0.502466, 0.863940,
		0.998972, -0.009286, 0.044366,
		0.030315, 0.864547, -0.501637,
		40.034370, 33.521095, 38.657543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459225, 33.392250, 39.429672>,  <40.013149, 32.915913, 39.008686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459225, 33.392250, 39.429672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281139, 33.633183, 39.164650>,  <40.174290, 33.777740, 39.005638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281139, 33.633183, 39.164650>,  <40.459225, 33.392250, 39.429672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281139, 33.633183, 39.164650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005974, 0.737920, 0.674861,
		0.895404, 0.304416, -0.324934,
		-0.445214, 0.602332, -0.662556,
		40.147575, 33.813881, 38.965881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803238, 33.973026, 39.434521>,  <40.459225, 33.392250, 39.429672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803238, 33.973026, 39.434521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442772, 34.074013, 39.293575>,  <40.226494, 34.134605, 39.209007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442772, 34.074013, 39.293575>,  <40.803238, 33.973026, 39.434521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442772, 34.074013, 39.293575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127064, 0.623320, 0.771574,
		0.414434, 0.740088, -0.529635,
		-0.901165, 0.252469, -0.352364,
		40.172421, 34.149754, 39.187866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773991, 34.713799, 39.413139>,  <40.803238, 33.973026, 39.434521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773991, 34.713799, 39.413139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393791, 34.590832, 39.431259>,  <40.165672, 34.517052, 39.442131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393791, 34.590832, 39.431259>,  <40.773991, 34.713799, 39.413139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393791, 34.590832, 39.431259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189006, 0.687686, 0.700974,
		-0.246641, 0.657712, -0.711746,
		-0.950497, -0.307414, 0.045300,
		40.108643, 34.498608, 39.444851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460983, 35.321953, 39.689262>,  <40.773991, 34.713799, 39.413139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460983, 35.321953, 39.689262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181396, 35.036133, 39.701027>,  <40.013645, 34.864643, 39.708088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181396, 35.036133, 39.701027>,  <40.460983, 35.321953, 39.689262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181396, 35.036133, 39.701027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359713, 0.386822, 0.849103,
		-0.618102, 0.582916, -0.527408,
		-0.698969, -0.714547, 0.029413,
		39.971706, 34.821770, 39.709850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790943, 35.640335, 39.692852>,  <40.460983, 35.321953, 39.689262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790943, 35.640335, 39.692852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726997, 35.279106, 39.852299>,  <39.688629, 35.062366, 39.947968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726997, 35.279106, 39.852299>,  <39.790943, 35.640335, 39.692852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726997, 35.279106, 39.852299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452136, 0.425955, 0.783668,
		-0.877505, -0.054947, -0.476409,
		-0.159868, -0.903074, 0.398621,
		39.679035, 35.008183, 39.971886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107014, 35.496300, 39.657608>,  <39.790943, 35.640335, 39.692852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107014, 35.496300, 39.657608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274269, 35.267776, 39.940102>,  <39.374622, 35.130665, 40.109596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274269, 35.267776, 39.940102>,  <39.107014, 35.496300, 39.657608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274269, 35.267776, 39.940102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506573, 0.498691, 0.703343,
		-0.754016, -0.651857, -0.080884,
		0.418143, -0.571306, 0.706234,
		39.399712, 35.096386, 40.151974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489441, 35.319424, 40.224804>,  <39.107014, 35.496300, 39.657608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489441, 35.319424, 40.224804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838211, 35.243683, 40.405418>,  <39.047474, 35.198238, 40.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838211, 35.243683, 40.405418>,  <38.489441, 35.319424, 40.224804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838211, 35.243683, 40.405418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356613, 0.386320, 0.850637,
		-0.335512, -0.902718, 0.269316,
		0.871928, -0.189358, 0.451536,
		39.099789, 35.186874, 40.540878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290615, 35.019886, 40.883625>,  <38.489441, 35.319424, 40.224804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290615, 35.019886, 40.883625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674343, 35.116684, 40.941795>,  <38.904579, 35.174763, 40.976696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674343, 35.116684, 40.941795>,  <38.290615, 35.019886, 40.883625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674343, 35.116684, 40.941795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199777, 0.217864, 0.955314,
		0.199485, -0.945505, 0.257344,
		0.959320, 0.241982, 0.145430,
		38.962139, 35.189285, 40.985424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529137, 34.623833, 41.562252>,  <38.290615, 35.019886, 40.883625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529137, 34.623833, 41.562252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791569, 34.922607, 41.519085>,  <38.949028, 35.101871, 41.493183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791569, 34.922607, 41.519085>,  <38.529137, 34.623833, 41.562252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791569, 34.922607, 41.519085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055420, 0.094931, 0.993940,
		0.752656, -0.658083, 0.020887,
		0.656078, 0.746937, -0.107921,
		38.988392, 35.146690, 41.486710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044090, 34.525105, 42.099907>,  <38.529137, 34.623833, 41.562252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044090, 34.525105, 42.099907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054565, 34.913414, 42.004482>,  <39.060848, 35.146400, 41.947227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054565, 34.913414, 42.004482>,  <39.044090, 34.525105, 42.099907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054565, 34.913414, 42.004482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259897, 0.223822, 0.939339,
		0.965281, -0.086597, -0.246441,
		0.026185, 0.970775, -0.238557,
		39.062420, 35.204647, 41.932915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805317, 34.681324, 42.270035>,  <39.044090, 34.525105, 42.099907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805317, 34.681324, 42.270035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554440, 34.992626, 42.257717>,  <39.403912, 35.179405, 42.250328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554440, 34.992626, 42.257717>,  <39.805317, 34.681324, 42.270035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554440, 34.992626, 42.257717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286423, 0.267232, 0.920081,
		0.724283, 0.568252, -0.390516,
		-0.627197, 0.778252, -0.030792,
		39.366280, 35.226101, 42.248478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178570, 35.235226, 42.728745>,  <39.805317, 34.681324, 42.270035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178570, 35.235226, 42.728745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808094, 35.381191, 42.690762>,  <39.585808, 35.468769, 42.667973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808094, 35.381191, 42.690762>,  <40.178570, 35.235226, 42.728745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808094, 35.381191, 42.690762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073876, 0.422572, 0.903314,
		0.369758, 0.829622, -0.418339,
		-0.926187, 0.364912, -0.094960,
		39.530239, 35.490665, 42.662273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190849, 35.957024, 42.924358>,  <40.178570, 35.235226, 42.728745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190849, 35.957024, 42.924358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807014, 35.856640, 42.975296>,  <39.576714, 35.796410, 43.005859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807014, 35.856640, 42.975296>,  <40.190849, 35.957024, 42.924358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807014, 35.856640, 42.975296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033502, 0.551157, 0.833729,
		-0.279417, 0.795768, -0.537290,
		-0.959585, -0.250958, 0.127342,
		39.519138, 35.781353, 43.013500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732468, 36.629887, 43.151768>,  <40.190849, 35.957024, 42.924358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732468, 36.629887, 43.151768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557251, 36.297718, 43.289478>,  <39.452122, 36.098419, 43.372105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557251, 36.297718, 43.289478>,  <39.732468, 36.629887, 43.151768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557251, 36.297718, 43.289478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005403, 0.380533, 0.924752,
		-0.898937, 0.406943, -0.162204,
		-0.438045, -0.830417, 0.344274,
		39.425838, 36.048592, 43.392761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141499, 36.791733, 43.566467>,  <39.732468, 36.629887, 43.151768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141499, 36.791733, 43.566467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212582, 36.414951, 43.680408>,  <39.255230, 36.188881, 43.748775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212582, 36.414951, 43.680408>,  <39.141499, 36.791733, 43.566467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212582, 36.414951, 43.680408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027217, 0.284648, 0.958246,
		-0.983707, -0.178040, 0.024947,
		0.177707, -0.941954, 0.284856,
		39.265892, 36.132366, 43.765865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634247, 36.699116, 44.010704>,  <39.141499, 36.791733, 43.566467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634247, 36.699116, 44.010704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886108, 36.400608, 44.097069>,  <39.037224, 36.221504, 44.148888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886108, 36.400608, 44.097069>,  <38.634247, 36.699116, 44.010704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886108, 36.400608, 44.097069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083266, 0.211490, 0.973827,
		-0.772400, -0.631152, 0.071027,
		0.629654, -0.746270, 0.215909,
		39.075005, 36.176727, 44.161842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196598, 36.189999, 44.443157>,  <38.634247, 36.699116, 44.010704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196598, 36.189999, 44.443157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587029, 36.156036, 44.523216>,  <38.821289, 36.135658, 44.571251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587029, 36.156036, 44.523216>,  <38.196598, 36.189999, 44.443157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587029, 36.156036, 44.523216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158932, 0.349532, 0.923346,
		-0.148359, -0.933069, 0.327676,
		0.976079, -0.084909, 0.200151,
		38.879852, 36.130562, 44.583263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170883, 35.780643, 44.995060>,  <38.196598, 36.189999, 44.443157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170883, 35.780643, 44.995060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534149, 35.940208, 45.045834>,  <38.752110, 36.035946, 45.076298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534149, 35.940208, 45.045834>,  <38.170883, 35.780643, 44.995060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534149, 35.940208, 45.045834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229542, 0.220968, 0.947884,
		0.350074, -0.889968, 0.292242,
		0.908162, 0.398911, 0.126930,
		38.806599, 36.059883, 45.083912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301437, 35.683025, 45.690487>,  <38.170883, 35.780643, 44.995060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301437, 35.683025, 45.690487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557293, 35.979130, 45.607662>,  <38.710808, 36.156792, 45.557968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557293, 35.979130, 45.607662>,  <38.301437, 35.683025, 45.690487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557293, 35.979130, 45.607662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236361, 0.445736, 0.863396,
		0.731435, -0.503318, 0.460079,
		0.639637, 0.740263, -0.207063,
		38.749184, 36.201210, 45.545544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843319, 35.808640, 46.207714>,  <38.301437, 35.683025, 45.690487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843319, 35.808640, 46.207714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846699, 36.169273, 46.034706>,  <38.848724, 36.385654, 45.930901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846699, 36.169273, 46.034706>,  <38.843319, 35.808640, 46.207714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846699, 36.169273, 46.034706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045491, 0.431737, 0.900852,
		0.998929, -0.027285, -0.037367,
		0.008447, 0.901587, -0.432516,
		38.849232, 36.439751, 45.904953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174225, 36.258148, 46.689056>,  <38.843319, 35.808640, 46.207714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174225, 36.258148, 46.689056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014793, 36.518894, 46.431000>,  <38.919136, 36.675343, 46.276165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014793, 36.518894, 46.431000>,  <39.174225, 36.258148, 46.689056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014793, 36.518894, 46.431000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099711, 0.668462, 0.737032,
		0.911699, 0.358090, -0.201434,
		-0.398575, 0.651866, -0.645142,
		38.895222, 36.714455, 46.237457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433353, 36.999958, 46.894783>,  <39.174225, 36.258148, 46.689056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433353, 36.999958, 46.894783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109676, 37.082943, 46.674904>,  <38.915470, 37.132732, 46.542976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109676, 37.082943, 46.674904>,  <39.433353, 36.999958, 46.894783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109676, 37.082943, 46.674904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199799, 0.782663, 0.589507,
		0.552524, 0.586855, -0.591878,
		-0.809196, 0.207460, -0.549693,
		38.866917, 37.145180, 46.509995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382660, 37.726574, 46.811447>,  <39.433353, 36.999958, 46.894783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382660, 37.726574, 46.811447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016926, 37.574192, 46.756516>,  <38.797485, 37.482765, 46.723557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016926, 37.574192, 46.756516>,  <39.382660, 37.726574, 46.811447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016926, 37.574192, 46.756516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378554, 0.683659, 0.623945,
		-0.143806, 0.622485, -0.769307,
		-0.914340, -0.380951, -0.137330,
		38.742622, 37.459908, 46.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947590, 38.261723, 46.640652>,  <39.382660, 37.726574, 46.811447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947590, 38.261723, 46.640652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693447, 37.986744, 46.781357>,  <38.540962, 37.821754, 46.865780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693447, 37.986744, 46.781357>,  <38.947590, 38.261723, 46.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693447, 37.986744, 46.781357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428290, 0.692740, 0.580241,
		-0.642565, 0.218003, -0.734564,
		-0.635356, -0.687449, 0.351762,
		38.502842, 37.780510, 46.886887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367828, 38.631012, 46.747120>,  <38.947590, 38.261723, 46.640652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367828, 38.631012, 46.747120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315029, 38.294533, 46.956871>,  <38.283348, 38.092648, 47.082722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315029, 38.294533, 46.956871>,  <38.367828, 38.631012, 46.747120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315029, 38.294533, 46.956871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303318, 0.537906, 0.786546,
		-0.943702, -0.055227, -0.326154,
		-0.132002, -0.841194, 0.524375,
		38.275429, 38.042175, 47.114182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655109, 38.637096, 47.019482>,  <38.367828, 38.631012, 46.747120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655109, 38.637096, 47.019482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829094, 38.381184, 47.272934>,  <37.933487, 38.227634, 47.425003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829094, 38.381184, 47.272934>,  <37.655109, 38.637096, 47.019482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829094, 38.381184, 47.272934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369167, 0.515119, 0.773543,
		-0.821292, -0.570379, -0.012128,
		0.434965, -0.639782, 0.633628,
		37.959583, 38.189247, 47.463024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179062, 38.555443, 47.546154>,  <37.655109, 38.637096, 47.019482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179062, 38.555443, 47.546154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517361, 38.414429, 47.706364>,  <37.720341, 38.329819, 47.802490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517361, 38.414429, 47.706364>,  <37.179062, 38.555443, 47.546154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517361, 38.414429, 47.706364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185824, 0.509043, 0.840443,
		-0.500175, -0.785233, 0.365013,
		0.845751, -0.352540, 0.400526,
		37.771088, 38.308666, 47.826523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968185, 38.214085, 48.183853>,  <37.179062, 38.555443, 47.546154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968185, 38.214085, 48.183853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355038, 38.314213, 48.201721>,  <37.587151, 38.374290, 48.212440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355038, 38.314213, 48.201721>,  <36.968185, 38.214085, 48.183853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355038, 38.314213, 48.201721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120103, 0.294869, 0.947960,
		0.224120, -0.922168, 0.315241,
		0.967133, 0.250318, 0.044669,
		37.645176, 38.389309, 48.215122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233429, 37.970684, 48.834541>,  <36.968185, 38.214085, 48.183853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233429, 37.970684, 48.834541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456863, 38.275150, 48.702713>,  <37.590923, 38.457829, 48.623615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456863, 38.275150, 48.702713>,  <37.233429, 37.970684, 48.834541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456863, 38.275150, 48.702713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054555, 0.430187, 0.901090,
		0.827652, -0.485355, 0.281821,
		0.558584, 0.761163, -0.329567,
		37.624439, 38.503498, 48.603844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482929, 38.223175, 49.473831>,  <37.233429, 37.970684, 48.834541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482929, 38.223175, 49.473831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566181, 38.504360, 49.201794>,  <37.616131, 38.673069, 49.038570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566181, 38.504360, 49.201794>,  <37.482929, 38.223175, 49.473831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566181, 38.504360, 49.201794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115512, 0.708121, 0.696579,
		0.971257, -0.066419, 0.228580,
		0.208128, 0.702961, -0.680095,
		37.628620, 38.715248, 48.997765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692986, 38.810806, 49.978428>,  <37.482929, 38.223175, 49.473831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692986, 38.810806, 49.978428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666492, 39.000126, 49.627064>,  <37.650597, 39.113716, 49.416245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666492, 39.000126, 49.627064>,  <37.692986, 38.810806, 49.978428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666492, 39.000126, 49.627064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207076, 0.854654, 0.476116,
		0.976080, 0.213432, 0.041402,
		-0.066234, 0.473301, -0.878407,
		37.646622, 39.142117, 49.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213905, 39.376148, 49.919647>,  <37.692986, 38.810806, 49.978428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213905, 39.376148, 49.919647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897968, 39.439205, 49.682568>,  <37.708405, 39.477039, 49.540321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897968, 39.439205, 49.682568>,  <38.213905, 39.376148, 49.919647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897968, 39.439205, 49.682568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261484, 0.787606, 0.557946,
		0.554769, 0.595673, -0.580866,
		-0.789847, 0.157643, -0.592698,
		37.661015, 39.486500, 49.504757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136379, 40.070354, 49.697151>,  <38.213905, 39.376148, 49.919647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136379, 40.070354, 49.697151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765621, 39.921158, 49.680424>,  <37.543167, 39.831642, 49.670387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765621, 39.921158, 49.680424>,  <38.136379, 40.070354, 49.697151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765621, 39.921158, 49.680424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328280, 0.751655, 0.572055,
		-0.181935, 0.543963, -0.819148,
		-0.926893, -0.372987, -0.041820,
		37.487553, 39.809261, 49.667877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786846, 40.612629, 49.719177>,  <38.136379, 40.070354, 49.697151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786846, 40.612629, 49.719177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520103, 40.322964, 49.789474>,  <37.360058, 40.149166, 49.831654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520103, 40.322964, 49.789474>,  <37.786846, 40.612629, 49.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520103, 40.322964, 49.789474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317103, 0.489191, 0.812488,
		-0.674348, 0.486085, -0.555856,
		-0.666858, -0.724164, 0.175747,
		37.320045, 40.105713, 49.842197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627895, 41.292126, 49.872570>,  <37.786846, 40.612629, 49.719177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627895, 41.292126, 49.872570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347969, 41.544334, 49.738285>,  <37.180016, 41.695660, 49.657715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347969, 41.544334, 49.738285>,  <37.627895, 41.292126, 49.872570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347969, 41.544334, 49.738285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089101, -0.389244, -0.916815,
		-0.708748, -0.671510, 0.216217,
		-0.699812, 0.630526, -0.335708,
		37.138027, 41.733494, 49.637573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144638, 41.000648, 49.517536>,  <37.627895, 41.292126, 49.872570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144638, 41.000648, 49.517536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115631, 41.373100, 49.374573>,  <37.098228, 41.596573, 49.288795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115631, 41.373100, 49.374573>,  <37.144638, 41.000648, 49.517536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115631, 41.373100, 49.374573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022086, -0.359762, -0.932783,
		-0.997123, -0.059750, 0.046654,
		-0.072517, 0.931129, -0.357407,
		37.093876, 41.652439, 49.267349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647812, 40.868717, 49.039619>,  <37.144638, 41.000648, 49.517536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647812, 40.868717, 49.039619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805668, 41.214584, 48.915295>,  <36.900379, 41.422104, 48.840698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805668, 41.214584, 48.915295>,  <36.647812, 40.868717, 49.039619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805668, 41.214584, 48.915295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152538, -0.271920, -0.950153,
		-0.906087, 0.422377, 0.024585,
		0.394638, 0.864672, -0.310811,
		36.924061, 41.473988, 48.822052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100155, 41.191662, 48.636681>,  <36.647812, 40.868717, 49.039619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100155, 41.191662, 48.636681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451096, 41.346275, 48.522953>,  <36.661659, 41.439045, 48.454716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451096, 41.346275, 48.522953>,  <36.100155, 41.191662, 48.636681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451096, 41.346275, 48.522953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253991, -0.128599, -0.958619,
		-0.407105, 0.913264, -0.014650,
		0.877356, 0.386538, -0.284314,
		36.714302, 41.462238, 48.437660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958115, 41.533611, 48.088211>,  <36.100155, 41.191662, 48.636681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958115, 41.533611, 48.088211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353718, 41.481102, 48.060986>,  <36.591080, 41.449596, 48.044651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353718, 41.481102, 48.060986>,  <35.958115, 41.533611, 48.088211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353718, 41.481102, 48.060986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102786, -0.279385, -0.954662,
		0.106307, 0.951163, -0.289807,
		0.989007, -0.131276, -0.068066,
		36.650421, 41.441719, 48.040565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254307, 41.865623, 47.537022>,  <35.958115, 41.533611, 48.088211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254307, 41.865623, 47.537022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545986, 41.595875, 47.583466>,  <36.720993, 41.434025, 47.611332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545986, 41.595875, 47.583466>,  <36.254307, 41.865623, 47.537022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545986, 41.595875, 47.583466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042563, -0.214054, -0.975894,
		0.682974, 0.706681, -0.184792,
		0.729202, -0.674376, 0.116114,
		36.764748, 41.393562, 47.618301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536625, 41.876850, 46.909481>,  <36.254307, 41.865623, 47.537022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536625, 41.876850, 46.909481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711498, 41.564507, 47.087978>,  <36.816422, 41.377102, 47.195076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711498, 41.564507, 47.087978>,  <36.536625, 41.876850, 46.909481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711498, 41.564507, 47.087978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160002, -0.420726, -0.892966,
		0.885024, 0.461792, -0.058998,
		0.437187, -0.780856, 0.446240,
		36.842655, 41.330250, 47.221851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234695, 41.827366, 46.635937>,  <36.536625, 41.876850, 46.909481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234695, 41.827366, 46.635937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117115, 41.464497, 46.756351>,  <37.046566, 41.246773, 46.828598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117115, 41.464497, 46.756351>,  <37.234695, 41.827366, 46.635937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117115, 41.464497, 46.756351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317178, -0.389683, -0.864607,
		0.901659, -0.158672, 0.402285,
		-0.293953, -0.907177, 0.301034,
		37.028931, 41.192345, 46.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753052, 41.335030, 46.363453>,  <37.234695, 41.827366, 46.635937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753052, 41.335030, 46.363453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431686, 41.102619, 46.415512>,  <37.238869, 40.963173, 46.446747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431686, 41.102619, 46.415512>,  <37.753052, 41.335030, 46.363453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431686, 41.102619, 46.415512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174363, -0.438576, -0.881617,
		0.569325, -0.685607, 0.453666,
		-0.803409, -0.581029, 0.130148,
		37.190662, 40.928310, 46.454556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974262, 40.678181, 46.127808>,  <37.753052, 41.335030, 46.363453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974262, 40.678181, 46.127808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574512, 40.665283, 46.121971>,  <37.334663, 40.657543, 46.118469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574512, 40.665283, 46.121971>,  <37.974262, 40.678181, 46.127808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574512, 40.665283, 46.121971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029962, -0.551267, -0.833791,
		0.018844, -0.833705, 0.551888,
		-0.999373, -0.032248, -0.014592,
		37.274700, 40.655609, 46.117592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811634, 40.061249, 45.818401>,  <37.974262, 40.678181, 46.127808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811634, 40.061249, 45.818401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459240, 40.249332, 45.797340>,  <37.247803, 40.362183, 45.784702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459240, 40.249332, 45.797340>,  <37.811634, 40.061249, 45.818401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459240, 40.249332, 45.797340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168169, -0.415194, -0.894054,
		-0.442260, -0.778789, 0.444853,
		-0.880980, 0.470215, -0.052656,
		37.194946, 40.390396, 45.781544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348602, 39.513699, 45.649670>,  <37.811634, 40.061249, 45.818401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348602, 39.513699, 45.649670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198338, 39.868828, 45.543350>,  <37.108177, 40.081905, 45.479557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198338, 39.868828, 45.543350>,  <37.348602, 39.513699, 45.649670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198338, 39.868828, 45.543350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144563, -0.339430, -0.929456,
		-0.915413, -0.310735, 0.255857,
		-0.375660, 0.887824, -0.265797,
		37.085640, 40.135174, 45.463612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813335, 39.363323, 45.072739>,  <37.348602, 39.513699, 45.649670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813335, 39.363323, 45.072739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865376, 39.755611, 45.014404>,  <36.896599, 39.990982, 44.979404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865376, 39.755611, 45.014404>,  <36.813335, 39.363323, 45.072739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865376, 39.755611, 45.014404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281536, -0.177569, -0.942978,
		-0.950690, 0.081626, -0.299209,
		0.130101, 0.980717, -0.145832,
		36.904408, 40.049828, 44.970654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533154, 39.502670, 44.489304>,  <36.813335, 39.363323, 45.072739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533154, 39.502670, 44.489304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829029, 39.761196, 44.564285>,  <37.006554, 39.916309, 44.609276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829029, 39.761196, 44.564285>,  <36.533154, 39.502670, 44.489304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829029, 39.761196, 44.564285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422378, -0.229034, -0.877007,
		-0.523886, 0.727890, -0.442402,
		0.739689, 0.646313, 0.187457,
		37.050938, 39.955090, 44.620522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673058, 39.897232, 43.884621>,  <36.533154, 39.502670, 44.489304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673058, 39.897232, 43.884621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018665, 39.879467, 44.085217>,  <37.226028, 39.868809, 44.205574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018665, 39.879467, 44.085217>,  <36.673058, 39.897232, 43.884621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018665, 39.879467, 44.085217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496527, -0.089523, -0.863393,
		0.083241, 0.994994, -0.055297,
		0.864021, -0.044413, 0.501493,
		37.277870, 39.866142, 44.235664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120594, 40.348328, 43.457478>,  <36.673058, 39.897232, 43.884621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120594, 40.348328, 43.457478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366116, 40.115910, 43.671253>,  <37.513428, 39.976460, 43.799519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366116, 40.115910, 43.671253>,  <37.120594, 40.348328, 43.457478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366116, 40.115910, 43.671253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488557, -0.252192, -0.835291,
		0.620124, 0.773813, 0.129076,
		0.613806, -0.581045, 0.534442,
		37.550259, 39.941597, 43.831585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894459, 40.564411, 43.260403>,  <37.120594, 40.348328, 43.457478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894459, 40.564411, 43.260403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924328, 40.208317, 43.440136>,  <37.942249, 39.994659, 43.547977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924328, 40.208317, 43.440136>,  <37.894459, 40.564411, 43.260403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924328, 40.208317, 43.440136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665225, -0.291212, -0.687510,
		0.742899, 0.350252, 0.570461,
		0.074677, -0.890236, 0.449337,
		37.946732, 39.941246, 43.574936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552746, 40.370331, 43.164413>,  <37.894459, 40.564411, 43.260403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552746, 40.370331, 43.164413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355282, 40.037510, 43.265598>,  <38.236801, 39.837818, 43.326309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355282, 40.037510, 43.265598>,  <38.552746, 40.370331, 43.164413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355282, 40.037510, 43.265598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606438, -0.537848, -0.585621,
		0.623321, -0.135694, 0.770103,
		-0.493663, -0.832050, 0.252962,
		38.207184, 39.787895, 43.341488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033508, 39.865166, 43.464848>,  <38.552746, 40.370331, 43.164413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033508, 39.865166, 43.464848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714092, 39.665314, 43.330559>,  <38.522442, 39.545403, 43.249985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714092, 39.665314, 43.330559>,  <39.033508, 39.865166, 43.464848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714092, 39.665314, 43.330559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588662, -0.531679, -0.608929,
		0.125745, -0.683877, 0.718680,
		-0.798539, -0.499629, -0.335717,
		38.474529, 39.515427, 43.229843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170040, 39.185818, 43.635284>,  <39.033508, 39.865166, 43.464848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170040, 39.185818, 43.635284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901577, 39.187695, 43.338764>,  <38.740498, 39.188820, 43.160851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901577, 39.187695, 43.338764>,  <39.170040, 39.185818, 43.635284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901577, 39.187695, 43.338764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572304, -0.632317, -0.522154,
		-0.471185, -0.774696, 0.421700,
		-0.671158, 0.004691, -0.741300,
		38.700230, 39.189102, 43.116375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146339, 38.506695, 43.495644>,  <39.170040, 39.185818, 43.635284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146339, 38.506695, 43.495644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992012, 38.687122, 43.173729>,  <38.899414, 38.795380, 42.980579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992012, 38.687122, 43.173729>,  <39.146339, 38.506695, 43.495644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992012, 38.687122, 43.173729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474090, -0.651405, -0.592378,
		-0.791443, -0.610093, 0.037480,
		-0.385820, 0.451064, -0.804788,
		38.876266, 38.822441, 42.932293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836254, 38.025162, 43.069561>,  <39.146339, 38.506695, 43.495644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836254, 38.025162, 43.069561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918350, 38.327271, 42.820583>,  <38.967609, 38.508537, 42.671196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918350, 38.327271, 42.820583>,  <38.836254, 38.025162, 43.069561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918350, 38.327271, 42.820583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480019, -0.631921, -0.608489,
		-0.852911, -0.173899, -0.492241,
		0.205241, 0.755272, -0.622447,
		38.979923, 38.553852, 42.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538425, 37.842857, 42.420609>,  <38.836254, 38.025162, 43.069561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538425, 37.842857, 42.420609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789276, 38.133873, 42.309330>,  <38.939789, 38.308483, 42.242561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789276, 38.133873, 42.309330>,  <38.538425, 37.842857, 42.420609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789276, 38.133873, 42.309330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291213, -0.550262, -0.782564,
		-0.722428, 0.409756, -0.556955,
		0.627131, 0.727538, -0.278198,
		38.977417, 38.352135, 42.225872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572052, 37.858574, 41.727654>,  <38.538425, 37.842857, 42.420609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572052, 37.858574, 41.727654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915054, 38.046703, 41.811054>,  <39.120857, 38.159580, 41.861095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915054, 38.046703, 41.811054>,  <38.572052, 37.858574, 41.727654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915054, 38.046703, 41.811054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437557, -0.453571, -0.776413,
		-0.270591, 0.757015, -0.594734,
		0.857511, 0.470321, 0.208505,
		39.172306, 38.187801, 41.873604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747528, 38.322548, 41.079391>,  <38.572052, 37.858574, 41.727654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747528, 38.322548, 41.079391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085445, 38.249424, 41.280548>,  <39.288197, 38.205551, 41.401241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085445, 38.249424, 41.280548>,  <38.747528, 38.322548, 41.079391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085445, 38.249424, 41.280548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425216, -0.341163, -0.838331,
		0.324823, 0.922057, -0.210480,
		0.844797, -0.182810, 0.502891,
		39.338886, 38.194580, 41.431416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227165, 38.608963, 40.637718>,  <38.747528, 38.322548, 41.079391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227165, 38.608963, 40.637718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397293, 38.353832, 40.894554>,  <39.499371, 38.200752, 41.048656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397293, 38.353832, 40.894554>,  <39.227165, 38.608963, 40.637718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397293, 38.353832, 40.894554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568068, -0.364162, -0.738028,
		0.704560, 0.678646, 0.207446,
		0.425316, -0.637828, 0.642091,
		39.524887, 38.162483, 41.087181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919052, 38.615685, 40.531120>,  <39.227165, 38.608963, 40.637718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919052, 38.615685, 40.531120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913395, 38.276943, 40.743774>,  <39.910000, 38.073696, 40.871368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913395, 38.276943, 40.743774>,  <39.919052, 38.615685, 40.531120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913395, 38.276943, 40.743774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516902, -0.461325, -0.721104,
		0.855927, 0.264602, 0.444268,
		-0.014146, -0.846856, 0.531634,
		39.909153, 38.022888, 40.903263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627243, 38.279663, 40.489426>,  <39.919052, 38.615685, 40.531120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627243, 38.279663, 40.489426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345428, 38.006138, 40.565353>,  <40.176342, 37.842022, 40.610909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345428, 38.006138, 40.565353>,  <40.627243, 38.279663, 40.489426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345428, 38.006138, 40.565353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424349, -0.620317, -0.659647,
		0.568825, -0.384193, 0.727210,
		-0.704532, -0.683815, 0.189820,
		40.134068, 37.800995, 40.622299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974926, 37.752007, 40.577942>,  <40.627243, 38.279663, 40.489426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974926, 37.752007, 40.577942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619740, 37.581936, 40.507824>,  <40.406628, 37.479893, 40.465752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619740, 37.581936, 40.507824>,  <40.974926, 37.752007, 40.577942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619740, 37.581936, 40.507824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411955, -0.565903, -0.714175,
		0.204453, -0.706381, 0.677661,
		-0.887971, -0.425181, -0.175297,
		40.353348, 37.454380, 40.455235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195023, 37.047829, 40.443573>,  <40.974926, 37.752007, 40.577942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195023, 37.047829, 40.443573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838112, 37.134365, 40.285057>,  <40.623966, 37.186287, 40.189949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838112, 37.134365, 40.285057>,  <41.195023, 37.047829, 40.443573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838112, 37.134365, 40.285057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294195, -0.387213, -0.873793,
		-0.342480, -0.896250, 0.281856,
		-0.892276, 0.216336, -0.396286,
		40.570431, 37.199268, 40.166172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203114, 36.557381, 40.055222>,  <41.195023, 37.047829, 40.443573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203114, 36.557381, 40.055222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898415, 36.783031, 39.927780>,  <40.715595, 36.918423, 39.851315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898415, 36.783031, 39.927780>,  <41.203114, 36.557381, 40.055222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898415, 36.783031, 39.927780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066726, -0.420843, -0.904676,
		-0.644434, -0.710390, 0.282932,
		-0.761743, 0.564125, -0.318607,
		40.669891, 36.952271, 39.832199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866779, 36.113396, 39.588596>,  <41.203114, 36.557381, 40.055222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866779, 36.113396, 39.588596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733391, 36.471622, 39.470779>,  <40.653358, 36.686558, 39.400089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733391, 36.471622, 39.470779>,  <40.866779, 36.113396, 39.588596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733391, 36.471622, 39.470779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154390, -0.256333, -0.954179,
		-0.930032, -0.363668, -0.052787,
		-0.333473, 0.895566, -0.294545,
		40.633350, 36.740292, 39.382416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410694, 35.995991, 38.970596>,  <40.866779, 36.113396, 39.588596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410694, 35.995991, 38.970596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541561, 36.373970, 38.972881>,  <40.620083, 36.600758, 38.974251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541561, 36.373970, 38.972881>,  <40.410694, 35.995991, 38.970596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541561, 36.373970, 38.972881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226004, -0.072375, -0.971434,
		-0.917543, 0.319111, -0.237241,
		0.327166, 0.944950, 0.005713,
		40.639709, 36.657455, 38.974594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030369, 36.196251, 38.360798>,  <40.410694, 35.995991, 38.970596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030369, 36.196251, 38.360798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331089, 36.445744, 38.446365>,  <40.511520, 36.595440, 38.497704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331089, 36.445744, 38.446365>,  <40.030369, 36.196251, 38.360798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331089, 36.445744, 38.446365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262685, 0.014263, -0.964776,
		-0.604813, 0.781508, -0.153122,
		0.751797, 0.623732, 0.213917,
		40.556629, 36.632862, 38.510540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025967, 36.725155, 37.776302>,  <40.030369, 36.196251, 38.360798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025967, 36.725155, 37.776302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383995, 36.706757, 37.953720>,  <40.598812, 36.695717, 38.060169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383995, 36.706757, 37.953720>,  <40.025967, 36.725155, 37.776302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383995, 36.706757, 37.953720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436301, -0.115173, -0.892399,
		0.092133, 0.992280, -0.083019,
		0.895071, -0.045998, 0.443544,
		40.652515, 36.692959, 38.086784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392544, 37.200237, 37.431812>,  <40.025967, 36.725155, 37.776302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392544, 37.200237, 37.431812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690395, 36.985897, 37.591007>,  <40.869106, 36.857292, 37.686523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690395, 36.985897, 37.591007>,  <40.392544, 37.200237, 37.431812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690395, 36.985897, 37.591007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433019, -0.065958, -0.898968,
		0.507962, 0.841733, 0.182919,
		0.744626, -0.535850, 0.397991,
		40.913784, 36.825142, 37.710403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976387, 37.506023, 37.161926>,  <40.392544, 37.200237, 37.431812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976387, 37.506023, 37.161926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073822, 37.135296, 37.276237>,  <41.132282, 36.912857, 37.344822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073822, 37.135296, 37.276237>,  <40.976387, 37.506023, 37.161926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073822, 37.135296, 37.276237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506288, -0.129808, -0.852539,
		0.827247, 0.352354, 0.437618,
		0.243589, -0.926821, 0.285776,
		41.146900, 36.857250, 37.361969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526054, 37.372791, 36.768284>,  <40.976387, 37.506023, 37.161926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526054, 37.372791, 36.768284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407700, 37.003063, 36.864681>,  <41.336685, 36.781227, 36.922520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407700, 37.003063, 36.864681>,  <41.526054, 37.372791, 36.768284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407700, 37.003063, 36.864681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420801, -0.352622, -0.835813,
		0.857541, -0.145896, 0.493292,
		-0.295887, -0.924323, 0.240995,
		41.318932, 36.725765, 36.936981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932877, 37.040833, 36.457657>,  <41.526054, 37.372791, 36.768284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932877, 37.040833, 36.457657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690735, 36.739815, 36.561375>,  <41.545452, 36.559204, 36.623604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690735, 36.739815, 36.561375>,  <41.932877, 37.040833, 36.457657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690735, 36.739815, 36.561375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348766, -0.543601, -0.763453,
		0.715481, -0.371724, 0.591530,
		-0.605350, -0.752542, 0.259292,
		41.509129, 36.514053, 36.639164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396908, 36.372570, 36.439205>,  <41.932877, 37.040833, 36.457657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396908, 36.372570, 36.439205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012543, 36.273998, 36.388729>,  <41.781925, 36.214855, 36.358444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012543, 36.273998, 36.388729>,  <42.396908, 36.372570, 36.439205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012543, 36.273998, 36.388729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240567, -0.517583, -0.821118,
		0.137032, -0.819379, 0.556633,
		-0.960911, -0.246427, -0.126190,
		41.724270, 36.200069, 36.350872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292786, 35.602291, 36.449024>,  <42.396908, 36.372570, 36.439205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292786, 35.602291, 36.449024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993401, 35.781914, 36.253819>,  <41.813770, 35.889687, 36.136696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993401, 35.781914, 36.253819>,  <42.292786, 35.602291, 36.449024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993401, 35.781914, 36.253819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352621, -0.353753, -0.866324,
		-0.561661, -0.820494, 0.106425,
		-0.748462, 0.449053, -0.488012,
		41.768864, 35.916630, 36.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623093, 35.166565, 36.178833>,  <42.292786, 35.602291, 36.449024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623093, 35.166565, 36.178833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762020, 35.487392, 35.984493>,  <41.845379, 35.679890, 35.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762020, 35.487392, 35.984493>,  <41.623093, 35.166565, 36.178833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762020, 35.487392, 35.984493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145633, -0.557952, -0.816995,
		-0.926369, 0.213004, -0.310596,
		0.347321, 0.802071, -0.485849,
		41.866215, 35.728012, 35.838737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271229, 35.297657, 35.455391>,  <41.623093, 35.166565, 36.178833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271229, 35.297657, 35.455391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658409, 35.385460, 35.504204>,  <41.890717, 35.438141, 35.533493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658409, 35.385460, 35.504204>,  <41.271229, 35.297657, 35.455391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658409, 35.385460, 35.504204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245236, -0.721277, -0.647780,
		-0.054168, 0.656946, -0.751990,
		0.967949, 0.219504, 0.122037,
		41.948795, 35.451309, 35.540813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685810, 35.174877, 34.828545>,  <41.271229, 35.297657, 35.455391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685810, 35.174877, 34.828545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871727, 35.121178, 35.178616>,  <41.983276, 35.088959, 35.388660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871727, 35.121178, 35.178616>,  <41.685810, 35.174877, 34.828545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871727, 35.121178, 35.178616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110543, -0.971906, -0.207794,
		0.878490, 0.193327, -0.436898,
		0.464797, -0.134249, 0.875181,
		42.011166, 35.080902, 35.441170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429569, 35.056076, 34.847027>,  <41.685810, 35.174877, 34.828545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429569, 35.056076, 34.847027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252285, 34.849186, 35.139885>,  <42.145916, 34.725052, 35.315601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252285, 34.849186, 35.139885>,  <42.429569, 35.056076, 34.847027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252285, 34.849186, 35.139885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294401, -0.855430, -0.426107,
		0.846696, 0.026690, 0.531407,
		-0.443209, -0.517229, 0.732147,
		42.119324, 34.694016, 35.359528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893791, 34.446659, 34.932629>,  <42.429569, 35.056076, 34.847027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893791, 34.446659, 34.932629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541481, 34.350811, 35.096001>,  <42.330093, 34.293301, 35.194023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541481, 34.350811, 35.096001>,  <42.893791, 34.446659, 34.932629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541481, 34.350811, 35.096001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187213, -0.968454, -0.164460,
		0.434953, -0.068390, 0.897852,
		-0.880776, -0.239622, 0.408429,
		42.277248, 34.278923, 35.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979324, 34.007641, 35.583691>,  <42.893791, 34.446659, 34.932629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979324, 34.007641, 35.583691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663414, 33.941772, 35.347340>,  <42.473866, 33.902252, 35.205528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663414, 33.941772, 35.347340>,  <42.979324, 34.007641, 35.583691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663414, 33.941772, 35.347340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210557, -0.977540, -0.009001,
		-0.576120, -0.131522, 0.806714,
		-0.789779, -0.164674, -0.590873,
		42.426479, 33.892372, 35.170078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406570, 33.636166, 35.976780>,  <42.979324, 34.007641, 35.583691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406570, 33.636166, 35.976780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444023, 33.562962, 35.585323>,  <42.466496, 33.519039, 35.350449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444023, 33.562962, 35.585323>,  <42.406570, 33.636166, 35.976780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444023, 33.562962, 35.585323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231133, -0.952110, 0.200162,
		-0.968406, -0.244938, -0.046845,
		0.093628, -0.183011, -0.978642,
		42.472111, 33.508057, 35.291729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976292, 33.048679, 35.687641>,  <42.406570, 33.636166, 35.976780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976292, 33.048679, 35.687641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296497, 33.065357, 35.448498>,  <42.488621, 33.075363, 35.305012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296497, 33.065357, 35.448498>,  <41.976292, 33.048679, 35.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296497, 33.065357, 35.448498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087068, -0.995085, 0.047183,
		-0.592956, -0.089825, -0.800210,
		0.800514, 0.041695, -0.597862,
		42.536652, 33.077866, 35.269138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817478, 32.561401, 35.200718>,  <41.976292, 33.048679, 35.687641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817478, 32.561401, 35.200718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211777, 32.628529, 35.195976>,  <42.448357, 32.668804, 35.193130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211777, 32.628529, 35.195976>,  <41.817478, 32.561401, 35.200718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211777, 32.628529, 35.195976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164178, -0.974958, -0.150006,
		-0.036734, 0.145921, -0.988614,
		0.985747, 0.167819, -0.011857,
		42.507500, 32.678875, 35.192421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055550, 32.215786, 34.578003>,  <41.817478, 32.561401, 35.200718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055550, 32.215786, 34.578003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385914, 32.273876, 34.795914>,  <42.584133, 32.308731, 34.926659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385914, 32.273876, 34.795914>,  <42.055550, 32.215786, 34.578003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385914, 32.273876, 34.795914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230550, -0.968771, -0.091264,
		0.514511, 0.200975, -0.833599,
		0.825908, 0.145230, 0.544778,
		42.633686, 32.317444, 34.959347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576031, 31.925142, 34.163013>,  <42.055550, 32.215786, 34.578003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576031, 31.925142, 34.163013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687504, 31.904669, 34.546619>,  <42.754387, 31.892385, 34.776783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687504, 31.904669, 34.546619>,  <42.576031, 31.925142, 34.163013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687504, 31.904669, 34.546619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178496, -0.978420, -0.104088,
		0.943651, 0.200188, -0.263530,
		0.278680, -0.051183, 0.959019,
		42.771107, 31.889315, 34.834324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173069, 31.505711, 34.263710>,  <42.576031, 31.925142, 34.163013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173069, 31.505711, 34.263710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032612, 31.521210, 34.637917>,  <42.948338, 31.530508, 34.862442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032612, 31.521210, 34.637917>,  <43.173069, 31.505711, 34.263710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032612, 31.521210, 34.637917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089266, -0.993207, 0.074641,
		0.932057, 0.109720, 0.345300,
		-0.351144, 0.038746, 0.935520,
		42.927269, 31.532833, 34.918571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724773, 31.181448, 34.706829>,  <43.173069, 31.505711, 34.263710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724773, 31.181448, 34.706829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369759, 31.174032, 34.890976>,  <43.156750, 31.169582, 35.001465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369759, 31.174032, 34.890976>,  <43.724773, 31.181448, 34.706829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369759, 31.174032, 34.890976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074031, -0.991946, 0.102775,
		0.454753, 0.125298, 0.881760,
		-0.887536, -0.018541, 0.460366,
		43.103497, 31.168470, 35.029087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834713, 30.735186, 35.374969>,  <43.724773, 31.181448, 34.706829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834713, 30.735186, 35.374969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435513, 30.723980, 35.352299>,  <43.195992, 30.717257, 35.338696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435513, 30.723980, 35.352299>,  <43.834713, 30.735186, 35.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435513, 30.723980, 35.352299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024764, -0.998050, 0.057301,
		-0.058174, 0.055782, 0.996747,
		-0.997999, -0.028016, -0.056679,
		43.136112, 30.715574, 35.335297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557903, 30.235209, 35.817959>,  <43.834713, 30.735186, 35.374969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557903, 30.235209, 35.817959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250095, 30.238575, 35.562534>,  <43.065411, 30.240595, 35.409279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250095, 30.238575, 35.562534>,  <43.557903, 30.235209, 35.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250095, 30.238575, 35.562534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142115, -0.977097, 0.158382,
		-0.622607, 0.212629, 0.753094,
		-0.769522, 0.008416, -0.638565,
		43.019238, 30.241100, 35.370964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976891, 29.846415, 36.032440>,  <43.557903, 30.235209, 35.817959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976891, 29.846415, 36.032440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880535, 29.879860, 35.645660>,  <42.822723, 29.899927, 35.413593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880535, 29.879860, 35.645660>,  <42.976891, 29.846415, 36.032440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880535, 29.879860, 35.645660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227822, -0.973317, -0.027407,
		-0.943435, 0.213690, 0.253507,
		-0.240886, 0.083611, -0.966945,
		42.808270, 29.904943, 35.355576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365284, 29.420353, 35.872540>,  <42.976891, 29.846415, 36.032440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365284, 29.420353, 35.872540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542114, 29.469004, 35.517063>,  <42.648212, 29.498194, 35.303776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542114, 29.469004, 35.517063>,  <42.365284, 29.420353, 35.872540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542114, 29.469004, 35.517063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018669, -0.991797, -0.126453,
		-0.896785, 0.039310, -0.440718,
		0.442073, 0.121629, -0.888694,
		42.674736, 29.505493, 35.250454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086708, 28.878202, 35.439953>,  <42.365284, 29.420353, 35.872540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086708, 28.878202, 35.439953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396091, 29.019161, 35.229210>,  <42.581722, 29.103737, 35.102764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396091, 29.019161, 35.229210>,  <42.086708, 28.878202, 35.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396091, 29.019161, 35.229210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009907, -0.824385, -0.565943,
		-0.633768, 0.442953, -0.634137,
		0.773460, 0.352395, -0.526857,
		42.628128, 29.124880, 35.071152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897213, 28.778149, 34.800968>,  <42.086708, 28.878202, 35.439953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897213, 28.778149, 34.800968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294338, 28.818886, 34.775852>,  <42.532616, 28.843328, 34.760784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294338, 28.818886, 34.775852>,  <41.897213, 28.778149, 34.800968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294338, 28.818886, 34.775852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058956, -0.873095, -0.483973,
		-0.104107, 0.476795, -0.872828,
		0.992817, 0.101844, -0.062785,
		42.592182, 28.849440, 34.757015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136463, 28.703897, 34.108749>,  <41.897213, 28.778149, 34.800968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136463, 28.703897, 34.108749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458527, 28.591558, 34.317688>,  <42.651764, 28.524155, 34.443050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458527, 28.591558, 34.317688>,  <42.136463, 28.703897, 34.108749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458527, 28.591558, 34.317688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001244, -0.881562, -0.472066,
		0.593058, 0.379439, -0.710147,
		0.805159, -0.280846, 0.522346,
		42.700073, 28.507305, 34.474392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456821, 28.382896, 33.628887>,  <42.136463, 28.703897, 34.108749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456821, 28.382896, 33.628887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623230, 28.239775, 33.963287>,  <42.723076, 28.153902, 34.163929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623230, 28.239775, 33.963287>,  <42.456821, 28.382896, 33.628887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623230, 28.239775, 33.963287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011123, -0.917267, -0.398117,
		0.909286, 0.174924, -0.377624,
		0.416022, -0.357802, 0.836004,
		42.748035, 28.132435, 34.214088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984421, 27.933716, 33.443890>,  <42.456821, 28.382896, 33.628887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984421, 27.933716, 33.443890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945015, 27.808884, 33.821865>,  <42.921371, 27.733984, 34.048649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945015, 27.808884, 33.821865>,  <42.984421, 27.933716, 33.443890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945015, 27.808884, 33.821865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253216, -0.926160, -0.279483,
		0.962381, 0.211740, 0.170261,
		-0.098511, -0.312082, 0.944934,
		42.915462, 27.715260, 34.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588001, 27.567923, 33.669373>,  <42.984421, 27.933716, 33.443890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588001, 27.567923, 33.669373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287231, 27.443523, 33.901886>,  <43.106770, 27.368885, 34.041393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287231, 27.443523, 33.901886>,  <43.588001, 27.567923, 33.669373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287231, 27.443523, 33.901886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153956, -0.940193, -0.303868,
		0.641017, -0.138995, 0.754836,
		-0.751927, -0.310996, 0.581281,
		43.061653, 27.350225, 34.076271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867641, 26.868286, 33.933125>,  <43.588001, 27.567923, 33.669373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867641, 26.868286, 33.933125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472054, 26.864994, 33.992290>,  <43.234703, 26.863020, 34.027790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472054, 26.864994, 33.992290>,  <43.867641, 26.868286, 33.933125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472054, 26.864994, 33.992290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017565, -0.997926, 0.061923,
		0.147098, 0.063838, 0.987060,
		-0.988966, -0.008228, 0.147914,
		43.175365, 26.862526, 34.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784393, 26.296515, 34.327427>,  <43.867641, 26.868286, 33.933125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784393, 26.296515, 34.327427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419605, 26.374641, 34.183113>,  <43.200733, 26.421518, 34.096523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419605, 26.374641, 34.183113>,  <43.784393, 26.296515, 34.327427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419605, 26.374641, 34.183113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141263, -0.975122, -0.170827,
		-0.385174, -0.104824, 0.916871,
		-0.911968, 0.195318, -0.360784,
		43.146015, 26.433237, 34.074879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395073, 25.768009, 34.531036>,  <43.784393, 26.296515, 34.327427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395073, 25.768009, 34.531036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130447, 25.914972, 34.269550>,  <42.971672, 26.003149, 34.112659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130447, 25.914972, 34.269550>,  <43.395073, 25.768009, 34.531036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130447, 25.914972, 34.269550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159031, -0.920663, -0.356496,
		-0.732832, -0.131883, 0.667506,
		-0.661564, 0.367406, -0.653718,
		42.931980, 26.025194, 34.073437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728451, 25.398922, 34.692162>,  <43.395073, 25.768009, 34.531036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728451, 25.398922, 34.692162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750416, 25.535189, 34.316730>,  <42.763596, 25.616949, 34.091473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750416, 25.535189, 34.316730>,  <42.728451, 25.398922, 34.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750416, 25.535189, 34.316730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230344, -0.910321, -0.343886,
		-0.971559, 0.235079, 0.028486,
		0.054909, 0.340667, -0.938579,
		42.766888, 25.637388, 34.035156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198071, 25.012611, 34.429977>,  <42.728451, 25.398922, 34.692162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198071, 25.012611, 34.429977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414314, 25.154501, 34.124844>,  <42.544060, 25.239635, 33.941765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414314, 25.154501, 34.124844>,  <42.198071, 25.012611, 34.429977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414314, 25.154501, 34.124844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197765, -0.827762, -0.525070,
		-0.817701, 0.434717, -0.377340,
		0.540605, 0.354726, -0.762834,
		42.576496, 25.260920, 33.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471508, 25.287565, 34.562298>,  <42.198071, 25.012611, 34.429977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471508, 25.287565, 34.562298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580853, 25.270426, 34.177914>,  <41.646458, 25.260143, 33.947285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580853, 25.270426, 34.177914>,  <41.471508, 25.287565, 34.562298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580853, 25.270426, 34.177914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393786, -0.916444, -0.071155,
		-0.877615, 0.397863, -0.267390,
		0.273358, -0.042847, -0.960958,
		41.662861, 25.257572, 33.889626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953934, 25.226770, 34.046566>,  <41.471508, 25.287565, 34.562298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953934, 25.226770, 34.046566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255482, 24.988928, 33.934761>,  <41.436409, 24.846222, 33.867680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255482, 24.988928, 33.934761>,  <40.953934, 25.226770, 34.046566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255482, 24.988928, 33.934761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635395, -0.768048, -0.079844,
		-0.167201, 0.237792, -0.956817,
		0.753868, -0.594607, -0.279510,
		41.481644, 24.810545, 33.850906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047115, 24.832357, 33.350151>,  <40.953934, 25.226770, 34.046566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047115, 24.832357, 33.350151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228691, 24.600611, 33.620934>,  <41.337635, 24.461563, 33.783405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228691, 24.600611, 33.620934>,  <41.047115, 24.832357, 33.350151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228691, 24.600611, 33.620934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601653, -0.759694, -0.246736,
		0.657233, -0.295293, -0.693431,
		0.453935, -0.579368, 0.676960,
		41.364872, 24.426800, 33.824020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341503, 24.168098, 33.079586>,  <41.047115, 24.832357, 33.350151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341503, 24.168098, 33.079586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190266, 24.179701, 33.449711>,  <41.099522, 24.186663, 33.671787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190266, 24.179701, 33.449711>,  <41.341503, 24.168098, 33.079586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190266, 24.179701, 33.449711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782049, -0.544893, -0.302474,
		0.495424, -0.838004, 0.228703,
		-0.378093, 0.029004, 0.925313,
		41.076839, 24.188402, 33.727306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558498, 24.802702, 32.858685>,  <41.341503, 24.168098, 33.079586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558498, 24.802702, 32.858685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572201, 25.201603, 32.832413>,  <41.580421, 25.440943, 32.816650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572201, 25.201603, 32.832413>,  <41.558498, 24.802702, 32.858685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572201, 25.201603, 32.832413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680679, -0.071399, -0.729094,
		-0.731780, -0.019728, -0.681255,
		0.034258, 0.997253, -0.065677,
		41.582478, 25.500778, 32.812710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447960, 24.986187, 32.133236>,  <41.558498, 24.802702, 32.858685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447960, 24.986187, 32.133236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666935, 25.265198, 32.318176>,  <41.798321, 25.432604, 32.429138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666935, 25.265198, 32.318176>,  <41.447960, 24.986187, 32.133236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666935, 25.265198, 32.318176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746463, -0.157276, -0.646573,
		-0.378286, 0.699086, -0.606777,
		0.547442, 0.697527, 0.462346,
		41.831169, 25.474455, 32.456879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668118, 25.460075, 31.621748>,  <41.447960, 24.986187, 32.133236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668118, 25.460075, 31.621748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926147, 25.447882, 31.927151>,  <42.080967, 25.440565, 32.110394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926147, 25.447882, 31.927151>,  <41.668118, 25.460075, 31.621748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926147, 25.447882, 31.927151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752337, -0.149439, -0.641605,
		0.133656, 0.988301, -0.073467,
		0.645078, -0.030482, 0.763508,
		42.119671, 25.438738, 32.156204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178234, 25.942791, 31.375763>,  <41.668118, 25.460075, 31.621748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178234, 25.942791, 31.375763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307877, 25.646162, 31.610720>,  <42.385662, 25.468185, 31.751694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307877, 25.646162, 31.610720>,  <42.178234, 25.942791, 31.375763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307877, 25.646162, 31.610720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724731, -0.204448, -0.658001,
		0.608045, 0.638964, 0.471175,
		0.324108, -0.741570, 0.587391,
		42.405109, 25.423691, 31.786938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253754, 26.623331, 31.601618>,  <42.178234, 25.942791, 31.375763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253754, 26.623331, 31.601618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981819, 26.890955, 31.481499>,  <41.818657, 27.051529, 31.409428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981819, 26.890955, 31.481499>,  <42.253754, 26.623331, 31.601618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981819, 26.890955, 31.481499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387547, 0.675397, 0.627413,
		0.622594, 0.310162, -0.718454,
		-0.679841, 0.669058, -0.300296,
		41.777866, 27.091673, 31.391411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524216, 27.221672, 31.272047>,  <42.253754, 26.623331, 31.601618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524216, 27.221672, 31.272047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182854, 27.306852, 31.462353>,  <41.978035, 27.357962, 31.576536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182854, 27.306852, 31.462353>,  <42.524216, 27.221672, 31.272047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182854, 27.306852, 31.462353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418516, 0.824021, 0.381881,
		-0.310719, 0.525014, -0.792347,
		-0.853404, 0.212953, 0.475766,
		41.926834, 27.370739, 31.605083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264191, 27.897507, 31.081089>,  <42.524216, 27.221672, 31.272047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264191, 27.897507, 31.081089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129589, 27.819063, 31.449503>,  <42.048828, 27.771996, 31.670551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129589, 27.819063, 31.449503>,  <42.264191, 27.897507, 31.081089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129589, 27.819063, 31.449503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365752, 0.874065, 0.319741,
		-0.867748, 0.444466, -0.222402,
		-0.336508, -0.196111, 0.921034,
		42.028637, 27.760229, 31.725813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827198, 28.444763, 31.258305>,  <42.264191, 27.897507, 31.081089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827198, 28.444763, 31.258305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957752, 28.270632, 31.593914>,  <42.036083, 28.166153, 31.795280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957752, 28.270632, 31.593914>,  <41.827198, 28.444763, 31.258305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957752, 28.270632, 31.593914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429336, 0.859063, 0.278714,
		-0.842106, 0.269254, 0.467289,
		0.326386, -0.435331, 0.839023,
		42.055668, 28.140032, 31.845621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969589, 29.016239, 31.722775>,  <41.827198, 28.444763, 31.258305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969589, 29.016239, 31.722775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125336, 28.731958, 31.957140>,  <42.218784, 28.561390, 32.097759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125336, 28.731958, 31.957140>,  <41.969589, 29.016239, 31.722775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125336, 28.731958, 31.957140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481408, 0.699342, 0.528363,
		-0.785262, 0.076336, 0.614440,
		0.389370, -0.710700, 0.585916,
		42.242146, 28.518749, 32.132915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920712, 29.198347, 32.409355>,  <41.969589, 29.016239, 31.722775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920712, 29.198347, 32.409355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219090, 28.931957, 32.412132>,  <42.398117, 28.772123, 32.413799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219090, 28.931957, 32.412132>,  <41.920712, 29.198347, 32.409355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219090, 28.931957, 32.412132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585362, 0.660551, 0.470131,
		-0.317680, -0.346628, 0.882569,
		0.745943, -0.665974, 0.006941,
		42.442871, 28.732164, 32.414215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169399, 29.148039, 33.173157>,  <41.920712, 29.198347, 32.409355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169399, 29.148039, 33.173157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438705, 29.046719, 32.895290>,  <42.600288, 28.985926, 32.728573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438705, 29.046719, 32.895290>,  <42.169399, 29.148039, 33.173157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438705, 29.046719, 32.895290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629239, 0.689654, 0.358380,
		0.388298, -0.678392, 0.623705,
		0.673263, -0.253301, -0.694662,
		42.640686, 28.970728, 32.686893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799953, 29.128214, 33.630169>,  <42.169399, 29.148039, 33.173157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799953, 29.128214, 33.630169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925648, 29.152369, 33.251202>,  <43.001064, 29.166861, 33.023819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925648, 29.152369, 33.251202>,  <42.799953, 29.128214, 33.630169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925648, 29.152369, 33.251202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777979, 0.555551, 0.293449,
		0.544061, -0.829286, 0.127598,
		0.314241, 0.060385, -0.947421,
		43.019920, 29.170485, 32.966976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483791, 28.843397, 33.649040>,  <42.799953, 29.128214, 33.630169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483791, 28.843397, 33.649040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423218, 29.084429, 33.335617>,  <43.386871, 29.229048, 33.147564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423218, 29.084429, 33.335617>,  <43.483791, 28.843397, 33.649040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423218, 29.084429, 33.335617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676365, 0.641240, 0.362411,
		0.720831, -0.475090, -0.504671,
		-0.151437, 0.602579, -0.783560,
		43.377785, 29.265202, 33.100548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132076, 29.142925, 33.583294>,  <43.483791, 28.843397, 33.649040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132076, 29.142925, 33.583294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888329, 29.377722, 33.370087>,  <43.742081, 29.518600, 33.242161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888329, 29.377722, 33.370087>,  <44.132076, 29.142925, 33.583294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888329, 29.377722, 33.370087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503020, 0.805849, 0.312376,
		0.612895, -0.077767, -0.786328,
		-0.609369, 0.586992, -0.533019,
		43.705517, 29.553820, 33.210182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572327, 29.606918, 33.256870>,  <44.132076, 29.142925, 33.583294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572327, 29.606918, 33.256870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212940, 29.781672, 33.239475>,  <43.997307, 29.886522, 33.229038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212940, 29.781672, 33.239475>,  <44.572327, 29.606918, 33.256870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212940, 29.781672, 33.239475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395249, 0.847999, 0.353095,
		0.191138, 0.300055, -0.934576,
		-0.898468, 0.436881, -0.043488,
		43.943401, 29.912735, 33.226429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634422, 30.185307, 32.778454>,  <44.572327, 29.606918, 33.256870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634422, 30.185307, 32.778454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303894, 30.296951, 32.974121>,  <44.105576, 30.363937, 33.091522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303894, 30.296951, 32.974121>,  <44.634422, 30.185307, 32.778454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303894, 30.296951, 32.974121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429854, 0.873746, 0.227583,
		-0.363885, 0.398327, -0.841975,
		-0.826325, 0.279112, 0.489166,
		44.055996, 30.380686, 33.120872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397709, 30.835129, 32.573933>,  <44.634422, 30.185307, 32.778454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397709, 30.835129, 32.573933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258793, 30.793203, 32.946686>,  <44.175442, 30.768047, 33.170338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258793, 30.793203, 32.946686>,  <44.397709, 30.835129, 32.573933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258793, 30.793203, 32.946686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393092, 0.885941, 0.246145,
		-0.851391, 0.451799, -0.266477,
		-0.347291, -0.104816, 0.931881,
		44.154606, 30.761759, 33.226250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027851, 31.514969, 32.776360>,  <44.397709, 30.835129, 32.573933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027851, 31.514969, 32.776360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105862, 31.309690, 33.110687>,  <44.152668, 31.186523, 33.311283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105862, 31.309690, 33.110687>,  <44.027851, 31.514969, 32.776360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105862, 31.309690, 33.110687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425585, 0.812057, 0.399301,
		-0.883653, 0.277841, 0.376777,
		0.195022, -0.513194, 0.835822,
		44.164368, 31.155733, 33.361435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881557, 31.958006, 33.198235>,  <44.027851, 31.514969, 32.776360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881557, 31.958006, 33.198235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108093, 31.714169, 33.420097>,  <44.244015, 31.567865, 33.553215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108093, 31.714169, 33.420097>,  <43.881557, 31.958006, 33.198235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108093, 31.714169, 33.420097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346268, 0.786709, 0.511066,
		-0.747899, -0.097378, 0.656631,
		0.566344, -0.609596, 0.554660,
		44.277996, 31.531290, 33.586494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752281, 32.148945, 33.874542>,  <43.881557, 31.958006, 33.198235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752281, 32.148945, 33.874542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110729, 31.974897, 33.909492>,  <44.325798, 31.870468, 33.930462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110729, 31.974897, 33.909492>,  <43.752281, 32.148945, 33.874542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110729, 31.974897, 33.909492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352351, 0.817237, 0.456040,
		-0.269842, -0.377879, 0.885660,
		0.896122, -0.435122, 0.087378,
		44.379566, 31.844360, 33.935707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921135, 32.348225, 34.448452>,  <43.752281, 32.148945, 33.874542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921135, 32.348225, 34.448452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276066, 32.231834, 34.305355>,  <44.489025, 32.161999, 34.219498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276066, 32.231834, 34.305355>,  <43.921135, 32.348225, 34.448452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276066, 32.231834, 34.305355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406464, 0.859924, 0.308735,
		0.217794, -0.419358, 0.881308,
		0.887329, -0.290979, -0.357740,
		44.542263, 32.144539, 34.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601952, 32.475128, 34.857635>,  <43.921135, 32.348225, 34.448452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601952, 32.475128, 34.857635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746384, 32.447319, 34.485661>,  <44.833042, 32.430634, 34.262474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746384, 32.447319, 34.485661>,  <44.601952, 32.475128, 34.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746384, 32.447319, 34.485661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469345, 0.875256, 0.116800,
		0.805815, -0.478636, 0.348670,
		0.361080, -0.069528, -0.929939,
		44.854706, 32.426460, 34.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136005, 32.825439, 34.881844>,  <44.601952, 32.475128, 34.857635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136005, 32.825439, 34.881844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076443, 32.817989, 34.486374>,  <45.040707, 32.813519, 34.249092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076443, 32.817989, 34.486374>,  <45.136005, 32.825439, 34.881844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076443, 32.817989, 34.486374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300643, 0.951640, -0.063208,
		0.942041, -0.306650, -0.136107,
		-0.148908, -0.018625, -0.988676,
		45.031769, 32.812401, 34.189770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660015, 33.189606, 34.704411>,  <45.136005, 32.825439, 34.881844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660015, 33.189606, 34.704411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417656, 33.188171, 34.386196>,  <45.272240, 33.187313, 34.195267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417656, 33.188171, 34.386196>,  <45.660015, 33.189606, 34.704411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417656, 33.188171, 34.386196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098293, 0.991991, -0.079327,
		0.789450, -0.126259, -0.600688,
		-0.605893, -0.003581, -0.795538,
		45.235889, 33.187096, 34.147533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951611, 33.706722, 34.268013>,  <45.660015, 33.189606, 34.704411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951611, 33.706722, 34.268013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573128, 33.666973, 34.144840>,  <45.346039, 33.643124, 34.070938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573128, 33.666973, 34.144840>,  <45.951611, 33.706722, 34.268013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573128, 33.666973, 34.144840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084012, 0.994485, -0.062787,
		0.312469, -0.033540, -0.949336,
		-0.946206, -0.099374, -0.307928,
		45.289265, 33.637161, 34.052464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958496, 34.005627, 33.585842>,  <45.951611, 33.706722, 34.268013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958496, 34.005627, 33.585842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609165, 34.025093, 33.779720>,  <45.399567, 34.036774, 33.896049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609165, 34.025093, 33.779720>,  <45.958496, 34.005627, 33.585842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609165, 34.025093, 33.779720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057081, 0.998366, 0.002606,
		-0.483780, 0.029943, -0.874677,
		-0.873326, 0.048667, 0.484699,
		45.347168, 34.039692, 33.925129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937099, 34.658821, 33.670853>,  <45.958496, 34.005627, 33.585842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937099, 34.658821, 33.670853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586166, 34.584511, 33.847836>,  <45.375607, 34.539925, 33.954025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586166, 34.584511, 33.847836>,  <45.937099, 34.658821, 33.670853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586166, 34.584511, 33.847836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136511, 0.980548, 0.141032,
		-0.460051, 0.063332, -0.885631,
		-0.877335, -0.185780, 0.442457,
		45.322968, 34.528778, 33.980572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955963, 35.107788, 34.234020>,  <45.937099, 34.658821, 33.670853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955963, 35.107788, 34.234020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220196, 35.374680, 34.096359>,  <46.378735, 35.534813, 34.013763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220196, 35.374680, 34.096359>,  <45.955963, 35.107788, 34.234020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220196, 35.374680, 34.096359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071948, 0.400037, 0.913671,
		0.747300, -0.628314, 0.216251,
		0.660580, 0.667227, -0.344153,
		46.418369, 35.574848, 33.993114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543495, 35.083527, 34.682697>,  <45.955963, 35.107788, 34.234020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543495, 35.083527, 34.682697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501110, 35.435429, 34.497307>,  <46.475677, 35.646568, 34.386074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501110, 35.435429, 34.497307>,  <46.543495, 35.083527, 34.682697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501110, 35.435429, 34.497307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120893, 0.474040, 0.872164,
		0.986993, 0.036390, -0.156589,
		-0.105968, 0.879751, -0.463475,
		46.469318, 35.699352, 34.358265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351280, 35.105022, 34.584389>,  <46.543495, 35.083527, 34.682697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351280, 35.105022, 34.584389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342758, 34.872768, 34.909943>,  <47.337643, 34.733414, 35.105274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342758, 34.872768, 34.909943>,  <47.351280, 35.105022, 34.584389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342758, 34.872768, 34.909943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941620, 0.261937, 0.211522,
		-0.336003, 0.770874, 0.541160,
		-0.021307, -0.580639, 0.813882,
		47.336365, 34.698578, 35.154106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.387650, 35.444965, 35.214973>,  <47.351280, 35.105022, 34.584389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.387650, 35.444965, 35.214973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556671, 35.085041, 35.258400>,  <47.658085, 34.869087, 35.284454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556671, 35.085041, 35.258400>,  <47.387650, 35.444965, 35.214973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.556671, 35.085041, 35.258400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879762, 0.436009, 0.189511,
		-0.217859, 0.015432, 0.975858,
		0.422558, -0.899810, 0.108565,
		47.683437, 34.815098, 35.290970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.913570, 39.501083, 43.098492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719746, 39.182804, 43.243855>,  <33.603451, 38.991837, 43.331074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719746, 39.182804, 43.243855>,  <33.913570, 39.501083, 43.098492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719746, 39.182804, 43.243855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118291, -0.471228, -0.874043,
		0.866721, -0.380542, 0.322464,
		-0.484564, -0.795696, 0.363408,
		33.574375, 38.944096, 43.352879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320198, 38.987011, 42.877445>,  <33.913570, 39.501083, 43.098492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320198, 38.987011, 42.877445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981869, 38.788933, 42.956814>,  <33.778873, 38.670086, 43.004436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981869, 38.788933, 42.956814>,  <34.320198, 38.987011, 42.877445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981869, 38.788933, 42.956814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037129, -0.425697, -0.904104,
		0.532174, -0.757342, 0.378449,
		-0.845820, -0.495192, 0.198426,
		33.728123, 38.640373, 43.016342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513481, 38.360344, 42.721291>,  <34.320198, 38.987011, 42.877445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513481, 38.360344, 42.721291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113720, 38.350521, 42.711544>,  <33.873863, 38.344627, 42.705696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113720, 38.350521, 42.711544>,  <34.513481, 38.360344, 42.721291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113720, 38.350521, 42.711544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033677, -0.529713, -0.847508,
		0.007905, -0.847822, 0.530223,
		-0.999402, -0.024556, -0.024365,
		33.813900, 38.343155, 42.704235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320538, 37.664314, 42.742847>,  <34.513481, 38.360344, 42.721291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320538, 37.664314, 42.742847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029182, 37.890347, 42.587860>,  <33.854370, 38.025967, 42.494865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029182, 37.890347, 42.587860>,  <34.320538, 37.664314, 42.742847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029182, 37.890347, 42.587860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106730, -0.465037, -0.878834,
		-0.676799, -0.681488, 0.278417,
		-0.728390, 0.565079, -0.387472,
		33.810665, 38.059872, 42.471619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903847, 37.184757, 42.411415>,  <34.320538, 37.664314, 42.742847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903847, 37.184757, 42.411415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802685, 37.530548, 42.237648>,  <33.741989, 37.738022, 42.133389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802685, 37.530548, 42.237648>,  <33.903847, 37.184757, 42.411415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802685, 37.530548, 42.237648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057105, -0.434890, -0.898671,
		-0.965804, -0.252085, 0.060620,
		-0.252904, 0.864479, -0.434414,
		33.726814, 37.789890, 42.107323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520504, 37.016037, 41.867481>,  <33.903847, 37.184757, 42.411415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520504, 37.016037, 41.867481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.610886, 37.385761, 41.744453>,  <33.665115, 37.607594, 41.670635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.610886, 37.385761, 41.744453>,  <33.520504, 37.016037, 41.867481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610886, 37.385761, 41.744453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025665, -0.321276, -0.946638,
		-0.973801, 0.205999, -0.096315,
		0.225950, 0.924308, -0.307572,
		33.678669, 37.663055, 41.652184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123585, 37.193584, 41.178295>,  <33.520504, 37.016037, 41.867481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123585, 37.193584, 41.178295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463959, 37.403316, 41.190884>,  <33.668182, 37.529156, 41.198437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463959, 37.403316, 41.190884>,  <33.123585, 37.193584, 41.178295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463959, 37.403316, 41.190884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151763, -0.188060, -0.970362,
		-0.502873, 0.830488, -0.239600,
		0.850933, 0.524331, 0.031467,
		33.719238, 37.560616, 41.200325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161194, 37.538414, 40.503540>,  <33.123585, 37.193584, 41.178295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161194, 37.538414, 40.503540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.533150, 37.539829, 40.650669>,  <33.756325, 37.540680, 40.738945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.533150, 37.539829, 40.650669>,  <33.161194, 37.538414, 40.503540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533150, 37.539829, 40.650669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367819, -0.018143, -0.929720,
		0.003385, 0.999829, -0.018172,
		0.929891, 0.003537, 0.367818,
		33.812119, 37.540890, 40.761013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633942, 37.899445, 39.929153>,  <33.161194, 37.538414, 40.503540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633942, 37.899445, 39.929153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.881874, 37.681808, 40.155350>,  <34.030632, 37.551228, 40.291065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.881874, 37.681808, 40.155350>,  <33.633942, 37.899445, 39.929153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881874, 37.681808, 40.155350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658263, -0.031801, -0.752116,
		0.427201, 0.838424, 0.338443,
		0.619830, -0.544089, 0.565489,
		34.067822, 37.518581, 40.324997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307728, 38.237385, 39.793472>,  <33.633942, 37.899445, 39.929153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307728, 38.237385, 39.793472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355221, 37.871365, 39.947659>,  <34.383717, 37.651752, 40.040169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355221, 37.871365, 39.947659>,  <34.307728, 38.237385, 39.793472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355221, 37.871365, 39.947659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733560, -0.180790, -0.655137,
		0.669172, 0.360548, 0.649779,
		0.118735, -0.915052, 0.385464,
		34.390842, 37.596848, 40.063297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007942, 38.059353, 39.716492>,  <34.307728, 38.237385, 39.793472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007942, 38.059353, 39.716492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885036, 37.684841, 39.784584>,  <34.811295, 37.460136, 39.825439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885036, 37.684841, 39.784584>,  <35.007942, 38.059353, 39.716492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885036, 37.684841, 39.784584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787956, -0.350613, -0.506158,
		0.533587, -0.021391, 0.845475,
		-0.307261, -0.936276, 0.170227,
		34.792858, 37.403957, 39.835651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592796, 37.643356, 39.940063>,  <35.007942, 38.059353, 39.716492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592796, 37.643356, 39.940063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313400, 37.385006, 39.816803>,  <35.145763, 37.229996, 39.742847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313400, 37.385006, 39.816803>,  <35.592796, 37.643356, 39.940063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313400, 37.385006, 39.816803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691187, -0.497314, -0.524347,
		0.185414, -0.579242, 0.793789,
		-0.698486, -0.645878, -0.308155,
		35.103855, 37.191242, 39.724358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854507, 36.888092, 40.022415>,  <35.592796, 37.643356, 39.940063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854507, 36.888092, 40.022415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.560829, 36.902954, 39.751247>,  <35.384624, 36.911873, 39.588547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.560829, 36.902954, 39.751247>,  <35.854507, 36.888092, 40.022415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560829, 36.902954, 39.751247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586765, -0.467604, -0.661100,
		-0.341565, -0.883157, 0.321508,
		-0.734193, 0.037159, -0.677923,
		35.340572, 36.914101, 39.547871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690960, 36.156441, 39.869091>,  <35.854507, 36.888092, 40.022415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690960, 36.156441, 39.869091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566700, 36.381805, 39.562874>,  <35.492146, 36.517025, 39.379143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566700, 36.381805, 39.562874>,  <35.690960, 36.156441, 39.869091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566700, 36.381805, 39.562874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425302, -0.637884, -0.642045,
		-0.850068, -0.525038, -0.041464,
		-0.310649, 0.563417, -0.765545,
		35.473507, 36.550831, 39.333210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518227, 35.644257, 39.294910>,  <35.690960, 36.156441, 39.869091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518227, 35.644257, 39.294910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533123, 35.997780, 39.108368>,  <35.542061, 36.209896, 38.996441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533123, 35.997780, 39.108368>,  <35.518227, 35.644257, 39.294910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533123, 35.997780, 39.108368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571833, -0.401574, -0.715364,
		-0.819524, -0.240037, -0.520348,
		0.037244, 0.883810, -0.466361,
		35.544296, 36.262924, 38.968460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420570, 35.443333, 38.649666>,  <35.518227, 35.644257, 39.294910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420570, 35.443333, 38.649666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577751, 35.807312, 38.596622>,  <35.672058, 36.025700, 38.564796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577751, 35.807312, 38.596622>,  <35.420570, 35.443333, 38.649666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577751, 35.807312, 38.596622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424626, -0.307467, -0.851561,
		-0.815649, 0.278313, -0.507207,
		0.392950, 0.909948, -0.132606,
		35.695637, 36.080296, 38.556839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264183, 35.676117, 37.950626>,  <35.420570, 35.443333, 38.649666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264183, 35.676117, 37.950626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567726, 35.910362, 38.064602>,  <35.749851, 36.050907, 38.132988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567726, 35.910362, 38.064602>,  <35.264183, 35.676117, 37.950626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567726, 35.910362, 38.064602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267284, 0.118921, -0.956252,
		-0.593877, 0.801821, -0.066280,
		0.758861, 0.585611, 0.284939,
		35.795383, 36.086044, 38.150082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225399, 36.282463, 37.542210>,  <35.264183, 35.676117, 37.950626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225399, 36.282463, 37.542210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599075, 36.214897, 37.667904>,  <35.823280, 36.174358, 37.743320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599075, 36.214897, 37.667904>,  <35.225399, 36.282463, 37.542210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599075, 36.214897, 37.667904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332480, 0.092805, -0.938533,
		0.129374, 0.981251, 0.142860,
		0.934195, -0.168920, 0.314240,
		35.879333, 36.164223, 37.762177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522999, 36.644375, 37.105019>,  <35.225399, 36.282463, 37.542210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522999, 36.644375, 37.105019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830597, 36.438633, 37.256855>,  <36.015156, 36.315186, 37.347958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830597, 36.438633, 37.256855>,  <35.522999, 36.644375, 37.105019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830597, 36.438633, 37.256855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495522, 0.104477, -0.862289,
		0.403867, 0.851188, 0.335218,
		0.768992, -0.514358, 0.379587,
		36.061295, 36.284325, 37.370731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240505, 37.050472, 36.935726>,  <35.522999, 36.644375, 37.105019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240505, 37.050472, 36.935726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313663, 36.664452, 37.010796>,  <36.357559, 36.432838, 37.055836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313663, 36.664452, 37.010796>,  <36.240505, 37.050472, 36.935726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313663, 36.664452, 37.010796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612513, -0.037460, -0.789572,
		0.769010, 0.259361, 0.584256,
		0.182898, -0.965054, 0.187669,
		36.368534, 36.374935, 37.067097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952095, 36.949959, 36.757633>,  <36.240505, 37.050472, 36.935726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952095, 36.949959, 36.757633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766781, 36.595558, 36.765404>,  <36.655594, 36.382919, 36.770065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766781, 36.595558, 36.765404>,  <36.952095, 36.949959, 36.757633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766781, 36.595558, 36.765404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359512, -0.207933, -0.909678,
		0.810012, -0.414455, 0.414859,
		-0.463284, -0.885997, 0.019426,
		36.627796, 36.329758, 36.771233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454975, 36.535877, 36.635601>,  <36.952095, 36.949959, 36.757633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454975, 36.535877, 36.635601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096825, 36.387096, 36.537659>,  <36.881935, 36.297829, 36.478893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096825, 36.387096, 36.537659>,  <37.454975, 36.535877, 36.635601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096825, 36.387096, 36.537659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315222, -0.141018, -0.938482,
		0.314545, -0.917477, 0.243512,
		-0.895375, -0.371955, -0.244853,
		36.828213, 36.275509, 36.464203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131596, 36.414097, 36.908581>,  <37.454975, 36.535877, 36.635601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131596, 36.414097, 36.908581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448116, 36.620941, 36.778080>,  <38.638027, 36.745049, 36.699780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448116, 36.620941, 36.778080>,  <38.131596, 36.414097, 36.908581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448116, 36.620941, 36.778080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002769, 0.530552, 0.847648,
		0.611423, -0.671646, 0.418393,
		0.791299, 0.517113, -0.326251,
		38.685505, 36.776073, 36.680206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670883, 36.451054, 37.414730>,  <38.131596, 36.414097, 36.908581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670883, 36.451054, 37.414730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734489, 36.755032, 37.162632>,  <38.772652, 36.937416, 37.011375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734489, 36.755032, 37.162632>,  <38.670883, 36.451054, 37.414730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734489, 36.755032, 37.162632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111473, 0.648102, 0.753351,
		0.980963, -0.049539, 0.187770,
		0.159014, 0.759941, -0.630242,
		38.782192, 36.983013, 36.973560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146774, 36.832230, 37.712547>,  <38.670883, 36.451054, 37.414730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146774, 36.832230, 37.712547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982342, 37.090027, 37.454666>,  <38.883682, 37.244705, 37.299938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982342, 37.090027, 37.454666>,  <39.146774, 36.832230, 37.712547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982342, 37.090027, 37.454666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199465, 0.626496, 0.753470,
		0.889508, 0.438335, -0.128989,
		-0.411084, 0.644489, -0.644705,
		38.859016, 37.283375, 37.261253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357807, 37.546371, 37.868038>,  <39.146774, 36.832230, 37.712547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357807, 37.546371, 37.868038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.014275, 37.585140, 37.666836>,  <38.808155, 37.608402, 37.546116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.014275, 37.585140, 37.666836>,  <39.357807, 37.546371, 37.868038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014275, 37.585140, 37.666836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243782, 0.786280, 0.567744,
		0.450530, 0.610221, -0.651654,
		-0.858832, 0.096924, -0.503004,
		38.756626, 37.614216, 37.515934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399929, 38.227230, 37.533558>,  <39.357807, 37.546371, 37.868038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399929, 38.227230, 37.533558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.030483, 38.098282, 37.616512>,  <38.808815, 38.020912, 37.666283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.030483, 38.098282, 37.616512>,  <39.399929, 38.227230, 37.533558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030483, 38.098282, 37.616512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137491, 0.783648, 0.605799,
		-0.357804, 0.531014, -0.768115,
		-0.923619, -0.322367, 0.207383,
		38.753399, 38.001572, 37.678726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135143, 38.775558, 37.961449>,  <39.399929, 38.227230, 37.533558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135143, 38.775558, 37.961449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816547, 38.534199, 37.945930>,  <38.625389, 38.389381, 37.936619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816547, 38.534199, 37.945930>,  <39.135143, 38.775558, 37.961449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816547, 38.534199, 37.945930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454313, 0.554887, 0.696922,
		-0.398996, 0.572719, -0.716097,
		-0.796493, -0.603401, -0.038797,
		38.577599, 38.353180, 37.934292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636635, 39.183949, 37.768368>,  <39.135143, 38.775558, 37.961449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636635, 39.183949, 37.768368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470516, 38.872047, 37.955776>,  <38.370846, 38.684906, 38.068222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470516, 38.872047, 37.955776>,  <38.636635, 39.183949, 37.768368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470516, 38.872047, 37.955776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472583, 0.625015, 0.621306,
		-0.777301, 0.036607, -0.628063,
		-0.415293, -0.779754, 0.468525,
		38.345928, 38.638123, 38.096333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906498, 39.247299, 37.796547>,  <38.636635, 39.183949, 37.768368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906498, 39.247299, 37.796547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013123, 39.003822, 38.095463>,  <38.077095, 38.857735, 38.274811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013123, 39.003822, 38.095463>,  <37.906498, 39.247299, 37.796547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013123, 39.003822, 38.095463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604538, 0.498270, 0.621499,
		-0.750653, -0.617430, -0.235160,
		0.266558, -0.608694, 0.747287,
		38.093090, 38.821213, 38.319649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325348, 39.342339, 38.287708>,  <37.906498, 39.247299, 37.796547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325348, 39.342339, 38.287708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591000, 39.138584, 38.506599>,  <37.750393, 39.016331, 38.637932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591000, 39.138584, 38.506599>,  <37.325348, 39.342339, 38.287708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591000, 39.138584, 38.506599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444049, 0.320096, 0.836875,
		-0.601457, -0.798789, -0.013606,
		0.664131, -0.509386, 0.547225,
		37.790237, 38.985767, 38.670769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028618, 38.809074, 38.770737>,  <37.325348, 39.342339, 38.287708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028618, 38.809074, 38.770737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366196, 38.985413, 38.892990>,  <37.568741, 39.091213, 38.966343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366196, 38.985413, 38.892990>,  <37.028618, 38.809074, 38.770737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366196, 38.985413, 38.892990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477162, 0.356615, 0.803207,
		0.245096, -0.823700, 0.511318,
		0.843945, 0.440845, 0.305634,
		37.619381, 39.117664, 38.984680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967564, 38.717293, 39.476044>,  <37.028618, 38.809074, 38.770737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967564, 38.717293, 39.476044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262867, 38.987026, 39.469723>,  <37.440048, 39.148865, 39.465931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262867, 38.987026, 39.469723>,  <36.967564, 38.717293, 39.476044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262867, 38.987026, 39.469723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320321, 0.371116, 0.871589,
		0.593604, -0.638397, 0.489983,
		0.738260, 0.674331, -0.015804,
		37.484344, 39.189327, 39.464981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190895, 38.772980, 40.261089>,  <36.967564, 38.717293, 39.476044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190895, 38.772980, 40.261089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349998, 39.083889, 40.066101>,  <37.445461, 39.270435, 39.949108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349998, 39.083889, 40.066101>,  <37.190895, 38.772980, 40.261089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349998, 39.083889, 40.066101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274192, 0.607734, 0.745304,
		0.875562, -0.162788, 0.454853,
		0.397756, 0.777277, -0.487474,
		37.469326, 39.317074, 39.919857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601078, 39.144028, 40.721546>,  <37.190895, 38.772980, 40.261089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601078, 39.144028, 40.721546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467056, 39.399834, 40.444775>,  <37.386642, 39.553318, 40.278713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467056, 39.399834, 40.444775>,  <37.601078, 39.144028, 40.721546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467056, 39.399834, 40.444775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327732, 0.609415, 0.721946,
		0.883365, 0.468655, 0.005404,
		-0.335050, 0.639512, -0.691929,
		37.366543, 39.591686, 40.237194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830677, 39.817886, 40.879017>,  <37.601078, 39.144028, 40.721546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830677, 39.817886, 40.879017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497753, 39.817059, 40.657291>,  <37.298000, 39.816563, 40.524258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497753, 39.817059, 40.657291>,  <37.830677, 39.817886, 40.879017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497753, 39.817059, 40.657291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470019, 0.532746, 0.703749,
		0.293852, 0.846273, -0.444380,
		-0.832306, -0.002069, -0.554313,
		37.248062, 39.816437, 40.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529465, 40.407593, 40.939579>,  <37.830677, 39.817886, 40.879017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529465, 40.407593, 40.939579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204567, 40.204758, 40.824253>,  <37.009628, 40.083057, 40.755058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204567, 40.204758, 40.824253>,  <37.529465, 40.407593, 40.939579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204567, 40.204758, 40.824253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525771, 0.422366, 0.738357,
		-0.252634, 0.751314, -0.609674,
		-0.812244, -0.507083, -0.288315,
		36.960892, 40.052631, 40.737759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005440, 40.919495, 40.957729>,  <37.529465, 40.407593, 40.939579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005440, 40.919495, 40.957729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796158, 40.578739, 40.948513>,  <36.670589, 40.374283, 40.942982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796158, 40.578739, 40.948513>,  <37.005440, 40.919495, 40.957729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796158, 40.578739, 40.948513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519518, 0.297408, 0.801031,
		-0.675540, 0.431075, -0.598180,
		-0.523208, -0.851893, -0.023040,
		36.639194, 40.323170, 40.941601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343037, 41.118980, 40.986031>,  <37.005440, 40.919495, 40.957729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343037, 41.118980, 40.986031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350643, 40.740555, 41.115402>,  <36.355206, 40.513500, 41.193024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350643, 40.740555, 41.115402>,  <36.343037, 41.118980, 40.986031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350643, 40.740555, 41.115402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613720, 0.244331, 0.750766,
		-0.789295, -0.212769, -0.575971,
		0.019012, -0.946061, 0.323430,
		36.356346, 40.456738, 41.212433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677238, 41.050083, 41.078175>,  <36.343037, 41.118980, 40.986031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677238, 41.050083, 41.078175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863819, 40.766911, 41.290306>,  <35.975769, 40.597008, 41.417583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863819, 40.766911, 41.290306>,  <35.677238, 41.050083, 41.078175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863819, 40.766911, 41.290306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459870, 0.318065, 0.829069,
		-0.755606, -0.630604, -0.177195,
		0.466454, -0.707936, 0.530328,
		36.003754, 40.554531, 41.449406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.008831, 40.583504, 41.416702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346340, 40.531353, 41.624954>,  <35.548843, 40.500061, 41.749905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346340, 40.531353, 41.624954>,  <35.008831, 40.583504, 41.416702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346340, 40.531353, 41.624954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503109, 0.145668, 0.851858,
		-0.186903, -0.980705, 0.057316,
		0.843771, -0.130378, 0.520627,
		35.599472, 40.492241, 41.781143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850750, 40.121639, 42.021824>,  <35.008831, 40.583504, 41.416702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850750, 40.121639, 42.021824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195938, 40.296139, 42.123779>,  <35.403049, 40.400841, 42.184952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195938, 40.296139, 42.123779>,  <34.850750, 40.121639, 42.021824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195938, 40.296139, 42.123779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347691, 0.146722, 0.926058,
		0.366601, -0.887780, 0.278298,
		0.862969, 0.436255, 0.254884,
		35.454830, 40.427013, 42.200245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934879, 39.821758, 42.685753>,  <34.850750, 40.121639, 42.021824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934879, 39.821758, 42.685753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207924, 40.112816, 42.658695>,  <35.371750, 40.287449, 42.642460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.207924, 40.112816, 42.658695>,  <34.934879, 39.821758, 42.685753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207924, 40.112816, 42.658695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194439, 0.270070, 0.943004,
		0.704437, -0.630555, 0.325835,
		0.682614, 0.727642, -0.067643,
		35.412708, 40.331108, 42.638401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414757, 39.709011, 43.256706>,  <34.934879, 39.821758, 42.685753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414757, 39.709011, 43.256706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395756, 40.086853, 43.126801>,  <35.384357, 40.313557, 43.048859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395756, 40.086853, 43.126801>,  <35.414757, 39.709011, 43.256706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395756, 40.086853, 43.126801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265135, 0.301546, 0.915846,
		0.963041, 0.129607, 0.236124,
		-0.047498, 0.944601, -0.324764,
		35.381508, 40.370232, 43.029369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720543, 40.129292, 43.701271>,  <35.414757, 39.709011, 43.256706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720543, 40.129292, 43.701271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.480907, 40.392681, 43.519062>,  <35.337128, 40.550716, 43.409737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.480907, 40.392681, 43.519062>,  <35.720543, 40.129292, 43.701271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480907, 40.392681, 43.519062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213393, 0.417029, 0.883487,
		0.771722, 0.626493, -0.109323,
		-0.599090, 0.658478, -0.455520,
		35.301182, 40.590225, 43.382404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773884, 40.646183, 44.124390>,  <35.720543, 40.129292, 43.701271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773884, 40.646183, 44.124390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444550, 40.743530, 43.919300>,  <35.246948, 40.801937, 43.796246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444550, 40.743530, 43.919300>,  <35.773884, 40.646183, 44.124390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444550, 40.743530, 43.919300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403654, 0.383971, 0.830439,
		0.398976, 0.890695, -0.217900,
		-0.823336, 0.243369, -0.512728,
		35.197548, 40.816540, 43.765480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548450, 41.311184, 44.371769>,  <35.773884, 40.646183, 44.124390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548450, 41.311184, 44.371769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208057, 41.149517, 44.237617>,  <35.003822, 41.052517, 44.157127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208057, 41.149517, 44.237617>,  <35.548450, 41.311184, 44.371769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208057, 41.149517, 44.237617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525155, 0.647149, 0.552640,
		-0.006322, 0.646411, -0.762963,
		-0.850983, -0.404167, -0.335374,
		34.952763, 41.028267, 44.137005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138550, 41.911137, 44.131310>,  <35.548450, 41.311184, 44.371769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138550, 41.911137, 44.131310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896439, 41.600044, 44.199158>,  <34.751171, 41.413391, 44.239868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896439, 41.600044, 44.199158>,  <35.138550, 41.911137, 44.131310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896439, 41.600044, 44.199158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554843, 0.565003, 0.610673,
		-0.570774, 0.275517, -0.773503,
		-0.605282, -0.777729, 0.169620,
		34.714855, 41.366726, 44.250046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417809, 42.280895, 44.164753>,  <35.138550, 41.911137, 44.131310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417809, 42.280895, 44.164753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399296, 41.924110, 44.344646>,  <34.388187, 41.710041, 44.452583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399296, 41.924110, 44.344646>,  <34.417809, 42.280895, 44.164753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399296, 41.924110, 44.344646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522125, 0.405426, 0.750343,
		-0.851612, -0.200088, -0.484481,
		-0.046286, -0.891961, 0.449737,
		34.385410, 41.656521, 44.479568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847298, 42.316784, 44.559536>,  <34.417809, 42.280895, 44.164753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847298, 42.316784, 44.559536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016457, 41.986958, 44.709869>,  <34.117950, 41.789062, 44.800068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016457, 41.986958, 44.709869>,  <33.847298, 42.316784, 44.559536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016457, 41.986958, 44.709869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354857, 0.230932, 0.905951,
		-0.833807, -0.516491, -0.194942,
		0.422897, -0.824565, 0.375833,
		34.143326, 41.739590, 44.822620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361843, 42.037117, 44.958420>,  <33.847298, 42.316784, 44.559536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361843, 42.037117, 44.958420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695576, 41.873867, 45.106647>,  <33.895817, 41.775917, 45.195583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695576, 41.873867, 45.106647>,  <33.361843, 42.037117, 44.958420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695576, 41.873867, 45.106647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237164, 0.341088, 0.909622,
		-0.497635, -0.846815, 0.187789,
		0.834334, -0.408123, 0.370571,
		33.945877, 41.751431, 45.217819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292316, 41.721703, 45.610310>,  <33.361843, 42.037117, 44.958420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292316, 41.721703, 45.610310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682121, 41.809185, 45.590313>,  <33.916004, 41.861675, 45.578316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682121, 41.809185, 45.590313>,  <33.292316, 41.721703, 45.610310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682121, 41.809185, 45.590313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005317, 0.245278, 0.969438,
		0.224271, -0.944464, 0.240190,
		0.974512, 0.218694, -0.049987,
		33.974476, 41.874798, 45.575317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574326, 41.524910, 46.270893>,  <33.292316, 41.721703, 45.610310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574326, 41.524910, 46.270893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.881794, 41.740273, 46.132755>,  <34.066277, 41.869492, 46.049873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.881794, 41.740273, 46.132755>,  <33.574326, 41.524910, 46.270893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881794, 41.740273, 46.132755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083676, 0.450616, 0.888788,
		0.634149, -0.712081, 0.301323,
		0.768670, 0.538410, -0.345342,
		34.112396, 41.901794, 46.029152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299633, 41.253197, 46.564709>,  <33.574326, 41.524910, 46.270893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299633, 41.253197, 46.564709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326969, 41.630207, 46.433880>,  <34.343369, 41.856415, 46.355385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326969, 41.630207, 46.433880>,  <34.299633, 41.253197, 46.564709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326969, 41.630207, 46.433880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281879, 0.296237, 0.912572,
		0.957013, -0.154557, -0.245434,
		0.068338, 0.942526, -0.327069,
		34.347469, 41.912964, 46.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950649, 41.525036, 46.719379>,  <34.299633, 41.253197, 46.564709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950649, 41.525036, 46.719379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750355, 41.867722, 46.669910>,  <34.630177, 42.073334, 46.640228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750355, 41.867722, 46.669910>,  <34.950649, 41.525036, 46.719379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750355, 41.867722, 46.669910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295250, 0.303353, 0.905982,
		0.813687, 0.417148, -0.404847,
		-0.500741, 0.856717, -0.123671,
		34.600132, 42.124737, 46.632809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398491, 42.066437, 46.932709>,  <34.950649, 41.525036, 46.719379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398491, 42.066437, 46.932709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043247, 42.248093, 46.961056>,  <34.830101, 42.357086, 46.978065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043247, 42.248093, 46.961056>,  <35.398491, 42.066437, 46.932709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043247, 42.248093, 46.961056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329044, 0.520508, 0.787910,
		0.320934, 0.723067, -0.611699,
		-0.888105, 0.454143, 0.070872,
		34.776817, 42.384335, 46.982319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613605, 42.706154, 47.147526>,  <35.398491, 42.066437, 46.932709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613605, 42.706154, 47.147526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217651, 42.711536, 47.204014>,  <34.980080, 42.714767, 47.237907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217651, 42.711536, 47.204014>,  <35.613605, 42.706154, 47.147526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217651, 42.711536, 47.204014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132856, 0.437035, 0.889578,
		-0.049746, 0.899343, -0.434404,
		-0.989886, 0.013460, 0.141224,
		34.920685, 42.715576, 47.246380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479126, 43.408489, 47.298016>,  <35.613605, 42.706154, 47.147526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479126, 43.408489, 47.298016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.190720, 43.173912, 47.445652>,  <35.017677, 43.033165, 47.534233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.190720, 43.173912, 47.445652>,  <35.479126, 43.408489, 47.298016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190720, 43.173912, 47.445652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150077, 0.387848, 0.909423,
		-0.676471, 0.711101, -0.191634,
		-0.721016, -0.586438, 0.369088,
		34.974415, 42.997982, 47.556377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337547, 43.665333, 47.946785>,  <35.479126, 43.408489, 47.298016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337547, 43.665333, 47.946785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140961, 43.321217, 48.000977>,  <35.023010, 43.114746, 48.033493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140961, 43.321217, 48.000977>,  <35.337547, 43.665333, 47.946785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140961, 43.321217, 48.000977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021555, 0.167530, 0.985631,
		-0.870629, 0.481485, -0.100879,
		-0.491467, -0.860294, 0.135478,
		34.993519, 43.063129, 48.041618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756081, 43.869236, 48.350845>,  <35.337547, 43.665333, 47.946785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756081, 43.869236, 48.350845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759472, 43.472607, 48.402538>,  <34.761505, 43.234627, 48.433556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759472, 43.472607, 48.402538>,  <34.756081, 43.869236, 48.350845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759472, 43.472607, 48.402538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064442, 0.128430, 0.989623,
		-0.997885, -0.016718, -0.062810,
		0.008477, -0.991578, 0.129236,
		34.762016, 43.175133, 48.441311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172359, 43.717079, 48.803860>,  <34.756081, 43.869236, 48.350845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172359, 43.717079, 48.803860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465969, 43.446156, 48.823677>,  <34.642136, 43.283600, 48.835567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465969, 43.446156, 48.823677>,  <34.172359, 43.717079, 48.803860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465969, 43.446156, 48.823677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054499, 0.131460, 0.989822,
		-0.676933, -0.723854, 0.133408,
		0.734025, -0.677314, 0.049541,
		34.686176, 43.242962, 48.838539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041042, 43.256302, 49.388058>,  <34.172359, 43.717079, 48.803860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041042, 43.256302, 49.388058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430817, 43.257172, 49.298199>,  <34.664680, 43.257694, 49.244286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430817, 43.257172, 49.298199>,  <34.041042, 43.256302, 49.388058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430817, 43.257172, 49.298199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223705, 0.082419, 0.971166,
		0.020624, -0.996595, 0.079826,
		0.974439, 0.002172, -0.224643,
		34.723148, 43.257824, 49.230804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386421, 42.773453, 49.818741>,  <34.041042, 43.256302, 49.388058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386421, 42.773453, 49.818741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672447, 43.017178, 49.681679>,  <34.844063, 43.163414, 49.599442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672447, 43.017178, 49.681679>,  <34.386421, 42.773453, 49.818741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672447, 43.017178, 49.681679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339561, 0.125709, 0.932146,
		0.611043, -0.782902, -0.117008,
		0.715070, 0.609313, -0.342656,
		34.886967, 43.199970, 49.578880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978691, 42.305786, 50.245815>,  <34.386421, 42.773453, 49.818741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978691, 42.305786, 50.245815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920002, 42.337551, 50.640209>,  <33.884789, 42.356609, 50.876846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920002, 42.337551, 50.640209>,  <33.978691, 42.305786, 50.245815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920002, 42.337551, 50.640209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529721, -0.835491, 0.146119,
		0.835385, 0.543736, 0.080519,
		-0.146724, 0.079413, 0.985985,
		33.875984, 42.361374, 50.936005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741478, 41.992908, 49.974285>,  <33.978691, 42.305786, 50.245815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741478, 41.992908, 49.974285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530861, 41.778698, 50.238396>,  <34.404491, 41.650173, 50.396862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530861, 41.778698, 50.238396>,  <34.741478, 41.992908, 49.974285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530861, 41.778698, 50.238396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386765, -0.540746, -0.746998,
		0.757079, -0.648699, 0.077603,
		-0.526540, -0.535523, 0.660281,
		34.372898, 41.618042, 50.436481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016899, 41.274643, 49.926270>,  <34.741478, 41.992908, 49.974285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016899, 41.274643, 49.926270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646820, 41.264126, 50.077698>,  <34.424770, 41.257816, 50.168552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646820, 41.264126, 50.077698>,  <35.016899, 41.274643, 49.926270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646820, 41.264126, 50.077698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306482, -0.536483, -0.786292,
		0.223770, -0.843502, 0.488295,
		-0.925200, -0.026295, 0.378567,
		34.369259, 41.256237, 50.191269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772015, 40.506973, 49.987404>,  <35.016899, 41.274643, 49.926270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772015, 40.506973, 49.987404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454006, 40.749535, 49.981552>,  <34.263199, 40.895069, 49.978043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454006, 40.749535, 49.981552>,  <34.772015, 40.506973, 49.987404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454006, 40.749535, 49.981552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387863, -0.526752, -0.756369,
		-0.466364, -0.595661, 0.653982,
		-0.795026, 0.606399, -0.014624,
		34.215500, 40.931454, 49.977165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267849, 40.089745, 50.006390>,  <34.772015, 40.506973, 49.987404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267849, 40.089745, 50.006390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095284, 40.429863, 49.885807>,  <33.991745, 40.633934, 49.813457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095284, 40.429863, 49.885807>,  <34.267849, 40.089745, 50.006390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095284, 40.429863, 49.885807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479328, -0.499127, -0.721885,
		-0.764280, -0.166939, 0.622903,
		-0.431418, 0.850296, -0.301455,
		33.965858, 40.684952, 49.795372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648445, 39.753685, 49.650124>,  <34.267849, 40.089745, 50.006390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648445, 39.753685, 49.650124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621548, 40.135559, 49.534149>,  <33.605408, 40.364681, 49.464565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621548, 40.135559, 49.534149>,  <33.648445, 39.753685, 49.650124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621548, 40.135559, 49.534149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323078, -0.295772, -0.898966,
		-0.943980, 0.033219, 0.328326,
		-0.067247, 0.954681, -0.289935,
		33.601372, 40.421963, 49.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905125, 39.779278, 49.413239>,  <33.648445, 39.753685, 49.650124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905125, 39.779278, 49.413239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141392, 40.051865, 49.240398>,  <33.283154, 40.215416, 49.136696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141392, 40.051865, 49.240398>,  <32.905125, 39.779278, 49.413239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141392, 40.051865, 49.240398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252226, -0.352735, -0.901088,
		-0.766479, 0.641234, -0.036467,
		0.590671, 0.681467, -0.432100,
		33.318592, 40.256306, 49.110767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437035, 39.950954, 48.788799>,  <32.905125, 39.779278, 49.413239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437035, 39.950954, 48.788799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799561, 40.112865, 48.740204>,  <33.017075, 40.210011, 48.711048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799561, 40.112865, 48.740204>,  <32.437035, 39.950954, 48.788799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799561, 40.112865, 48.740204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033720, -0.217285, -0.975526,
		-0.421265, 0.888225, -0.183279,
		0.906310, 0.404775, -0.121486,
		33.071453, 40.234299, 48.703758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386295, 40.498486, 48.322701>,  <32.437035, 39.950954, 48.788799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386295, 40.498486, 48.322701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760548, 40.358032, 48.308228>,  <32.985100, 40.273762, 48.299545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760548, 40.358032, 48.308228>,  <32.386295, 40.498486, 48.322701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760548, 40.358032, 48.308228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140276, -0.275800, -0.950924,
		0.323921, 0.894786, -0.307302,
		0.935627, -0.351131, -0.036179,
		33.041237, 40.252693, 48.297375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552898, 40.703568, 47.692764>,  <32.386295, 40.498486, 48.322701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552898, 40.703568, 47.692764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838188, 40.440186, 47.788891>,  <33.009361, 40.282154, 47.846565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838188, 40.440186, 47.788891>,  <32.552898, 40.703568, 47.692764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838188, 40.440186, 47.788891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160487, -0.180337, -0.970424,
		0.682320, 0.730693, -0.022946,
		0.713220, -0.658457, 0.240314,
		33.052155, 40.242649, 47.860985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199883, 40.948517, 47.446251>,  <32.552898, 40.703568, 47.692764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199883, 40.948517, 47.446251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214790, 40.549995, 47.477226>,  <33.223736, 40.310883, 47.495811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214790, 40.549995, 47.477226>,  <33.199883, 40.948517, 47.446251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214790, 40.549995, 47.477226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181962, -0.069432, -0.980851,
		0.982599, 0.050649, 0.178701,
		0.037272, -0.996300, 0.077440,
		33.225971, 40.251106, 47.500458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750072, 40.763191, 46.999111>,  <33.199883, 40.948517, 47.446251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750072, 40.763191, 46.999111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573734, 40.409451, 47.060539>,  <33.467934, 40.197208, 47.097397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573734, 40.409451, 47.060539>,  <33.750072, 40.763191, 46.999111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573734, 40.409451, 47.060539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271630, -0.294512, -0.916231,
		0.855497, -0.362199, 0.370049,
		-0.440841, -0.884350, 0.153570,
		33.441483, 40.144146, 47.106609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107628, 40.234669, 46.634327>,  <33.750072, 40.763191, 46.999111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107628, 40.234669, 46.634327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774574, 40.026875, 46.711113>,  <33.574741, 39.902199, 46.757187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774574, 40.026875, 46.711113>,  <34.107628, 40.234669, 46.634327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774574, 40.026875, 46.711113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067964, -0.439855, -0.895494,
		0.549632, -0.732575, 0.401546,
		-0.832638, -0.519482, 0.191970,
		33.524784, 39.871029, 46.768703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240532, 39.582447, 46.478916>,  <34.107628, 40.234669, 46.634327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240532, 39.582447, 46.478916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841419, 39.604561, 46.464104>,  <33.601952, 39.617828, 46.455215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841419, 39.604561, 46.464104>,  <34.240532, 39.582447, 46.478916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841419, 39.604561, 46.464104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013424, -0.377886, -0.925755,
		-0.065177, -0.924200, 0.376306,
		-0.997784, 0.055286, -0.037036,
		33.542084, 39.621147, 46.452991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985783, 39.016029, 46.162743>,  <34.240532, 39.582447, 46.478916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985783, 39.016029, 46.162743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679779, 39.272606, 46.139709>,  <33.496178, 39.426552, 46.125889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679779, 39.272606, 46.139709>,  <33.985783, 39.016029, 46.162743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679779, 39.272606, 46.139709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254213, -0.382905, -0.888121,
		-0.591726, -0.664782, 0.455988,
		-0.765007, 0.641442, -0.057579,
		33.450275, 39.465038, 46.122437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445599, 38.608437, 45.961330>,  <33.985783, 39.016029, 46.162743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445599, 38.608437, 45.961330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336624, 38.978241, 45.854706>,  <33.271240, 39.200123, 45.790730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336624, 38.978241, 45.854706>,  <33.445599, 38.608437, 45.961330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336624, 38.978241, 45.854706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317518, -0.347904, -0.882125,
		-0.908274, -0.155683, 0.388330,
		-0.272434, 0.924513, -0.266560,
		33.254894, 39.255596, 45.774738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761543, 38.564724, 45.717297>,  <33.445599, 38.608437, 45.961330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761543, 38.564724, 45.717297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.920948, 38.895351, 45.558311>,  <33.016590, 39.093727, 45.462921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.920948, 38.895351, 45.558311>,  <32.761543, 38.564724, 45.717297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920948, 38.895351, 45.558311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250265, -0.318916, -0.914145,
		-0.882358, 0.463768, 0.079769,
		0.398511, 0.826566, -0.397463,
		33.040501, 39.143322, 45.439072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403149, 38.720818, 45.133896>,  <32.761543, 38.564724, 45.717297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403149, 38.720818, 45.133896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724609, 38.950287, 45.070599>,  <32.917484, 39.087967, 45.032619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724609, 38.950287, 45.070599>,  <32.403149, 38.720818, 45.133896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724609, 38.950287, 45.070599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074926, -0.166257, -0.983232,
		-0.590364, 0.802033, -0.090630,
		0.803652, 0.573674, -0.158245,
		32.965706, 39.122391, 45.023125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231590, 39.128220, 44.580452>,  <32.403149, 38.720818, 45.133896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231590, 39.128220, 44.580452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631039, 39.139881, 44.597897>,  <32.870708, 39.146877, 44.608364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631039, 39.139881, 44.597897>,  <32.231590, 39.128220, 44.580452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631039, 39.139881, 44.597897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051612, -0.397041, -0.916349,
		-0.009402, 0.917338, -0.397999,
		0.998623, 0.029157, 0.043612,
		32.930626, 39.148628, 44.610981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465366, 39.540619, 43.961681>,  <32.231590, 39.128220, 44.580452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465366, 39.540619, 43.961681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796795, 39.341267, 44.063732>,  <32.995651, 39.221653, 44.124962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796795, 39.341267, 44.063732>,  <32.465366, 39.540619, 43.961681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796795, 39.341267, 44.063732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201660, -0.159434, -0.966392,
		0.522311, 0.852170, -0.031598,
		0.828568, -0.498385, 0.255123,
		33.045364, 39.191750, 44.140270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995266, 39.754208, 43.398670>,  <32.465366, 39.540619, 43.961681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995266, 39.754208, 43.398670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091499, 39.400135, 43.557953>,  <33.149239, 39.187691, 43.653522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091499, 39.400135, 43.557953>,  <32.995266, 39.754208, 43.398670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091499, 39.400135, 43.557953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245700, -0.341352, -0.907254,
		0.939016, 0.316111, 0.135366,
		0.240585, -0.885185, 0.398204,
		33.163673, 39.134579, 43.677414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.258347, 25.487926, 32.881847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.954716, 25.457739, 33.140491>,  <42.772537, 25.439627, 33.295677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.954716, 25.457739, 33.140491>,  <43.258347, 25.487926, 32.881847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954716, 25.457739, 33.140491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235556, 0.894115, 0.380883,
		-0.606886, 0.441434, -0.660928,
		-0.759080, -0.075467, 0.646608,
		42.726994, 25.435099, 33.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761292, 26.023489, 32.830650>,  <43.258347, 25.487926, 32.881847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761292, 26.023489, 32.830650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.744587, 25.888979, 33.206985>,  <42.734566, 25.808273, 33.432785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.744587, 25.888979, 33.206985>,  <42.761292, 26.023489, 32.830650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744587, 25.888979, 33.206985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311033, 0.890492, 0.332087,
		-0.949481, 0.306498, 0.067409,
		-0.041757, -0.336277, 0.940837,
		42.732059, 25.788095, 33.489235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249180, 26.423359, 33.031979>,  <42.761292, 26.023489, 32.830650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249180, 26.423359, 33.031979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.465637, 26.309677, 33.348557>,  <42.595512, 26.241468, 33.538506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.465637, 26.309677, 33.348557>,  <42.249180, 26.423359, 33.031979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465637, 26.309677, 33.348557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023390, 0.935709, 0.351998,
		-0.840603, -0.208994, 0.499708,
		0.541146, -0.284202, 0.791448,
		42.627979, 26.224417, 33.585991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941864, 26.714487, 33.591373>,  <42.249180, 26.423359, 33.031979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941864, 26.714487, 33.591373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313789, 26.648987, 33.723209>,  <42.536945, 26.609688, 33.802311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313789, 26.648987, 33.723209>,  <41.941864, 26.714487, 33.591373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313789, 26.648987, 33.723209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020198, 0.871507, 0.489968,
		-0.367472, -0.462236, 0.807033,
		0.929815, -0.163749, 0.329591,
		42.592735, 26.599863, 33.822086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901745, 26.924221, 34.197098>,  <41.941864, 26.714487, 33.591373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901745, 26.924221, 34.197098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300312, 26.905466, 34.168972>,  <42.539452, 26.894213, 34.152096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300312, 26.905466, 34.168972>,  <41.901745, 26.924221, 34.197098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300312, 26.905466, 34.168972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078847, 0.815246, 0.573722,
		0.030420, -0.577213, 0.816026,
		0.996423, -0.046888, -0.070311,
		42.599239, 26.891399, 34.147877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144115, 27.027744, 34.934288>,  <41.901745, 26.924221, 34.197098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144115, 27.027744, 34.934288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433998, 27.092018, 34.666264>,  <42.607929, 27.130583, 34.505447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433998, 27.092018, 34.666264>,  <42.144115, 27.027744, 34.934288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433998, 27.092018, 34.666264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255164, 0.840719, 0.477580,
		0.640073, -0.517080, 0.568273,
		0.724706, 0.160683, -0.670062,
		42.651409, 27.140223, 34.465244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643814, 27.306513, 35.315441>,  <42.144115, 27.027744, 34.934288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643814, 27.306513, 35.315441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699589, 27.426620, 34.937996>,  <42.733051, 27.498686, 34.711529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699589, 27.426620, 34.937996>,  <42.643814, 27.306513, 35.315441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699589, 27.426620, 34.937996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153737, 0.934798, 0.320182,
		0.978224, -0.189711, 0.084180,
		0.139434, 0.300269, -0.943608,
		42.741421, 27.516701, 34.654915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307209, 27.592443, 35.297909>,  <42.643814, 27.306513, 35.315441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307209, 27.592443, 35.297909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155014, 27.763742, 34.970047>,  <43.063698, 27.866522, 34.773331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155014, 27.763742, 34.970047>,  <43.307209, 27.592443, 35.297909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155014, 27.763742, 34.970047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211884, 0.903109, 0.373495,
		0.900186, -0.031561, -0.434360,
		-0.380487, 0.428249, -0.819654,
		43.040867, 27.892218, 34.724152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762135, 28.195885, 35.163998>,  <43.307209, 27.592443, 35.297909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762135, 28.195885, 35.163998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431110, 28.290798, 34.960491>,  <43.232498, 28.347746, 34.838387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431110, 28.290798, 34.960491>,  <43.762135, 28.195885, 35.163998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431110, 28.290798, 34.960491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153788, 0.967434, 0.201049,
		0.539906, 0.088137, -0.837098,
		-0.827557, 0.237284, -0.508769,
		43.182842, 28.361982, 34.807861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957386, 28.847795, 34.742798>,  <43.762135, 28.195885, 35.163998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957386, 28.847795, 34.742798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558510, 28.835535, 34.770134>,  <43.319183, 28.828178, 34.786537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558510, 28.835535, 34.770134>,  <43.957386, 28.847795, 34.742798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558510, 28.835535, 34.770134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010177, 0.959409, 0.281835,
		-0.074204, 0.280348, -0.957026,
		-0.997191, -0.030653, 0.068339,
		43.259354, 28.826340, 34.790634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782948, 29.486258, 34.536572>,  <43.957386, 28.847795, 34.742798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782948, 29.486258, 34.536572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452240, 29.369629, 34.729000>,  <43.253815, 29.299652, 34.844460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452240, 29.369629, 34.729000>,  <43.782948, 29.486258, 34.536572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452240, 29.369629, 34.729000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173069, 0.945550, 0.275649,
		-0.535253, 0.144639, -0.832216,
		-0.826771, -0.291573, 0.481076,
		43.204208, 29.282158, 34.873322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245407, 29.770384, 34.139015>,  <43.782948, 29.486258, 34.536572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245407, 29.770384, 34.139015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095619, 29.679283, 34.498550>,  <43.005749, 29.624622, 34.714272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095619, 29.679283, 34.498550>,  <43.245407, 29.770384, 34.139015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095619, 29.679283, 34.498550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192275, 0.967368, 0.165013,
		-0.907086, -0.111031, -0.406039,
		-0.374468, -0.227752, 0.898834,
		42.983280, 29.610958, 34.768200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532604, 30.035631, 34.150963>,  <43.245407, 29.770384, 34.139015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532604, 30.035631, 34.150963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644627, 29.990154, 34.532253>,  <42.711842, 29.962868, 34.761028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644627, 29.990154, 34.532253>,  <42.532604, 30.035631, 34.150963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644627, 29.990154, 34.532253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162377, 0.973045, 0.163761,
		-0.946151, -0.200644, 0.254047,
		0.280057, -0.113692, 0.953227,
		42.728645, 29.956047, 34.818222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156223, 30.469065, 34.441246>,  <42.532604, 30.035631, 34.150963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156223, 30.469065, 34.441246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414242, 30.396530, 34.738171>,  <42.569054, 30.353008, 34.916325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414242, 30.396530, 34.738171>,  <42.156223, 30.469065, 34.441246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414242, 30.396530, 34.738171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255371, 0.864426, 0.433075,
		-0.720209, -0.468919, 0.511286,
		0.645046, -0.181337, 0.742316,
		42.607754, 30.342129, 34.960865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895916, 30.777004, 35.032509>,  <42.156223, 30.469065, 34.441246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895916, 30.777004, 35.032509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275196, 30.758877, 35.158276>,  <42.502766, 30.748001, 35.233738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275196, 30.758877, 35.158276>,  <41.895916, 30.777004, 35.032509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275196, 30.758877, 35.158276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007459, 0.986322, 0.164659,
		-0.317583, -0.158475, 0.934894,
		0.948201, -0.045319, 0.314422,
		42.559658, 30.745281, 35.252602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993462, 31.224497, 35.667725>,  <41.895916, 30.777004, 35.032509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993462, 31.224497, 35.667725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346180, 31.186258, 35.482990>,  <42.557812, 31.163315, 35.372150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346180, 31.186258, 35.482990>,  <41.993462, 31.224497, 35.667725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346180, 31.186258, 35.482990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193417, 0.966407, 0.169257,
		0.430141, -0.238577, 0.870666,
		0.881798, -0.095597, -0.461837,
		42.610718, 31.157579, 35.344440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532036, 31.498087, 36.164425>,  <41.993462, 31.224497, 35.667725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532036, 31.498087, 36.164425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659916, 31.511177, 35.785645>,  <42.736645, 31.519032, 35.558376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659916, 31.511177, 35.785645>,  <42.532036, 31.498087, 36.164425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659916, 31.511177, 35.785645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133981, 0.987801, 0.079368,
		0.937999, -0.152248, 0.311412,
		0.319697, 0.032723, -0.946955,
		42.755825, 31.520994, 35.501556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143711, 31.867167, 36.115849>,  <42.532036, 31.498087, 36.164425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143711, 31.867167, 36.115849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.033180, 31.874790, 35.731499>,  <42.966862, 31.879364, 35.500889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.033180, 31.874790, 35.731499>,  <43.143711, 31.867167, 36.115849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033180, 31.874790, 35.731499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272652, 0.960280, -0.059360,
		0.921579, -0.278387, -0.270544,
		-0.276323, 0.019059, -0.960876,
		42.950283, 31.880508, 35.443237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636402, 32.365746, 35.743526>,  <43.143711, 31.867167, 36.115849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636402, 32.365746, 35.743526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.314301, 32.343281, 35.507423>,  <43.121040, 32.329803, 35.365761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.314301, 32.343281, 35.507423>,  <43.636402, 32.365746, 35.743526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314301, 32.343281, 35.507423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005880, 0.994699, -0.102658,
		0.592896, -0.086137, -0.800659,
		-0.805257, -0.056158, -0.590260,
		43.072723, 32.326435, 35.330345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807056, 32.818573, 35.245121>,  <43.636402, 32.365746, 35.743526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807056, 32.818573, 35.245121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412102, 32.763264, 35.214298>,  <43.175129, 32.730076, 35.195805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412102, 32.763264, 35.214298>,  <43.807056, 32.818573, 35.245121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412102, 32.763264, 35.214298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136729, 0.990292, -0.025039,
		0.079776, -0.014187, -0.996712,
		-0.987391, -0.138277, -0.077061,
		43.115883, 32.721779, 35.191181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645542, 33.165775, 34.637043>,  <43.807056, 32.818573, 35.245121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645542, 33.165775, 34.637043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309750, 33.132328, 34.851810>,  <43.108273, 33.112259, 34.980671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309750, 33.132328, 34.851810>,  <43.645542, 33.165775, 34.637043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309750, 33.132328, 34.851810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114382, 0.993142, -0.024176,
		-0.531214, -0.081709, -0.843288,
		-0.839481, -0.083614, 0.536917,
		43.057907, 33.107243, 35.012886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310482, 33.623150, 34.315102>,  <43.645542, 33.165775, 34.637043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310482, 33.623150, 34.315102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133053, 33.558243, 34.667671>,  <43.026596, 33.519299, 34.879215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133053, 33.558243, 34.667671>,  <43.310482, 33.623150, 34.315102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133053, 33.558243, 34.667671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158988, 0.982121, 0.100800,
		-0.882025, -0.095424, -0.461440,
		-0.443572, -0.162271, 0.881426,
		42.999981, 33.509560, 34.932098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019318, 34.021683, 34.348972>,  <43.310482, 33.623150, 34.315102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019318, 34.021683, 34.348972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391811, 34.028065, 34.203346>,  <44.615307, 34.031895, 34.115971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391811, 34.028065, 34.203346>,  <44.019318, 34.021683, 34.348972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391811, 34.028065, 34.203346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013162, -0.999862, -0.010148,
		-0.364175, 0.004658, -0.931318,
		0.931237, 0.015954, -0.364064,
		44.671181, 34.032852, 34.094128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045879, 33.639954, 33.699039>,  <44.019318, 34.021683, 34.348972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045879, 33.639954, 33.699039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432938, 33.630112, 33.799484>,  <44.665173, 33.624207, 33.859753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432938, 33.630112, 33.799484>,  <44.045879, 33.639954, 33.699039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432938, 33.630112, 33.799484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039754, -0.967938, -0.248024,
		0.249162, 0.249982, -0.935643,
		0.967645, -0.024603, 0.251111,
		44.723232, 33.622730, 33.874817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445229, 33.339600, 33.151299>,  <44.045879, 33.639954, 33.699039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445229, 33.339600, 33.151299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692070, 33.277554, 33.459873>,  <44.840176, 33.240326, 33.645020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692070, 33.277554, 33.459873>,  <44.445229, 33.339600, 33.151299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692070, 33.277554, 33.459873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049671, -0.986102, -0.158541,
		0.785310, 0.059519, -0.616236,
		0.617108, -0.155113, 0.771439,
		44.877201, 33.231018, 33.691303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932976, 32.810249, 32.886421>,  <44.445229, 33.339600, 33.151299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932976, 32.810249, 32.886421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968525, 32.823475, 33.284618>,  <44.989853, 32.831409, 33.523537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968525, 32.823475, 33.284618>,  <44.932976, 32.810249, 32.886421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968525, 32.823475, 33.284618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070700, -0.997137, 0.026806,
		0.993531, 0.067999, -0.090952,
		0.088869, 0.033063, 0.995495,
		44.995186, 32.833393, 33.583267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379238, 32.304459, 33.000618>,  <44.932976, 32.810249, 32.886421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379238, 32.304459, 33.000618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.210735, 32.339405, 33.361706>,  <45.109634, 32.360374, 33.578358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.210735, 32.339405, 33.361706>,  <45.379238, 32.304459, 33.000618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210735, 32.339405, 33.361706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032331, -0.996163, 0.081323,
		0.906364, 0.005072, 0.422467,
		-0.421258, 0.087367, 0.902723,
		45.084358, 32.365616, 33.632523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570564, 31.712152, 33.483353>,  <45.379238, 32.304459, 33.000618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570564, 31.712152, 33.483353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.267120, 31.833851, 33.713814>,  <45.085052, 31.906870, 33.852089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.267120, 31.833851, 33.713814>,  <45.570564, 31.712152, 33.483353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267120, 31.833851, 33.713814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450373, -0.883868, -0.126257,
		0.470826, -0.355262, 0.807534,
		-0.758608, 0.304247, 0.576149,
		45.039539, 31.925125, 33.886658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513916, 31.215206, 34.025936>,  <45.570564, 31.712152, 33.483353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513916, 31.215206, 34.025936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163555, 31.408092, 34.032425>,  <44.953339, 31.523825, 34.036320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163555, 31.408092, 34.032425>,  <45.513916, 31.215206, 34.025936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163555, 31.408092, 34.032425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481303, -0.870897, -0.099430,
		-0.033817, -0.094899, 0.994912,
		-0.875902, 0.482217, 0.016224,
		44.900784, 31.552757, 34.037292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993088, 30.827065, 34.379128>,  <45.513916, 31.215206, 34.025936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993088, 30.827065, 34.379128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762936, 31.045807, 34.135853>,  <44.624844, 31.177052, 33.989887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762936, 31.045807, 34.135853>,  <44.993088, 30.827065, 34.379128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762936, 31.045807, 34.135853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601289, -0.786902, -0.138695,
		-0.554429, 0.285894, 0.781584,
		-0.575378, 0.546854, -0.608186,
		44.590321, 31.209864, 33.953396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343067, 30.614628, 34.497299>,  <44.993088, 30.827065, 34.379128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343067, 30.614628, 34.497299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282024, 30.787760, 34.141914>,  <44.245399, 30.891640, 33.928684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282024, 30.787760, 34.141914>,  <44.343067, 30.614628, 34.497299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282024, 30.787760, 34.141914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513439, -0.802873, -0.302945,
		-0.844448, 0.409941, 0.344755,
		-0.152605, 0.432832, -0.888464,
		44.236244, 30.917610, 33.875374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642464, 30.538511, 34.418781>,  <44.343067, 30.614628, 34.497299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642464, 30.538511, 34.418781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800762, 30.594904, 34.055790>,  <43.895741, 30.628740, 33.837997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800762, 30.594904, 34.055790>,  <43.642464, 30.538511, 34.418781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800762, 30.594904, 34.055790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471270, -0.816939, -0.332437,
		-0.788219, 0.559226, -0.256860,
		0.395747, 0.140983, -0.907474,
		43.919487, 30.637199, 33.783546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068115, 30.597031, 33.902786>,  <43.642464, 30.538511, 34.418781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068115, 30.597031, 33.902786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375427, 30.507519, 33.662899>,  <43.559814, 30.453812, 33.518967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375427, 30.507519, 33.662899>,  <43.068115, 30.597031, 33.902786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375427, 30.507519, 33.662899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571071, -0.662865, -0.484240,
		-0.289173, 0.714517, -0.637060,
		0.768282, -0.223777, -0.599722,
		43.605911, 30.440386, 33.482983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770271, 30.476156, 33.242104>,  <43.068115, 30.597031, 33.902786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770271, 30.476156, 33.242104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126099, 30.293791, 33.230762>,  <43.339596, 30.184372, 33.223957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126099, 30.293791, 33.230762>,  <42.770271, 30.476156, 33.242104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126099, 30.293791, 33.230762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402206, -0.752331, -0.521755,
		0.216544, 0.475543, -0.852624,
		0.889572, -0.455914, -0.028353,
		43.392971, 30.157017, 33.222256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889923, 30.349314, 32.524639>,  <42.770271, 30.476156, 33.242104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889923, 30.349314, 32.524639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134087, 30.101965, 32.722637>,  <43.280586, 29.953556, 32.841434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134087, 30.101965, 32.722637>,  <42.889923, 30.349314, 32.524639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134087, 30.101965, 32.722637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424193, -0.782960, -0.455010,
		0.668924, 0.067771, -0.740235,
		0.610411, -0.618370, 0.494992,
		43.317211, 29.916454, 32.871136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131187, 29.891262, 32.017868>,  <42.889923, 30.349314, 32.524639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131187, 29.891262, 32.017868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219780, 29.702164, 32.359032>,  <43.272934, 29.588705, 32.563732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219780, 29.702164, 32.359032>,  <43.131187, 29.891262, 32.017868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219780, 29.702164, 32.359032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311314, -0.863144, -0.397575,
		0.924137, -0.177468, -0.338341,
		0.221480, -0.472745, 0.852912,
		43.286224, 29.560341, 32.614906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483021, 29.313923, 31.720886>,  <43.131187, 29.891262, 32.017868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483021, 29.313923, 31.720886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340561, 29.265642, 32.091526>,  <43.255085, 29.236673, 32.313911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340561, 29.265642, 32.091526>,  <43.483021, 29.313923, 31.720886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340561, 29.265642, 32.091526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453887, -0.844437, -0.284453,
		0.816790, -0.521879, 0.245958,
		-0.356146, -0.120701, 0.926602,
		43.233719, 29.229431, 32.369507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637409, 28.556650, 31.864428>,  <43.483021, 29.313923, 31.720886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637409, 28.556650, 31.864428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337479, 28.689438, 32.093357>,  <43.157520, 28.769112, 32.230717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337479, 28.689438, 32.093357>,  <43.637409, 28.556650, 31.864428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337479, 28.689438, 32.093357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473104, -0.873725, -0.113039,
		0.462529, -0.355529, 0.812198,
		-0.749826, 0.331970, 0.572326,
		43.112530, 28.789028, 32.265057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497101, 28.021858, 32.282574>,  <43.637409, 28.556650, 31.864428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497101, 28.021858, 32.282574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.163074, 28.235188, 32.336578>,  <42.962658, 28.363186, 32.368980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.163074, 28.235188, 32.336578>,  <43.497101, 28.021858, 32.282574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163074, 28.235188, 32.336578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549459, -0.820810, -0.156096,
		0.027572, -0.204536, 0.978471,
		-0.835066, 0.533326, 0.135015,
		42.912556, 28.395185, 32.377083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023861, 27.591450, 32.619526>,  <43.497101, 28.021858, 32.282574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023861, 27.591450, 32.619526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787273, 27.877993, 32.471474>,  <42.645321, 28.049917, 32.382641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787273, 27.877993, 32.471474>,  <43.023861, 27.591450, 32.619526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787273, 27.877993, 32.471474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704062, -0.682568, -0.195955,
		-0.393014, 0.144695, 0.908077,
		-0.591470, 0.716355, -0.370133,
		42.609833, 28.092899, 32.360432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425961, 27.525505, 32.944679>,  <43.023861, 27.591450, 32.619526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425961, 27.525505, 32.944679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320282, 27.706861, 32.604176>,  <42.256874, 27.815676, 32.399876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320282, 27.706861, 32.604176>,  <42.425961, 27.525505, 32.944679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320282, 27.706861, 32.604176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619790, -0.756058, -0.210325,
		-0.738958, 0.472031, 0.480758,
		-0.264201, 0.453390, -0.851255,
		42.241020, 27.842878, 32.348797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708462, 27.552670, 32.985107>,  <42.425961, 27.525505, 32.944679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708462, 27.552670, 32.985107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803204, 27.608786, 32.600563>,  <41.860046, 27.642456, 32.369835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803204, 27.608786, 32.600563>,  <41.708462, 27.552670, 32.985107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803204, 27.608786, 32.600563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625749, -0.734916, -0.261412,
		-0.743196, 0.663488, -0.086279,
		0.236852, 0.140291, -0.961363,
		41.874260, 27.650873, 32.312153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.904118, 40.308994, 39.172333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767181, 40.011082, 39.401451>,  <37.685020, 39.832333, 39.538921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767181, 40.011082, 39.401451>,  <37.904118, 40.308994, 39.172333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767181, 40.011082, 39.401451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519692, -0.657990, -0.544949,
		0.782765, 0.111120, 0.612316,
		-0.342343, -0.744783, 0.572800,
		37.664478, 39.787647, 39.573292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463516, 40.014076, 39.293446>,  <37.904118, 40.308994, 39.172333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463516, 40.014076, 39.293446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182735, 39.738941, 39.367359>,  <38.014267, 39.573860, 39.411709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182735, 39.738941, 39.367359>,  <38.463516, 40.014076, 39.293446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182735, 39.738941, 39.367359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528875, -0.677169, -0.511599,
		0.477025, -0.261391, 0.839120,
		-0.701953, -0.687835, 0.184783,
		37.972149, 39.532589, 39.422794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816174, 39.359318, 39.474648>,  <38.463516, 40.014076, 39.293446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816174, 39.359318, 39.474648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447872, 39.268097, 39.348034>,  <38.226891, 39.213364, 39.272064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447872, 39.268097, 39.348034>,  <38.816174, 39.359318, 39.474648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447872, 39.268097, 39.348034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381813, -0.693428, -0.611046,
		-0.080146, -0.683484, 0.725552,
		-0.920758, -0.228052, -0.316539,
		38.171646, 39.199680, 39.253071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702194, 38.617313, 39.467201>,  <38.816174, 39.359318, 39.474648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702194, 38.617313, 39.467201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413887, 38.693756, 39.200676>,  <38.240902, 38.739620, 39.040760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413887, 38.693756, 39.200676>,  <38.702194, 38.617313, 39.467201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413887, 38.693756, 39.200676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312611, -0.768324, -0.558527,
		-0.618680, -0.610865, 0.494043,
		-0.720770, 0.191106, -0.666310,
		38.197655, 38.751087, 39.000782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426334, 37.946369, 39.262123>,  <38.702194, 38.617313, 39.467201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426334, 37.946369, 39.262123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314671, 38.204472, 38.977665>,  <38.247673, 38.359333, 38.806992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314671, 38.204472, 38.977665>,  <38.426334, 37.946369, 39.262123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314671, 38.204472, 38.977665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244348, -0.668470, -0.702454,
		-0.928637, -0.369860, 0.028941,
		-0.279155, 0.645253, -0.711141,
		38.230923, 38.398048, 38.764324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006134, 37.555168, 38.714466>,  <38.426334, 37.946369, 39.262123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006134, 37.555168, 38.714466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104221, 37.892826, 38.523766>,  <38.163074, 38.095421, 38.409344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104221, 37.892826, 38.523766>,  <38.006134, 37.555168, 38.714466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104221, 37.892826, 38.523766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237814, -0.529115, -0.814544,
		-0.939848, 0.086361, -0.330496,
		0.245215, 0.844144, -0.476750,
		38.177784, 38.146069, 38.380741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645260, 37.505646, 38.058941>,  <38.006134, 37.555168, 38.714466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645260, 37.505646, 38.058941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946156, 37.765976, 38.017822>,  <38.126694, 37.922173, 37.993153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946156, 37.765976, 38.017822>,  <37.645260, 37.505646, 38.058941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946156, 37.765976, 38.017822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221777, -0.397007, -0.890618,
		-0.620444, 0.647161, -0.442981,
		0.752240, 0.650822, -0.102795,
		38.171829, 37.961224, 37.986984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555607, 37.837059, 37.399742>,  <37.645260, 37.505646, 38.058941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555607, 37.837059, 37.399742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935703, 37.875378, 37.518307>,  <38.163761, 37.898369, 37.589447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935703, 37.875378, 37.518307>,  <37.555607, 37.837059, 37.399742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935703, 37.875378, 37.518307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310923, -0.350195, -0.883567,
		0.019157, 0.931765, -0.362557,
		0.950242, 0.095801, 0.296416,
		38.220776, 37.904118, 37.607231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835785, 38.142197, 36.779167>,  <37.555607, 37.837059, 37.399742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835785, 38.142197, 36.779167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136627, 37.981236, 36.987938>,  <38.317135, 37.884659, 37.113201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136627, 37.981236, 36.987938>,  <37.835785, 38.142197, 36.779167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136627, 37.981236, 36.987938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352278, -0.423844, -0.834420,
		0.556986, 0.811438, -0.177020,
		0.752109, -0.402400, 0.521926,
		38.362259, 37.860516, 37.144516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458244, 38.185219, 36.434307>,  <37.835785, 38.142197, 36.779167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458244, 38.185219, 36.434307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569283, 37.892452, 36.683220>,  <38.635906, 37.716793, 36.832565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569283, 37.892452, 36.683220>,  <38.458244, 38.185219, 36.434307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569283, 37.892452, 36.683220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248711, -0.570902, -0.782441,
		0.927944, 0.371974, 0.023554,
		0.277600, -0.731919, 0.622280,
		38.652561, 37.672878, 36.869904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123665, 37.943184, 36.159042>,  <38.458244, 38.185219, 36.434307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123665, 37.943184, 36.159042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003311, 37.662800, 36.417694>,  <38.931099, 37.494568, 36.572884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003311, 37.662800, 36.417694>,  <39.123665, 37.943184, 36.159042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003311, 37.662800, 36.417694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186883, -0.708237, -0.680790,
		0.935171, -0.083994, 0.344093,
		-0.300882, -0.700960, 0.646626,
		38.913048, 37.452511, 36.611683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758846, 37.499924, 36.345142>,  <39.123665, 37.943184, 36.159042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758846, 37.499924, 36.345142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423290, 37.291187, 36.407043>,  <39.221958, 37.165947, 36.444183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423290, 37.291187, 36.407043>,  <39.758846, 37.499924, 36.345142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423290, 37.291187, 36.407043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244296, -0.615048, -0.749690,
		0.486402, -0.591099, 0.643440,
		-0.838888, -0.521841, 0.154757,
		39.171623, 37.134636, 36.453472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891644, 36.799900, 36.442944>,  <39.758846, 37.499924, 36.345142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891644, 36.799900, 36.442944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548065, 36.894241, 36.261139>,  <39.341919, 36.950848, 36.152058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548065, 36.894241, 36.261139>,  <39.891644, 36.799900, 36.442944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548065, 36.894241, 36.261139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248418, -0.584228, -0.772636,
		-0.447765, -0.776564, 0.443233,
		-0.858950, 0.235852, -0.454509,
		39.290379, 36.964996, 36.124786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811737, 36.474926, 35.804592>,  <39.891644, 36.799900, 36.442944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811737, 36.474926, 35.804592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447041, 36.631889, 35.756016>,  <39.228222, 36.726067, 35.726871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447041, 36.631889, 35.756016>,  <39.811737, 36.474926, 35.804592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447041, 36.631889, 35.756016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149617, -0.592580, -0.791494,
		-0.382548, -0.703469, 0.598990,
		-0.911741, 0.392404, -0.121440,
		39.173519, 36.749611, 35.719585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619663, 36.175068, 35.547394>,  <39.811737, 36.474926, 35.804592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619663, 36.175068, 35.547394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959785, 36.058006, 35.722359>,  <41.163860, 35.987770, 35.827339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959785, 36.058006, 35.722359>,  <40.619663, 36.175068, 35.547394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959785, 36.058006, 35.722359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348752, 0.309112, 0.884772,
		-0.394142, -0.904877, 0.160777,
		0.850308, -0.292654, 0.437412,
		41.214878, 35.970211, 35.853580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487888, 35.790314, 36.108391>,  <40.619663, 36.175068, 35.547394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487888, 35.790314, 36.108391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849575, 35.941475, 36.187962>,  <41.066589, 36.032173, 36.235703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849575, 35.941475, 36.187962>,  <40.487888, 35.790314, 36.108391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849575, 35.941475, 36.187962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323506, 0.302028, 0.896729,
		0.278786, -0.875200, 0.395352,
		0.904225, 0.377894, 0.198931,
		41.120842, 36.054848, 36.247639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601601, 35.623516, 36.726997>,  <40.487888, 35.790314, 36.108391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601601, 35.623516, 36.726997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889023, 35.901264, 36.711365>,  <41.061478, 36.067913, 36.701984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889023, 35.901264, 36.711365>,  <40.601601, 35.623516, 36.726997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889023, 35.901264, 36.711365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176626, 0.236552, 0.955430,
		0.672663, -0.679631, 0.292620,
		0.718560, 0.694367, -0.039079,
		41.104591, 36.109573, 36.699642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979836, 35.499207, 37.342258>,  <40.601601, 35.623516, 36.726997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979836, 35.499207, 37.342258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078720, 35.870293, 37.230377>,  <41.138050, 36.092945, 37.163246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078720, 35.870293, 37.230377>,  <40.979836, 35.499207, 37.342258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078720, 35.870293, 37.230377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101843, 0.311945, 0.944626,
		0.963594, -0.205039, 0.171599,
		0.247215, 0.927712, -0.279707,
		41.152885, 36.148605, 37.146465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610180, 35.664848, 37.708542>,  <40.979836, 35.499207, 37.342258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610180, 35.664848, 37.708542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460926, 36.022133, 37.608189>,  <41.371372, 36.236504, 37.547977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460926, 36.022133, 37.608189>,  <41.610180, 35.664848, 37.708542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460926, 36.022133, 37.608189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050735, 0.289656, 0.955785,
		0.926389, 0.343908, -0.153398,
		-0.373135, 0.893211, -0.250886,
		41.348984, 36.290096, 37.532925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790554, 36.027561, 38.207111>,  <41.610180, 35.664848, 37.708542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790554, 36.027561, 38.207111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517078, 36.271675, 38.047050>,  <41.352993, 36.418144, 37.951012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517078, 36.271675, 38.047050>,  <41.790554, 36.027561, 38.207111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517078, 36.271675, 38.047050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120139, 0.446724, 0.886569,
		0.719819, 0.654210, -0.232100,
		-0.683687, 0.610285, -0.400157,
		41.311974, 36.454762, 37.927002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895412, 36.667965, 38.556461>,  <41.790554, 36.027561, 38.207111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895412, 36.667965, 38.556461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522488, 36.690865, 38.413620>,  <41.298733, 36.704605, 38.327915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522488, 36.690865, 38.413620>,  <41.895412, 36.667965, 38.556461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522488, 36.690865, 38.413620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311644, 0.373853, 0.873563,
		0.183518, 0.925719, -0.330704,
		-0.932308, 0.057253, -0.357104,
		41.242794, 36.708042, 38.306488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542885, 37.423878, 38.651764>,  <41.895412, 36.667965, 38.556461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542885, 37.423878, 38.651764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252773, 37.150249, 38.620743>,  <41.078705, 36.986073, 38.602131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252773, 37.150249, 38.620743>,  <41.542885, 37.423878, 38.651764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252773, 37.150249, 38.620743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467384, 0.406541, 0.785033,
		-0.505493, 0.605614, -0.614581,
		-0.725279, -0.684074, -0.077551,
		41.035191, 36.945026, 38.597477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998646, 37.872772, 38.947105>,  <41.542885, 37.423878, 38.651764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998646, 37.872772, 38.947105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869339, 37.495148, 38.921040>,  <40.791756, 37.268574, 38.905399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869339, 37.495148, 38.921040>,  <40.998646, 37.872772, 38.947105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869339, 37.495148, 38.921040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612586, 0.156277, 0.774800,
		-0.721275, 0.290388, -0.628838,
		-0.323266, -0.944061, -0.065169,
		40.772358, 37.211929, 38.901489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315929, 37.902599, 38.961746>,  <40.998646, 37.872772, 38.947105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315929, 37.902599, 38.961746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436771, 37.552208, 39.112152>,  <40.509277, 37.341972, 39.202396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436771, 37.552208, 39.112152>,  <40.315929, 37.902599, 38.961746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436771, 37.552208, 39.112152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485947, 0.197835, 0.851303,
		-0.820115, -0.439908, -0.365913,
		0.302105, -0.875981, 0.376019,
		40.527405, 37.289413, 39.224957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788696, 37.760284, 39.320065>,  <40.315929, 37.902599, 38.961746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788696, 37.760284, 39.320065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048363, 37.501751, 39.480480>,  <40.204163, 37.346630, 39.576729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048363, 37.501751, 39.480480>,  <39.788696, 37.760284, 39.320065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048363, 37.501751, 39.480480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416598, 0.139019, 0.898398,
		-0.636420, -0.750282, -0.179016,
		0.649166, -0.646336, 0.401041,
		40.243111, 37.307850, 39.600792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380459, 37.284916, 39.628864>,  <39.788696, 37.760284, 39.320065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380459, 37.284916, 39.628864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743584, 37.263596, 39.795254>,  <39.961460, 37.250801, 39.895088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743584, 37.263596, 39.795254>,  <39.380459, 37.284916, 39.628864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743584, 37.263596, 39.795254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408901, 0.107769, 0.906193,
		-0.093135, -0.992746, 0.076037,
		0.907813, -0.053307, 0.415972,
		40.015926, 37.247604, 39.920044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216969, 36.930958, 40.213276>,  <39.380459, 37.284916, 39.628864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216969, 36.930958, 40.213276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574715, 37.096371, 40.281509>,  <39.789364, 37.195618, 40.322449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574715, 37.096371, 40.281509>,  <39.216969, 36.930958, 40.213276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574715, 37.096371, 40.281509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330387, 0.353563, 0.875121,
		0.301572, -0.839041, 0.452840,
		0.894370, 0.413525, 0.170584,
		39.843025, 37.220428, 40.332684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484192, 36.742691, 40.907288>,  <39.216969, 36.930958, 40.213276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484192, 36.742691, 40.907288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649212, 37.089134, 40.794384>,  <39.748222, 37.297001, 40.726643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649212, 37.089134, 40.794384>,  <39.484192, 36.742691, 40.907288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649212, 37.089134, 40.794384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247387, 0.404730, 0.880337,
		0.876701, -0.293354, 0.381233,
		0.412547, 0.866105, -0.282255,
		39.772976, 37.348965, 40.709709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718815, 36.150124, 41.134926>,  <39.484192, 36.742691, 40.907288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718815, 36.150124, 41.134926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497402, 35.846889, 41.272861>,  <39.364555, 35.664951, 41.355621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497402, 35.846889, 41.272861>,  <39.718815, 36.150124, 41.134926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497402, 35.846889, 41.272861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197051, -0.521515, -0.830177,
		0.809179, -0.391581, 0.438057,
		-0.553534, -0.758081, 0.344837,
		39.331341, 35.619465, 41.376312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267437, 35.603275, 41.034611>,  <39.718815, 36.150124, 41.134926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267437, 35.603275, 41.034611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888268, 35.475941, 41.038536>,  <39.660767, 35.399540, 41.040890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888268, 35.475941, 41.038536>,  <40.267437, 35.603275, 41.034611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888268, 35.475941, 41.038536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202949, -0.627508, -0.751695,
		0.245446, -0.710562, 0.659438,
		-0.947928, -0.318333, 0.009811,
		39.603889, 35.380440, 41.041481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275581, 34.948082, 41.046284>,  <40.267437, 35.603275, 41.034611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275581, 34.948082, 41.046284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917877, 35.031757, 40.888020>,  <39.703255, 35.081963, 40.793060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917877, 35.031757, 40.888020>,  <40.275581, 34.948082, 41.046284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917877, 35.031757, 40.888020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107800, -0.757338, -0.644063,
		-0.434377, -0.618610, 0.654704,
		-0.894257, 0.209189, -0.395657,
		39.649601, 35.094513, 40.769321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965626, 34.265652, 40.975105>,  <40.275581, 34.948082, 41.046284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965626, 34.265652, 40.975105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775505, 34.518814, 40.730640>,  <39.661434, 34.670712, 40.583961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775505, 34.518814, 40.730640>,  <39.965626, 34.265652, 40.975105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775505, 34.518814, 40.730640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169621, -0.615694, -0.769513,
		-0.863319, -0.469415, 0.185284,
		-0.475299, 0.632907, -0.611163,
		39.632915, 34.708687, 40.547291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507904, 33.809330, 40.489716>,  <39.965626, 34.265652, 40.975105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507904, 33.809330, 40.489716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573292, 34.170624, 40.330997>,  <39.612526, 34.387398, 40.235767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573292, 34.170624, 40.330997>,  <39.507904, 33.809330, 40.489716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573292, 34.170624, 40.330997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267912, -0.427739, -0.863286,
		-0.949473, 0.034816, -0.311910,
		0.163473, 0.903231, -0.396799,
		39.622334, 34.441593, 40.211956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987530, 33.962696, 39.871441>,  <39.507904, 33.809330, 40.489716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987530, 33.962696, 39.871441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286892, 34.223888, 39.824966>,  <39.466511, 34.380604, 39.797081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286892, 34.223888, 39.824966>,  <38.987530, 33.962696, 39.871441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286892, 34.223888, 39.824966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066733, -0.248427, -0.966349,
		-0.659871, 0.715472, -0.229500,
		0.748410, 0.652981, -0.116184,
		39.511414, 34.419781, 39.790112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899563, 34.234825, 39.306087>,  <38.987530, 33.962696, 39.871441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899563, 34.234825, 39.306087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286213, 34.328514, 39.347591>,  <39.518204, 34.384727, 39.372494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286213, 34.328514, 39.347591>,  <38.899563, 34.234825, 39.306087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286213, 34.328514, 39.347591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158101, -0.226727, -0.961041,
		-0.201573, 0.945375, -0.256192,
		0.966629, 0.234224, 0.103763,
		39.576202, 34.398781, 39.378719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014008, 34.290787, 38.550125>,  <38.899563, 34.234825, 39.306087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014008, 34.290787, 38.550125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364399, 34.295040, 38.743023>,  <39.574635, 34.297592, 38.858761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364399, 34.295040, 38.743023>,  <39.014008, 34.290787, 38.550125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364399, 34.295040, 38.743023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442714, -0.414636, -0.795035,
		0.191504, 0.909925, -0.367916,
		0.875974, 0.010630, 0.482242,
		39.627190, 34.298229, 38.887695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557278, 34.520779, 38.074173>,  <39.014008, 34.290787, 38.550125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557278, 34.520779, 38.074173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746323, 34.319099, 38.363289>,  <39.859749, 34.198093, 38.536758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746323, 34.319099, 38.363289>,  <39.557278, 34.520779, 38.074173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746323, 34.319099, 38.363289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443066, -0.573035, -0.689438,
		0.761796, 0.646078, -0.047430,
		0.472610, -0.504196, 0.722791,
		39.888107, 34.167839, 38.580128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282578, 34.560200, 37.889301>,  <39.557278, 34.520779, 38.074173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282578, 34.560200, 37.889301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223957, 34.255474, 38.141701>,  <40.188786, 34.072639, 38.293140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223957, 34.255474, 38.141701>,  <40.282578, 34.560200, 37.889301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223957, 34.255474, 38.141701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462796, -0.616574, -0.636912,
		0.874267, 0.198681, 0.442926,
		-0.146554, -0.761815, 0.630999,
		40.179993, 34.026928, 38.331001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936073, 34.070126, 37.997601>,  <40.282578, 34.560200, 37.889301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936073, 34.070126, 37.997601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635403, 33.822483, 38.088543>,  <40.455002, 33.673897, 38.143108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635403, 33.822483, 38.088543>,  <40.936073, 34.070126, 37.997601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635403, 33.822483, 38.088543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273698, -0.606457, -0.746525,
		0.600059, -0.498919, 0.625308,
		-0.751677, -0.619105, 0.227357,
		40.409901, 33.636753, 38.156750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213894, 33.339806, 38.038349>,  <40.936073, 34.070126, 37.997601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213894, 33.339806, 38.038349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821728, 33.335594, 37.959682>,  <40.586430, 33.333065, 37.912483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821728, 33.335594, 37.959682>,  <41.213894, 33.339806, 38.038349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821728, 33.335594, 37.959682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175849, -0.496518, -0.850028,
		-0.088698, -0.867963, 0.488645,
		-0.980413, -0.010532, -0.196670,
		40.527603, 33.332436, 37.900681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.994400, 36.553394, 45.136009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624058, 36.402431, 45.143482>,  <39.401852, 36.311852, 45.147964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624058, 36.402431, 45.143482>,  <39.994400, 36.553394, 45.136009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624058, 36.402431, 45.143482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186924, -0.500406, -0.845371,
		0.328401, -0.779201, 0.533852,
		-0.925858, -0.377410, 0.018682,
		39.346302, 36.289207, 45.149086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135841, 35.853508, 44.811928>,  <39.994400, 36.553394, 45.136009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135841, 35.853508, 44.811928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.749081, 35.934917, 44.750381>,  <39.517025, 35.983761, 44.713451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.749081, 35.934917, 44.750381>,  <40.135841, 35.853508, 44.811928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749081, 35.934917, 44.750381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053582, -0.427650, -0.902355,
		-0.249449, -0.880736, 0.402592,
		-0.966904, 0.203519, -0.153869,
		39.459011, 35.995972, 44.704220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860878, 35.201775, 44.507076>,  <40.135841, 35.853508, 44.811928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860878, 35.201775, 44.507076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611279, 35.499332, 44.411366>,  <39.461517, 35.677868, 44.353939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611279, 35.499332, 44.411366>,  <39.860878, 35.201775, 44.507076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611279, 35.499332, 44.411366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038505, -0.276564, -0.960224,
		-0.780476, -0.608391, 0.143932,
		-0.623998, 0.743890, -0.239278,
		39.424080, 35.722500, 44.339581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286846, 34.950443, 44.242882>,  <39.860878, 35.201775, 44.507076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286846, 34.950443, 44.242882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301018, 35.316612, 44.082508>,  <39.309521, 35.536312, 43.986282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301018, 35.316612, 44.082508>,  <39.286846, 34.950443, 44.242882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301018, 35.316612, 44.082508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142335, -0.392473, -0.908683,
		-0.989184, 0.089258, 0.116393,
		0.035426, 0.915422, -0.400933,
		39.311646, 35.591240, 43.962227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720417, 35.038326, 43.661556>,  <39.286846, 34.950443, 44.242882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720417, 35.038326, 43.661556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938049, 35.360554, 43.567722>,  <39.068626, 35.553890, 43.511421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938049, 35.360554, 43.567722>,  <38.720417, 35.038326, 43.661556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938049, 35.360554, 43.567722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311853, -0.065404, -0.947877,
		-0.778926, 0.588876, 0.215635,
		0.544079, 0.805572, -0.234588,
		39.101273, 35.602226, 43.497345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325375, 35.450840, 43.218990>,  <38.720417, 35.038326, 43.661556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325375, 35.450840, 43.218990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707924, 35.551094, 43.158947>,  <38.937454, 35.611244, 43.122921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707924, 35.551094, 43.158947>,  <38.325375, 35.450840, 43.218990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707924, 35.551094, 43.158947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132037, -0.087518, -0.987374,
		-0.260605, 0.964118, -0.050607,
		0.956374, 0.250632, -0.150107,
		38.994835, 35.626286, 43.113914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377201, 36.017719, 42.721985>,  <38.325375, 35.450840, 43.218990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377201, 36.017719, 42.721985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.724243, 35.818855, 42.718163>,  <38.932468, 35.699535, 42.715870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.724243, 35.818855, 42.718163>,  <38.377201, 36.017719, 42.721985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724243, 35.818855, 42.718163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013154, -0.003738, -0.999906,
		0.497080, 0.867650, -0.009783,
		0.867605, -0.497162, -0.009555,
		38.984524, 35.669708, 42.715298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773792, 36.412239, 42.184826>,  <38.377201, 36.017719, 42.721985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773792, 36.412239, 42.184826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933720, 36.046757, 42.213909>,  <39.029675, 35.827465, 42.231361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933720, 36.046757, 42.213909>,  <38.773792, 36.412239, 42.184826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933720, 36.046757, 42.213909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186573, -0.158791, -0.969524,
		0.897407, 0.374064, -0.233960,
		0.399814, -0.913708, 0.072710,
		39.053665, 35.772644, 42.235722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263706, 36.417591, 41.627529>,  <38.773792, 36.412239, 42.184826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263706, 36.417591, 41.627529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.199966, 36.033501, 41.719250>,  <39.161720, 35.803047, 41.774281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.199966, 36.033501, 41.719250>,  <39.263706, 36.417591, 41.627529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199966, 36.033501, 41.719250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093236, -0.216591, -0.971800,
		0.982809, -0.176239, -0.055013,
		-0.159353, -0.960223, 0.229300,
		39.152161, 35.745434, 41.788040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685936, 36.952190, 41.595993>,  <39.263706, 36.417591, 41.627529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685936, 36.952190, 41.595993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773819, 37.278248, 41.381599>,  <39.826550, 37.473881, 41.252964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773819, 37.278248, 41.381599>,  <39.685936, 36.952190, 41.595993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773819, 37.278248, 41.381599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207379, 0.575874, 0.790800,
		0.953270, -0.062592, 0.295566,
		0.219707, 0.815139, -0.535982,
		39.839729, 37.522789, 41.220806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107353, 37.382298, 42.033852>,  <39.685936, 36.952190, 41.595993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107353, 37.382298, 42.033852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.988323, 37.622307, 41.736820>,  <39.916904, 37.766312, 41.558601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.988323, 37.622307, 41.736820>,  <40.107353, 37.382298, 42.033852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988323, 37.622307, 41.736820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196502, 0.722667, 0.662675,
		0.934257, 0.343114, -0.097142,
		-0.297575, 0.600020, -0.742580,
		39.899052, 37.802315, 41.514046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437481, 38.104805, 42.166126>,  <40.107353, 37.382298, 42.033852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437481, 38.104805, 42.166126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098999, 38.127235, 41.954170>,  <39.895908, 38.140694, 41.826996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098999, 38.127235, 41.954170>,  <40.437481, 38.104805, 42.166126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098999, 38.127235, 41.954170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334268, 0.718572, 0.609852,
		0.414965, 0.693188, -0.589317,
		-0.846208, 0.056078, -0.529893,
		39.845135, 38.144058, 41.795204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323071, 38.803551, 42.154667>,  <40.437481, 38.104805, 42.166126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323071, 38.803551, 42.154667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978092, 38.617500, 42.074829>,  <39.771103, 38.505871, 42.026924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978092, 38.617500, 42.074829>,  <40.323071, 38.803551, 42.154667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978092, 38.617500, 42.074829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487994, 0.659471, 0.571805,
		-0.134332, 0.590555, -0.795738,
		-0.862448, -0.465127, -0.199599,
		39.719357, 38.477962, 42.014950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838326, 39.326225, 42.032227>,  <40.323071, 38.803551, 42.154667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838326, 39.326225, 42.032227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570507, 39.031124, 42.066708>,  <39.409817, 38.854065, 42.087399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570507, 39.031124, 42.066708>,  <39.838326, 39.326225, 42.032227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570507, 39.031124, 42.066708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634216, 0.628242, 0.450646,
		-0.386622, 0.247055, -0.888531,
		-0.669547, -0.737750, 0.086206,
		39.369644, 38.809799, 42.092567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074585, 39.574375, 41.854977>,  <39.838326, 39.326225, 42.032227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074585, 39.574375, 41.854977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050625, 39.246918, 42.083447>,  <39.036251, 39.050442, 42.220528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050625, 39.246918, 42.083447>,  <39.074585, 39.574375, 41.854977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050625, 39.246918, 42.083447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707645, 0.438392, 0.554123,
		-0.704025, -0.370996, -0.605567,
		-0.059898, -0.818642, 0.571172,
		39.032654, 39.001324, 42.254799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379951, 39.452370, 41.908424>,  <39.074585, 39.574375, 41.854977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379951, 39.452370, 41.908424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529015, 39.251488, 42.220554>,  <38.618454, 39.130959, 42.407833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529015, 39.251488, 42.220554>,  <38.379951, 39.452370, 41.908424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529015, 39.251488, 42.220554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815241, 0.224517, 0.533830,
		-0.443289, -0.835094, -0.325748,
		0.372662, -0.502204, 0.780329,
		38.640812, 39.100826, 42.454655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791058, 39.136742, 42.174259>,  <38.379951, 39.452370, 41.908424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791058, 39.136742, 42.174259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068836, 39.161346, 42.461021>,  <38.235504, 39.176109, 42.633080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068836, 39.161346, 42.461021>,  <37.791058, 39.136742, 42.174259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068836, 39.161346, 42.461021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693272, 0.323962, 0.643757,
		-0.192656, -0.944068, 0.267616,
		0.694448, 0.061507, 0.716909,
		38.277172, 39.179798, 42.676094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423859, 38.938644, 42.758987>,  <37.791058, 39.136742, 42.174259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423859, 38.938644, 42.758987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752766, 39.110722, 42.908016>,  <37.950111, 39.213966, 42.997433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752766, 39.110722, 42.908016>,  <37.423859, 38.938644, 42.758987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752766, 39.110722, 42.908016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534058, 0.357112, 0.766324,
		0.196613, -0.829101, 0.523388,
		0.822268, 0.430189, 0.372576,
		37.999447, 39.239780, 43.019787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502831, 38.684574, 43.476170>,  <37.423859, 38.938644, 42.758987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502831, 38.684574, 43.476170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727116, 39.012138, 43.427200>,  <37.861687, 39.208679, 43.397820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727116, 39.012138, 43.427200>,  <37.502831, 38.684574, 43.476170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727116, 39.012138, 43.427200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299346, 0.338331, 0.892146,
		0.772009, -0.463587, 0.434844,
		0.560709, 0.818913, -0.122422,
		37.895329, 39.257812, 43.390472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916119, 38.802658, 44.149654>,  <37.502831, 38.684574, 43.476170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916119, 38.802658, 44.149654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.923622, 39.157326, 43.964844>,  <37.928123, 39.370125, 43.853958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.923622, 39.157326, 43.964844>,  <37.916119, 38.802658, 44.149654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923622, 39.157326, 43.964844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118064, 0.460843, 0.879593,
		0.992829, 0.038045, 0.113331,
		0.018764, 0.886666, -0.462030,
		37.929253, 39.423325, 43.826233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287937, 39.220882, 44.562664>,  <37.916119, 38.802658, 44.149654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287937, 39.220882, 44.562664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063061, 39.464355, 44.338722>,  <37.928135, 39.610439, 44.204357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063061, 39.464355, 44.338722>,  <38.287937, 39.220882, 44.562664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063061, 39.464355, 44.338722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173262, 0.575255, 0.799413,
		0.808653, 0.546427, -0.217942,
		-0.562193, 0.608687, -0.559857,
		37.894402, 39.646961, 44.170765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398014, 39.956543, 44.787884>,  <38.287937, 39.220882, 44.562664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398014, 39.956543, 44.787884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038151, 39.947994, 44.613457>,  <37.822231, 39.942867, 44.508801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038151, 39.947994, 44.613457>,  <38.398014, 39.956543, 44.787884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038151, 39.947994, 44.613457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360661, 0.599251, 0.714718,
		0.246044, 0.800276, -0.546827,
		-0.899659, -0.021367, -0.436070,
		37.768253, 39.941586, 44.482635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081566, 40.670376, 44.880447>,  <38.398014, 39.956543, 44.787884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081566, 40.670376, 44.880447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754189, 40.446354, 44.829082>,  <37.557762, 40.311939, 44.798264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754189, 40.446354, 44.829082>,  <38.081566, 40.670376, 44.880447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754189, 40.446354, 44.829082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507173, 0.599104, 0.619557,
		-0.270057, 0.572196, -0.774377,
		-0.818440, -0.560059, -0.128410,
		37.508656, 40.278336, 44.790558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.534149, 37.126442, 45.896500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919441, 37.028240, 45.940163>,  <33.150616, 36.969318, 45.966358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919441, 37.028240, 45.940163>,  <32.534149, 37.126442, 45.896500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919441, 37.028240, 45.940163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038331, -0.276543, -0.960237,
		0.265930, 0.929113, -0.256964,
		0.963230, -0.245506, 0.109155,
		33.208412, 36.954590, 45.972908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785828, 37.300079, 45.240513>,  <32.534149, 37.126442, 45.896500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785828, 37.300079, 45.240513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056465, 37.059689, 45.410713>,  <33.218845, 36.915455, 45.512833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056465, 37.059689, 45.410713>,  <32.785828, 37.300079, 45.240513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056465, 37.059689, 45.410713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136019, -0.465898, -0.874321,
		0.723688, 0.649434, -0.233478,
		0.676591, -0.600978, 0.425500,
		33.259441, 36.879395, 45.538364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397015, 37.216389, 44.742878>,  <32.785828, 37.300079, 45.240513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397015, 37.216389, 44.742878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413544, 36.884796, 44.965977>,  <33.423462, 36.685841, 45.099834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413544, 36.884796, 44.965977>,  <33.397015, 37.216389, 44.742878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413544, 36.884796, 44.965977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175757, -0.543487, -0.820811,
		0.983566, 0.131945, 0.123242,
		0.041321, -0.828983, 0.557746,
		33.425941, 36.636101, 45.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928082, 36.868942, 44.481812>,  <33.397015, 37.216389, 44.742878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928082, 36.868942, 44.481812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724907, 36.587044, 44.679939>,  <33.603004, 36.417904, 44.798817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724907, 36.587044, 44.679939>,  <33.928082, 36.868942, 44.481812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724907, 36.587044, 44.679939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210726, -0.659204, -0.721834,
		0.835223, -0.262268, 0.483340,
		-0.507934, -0.704745, 0.495316,
		33.572525, 36.375622, 44.828533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442589, 36.309986, 44.454082>,  <33.928082, 36.868942, 44.481812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442589, 36.309986, 44.454082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071812, 36.167881, 44.502361>,  <33.849346, 36.082619, 44.531330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071812, 36.167881, 44.502361>,  <34.442589, 36.309986, 44.454082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071812, 36.167881, 44.502361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101416, -0.546938, -0.831007,
		0.361246, -0.758052, 0.543008,
		-0.926939, -0.355268, 0.120701,
		33.793732, 36.061302, 44.538570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446701, 35.579746, 44.370594>,  <34.442589, 36.309986, 44.454082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446701, 35.579746, 44.370594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075516, 35.692352, 44.272911>,  <33.852806, 35.759914, 44.214302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075516, 35.692352, 44.272911>,  <34.446701, 35.579746, 44.370594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075516, 35.692352, 44.272911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080594, -0.488181, -0.869013,
		-0.363853, -0.826094, 0.430326,
		-0.927963, 0.281511, -0.244204,
		33.797127, 35.776806, 44.199650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268040, 35.062607, 43.927803>,  <34.446701, 35.579746, 44.370594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268040, 35.062607, 43.927803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005772, 35.359127, 43.870434>,  <33.848412, 35.537037, 43.836010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005772, 35.359127, 43.870434>,  <34.268040, 35.062607, 43.927803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005772, 35.359127, 43.870434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028712, -0.214300, -0.976346,
		-0.754500, -0.636044, 0.161795,
		-0.655672, 0.741298, -0.143427,
		33.809071, 35.581516, 43.827404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921223, 34.764416, 43.438541>,  <34.268040, 35.062607, 43.927803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921223, 34.764416, 43.438541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769905, 35.131870, 43.392925>,  <33.679115, 35.352345, 43.365555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769905, 35.131870, 43.392925>,  <33.921223, 34.764416, 43.438541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769905, 35.131870, 43.392925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176519, -0.192525, -0.965285,
		-0.908701, -0.345028, 0.234987,
		-0.378291, 0.918635, -0.114043,
		33.656418, 35.407459, 43.358711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183502, 34.766602, 43.191589>,  <33.921223, 34.764416, 43.438541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183502, 34.766602, 43.191589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363678, 35.102791, 43.071121>,  <33.471783, 35.304504, 42.998840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363678, 35.102791, 43.071121>,  <33.183502, 34.766602, 43.191589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363678, 35.102791, 43.071121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125066, -0.274604, -0.953389,
		-0.884004, 0.467110, -0.018577,
		0.450439, 0.840477, -0.301170,
		33.498810, 35.354935, 42.980770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846306, 35.019329, 42.664906>,  <33.183502, 34.766602, 43.191589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846306, 35.019329, 42.664906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168358, 35.249222, 42.606327>,  <33.361588, 35.387157, 42.571182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168358, 35.249222, 42.606327>,  <32.846306, 35.019329, 42.664906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168358, 35.249222, 42.606327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032717, -0.203499, -0.978528,
		-0.592196, 0.792633, -0.145039,
		0.805129, 0.574735, -0.146444,
		33.409897, 35.421642, 42.562393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658520, 35.575489, 42.050434>,  <32.846306, 35.019329, 42.664906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658520, 35.575489, 42.050434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055679, 35.540367, 42.082516>,  <33.293976, 35.519295, 42.101765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055679, 35.540367, 42.082516>,  <32.658520, 35.575489, 42.050434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055679, 35.540367, 42.082516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057006, -0.240507, -0.968972,
		0.104372, 0.966668, -0.233795,
		0.992903, -0.087806, 0.080209,
		33.353550, 35.514027, 42.106579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884533, 35.939102, 41.555424>,  <32.658520, 35.575489, 42.050434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884533, 35.939102, 41.555424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225624, 35.739468, 41.617092>,  <33.430279, 35.619686, 41.654095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225624, 35.739468, 41.617092>,  <32.884533, 35.939102, 41.555424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225624, 35.739468, 41.617092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144408, -0.058411, -0.987793,
		0.502002, 0.864580, 0.022264,
		0.852725, -0.499089, 0.154175,
		33.481441, 35.589741, 41.663345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301823, 36.192612, 41.071430>,  <32.884533, 35.939102, 41.555424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301823, 36.192612, 41.071430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532013, 35.882057, 41.174229>,  <33.670128, 35.695724, 41.235909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532013, 35.882057, 41.174229>,  <33.301823, 36.192612, 41.071430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532013, 35.882057, 41.174229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301453, -0.090739, -0.949154,
		0.760231, 0.623688, 0.181827,
		0.575477, -0.776389, 0.256995,
		33.704655, 35.649139, 41.251328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006119, 36.137135, 40.681622>,  <33.301823, 36.192612, 41.071430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006119, 36.137135, 40.681622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934124, 35.763142, 40.803879>,  <33.890926, 35.538746, 40.877232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934124, 35.763142, 40.803879>,  <34.006119, 36.137135, 40.681622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934124, 35.763142, 40.803879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292547, -0.347537, -0.890861,
		0.939159, -0.070930, 0.336078,
		-0.179988, -0.934980, 0.305642,
		33.880127, 35.482647, 40.895573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684471, 36.488445, 40.702770>,  <34.006119, 36.137135, 40.681622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684471, 36.488445, 40.702770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581776, 36.797234, 40.470165>,  <34.520161, 36.982506, 40.330605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581776, 36.797234, 40.470165>,  <34.684471, 36.488445, 40.702770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581776, 36.797234, 40.470165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372172, 0.476311, 0.796628,
		0.891951, 0.420943, 0.165020,
		-0.256734, 0.771969, -0.581508,
		34.504757, 37.028824, 40.295712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994957, 37.041592, 41.056644>,  <34.684471, 36.488445, 40.702770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994957, 37.041592, 41.056644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.685928, 37.154366, 40.829082>,  <34.500511, 37.222031, 40.692547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.685928, 37.154366, 40.829082>,  <34.994957, 37.041592, 41.056644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685928, 37.154366, 40.829082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400277, 0.479265, 0.781079,
		0.492867, 0.831156, -0.257414,
		-0.772568, 0.281931, -0.568906,
		34.454159, 37.238945, 40.658409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980358, 37.726036, 41.231571>,  <34.994957, 37.041592, 41.056644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980358, 37.726036, 41.231571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619999, 37.654175, 41.073532>,  <34.403782, 37.611057, 40.978706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619999, 37.654175, 41.073532>,  <34.980358, 37.726036, 41.231571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619999, 37.654175, 41.073532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422583, 0.570731, 0.704053,
		0.099011, 0.801244, -0.590089,
		-0.900900, -0.179653, -0.395100,
		34.349728, 37.600281, 40.955002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626591, 38.408958, 41.029060>,  <34.980358, 37.726036, 41.231571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626591, 38.408958, 41.029060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375217, 38.116688, 41.135784>,  <34.224396, 37.941326, 41.199818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375217, 38.116688, 41.135784>,  <34.626591, 38.408958, 41.029060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375217, 38.116688, 41.135784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400978, 0.598206, 0.693805,
		-0.666554, 0.329024, -0.668916,
		-0.628429, -0.730679, 0.266805,
		34.186687, 37.897484, 41.215824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045139, 38.827538, 41.394150>,  <34.626591, 38.408958, 41.029060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045139, 38.827538, 41.394150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930061, 38.451214, 41.465820>,  <33.861015, 38.225418, 41.508823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930061, 38.451214, 41.465820>,  <34.045139, 38.827538, 41.394150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930061, 38.451214, 41.465820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479460, 0.303437, 0.823434,
		-0.829067, 0.150987, -0.538378,
		-0.287692, -0.940813, 0.179177,
		33.843754, 38.168968, 41.519573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424896, 38.937672, 41.581676>,  <34.045139, 38.827538, 41.394150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424896, 38.937672, 41.581676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539478, 38.583317, 41.727631>,  <33.608227, 38.370705, 41.815201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539478, 38.583317, 41.727631>,  <33.424896, 38.937672, 41.581676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539478, 38.583317, 41.727631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406473, 0.232498, 0.883586,
		-0.867595, -0.401425, -0.293490,
		0.286458, -0.885891, 0.364882,
		33.625416, 38.317551, 41.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852211, 38.653511, 41.793320>,  <33.424896, 38.937672, 41.581676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852211, 38.653511, 41.793320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144287, 38.476040, 42.001156>,  <33.319534, 38.369556, 42.125858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144287, 38.476040, 42.001156>,  <32.852211, 38.653511, 41.793320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144287, 38.476040, 42.001156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436648, 0.281882, 0.854331,
		-0.525512, -0.850700, 0.012095,
		0.730188, -0.443680, 0.519589,
		33.363342, 38.342937, 42.157032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537128, 38.490131, 42.455116>,  <32.852211, 38.653511, 41.793320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537128, 38.490131, 42.455116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923470, 38.426182, 42.536667>,  <33.155273, 38.387814, 42.585598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923470, 38.426182, 42.536667>,  <32.537128, 38.490131, 42.455116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923470, 38.426182, 42.536667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192388, 0.084480, 0.977676,
		-0.173531, -0.983515, 0.050837,
		0.965854, -0.159876, 0.203876,
		33.213226, 38.378220, 42.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501900, 38.193592, 43.090393>,  <32.537128, 38.490131, 42.455116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501900, 38.193592, 43.090393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883541, 38.311100, 43.067093>,  <33.112526, 38.381603, 43.053112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883541, 38.311100, 43.067093>,  <32.501900, 38.193592, 43.090393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883541, 38.311100, 43.067093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022996, 0.122059, 0.992256,
		0.298606, -0.948051, 0.109701,
		0.954099, 0.293771, -0.058249,
		33.169769, 38.399231, 43.049618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886883, 37.886265, 43.697033>,  <32.501900, 38.193592, 43.090393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886883, 37.886265, 43.697033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095009, 38.213055, 43.597569>,  <33.219883, 38.409126, 43.537891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095009, 38.213055, 43.597569>,  <32.886883, 37.886265, 43.697033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095009, 38.213055, 43.597569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020210, 0.279319, 0.959986,
		0.853737, -0.504517, 0.128822,
		0.520312, 0.816972, -0.248661,
		33.251102, 38.458145, 43.522968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464142, 37.979828, 44.226276>,  <32.886883, 37.886265, 43.697033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464142, 37.979828, 44.226276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422901, 38.338326, 44.053707>,  <33.398155, 38.553425, 43.950165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422901, 38.338326, 44.053707>,  <33.464142, 37.979828, 44.226276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422901, 38.338326, 44.053707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167493, 0.443181, 0.880646,
		0.980467, 0.018540, -0.195808,
		-0.103105, 0.896240, -0.431419,
		33.391968, 38.607197, 43.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073936, 38.475922, 44.382034>,  <33.464142, 37.979828, 44.226276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073936, 38.475922, 44.382034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749180, 38.702019, 44.323616>,  <33.554325, 38.837677, 44.288567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749180, 38.702019, 44.323616>,  <34.073936, 38.475922, 44.382034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749180, 38.702019, 44.323616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137924, 0.428785, 0.892816,
		0.567281, 0.704728, -0.426088,
		-0.811892, 0.565245, -0.146043,
		33.505611, 38.871593, 44.279804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232475, 39.159180, 44.609589>,  <34.073936, 38.475922, 44.382034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232475, 39.159180, 44.609589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832535, 39.163494, 44.614845>,  <33.592571, 39.166080, 44.618000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832535, 39.163494, 44.614845>,  <34.232475, 39.159180, 44.609589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832535, 39.163494, 44.614845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016536, 0.437952, 0.898846,
		0.003936, 0.898934, -0.438067,
		-0.999856, 0.010781, 0.013141,
		33.532578, 39.166729, 44.618786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044380, 39.727421, 44.866943>,  <34.232475, 39.159180, 44.609589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044380, 39.727421, 44.866943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687340, 39.557129, 44.926304>,  <33.473114, 39.454956, 44.961922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687340, 39.557129, 44.926304>,  <34.044380, 39.727421, 44.866943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687340, 39.557129, 44.926304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044181, 0.410173, 0.910937,
		-0.448681, 0.806545, -0.384929,
		-0.892600, -0.425726, 0.148402,
		33.419559, 39.429413, 44.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892086, 40.359818, 44.365410>,  <34.044380, 39.727421, 44.866943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892086, 40.359818, 44.365410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161415, 40.653973, 44.334816>,  <34.323013, 40.830467, 44.316460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161415, 40.653973, 44.334816>,  <33.892086, 40.359818, 44.365410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161415, 40.653973, 44.334816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284355, -0.353055, -0.891344,
		-0.682485, 0.578411, -0.446829,
		0.673318, 0.735387, -0.076481,
		34.363411, 40.874588, 44.311871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834496, 40.640354, 43.617146>,  <33.892086, 40.359818, 44.365410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834496, 40.640354, 43.617146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183178, 40.783989, 43.750526>,  <34.392387, 40.870171, 43.830555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183178, 40.783989, 43.750526>,  <33.834496, 40.640354, 43.617146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183178, 40.783989, 43.750526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450266, -0.318407, -0.834193,
		-0.193373, 0.877311, -0.439241,
		0.871704, 0.359085, 0.333452,
		34.444691, 40.891716, 43.850563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134590, 40.923847, 43.069557>,  <33.834496, 40.640354, 43.617146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134590, 40.923847, 43.069557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464176, 40.882561, 43.292419>,  <34.661930, 40.857788, 43.426136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464176, 40.882561, 43.292419>,  <34.134590, 40.923847, 43.069557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464176, 40.882561, 43.292419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528329, -0.215441, -0.821251,
		0.204799, 0.971047, -0.122986,
		0.823969, -0.103215, 0.557155,
		34.711369, 40.851597, 43.459564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591694, 41.341301, 42.671684>,  <34.134590, 40.923847, 43.069557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591694, 41.341301, 42.671684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804829, 41.103161, 42.912231>,  <34.932709, 40.960278, 43.056561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804829, 41.103161, 42.912231>,  <34.591694, 41.341301, 42.671684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804829, 41.103161, 42.912231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602077, -0.232655, -0.763790,
		0.594635, 0.769044, 0.234481,
		0.532835, -0.595352, 0.601368,
		34.964680, 40.924557, 43.092640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293079, 41.604622, 42.539246>,  <34.591694, 41.341301, 42.671684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293079, 41.604622, 42.539246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.290119, 41.233685, 42.688896>,  <35.288342, 41.011120, 42.778687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.290119, 41.233685, 42.688896>,  <35.293079, 41.604622, 42.539246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290119, 41.233685, 42.688896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506018, -0.326174, -0.798471,
		0.862491, 0.183404, 0.471670,
		-0.007403, -0.927348, 0.374128,
		35.287899, 40.955479, 42.801136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028980, 41.463505, 42.466496>,  <35.293079, 41.604622, 42.539246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028980, 41.463505, 42.466496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.846951, 41.115376, 42.541794>,  <35.737732, 40.906498, 42.586971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.846951, 41.115376, 42.541794>,  <36.028980, 41.463505, 42.466496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846951, 41.115376, 42.541794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542469, -0.438613, -0.716482,
		0.706140, -0.223939, 0.671728,
		-0.455076, -0.870328, 0.188242,
		35.710426, 40.854279, 42.598267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550941, 41.080326, 42.351200>,  <36.028980, 41.463505, 42.466496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550941, 41.080326, 42.351200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222202, 40.853283, 42.331696>,  <36.024960, 40.717056, 42.319992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222202, 40.853283, 42.331696>,  <36.550941, 41.080326, 42.351200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222202, 40.853283, 42.331696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383744, -0.488302, -0.783774,
		0.421070, -0.662857, 0.619129,
		-0.821852, -0.567611, -0.048758,
		35.975647, 40.682999, 42.317070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704014, 40.375805, 42.500374>,  <36.550941, 41.080326, 42.351200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704014, 40.375805, 42.500374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.389751, 40.435947, 42.260326>,  <36.201195, 40.472034, 42.116299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.389751, 40.435947, 42.260326>,  <36.704014, 40.375805, 42.500374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389751, 40.435947, 42.260326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394810, -0.624965, -0.673457,
		-0.476311, -0.766036, 0.431644,
		-0.785655, 0.150358, -0.600116,
		36.154057, 40.481056, 42.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475021, 39.649769, 42.189960>,  <36.704014, 40.375805, 42.500374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475021, 39.649769, 42.189960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327774, 39.939297, 41.956524>,  <36.239426, 40.113014, 41.816463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327774, 39.939297, 41.956524>,  <36.475021, 39.649769, 42.189960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327774, 39.939297, 41.956524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186612, -0.557377, -0.809016,
		-0.910861, -0.406716, 0.070106,
		-0.368115, 0.723819, -0.583591,
		36.217339, 40.156441, 41.781448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096619, 39.264950, 41.640709>,  <36.475021, 39.649769, 42.189960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096619, 39.264950, 41.640709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171253, 39.625328, 41.484001>,  <36.216034, 39.841557, 41.389977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171253, 39.625328, 41.484001>,  <36.096619, 39.264950, 41.640709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171253, 39.625328, 41.484001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245233, -0.428863, -0.869447,
		-0.951339, 0.066152, -0.300961,
		0.186587, 0.900944, -0.391771,
		36.227230, 39.895611, 41.366470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092304, 39.175789, 40.981743>,  <36.096619, 39.264950, 41.640709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092304, 39.175789, 40.981743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274895, 39.530983, 40.959423>,  <36.384449, 39.744099, 40.946030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274895, 39.530983, 40.959423>,  <36.092304, 39.175789, 40.981743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274895, 39.530983, 40.959423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339968, -0.232038, -0.911362,
		-0.822221, 0.397047, -0.407806,
		0.456480, 0.887982, -0.055803,
		36.411839, 39.797379, 40.942680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883377, 39.451252, 40.350365>,  <36.092304, 39.175789, 40.981743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883377, 39.451252, 40.350365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.217602, 39.635075, 40.470795>,  <36.418137, 39.745369, 40.543053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.217602, 39.635075, 40.470795>,  <35.883377, 39.451252, 40.350365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217602, 39.635075, 40.470795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450295, -0.258878, -0.854527,
		-0.314764, 0.849580, -0.423246,
		0.835558, 0.459560, 0.301077,
		36.468269, 39.772942, 40.561119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135365, 39.845966, 39.726971>,  <35.883377, 39.451252, 40.350365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135365, 39.845966, 39.726971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.450340, 39.778282, 39.964054>,  <36.639328, 39.737671, 40.106304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.450340, 39.778282, 39.964054>,  <36.135365, 39.845966, 39.726971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450340, 39.778282, 39.964054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580925, -0.117726, -0.805399,
		0.206062, 0.978523, 0.005599,
		0.787442, -0.169214, 0.592707,
		36.686573, 39.727516, 40.141865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725960, 40.256409, 39.448395>,  <36.135365, 39.845966, 39.726971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725960, 40.256409, 39.448395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843193, 39.928913, 39.645889>,  <36.913532, 39.732418, 39.764385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843193, 39.928913, 39.645889>,  <36.725960, 40.256409, 39.448395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843193, 39.928913, 39.645889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455162, -0.334654, -0.825127,
		0.840792, 0.466558, 0.274577,
		0.293081, -0.818737, 0.493734,
		36.931118, 39.683292, 39.794010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.567736, 41.038773, 40.922909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733391, 41.224667, 40.609856>,  <27.832783, 41.336201, 40.422024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733391, 41.224667, 40.609856>,  <27.567736, 41.038773, 40.922909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733391, 41.224667, 40.609856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304242, -0.739702, -0.600232,
		-0.857862, 0.486688, -0.164947,
		0.414137, 0.464732, -0.782633,
		27.857632, 41.364086, 40.375065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076799, 40.967426, 40.286312>,  <27.567736, 41.038773, 40.922909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076799, 40.967426, 40.286312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.429041, 41.048824, 40.115139>,  <27.640387, 41.097664, 40.012436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.429041, 41.048824, 40.115139>,  <27.076799, 40.967426, 40.286312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429041, 41.048824, 40.115139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150109, -0.736778, -0.659261,
		-0.449446, 0.644785, -0.618265,
		0.880605, 0.203495, -0.427930,
		27.693222, 41.109875, 39.986759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913015, 40.874477, 39.637131>,  <27.076799, 40.967426, 40.286312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913015, 40.874477, 39.637131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312963, 40.873241, 39.643414>,  <27.552933, 40.872501, 39.647182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312963, 40.873241, 39.643414>,  <26.913015, 40.874477, 39.637131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312963, 40.873241, 39.643414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009027, -0.701594, -0.712520,
		0.013218, 0.712570, -0.701476,
		0.999872, -0.003086, 0.015706,
		27.612925, 40.872314, 39.648125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057968, 40.676670, 38.932976>,  <26.913015, 40.874477, 39.637131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057968, 40.676670, 38.932976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412060, 40.615479, 39.108688>,  <27.624516, 40.578766, 39.214115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412060, 40.615479, 39.108688>,  <27.057968, 40.676670, 38.932976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412060, 40.615479, 39.108688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124095, -0.832480, -0.539979,
		0.448298, 0.532517, -0.717951,
		0.885228, -0.152977, 0.439282,
		27.677628, 40.569584, 39.240475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616768, 40.590088, 38.437981>,  <27.057968, 40.676670, 38.932976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616768, 40.590088, 38.437981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738653, 40.383179, 38.757874>,  <27.811785, 40.259033, 38.949810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738653, 40.383179, 38.757874>,  <27.616768, 40.590088, 38.437981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738653, 40.383179, 38.757874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253352, -0.765395, -0.591594,
		0.918130, 0.382880, -0.102172,
		0.304711, -0.517275, 0.799736,
		27.830067, 40.227997, 38.997795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307545, 40.312901, 38.292278>,  <27.616768, 40.590088, 38.437981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307545, 40.312901, 38.292278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146936, 40.070992, 38.567387>,  <28.050571, 39.925846, 38.732452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146936, 40.070992, 38.567387>,  <28.307545, 40.312901, 38.292278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146936, 40.070992, 38.567387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297424, -0.796367, -0.526630,
		0.866210, -0.006893, 0.499632,
		-0.401520, -0.604775, 0.687771,
		28.026480, 39.889561, 38.773720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835026, 39.701492, 38.324409>,  <28.307545, 40.312901, 38.292278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835026, 39.701492, 38.324409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498766, 39.566963, 38.494209>,  <28.297010, 39.486248, 38.596088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498766, 39.566963, 38.494209>,  <28.835026, 39.701492, 38.324409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498766, 39.566963, 38.494209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192583, -0.918218, -0.346103,
		0.506183, -0.209200, 0.836669,
		-0.840649, -0.336319, 0.424498,
		28.246571, 39.466068, 38.621559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031246, 39.054337, 38.532421>,  <28.835026, 39.701492, 38.324409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031246, 39.054337, 38.532421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.631355, 39.055717, 38.523182>,  <28.391420, 39.056545, 38.517639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.631355, 39.055717, 38.523182>,  <29.031246, 39.054337, 38.532421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631355, 39.055717, 38.523182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001720, -0.975439, -0.220264,
		-0.023289, -0.220244, 0.975167,
		-0.999727, 0.003453, -0.023096,
		28.331436, 39.056755, 38.516254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702957, 38.494328, 38.935017>,  <29.031246, 39.054337, 38.532421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702957, 38.494328, 38.935017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.420515, 38.586300, 38.667122>,  <28.251051, 38.641483, 38.506386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.420515, 38.586300, 38.667122>,  <28.702957, 38.494328, 38.935017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420515, 38.586300, 38.667122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163440, -0.973196, -0.161795,
		-0.688988, -0.004781, 0.724757,
		-0.706104, 0.229929, -0.669739,
		28.208685, 38.655277, 38.466202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063931, 38.050198, 39.045147>,  <28.702957, 38.494328, 38.935017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063931, 38.050198, 39.045147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004108, 38.169197, 38.667973>,  <27.968214, 38.240597, 38.441669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004108, 38.169197, 38.667973>,  <28.063931, 38.050198, 39.045147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004108, 38.169197, 38.667973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058906, -0.954647, -0.291856,
		-0.986997, 0.011895, 0.160298,
		-0.149556, 0.297503, -0.942935,
		27.959242, 38.258450, 38.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458086, 37.646923, 38.818375>,  <28.063931, 38.050198, 39.045147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458086, 37.646923, 38.818375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.646145, 37.778252, 38.490677>,  <27.758980, 37.857048, 38.294056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.646145, 37.778252, 38.490677>,  <27.458086, 37.646923, 38.818375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646145, 37.778252, 38.490677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077809, -0.940037, -0.332078,
		-0.879153, 0.092380, -0.467500,
		0.470145, 0.328323, -0.819248,
		27.787188, 37.876747, 38.244904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192020, 37.301384, 38.281128>,  <27.458086, 37.646923, 38.818375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192020, 37.301384, 38.281128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527876, 37.418571, 38.098183>,  <27.729389, 37.488884, 37.988415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527876, 37.418571, 38.098183>,  <27.192020, 37.301384, 38.281128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527876, 37.418571, 38.098183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105523, -0.914001, -0.391748,
		-0.532799, 0.280664, -0.798344,
		0.839637, 0.292967, -0.457362,
		27.779766, 37.506462, 37.960976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137835, 37.112988, 37.515457>,  <27.192020, 37.301384, 38.281128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137835, 37.112988, 37.515457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522749, 37.171028, 37.607506>,  <27.753696, 37.205853, 37.662735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522749, 37.171028, 37.607506>,  <27.137835, 37.112988, 37.515457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522749, 37.171028, 37.607506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232871, -0.876648, -0.421022,
		0.140644, 0.458731, -0.877374,
		0.962284, 0.145100, 0.230120,
		27.811434, 37.214558, 37.676540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539804, 36.856438, 37.010532>,  <27.137835, 37.112988, 37.515457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539804, 36.856438, 37.010532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.844604, 36.863564, 37.269466>,  <28.027485, 36.867840, 37.424828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.844604, 36.863564, 37.269466>,  <27.539804, 36.856438, 37.010532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844604, 36.863564, 37.269466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336261, -0.865179, -0.372012,
		0.553430, 0.501146, -0.665258,
		0.762000, 0.017817, 0.647332,
		28.073204, 36.868908, 37.463665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171535, 36.829185, 36.558952>,  <27.539804, 36.856438, 37.010532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171535, 36.829185, 36.558952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247431, 36.701138, 36.930225>,  <28.292969, 36.624310, 37.152988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247431, 36.701138, 36.930225>,  <28.171535, 36.829185, 36.558952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247431, 36.701138, 36.930225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486585, -0.790438, -0.372079,
		0.852780, 0.522239, 0.005786,
		0.189740, -0.320117, 0.928183,
		28.304354, 36.605103, 37.208679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851858, 36.517868, 36.464188>,  <28.171535, 36.829185, 36.558952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851858, 36.517868, 36.464188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.701471, 36.377483, 36.807228>,  <28.611238, 36.293255, 37.013050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.701471, 36.377483, 36.807228>,  <28.851858, 36.517868, 36.464188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701471, 36.377483, 36.807228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435104, -0.883991, -0.171010,
		0.818128, 0.308851, 0.485055,
		-0.375968, -0.350958, 0.857599,
		28.588680, 36.272198, 37.064507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427856, 36.269318, 36.872379>,  <28.851858, 36.517868, 36.464188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427856, 36.269318, 36.872379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.084942, 36.085526, 36.965271>,  <28.879192, 35.975250, 37.021008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.084942, 36.085526, 36.965271>,  <29.427856, 36.269318, 36.872379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084942, 36.085526, 36.965271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406513, -0.880927, -0.242313,
		0.315919, -0.113327, 0.941994,
		-0.857288, -0.459484, 0.232233,
		28.827755, 35.947681, 37.034943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622425, 35.540508, 37.090794>,  <29.427856, 36.269318, 36.872379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622425, 35.540508, 37.090794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236719, 35.521828, 36.986477>,  <29.005295, 35.510620, 36.923889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236719, 35.521828, 36.986477>,  <29.622425, 35.540508, 37.090794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236719, 35.521828, 36.986477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194809, -0.792110, -0.578456,
		-0.179558, -0.608589, 0.772902,
		-0.964266, -0.046702, -0.260789,
		28.947439, 35.507816, 36.908241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432186, 34.796635, 37.168678>,  <29.622425, 35.540508, 37.090794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432186, 34.796635, 37.168678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183226, 34.970730, 36.908470>,  <29.033850, 35.075188, 36.752346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183226, 34.970730, 36.908470>,  <29.432186, 34.796635, 37.168678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183226, 34.970730, 36.908470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001540, -0.830449, -0.557092,
		-0.782694, -0.347739, 0.516206,
		-0.622405, 0.435237, -0.650523,
		28.996504, 35.101303, 36.713314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315357, 34.382324, 37.787464>,  <29.432186, 34.796635, 37.168678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315357, 34.382324, 37.787464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710325, 34.415775, 37.841148>,  <29.947306, 34.435844, 37.873360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710325, 34.415775, 37.841148>,  <29.315357, 34.382324, 37.787464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710325, 34.415775, 37.841148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157898, 0.567401, 0.808162,
		-0.008567, -0.819185, 0.573466,
		0.987418, 0.083625, 0.134208,
		30.006550, 34.440865, 37.881413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362688, 34.420418, 38.421654>,  <29.315357, 34.382324, 37.787464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362688, 34.420418, 38.421654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710871, 34.589355, 38.320518>,  <29.919781, 34.690720, 38.259838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710871, 34.589355, 38.320518>,  <29.362688, 34.420418, 38.421654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710871, 34.589355, 38.320518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030292, 0.466709, 0.883892,
		0.491317, -0.777046, 0.393454,
		0.870454, 0.422353, -0.252841,
		29.972008, 34.716061, 38.244667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837923, 34.419510, 39.112488>,  <29.362688, 34.420418, 38.421654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837923, 34.419510, 39.112488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975622, 34.710754, 38.875389>,  <30.058241, 34.885502, 38.733128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975622, 34.710754, 38.875389>,  <29.837923, 34.419510, 39.112488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975622, 34.710754, 38.875389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272502, 0.526675, 0.805206,
		0.898463, -0.438715, -0.017105,
		0.344248, 0.728109, -0.592749,
		30.078897, 34.929188, 38.697563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277306, 34.689365, 39.487198>,  <29.837923, 34.419510, 39.112488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277306, 34.689365, 39.487198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289667, 34.950787, 39.184696>,  <30.297085, 35.107639, 39.003197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289667, 34.950787, 39.184696>,  <30.277306, 34.689365, 39.487198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289667, 34.950787, 39.184696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402255, 0.684503, 0.607986,
		0.915006, -0.322994, -0.241741,
		0.030903, 0.653552, -0.756250,
		30.298939, 35.146851, 38.957821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002216, 34.927536, 39.513882>,  <30.277306, 34.689365, 39.487198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002216, 34.927536, 39.513882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.751373, 35.193142, 39.350998>,  <30.600868, 35.352505, 39.253269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.751373, 35.193142, 39.350998>,  <31.002216, 34.927536, 39.513882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751373, 35.193142, 39.350998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188594, 0.636653, 0.747733,
		0.755757, 0.392112, -0.524480,
		-0.627107, 0.664018, -0.407205,
		30.563242, 35.392349, 39.228836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356176, 35.624149, 39.679493>,  <31.002216, 34.927536, 39.513882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356176, 35.624149, 39.679493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973705, 35.696674, 39.587536>,  <30.744223, 35.740189, 39.532364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973705, 35.696674, 39.587536>,  <31.356176, 35.624149, 39.679493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973705, 35.696674, 39.587536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002805, 0.790824, 0.612037,
		0.292771, 0.584571, -0.756678,
		-0.956178, 0.181309, -0.229890,
		30.686852, 35.751068, 39.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246658, 36.316788, 39.457798>,  <31.356176, 35.624149, 39.679493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246658, 36.316788, 39.457798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.867407, 36.226486, 39.547314>,  <30.639856, 36.172306, 39.601025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.867407, 36.226486, 39.547314>,  <31.246658, 36.316788, 39.457798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867407, 36.226486, 39.547314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056709, 0.812841, 0.579719,
		-0.312784, 0.536958, -0.783481,
		-0.948130, -0.225758, 0.223793,
		30.582968, 36.158760, 39.614452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793873, 36.863255, 39.342655>,  <31.246658, 36.316788, 39.457798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793873, 36.863255, 39.342655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.631128, 36.631214, 39.624920>,  <30.533482, 36.491989, 39.794277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.631128, 36.631214, 39.624920>,  <30.793873, 36.863255, 39.342655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631128, 36.631214, 39.624920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267450, 0.814279, 0.515189,
		-0.873462, 0.020882, -0.486445,
		-0.406860, -0.580097, 0.705657,
		30.509069, 36.457184, 39.836617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179083, 37.234825, 39.566109>,  <30.793873, 36.863255, 39.342655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179083, 37.234825, 39.566109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244703, 36.974510, 39.862637>,  <30.284075, 36.818321, 40.040554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244703, 36.974510, 39.862637>,  <30.179083, 37.234825, 39.566109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244703, 36.974510, 39.862637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384570, 0.649850, 0.655592,
		-0.908401, -0.392642, -0.143665,
		0.164052, -0.650790, 0.741323,
		30.293919, 36.779274, 40.085033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618837, 37.329319, 40.024525>,  <30.179083, 37.234825, 39.566109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618837, 37.329319, 40.024525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903711, 37.168747, 40.254883>,  <30.074636, 37.072403, 40.393097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903711, 37.168747, 40.254883>,  <29.618837, 37.329319, 40.024525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903711, 37.168747, 40.254883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269147, 0.601530, 0.752144,
		-0.648347, -0.690665, 0.320357,
		0.712184, -0.401427, 0.575891,
		30.117367, 37.048321, 40.427650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390013, 37.446114, 40.755192>,  <29.618837, 37.329319, 40.024525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390013, 37.446114, 40.755192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771048, 37.337894, 40.810883>,  <29.999668, 37.272964, 40.844296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771048, 37.337894, 40.810883>,  <29.390013, 37.446114, 40.755192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771048, 37.337894, 40.810883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116823, 0.747709, 0.653669,
		-0.280950, -0.606411, 0.743864,
		0.952586, -0.270548, 0.139226,
		30.056824, 37.256729, 40.852650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485975, 37.565720, 41.484272>,  <29.390013, 37.446114, 40.755192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485975, 37.565720, 41.484272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838694, 37.603840, 41.299511>,  <30.050325, 37.626713, 41.188656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838694, 37.603840, 41.299511>,  <29.485975, 37.565720, 41.484272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838694, 37.603840, 41.299511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083806, 0.932126, 0.352303,
		0.464123, -0.349369, 0.813960,
		0.881797, 0.095297, -0.461901,
		30.103233, 37.632427, 41.160942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831747, 37.930981, 42.054150>,  <29.485975, 37.565720, 41.484272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831747, 37.930981, 42.054150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.025257, 37.969799, 41.706230>,  <30.141363, 37.993088, 41.497478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.025257, 37.969799, 41.706230>,  <29.831747, 37.930981, 42.054150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025257, 37.969799, 41.706230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341173, 0.894299, 0.289536,
		0.805954, -0.436821, 0.399531,
		0.483776, 0.097044, -0.869795,
		30.170389, 37.998913, 41.445293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541527, 38.230629, 42.219051>,  <29.831747, 37.930981, 42.054150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541527, 38.230629, 42.219051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431681, 38.318649, 41.844635>,  <30.365772, 38.371460, 41.619987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431681, 38.318649, 41.844635>,  <30.541527, 38.230629, 42.219051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431681, 38.318649, 41.844635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251512, 0.956010, 0.150956,
		0.928077, -0.193969, -0.317881,
		-0.274617, 0.220050, -0.936036,
		30.349297, 38.384663, 41.563824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919697, 38.788216, 42.142338>,  <30.541527, 38.230629, 42.219051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919697, 38.788216, 42.142338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668789, 38.803440, 41.831188>,  <30.518244, 38.812572, 41.644501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668789, 38.803440, 41.831188>,  <30.919697, 38.788216, 42.142338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668789, 38.803440, 41.831188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048044, 0.998794, 0.010124,
		0.777317, -0.031022, -0.628343,
		-0.627271, 0.038058, -0.777870,
		30.480608, 38.814857, 41.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258724, 39.146313, 41.656475>,  <30.919697, 38.788216, 42.142338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258724, 39.146313, 41.656475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862556, 39.174030, 41.608696>,  <30.624855, 39.190659, 41.580029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862556, 39.174030, 41.608696>,  <31.258724, 39.146313, 41.656475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862556, 39.174030, 41.608696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060898, 0.995504, 0.072547,
		0.123940, 0.064578, -0.990186,
		-0.990419, 0.069292, -0.119450,
		30.565432, 39.194817, 41.572861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200974, 39.748928, 41.218197>,  <31.258724, 39.146313, 41.656475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200974, 39.748928, 41.218197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843658, 39.676773, 41.382874>,  <30.629269, 39.633480, 41.481682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843658, 39.676773, 41.382874>,  <31.200974, 39.748928, 41.218197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843658, 39.676773, 41.382874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155012, 0.983379, 0.094540,
		-0.421907, 0.020634, -0.906404,
		-0.893289, -0.180391, 0.411696,
		30.575672, 39.622658, 41.506382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942490, 40.295025, 41.065968>,  <31.200974, 39.748928, 41.218197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942490, 40.295025, 41.065968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.644867, 40.177917, 41.306187>,  <30.466293, 40.107651, 41.450317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.644867, 40.177917, 41.306187>,  <30.942490, 40.295025, 41.065968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644867, 40.177917, 41.306187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299996, 0.949567, 0.091239,
		-0.596977, -0.112276, -0.794363,
		-0.744057, -0.292773, 0.600552,
		30.421650, 40.090084, 41.486351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305483, 40.535648, 40.811493>,  <30.942490, 40.295025, 41.065968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305483, 40.535648, 40.811493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273409, 40.496006, 41.208229>,  <30.254164, 40.472221, 41.446270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273409, 40.496006, 41.208229>,  <30.305483, 40.535648, 40.811493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273409, 40.496006, 41.208229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134028, 0.987081, 0.087790,
		-0.987728, -0.125894, -0.092433,
		-0.080186, -0.099101, 0.991841,
		30.249353, 40.466274, 41.505783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816565, 40.984566, 41.008289>,  <30.305483, 40.535648, 40.811493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816565, 40.984566, 41.008289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.034977, 40.926708, 41.338364>,  <30.166025, 40.891994, 41.536407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.034977, 40.926708, 41.338364>,  <29.816565, 40.984566, 41.008289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034977, 40.926708, 41.338364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103125, 0.989096, 0.105141,
		-0.831394, 0.027687, 0.554993,
		0.546030, -0.144647, 0.825184,
		30.198786, 40.883312, 41.585918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508341, 41.439842, 41.480141>,  <29.816565, 40.984566, 41.008289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508341, 41.439842, 41.480141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.840994, 41.366405, 41.689781>,  <30.040586, 41.322346, 41.815567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.840994, 41.366405, 41.689781>,  <29.508341, 41.439842, 41.480141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840994, 41.366405, 41.689781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147601, 0.982901, 0.110090,
		-0.535349, -0.014197, 0.844511,
		0.831634, -0.183587, 0.524100,
		30.090485, 41.311329, 41.847012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508911, 41.842583, 42.069553>,  <29.508341, 41.439842, 41.480141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508911, 41.842583, 42.069553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896921, 41.760910, 42.016853>,  <30.129728, 41.711906, 41.985233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896921, 41.760910, 42.016853>,  <29.508911, 41.842583, 42.069553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896921, 41.760910, 42.016853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212344, 0.975859, 0.051085,
		0.118143, -0.077531, 0.989965,
		0.970027, -0.204178, -0.131754,
		30.187929, 41.699657, 41.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847895, 42.121948, 42.641926>,  <29.508911, 41.842583, 42.069553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847895, 42.121948, 42.641926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124575, 42.087917, 42.355064>,  <30.290583, 42.067497, 42.182949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124575, 42.087917, 42.355064>,  <29.847895, 42.121948, 42.641926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124575, 42.087917, 42.355064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314530, 0.929398, 0.193107,
		0.650092, -0.359139, 0.669627,
		0.691702, -0.085080, -0.717154,
		30.332085, 42.062393, 42.139919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.344460, 41.244644, 44.845078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187748, 40.877678, 44.872955>,  <37.093719, 40.657497, 44.889683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187748, 40.877678, 44.872955>,  <37.344460, 41.244644, 44.845078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187748, 40.877678, 44.872955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306946, 0.201737, 0.930101,
		-0.867348, 0.343002, -0.360633,
		-0.391780, -0.917416, 0.069693,
		37.070213, 40.602451, 44.893864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626095, 41.319172, 45.156853>,  <37.344460, 41.244644, 44.845078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626095, 41.319172, 45.156853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760071, 40.948353, 45.224262>,  <36.840454, 40.725861, 45.264709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760071, 40.948353, 45.224262>,  <36.626095, 41.319172, 45.156853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760071, 40.948353, 45.224262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272546, 0.075891, 0.959145,
		-0.901962, -0.367184, -0.227244,
		0.334937, -0.927047, 0.168525,
		36.860554, 40.670238, 45.274818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051193, 41.018131, 45.552162>,  <36.626095, 41.319172, 45.156853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051193, 41.018131, 45.552162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398777, 40.833580, 45.623772>,  <36.607327, 40.722851, 45.666737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398777, 40.833580, 45.623772>,  <36.051193, 41.018131, 45.552162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398777, 40.833580, 45.623772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084918, 0.217363, 0.972390,
		-0.487552, -0.860165, 0.149699,
		0.868954, -0.461379, 0.179019,
		36.659462, 40.695168, 45.677479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957481, 40.646706, 46.161457>,  <36.051193, 41.018131, 45.552162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957481, 40.646706, 46.161457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355724, 40.650295, 46.124180>,  <36.594669, 40.652447, 46.101814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355724, 40.650295, 46.124180>,  <35.957481, 40.646706, 46.161457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355724, 40.650295, 46.124180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084732, 0.337088, 0.937652,
		0.039826, -0.941430, 0.334848,
		0.995608, 0.008971, -0.093194,
		36.654408, 40.652988, 46.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181732, 40.193245, 46.696903>,  <35.957481, 40.646706, 46.161457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181732, 40.193245, 46.696903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506935, 40.413151, 46.620186>,  <36.702057, 40.545094, 46.574154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506935, 40.413151, 46.620186>,  <36.181732, 40.193245, 46.696903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506935, 40.413151, 46.620186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047941, 0.265072, 0.963036,
		0.580280, -0.792147, 0.189149,
		0.813004, 0.549763, -0.191793,
		36.750835, 40.578079, 46.562649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681038, 40.027222, 47.220131>,  <36.181732, 40.193245, 46.696903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681038, 40.027222, 47.220131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796013, 40.390285, 47.097801>,  <36.864998, 40.608124, 47.024403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796013, 40.390285, 47.097801>,  <36.681038, 40.027222, 47.220131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796013, 40.390285, 47.097801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094752, 0.290785, 0.952085,
		0.953103, -0.302638, -0.002422,
		0.287433, 0.907664, -0.305824,
		36.882244, 40.662586, 47.006054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293068, 40.151661, 47.557350>,  <36.681038, 40.027222, 47.220131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293068, 40.151661, 47.557350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135574, 40.508976, 47.470623>,  <37.041080, 40.723366, 47.418587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135574, 40.508976, 47.470623>,  <37.293068, 40.151661, 47.557350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135574, 40.508976, 47.470623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332502, 0.358302, 0.872389,
		0.856982, 0.271395, -0.438095,
		-0.393732, 0.893289, -0.216819,
		37.017456, 40.776962, 47.405579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789215, 40.624847, 47.690044>,  <37.293068, 40.151661, 47.557350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789215, 40.624847, 47.690044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462452, 40.855362, 47.699539>,  <37.266396, 40.993671, 47.705235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462452, 40.855362, 47.699539>,  <37.789215, 40.624847, 47.690044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462452, 40.855362, 47.699539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361622, 0.479684, 0.799458,
		0.449328, 0.661665, -0.600253,
		-0.816905, 0.576284, 0.023737,
		37.217381, 41.028248, 47.706661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026459, 41.160835, 48.115067>,  <37.789215, 40.624847, 47.690044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026459, 41.160835, 48.115067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640293, 41.257175, 48.075130>,  <37.408592, 41.314980, 48.051167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640293, 41.257175, 48.075130>,  <38.026459, 41.160835, 48.115067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640293, 41.257175, 48.075130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026825, 0.472672, 0.880830,
		0.259341, 0.847686, -0.462785,
		-0.965413, 0.240849, -0.099844,
		37.350670, 41.329430, 48.045177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937168, 41.855133, 48.161877>,  <38.026459, 41.160835, 48.115067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937168, 41.855133, 48.161877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574059, 41.715317, 48.254627>,  <37.356194, 41.631428, 48.310280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574059, 41.715317, 48.254627>,  <37.937168, 41.855133, 48.161877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574059, 41.715317, 48.254627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023652, 0.509277, 0.860278,
		-0.418791, 0.786423, -0.454041,
		-0.907775, -0.349538, 0.231881,
		37.301727, 41.610455, 48.324192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581142, 42.472588, 48.393936>,  <37.937168, 41.855133, 48.161877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581142, 42.472588, 48.393936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396748, 42.166267, 48.573288>,  <37.286110, 41.982475, 48.680901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396748, 42.166267, 48.573288>,  <37.581142, 42.472588, 48.393936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396748, 42.166267, 48.573288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040027, 0.486814, 0.872588,
		-0.886504, 0.420199, -0.193762,
		-0.460987, -0.765797, 0.448382,
		37.258453, 41.936527, 48.707802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034561, 42.794907, 48.738079>,  <37.581142, 42.472588, 48.393936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034561, 42.794907, 48.738079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105484, 42.435532, 48.898762>,  <37.148037, 42.219906, 48.995171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105484, 42.435532, 48.898762>,  <37.034561, 42.794907, 48.738079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105484, 42.435532, 48.898762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071353, 0.418833, 0.905256,
		-0.981566, -0.131843, 0.138367,
		0.177304, -0.898441, 0.401704,
		37.158676, 42.166000, 49.019272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586033, 42.748146, 49.304577>,  <37.034561, 42.794907, 48.738079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586033, 42.748146, 49.304577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907394, 42.518261, 49.366867>,  <37.100212, 42.380329, 49.404240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907394, 42.518261, 49.366867>,  <36.586033, 42.748146, 49.304577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907394, 42.518261, 49.366867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180825, 0.484661, 0.855807,
		-0.567319, -0.659397, 0.493300,
		0.803400, -0.574716, 0.155722,
		37.148415, 42.345844, 49.413582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556591, 43.444424, 49.104477>,  <36.586033, 42.748146, 49.304577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556591, 43.444424, 49.104477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699955, 43.556370, 48.748226>,  <36.785973, 43.623539, 48.534477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699955, 43.556370, 48.748226>,  <36.556591, 43.444424, 49.104477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699955, 43.556370, 48.748226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928136, -0.004095, 0.372218,
		0.100525, -0.960030, -0.261223,
		0.358410, 0.279867, -0.890627,
		36.807480, 43.640331, 48.481037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901340, 42.965462, 49.087116>,  <36.556591, 43.444424, 49.104477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901340, 42.965462, 49.087116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508926, 42.961960, 49.164570>,  <35.273479, 42.959858, 49.211044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508926, 42.961960, 49.164570>,  <35.901340, 42.965462, 49.087116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508926, 42.961960, 49.164570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179853, -0.331431, -0.926178,
		0.072283, -0.943439, 0.323571,
		-0.981034, -0.008752, 0.193637,
		35.214615, 42.959335, 49.222660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617207, 42.381279, 48.958061>,  <35.901340, 42.965462, 49.087116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617207, 42.381279, 48.958061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312809, 42.637684, 48.918072>,  <35.130169, 42.791527, 48.894077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312809, 42.637684, 48.918072>,  <35.617207, 42.381279, 48.958061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312809, 42.637684, 48.918072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136789, -0.309170, -0.941118,
		-0.634176, -0.702509, 0.322960,
		-0.760993, 0.641011, -0.099973,
		35.084511, 42.829987, 48.888081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111092, 42.002941, 48.653011>,  <35.617207, 42.381279, 48.958061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111092, 42.002941, 48.653011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984921, 42.378254, 48.596252>,  <34.909218, 42.603443, 48.562199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984921, 42.378254, 48.596252>,  <35.111092, 42.002941, 48.653011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984921, 42.378254, 48.596252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215855, -0.216551, -0.952109,
		-0.924075, -0.269688, 0.270838,
		-0.315423, 0.938282, -0.141896,
		34.890293, 42.659740, 48.553684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405792, 41.909828, 48.335732>,  <35.111092, 42.002941, 48.653011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405792, 41.909828, 48.335732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582928, 42.252506, 48.229927>,  <34.689209, 42.458115, 48.166443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582928, 42.252506, 48.229927>,  <34.405792, 41.909828, 48.335732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582928, 42.252506, 48.229927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317493, -0.126068, -0.939843,
		-0.838507, 0.500177, 0.216168,
		0.442836, 0.856697, -0.264512,
		34.715778, 42.509514, 48.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011093, 42.196838, 47.929276>,  <34.405792, 41.909828, 48.335732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011093, 42.196838, 47.929276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311264, 42.442062, 47.830467>,  <34.491367, 42.589195, 47.771183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311264, 42.442062, 47.830467>,  <34.011093, 42.196838, 47.929276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311264, 42.442062, 47.830467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364149, 0.071587, -0.928585,
		-0.551594, 0.786787, 0.276966,
		0.750426, 0.613059, -0.247021,
		34.536392, 42.625980, 47.756363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710552, 42.843525, 47.631294>,  <34.011093, 42.196838, 47.929276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710552, 42.843525, 47.631294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077736, 42.743744, 47.507923>,  <34.298046, 42.683876, 47.433899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077736, 42.743744, 47.507923>,  <33.710552, 42.843525, 47.631294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077736, 42.743744, 47.507923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299388, 0.074410, -0.951226,
		0.260238, 0.965524, -0.006378,
		0.917956, -0.249455, -0.308430,
		34.353123, 42.668907, 47.415394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616192, 42.907761, 46.927917>,  <33.710552, 42.843525, 47.631294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616192, 42.907761, 46.927917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989056, 42.762947, 46.926174>,  <34.212772, 42.676060, 46.925129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989056, 42.762947, 46.926174>,  <33.616192, 42.907761, 46.927917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989056, 42.762947, 46.926174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038225, -0.086443, -0.995523,
		0.360033, 0.928150, -0.094416,
		0.932156, -0.362030, -0.004356,
		34.268703, 42.654339, 46.924866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991894, 43.269138, 46.412796>,  <33.616192, 42.907761, 46.927917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991894, 43.269138, 46.412796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189178, 42.927383, 46.478241>,  <34.307549, 42.722332, 46.517509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189178, 42.927383, 46.478241>,  <33.991894, 43.269138, 46.412796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189178, 42.927383, 46.478241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007052, -0.192003, -0.981369,
		0.869883, 0.482866, -0.100723,
		0.493208, -0.854386, 0.163615,
		34.337139, 42.671066, 46.527325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448391, 43.133930, 45.935162>,  <33.991894, 43.269138, 46.412796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448391, 43.133930, 45.935162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394676, 42.762520, 46.073612>,  <34.362450, 42.539673, 46.156681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394676, 42.762520, 46.073612>,  <34.448391, 43.133930, 45.935162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394676, 42.762520, 46.073612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090449, -0.359318, -0.928822,
		0.986806, -0.093420, 0.132235,
		-0.134285, -0.928528, 0.346127,
		34.354389, 42.483963, 46.177452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965069, 42.746498, 45.508842>,  <34.448391, 43.133930, 45.935162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965069, 42.746498, 45.508842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705158, 42.493092, 45.676868>,  <34.549213, 42.341049, 45.777683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705158, 42.493092, 45.676868>,  <34.965069, 42.746498, 45.508842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705158, 42.493092, 45.676868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111706, -0.626210, -0.771610,
		0.751874, -0.454448, 0.477663,
		-0.649774, -0.633512, 0.420067,
		34.510227, 42.303040, 45.802887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261932, 42.122181, 45.573475>,  <34.965069, 42.746498, 45.508842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261932, 42.122181, 45.573475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872303, 42.031944, 45.580292>,  <34.638527, 41.977802, 45.584381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872303, 42.031944, 45.580292>,  <35.261932, 42.122181, 45.573475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872303, 42.031944, 45.580292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120198, -0.579852, -0.805806,
		0.191664, -0.782866, 0.591934,
		-0.974073, -0.225594, 0.017038,
		34.580082, 41.964268, 45.585403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173294, 41.351543, 45.591198>,  <35.261932, 42.122181, 45.573475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173294, 41.351543, 45.591198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814224, 41.482449, 45.473164>,  <34.598782, 41.560993, 45.402344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814224, 41.482449, 45.473164>,  <35.173294, 41.351543, 45.591198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814224, 41.482449, 45.473164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027732, -0.626361, -0.779040,
		-0.439782, -0.707509, 0.553194,
		-0.897676, 0.327267, -0.295083,
		34.544922, 41.580627, 45.384640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806332, 40.768379, 45.394894>,  <35.173294, 41.351543, 45.591198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806332, 40.768379, 45.394894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612904, 41.062313, 45.204662>,  <34.496849, 41.238674, 45.090523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612904, 41.062313, 45.204662>,  <34.806332, 40.768379, 45.394894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612904, 41.062313, 45.204662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093818, -0.583715, -0.806520,
		-0.870265, -0.345388, 0.351206,
		-0.483566, 0.734836, -0.475583,
		34.467834, 41.282764, 45.061989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252171, 40.459480, 45.012573>,  <34.806332, 40.768379, 45.394894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252171, 40.459480, 45.012573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307457, 40.814072, 44.835915>,  <34.340630, 41.026829, 44.729919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307457, 40.814072, 44.835915>,  <34.252171, 40.459480, 45.012573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307457, 40.814072, 44.835915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170921, -0.460583, -0.871005,
		-0.975543, 0.044897, -0.215176,
		0.138212, 0.886480, -0.441645,
		34.348919, 41.080017, 44.703423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539108, 40.308605, 45.105820>,  <34.252171, 40.459480, 45.012573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539108, 40.308605, 45.105820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377804, 39.955132, 45.200886>,  <33.281021, 39.743050, 45.257923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377804, 39.955132, 45.200886>,  <33.539108, 40.308605, 45.105820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377804, 39.955132, 45.200886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027446, 0.247920, 0.968392,
		-0.914672, 0.397040, -0.075724,
		-0.403264, -0.883682, 0.237663,
		33.256824, 39.690025, 45.272186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976810, 40.457771, 45.545692>,  <33.539108, 40.308605, 45.105820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976810, 40.457771, 45.545692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069012, 40.072166, 45.598690>,  <33.124332, 39.840805, 45.630489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069012, 40.072166, 45.598690>,  <32.976810, 40.457771, 45.545692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069012, 40.072166, 45.598690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194804, 0.179124, 0.964347,
		-0.953373, -0.196471, 0.229081,
		0.230501, -0.964009, 0.132499,
		33.138161, 39.782963, 45.638439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390388, 40.187016, 45.983421>,  <32.976810, 40.457771, 45.545692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390388, 40.187016, 45.983421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725243, 39.972218, 46.025059>,  <32.926155, 39.843338, 46.050041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725243, 39.972218, 46.025059>,  <32.390388, 40.187016, 45.983421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725243, 39.972218, 46.025059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060627, 0.098041, 0.993334,
		-0.543623, -0.837867, 0.049517,
		0.837137, -0.536997, 0.104095,
		32.976383, 39.811119, 46.056286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267162, 39.643208, 46.466782>,  <32.390388, 40.187016, 45.983421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267162, 39.643208, 46.466782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666710, 39.626945, 46.456848>,  <32.906437, 39.617188, 46.450890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666710, 39.626945, 46.456848>,  <32.267162, 39.643208, 46.466782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666710, 39.626945, 46.456848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019391, -0.129183, 0.991431,
		-0.043512, -0.990787, -0.128248,
		0.998865, -0.040652, -0.024833,
		32.966370, 39.614750, 46.449398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454880, 39.142334, 46.914722>,  <32.267162, 39.643208, 46.466782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454880, 39.142334, 46.914722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775253, 39.379318, 46.880074>,  <32.967476, 39.521507, 46.859283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775253, 39.379318, 46.880074>,  <32.454880, 39.142334, 46.914722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775253, 39.379318, 46.880074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049015, 0.079302, 0.995645,
		0.596749, -0.801687, 0.034476,
		0.800930, 0.592460, -0.086618,
		33.015533, 39.557056, 46.854088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958378, 38.852852, 47.307899>,  <32.454880, 39.142334, 46.914722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958378, 38.852852, 47.307899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067646, 39.236172, 47.274334>,  <33.133205, 39.466164, 47.254196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067646, 39.236172, 47.274334>,  <32.958378, 38.852852, 47.307899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067646, 39.236172, 47.274334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150133, 0.043691, 0.987700,
		0.950177, -0.282410, -0.131937,
		0.273172, 0.958298, -0.083913,
		33.149597, 39.523663, 47.249161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456455, 39.010784, 47.771851>,  <32.958378, 38.852852, 47.307899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456455, 39.010784, 47.771851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373749, 39.389359, 47.672646>,  <33.324127, 39.616505, 47.613125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373749, 39.389359, 47.672646>,  <33.456455, 39.010784, 47.771851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373749, 39.389359, 47.672646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105415, 0.273562, 0.956060,
		0.972696, 0.171532, -0.156331,
		-0.206762, 0.946436, -0.248011,
		33.311722, 39.673290, 47.598244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031097, 38.660934, 48.169174>,  <33.456455, 39.010784, 47.771851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031097, 38.660934, 48.169174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879417, 38.332661, 48.340141>,  <33.788410, 38.135696, 48.442722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879417, 38.332661, 48.340141>,  <34.031097, 38.660934, 48.169174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879417, 38.332661, 48.340141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075664, -0.487869, -0.869631,
		0.922214, -0.297428, 0.247098,
		-0.379204, -0.820683, 0.427415,
		33.765656, 38.086456, 48.468365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463482, 38.079376, 48.001694>,  <34.031097, 38.660934, 48.169174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463482, 38.079376, 48.001694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105858, 37.920082, 48.083733>,  <33.891285, 37.824505, 48.132954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105858, 37.920082, 48.083733>,  <34.463482, 38.079376, 48.001694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105858, 37.920082, 48.083733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090540, -0.609057, -0.787941,
		0.438701, -0.685898, 0.580590,
		-0.894060, -0.398238, 0.205093,
		33.837639, 37.800610, 48.145260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504505, 37.253548, 48.061378>,  <34.463482, 38.079376, 48.001694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504505, 37.253548, 48.061378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134613, 37.384808, 47.984238>,  <33.912678, 37.463562, 47.937954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134613, 37.384808, 47.984238>,  <34.504505, 37.253548, 48.061378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134613, 37.384808, 47.984238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061294, -0.628445, -0.775435,
		-0.375654, -0.705248, 0.601256,
		-0.924731, 0.328148, -0.192851,
		33.857193, 37.483253, 47.926384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074020, 36.641438, 48.105053>,  <34.504505, 37.253548, 48.061378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074020, 36.641438, 48.105053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893337, 36.906712, 47.866341>,  <33.784927, 37.065876, 47.723114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893337, 36.906712, 47.866341>,  <34.074020, 36.641438, 48.105053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893337, 36.906712, 47.866341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204330, -0.728029, -0.654387,
		-0.868453, -0.173651, 0.464364,
		-0.451706, 0.663188, -0.596777,
		33.757824, 37.105667, 47.687309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660965, 36.208584, 47.731052>,  <34.074020, 36.641438, 48.105053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660965, 36.208584, 47.731052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650768, 36.555889, 47.532871>,  <33.644650, 36.764271, 47.413963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650768, 36.555889, 47.532871>,  <33.660965, 36.208584, 47.731052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650768, 36.555889, 47.532871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169141, -0.492213, -0.853884,
		-0.985262, 0.062037, 0.159404,
		-0.025488, 0.868261, -0.495452,
		33.643124, 36.816368, 47.384235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321518, 36.039696, 47.168831>,  <33.660965, 36.208584, 47.731052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321518, 36.039696, 47.168831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470657, 36.391888, 47.051708>,  <33.560143, 36.603203, 46.981434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470657, 36.391888, 47.051708>,  <33.321518, 36.039696, 47.168831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470657, 36.391888, 47.051708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051965, -0.334879, -0.940827,
		-0.926435, 0.335574, -0.170614,
		0.372852, 0.880481, -0.292806,
		33.582512, 36.656033, 46.963867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879768, 36.465626, 46.630322>,  <33.321518, 36.039696, 47.168831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879768, 36.465626, 46.630322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279694, 36.465279, 46.638054>,  <33.519650, 36.465069, 46.642693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279694, 36.465279, 46.638054>,  <32.879768, 36.465626, 46.630322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279694, 36.465279, 46.638054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017287, -0.408816, -0.912453,
		0.008694, 0.912616, -0.408724,
		0.999813, -0.000867, 0.019331,
		33.579636, 36.465019, 46.643852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.954636, 39.310261, 50.595253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901096, 39.667625, 50.423721>,  <36.868973, 39.882046, 50.320801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901096, 39.667625, 50.423721>,  <36.954636, 39.310261, 50.595253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901096, 39.667625, 50.423721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203115, -0.398803, -0.894260,
		-0.969963, -0.206801, -0.128085,
		-0.133853, 0.893415, -0.428829,
		36.860939, 39.935650, 50.295074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402458, 39.270657, 50.098404>,  <36.954636, 39.310261, 50.595253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402458, 39.270657, 50.098404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.656715, 39.559265, 49.988590>,  <36.809269, 39.732430, 49.922703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.656715, 39.559265, 49.988590>,  <36.402458, 39.270657, 50.098404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656715, 39.559265, 49.988590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372197, -0.597990, -0.709844,
		-0.676333, 0.349027, -0.648655,
		0.635644, 0.721518, -0.274534,
		36.847408, 39.775723, 49.906231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317055, 39.478252, 49.336155>,  <36.402458, 39.270657, 50.098404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317055, 39.478252, 49.336155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.689369, 39.584732, 49.436378>,  <36.912758, 39.648621, 49.496513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.689369, 39.584732, 49.436378>,  <36.317055, 39.478252, 49.336155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689369, 39.584732, 49.436378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362244, -0.579326, -0.730179,
		-0.049221, 0.770401, -0.635657,
		0.930783, 0.266203, 0.250557,
		36.968605, 39.664593, 49.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636147, 39.617252, 48.666546>,  <36.317055, 39.478252, 49.336155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636147, 39.617252, 48.666546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.950687, 39.602726, 48.913227>,  <37.139412, 39.594009, 49.061237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.950687, 39.602726, 48.913227>,  <36.636147, 39.617252, 48.666546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950687, 39.602726, 48.913227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459930, -0.632054, -0.623677,
		0.412441, 0.774073, -0.480316,
		0.786357, -0.036319, 0.616704,
		37.186596, 39.591831, 49.098240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238914, 39.605103, 48.269985>,  <36.636147, 39.617252, 48.666546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238914, 39.605103, 48.269985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.375175, 39.473408, 48.622250>,  <37.456932, 39.394390, 48.833607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.375175, 39.473408, 48.622250>,  <37.238914, 39.605103, 48.269985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375175, 39.473408, 48.622250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632613, -0.612669, -0.473749,
		0.695528, 0.718499, -0.000426,
		0.340649, -0.329236, 0.880660,
		37.477371, 39.374638, 48.886448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 39.788692, 48.357109>,  <37.238914, 39.605103, 48.269985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016747, 39.788692, 48.357109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.859241, 39.455338, 48.512245>,  <37.764740, 39.255325, 48.605328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.859241, 39.455338, 48.512245>,  <38.016747, 39.788692, 48.357109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859241, 39.455338, 48.512245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507645, -0.548908, -0.664076,
		0.766320, -0.064602, 0.639203,
		-0.393764, -0.833383, 0.387844,
		37.741112, 39.205322, 48.628597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473015, 39.331444, 48.104809>,  <38.016747, 39.788692, 48.357109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473015, 39.331444, 48.104809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214478, 39.081955, 48.280632>,  <38.059357, 38.932262, 48.386127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214478, 39.081955, 48.280632>,  <38.473015, 39.331444, 48.104809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214478, 39.081955, 48.280632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348378, -0.753730, -0.557247,
		0.678876, -0.207040, 0.704459,
		-0.646344, -0.623719, 0.439561,
		38.020573, 38.894840, 48.412498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885704, 38.642994, 48.213711>,  <38.473015, 39.331444, 48.104809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885704, 38.642994, 48.213711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.495975, 38.553043, 48.218239>,  <38.262138, 38.499073, 48.220955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.495975, 38.553043, 48.218239>,  <38.885704, 38.642994, 48.213711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495975, 38.553043, 48.218239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159171, -0.723465, -0.671761,
		0.159249, -0.652710, 0.740681,
		-0.974323, -0.224872, 0.011319,
		38.203678, 38.485580, 48.221634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877979, 37.949215, 48.419605>,  <38.885704, 38.642994, 48.213711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877979, 37.949215, 48.419605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.536270, 38.051613, 48.238640>,  <38.331245, 38.113052, 48.130058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.536270, 38.051613, 48.238640>,  <38.877979, 37.949215, 48.419605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536270, 38.051613, 48.238640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129271, -0.738367, -0.661894,
		-0.503490, -0.623924, 0.597676,
		-0.854276, 0.255995, -0.452415,
		38.279987, 38.128410, 48.102917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469872, 37.291027, 48.222019>,  <38.877979, 37.949215, 48.419605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469872, 37.291027, 48.222019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.321274, 37.585026, 47.995117>,  <38.232113, 37.761425, 47.858978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.321274, 37.585026, 47.995117>,  <38.469872, 37.291027, 48.222019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321274, 37.585026, 47.995117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093217, -0.637417, -0.764859,
		-0.923742, -0.231266, 0.305313,
		-0.371498, 0.734993, -0.567252,
		38.209824, 37.805523, 47.824944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928410, 37.052971, 47.838505>,  <38.469872, 37.291027, 48.222019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928410, 37.052971, 47.838505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070953, 37.356224, 47.620056>,  <38.156479, 37.538174, 47.488987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070953, 37.356224, 47.620056>,  <37.928410, 37.052971, 47.838505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070953, 37.356224, 47.620056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102696, -0.549172, -0.829375,
		-0.928688, 0.351640, -0.117846,
		0.356360, 0.758129, -0.546121,
		38.177860, 37.583664, 47.456219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756657, 36.796619, 47.238102>,  <37.928410, 37.052971, 47.838505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756657, 36.796619, 47.238102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.970573, 37.114212, 47.122456>,  <38.098923, 37.304768, 47.053066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.970573, 37.114212, 47.122456>,  <37.756657, 36.796619, 47.238102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970573, 37.114212, 47.122456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029987, -0.359774, -0.932557,
		-0.844449, 0.490058, -0.216215,
		0.534796, 0.793981, -0.289116,
		38.131012, 37.352406, 47.035721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950787, 37.238037, 47.265820>,  <37.756657, 36.796619, 47.238102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950787, 37.238037, 47.265820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.594143, 37.159252, 47.102734>,  <36.380157, 37.111980, 47.004883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.594143, 37.159252, 47.102734>,  <36.950787, 37.238037, 47.265820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594143, 37.159252, 47.102734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409514, -0.033420, 0.911691,
		-0.193197, 0.979841, -0.050862,
		-0.891613, -0.196965, -0.407715,
		36.326660, 37.100163, 46.980419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385090, 37.660492, 47.452393>,  <36.950787, 37.238037, 47.265820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385090, 37.660492, 47.452393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.246208, 37.292004, 47.382198>,  <36.162880, 37.070911, 47.340084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.246208, 37.292004, 47.382198>,  <36.385090, 37.660492, 47.452393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246208, 37.292004, 47.382198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185166, -0.116095, 0.975825,
		-0.919326, 0.371307, -0.130270,
		-0.347207, -0.921223, -0.175483,
		36.142044, 37.015636, 47.329552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749001, 37.549320, 47.869793>,  <36.385090, 37.660492, 47.452393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749001, 37.549320, 47.869793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906380, 37.194439, 47.773407>,  <36.000809, 36.981510, 47.715576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906380, 37.194439, 47.773407>,  <35.749001, 37.549320, 47.869793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906380, 37.194439, 47.773407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087731, -0.297146, 0.950793,
		-0.915152, -0.352946, -0.194747,
		0.393447, -0.887205, -0.240969,
		36.024414, 36.928276, 47.701115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290417, 37.124012, 48.118378>,  <35.749001, 37.549320, 47.869793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290417, 37.124012, 48.118378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.631203, 36.915241, 48.101646>,  <35.835674, 36.789978, 48.091606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.631203, 36.915241, 48.101646>,  <35.290417, 37.124012, 48.118378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631203, 36.915241, 48.101646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164604, -0.342815, 0.924869,
		-0.497052, -0.781071, -0.377977,
		0.851965, -0.521925, -0.041829,
		35.886791, 36.758663, 48.089096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134357, 36.477551, 48.508320>,  <35.290417, 37.124012, 48.118378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134357, 36.477551, 48.508320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.528919, 36.434608, 48.458546>,  <35.765656, 36.408844, 48.428680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.528919, 36.434608, 48.458546>,  <35.134357, 36.477551, 48.508320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528919, 36.434608, 48.458546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076344, -0.371199, 0.925409,
		-0.145535, -0.922327, -0.357957,
		0.986403, -0.107351, -0.124437,
		35.824841, 36.402401, 48.421215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358696, 35.789658, 48.603630>,  <35.134357, 36.477551, 48.508320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358696, 35.789658, 48.603630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668564, 36.017536, 48.713417>,  <35.854485, 36.154263, 48.779289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668564, 36.017536, 48.713417>,  <35.358696, 35.789658, 48.603630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668564, 36.017536, 48.713417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085335, -0.335877, 0.938032,
		0.626584, -0.750085, -0.211578,
		0.774668, 0.569701, 0.274464,
		35.900963, 36.188446, 48.795757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829365, 35.353546, 48.948704>,  <35.358696, 35.789658, 48.603630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829365, 35.353546, 48.948704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.811142, 35.739983, 49.050365>,  <35.800209, 35.971844, 49.111362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.811142, 35.739983, 49.050365>,  <35.829365, 35.353546, 48.948704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811142, 35.739983, 49.050365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379175, -0.252106, 0.890319,
		0.924203, -0.055810, 0.377803,
		-0.045558, 0.966089, 0.254158,
		35.797474, 36.029808, 49.126614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554008, 35.294250, 49.642891>,  <35.829365, 35.353546, 48.948704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554008, 35.294250, 49.642891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.632244, 35.684437, 49.602463>,  <35.679184, 35.918549, 49.578205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.632244, 35.684437, 49.602463>,  <35.554008, 35.294250, 49.642891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632244, 35.684437, 49.602463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195315, 0.139746, 0.970733,
		0.961040, -0.170122, 0.217855,
		0.195587, 0.975464, -0.101074,
		35.690922, 35.977077, 49.572140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023712, 35.486515, 50.148399>,  <35.554008, 35.294250, 49.642891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023712, 35.486515, 50.148399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795639, 35.799244, 50.047485>,  <35.658794, 35.986881, 49.986935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795639, 35.799244, 50.047485>,  <36.023712, 35.486515, 50.148399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795639, 35.799244, 50.047485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209584, 0.158505, 0.964858,
		0.794335, 0.603020, 0.073481,
		-0.570182, 0.781820, -0.252289,
		35.624584, 36.033791, 49.971798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246445, 36.011269, 50.676838>,  <36.023712, 35.486515, 50.148399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246445, 36.011269, 50.676838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889202, 36.131596, 50.543045>,  <35.674858, 36.203793, 50.462769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889202, 36.131596, 50.543045>,  <36.246445, 36.011269, 50.676838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889202, 36.131596, 50.543045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318429, 0.102465, 0.942393,
		0.317759, 0.948162, 0.004277,
		-0.893102, 0.300816, -0.334482,
		35.621273, 36.221840, 50.442699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033772, 36.492096, 51.082401>,  <36.246445, 36.011269, 50.676838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033772, 36.492096, 51.082401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686420, 36.391029, 50.911716>,  <35.478008, 36.330391, 50.809307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686420, 36.391029, 50.911716>,  <36.033772, 36.492096, 51.082401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686420, 36.391029, 50.911716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478030, 0.197545, 0.855841,
		-0.131947, 0.947173, -0.292326,
		-0.868376, -0.252666, -0.426711,
		35.425907, 36.315231, 50.783703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506222, 37.043747, 51.050465>,  <36.033772, 36.492096, 51.082401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506222, 37.043747, 51.050465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.343967, 36.678699, 51.070812>,  <35.246613, 36.459671, 51.083019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.343967, 36.678699, 51.070812>,  <35.506222, 37.043747, 51.050465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343967, 36.678699, 51.070812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493196, 0.265393, 0.828447,
		-0.769554, 0.310963, -0.557753,
		-0.405640, -0.912616, 0.050869,
		35.222275, 36.404915, 51.086075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044193, 37.229336, 51.548668>,  <35.506222, 37.043747, 51.050465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044193, 37.229336, 51.548668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.947968, 36.850052, 51.465698>,  <34.890232, 36.622482, 51.415916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.947968, 36.850052, 51.465698>,  <35.044193, 37.229336, 51.548668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947968, 36.850052, 51.465698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719320, 0.030678, 0.694001,
		-0.651696, 0.316156, -0.689447,
		-0.240564, -0.948211, -0.207425,
		34.875797, 36.565590, 51.403469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267082, 37.095158, 51.431606>,  <35.044193, 37.229336, 51.548668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267082, 37.095158, 51.431606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459087, 36.790901, 51.606430>,  <34.574291, 36.608349, 51.711323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459087, 36.790901, 51.606430>,  <34.267082, 37.095158, 51.431606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459087, 36.790901, 51.606430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531327, 0.144358, 0.834777,
		-0.698057, -0.632922, -0.334854,
		0.480009, -0.760638, 0.437058,
		34.603088, 36.562710, 51.737549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226894, 37.870777, 51.064522>,  <34.267082, 37.095158, 51.431606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226894, 37.870777, 51.064522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.859280, 38.003544, 51.149559>,  <33.638710, 38.083202, 51.200581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.859280, 38.003544, 51.149559>,  <34.226894, 37.870777, 51.064522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859280, 38.003544, 51.149559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142360, 0.223436, -0.964266,
		-0.367555, -0.916466, -0.158096,
		-0.919041, 0.331914, 0.212594,
		33.583569, 38.103119, 51.213337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697407, 37.527313, 50.626492>,  <34.226894, 37.870777, 51.064522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697407, 37.527313, 50.626492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590714, 37.896980, 50.735867>,  <33.526695, 38.118782, 50.801491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590714, 37.896980, 50.735867>,  <33.697407, 37.527313, 50.626492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590714, 37.896980, 50.735867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026929, 0.276460, -0.960648,
		-0.963393, -0.263602, -0.048855,
		-0.266735, 0.924166, 0.273438,
		33.510693, 38.174229, 50.817898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985477, 37.635876, 50.291607>,  <33.697407, 37.527313, 50.626492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985477, 37.635876, 50.291607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182823, 37.978672, 50.351154>,  <33.301231, 38.184349, 50.386883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182823, 37.978672, 50.351154>,  <32.985477, 37.635876, 50.291607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182823, 37.978672, 50.351154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064063, 0.206479, -0.976352,
		-0.867460, 0.472162, 0.156770,
		0.493366, 0.856989, 0.148864,
		33.330833, 38.235767, 50.395813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591892, 38.057678, 49.966080>,  <32.985477, 37.635876, 50.291607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591892, 38.057678, 49.966080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944759, 38.245319, 49.982685>,  <33.156479, 38.357903, 49.992649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944759, 38.245319, 49.982685>,  <32.591892, 38.057678, 49.966080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944759, 38.245319, 49.982685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116955, 0.303626, -0.945586,
		-0.456184, 0.829308, 0.322713,
		0.882166, 0.469104, 0.041518,
		33.209408, 38.386051, 49.995140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503193, 38.667313, 49.526031>,  <32.591892, 38.057678, 49.966080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503193, 38.667313, 49.526031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886349, 38.552986, 49.537003>,  <33.116241, 38.484390, 49.543583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886349, 38.552986, 49.537003>,  <32.503193, 38.667313, 49.526031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886349, 38.552986, 49.537003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072163, 0.147201, -0.986471,
		0.277911, 0.946912, 0.161628,
		0.957892, -0.285814, 0.027424,
		33.173717, 38.467243, 49.545231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813221, 39.043602, 49.032913>,  <32.503193, 38.667313, 49.526031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813221, 39.043602, 49.032913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.062138, 38.741764, 49.116188>,  <33.211487, 38.560661, 49.166153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.062138, 38.741764, 49.116188>,  <32.813221, 39.043602, 49.032913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062138, 38.741764, 49.116188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225229, -0.082110, -0.970840,
		0.749681, 0.651038, 0.118859,
		0.622294, -0.754591, 0.208189,
		33.248825, 38.515388, 49.178646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389015, 39.230732, 48.619766>,  <32.813221, 39.043602, 49.032913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389015, 39.230732, 48.619766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.391083, 38.840916, 48.709427>,  <33.392323, 38.607025, 48.763226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.391083, 38.840916, 48.709427>,  <33.389015, 39.230732, 48.619766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391083, 38.840916, 48.709427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119967, -0.221934, -0.967653,
		0.992764, 0.031891, 0.115766,
		0.005167, -0.974540, 0.224154,
		33.392632, 38.548553, 48.776672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936066, 39.423267, 48.255402>,  <33.389015, 39.230732, 48.619766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936066, 39.423267, 48.255402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669342, 39.677567, 48.099865>,  <33.509308, 39.830147, 48.006542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669342, 39.677567, 48.099865>,  <33.936066, 39.423267, 48.255402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669342, 39.677567, 48.099865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125906, 0.610378, 0.782040,
		0.734518, 0.472512, -0.487048,
		-0.666807, 0.635744, -0.388842,
		33.469299, 39.868290, 47.983212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288788, 39.995201, 48.163437>,  <33.936066, 39.423267, 48.255402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288788, 39.995201, 48.163437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.901852, 40.086124, 48.208313>,  <33.669689, 40.140678, 48.235237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.901852, 40.086124, 48.208313>,  <34.288788, 39.995201, 48.163437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901852, 40.086124, 48.208313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225159, 0.567193, 0.792209,
		0.116441, 0.791596, -0.599848,
		-0.967339, 0.227307, 0.112191,
		33.611649, 40.154316, 48.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328857, 40.570835, 48.455822>,  <34.288788, 39.995201, 48.163437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328857, 40.570835, 48.455822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.950344, 40.467148, 48.533142>,  <33.723236, 40.404938, 48.579533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.950344, 40.467148, 48.533142>,  <34.328857, 40.570835, 48.455822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950344, 40.467148, 48.533142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092716, 0.355183, 0.930187,
		-0.309774, 0.898139, -0.312069,
		-0.946279, -0.259214, 0.193299,
		33.666462, 40.389385, 48.591133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017960, 41.197437, 48.556557>,  <34.328857, 40.570835, 48.455822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017960, 41.197437, 48.556557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810265, 40.901413, 48.727531>,  <33.685646, 40.723801, 48.830116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810265, 40.901413, 48.727531>,  <34.017960, 41.197437, 48.556557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810265, 40.901413, 48.727531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051757, 0.526460, 0.848623,
		-0.853060, 0.418516, -0.311662,
		-0.519240, -0.740057, 0.427441,
		33.654491, 40.679398, 48.855762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589596, 41.609787, 48.900513>,  <34.017960, 41.197437, 48.556557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589596, 41.609787, 48.900513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586079, 41.248039, 49.071178>,  <33.583969, 41.030991, 49.173576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586079, 41.248039, 49.071178>,  <33.589596, 41.609787, 48.900513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586079, 41.248039, 49.071178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070796, 0.425047, 0.902398,
		-0.997452, 0.038137, 0.060289,
		-0.008789, -0.904367, 0.426664,
		33.583443, 40.976730, 49.199177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368637, 41.735317, 49.464199>,  <33.589596, 41.609787, 48.900513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368637, 41.735317, 49.464199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528221, 41.379990, 49.555164>,  <33.623970, 41.166794, 49.609741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528221, 41.379990, 49.555164>,  <33.368637, 41.735317, 49.464199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528221, 41.379990, 49.555164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126474, 0.298940, 0.945854,
		-0.908205, -0.348596, 0.231615,
		0.398959, -0.888322, 0.227410,
		33.647907, 41.113491, 49.623386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135975, 41.632313, 50.122375>,  <33.368637, 41.735317, 49.464199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135975, 41.632313, 50.122375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.458855, 41.401424, 50.072979>,  <33.652580, 41.262890, 50.043343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.458855, 41.401424, 50.072979>,  <33.135975, 41.632313, 50.122375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458855, 41.401424, 50.072979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324056, 0.258466, 0.910045,
		-0.493380, -0.774603, 0.395685,
		0.807195, -0.577222, -0.123493,
		33.701012, 41.228256, 50.035931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202244, 41.280903, 50.701530>,  <33.135975, 41.632313, 50.122375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202244, 41.280903, 50.701530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564980, 41.302525, 50.534332>,  <33.782619, 41.315498, 50.434013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564980, 41.302525, 50.534332>,  <33.202244, 41.280903, 50.701530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564980, 41.302525, 50.534332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395072, 0.236499, 0.887686,
		0.146837, -0.970127, 0.193112,
		0.906839, 0.054052, -0.417996,
		33.837032, 41.318741, 50.408932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589043, 40.908333, 51.214966>,  <33.202244, 41.280903, 50.701530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589043, 40.908333, 51.214966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.821064, 41.128651, 50.974915>,  <33.960278, 41.260841, 50.830883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.821064, 41.128651, 50.974915>,  <33.589043, 40.908333, 51.214966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821064, 41.128651, 50.974915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507450, 0.331979, 0.795163,
		0.637203, -0.765778, -0.086934,
		0.580058, 0.550794, -0.600132,
		33.995083, 41.293888, 50.794876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.762497, 35.657780, 36.239441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150600, 35.733833, 36.299362>,  <36.383465, 35.779465, 36.335316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150600, 35.733833, 36.299362>,  <35.762497, 35.657780, 36.239441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150600, 35.733833, 36.299362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154217, 0.008543, 0.988000,
		0.186574, -0.981721, 0.037611,
		0.970261, 0.190136, 0.149804,
		36.441677, 35.790874, 36.344303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957909, 35.230385, 36.792812>,  <35.762497, 35.657780, 36.239441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957909, 35.230385, 36.792812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208260, 35.542057, 36.779263>,  <36.358471, 35.729061, 36.771133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208260, 35.542057, 36.779263>,  <35.957909, 35.230385, 36.792812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208260, 35.542057, 36.779263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065410, 0.095725, 0.993256,
		0.777172, -0.619443, 0.110879,
		0.625880, 0.779184, -0.033877,
		36.396023, 35.775810, 36.769100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463127, 35.152256, 37.333061>,  <35.957909, 35.230385, 36.792812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463127, 35.152256, 37.333061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461773, 35.538757, 37.230038>,  <36.460960, 35.770660, 37.168224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461773, 35.538757, 37.230038>,  <36.463127, 35.152256, 37.333061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461773, 35.538757, 37.230038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187165, 0.252400, 0.949349,
		0.982323, 0.051419, 0.179995,
		-0.003384, 0.966256, -0.257562,
		36.460758, 35.828632, 37.152771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889507, 35.450588, 37.856327>,  <36.463127, 35.152256, 37.333061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889507, 35.450588, 37.856327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651821, 35.725403, 37.689049>,  <36.509209, 35.890289, 37.588680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651821, 35.725403, 37.689049>,  <36.889507, 35.450588, 37.856327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651821, 35.725403, 37.689049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375413, 0.222923, 0.899650,
		0.711317, 0.691584, 0.125457,
		-0.594217, 0.687034, -0.418198,
		36.473557, 35.931515, 37.563591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082317, 36.051811, 38.243690>,  <36.889507, 35.450588, 37.856327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082317, 36.051811, 38.243690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715973, 36.090031, 38.087704>,  <36.496166, 36.112965, 37.994110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715973, 36.090031, 38.087704>,  <37.082317, 36.051811, 38.243690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715973, 36.090031, 38.087704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263761, 0.589101, 0.763800,
		0.302711, 0.802390, -0.514330,
		-0.915858, 0.095550, -0.389967,
		36.441216, 36.118694, 37.970715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891258, 36.792656, 38.429256>,  <37.082317, 36.051811, 38.243690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891258, 36.792656, 38.429256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570194, 36.568432, 38.347767>,  <36.377556, 36.433895, 38.298874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570194, 36.568432, 38.347767>,  <36.891258, 36.792656, 38.429256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570194, 36.568432, 38.347767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490014, 0.425060, 0.761059,
		-0.340028, 0.710699, -0.615863,
		-0.802662, -0.560563, -0.203721,
		36.329395, 36.400265, 38.286652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278191, 37.228409, 38.533680>,  <36.891258, 36.792656, 38.429256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278191, 37.228409, 38.533680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106190, 36.867298, 38.537514>,  <36.002991, 36.650631, 38.539814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106190, 36.867298, 38.537514>,  <36.278191, 37.228409, 38.533680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106190, 36.867298, 38.537514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685342, 0.333309, 0.647466,
		-0.587711, 0.271844, -0.762034,
		-0.430002, -0.902777, 0.009583,
		35.977188, 36.596466, 38.540390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668736, 37.332096, 38.325871>,  <36.278191, 37.228409, 38.533680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668736, 37.332096, 38.325871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607761, 36.993965, 38.530689>,  <35.571178, 36.791088, 38.653580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607761, 36.993965, 38.530689>,  <35.668736, 37.332096, 38.325871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607761, 36.993965, 38.530689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750315, 0.436198, 0.496749,
		-0.643267, -0.308472, -0.700751,
		-0.152433, -0.845326, 0.512042,
		35.562031, 36.740368, 38.684303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899986, 37.223629, 38.354534>,  <35.668736, 37.332096, 38.325871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899986, 37.223629, 38.354534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088280, 37.026535, 38.647282>,  <35.201256, 36.908279, 38.822929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088280, 37.026535, 38.647282>,  <34.899986, 37.223629, 38.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088280, 37.026535, 38.647282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716887, 0.269922, 0.642818,
		-0.514283, -0.827260, -0.226172,
		0.470729, -0.492731, 0.731868,
		35.229500, 36.878716, 38.866840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361149, 36.854912, 38.672062>,  <34.899986, 37.223629, 38.354534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361149, 36.854912, 38.672062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650085, 36.890156, 38.946423>,  <34.823448, 36.911301, 39.111038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650085, 36.890156, 38.946423>,  <34.361149, 36.854912, 38.672062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650085, 36.890156, 38.946423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691155, 0.058948, 0.720298,
		0.023019, -0.994367, 0.103465,
		0.722340, 0.088091, 0.685905,
		34.866787, 36.916588, 39.152195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208855, 36.402905, 39.237255>,  <34.361149, 36.854912, 38.672062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208855, 36.402905, 39.237255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483276, 36.656082, 39.380760>,  <34.647930, 36.807987, 39.466862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483276, 36.656082, 39.380760>,  <34.208855, 36.402905, 39.237255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483276, 36.656082, 39.380760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572949, 0.166116, 0.802580,
		0.448391, -0.756167, 0.476609,
		0.686057, 0.632943, 0.358760,
		34.689095, 36.845966, 39.488388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408199, 36.189289, 39.996655>,  <34.208855, 36.402905, 39.237255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408199, 36.189289, 39.996655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506748, 36.572777, 39.939861>,  <34.565876, 36.802868, 39.905785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506748, 36.572777, 39.939861>,  <34.408199, 36.189289, 39.996655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506748, 36.572777, 39.939861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500741, 0.251352, 0.828300,
		0.829795, -0.132973, 0.541995,
		0.246373, 0.958718, -0.141986,
		34.580662, 36.860394, 39.897266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751682, 35.641968, 40.526783>,  <34.408199, 36.189289, 39.996655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751682, 35.641968, 40.526783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429493, 35.409210, 40.571693>,  <34.236179, 35.269554, 40.598640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429493, 35.409210, 40.571693>,  <34.751682, 35.641968, 40.526783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429493, 35.409210, 40.571693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177027, -0.417054, -0.891475,
		0.565573, -0.698184, 0.438938,
		-0.805474, -0.581898, 0.112277,
		34.187851, 35.234642, 40.605377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971581, 35.002792, 40.328148>,  <34.751682, 35.641968, 40.526783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971581, 35.002792, 40.328148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571861, 35.006733, 40.313683>,  <34.332031, 35.009098, 40.305004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571861, 35.006733, 40.313683>,  <34.971581, 35.002792, 40.328148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571861, 35.006733, 40.313683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024940, -0.545340, -0.837844,
		-0.027978, -0.838157, 0.544711,
		-0.999297, 0.009856, -0.036161,
		34.272072, 35.009689, 40.302834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916260, 34.445560, 40.111950>,  <34.971581, 35.002792, 40.328148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916260, 34.445560, 40.111950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561882, 34.615715, 40.038029>,  <34.349255, 34.717808, 39.993675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561882, 34.615715, 40.038029>,  <34.916260, 34.445560, 40.111950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561882, 34.615715, 40.038029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101592, -0.566777, -0.817584,
		-0.452532, -0.705557, 0.545347,
		-0.885942, 0.425386, -0.184806,
		34.296101, 34.743332, 39.982586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445480, 33.855358, 39.900188>,  <34.916260, 34.445560, 40.111950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445480, 33.855358, 39.900188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269966, 34.192986, 39.776886>,  <34.164658, 34.395561, 39.702904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269966, 34.192986, 39.776886>,  <34.445480, 33.855358, 39.900188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269966, 34.192986, 39.776886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327452, -0.469648, -0.819882,
		-0.836804, -0.258815, 0.482466,
		-0.438787, 0.844065, -0.308254,
		34.138329, 34.446205, 39.684410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803986, 33.685432, 39.685989>,  <34.445480, 33.855358, 39.900188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803986, 33.685432, 39.685989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909313, 34.021259, 39.495922>,  <33.972511, 34.222755, 39.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909313, 34.021259, 39.495922>,  <33.803986, 33.685432, 39.685989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909313, 34.021259, 39.495922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302983, -0.395659, -0.866981,
		-0.915895, 0.372262, 0.150190,
		0.263320, 0.839568, -0.475171,
		33.988308, 34.273129, 39.353371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217350, 33.833588, 39.323769>,  <33.803986, 33.685432, 39.685989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217350, 33.833588, 39.323769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516582, 34.028477, 39.143551>,  <33.696121, 34.145412, 39.035419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516582, 34.028477, 39.143551>,  <33.217350, 33.833588, 39.323769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516582, 34.028477, 39.143551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353235, -0.282394, -0.891896,
		-0.561785, 0.826356, -0.039147,
		0.748079, 0.487226, -0.450543,
		33.741005, 34.174644, 39.008389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928692, 33.918743, 38.704678>,  <33.217350, 33.833588, 39.323769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928692, 33.918743, 38.704678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311062, 33.997948, 38.617958>,  <33.540485, 34.045471, 38.565926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311062, 33.997948, 38.617958>,  <32.928692, 33.918743, 38.704678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311062, 33.997948, 38.617958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157087, -0.278904, -0.947384,
		-0.248054, 0.939684, -0.235507,
		0.955925, 0.198007, -0.216795,
		33.597839, 34.057350, 38.552921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893562, 34.426666, 38.222202>,  <32.928692, 33.918743, 38.704678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893562, 34.426666, 38.222202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219204, 34.195900, 38.195656>,  <33.414589, 34.057438, 38.179729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219204, 34.195900, 38.195656>,  <32.893562, 34.426666, 38.222202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219204, 34.195900, 38.195656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321219, -0.352151, -0.879095,
		0.483797, 0.736989, -0.472003,
		0.814100, -0.576920, -0.066365,
		33.463432, 34.022823, 38.175747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139084, 34.399696, 37.444252>,  <32.893562, 34.426666, 38.222202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139084, 34.399696, 37.444252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335415, 34.087437, 37.599007>,  <33.453213, 33.900082, 37.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335415, 34.087437, 37.599007>,  <33.139084, 34.399696, 37.444252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335415, 34.087437, 37.599007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214224, -0.538549, -0.814907,
		0.844512, 0.317096, -0.431566,
		0.490823, -0.780650, 0.386882,
		33.482662, 33.853241, 37.715073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548641, 34.143913, 37.021843>,  <33.139084, 34.399696, 37.444252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548641, 34.143913, 37.021843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557297, 33.805840, 37.235458>,  <33.562492, 33.602997, 37.363628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557297, 33.805840, 37.235458>,  <33.548641, 34.143913, 37.021843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557297, 33.805840, 37.235458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123013, -0.532357, -0.837534,
		0.992169, -0.047569, -0.115489,
		0.021641, -0.845182, 0.534040,
		33.563789, 33.552284, 37.395672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031384, 33.701523, 36.745773>,  <33.548641, 34.143913, 37.021843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031384, 33.701523, 36.745773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778343, 33.458683, 36.938122>,  <33.626518, 33.312981, 37.053532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778343, 33.458683, 36.938122>,  <34.031384, 33.701523, 36.745773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778343, 33.458683, 36.938122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125009, -0.532721, -0.837007,
		0.764319, -0.589608, 0.261109,
		-0.632605, -0.607100, 0.480875,
		33.588562, 33.276554, 37.082386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126900, 32.908401, 36.753593>,  <34.031384, 33.701523, 36.745773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126900, 32.908401, 36.753593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732254, 32.973633, 36.753120>,  <33.495468, 33.012772, 36.752838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732254, 32.973633, 36.753120>,  <34.126900, 32.908401, 36.753593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732254, 32.973633, 36.753120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067139, -0.412751, -0.908366,
		-0.148621, -0.896126, 0.418175,
		-0.986612, 0.163078, -0.001178,
		33.436272, 33.022556, 36.752766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931881, 32.725323, 37.056770>,  <34.126900, 32.908401, 36.753593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931881, 32.725323, 37.056770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247242, 32.754890, 36.812492>,  <35.436459, 32.772633, 36.665924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247242, 32.754890, 36.812492>,  <34.931881, 32.725323, 37.056770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247242, 32.754890, 36.812492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600878, -0.305190, 0.738786,
		-0.131769, -0.949418, -0.285029,
		0.788405, 0.073919, -0.610699,
		35.483765, 32.777065, 36.629284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479584, 32.624168, 37.523907>,  <34.931881, 32.725323, 37.056770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479584, 32.624168, 37.523907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655243, 32.630329, 37.164593>,  <35.760639, 32.634026, 36.949005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655243, 32.630329, 37.164593>,  <35.479584, 32.624168, 37.523907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655243, 32.630329, 37.164593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883176, -0.190765, 0.428495,
		-0.164759, -0.981515, -0.097383,
		0.439152, 0.015408, -0.898281,
		35.786987, 32.634953, 36.895107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087524, 32.212223, 37.517117>,  <35.479584, 32.624168, 37.523907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087524, 32.212223, 37.517117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184975, 32.459396, 37.218105>,  <36.243446, 32.607700, 37.038700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184975, 32.459396, 37.218105>,  <36.087524, 32.212223, 37.517117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184975, 32.459396, 37.218105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885344, 0.173001, 0.431551,
		0.395995, -0.766958, -0.504939,
		0.243626, 0.617937, -0.747529,
		36.258064, 32.644779, 36.993847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660404, 31.964334, 37.208614>,  <36.087524, 32.212223, 37.517117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660404, 31.964334, 37.208614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630390, 32.361851, 37.175755>,  <36.612381, 32.600361, 37.156036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630390, 32.361851, 37.175755>,  <36.660404, 31.964334, 37.208614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630390, 32.361851, 37.175755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825612, 0.108118, 0.553783,
		0.559227, -0.026273, -0.828598,
		-0.075037, 0.993791, -0.082154,
		36.607880, 32.659988, 37.151108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364254, 32.213383, 37.201969>,  <36.660404, 31.964334, 37.208614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364254, 32.213383, 37.201969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654121, 32.488583, 37.217506>,  <37.828041, 32.653702, 37.226830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654121, 32.488583, 37.217506>,  <37.364254, 32.213383, 37.201969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654121, 32.488583, 37.217506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248107, 0.207920, 0.946156,
		0.642879, -0.695289, 0.321371,
		0.724672, 0.687998, 0.038839,
		37.871525, 32.694981, 37.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676422, 32.195953, 37.883869>,  <37.364254, 32.213383, 37.201969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676422, 32.195953, 37.883869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768581, 32.556381, 37.736908>,  <37.823879, 32.772640, 37.648731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768581, 32.556381, 37.736908>,  <37.676422, 32.195953, 37.883869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768581, 32.556381, 37.736908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210448, 0.414765, 0.885258,
		0.950067, -0.126645, 0.285191,
		0.230401, 0.901072, -0.367402,
		37.837700, 32.826702, 37.626686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201710, 32.422428, 38.251369>,  <37.676422, 32.195953, 37.883869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201710, 32.422428, 38.251369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029205, 32.748787, 38.097317>,  <37.925701, 32.944603, 38.004887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029205, 32.748787, 38.097317>,  <38.201710, 32.422428, 38.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029205, 32.748787, 38.097317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237391, 0.309210, 0.920888,
		0.870436, 0.488569, 0.060337,
		-0.431261, 0.815898, -0.385130,
		37.899826, 32.993557, 37.981777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425934, 32.965481, 38.641983>,  <38.201710, 32.422428, 38.251369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425934, 32.965481, 38.641983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087532, 33.095623, 38.473026>,  <37.884491, 33.173706, 38.371651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087532, 33.095623, 38.473026>,  <38.425934, 32.965481, 38.641983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087532, 33.095623, 38.473026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205852, 0.531482, 0.821676,
		0.491831, 0.782094, -0.382663,
		-0.846006, 0.325354, -0.422396,
		37.833729, 33.193230, 38.346306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454041, 33.800346, 38.671539>,  <38.425934, 32.965481, 38.641983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454041, 33.800346, 38.671539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078747, 33.663990, 38.647827>,  <37.853573, 33.582176, 38.633602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078747, 33.663990, 38.647827>,  <38.454041, 33.800346, 38.671539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078747, 33.663990, 38.647827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243840, 0.529869, 0.812269,
		-0.245490, 0.776550, -0.580263,
		-0.938231, -0.340895, -0.059276,
		37.797279, 33.561722, 38.630043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000862, 34.381161, 38.858341>,  <38.454041, 33.800346, 38.671539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000862, 34.381161, 38.858341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746990, 34.072281, 38.870213>,  <37.594666, 33.886951, 38.877335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746990, 34.072281, 38.870213>,  <38.000862, 34.381161, 38.858341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746990, 34.072281, 38.870213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455170, 0.404591, 0.793175,
		-0.624499, 0.489907, -0.608271,
		-0.634682, -0.772203, 0.029676,
		37.556587, 33.840618, 38.879116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377579, 34.651058, 38.804276>,  <38.000862, 34.381161, 38.858341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377579, 34.651058, 38.804276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320789, 34.295528, 38.978554>,  <37.286716, 34.082211, 39.083118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320789, 34.295528, 38.978554>,  <37.377579, 34.651058, 38.804276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320789, 34.295528, 38.978554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450874, 0.449906, 0.770907,
		-0.881225, -0.086996, -0.464623,
		-0.141971, -0.888828, 0.435693,
		37.278198, 34.028881, 39.109261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797089, 34.775883, 39.180195>,  <37.377579, 34.651058, 38.804276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797089, 34.775883, 39.180195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917389, 34.434624, 39.350693>,  <36.989571, 34.229866, 39.452991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917389, 34.434624, 39.350693>,  <36.797089, 34.775883, 39.180195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917389, 34.434624, 39.350693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247618, 0.361754, 0.898788,
		-0.920996, -0.375857, -0.102458,
		0.300751, -0.853150, 0.426243,
		37.007614, 34.178680, 39.478565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132515, 34.523693, 39.547157>,  <36.797089, 34.775883, 39.180195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132515, 34.523693, 39.547157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459232, 34.356560, 39.706287>,  <36.655262, 34.256279, 39.801765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459232, 34.356560, 39.706287>,  <36.132515, 34.523693, 39.547157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459232, 34.356560, 39.706287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382532, 0.123953, 0.915590,
		-0.431879, -0.900026, -0.058593,
		0.816792, -0.417838, 0.397821,
		36.704269, 34.231209, 39.825634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885773, 34.157860, 40.036049>,  <36.132515, 34.523693, 39.547157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885773, 34.157860, 40.036049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266415, 34.192715, 40.153927>,  <36.494801, 34.213627, 40.224655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266415, 34.192715, 40.153927>,  <35.885773, 34.157860, 40.036049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266415, 34.192715, 40.153927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305701, 0.170425, 0.936751,
		0.031403, -0.981510, 0.188816,
		0.951610, 0.087138, 0.294697,
		36.551899, 34.218857, 40.242336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831253, 33.996399, 40.787426>,  <35.885773, 34.157860, 40.036049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831253, 33.996399, 40.787426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181965, 34.182339, 40.738152>,  <36.392391, 34.293903, 40.708588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181965, 34.182339, 40.738152>,  <35.831253, 33.996399, 40.787426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181965, 34.182339, 40.738152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023836, 0.297861, 0.954311,
		0.480303, -0.833784, 0.272238,
		0.876778, 0.464848, -0.123189,
		36.445000, 34.321793, 40.701195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046673, 33.816364, 41.342735>,  <35.831253, 33.996399, 40.787426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046673, 33.816364, 41.342735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308552, 34.101814, 41.243050>,  <36.465679, 34.273087, 41.183239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308552, 34.101814, 41.243050>,  <36.046673, 33.816364, 41.342735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308552, 34.101814, 41.243050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148444, 0.201898, 0.968092,
		0.741176, -0.670798, 0.026247,
		0.654693, 0.713629, -0.249218,
		36.504959, 34.315903, 41.168285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535645, 33.838223, 41.865105>,  <36.046673, 33.816364, 41.342735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535645, 33.838223, 41.865105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580162, 34.193192, 41.686176>,  <36.606873, 34.406174, 41.578819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580162, 34.193192, 41.686176>,  <36.535645, 33.838223, 41.865105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580162, 34.193192, 41.686176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037695, 0.446024, 0.894227,
		0.993072, -0.116383, 0.016188,
		0.111293, 0.887422, -0.447321,
		36.613548, 34.459419, 41.551979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122410, 34.179989, 42.210381>,  <36.535645, 33.838223, 41.865105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122410, 34.179989, 42.210381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882710, 34.444202, 42.029449>,  <36.738892, 34.602730, 41.920891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882710, 34.444202, 42.029449>,  <37.122410, 34.179989, 42.210381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882710, 34.444202, 42.029449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093103, 0.503673, 0.858863,
		0.795132, 0.556783, -0.240327,
		-0.599247, 0.660534, -0.452325,
		36.702934, 34.642365, 41.893753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431030, 34.828312, 42.285110>,  <37.122410, 34.179989, 42.210381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431030, 34.828312, 42.285110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041050, 34.906361, 42.242409>,  <36.807060, 34.953190, 42.216789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041050, 34.906361, 42.242409>,  <37.431030, 34.828312, 42.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041050, 34.906361, 42.242409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004035, 0.495391, 0.868660,
		0.222382, 0.846471, -0.483770,
		-0.974951, 0.195126, -0.106750,
		36.748566, 34.964897, 42.210384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447453, 35.493557, 42.542053>,  <37.431030, 34.828312, 42.285110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447453, 35.493557, 42.542053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058815, 35.400738, 42.523499>,  <36.825630, 35.345047, 42.512367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058815, 35.400738, 42.523499>,  <37.447453, 35.493557, 42.542053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058815, 35.400738, 42.523499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153459, 0.468652, 0.869951,
		-0.180129, 0.852362, -0.490951,
		-0.971599, -0.232045, -0.046384,
		36.767334, 35.331123, 42.509583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176964, 36.126289, 42.611122>,  <37.447453, 35.493557, 42.542053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176964, 36.126289, 42.611122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896549, 35.855721, 42.701447>,  <36.728298, 35.693378, 42.755642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896549, 35.855721, 42.701447>,  <37.176964, 36.126289, 42.611122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896549, 35.855721, 42.701447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213863, 0.501503, 0.838306,
		-0.680298, 0.539393, -0.496236,
		-0.701040, -0.676425, 0.225815,
		36.686237, 35.652794, 42.769192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604439, 36.571445, 42.891785>,  <37.176964, 36.126289, 42.611122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604439, 36.571445, 42.891785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530827, 36.196148, 43.008968>,  <36.486660, 35.970970, 43.079277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530827, 36.196148, 43.008968>,  <36.604439, 36.571445, 42.891785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530827, 36.196148, 43.008968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201489, 0.327726, 0.923037,
		-0.962047, 0.110841, -0.249359,
		-0.184032, -0.938248, 0.292955,
		36.475616, 35.914673, 43.096855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045223, 36.618317, 43.331482>,  <36.604439, 36.571445, 42.891785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045223, 36.618317, 43.331482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204742, 36.264927, 43.429817>,  <36.300453, 36.052895, 43.488819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204742, 36.264927, 43.429817>,  <36.045223, 36.618317, 43.331482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204742, 36.264927, 43.429817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244889, 0.155747, 0.956960,
		-0.883736, -0.441838, -0.154240,
		0.398799, -0.883471, 0.245841,
		36.324383, 35.999886, 43.503571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593735, 36.109295, 43.578480>,  <36.045223, 36.618317, 43.331482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593735, 36.109295, 43.578480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947491, 36.028728, 43.746895>,  <36.159744, 35.980389, 43.847946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947491, 36.028728, 43.746895>,  <35.593735, 36.109295, 43.578480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947491, 36.028728, 43.746895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390242, 0.175759, 0.903781,
		-0.256042, -0.963607, 0.076837,
		0.884395, -0.201421, 0.421042,
		36.212811, 35.968304, 43.873207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441814, 36.089088, 44.228683>,  <35.593735, 36.109295, 43.578480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441814, 36.089088, 44.228683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838341, 36.100552, 44.280018>,  <36.076256, 36.107430, 44.310818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838341, 36.100552, 44.280018>,  <35.441814, 36.089088, 44.228683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838341, 36.100552, 44.280018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131293, 0.270666, 0.953678,
		-0.007404, -0.962247, 0.272078,
		0.991316, 0.028661, 0.128340,
		36.135735, 36.109150, 44.318520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493259, 35.748505, 44.877602>,  <35.441814, 36.089088, 44.228683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493259, 35.748505, 44.877602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838394, 35.935127, 44.799782>,  <36.045475, 36.047100, 44.753090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838394, 35.935127, 44.799782>,  <35.493259, 35.748505, 44.877602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838394, 35.935127, 44.799782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092543, 0.232566, 0.968168,
		0.496947, -0.853370, 0.157489,
		0.862832, 0.466553, -0.194546,
		36.097244, 36.075092, 44.741417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862041, 35.512707, 45.397385>,  <35.493259, 35.748505, 44.877602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862041, 35.512707, 45.397385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118271, 35.801838, 45.293705>,  <36.272011, 35.975315, 45.231499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118271, 35.801838, 45.293705>,  <35.862041, 35.512707, 45.397385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118271, 35.801838, 45.293705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240042, 0.132141, 0.961727,
		0.729413, -0.678277, -0.088862,
		0.640575, 0.722827, -0.259200,
		36.310444, 36.018684, 45.215946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424934, 35.425377, 45.900188>,  <35.862041, 35.512707, 45.397385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424934, 35.425377, 45.900188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456303, 35.793213, 45.746197>,  <36.475124, 36.013912, 45.653801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456303, 35.793213, 45.746197>,  <36.424934, 35.425377, 45.900188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456303, 35.793213, 45.746197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324148, 0.341664, 0.882153,
		0.942750, -0.193973, -0.271288,
		0.078425, 0.919587, -0.384979,
		36.479832, 36.069088, 45.630703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051758, 35.680065, 46.179958>,  <36.424934, 35.425377, 45.900188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051758, 35.680065, 46.179958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804710, 35.972839, 46.064842>,  <36.656483, 36.148502, 45.995773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804710, 35.972839, 46.064842>,  <37.051758, 35.680065, 46.179958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804710, 35.972839, 46.064842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004757, 0.369391, 0.929262,
		0.786466, 0.572557, -0.231623,
		-0.617615, 0.731935, -0.287790,
		36.619427, 36.192421, 45.978504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325615, 36.251328, 46.588417>,  <37.051758, 35.680065, 46.179958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325615, 36.251328, 46.588417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948689, 36.321407, 46.474339>,  <36.722530, 36.363457, 46.405891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948689, 36.321407, 46.474339>,  <37.325615, 36.251328, 46.588417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948689, 36.321407, 46.474339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202915, 0.378604, 0.903042,
		0.266190, 0.908826, -0.321215,
		-0.942321, 0.175202, -0.285195,
		36.665993, 36.373966, 46.388779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533508, 36.984512, 46.448135>,  <37.325615, 36.251328, 46.588417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533508, 36.984512, 46.448135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895985, 37.139927, 46.514900>,  <38.113468, 37.233177, 46.554958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895985, 37.139927, 46.514900>,  <37.533508, 36.984512, 46.448135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895985, 37.139927, 46.514900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324855, -0.386911, -0.863000,
		-0.270727, 0.836264, -0.476833,
		0.906188, 0.388539, 0.166917,
		38.167843, 37.256489, 46.564976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794594, 37.337963, 45.809860>,  <37.533508, 36.984512, 46.448135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794594, 37.337963, 45.809860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114021, 37.268818, 46.040478>,  <38.305676, 37.227329, 46.178848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114021, 37.268818, 46.040478>,  <37.794594, 37.337963, 45.809860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114021, 37.268818, 46.040478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511484, -0.310045, -0.801409,
		0.317293, 0.934874, -0.159173,
		0.798567, -0.172867, 0.576548,
		38.353592, 37.216957, 46.213444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371857, 37.596123, 45.493950>,  <37.794594, 37.337963, 45.809860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371857, 37.596123, 45.493950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503345, 37.302929, 45.732170>,  <38.582237, 37.127014, 45.875103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503345, 37.302929, 45.732170>,  <38.371857, 37.596123, 45.493950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503345, 37.302929, 45.732170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402378, -0.461797, -0.790465,
		0.854422, 0.499475, 0.143137,
		0.328717, -0.732986, 0.595547,
		38.601959, 37.083035, 45.910835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027187, 37.604946, 45.356060>,  <38.371857, 37.596123, 45.493950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027187, 37.604946, 45.356060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947819, 37.252548, 45.527866>,  <38.900200, 37.041111, 45.630951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947819, 37.252548, 45.527866>,  <39.027187, 37.604946, 45.356060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947819, 37.252548, 45.527866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434528, -0.471878, -0.767149,
		0.878530, 0.034419, 0.476445,
		-0.198420, -0.880992, 0.429514,
		38.888294, 36.988251, 45.656719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520512, 37.140766, 45.199314>,  <39.027187, 37.604946, 45.356060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520512, 37.140766, 45.199314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288994, 36.833515, 45.308838>,  <39.150082, 36.649166, 45.374554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288994, 36.833515, 45.308838>,  <39.520512, 37.140766, 45.199314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288994, 36.833515, 45.308838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384017, -0.552949, -0.739445,
		0.719392, -0.322840, 0.615020,
		-0.578797, -0.768129, 0.273811,
		39.115356, 36.603077, 45.390980>
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
