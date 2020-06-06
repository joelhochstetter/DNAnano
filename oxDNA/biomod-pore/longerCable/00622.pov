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
	<24.459984, 35.167683, 35.389572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197304, 34.962254, 35.168671>,  <24.039696, 34.838997, 35.036129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197304, 34.962254, 35.168671>,  <24.459984, 35.167683, 35.389572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197304, 34.962254, 35.168671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662249, 0.743044, 0.096496,
		0.360788, 0.429097, -0.828075,
		-0.656702, -0.513577, -0.552251,
		24.000294, 34.808182, 35.002995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000147, 35.623978, 35.520962>,  <24.459984, 35.167683, 35.389572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000147, 35.623978, 35.520962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311071, 35.572746, 35.767338>,  <25.497625, 35.542007, 35.915165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311071, 35.572746, 35.767338>,  <25.000147, 35.623978, 35.520962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311071, 35.572746, 35.767338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487847, 0.740899, -0.461599,
		-0.397231, 0.659292, 0.638390,
		0.777311, -0.128075, 0.615942,
		25.544264, 35.534325, 35.952122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403187, 36.250343, 35.854183>,  <25.000147, 35.623978, 35.520962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403187, 36.250343, 35.854183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702194, 35.984699, 35.848972>,  <25.881599, 35.825314, 35.845848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702194, 35.984699, 35.848972>,  <25.403187, 36.250343, 35.854183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702194, 35.984699, 35.848972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621078, 0.705764, -0.340822,
		0.235536, 0.246682, 0.940038,
		0.747519, -0.664113, -0.013024,
		25.926451, 35.785465, 35.845066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987965, 36.604408, 36.107117>,  <25.403187, 36.250343, 35.854183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987965, 36.604408, 36.107117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085003, 36.314598, 35.849060>,  <26.143225, 36.140713, 35.694225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085003, 36.314598, 35.849060>,  <25.987965, 36.604408, 36.107117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085003, 36.314598, 35.849060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705306, 0.588324, -0.395498,
		0.666102, -0.359079, 0.653736,
		0.242594, -0.724526, -0.645144,
		26.157782, 36.097240, 35.655518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962309, 36.996960, 36.771252>,  <25.987965, 36.604408, 36.107117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962309, 36.996960, 36.771252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962374, 37.126087, 37.149837>,  <25.962412, 37.203564, 37.376987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962374, 37.126087, 37.149837>,  <25.962309, 36.996960, 36.771252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962374, 37.126087, 37.149837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771308, -0.602426, 0.205346,
		0.636462, 0.729979, -0.249092,
		0.000161, 0.322821, 0.946460,
		25.962421, 37.222935, 37.433777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619400, 36.720009, 37.027580>,  <25.962309, 36.996960, 36.771252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619400, 36.720009, 37.027580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482580, 36.916470, 37.348022>,  <26.400488, 37.034344, 37.540287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482580, 36.916470, 37.348022>,  <26.619400, 36.720009, 37.027580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482580, 36.916470, 37.348022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678599, -0.460612, 0.572136,
		0.650004, 0.739330, -0.175742,
		-0.342049, 0.491149, 0.801109,
		26.379965, 37.063816, 37.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161615, 37.009857, 37.475494>,  <26.619400, 36.720009, 37.027580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161615, 37.009857, 37.475494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837225, 36.957539, 37.703602>,  <26.642591, 36.926147, 37.840466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837225, 36.957539, 37.703602>,  <27.161615, 37.009857, 37.475494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837225, 36.957539, 37.703602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585015, -0.195898, 0.787008,
		0.008776, 0.971862, 0.235388,
		-0.810975, -0.130798, 0.570273,
		26.593933, 36.918301, 37.874683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076683, 37.513390, 38.164875>,  <27.161615, 37.009857, 37.475494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076683, 37.513390, 38.164875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936268, 37.139622, 38.188969>,  <26.852018, 36.915359, 38.203426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936268, 37.139622, 38.188969>,  <27.076683, 37.513390, 38.164875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936268, 37.139622, 38.188969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609717, -0.179283, 0.772077,
		-0.710647, 0.307754, 0.632668,
		-0.351036, -0.934422, 0.060236,
		26.830957, 36.859295, 38.207039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867262, 37.339584, 37.791122>,  <27.076683, 37.513390, 38.164875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867262, 37.339584, 37.791122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847784, 37.291721, 38.187771>,  <27.836098, 37.263004, 38.425758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847784, 37.291721, 38.187771>,  <27.867262, 37.339584, 37.791122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847784, 37.291721, 38.187771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447930, -0.884749, -0.128755,
		0.892741, -0.450447, -0.010515,
		-0.048694, -0.119655, 0.991621,
		27.833176, 37.255825, 38.485256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887917, 36.664650, 38.081028>,  <27.867262, 37.339584, 37.791122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887917, 36.664650, 38.081028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720057, 36.865040, 38.383797>,  <27.619341, 36.985271, 38.565456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720057, 36.865040, 38.383797>,  <27.887917, 36.664650, 38.081028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720057, 36.865040, 38.383797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757094, -0.653185, 0.012569,
		0.500703, -0.567783, 0.653390,
		-0.419648, 0.500971, 0.756917,
		27.594162, 37.015331, 38.610870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525696, 36.289566, 38.594818>,  <27.887917, 36.664650, 38.081028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525696, 36.289566, 38.594818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347437, 36.636093, 38.685051>,  <27.240482, 36.844009, 38.739189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347437, 36.636093, 38.685051>,  <27.525696, 36.289566, 38.594818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347437, 36.636093, 38.685051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820599, -0.496035, 0.283843,
		0.357795, -0.058616, 0.931959,
		-0.445646, 0.866321, 0.225579,
		27.213743, 36.895988, 38.752724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192442, 36.236340, 39.306168>,  <27.525696, 36.289566, 38.594818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192442, 36.236340, 39.306168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963770, 36.483234, 39.089947>,  <26.826567, 36.631371, 38.960213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963770, 36.483234, 39.089947>,  <27.192442, 36.236340, 39.306168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963770, 36.483234, 39.089947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807174, -0.541252, 0.235620,
		-0.147142, 0.571019, 0.807642,
		-0.571682, 0.617238, -0.540552,
		26.792265, 36.668407, 38.927780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517523, 36.822903, 39.645908>,  <27.192442, 36.236340, 39.306168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517523, 36.822903, 39.645908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715240, 36.477364, 39.607029>,  <27.833870, 36.270042, 39.583702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715240, 36.477364, 39.607029>,  <27.517523, 36.822903, 39.645908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715240, 36.477364, 39.607029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861819, 0.501601, -0.075256,
		0.113765, -0.046569, 0.992416,
		0.494292, -0.863844, -0.097199,
		27.863527, 36.218208, 39.577869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144817, 36.818115, 40.105900>,  <27.517523, 36.822903, 39.645908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144817, 36.818115, 40.105900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191822, 36.570011, 39.795681>,  <28.220024, 36.421150, 39.609550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191822, 36.570011, 39.795681>,  <28.144817, 36.818115, 40.105900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191822, 36.570011, 39.795681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954871, 0.285091, -0.083327,
		0.272785, -0.730753, 0.625771,
		0.117510, -0.620261, -0.775543,
		28.227076, 36.383934, 39.563019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854177, 36.444485, 40.178886>,  <28.144817, 36.818115, 40.105900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854177, 36.444485, 40.178886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721872, 36.512264, 39.807537>,  <28.642488, 36.552933, 39.584728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721872, 36.512264, 39.807537>,  <28.854177, 36.444485, 40.178886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721872, 36.512264, 39.807537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893323, 0.373378, -0.250126,
		0.304253, -0.912073, -0.274870,
		-0.330764, 0.169446, -0.928377,
		28.622643, 36.563099, 39.529022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334538, 36.104958, 39.651714>,  <28.854177, 36.444485, 40.178886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334538, 36.104958, 39.651714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160002, 36.449051, 39.546185>,  <29.055281, 36.655506, 39.482868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160002, 36.449051, 39.546185>,  <29.334538, 36.104958, 39.651714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160002, 36.449051, 39.546185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895772, 0.387642, -0.217549,
		-0.084874, -0.331250, -0.939718,
		-0.436337, 0.860237, -0.263824,
		29.029100, 36.707123, 39.467037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771204, 36.723064, 39.744804>,  <29.334538, 36.104958, 39.651714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771204, 36.723064, 39.744804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903543, 37.039028, 39.951332>,  <29.982948, 37.228607, 40.075249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903543, 37.039028, 39.951332>,  <29.771204, 36.723064, 39.744804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903543, 37.039028, 39.951332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850660, -0.486510, 0.199209,
		0.408552, 0.373304, -0.832904,
		0.330851, 0.789906, 0.516320,
		30.002798, 37.276001, 40.106228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525528, 36.876480, 40.027596>,  <29.771204, 36.723064, 39.744804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525528, 36.876480, 40.027596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840282, 36.713627, 40.213089>,  <31.029135, 36.615917, 40.324387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840282, 36.713627, 40.213089>,  <30.525528, 36.876480, 40.027596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840282, 36.713627, 40.213089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616794, -0.542435, 0.570376,
		0.019330, -0.734853, -0.677951,
		0.786887, -0.407131, 0.463738,
		31.076349, 36.591488, 40.352211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893339, 37.526333, 40.393677>,  <30.525528, 36.876480, 40.027596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893339, 37.526333, 40.393677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563898, 37.598072, 40.608902>,  <30.366234, 37.641113, 40.738037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563898, 37.598072, 40.608902>,  <30.893339, 37.526333, 40.393677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563898, 37.598072, 40.608902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079971, 0.975932, -0.202884,
		-0.561504, -0.124066, -0.818120,
		-0.823601, 0.179346, 0.538068,
		30.316818, 37.651875, 40.770321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883028, 38.253601, 40.282967>,  <30.893339, 37.526333, 40.393677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883028, 38.253601, 40.282967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698111, 38.144115, 40.620338>,  <30.587160, 38.078426, 40.822762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698111, 38.144115, 40.620338>,  <30.883028, 38.253601, 40.282967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698111, 38.144115, 40.620338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611749, 0.787006, -0.079906,
		-0.641911, -0.552905, -0.531269,
		-0.462292, -0.273711, 0.843426,
		30.559423, 38.062000, 40.873367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488718, 38.350964, 39.922577>,  <30.883028, 38.253601, 40.282967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488718, 38.350964, 39.922577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271584, 38.664646, 39.802345>,  <31.141302, 38.852856, 39.730206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271584, 38.664646, 39.802345>,  <31.488718, 38.350964, 39.922577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271584, 38.664646, 39.802345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728408, 0.261477, -0.633286,
		-0.418033, -0.562716, -0.713162,
		-0.542836, 0.784207, -0.300581,
		31.108732, 38.899910, 39.712170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387280, 38.358658, 39.168877>,  <31.488718, 38.350964, 39.922577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387280, 38.358658, 39.168877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411539, 38.724148, 39.329594>,  <31.426094, 38.943439, 39.426025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411539, 38.724148, 39.329594>,  <31.387280, 38.358658, 39.168877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411539, 38.724148, 39.329594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787134, 0.203746, -0.582157,
		-0.613793, 0.351571, -0.706864,
		0.060649, 0.913720, 0.401792,
		31.429733, 38.998264, 39.450130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318844, 38.912521, 38.609787>,  <31.387280, 38.358658, 39.168877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318844, 38.912521, 38.609787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516315, 39.089840, 38.909058>,  <31.634798, 39.196232, 39.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516315, 39.089840, 38.909058>,  <31.318844, 38.912521, 38.609787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516315, 39.089840, 38.909058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744009, 0.230135, -0.627286,
		-0.450255, 0.866329, -0.216204,
		0.493680, 0.443297, 0.748176,
		31.664419, 39.222828, 39.133511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442369, 39.804279, 38.623089>,  <31.318844, 38.912521, 38.609787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442369, 39.804279, 38.623089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747503, 39.603142, 38.785683>,  <31.930584, 39.482460, 38.883240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747503, 39.603142, 38.785683>,  <31.442369, 39.804279, 38.623089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747503, 39.603142, 38.785683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632970, 0.452381, -0.628252,
		0.132022, 0.736549, 0.663375,
		0.762836, -0.502840, 0.406489,
		31.976355, 39.452290, 38.907631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999166, 40.318371, 38.892830>,  <31.442369, 39.804279, 38.623089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999166, 40.318371, 38.892830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144272, 39.970604, 38.758652>,  <32.231335, 39.761944, 38.678146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144272, 39.970604, 38.758652>,  <31.999166, 40.318371, 38.892830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144272, 39.970604, 38.758652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415431, 0.473092, -0.776918,
		0.834158, 0.142485, 0.532802,
		0.362764, -0.869415, -0.335441,
		32.253101, 39.709778, 38.658020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472610, 40.120972, 39.388733>,  <31.999166, 40.318371, 38.892830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472610, 40.120972, 39.388733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789856, 40.205322, 39.617290>,  <32.980206, 40.255932, 39.754425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789856, 40.205322, 39.617290>,  <32.472610, 40.120972, 39.388733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789856, 40.205322, 39.617290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595540, 0.465143, 0.654962,
		-0.127665, -0.859751, 0.494499,
		0.793117, 0.210878, 0.571398,
		33.027790, 40.268585, 39.788712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338150, 40.047211, 40.117088>,  <32.472610, 40.120972, 39.388733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338150, 40.047211, 40.117088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650921, 40.296116, 40.131912>,  <32.838585, 40.445457, 40.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650921, 40.296116, 40.131912>,  <32.338150, 40.047211, 40.117088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650921, 40.296116, 40.131912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419734, 0.481624, 0.769326,
		0.460872, -0.617117, 0.637781,
		0.781934, 0.622259, 0.037058,
		32.885502, 40.482796, 40.143028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460159, 40.081409, 40.742851>,  <32.338150, 40.047211, 40.117088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460159, 40.081409, 40.742851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626598, 40.399796, 40.566982>,  <32.726460, 40.590828, 40.461460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626598, 40.399796, 40.566982>,  <32.460159, 40.081409, 40.742851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626598, 40.399796, 40.566982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199221, 0.551562, 0.809994,
		0.887230, -0.249442, 0.388074,
		0.416094, 0.795964, -0.439668,
		32.751427, 40.638584, 40.435081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885975, 40.426460, 41.169838>,  <32.460159, 40.081409, 40.742851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885975, 40.426460, 41.169838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646481, 40.678215, 40.971691>,  <32.502785, 40.829266, 40.852802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646481, 40.678215, 40.971691>,  <32.885975, 40.426460, 41.169838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646481, 40.678215, 40.971691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259767, 0.432456, 0.863425,
		0.757650, 0.645646, -0.095435,
		-0.598738, 0.629383, -0.495368,
		32.466858, 40.867031, 40.823082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102837, 41.084190, 41.250252>,  <32.885975, 40.426460, 41.169838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102837, 41.084190, 41.250252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711163, 41.122169, 41.178493>,  <32.476158, 41.144958, 41.135437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711163, 41.122169, 41.178493>,  <33.102837, 41.084190, 41.250252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711163, 41.122169, 41.178493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095732, 0.563331, 0.820667,
		0.178984, 0.820757, -0.542515,
		-0.979183, 0.094950, -0.179399,
		32.417408, 41.150654, 41.124672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992828, 41.718235, 41.500141>,  <33.102837, 41.084190, 41.250252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992828, 41.718235, 41.500141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620922, 41.571198, 41.508263>,  <32.397778, 41.482975, 41.513134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620922, 41.571198, 41.508263>,  <32.992828, 41.718235, 41.500141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620922, 41.571198, 41.508263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171092, 0.480250, 0.860283,
		-0.325988, 0.796387, -0.509412,
		-0.929763, -0.367598, 0.020300,
		32.341991, 41.460918, 41.514351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148430, 41.919971, 42.262356>,  <32.992828, 41.718235, 41.500141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148430, 41.919971, 42.262356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530647, 41.803928, 42.241302>,  <33.759979, 41.734303, 42.228668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530647, 41.803928, 42.241302>,  <33.148430, 41.919971, 42.262356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530647, 41.803928, 42.241302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264986, 0.923257, -0.278170,
		0.129297, 0.251857, 0.959089,
		0.955544, -0.290112, -0.052635,
		33.817310, 41.716896, 42.225513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524540, 42.510761, 42.436478>,  <33.148430, 41.919971, 42.262356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524540, 42.510761, 42.436478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787712, 42.262539, 42.265820>,  <33.945618, 42.113605, 42.163425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787712, 42.262539, 42.265820>,  <33.524540, 42.510761, 42.436478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787712, 42.262539, 42.265820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536894, 0.783800, -0.312094,
		0.528079, -0.023727, 0.848864,
		0.657934, -0.620560, -0.426647,
		33.985092, 42.076370, 42.137825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299847, 42.767658, 42.529491>,  <33.524540, 42.510761, 42.436478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299847, 42.767658, 42.529491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350533, 42.477543, 42.258820>,  <34.380943, 42.303474, 42.096416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350533, 42.477543, 42.258820>,  <34.299847, 42.767658, 42.529491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350533, 42.477543, 42.258820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761250, 0.508468, -0.402440,
		0.635957, -0.464128, 0.616558,
		0.126716, -0.725289, -0.676682,
		34.388546, 42.259956, 42.055817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014858, 42.538033, 42.632862>,  <34.299847, 42.767658, 42.529491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014858, 42.538033, 42.632862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849087, 42.480442, 42.273415>,  <34.749626, 42.445889, 42.057747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849087, 42.480442, 42.273415>,  <35.014858, 42.538033, 42.632862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849087, 42.480442, 42.273415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726731, 0.542016, -0.421996,
		0.547825, -0.827943, -0.119994,
		-0.414427, -0.143976, -0.898621,
		34.724758, 42.437248, 42.003826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055882, 42.003841, 43.122353>,  <35.014858, 42.538033, 42.632862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055882, 42.003841, 43.122353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780952, 42.115368, 42.854069>,  <34.615993, 42.182285, 42.693100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780952, 42.115368, 42.854069>,  <35.055882, 42.003841, 43.122353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780952, 42.115368, 42.854069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423394, -0.904084, 0.058048,
		-0.590192, 0.323872, 0.739446,
		-0.687321, 0.278817, -0.670709,
		34.574757, 42.199013, 42.652855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621353, 41.415058, 43.201298>,  <35.055882, 42.003841, 43.122353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621353, 41.415058, 43.201298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445709, 41.613564, 42.901722>,  <34.340324, 41.732666, 42.721977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445709, 41.613564, 42.901722>,  <34.621353, 41.415058, 43.201298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445709, 41.613564, 42.901722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418978, -0.850520, -0.317921,
		-0.794758, 0.174185, 0.581394,
		-0.439110, 0.496262, -0.748937,
		34.313976, 41.762444, 42.677040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945583, 40.797073, 43.552593>,  <34.621353, 41.415058, 43.201298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945583, 40.797073, 43.552593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307083, 40.785683, 43.381748>,  <35.523983, 40.778847, 43.279240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307083, 40.785683, 43.381748>,  <34.945583, 40.797073, 43.552593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307083, 40.785683, 43.381748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421966, -0.108501, 0.900096,
		-0.071974, -0.993688, -0.086042,
		0.903750, -0.028477, -0.427112,
		35.578209, 40.777138, 43.253616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237209, 39.995789, 43.571445>,  <34.945583, 40.797073, 43.552593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237209, 39.995789, 43.571445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505421, 40.292542, 43.571495>,  <35.666348, 40.470592, 43.571526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505421, 40.292542, 43.571495>,  <35.237209, 39.995789, 43.571445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505421, 40.292542, 43.571495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474246, -0.428763, 0.768930,
		0.570512, -0.515527, -0.639333,
		0.670527, 0.741885, 0.000128,
		35.706577, 40.515106, 43.571533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483566, 40.554043, 44.009079>,  <35.237209, 39.995789, 43.571445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483566, 40.554043, 44.009079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750317, 40.279305, 44.124680>,  <35.910366, 40.114460, 44.194042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750317, 40.279305, 44.124680>,  <35.483566, 40.554043, 44.009079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750317, 40.279305, 44.124680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558977, 0.204615, -0.803541,
		0.492774, 0.697407, 0.520383,
		0.666873, -0.686846, 0.289006,
		35.950378, 40.073250, 44.211380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239491, 40.857182, 43.889931>,  <35.483566, 40.554043, 44.009079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239491, 40.857182, 43.889931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279766, 40.460213, 43.918102>,  <36.303932, 40.222031, 43.935005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279766, 40.460213, 43.918102>,  <36.239491, 40.857182, 43.889931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279766, 40.460213, 43.918102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662499, 0.014065, -0.748931,
		0.742265, 0.122068, 0.658895,
		0.100688, -0.992422, 0.070430,
		36.309971, 40.162487, 43.939232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911030, 40.668457, 44.012283>,  <36.239491, 40.857182, 43.889931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911030, 40.668457, 44.012283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725101, 40.386845, 43.797516>,  <36.613544, 40.217876, 43.668655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725101, 40.386845, 43.797516>,  <36.911030, 40.668457, 44.012283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725101, 40.386845, 43.797516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658443, 0.130559, -0.741220,
		0.591938, -0.698069, 0.402875,
		-0.464824, -0.704027, -0.536922,
		36.585655, 40.175636, 43.636440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398071, 40.286335, 43.790730>,  <36.911030, 40.668457, 44.012283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398071, 40.286335, 43.790730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110588, 40.141319, 43.553406>,  <36.938099, 40.054310, 43.411011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110588, 40.141319, 43.553406>,  <37.398071, 40.286335, 43.790730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110588, 40.141319, 43.553406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652846, -0.058226, -0.755250,
		0.239261, -0.930148, 0.278530,
		-0.718712, -0.362539, -0.593312,
		36.894974, 40.032558, 43.375412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634987, 39.736755, 43.406952>,  <37.398071, 40.286335, 43.790730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634987, 39.736755, 43.406952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368267, 39.913219, 43.166698>,  <37.208237, 40.019096, 43.022549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368267, 39.913219, 43.166698>,  <37.634987, 39.736755, 43.406952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368267, 39.913219, 43.166698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688939, 0.057603, -0.722527,
		-0.284152, -0.895578, -0.342342,
		-0.666799, 0.441160, -0.600630,
		37.168228, 40.045567, 42.986511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456013, 39.351547, 42.747421>,  <37.634987, 39.736755, 43.406952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456013, 39.351547, 42.747421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458572, 39.751472, 42.740086>,  <37.460110, 39.991428, 42.735683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458572, 39.751472, 42.740086>,  <37.456013, 39.351547, 42.747421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458572, 39.751472, 42.740086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849159, -0.015120, -0.527921,
		-0.528098, -0.012192, -0.849096,
		0.006402, 0.999811, -0.018338,
		37.460491, 40.051414, 42.734585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381542, 39.594868, 41.977879>,  <37.456013, 39.351547, 42.747421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381542, 39.594868, 41.977879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561962, 39.850632, 42.226948>,  <37.670212, 40.004089, 42.376389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561962, 39.850632, 42.226948>,  <37.381542, 39.594868, 41.977879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561962, 39.850632, 42.226948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832972, -0.051054, -0.550955,
		-0.320493, 0.767173, -0.555635,
		0.451045, 0.639405, 0.622671,
		37.697277, 40.042454, 42.413750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522598, 40.161251, 41.496284>,  <37.381542, 39.594868, 41.977879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522598, 40.161251, 41.496284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764313, 40.165588, 41.814964>,  <37.909340, 40.168190, 42.006172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764313, 40.165588, 41.814964>,  <37.522598, 40.161251, 41.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764313, 40.165588, 41.814964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784134, -0.185468, -0.592229,
		0.141341, 0.982590, -0.120578,
		0.604281, 0.010843, 0.796697,
		37.945599, 40.168842, 42.053974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036575, 40.580811, 41.258064>,  <37.522598, 40.161251, 41.496284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036575, 40.580811, 41.258064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177860, 40.333988, 41.539341>,  <38.262630, 40.185894, 41.708107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177860, 40.333988, 41.539341>,  <38.036575, 40.580811, 41.258064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177860, 40.333988, 41.539341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833120, -0.134497, -0.536490,
		0.425622, 0.775340, 0.466576,
		0.353209, -0.617056, 0.703196,
		38.283825, 40.148872, 41.750301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708023, 40.855350, 41.504051>,  <38.036575, 40.580811, 41.258064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708023, 40.855350, 41.504051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720501, 40.457733, 41.545811>,  <38.727989, 40.219162, 41.570866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720501, 40.457733, 41.545811>,  <38.708023, 40.855350, 41.504051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720501, 40.457733, 41.545811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910737, -0.014765, -0.412723,
		0.411807, 0.107955, 0.904854,
		0.031195, -0.994046, 0.104399,
		38.729858, 40.159519, 41.577129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393059, 40.688442, 41.653824>,  <38.708023, 40.855350, 41.504051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393059, 40.688442, 41.653824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278141, 40.358524, 41.459023>,  <39.209190, 40.160572, 41.342140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278141, 40.358524, 41.459023>,  <39.393059, 40.688442, 41.653824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278141, 40.358524, 41.459023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895446, -0.050762, -0.442267,
		0.340058, -0.563149, 0.753143,
		-0.287294, -0.824795, -0.487007,
		39.191952, 40.111084, 41.312920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841362, 39.995789, 41.709488>,  <39.393059, 40.688442, 41.653824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841362, 39.995789, 41.709488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672684, 40.015244, 41.347313>,  <39.571476, 40.026917, 41.130009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672684, 40.015244, 41.347313>,  <39.841362, 39.995789, 41.709488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672684, 40.015244, 41.347313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905123, -0.037013, -0.423536,
		-0.054113, -0.998131, -0.028416,
		-0.421692, 0.048638, -0.905434,
		39.546177, 40.029835, 41.075684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063591, 39.413700, 41.351749>,  <39.841362, 39.995789, 41.709488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063591, 39.413700, 41.351749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995232, 39.732182, 41.119595>,  <39.954216, 39.923271, 40.980301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995232, 39.732182, 41.119595>,  <40.063591, 39.413700, 41.351749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995232, 39.732182, 41.119595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936586, -0.051635, -0.346612,
		-0.305943, -0.602819, -0.736891,
		-0.170895, 0.796205, -0.580389,
		39.943962, 39.971043, 40.945477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251183, 39.401608, 40.521385>,  <40.063591, 39.413700, 41.351749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251183, 39.401608, 40.521385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276554, 39.754723, 40.707573>,  <40.291779, 39.966591, 40.819286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276554, 39.754723, 40.707573>,  <40.251183, 39.401608, 40.521385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276554, 39.754723, 40.707573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986945, 0.013695, -0.160475,
		-0.148040, 0.469570, -0.870396,
		0.063434, 0.882789, 0.465467,
		40.295586, 40.019558, 40.847214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621319, 39.934231, 40.069569>,  <40.251183, 39.401608, 40.521385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621319, 39.934231, 40.069569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684002, 40.008629, 40.457558>,  <40.721611, 40.053268, 40.690350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684002, 40.008629, 40.457558>,  <40.621319, 39.934231, 40.069569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684002, 40.008629, 40.457558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976114, 0.120466, -0.180803,
		-0.150478, 0.975137, -0.162676,
		0.156711, 0.185997, 0.969973,
		40.731014, 40.064426, 40.748550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801815, 40.649807, 40.301804>,  <40.621319, 39.934231, 40.069569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801815, 40.649807, 40.301804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983055, 40.361431, 40.511539>,  <41.091801, 40.188404, 40.637383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983055, 40.361431, 40.511539>,  <40.801815, 40.649807, 40.301804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983055, 40.361431, 40.511539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847438, 0.165795, -0.504343,
		0.276669, 0.672869, 0.686077,
		0.453105, -0.720944, 0.524344,
		41.118988, 40.145149, 40.668842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363075, 40.882591, 40.774727>,  <40.801815, 40.649807, 40.301804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363075, 40.882591, 40.774727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431297, 40.489174, 40.798550>,  <41.472229, 40.253124, 40.812843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431297, 40.489174, 40.798550>,  <41.363075, 40.882591, 40.774727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431297, 40.489174, 40.798550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290263, -0.007613, -0.956917,
		0.941625, 0.180494, 0.284189,
		0.170554, -0.983547, 0.059560,
		41.482464, 40.194111, 40.816418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894009, 40.800472, 40.462357>,  <41.363075, 40.882591, 40.774727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894009, 40.800472, 40.462357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720108, 40.440994, 40.439228>,  <41.615768, 40.225307, 40.425350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720108, 40.440994, 40.439228>,  <41.894009, 40.800472, 40.462357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720108, 40.440994, 40.439228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328666, -0.098565, -0.939289,
		0.838435, -0.427356, 0.338221,
		-0.434748, -0.898694, -0.057817,
		41.589684, 40.171387, 40.421883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212894, 40.512947, 39.900341>,  <41.894009, 40.800472, 40.462357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212894, 40.512947, 39.900341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898907, 40.274700, 39.968536>,  <41.710514, 40.131752, 40.009453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898907, 40.274700, 39.968536>,  <42.212894, 40.512947, 39.900341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898907, 40.274700, 39.968536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131603, -0.429212, -0.893565,
		0.605394, -0.678985, 0.415303,
		-0.784970, -0.595614, 0.170486,
		41.663414, 40.096016, 40.019684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347614, 39.758297, 39.760036>,  <42.212894, 40.512947, 39.900341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347614, 39.758297, 39.760036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962753, 39.847492, 39.697372>,  <41.731838, 39.901009, 39.659775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962753, 39.847492, 39.697372>,  <42.347614, 39.758297, 39.760036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962753, 39.847492, 39.697372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026512, -0.495537, -0.868182,
		-0.271220, -0.839477, 0.470870,
		-0.962152, 0.222985, -0.156655,
		41.674107, 39.914387, 39.650375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818661, 39.218536, 39.826733>,  <42.347614, 39.758297, 39.760036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818661, 39.218536, 39.826733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737228, 39.498882, 39.553284>,  <41.688370, 39.667091, 39.389214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737228, 39.498882, 39.553284>,  <41.818661, 39.218536, 39.826733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737228, 39.498882, 39.553284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070949, -0.685847, -0.724280,
		-0.976484, -0.195951, 0.089899,
		-0.203581, 0.700869, -0.683621,
		41.676155, 39.709145, 39.348198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242233, 39.039982, 39.518284>,  <41.818661, 39.218536, 39.826733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242233, 39.039982, 39.518284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475464, 39.248722, 39.269222>,  <41.615402, 39.373966, 39.119785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475464, 39.248722, 39.269222>,  <41.242233, 39.039982, 39.518284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475464, 39.248722, 39.269222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053816, -0.789543, -0.611331,
		-0.810636, 0.322941, -0.488445,
		0.583072, 0.521853, -0.622653,
		41.650387, 39.405277, 39.082428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967503, 39.263149, 38.819481>,  <41.242233, 39.039982, 39.518284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967503, 39.263149, 38.819481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357681, 39.200474, 38.757584>,  <41.591789, 39.162868, 38.720444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357681, 39.200474, 38.757584>,  <40.967503, 39.263149, 38.819481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357681, 39.200474, 38.757584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218521, -0.775857, -0.591857,
		-0.027324, 0.611142, -0.791049,
		0.975450, -0.156689, -0.154747,
		41.650314, 39.153465, 38.711159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053825, 39.100487, 38.104950>,  <40.967503, 39.263149, 38.819481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053825, 39.100487, 38.104950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278294, 38.921120, 38.383232>,  <41.412975, 38.813499, 38.550201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278294, 38.921120, 38.383232>,  <41.053825, 39.100487, 38.104950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278294, 38.921120, 38.383232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446446, -0.871763, -0.201780,
		0.696973, -0.197362, -0.689404,
		0.561173, -0.448416, 0.695706,
		41.446644, 38.786594, 38.591946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540730, 38.440163, 37.856647>,  <41.053825, 39.100487, 38.104950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540730, 38.440163, 37.856647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384876, 38.463268, 38.224312>,  <41.291367, 38.477131, 38.444908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384876, 38.463268, 38.224312>,  <41.540730, 38.440163, 37.856647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384876, 38.463268, 38.224312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346659, -0.933829, -0.088262,
		0.853238, -0.353024, 0.383872,
		-0.389630, 0.057765, 0.919158,
		41.267986, 38.480598, 38.500061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974220, 38.031223, 37.479115>,  <41.540730, 38.440163, 37.856647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974220, 38.031223, 37.479115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230331, 37.908909, 37.760979>,  <42.383999, 37.835522, 37.930096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230331, 37.908909, 37.760979>,  <41.974220, 38.031223, 37.479115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230331, 37.908909, 37.760979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056075, -0.933510, -0.354139,
		0.766094, 0.187234, -0.614853,
		0.640278, -0.305782, 0.704657,
		42.422417, 37.817173, 37.972374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261147, 37.501373, 37.138977>,  <41.974220, 38.031223, 37.479115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261147, 37.501373, 37.138977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403965, 37.468529, 37.511166>,  <42.489655, 37.448822, 37.734478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403965, 37.468529, 37.511166>,  <42.261147, 37.501373, 37.138977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403965, 37.468529, 37.511166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047681, -0.993228, -0.105942,
		0.932869, 0.082192, -0.350712,
		0.357045, -0.082108, 0.930471,
		42.511078, 37.443897, 37.790306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773315, 36.988892, 37.165142>,  <42.261147, 37.501373, 37.138977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773315, 36.988892, 37.165142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617992, 37.027264, 37.531750>,  <42.524799, 37.050285, 37.751717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617992, 37.027264, 37.531750>,  <42.773315, 36.988892, 37.165142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617992, 37.027264, 37.531750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061413, -0.995050, 0.078128,
		0.919481, -0.025948, 0.392277,
		-0.388308, 0.095928, 0.916523,
		42.501499, 37.056042, 37.806705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026840, 36.441875, 37.588860>,  <42.773315, 36.988892, 37.165142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026840, 36.441875, 37.588860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671600, 36.537342, 37.745995>,  <42.458458, 36.594624, 37.840275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671600, 36.537342, 37.745995>,  <43.026840, 36.441875, 37.588860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671600, 36.537342, 37.745995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118265, -0.944507, 0.306462,
		0.444182, 0.225709, 0.867040,
		-0.888096, 0.238666, 0.392840,
		42.405170, 36.608940, 37.863846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072269, 36.169598, 38.215492>,  <43.026840, 36.441875, 37.588860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072269, 36.169598, 38.215492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689735, 36.195515, 38.101494>,  <42.460217, 36.211067, 38.033096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689735, 36.195515, 38.101494>,  <43.072269, 36.169598, 38.215492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689735, 36.195515, 38.101494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136144, -0.961623, 0.238213,
		-0.258623, 0.266612, 0.928457,
		-0.956336, 0.064797, -0.284995,
		42.402836, 36.214954, 38.015995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725796, 35.792351, 38.699276>,  <43.072269, 36.169598, 38.215492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725796, 35.792351, 38.699276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504448, 35.810253, 38.366581>,  <42.371639, 35.820995, 38.166965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504448, 35.810253, 38.366581>,  <42.725796, 35.792351, 38.699276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504448, 35.810253, 38.366581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317615, -0.934447, 0.161027,
		-0.770005, 0.353278, 0.531307,
		-0.553366, 0.044759, -0.831735,
		42.338440, 35.823681, 38.117062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093578, 35.406544, 38.913448>,  <42.725796, 35.792351, 38.699276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093578, 35.406544, 38.913448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069195, 35.444069, 38.515961>,  <42.054565, 35.466583, 38.277466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069195, 35.444069, 38.515961>,  <42.093578, 35.406544, 38.913448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069195, 35.444069, 38.515961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453729, -0.889371, -0.056124,
		-0.889052, 0.447459, 0.096782,
		-0.060962, 0.093810, -0.993722,
		42.050907, 35.472214, 38.217846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374855, 35.271206, 38.701210>,  <42.093578, 35.406544, 38.913448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374855, 35.271206, 38.701210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628258, 35.206070, 38.398647>,  <41.780300, 35.166988, 38.217110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628258, 35.206070, 38.398647>,  <41.374855, 35.271206, 38.701210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628258, 35.206070, 38.398647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424440, -0.890523, -0.163765,
		-0.646928, 0.424796, -0.633271,
		0.633509, -0.162841, -0.756405,
		41.818310, 35.157219, 38.171726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944260, 35.015476, 38.162228>,  <41.374855, 35.271206, 38.701210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944260, 35.015476, 38.162228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300816, 34.899296, 38.023052>,  <41.514751, 34.829590, 37.939548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300816, 34.899296, 38.023052>,  <40.944260, 35.015476, 38.162228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300816, 34.899296, 38.023052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388610, -0.884848, -0.256956,
		-0.233237, 0.364260, -0.901618,
		0.891394, -0.290447, -0.347935,
		41.568233, 34.812160, 37.918671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762760, 34.752403, 37.394218>,  <40.944260, 35.015476, 38.162228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762760, 34.752403, 37.394218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112812, 34.606003, 37.520828>,  <41.322842, 34.518162, 37.596794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112812, 34.606003, 37.520828>,  <40.762760, 34.752403, 37.394218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112812, 34.606003, 37.520828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209564, -0.876281, -0.433836,
		0.436152, 0.313330, -0.843561,
		0.875131, -0.365999, 0.316529,
		41.375351, 34.496204, 37.615788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069324, 34.409908, 36.824234>,  <40.762760, 34.752403, 37.394218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069324, 34.409908, 36.824234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253792, 34.245552, 37.138809>,  <41.364471, 34.146938, 37.327557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253792, 34.245552, 37.138809>,  <41.069324, 34.409908, 36.824234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253792, 34.245552, 37.138809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283503, -0.908095, -0.308205,
		0.840802, -0.080824, -0.535275,
		0.461170, -0.410891, 0.786442,
		41.392143, 34.122284, 37.374741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378403, 33.726303, 36.590992>,  <41.069324, 34.409908, 36.824234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378403, 33.726303, 36.590992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397366, 33.687393, 36.988644>,  <41.408745, 33.664047, 37.227234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397366, 33.687393, 36.988644>,  <41.378403, 33.726303, 36.590992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397366, 33.687393, 36.988644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245048, -0.965966, -0.082832,
		0.968351, -0.239682, -0.069633,
		0.047410, -0.097274, 0.994128,
		41.411587, 33.658211, 37.286880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805973, 33.056618, 36.792297>,  <41.378403, 33.726303, 36.590992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805973, 33.056618, 36.792297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555843, 33.156940, 37.087879>,  <41.405766, 33.217136, 37.265228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555843, 33.156940, 37.087879>,  <41.805973, 33.056618, 36.792297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555843, 33.156940, 37.087879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501021, -0.855034, -0.133773,
		0.598282, -0.453886, 0.660338,
		-0.625329, 0.250810, 0.738958,
		41.368244, 33.232182, 37.309566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749435, 32.505688, 37.234947>,  <41.805973, 33.056618, 36.792297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749435, 32.505688, 37.234947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416733, 32.700649, 37.341244>,  <41.217110, 32.817627, 37.405022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416733, 32.700649, 37.341244>,  <41.749435, 32.505688, 37.234947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416733, 32.700649, 37.341244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511916, -0.858596, -0.027497,
		0.214762, -0.158907, 0.963652,
		-0.831757, 0.487403, 0.265741,
		41.167206, 32.846870, 37.420967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412285, 32.214382, 37.807625>,  <41.749435, 32.505688, 37.234947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412285, 32.214382, 37.807625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130424, 32.409996, 37.601982>,  <40.961308, 32.527363, 37.478596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130424, 32.409996, 37.601982>,  <41.412285, 32.214382, 37.807625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130424, 32.409996, 37.601982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556653, -0.830311, -0.026852,
		-0.440002, 0.267259, 0.857304,
		-0.704653, 0.489036, -0.514109,
		40.919029, 32.556705, 37.447750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763676, 31.950878, 38.101593>,  <41.412285, 32.214382, 37.807625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763676, 31.950878, 38.101593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660088, 32.127270, 37.757854>,  <40.597935, 32.233105, 37.551613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660088, 32.127270, 37.757854>,  <40.763676, 31.950878, 38.101593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660088, 32.127270, 37.757854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779552, -0.620732, -0.083613,
		-0.570294, 0.648250, 0.504517,
		-0.258968, 0.440981, -0.859344,
		40.582397, 32.259563, 37.500050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062046, 31.876801, 38.136318>,  <40.763676, 31.950878, 38.101593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062046, 31.876801, 38.136318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076996, 32.005100, 37.757748>,  <40.085964, 32.082081, 37.530605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076996, 32.005100, 37.757748>,  <40.062046, 31.876801, 38.136318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076996, 32.005100, 37.757748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751261, -0.615499, -0.238260,
		-0.658947, 0.719917, 0.217964,
		0.037371, 0.320748, -0.946427,
		40.088207, 32.101326, 37.473820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422070, 32.146179, 38.002846>,  <40.062046, 31.876801, 38.136318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422070, 32.146179, 38.002846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591755, 32.035931, 37.657806>,  <39.693565, 31.969782, 37.450783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591755, 32.035931, 37.657806>,  <39.422070, 32.146179, 38.002846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591755, 32.035931, 37.657806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878629, -0.355867, -0.318387,
		-0.219217, 0.892968, -0.393132,
		0.424212, -0.275621, -0.862599,
		39.719017, 31.953243, 37.399025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884666, 32.364986, 37.533859>,  <39.422070, 32.146179, 38.002846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884666, 32.364986, 37.533859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114990, 32.084530, 37.365650>,  <39.253185, 31.916256, 37.264725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114990, 32.084530, 37.365650>,  <38.884666, 32.364986, 37.533859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114990, 32.084530, 37.365650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817540, -0.498954, -0.287529,
		-0.008222, 0.509355, -0.860517,
		0.575813, -0.701143, -0.420521,
		39.287735, 31.874187, 37.239494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663177, 32.233204, 36.894585>,  <38.884666, 32.364986, 37.533859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663177, 32.233204, 36.894585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867168, 31.893381, 36.948505>,  <38.989563, 31.689487, 36.980858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867168, 31.893381, 36.948505>,  <38.663177, 32.233204, 36.894585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867168, 31.893381, 36.948505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743560, -0.514179, -0.427479,
		0.432479, 0.117774, -0.893919,
		0.509981, -0.849558, 0.134800,
		39.020164, 31.638514, 36.988945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574837, 31.883478, 36.261944>,  <38.663177, 32.233204, 36.894585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574837, 31.883478, 36.261944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685661, 31.615404, 36.537361>,  <38.752155, 31.454559, 36.702610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685661, 31.615404, 36.537361>,  <38.574837, 31.883478, 36.261944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685661, 31.615404, 36.537361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827932, -0.530170, -0.182885,
		0.487611, -0.519396, -0.701757,
		0.277061, -0.670184, 0.688542,
		38.768780, 31.414349, 36.743923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283501, 31.325516, 35.950436>,  <38.574837, 31.883478, 36.261944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283501, 31.325516, 35.950436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367123, 31.194136, 36.318874>,  <38.417297, 31.115307, 36.539936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367123, 31.194136, 36.318874>,  <38.283501, 31.325516, 35.950436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367123, 31.194136, 36.318874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792032, -0.609326, -0.037516,
		0.573569, -0.721694, -0.387526,
		0.209054, -0.328451, 0.921095,
		38.429840, 31.095600, 36.595203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363892, 30.638700, 35.882660>,  <38.283501, 31.325516, 35.950436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363892, 30.638700, 35.882660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243778, 30.722099, 36.254974>,  <38.171711, 30.772139, 36.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243778, 30.722099, 36.254974>,  <38.363892, 30.638700, 35.882660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243778, 30.722099, 36.254974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780056, -0.615268, -0.113831,
		0.548949, -0.760246, 0.347392,
		-0.300279, 0.208498, 0.930785,
		38.153694, 30.784649, 36.534210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083282, 30.028730, 36.111053>,  <38.363892, 30.638700, 35.882660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083282, 30.028730, 36.111053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921307, 30.242056, 36.408134>,  <37.824123, 30.370050, 36.586384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921307, 30.242056, 36.408134>,  <38.083282, 30.028730, 36.111053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921307, 30.242056, 36.408134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709573, -0.695577, 0.112602,
		0.576657, -0.481403, 0.660088,
		-0.404935, 0.533313, 0.742700,
		37.799828, 30.402050, 36.630943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837967, 29.517044, 36.565598>,  <38.083282, 30.028730, 36.111053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837967, 29.517044, 36.565598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639168, 29.853386, 36.651348>,  <37.519886, 30.055191, 36.702797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639168, 29.853386, 36.651348>,  <37.837967, 29.517044, 36.565598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639168, 29.853386, 36.651348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855568, -0.516085, 0.040734,
		0.144887, -0.163169, 0.975901,
		-0.497001, 0.840852, 0.214376,
		37.490067, 30.105642, 36.715660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331711, 29.386477, 37.141605>,  <37.837967, 29.517044, 36.565598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331711, 29.386477, 37.141605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191956, 29.698488, 36.933960>,  <37.108101, 29.885695, 36.809372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191956, 29.698488, 36.933960>,  <37.331711, 29.386477, 37.141605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191956, 29.698488, 36.933960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921598, -0.386060, 0.040185,
		-0.169065, 0.492457, 0.853758,
		-0.349392, 0.780028, -0.519117,
		37.087139, 29.932497, 36.778225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589649, 29.503666, 37.426910>,  <37.331711, 29.386477, 37.141605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589649, 29.503666, 37.426910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646309, 29.686213, 37.075531>,  <36.680305, 29.795740, 36.864704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646309, 29.686213, 37.075531>,  <36.589649, 29.503666, 37.426910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646309, 29.686213, 37.075531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912109, -0.284689, -0.294975,
		-0.384700, 0.843020, 0.375929,
		0.141647, 0.456365, -0.878446,
		36.688805, 29.823122, 36.811996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929962, 29.798510, 37.272842>,  <36.589649, 29.503666, 37.426910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929962, 29.798510, 37.272842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114445, 29.828737, 36.919216>,  <36.225136, 29.846874, 36.707039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114445, 29.828737, 36.919216>,  <35.929962, 29.798510, 37.272842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114445, 29.828737, 36.919216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882030, -0.069297, -0.466070,
		-0.096483, 0.994730, 0.034693,
		0.461210, 0.075568, -0.884067,
		36.252808, 29.851408, 36.653996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501305, 30.220024, 36.722672>,  <35.929962, 29.798510, 37.272842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501305, 30.220024, 36.722672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742504, 30.003546, 36.488235>,  <35.887226, 29.873659, 36.347576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742504, 30.003546, 36.488235>,  <35.501305, 30.220024, 36.722672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742504, 30.003546, 36.488235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783466, -0.263400, -0.562852,
		0.150236, 0.798580, -0.582837,
		0.603001, -0.541194, -0.586088,
		35.923405, 29.841188, 36.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274208, 30.241611, 36.065937>,  <35.501305, 30.220024, 36.722672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274208, 30.241611, 36.065937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506435, 29.916061, 36.056572>,  <35.645771, 29.720732, 36.050953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506435, 29.916061, 36.056572>,  <35.274208, 30.241611, 36.065937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506435, 29.916061, 36.056572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702785, -0.486389, -0.519152,
		0.411138, 0.317857, -0.854361,
		0.580568, -0.813875, -0.023412,
		35.680607, 29.671900, 36.049549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167492, 30.001869, 35.448612>,  <35.274208, 30.241611, 36.065937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167492, 30.001869, 35.448612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322060, 29.685068, 35.637676>,  <35.414803, 29.494987, 35.751114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322060, 29.685068, 35.637676>,  <35.167492, 30.001869, 35.448612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322060, 29.685068, 35.637676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637862, -0.599638, -0.483287,
		0.666191, -0.114741, -0.736901,
		0.386421, -0.792003, 0.472662,
		35.437984, 29.447468, 35.779476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323238, 29.432327, 34.888123>,  <35.167492, 30.001869, 35.448612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323238, 29.432327, 34.888123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301151, 29.252232, 35.244602>,  <35.287899, 29.144175, 35.458488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301151, 29.252232, 35.244602>,  <35.323238, 29.432327, 34.888123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301151, 29.252232, 35.244602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618523, -0.685255, -0.384519,
		0.783824, -0.572460, -0.240644,
		-0.055220, -0.450239, 0.891199,
		35.284584, 29.117161, 35.511963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510128, 28.685314, 34.843761>,  <35.323238, 29.432327, 34.888123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510128, 28.685314, 34.843761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257809, 28.789612, 35.136089>,  <35.106415, 28.852190, 35.311485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257809, 28.789612, 35.136089>,  <35.510128, 28.685314, 34.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257809, 28.789612, 35.136089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697940, -0.602230, -0.387555,
		0.339072, -0.754541, 0.561870,
		-0.630801, 0.260743, 0.730824,
		35.068569, 28.867834, 35.355335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144714, 28.051842, 34.959724>,  <35.510128, 28.685314, 34.843761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144714, 28.051842, 34.959724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937038, 28.301527, 35.193237>,  <34.812431, 28.451340, 35.333344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937038, 28.301527, 35.193237>,  <35.144714, 28.051842, 34.959724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937038, 28.301527, 35.193237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824205, -0.546401, -0.148766,
		0.226115, -0.558391, 0.798168,
		-0.519190, 0.624216, 0.583779,
		34.781281, 28.488792, 35.368370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815975, 27.656078, 35.473640>,  <35.144714, 28.051842, 34.959724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815975, 27.656078, 35.473640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615715, 28.001068, 35.444031>,  <34.495560, 28.208063, 35.426266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615715, 28.001068, 35.444031>,  <34.815975, 27.656078, 35.473640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615715, 28.001068, 35.444031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863839, -0.503303, -0.021645,
		-0.055926, 0.053111, 0.997021,
		-0.500654, 0.862477, -0.074028,
		34.465519, 28.259811, 35.421822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174702, 27.546648, 35.837334>,  <34.815975, 27.656078, 35.473640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174702, 27.546648, 35.837334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070648, 27.875492, 35.634762>,  <34.008217, 28.072798, 35.513218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070648, 27.875492, 35.634762>,  <34.174702, 27.546648, 35.837334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070648, 27.875492, 35.634762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950641, -0.309939, -0.014830,
		-0.169153, 0.477573, 0.862155,
		-0.260133, 0.822108, -0.506427,
		33.992607, 28.122124, 35.482834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588306, 27.777105, 36.133663>,  <34.174702, 27.546648, 35.837334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588306, 27.777105, 36.133663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570889, 27.924034, 35.762035>,  <33.560436, 28.012192, 35.539059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570889, 27.924034, 35.762035>,  <33.588306, 27.777105, 36.133663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570889, 27.924034, 35.762035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976209, -0.213368, -0.038601,
		-0.212413, 0.905288, 0.367877,
		-0.043548, 0.367324, -0.929073,
		33.557823, 28.034231, 35.483315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916355, 28.123205, 36.074295>,  <33.588306, 27.777105, 36.133663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916355, 28.123205, 36.074295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031597, 28.078669, 35.693855>,  <33.100742, 28.051947, 35.465591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031597, 28.078669, 35.693855>,  <32.916355, 28.123205, 36.074295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031597, 28.078669, 35.693855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898934, -0.373741, -0.228552,
		-0.330019, 0.920826, -0.207765,
		0.288107, -0.111341, -0.951103,
		33.118031, 28.045267, 35.408524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310776, 28.408886, 35.673496>,  <32.916355, 28.123205, 36.074295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310776, 28.408886, 35.673496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541912, 28.161942, 35.459965>,  <32.680592, 28.013775, 35.331848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541912, 28.161942, 35.459965>,  <32.310776, 28.408886, 35.673496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541912, 28.161942, 35.459965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814192, -0.481342, -0.324656,
		-0.056523, 0.622235, -0.780787,
		0.577838, -0.617360, -0.533826,
		32.715263, 27.976734, 35.299816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972219, 28.448341, 35.030548>,  <32.310776, 28.408886, 35.673496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972219, 28.448341, 35.030548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167519, 28.101431, 35.069412>,  <32.284698, 27.893284, 35.092731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167519, 28.101431, 35.069412>,  <31.972219, 28.448341, 35.030548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167519, 28.101431, 35.069412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832553, -0.496273, -0.246107,
		0.261663, 0.039269, -0.964360,
		0.488250, -0.867278, 0.097163,
		32.313995, 27.841248, 35.098560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720152, 28.061281, 34.495331>,  <31.972219, 28.448341, 35.030548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720152, 28.061281, 34.495331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874802, 27.774323, 34.727146>,  <31.967592, 27.602148, 34.866238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874802, 27.774323, 34.727146>,  <31.720152, 28.061281, 34.495331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874802, 27.774323, 34.727146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806660, -0.567651, -0.164536,
		0.447014, -0.403878, -0.798161,
		0.386624, -0.717394, 0.579540,
		31.990789, 27.559105, 34.901009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597534, 27.457539, 34.222042>,  <31.720152, 28.061281, 34.495331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597534, 27.457539, 34.222042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663445, 27.332701, 34.596302>,  <31.702990, 27.257797, 34.820858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663445, 27.332701, 34.596302>,  <31.597534, 27.457539, 34.222042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663445, 27.332701, 34.596302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837983, -0.544630, -0.034092,
		0.520224, -0.778444, -0.351270,
		0.164773, -0.312094, 0.935653,
		31.712877, 27.239073, 34.876999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357225, 26.742115, 34.203011>,  <31.597534, 27.457539, 34.222042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357225, 26.742115, 34.203011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377337, 26.830629, 34.592575>,  <31.389402, 26.883738, 34.826313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377337, 26.830629, 34.592575>,  <31.357225, 26.742115, 34.203011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377337, 26.830629, 34.592575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679597, -0.706994, 0.195723,
		0.731861, -0.671708, 0.114840,
		0.050278, 0.221287, 0.973912,
		31.392420, 26.897015, 34.884750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381748, 26.035488, 34.541748>,  <31.357225, 26.742115, 34.203011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381748, 26.035488, 34.541748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230650, 26.317156, 34.782234>,  <31.139992, 26.486156, 34.926525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230650, 26.317156, 34.782234>,  <31.381748, 26.035488, 34.541748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230650, 26.317156, 34.782234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810612, -0.565299, 0.152792,
		0.447457, -0.429634, 0.784345,
		-0.377745, 0.704167, 0.601213,
		31.117327, 26.528406, 34.962597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315485, 25.849903, 35.301762>,  <31.381748, 26.035488, 34.541748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315485, 25.849903, 35.301762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021399, 26.115412, 35.246819>,  <30.844948, 26.274717, 35.213852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021399, 26.115412, 35.246819>,  <31.315485, 25.849903, 35.301762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021399, 26.115412, 35.246819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649054, -0.630970, 0.424977,
		0.195418, 0.401604, 0.894721,
		-0.735214, 0.663771, -0.137360,
		30.800835, 26.314543, 35.205612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148970, 25.572546, 35.911148>,  <31.315485, 25.849903, 35.301762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148970, 25.572546, 35.911148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849358, 25.750050, 35.714363>,  <30.669590, 25.856552, 35.596291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849358, 25.750050, 35.714363>,  <31.148970, 25.572546, 35.911148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849358, 25.750050, 35.714363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656990, -0.593371, 0.465054,
		-0.085546, 0.671556, 0.735999,
		-0.749030, 0.443760, -0.491967,
		30.624649, 25.883177, 35.566772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677029, 25.768282, 36.380470>,  <31.148970, 25.572546, 35.911148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677029, 25.768282, 36.380470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465879, 25.689133, 36.050091>,  <30.339190, 25.641644, 35.851864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465879, 25.689133, 36.050091>,  <30.677029, 25.768282, 36.380470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465879, 25.689133, 36.050091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665082, -0.508508, 0.546887,
		-0.528217, 0.838012, 0.136826,
		-0.527875, -0.197875, -0.825950,
		30.307516, 25.629770, 35.802307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975643, 25.733622, 36.636021>,  <30.677029, 25.768282, 36.380470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975643, 25.733622, 36.636021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965651, 25.497375, 36.313393>,  <29.959654, 25.355629, 36.119816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965651, 25.497375, 36.313393>,  <29.975643, 25.733622, 36.636021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965651, 25.497375, 36.313393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605024, -0.633347, 0.482513,
		-0.795815, 0.500047, -0.341513,
		-0.024983, -0.590614, -0.806567,
		29.958157, 25.320190, 36.071423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311575, 25.560907, 36.283226>,  <29.975643, 25.733622, 36.636021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311575, 25.560907, 36.283226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566149, 25.253056, 36.262764>,  <29.718893, 25.068344, 36.250484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566149, 25.253056, 36.262764>,  <29.311575, 25.560907, 36.283226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566149, 25.253056, 36.262764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681478, -0.592127, 0.430085,
		-0.361298, -0.238860, -0.901338,
		0.636437, -0.769630, -0.051156,
		29.757080, 25.022167, 36.247417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952291, 25.005039, 35.898617>,  <29.311575, 25.560907, 36.283226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952291, 25.005039, 35.898617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211384, 24.891943, 36.181602>,  <29.366838, 24.824085, 36.351395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211384, 24.891943, 36.181602>,  <28.952291, 25.005039, 35.898617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211384, 24.891943, 36.181602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675161, -0.643260, 0.361075,
		0.352990, -0.711529, -0.607556,
		0.647731, -0.282742, 0.707461,
		29.405703, 24.807121, 36.393841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427132, 25.056892, 35.357368>,  <28.952291, 25.005039, 35.898617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427132, 25.056892, 35.357368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134785, 24.900307, 35.581009>,  <27.959377, 24.806355, 35.715191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134785, 24.900307, 35.581009>,  <28.427132, 25.056892, 35.357368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134785, 24.900307, 35.581009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682472, -0.409281, 0.605576,
		-0.008232, 0.824164, 0.566292,
		-0.730866, -0.391464, 0.559099,
		27.915525, 24.782867, 35.748737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146313, 25.617876, 35.639664>,  <28.427132, 25.056892, 35.357368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146313, 25.617876, 35.639664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999731, 25.660654, 35.269955>,  <27.911781, 25.686321, 35.048130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999731, 25.660654, 35.269955>,  <28.146313, 25.617876, 35.639664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999731, 25.660654, 35.269955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398459, 0.915709, -0.052027,
		0.840798, -0.387349, -0.378179,
		-0.366454, 0.106945, -0.924269,
		27.889795, 25.692738, 34.992672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643341, 25.763279, 35.183475>,  <28.146313, 25.617876, 35.639664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643341, 25.763279, 35.183475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297970, 25.931898, 35.072632>,  <28.090748, 26.033070, 35.006126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297970, 25.931898, 35.072632>,  <28.643341, 25.763279, 35.183475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297970, 25.931898, 35.072632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410690, 0.906367, 0.099161,
		0.292962, -0.028187, -0.955708,
		-0.863428, 0.421550, -0.277107,
		28.038942, 26.058363, 34.989498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764046, 26.250748, 34.497822>,  <28.643341, 25.763279, 35.183475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764046, 26.250748, 34.497822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445759, 26.349905, 34.718868>,  <28.254786, 26.409399, 34.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445759, 26.349905, 34.718868>,  <28.764046, 26.250748, 34.497822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445759, 26.349905, 34.718868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296476, 0.955039, -0.001514,
		-0.528141, 0.162632, -0.833437,
		-0.795719, 0.247894, 0.552612,
		28.207043, 26.424273, 34.884651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266172, 26.740852, 34.194733>,  <28.764046, 26.250748, 34.497822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266172, 26.740852, 34.194733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316816, 26.753630, 34.591309>,  <28.347202, 26.761295, 34.829254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316816, 26.753630, 34.591309>,  <28.266172, 26.740852, 34.194733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316816, 26.753630, 34.591309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350071, 0.933733, -0.074787,
		-0.928127, 0.356543, 0.107037,
		0.126608, 0.031941, 0.991438,
		28.354799, 26.763212, 34.888741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801422, 27.212624, 34.537518>,  <28.266172, 26.740852, 34.194733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801422, 27.212624, 34.537518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134438, 27.169231, 34.754814>,  <28.334248, 27.143196, 34.885193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134438, 27.169231, 34.754814>,  <27.801422, 27.212624, 34.537518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134438, 27.169231, 34.754814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249325, 0.949078, -0.192581,
		-0.494689, 0.295775, 0.817190,
		0.832538, -0.108478, 0.543243,
		28.384199, 27.136688, 34.917786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849678, 27.751999, 34.943542>,  <27.801422, 27.212624, 34.537518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849678, 27.751999, 34.943542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228125, 27.638145, 35.005314>,  <28.455193, 27.569834, 35.042377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228125, 27.638145, 35.005314>,  <27.849678, 27.751999, 34.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228125, 27.638145, 35.005314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295236, 0.954103, -0.050230,
		-0.133041, 0.093115, 0.986727,
		0.946116, -0.284634, 0.154426,
		28.511959, 27.552755, 35.051643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069786, 28.152988, 35.457256>,  <27.849678, 27.751999, 34.943542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069786, 28.152988, 35.457256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402138, 28.024670, 35.275387>,  <28.601549, 27.947680, 35.166264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402138, 28.024670, 35.275387>,  <28.069786, 28.152988, 35.457256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402138, 28.024670, 35.275387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401459, 0.911385, 0.090604,
		0.385318, -0.257814, 0.886037,
		0.830880, -0.320796, -0.454675,
		28.651402, 27.928431, 35.138985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649019, 28.447330, 35.816063>,  <28.069786, 28.152988, 35.457256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649019, 28.447330, 35.816063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839880, 28.333755, 35.483387>,  <28.954395, 28.265612, 35.283783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839880, 28.333755, 35.483387>,  <28.649019, 28.447330, 35.816063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839880, 28.333755, 35.483387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483692, 0.874981, -0.021216,
		0.733737, -0.392158, 0.554835,
		0.477150, -0.283937, -0.831690,
		28.983025, 28.248575, 35.233879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378948, 28.541025, 35.856575>,  <28.649019, 28.447330, 35.816063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378948, 28.541025, 35.856575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316330, 28.543755, 35.461517>,  <29.278759, 28.545393, 35.224483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316330, 28.543755, 35.461517>,  <29.378948, 28.541025, 35.856575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316330, 28.543755, 35.461517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706119, 0.699949, -0.107086,
		0.690572, -0.714160, -0.114391,
		-0.156544, 0.006823, -0.987647,
		29.269367, 28.545801, 35.165222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007284, 28.345396, 35.460602>,  <29.378948, 28.541025, 35.856575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007284, 28.345396, 35.460602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790018, 28.573275, 35.213890>,  <29.659658, 28.710001, 35.065865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790018, 28.573275, 35.213890>,  <30.007284, 28.345396, 35.460602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790018, 28.573275, 35.213890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803536, 0.565756, -0.185067,
		0.243514, -0.596126, -0.765072,
		-0.543167, 0.569697, -0.616778,
		29.627068, 28.744184, 35.028858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483139, 28.495840, 34.964909>,  <30.007284, 28.345396, 35.460602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483139, 28.495840, 34.964909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188505, 28.755989, 34.890656>,  <30.011724, 28.912079, 34.846104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188505, 28.755989, 34.890656>,  <30.483139, 28.495840, 34.964909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188505, 28.755989, 34.890656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676153, 0.701561, -0.225011,
		-0.016107, -0.291258, -0.956509,
		-0.736585, 0.650371, -0.185635,
		29.967529, 28.951099, 34.834965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604158, 28.751068, 34.342628>,  <30.483139, 28.495840, 34.964909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604158, 28.751068, 34.342628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385149, 29.021599, 34.539726>,  <30.253742, 29.183916, 34.657986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385149, 29.021599, 34.539726>,  <30.604158, 28.751068, 34.342628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385149, 29.021599, 34.539726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670629, 0.706845, -0.225004,
		-0.500472, 0.207256, -0.840579,
		-0.547525, 0.676325, 0.492748,
		30.220892, 29.224497, 34.687550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710400, 29.339136, 33.878944>,  <30.604158, 28.751068, 34.342628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710400, 29.339136, 33.878944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566242, 29.478228, 34.225170>,  <30.479748, 29.561682, 34.432907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566242, 29.478228, 34.225170>,  <30.710400, 29.339136, 33.878944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566242, 29.478228, 34.225170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726844, 0.686274, 0.026934,
		-0.584649, 0.638837, -0.500073,
		-0.360393, 0.347728, 0.865564,
		30.458124, 29.582546, 34.484840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780346, 30.084747, 33.833805>,  <30.710400, 29.339136, 33.878944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780346, 30.084747, 33.833805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731588, 30.025877, 34.226433>,  <30.702333, 29.990555, 34.462009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731588, 30.025877, 34.226433>,  <30.780346, 30.084747, 33.833805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731588, 30.025877, 34.226433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711351, 0.676723, 0.189805,
		-0.692186, 0.721377, 0.022203,
		-0.121896, -0.147175, 0.981571,
		30.695019, 29.981724, 34.520905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674540, 30.764227, 34.109127>,  <30.780346, 30.084747, 33.833805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674540, 30.764227, 34.109127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803047, 30.536095, 34.411522>,  <30.880152, 30.399216, 34.592957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803047, 30.536095, 34.411522>,  <30.674540, 30.764227, 34.109127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803047, 30.536095, 34.411522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598338, 0.741020, 0.304765,
		-0.734014, 0.354421, 0.579317,
		0.321271, -0.570329, 0.755983,
		30.899429, 30.364996, 34.638317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852514, 31.182245, 34.691826>,  <30.674540, 30.764227, 34.109127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852514, 31.182245, 34.691826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068436, 30.855074, 34.771431>,  <31.197989, 30.658772, 34.819195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068436, 30.855074, 34.771431>,  <30.852514, 31.182245, 34.691826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068436, 30.855074, 34.771431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743903, 0.574159, 0.341980,
		-0.393978, -0.036558, 0.918392,
		0.539805, -0.817927, 0.199010,
		31.230377, 30.609695, 34.831135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130873, 31.455462, 35.267075>,  <30.852514, 31.182245, 34.691826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130873, 31.455462, 35.267075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348969, 31.129576, 35.188133>,  <31.479826, 30.934044, 35.140770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348969, 31.129576, 35.188133>,  <31.130873, 31.455462, 35.267075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348969, 31.129576, 35.188133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818570, 0.466706, 0.334857,
		-0.180707, -0.344125, 0.921370,
		0.545242, -0.814717, -0.197354,
		31.512541, 30.885160, 35.128925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519819, 31.200644, 35.948009>,  <31.130873, 31.455462, 35.267075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519819, 31.200644, 35.948009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725344, 31.058504, 35.635670>,  <31.848658, 30.973221, 35.448265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725344, 31.058504, 35.635670>,  <31.519819, 31.200644, 35.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725344, 31.058504, 35.635670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853295, 0.305895, 0.422276,
		0.088803, -0.883265, 0.460388,
		0.513811, -0.355347, -0.780850,
		31.879488, 30.951900, 35.401413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046062, 30.916054, 36.234222>,  <31.519819, 31.200644, 35.948009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046062, 30.916054, 36.234222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164421, 30.960554, 35.854733>,  <32.235435, 30.987253, 35.627041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164421, 30.960554, 35.854733>,  <32.046062, 30.916054, 36.234222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164421, 30.960554, 35.854733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838733, 0.445052, 0.313778,
		0.457137, -0.888568, 0.038381,
		0.295894, 0.111248, -0.948721,
		32.253189, 30.993929, 35.570118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743359, 30.917072, 36.324959>,  <32.046062, 30.916054, 36.234222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743359, 30.917072, 36.324959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681911, 31.091209, 35.970135>,  <32.645042, 31.195692, 35.757240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681911, 31.091209, 35.970135>,  <32.743359, 30.917072, 36.324959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681911, 31.091209, 35.970135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750573, 0.635286, 0.181801,
		0.642684, -0.637877, -0.424347,
		-0.153615, 0.435344, -0.887061,
		32.635826, 31.221813, 35.704018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443768, 31.040586, 36.085213>,  <32.743359, 30.917072, 36.324959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443768, 31.040586, 36.085213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196217, 31.274229, 35.875145>,  <33.047684, 31.414415, 35.749104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196217, 31.274229, 35.875145>,  <33.443768, 31.040586, 36.085213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196217, 31.274229, 35.875145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637047, 0.764384, 0.099443,
		0.459519, -0.273016, -0.845165,
		-0.618881, 0.584106, -0.525173,
		33.010551, 31.449461, 35.717594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872017, 31.340263, 35.588150>,  <33.443768, 31.040586, 36.085213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872017, 31.340263, 35.588150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542561, 31.561640, 35.637653>,  <33.344887, 31.694466, 35.667355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542561, 31.561640, 35.637653>,  <33.872017, 31.340263, 35.588150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542561, 31.561640, 35.637653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566160, 0.815058, 0.123057,
		-0.032768, 0.171424, -0.984652,
		-0.823644, 0.553439, 0.123761,
		33.295467, 31.727671, 35.674782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085930, 32.015423, 35.387207>,  <33.872017, 31.340263, 35.588150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085930, 32.015423, 35.387207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744671, 32.117527, 35.569187>,  <33.539917, 32.178791, 35.678375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744671, 32.117527, 35.569187>,  <34.085930, 32.015423, 35.387207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744671, 32.117527, 35.569187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402755, 0.876579, 0.263432,
		-0.331557, 0.407981, -0.850660,
		-0.853146, 0.255265, 0.454952,
		33.488728, 32.194107, 35.705673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922230, 32.754944, 35.189430>,  <34.085930, 32.015423, 35.387207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922230, 32.754944, 35.189430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753723, 32.663345, 35.540451>,  <33.652618, 32.608387, 35.751064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753723, 32.663345, 35.540451>,  <33.922230, 32.754944, 35.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753723, 32.663345, 35.540451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373534, 0.837909, 0.397971,
		-0.826442, 0.495446, -0.267444,
		-0.421267, -0.229001, 0.877549,
		33.627342, 32.594646, 35.803715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652195, 33.329109, 35.405094>,  <33.922230, 32.754944, 35.189430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652195, 33.329109, 35.405094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704849, 33.095463, 35.725464>,  <33.736443, 32.955276, 35.917686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704849, 33.095463, 35.725464>,  <33.652195, 33.329109, 35.405094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704849, 33.095463, 35.725464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453754, 0.753850, 0.475203,
		-0.881351, 0.300870, 0.364277,
		0.131636, -0.584113, 0.800927,
		33.744339, 32.920227, 35.965740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567429, 33.759895, 35.898628>,  <33.652195, 33.329109, 35.405094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567429, 33.759895, 35.898628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743130, 33.445423, 36.072517>,  <33.848549, 33.256741, 36.176853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743130, 33.445423, 36.072517>,  <33.567429, 33.759895, 35.898628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743130, 33.445423, 36.072517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609304, 0.616308, 0.498912,
		-0.660158, 0.045734, 0.749733,
		0.439249, -0.786176, 0.434726,
		33.874905, 33.209572, 36.202934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794746, 33.957397, 36.607441>,  <33.567429, 33.759895, 35.898628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794746, 33.957397, 36.607441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053974, 33.662121, 36.532516>,  <34.209511, 33.484955, 36.487560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053974, 33.662121, 36.532516>,  <33.794746, 33.957397, 36.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053974, 33.662121, 36.532516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741383, 0.555234, 0.376916,
		-0.174234, -0.383136, 0.907110,
		0.648069, -0.738188, -0.187310,
		34.248394, 33.440666, 36.476322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156879, 33.982727, 37.190479>,  <33.794746, 33.957397, 36.607441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156879, 33.982727, 37.190479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368954, 33.745010, 36.948578>,  <34.496197, 33.602383, 36.803436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368954, 33.745010, 36.948578>,  <34.156879, 33.982727, 37.190479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368954, 33.745010, 36.948578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844667, 0.308166, 0.437688,
		-0.073750, -0.742868, 0.665362,
		0.530187, -0.594289, -0.604750,
		34.528011, 33.566723, 36.767155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634300, 33.558517, 37.592381>,  <34.156879, 33.982727, 37.190479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634300, 33.558517, 37.592381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785999, 33.583168, 37.223083>,  <34.877018, 33.597958, 37.001507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785999, 33.583168, 37.223083>,  <34.634300, 33.558517, 37.592381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785999, 33.583168, 37.223083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841264, 0.392502, 0.371775,
		0.385283, -0.917684, 0.097016,
		0.379251, 0.061623, -0.923239,
		34.899776, 33.601654, 36.946110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310699, 33.392822, 37.726646>,  <34.634300, 33.558517, 37.592381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310699, 33.392822, 37.726646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321133, 33.536148, 37.353352>,  <35.327393, 33.622143, 37.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321133, 33.536148, 37.353352>,  <35.310699, 33.392822, 37.726646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321133, 33.536148, 37.353352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909298, 0.379357, 0.171070,
		0.415327, -0.853052, -0.315920,
		0.026086, 0.358315, -0.933236,
		35.328957, 33.643642, 37.073380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978668, 33.207336, 37.394089>,  <35.310699, 33.392822, 37.726646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978668, 33.207336, 37.394089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861088, 33.518429, 37.171837>,  <35.790539, 33.705086, 37.038486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861088, 33.518429, 37.171837>,  <35.978668, 33.207336, 37.394089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861088, 33.518429, 37.171837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847225, 0.481128, 0.225226,
		0.442495, -0.404540, -0.800341,
		-0.293953, 0.777730, -0.555633,
		35.772903, 33.751747, 37.005146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593975, 33.487350, 36.950626>,  <35.978668, 33.207336, 37.394089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593975, 33.487350, 36.950626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341209, 33.797089, 36.937542>,  <36.189548, 33.982933, 36.929691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341209, 33.797089, 36.937542>,  <36.593975, 33.487350, 36.950626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341209, 33.797089, 36.937542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710092, 0.595359, 0.375921,
		0.310565, 0.214326, -0.926075,
		-0.631917, 0.774346, -0.032706,
		36.151634, 34.029392, 36.927731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053215, 33.942204, 36.666180>,  <36.593975, 33.487350, 36.950626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053215, 33.942204, 36.666180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755333, 34.138912, 36.846657>,  <36.576603, 34.256939, 36.954945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755333, 34.138912, 36.846657>,  <37.053215, 33.942204, 36.666180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755333, 34.138912, 36.846657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655746, 0.664908, 0.357623,
		-0.124132, 0.562192, -0.817638,
		-0.744707, 0.491771, 0.451192,
		36.531921, 34.286442, 36.982014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189377, 34.598667, 36.481064>,  <37.053215, 33.942204, 36.666180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189377, 34.598667, 36.481064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974205, 34.637886, 36.815971>,  <36.845104, 34.661419, 37.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974205, 34.637886, 36.815971>,  <37.189377, 34.598667, 36.481064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974205, 34.637886, 36.815971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513623, 0.825690, 0.233299,
		-0.668451, 0.555539, -0.494520,
		-0.537927, 0.098047, 0.837270,
		36.812828, 34.667301, 37.067154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977345, 35.264004, 36.455032>,  <37.189377, 34.598667, 36.481064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977345, 35.264004, 36.455032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936680, 35.156437, 36.838146>,  <36.912281, 35.091896, 37.068016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936680, 35.156437, 36.838146>,  <36.977345, 35.264004, 36.455032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936680, 35.156437, 36.838146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479764, 0.830160, 0.284008,
		-0.871488, 0.488383, 0.044619,
		-0.101664, -0.268916, 0.957783,
		36.906181, 35.075764, 37.125481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924561, 35.817841, 36.757183>,  <36.977345, 35.264004, 36.455032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924561, 35.817841, 36.757183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025528, 35.597183, 37.075172>,  <37.086109, 35.464790, 37.265965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025528, 35.597183, 37.075172>,  <36.924561, 35.817841, 36.757183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025528, 35.597183, 37.075172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700175, 0.671190, 0.243431,
		-0.667863, 0.495173, 0.555664,
		0.252415, -0.551641, 0.794971,
		37.101254, 35.431690, 37.313663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141609, 36.260201, 37.294449>,  <36.924561, 35.817841, 36.757183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141609, 36.260201, 37.294449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303497, 35.929405, 37.450546>,  <37.400631, 35.730927, 37.544205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303497, 35.929405, 37.450546>,  <37.141609, 36.260201, 37.294449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303497, 35.929405, 37.450546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837101, 0.506823, 0.205895,
		-0.368057, 0.243342, 0.897396,
		0.404718, -0.826992, 0.390241,
		37.424911, 35.681309, 37.567619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288174, 36.381607, 38.090824>,  <37.141609, 36.260201, 37.294449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288174, 36.381607, 38.090824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535244, 36.099628, 37.951382>,  <37.683487, 35.930443, 37.867714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535244, 36.099628, 37.951382>,  <37.288174, 36.381607, 38.090824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535244, 36.099628, 37.951382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767249, 0.637480, 0.070347,
		0.172640, -0.310921, 0.934625,
		0.617677, -0.704945, -0.348608,
		37.720547, 35.888145, 37.846798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879204, 36.402084, 38.546906>,  <37.288174, 36.381607, 38.090824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879204, 36.402084, 38.546906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997444, 36.200256, 38.222427>,  <38.068390, 36.079159, 38.027740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997444, 36.200256, 38.222427>,  <37.879204, 36.402084, 38.546906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997444, 36.200256, 38.222427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913135, 0.398756, 0.084725,
		0.280718, -0.765772, 0.578611,
		0.295604, -0.504566, -0.811191,
		38.086124, 36.048885, 37.979069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494419, 35.972435, 38.782131>,  <37.879204, 36.402084, 38.546906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494419, 35.972435, 38.782131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492561, 36.043400, 38.388481>,  <38.491447, 36.085979, 38.152290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492561, 36.043400, 38.388481>,  <38.494419, 35.972435, 38.782131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492561, 36.043400, 38.388481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918187, 0.390597, 0.066083,
		0.396120, -0.903305, -0.164708,
		-0.004642, 0.177409, -0.984126,
		38.491169, 36.096622, 38.093243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208096, 35.816708, 38.488823>,  <38.494419, 35.972435, 38.782131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208096, 35.816708, 38.488823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065338, 36.048992, 38.196140>,  <38.979683, 36.188362, 38.020531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065338, 36.048992, 38.196140>,  <39.208096, 35.816708, 38.488823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065338, 36.048992, 38.196140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892116, 0.444190, -0.082607,
		0.277047, -0.682250, -0.676594,
		-0.356895, 0.580714, -0.731708,
		38.958271, 36.223206, 37.976627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668770, 35.760876, 38.003632>,  <39.208096, 35.816708, 38.488823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668770, 35.760876, 38.003632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473618, 36.084293, 37.872040>,  <39.356525, 36.278343, 37.793087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473618, 36.084293, 37.872040>,  <39.668770, 35.760876, 38.003632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473618, 36.084293, 37.872040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822270, 0.299198, -0.484100,
		-0.292987, -0.506692, -0.810816,
		-0.487884, 0.808544, -0.328976,
		39.327251, 36.326859, 37.773346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811710, 35.787304, 37.253712>,  <39.668770, 35.760876, 38.003632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811710, 35.787304, 37.253712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699112, 36.152592, 37.371555>,  <39.631554, 36.371765, 37.442261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699112, 36.152592, 37.371555>,  <39.811710, 35.787304, 37.253712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699112, 36.152592, 37.371555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729663, 0.403109, -0.552354,
		-0.623178, 0.059479, -0.779815,
		-0.281497, 0.913217, 0.294608,
		39.614662, 36.426556, 37.459938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610474, 36.321991, 36.716869>,  <39.811710, 35.787304, 37.253712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610474, 36.321991, 36.716869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736984, 36.517200, 37.042274>,  <39.812889, 36.634327, 37.237518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736984, 36.517200, 37.042274>,  <39.610474, 36.321991, 36.716869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736984, 36.517200, 37.042274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827915, 0.276680, -0.487857,
		-0.463168, 0.827817, -0.316534,
		0.316278, 0.488023, 0.813512,
		39.831867, 36.663609, 37.286327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896175, 37.022137, 36.695053>,  <39.610474, 36.321991, 36.716869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896175, 37.022137, 36.695053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873638, 37.246658, 36.364777>,  <39.860115, 37.381371, 36.166611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873638, 37.246658, 36.364777>,  <39.896175, 37.022137, 36.695053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873638, 37.246658, 36.364777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838621, -0.475385, -0.265939,
		-0.541793, 0.677458, 0.497505,
		-0.056344, 0.561302, -0.825691,
		39.856735, 37.415051, 36.117069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174572, 37.331718, 36.623333>,  <39.896175, 37.022137, 36.695053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174572, 37.331718, 36.623333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320766, 37.366673, 36.252651>,  <39.408482, 37.387646, 36.030243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320766, 37.366673, 36.252651>,  <39.174572, 37.331718, 36.623333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320766, 37.366673, 36.252651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895489, -0.238680, -0.375675,
		-0.254015, 0.967158, -0.008982,
		0.365481, 0.087384, -0.926708,
		39.430412, 37.392887, 35.974640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637505, 37.526459, 36.244804>,  <39.174572, 37.331718, 36.623333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637505, 37.526459, 36.244804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889671, 37.410408, 35.956802>,  <39.040970, 37.340778, 35.784000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889671, 37.410408, 35.956802>,  <38.637505, 37.526459, 36.244804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889671, 37.410408, 35.956802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749550, -0.468724, -0.467411,
		-0.201878, 0.834342, -0.512951,
		0.630413, -0.290122, -0.720006,
		39.078796, 37.323372, 35.740799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333839, 37.689228, 35.617687>,  <38.637505, 37.526459, 36.244804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333839, 37.689228, 35.617687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578224, 37.382065, 35.540710>,  <38.724857, 37.197765, 35.494526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578224, 37.382065, 35.540710>,  <38.333839, 37.689228, 35.617687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578224, 37.382065, 35.540710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690078, -0.397471, -0.604821,
		0.387960, 0.502323, -0.772760,
		0.610966, -0.767911, -0.192440,
		38.761513, 37.151691, 35.482979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235603, 37.636997, 34.917652>,  <38.333839, 37.689228, 35.617687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235603, 37.636997, 34.917652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413494, 37.289371, 35.004318>,  <38.520229, 37.080795, 35.056316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413494, 37.289371, 35.004318>,  <38.235603, 37.636997, 34.917652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413494, 37.289371, 35.004318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565538, -0.460048, -0.684487,
		0.694541, 0.181876, -0.696085,
		0.444724, -0.869067, 0.216664,
		38.546913, 37.028652, 35.069317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432426, 37.406551, 34.290756>,  <38.235603, 37.636997, 34.917652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432426, 37.406551, 34.290756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417564, 37.090481, 34.535458>,  <38.408646, 36.900837, 34.682278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417564, 37.090481, 34.535458>,  <38.432426, 37.406551, 34.290756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417564, 37.090481, 34.535458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584544, -0.479333, -0.654636,
		0.810511, -0.381919, -0.444083,
		-0.037155, -0.790176, 0.611753,
		38.406418, 36.853428, 34.718983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483166, 36.737671, 33.848896>,  <38.432426, 37.406551, 34.290756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483166, 36.737671, 33.848896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311165, 36.639763, 34.196503>,  <38.207966, 36.581020, 34.405067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311165, 36.639763, 34.196503>,  <38.483166, 36.737671, 33.848896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311165, 36.639763, 34.196503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595959, -0.646089, -0.476866,
		0.678182, -0.722951, 0.131949,
		-0.430001, -0.244766, 0.869016,
		38.182163, 36.566334, 34.457207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404667, 36.014404, 33.782009>,  <38.483166, 36.737671, 33.848896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404667, 36.014404, 33.782009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161541, 36.095589, 34.089088>,  <38.015663, 36.144299, 34.273335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161541, 36.095589, 34.089088>,  <38.404667, 36.014404, 33.782009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161541, 36.095589, 34.089088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722061, -0.543565, -0.427978,
		0.330430, -0.814458, 0.476942,
		-0.607819, 0.202964, 0.767699,
		37.979195, 36.156479, 34.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254131, 35.408131, 34.117573>,  <38.404667, 36.014404, 33.782009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254131, 35.408131, 34.117573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963100, 35.673672, 34.186771>,  <37.788483, 35.832996, 34.228291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963100, 35.673672, 34.186771>,  <38.254131, 35.408131, 34.117573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963100, 35.673672, 34.186771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659428, -0.607235, -0.443194,
		-0.189167, -0.436536, 0.879575,
		-0.727579, 0.663854, 0.172995,
		37.744827, 35.872829, 34.238670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630341, 35.028603, 34.315952>,  <38.254131, 35.408131, 34.117573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630341, 35.028603, 34.315952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465565, 35.386677, 34.247887>,  <37.366699, 35.601521, 34.207047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465565, 35.386677, 34.247887>,  <37.630341, 35.028603, 34.315952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465565, 35.386677, 34.247887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821973, -0.445660, -0.354610,
		-0.393274, -0.006212, 0.919400,
		-0.411943, 0.895181, -0.170161,
		37.341984, 35.655231, 34.196838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996151, 34.946644, 34.545559>,  <37.630341, 35.028603, 34.315952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996151, 34.946644, 34.545559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948246, 35.255852, 34.296368>,  <36.919502, 35.441376, 34.146854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948246, 35.255852, 34.296368>,  <36.996151, 34.946644, 34.545559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948246, 35.255852, 34.296368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832862, -0.419761, -0.360751,
		-0.540370, 0.475653, 0.694086,
		-0.119758, 0.773016, -0.622979,
		36.912319, 35.487759, 34.109474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329273, 35.306042, 34.717163>,  <36.996151, 34.946644, 34.545559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329273, 35.306042, 34.717163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436760, 35.389706, 34.341068>,  <36.501251, 35.439903, 34.115414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436760, 35.389706, 34.341068>,  <36.329273, 35.306042, 34.717163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436760, 35.389706, 34.341068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805223, -0.486898, -0.338448,
		-0.528588, 0.848047, 0.037581,
		0.268721, 0.209160, -0.940234,
		36.517376, 35.452454, 34.058998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765106, 35.585705, 34.295845>,  <36.329273, 35.306042, 34.717163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765106, 35.585705, 34.295845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996902, 35.425827, 34.011749>,  <36.135979, 35.329899, 33.841293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996902, 35.425827, 34.011749>,  <35.765106, 35.585705, 34.295845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996902, 35.425827, 34.011749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807064, -0.402621, -0.431906,
		-0.113324, 0.823491, -0.555896,
		0.579487, -0.399698, -0.710237,
		36.170750, 35.305916, 33.798679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348892, 35.673550, 33.662407>,  <35.765106, 35.585705, 34.295845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348892, 35.673550, 33.662407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618782, 35.382996, 33.610081>,  <35.780716, 35.208664, 33.578686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618782, 35.382996, 33.610081>,  <35.348892, 35.673550, 33.662407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618782, 35.382996, 33.610081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733850, -0.641318, -0.224000,
		0.078819, 0.247134, -0.965770,
		0.674724, -0.726386, -0.130811,
		35.821198, 35.165081, 33.570839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180706, 35.416637, 33.043781>,  <35.348892, 35.673550, 33.662407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180706, 35.416637, 33.043781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421413, 35.140999, 33.205288>,  <35.565838, 34.975616, 33.302193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421413, 35.140999, 33.205288>,  <35.180706, 35.416637, 33.043781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421413, 35.140999, 33.205288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685542, -0.705035, -0.181541,
		0.409767, -0.167553, -0.896670,
		0.601766, -0.689095, 0.403765,
		35.601944, 34.934269, 33.326416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061695, 34.791992, 32.629047>,  <35.180706, 35.416637, 33.043781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061695, 34.791992, 32.629047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219273, 34.660595, 32.972420>,  <35.313820, 34.581757, 33.178444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219273, 34.660595, 32.972420>,  <35.061695, 34.791992, 32.629047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219273, 34.660595, 32.972420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662542, -0.748820, 0.017505,
		0.637059, -0.575641, -0.512634,
		0.393947, -0.328490, 0.858429,
		35.337456, 34.562050, 33.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304062, 34.006824, 32.488903>,  <35.061695, 34.791992, 32.629047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304062, 34.006824, 32.488903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223103, 34.092438, 32.871155>,  <35.174526, 34.143806, 33.100506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223103, 34.092438, 32.871155>,  <35.304062, 34.006824, 32.488903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223103, 34.092438, 32.871155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584796, -0.809149, 0.057366,
		0.785524, -0.547237, 0.288936,
		-0.202400, 0.214031, 0.955628,
		35.162384, 34.156647, 33.157845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292988, 33.361317, 32.777901>,  <35.304062, 34.006824, 32.488903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292988, 33.361317, 32.777901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100597, 33.577366, 33.054142>,  <34.985165, 33.706997, 33.219887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100597, 33.577366, 33.054142>,  <35.292988, 33.361317, 32.777901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100597, 33.577366, 33.054142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554133, -0.797694, 0.237951,
		0.679410, -0.268235, 0.682973,
		-0.480977, 0.540125, 0.690599,
		34.956303, 33.739403, 33.261322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254997, 32.818153, 33.327908>,  <35.292988, 33.361317, 32.777901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254997, 32.818153, 33.327908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010098, 33.128330, 33.389660>,  <34.863155, 33.314438, 33.426712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010098, 33.128330, 33.389660>,  <35.254997, 32.818153, 33.327908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010098, 33.128330, 33.389660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714797, -0.626312, 0.311126,
		0.337954, 0.080134, 0.937745,
		-0.612253, 0.775443, 0.154384,
		34.826420, 33.360962, 33.435974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008419, 32.750927, 33.969322>,  <35.254997, 32.818153, 33.327908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008419, 32.750927, 33.969322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729370, 32.984264, 33.802933>,  <34.561939, 33.124268, 33.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729370, 32.984264, 33.802933>,  <35.008419, 32.750927, 33.969322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729370, 32.984264, 33.802933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708069, -0.649975, 0.275991,
		-0.109375, 0.487075, 0.866484,
		-0.697621, 0.583344, -0.415974,
		34.520084, 33.159267, 33.678139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389595, 32.837223, 34.473385>,  <35.008419, 32.750927, 33.969322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389595, 32.837223, 34.473385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271168, 32.887783, 34.094677>,  <34.200111, 32.918118, 33.867451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271168, 32.887783, 34.094677>,  <34.389595, 32.837223, 34.473385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271168, 32.887783, 34.094677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605775, -0.791210, 0.083803,
		-0.738500, 0.598340, 0.310816,
		-0.296064, 0.126396, -0.946768,
		34.182350, 32.925701, 33.810646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651348, 32.813881, 34.493561>,  <34.389595, 32.837223, 34.473385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651348, 32.813881, 34.493561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742741, 32.769852, 34.106640>,  <33.797577, 32.743435, 33.874485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742741, 32.769852, 34.106640>,  <33.651348, 32.813881, 34.493561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742741, 32.769852, 34.106640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676296, -0.732660, -0.076372,
		-0.700301, 0.671635, -0.241837,
		0.228479, -0.110070, -0.967307,
		33.811283, 32.736832, 33.816448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063194, 32.651638, 34.202560>,  <33.651348, 32.813881, 34.493561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063194, 32.651638, 34.202560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328270, 32.509148, 33.939060>,  <33.487316, 32.423653, 33.780960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328270, 32.509148, 33.939060>,  <33.063194, 32.651638, 34.202560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328270, 32.509148, 33.939060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652054, -0.707090, -0.273585,
		-0.368337, 0.610841, -0.700857,
		0.662686, -0.356225, -0.658749,
		33.527077, 32.402279, 33.741436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681026, 32.467571, 33.595421>,  <33.063194, 32.651638, 34.202560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681026, 32.467571, 33.595421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014957, 32.254978, 33.538029>,  <33.215317, 32.127422, 33.503593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014957, 32.254978, 33.538029>,  <32.681026, 32.467571, 33.595421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014957, 32.254978, 33.538029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546982, -0.771345, -0.325325,
		0.062233, 0.350071, -0.934653,
		0.834828, -0.531485, -0.143480,
		33.265408, 32.095531, 33.494984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630424, 32.233047, 32.881672>,  <32.681026, 32.467571, 33.595421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630424, 32.233047, 32.881672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884224, 31.990334, 33.073177>,  <33.036503, 31.844706, 33.188080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884224, 31.990334, 33.073177>,  <32.630424, 32.233047, 32.881672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884224, 31.990334, 33.073177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437263, -0.792574, -0.425003,
		0.637344, 0.060318, -0.768215,
		0.634503, -0.606785, 0.478768,
		33.074574, 31.808298, 33.216808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963417, 31.814690, 32.381405>,  <32.630424, 32.233047, 32.881672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963417, 31.814690, 32.381405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009457, 31.595819, 32.713032>,  <33.037083, 31.464499, 32.912006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009457, 31.595819, 32.713032>,  <32.963417, 31.814690, 32.381405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009457, 31.595819, 32.713032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302609, -0.814259, -0.495388,
		0.946139, -0.193863, -0.259303,
		0.115102, -0.547173, 0.829067,
		33.043987, 31.431667, 32.961754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346054, 31.182953, 32.150539>,  <32.963417, 31.814690, 32.381405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346054, 31.182953, 32.150539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132229, 31.085104, 32.474121>,  <33.003933, 31.026396, 32.668270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132229, 31.085104, 32.474121>,  <33.346054, 31.182953, 32.150539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132229, 31.085104, 32.474121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316807, -0.829394, -0.460151,
		0.783502, -0.502261, 0.365866,
		-0.534563, -0.244620, 0.808952,
		32.971859, 31.011719, 32.716808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490685, 30.533781, 32.290051>,  <33.346054, 31.182953, 32.150539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490685, 30.533781, 32.290051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146538, 30.596886, 32.483906>,  <32.940048, 30.634748, 32.600220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146538, 30.596886, 32.483906>,  <33.490685, 30.533781, 32.290051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146538, 30.596886, 32.483906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353325, -0.869929, -0.344071,
		0.367323, -0.467263, 0.804201,
		-0.860369, 0.157760, 0.484641,
		32.888428, 30.644213, 32.629299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332119, 29.887306, 32.668556>,  <33.490685, 30.533781, 32.290051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332119, 29.887306, 32.668556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978516, 30.067831, 32.619823>,  <32.766354, 30.176146, 32.590584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978516, 30.067831, 32.619823>,  <33.332119, 29.887306, 32.668556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978516, 30.067831, 32.619823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402446, -0.867344, -0.292835,
		-0.237834, -0.209836, 0.948369,
		-0.884009, 0.451313, -0.121836,
		32.713314, 30.203224, 32.583271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823837, 29.387978, 32.808502>,  <33.332119, 29.887306, 32.668556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823837, 29.387978, 32.808502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621807, 29.666370, 32.604343>,  <32.500591, 29.833406, 32.481846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621807, 29.666370, 32.604343>,  <32.823837, 29.387978, 32.808502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621807, 29.666370, 32.604343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493628, -0.718047, -0.490653,
		-0.707974, 0.004128, 0.706227,
		-0.505078, 0.695982, -0.510396,
		32.470284, 29.875166, 32.451221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125687, 29.189079, 32.907990>,  <32.823837, 29.387978, 32.808502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125687, 29.189079, 32.907990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180855, 29.393852, 32.568836>,  <32.213955, 29.516716, 32.365345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180855, 29.393852, 32.568836>,  <32.125687, 29.189079, 32.907990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180855, 29.393852, 32.568836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326651, -0.784656, -0.526891,
		-0.935028, 0.349629, 0.059006,
		0.137917, 0.511932, -0.847882,
		32.222229, 29.547432, 32.314472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508030, 28.875055, 32.455833>,  <32.125687, 29.189079, 32.907990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508030, 28.875055, 32.455833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745287, 29.087698, 32.213982>,  <31.887642, 29.215284, 32.068871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745287, 29.087698, 32.213982>,  <31.508030, 28.875055, 32.455833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745287, 29.087698, 32.213982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307776, -0.544233, -0.780438,
		-0.743946, 0.649001, -0.159192,
		0.593143, 0.531608, -0.604627,
		31.923229, 29.247181, 32.032593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062243, 29.019751, 31.925289>,  <31.508030, 28.875055, 32.455833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062243, 29.019751, 31.925289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405590, 29.096731, 31.735062>,  <31.611599, 29.142920, 31.620926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405590, 29.096731, 31.735062>,  <31.062243, 29.019751, 31.925289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405590, 29.096731, 31.735062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354727, -0.447050, -0.821167,
		-0.370636, 0.873561, -0.315467,
		0.858369, 0.192449, -0.475569,
		31.663101, 29.154467, 31.592390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912037, 29.183746, 31.202951>,  <31.062243, 29.019751, 31.925289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912037, 29.183746, 31.202951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303123, 29.100151, 31.210875>,  <31.537775, 29.049994, 31.215630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303123, 29.100151, 31.210875>,  <30.912037, 29.183746, 31.202951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303123, 29.100151, 31.210875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073800, -0.430524, -0.899557,
		0.196526, 0.878051, -0.436354,
		0.977717, -0.208990, 0.019809,
		31.596439, 29.037455, 31.216818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166025, 29.443817, 30.630339>,  <30.912037, 29.183746, 31.202951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166025, 29.443817, 30.630339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418428, 29.148933, 30.726957>,  <31.569870, 28.972002, 30.784929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418428, 29.148933, 30.726957>,  <31.166025, 29.443817, 30.630339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418428, 29.148933, 30.726957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060428, -0.357126, -0.932099,
		0.773417, 0.573568, -0.269898,
		0.631010, -0.737211, 0.241548,
		31.607731, 28.927771, 30.799421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507332, 29.217585, 30.058071>,  <31.166025, 29.443817, 30.630339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507332, 29.217585, 30.058071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558500, 28.899843, 30.295605>,  <31.589201, 28.709198, 30.438126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558500, 28.899843, 30.295605>,  <31.507332, 29.217585, 30.058071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558500, 28.899843, 30.295605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047202, -0.593200, -0.803670,
		0.990660, 0.130837, -0.038388,
		0.127922, -0.794352, 0.593836,
		31.596876, 28.661537, 30.473755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019875, 28.875519, 29.630360>,  <31.507332, 29.217585, 30.058071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019875, 28.875519, 29.630360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862268, 28.608694, 29.883270>,  <31.767704, 28.448599, 30.035017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862268, 28.608694, 29.883270>,  <32.019875, 28.875519, 29.630360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862268, 28.608694, 29.883270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060085, -0.705154, -0.706504,
		0.917136, -0.240385, 0.317924,
		-0.394018, -0.667063, 0.632279,
		31.744062, 28.408575, 30.072954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459873, 28.224665, 29.572735>,  <32.019875, 28.875519, 29.630360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459873, 28.224665, 29.572735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116207, 28.087809, 29.724930>,  <31.910007, 28.005695, 29.816248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116207, 28.087809, 29.724930>,  <32.459873, 28.224665, 29.572735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116207, 28.087809, 29.724930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008328, -0.752837, -0.658154,
		0.511626, -0.562297, 0.649662,
		-0.859168, -0.342139, 0.380488,
		31.858458, 27.985167, 29.839077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239700, 27.854082, 29.071564>,  <32.459873, 28.224665, 29.572735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239700, 27.854082, 29.071564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391781, 27.855028, 28.701605>,  <32.483028, 27.855597, 28.479630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391781, 27.855028, 28.701605>,  <32.239700, 27.854082, 29.071564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391781, 27.855028, 28.701605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817144, 0.467585, 0.337106,
		0.433266, -0.883945, 0.175847,
		0.380206, 0.002365, -0.924899,
		32.505844, 27.855738, 28.424135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013634, 27.728819, 29.150434>,  <32.239700, 27.854082, 29.071564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013634, 27.728819, 29.150434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978477, 27.888489, 28.785374>,  <32.957382, 27.984291, 28.566338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978477, 27.888489, 28.785374>,  <33.013634, 27.728819, 29.150434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978477, 27.888489, 28.785374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782276, 0.594875, 0.184847,
		0.616701, -0.697700, -0.364548,
		-0.087892, 0.399172, -0.912653,
		32.952110, 28.008240, 28.511578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715473, 27.896795, 28.951841>,  <33.013634, 27.728819, 29.150434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715473, 27.896795, 28.951841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520546, 28.116440, 28.680254>,  <33.403587, 28.248226, 28.517302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520546, 28.116440, 28.680254>,  <33.715473, 27.896795, 28.951841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520546, 28.116440, 28.680254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701179, 0.709489, 0.070531,
		0.520449, -0.441706, -0.730773,
		-0.487321, 0.549110, -0.678967,
		33.374352, 28.281174, 28.476564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178974, 28.105083, 28.508020>,  <33.715473, 27.896795, 28.951841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178974, 28.105083, 28.508020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890774, 28.372452, 28.434170>,  <33.717854, 28.532873, 28.389860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890774, 28.372452, 28.434170>,  <34.178974, 28.105083, 28.508020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890774, 28.372452, 28.434170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684694, 0.727906, -0.036714,
		0.109850, -0.152865, -0.982123,
		-0.720505, 0.668420, -0.184626,
		33.674622, 28.572977, 28.378782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415279, 28.485060, 27.897167>,  <34.178974, 28.105083, 28.508020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415279, 28.485060, 27.897167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139194, 28.713943, 28.074335>,  <33.973541, 28.851274, 28.180635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139194, 28.713943, 28.074335>,  <34.415279, 28.485060, 27.897167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139194, 28.713943, 28.074335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616564, 0.785456, -0.053923,
		-0.378749, 0.235869, -0.894938,
		-0.690216, 0.572210, 0.442919,
		33.932129, 28.885607, 28.207211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274776, 29.086803, 27.397673>,  <34.415279, 28.485060, 27.897167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274776, 29.086803, 27.397673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163044, 29.190546, 27.767475>,  <34.096004, 29.252790, 27.989357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163044, 29.190546, 27.767475>,  <34.274776, 29.086803, 27.397673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163044, 29.190546, 27.767475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537765, 0.839916, -0.073146,
		-0.795477, 0.476735, -0.374085,
		-0.279329, 0.259356, 0.924505,
		34.079247, 29.268353, 28.044827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135826, 29.824091, 27.330410>,  <34.274776, 29.086803, 27.397673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135826, 29.824091, 27.330410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175480, 29.750698, 27.721615>,  <34.199272, 29.706663, 27.956337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175480, 29.750698, 27.721615>,  <34.135826, 29.824091, 27.330410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175480, 29.750698, 27.721615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610854, 0.787086, 0.085745,
		-0.785512, 0.588922, 0.190109,
		0.099135, -0.183483, 0.978012,
		34.205219, 29.695654, 28.015018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907913, 30.438715, 27.654398>,  <34.135826, 29.824091, 27.330410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907913, 30.438715, 27.654398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148445, 30.255653, 27.916378>,  <34.292763, 30.145817, 28.073566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148445, 30.255653, 27.916378>,  <33.907913, 30.438715, 27.654398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148445, 30.255653, 27.916378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508143, 0.851627, 0.128543,
		-0.616601, 0.255512, 0.744659,
		0.601327, -0.457652, 0.654951,
		34.328842, 30.118359, 28.112864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867397, 30.893772, 28.266718>,  <33.907913, 30.438715, 27.654398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867397, 30.893772, 28.266718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199604, 30.674488, 28.306133>,  <34.398926, 30.542917, 28.329782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199604, 30.674488, 28.306133>,  <33.867397, 30.893772, 28.266718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199604, 30.674488, 28.306133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500020, 0.811742, 0.301753,
		-0.245411, -0.201340, 0.948280,
		0.830514, -0.548212, 0.098537,
		34.448757, 30.510025, 28.335693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179966, 31.155172, 28.873192>,  <33.867397, 30.893772, 28.266718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179966, 31.155172, 28.873192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484230, 30.966768, 28.694510>,  <34.666790, 30.853725, 28.587299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484230, 30.966768, 28.694510>,  <34.179966, 31.155172, 28.873192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484230, 30.966768, 28.694510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632080, 0.694174, 0.344379,
		0.147887, -0.544310, 0.825746,
		0.760660, -0.471008, -0.446707,
		34.712429, 30.825466, 28.560497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728413, 31.080784, 29.313292>,  <34.179966, 31.155172, 28.873192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728413, 31.080784, 29.313292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921799, 31.029230, 28.966963>,  <35.037830, 30.998299, 28.759165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921799, 31.029230, 28.966963>,  <34.728413, 31.080784, 29.313292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921799, 31.029230, 28.966963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587571, 0.780950, 0.211842,
		0.648862, -0.611151, 0.453291,
		0.483465, -0.128884, -0.865824,
		35.066837, 30.990564, 28.707216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378548, 31.130640, 29.482506>,  <34.728413, 31.080784, 29.313292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378548, 31.130640, 29.482506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332611, 31.234722, 29.099026>,  <35.305050, 31.297171, 28.868938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332611, 31.234722, 29.099026>,  <35.378548, 31.130640, 29.482506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332611, 31.234722, 29.099026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519547, 0.838301, 0.165290,
		0.846689, -0.479108, -0.231460,
		-0.114842, 0.260204, -0.958700,
		35.298157, 31.312784, 28.811417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098969, 31.272343, 29.220503>,  <35.378548, 31.130640, 29.482506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098969, 31.272343, 29.220503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804768, 31.462797, 29.027702>,  <35.628246, 31.577070, 28.912022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804768, 31.462797, 29.027702>,  <36.098969, 31.272343, 29.220503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804768, 31.462797, 29.027702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449070, 0.875301, 0.179399,
		0.507316, -0.084504, -0.857607,
		-0.735505, 0.476137, -0.482002,
		35.584118, 31.605639, 28.883102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427757, 31.901825, 29.006992>,  <36.098969, 31.272343, 29.220503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427757, 31.901825, 29.006992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037609, 31.945786, 28.930492>,  <35.803520, 31.972162, 28.884592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037609, 31.945786, 28.930492>,  <36.427757, 31.901825, 29.006992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037609, 31.945786, 28.930492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129130, 0.987431, -0.091134,
		0.178828, -0.113585, -0.977302,
		-0.975370, 0.109902, -0.191248,
		35.744999, 31.978756, 28.873117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369179, 32.246178, 28.412151>,  <36.427757, 31.901825, 29.006992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369179, 32.246178, 28.412151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063362, 32.316303, 28.660265>,  <35.879871, 32.358379, 28.809134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063362, 32.316303, 28.660265>,  <36.369179, 32.246178, 28.412151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063362, 32.316303, 28.660265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310376, 0.943523, 0.115892,
		-0.564933, 0.281125, -0.775770,
		-0.764537, 0.175309, 0.620282,
		35.834000, 32.368896, 28.846350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023163, 32.985191, 28.310741>,  <36.369179, 32.246178, 28.412151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023163, 32.985191, 28.310741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935787, 32.867577, 28.682940>,  <35.883362, 32.797009, 28.906260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935787, 32.867577, 28.682940>,  <36.023163, 32.985191, 28.310741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935787, 32.867577, 28.682940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376300, 0.854399, 0.358330,
		-0.900379, 0.428419, -0.075987,
		-0.218439, -0.294039, 0.930498,
		35.870255, 32.779366, 28.962090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856335, 33.582798, 28.605148>,  <36.023163, 32.985191, 28.310741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856335, 33.582798, 28.605148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937428, 33.341549, 28.913731>,  <35.986084, 33.196800, 29.098881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937428, 33.341549, 28.913731>,  <35.856335, 33.582798, 28.605148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937428, 33.341549, 28.913731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235156, 0.794748, 0.559533,
		-0.950579, 0.067975, 0.302951,
		0.202735, -0.603121, 0.771455,
		35.998249, 33.160614, 29.145166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636639, 33.942226, 29.238150>,  <35.856335, 33.582798, 28.605148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636639, 33.942226, 29.238150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888676, 33.676342, 29.398714>,  <36.039898, 33.516811, 29.495052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888676, 33.676342, 29.398714>,  <35.636639, 33.942226, 29.238150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888676, 33.676342, 29.398714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309917, 0.689255, 0.654889,
		-0.711990, -0.288238, 0.640303,
		0.630096, -0.664716, 0.401413,
		36.077705, 33.476929, 29.519138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629101, 34.099072, 29.875334>,  <35.636639, 33.942226, 29.238150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629101, 34.099072, 29.875334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971481, 33.892323, 29.869864>,  <36.176910, 33.768272, 29.866581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971481, 33.892323, 29.869864>,  <35.629101, 34.099072, 29.875334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971481, 33.892323, 29.869864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373690, 0.600119, 0.707257,
		-0.357358, -0.610488, 0.706824,
		0.855950, -0.516877, -0.013676,
		36.228268, 33.737259, 29.865761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934692, 33.893726, 30.681307>,  <35.629101, 34.099072, 29.875334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934692, 33.893726, 30.681307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242329, 33.893505, 30.425650>,  <36.426910, 33.893372, 30.272255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242329, 33.893505, 30.425650>,  <35.934692, 33.893726, 30.681307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242329, 33.893505, 30.425650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572452, 0.445344, 0.688453,
		0.284260, -0.895360, 0.342823,
		0.769087, -0.000550, -0.639143,
		36.473053, 33.893341, 30.233906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459179, 33.869221, 31.141552>,  <35.934692, 33.893726, 30.681307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459179, 33.869221, 31.141552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644581, 33.999813, 30.812050>,  <36.755821, 34.078167, 30.614349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644581, 33.999813, 30.812050>,  <36.459179, 33.869221, 31.141552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644581, 33.999813, 30.812050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612362, 0.553908, 0.564092,
		0.640450, -0.765896, 0.056814,
		0.463505, 0.326482, -0.823755,
		36.783634, 34.097759, 30.564924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106956, 33.732338, 31.288862>,  <36.459179, 33.869221, 31.141552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106956, 33.732338, 31.288862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080372, 34.015411, 31.007504>,  <37.064419, 34.185257, 30.838688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080372, 34.015411, 31.007504>,  <37.106956, 33.732338, 31.288862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080372, 34.015411, 31.007504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605299, 0.589021, 0.535414,
		0.793219, -0.390179, -0.467508,
		-0.066464, 0.707683, -0.703397,
		37.060432, 34.227715, 30.796484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749409, 34.005970, 31.309874>,  <37.106956, 33.732338, 31.288862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749409, 34.005970, 31.309874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547398, 34.287155, 31.109556>,  <37.426193, 34.455868, 30.989367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547398, 34.287155, 31.109556>,  <37.749409, 34.005970, 31.309874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547398, 34.287155, 31.109556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429926, 0.708004, 0.560262,
		0.748407, 0.067642, -0.659781,
		-0.505025, 0.702962, -0.500794,
		37.395889, 34.498043, 30.959318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245907, 34.598537, 31.126308>,  <37.749409, 34.005970, 31.309874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245907, 34.598537, 31.126308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869404, 34.733189, 31.115538>,  <37.643501, 34.813980, 31.109076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869404, 34.733189, 31.115538>,  <38.245907, 34.598537, 31.126308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869404, 34.733189, 31.115538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283891, 0.831933, 0.476753,
		0.182888, 0.441101, -0.878625,
		-0.941253, 0.336626, -0.026926,
		37.587029, 34.834175, 31.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411007, 35.187336, 30.880880>,  <38.245907, 34.598537, 31.126308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411007, 35.187336, 30.880880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056377, 35.194527, 31.065779>,  <37.843601, 35.198841, 31.176718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056377, 35.194527, 31.065779>,  <38.411007, 35.187336, 30.880880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056377, 35.194527, 31.065779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239393, 0.872868, 0.425198,
		-0.395833, 0.487626, -0.778163,
		-0.886571, 0.017980, 0.462244,
		37.790405, 35.199921, 31.204453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149731, 35.794498, 30.775227>,  <38.411007, 35.187336, 30.880880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149731, 35.794498, 30.775227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944916, 35.667770, 31.094587>,  <37.822025, 35.591732, 31.286203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944916, 35.667770, 31.094587>,  <38.149731, 35.794498, 30.775227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944916, 35.667770, 31.094587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127419, 0.891192, 0.435363,
		-0.849460, 0.324653, -0.415954,
		-0.512036, -0.316823, 0.798400,
		37.791306, 35.572723, 31.334106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649006, 36.280643, 30.827513>,  <38.149731, 35.794498, 30.775227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649006, 36.280643, 30.827513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653786, 36.102489, 31.185616>,  <37.656654, 35.995598, 31.400478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653786, 36.102489, 31.185616>,  <37.649006, 36.280643, 30.827513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653786, 36.102489, 31.185616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136957, 0.887614, 0.439755,
		-0.990505, 0.117358, 0.071604,
		0.011948, -0.445386, 0.895259,
		37.657372, 35.968872, 31.454193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212841, 36.844021, 31.272123>,  <37.649006, 36.280643, 30.827513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212841, 36.844021, 31.272123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436329, 36.595116, 31.491440>,  <37.570423, 36.445774, 31.623030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436329, 36.595116, 31.491440>,  <37.212841, 36.844021, 31.272123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436329, 36.595116, 31.491440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325317, 0.772557, 0.545275,
		-0.762887, -0.126290, 0.634077,
		0.558723, -0.622259, 0.548290,
		37.603947, 36.408440, 31.655926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153194, 37.189480, 31.828043>,  <37.212841, 36.844021, 31.272123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153194, 37.189480, 31.828043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439388, 36.933372, 31.939848>,  <37.611107, 36.779709, 32.006931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439388, 36.933372, 31.939848>,  <37.153194, 37.189480, 31.828043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439388, 36.933372, 31.939848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352819, 0.676478, 0.646449,
		-0.602988, -0.363909, 0.709913,
		0.715489, -0.640271, 0.279514,
		37.654034, 36.741291, 32.023701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101707, 37.262203, 32.526508>,  <37.153194, 37.189480, 31.828043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101707, 37.262203, 32.526508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454975, 37.137066, 32.386715>,  <37.666935, 37.061985, 32.302841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454975, 37.137066, 32.386715>,  <37.101707, 37.262203, 32.526508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454975, 37.137066, 32.386715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465546, 0.675528, 0.571777,
		0.057207, -0.667677, 0.742250,
		0.883173, -0.312842, -0.349480,
		37.719929, 37.043213, 32.281872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506229, 37.186951, 33.026779>,  <37.101707, 37.262203, 32.526508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506229, 37.186951, 33.026779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777077, 37.234833, 32.736347>,  <37.939583, 37.263561, 32.562088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777077, 37.234833, 32.736347>,  <37.506229, 37.186951, 33.026779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777077, 37.234833, 32.736347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451620, 0.711409, 0.538457,
		0.580994, -0.692508, 0.427643,
		0.677115, 0.119708, -0.726075,
		37.980209, 37.270744, 32.518524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150757, 37.158890, 33.341572>,  <37.506229, 37.186951, 33.026779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150757, 37.158890, 33.341572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241646, 37.329647, 32.991455>,  <38.296177, 37.432102, 32.781384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241646, 37.329647, 32.991455>,  <38.150757, 37.158890, 33.341572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241646, 37.329647, 32.991455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624186, 0.626065, 0.467371,
		0.747505, -0.652541, -0.124204,
		0.227219, 0.426889, -0.875293,
		38.309811, 37.457714, 32.728867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890034, 37.092022, 33.172237>,  <38.150757, 37.158890, 33.341572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890034, 37.092022, 33.172237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746925, 37.416439, 32.987106>,  <38.661060, 37.611088, 32.876026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746925, 37.416439, 32.987106>,  <38.890034, 37.092022, 33.172237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746925, 37.416439, 32.987106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637044, 0.574379, 0.514066,
		0.682767, -0.110923, -0.722167,
		-0.357776, 0.811040, -0.462830,
		38.639591, 37.659752, 32.848259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433376, 37.373749, 32.957031>,  <38.890034, 37.092022, 33.172237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433376, 37.373749, 32.957031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162247, 37.665550, 32.920410>,  <38.999569, 37.840630, 32.898438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162247, 37.665550, 32.920410>,  <39.433376, 37.373749, 32.957031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162247, 37.665550, 32.920410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654959, 0.655703, 0.375608,
		0.334040, 0.194631, -0.922245,
		-0.677824, 0.729501, -0.091556,
		38.958900, 37.884399, 32.892944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725941, 37.928001, 32.593830>,  <39.433376, 37.373749, 32.957031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725941, 37.928001, 32.593830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425846, 38.079723, 32.810448>,  <39.245789, 38.170757, 32.940418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425846, 38.079723, 32.810448>,  <39.725941, 37.928001, 32.593830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425846, 38.079723, 32.810448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608374, 0.716756, 0.340797,
		-0.258887, 0.585139, -0.768498,
		-0.750239, 0.379307, 0.541542,
		39.200775, 38.193516, 32.972912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861744, 38.736080, 32.472591>,  <39.725941, 37.928001, 32.593830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861744, 38.736080, 32.472591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631161, 38.693775, 32.796692>,  <39.492813, 38.668392, 32.991154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631161, 38.693775, 32.796692>,  <39.861744, 38.736080, 32.472591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631161, 38.693775, 32.796692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640908, 0.556587, 0.528628,
		-0.506888, 0.824029, -0.253061,
		-0.576456, -0.105767, 0.810254,
		39.458225, 38.662045, 33.039768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725143, 39.376732, 32.733120>,  <39.861744, 38.736080, 32.472591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725143, 39.376732, 32.733120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627167, 39.151272, 33.048664>,  <39.568382, 39.015995, 33.237991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627167, 39.151272, 33.048664>,  <39.725143, 39.376732, 32.733120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627167, 39.151272, 33.048664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612725, 0.540573, 0.576497,
		-0.751381, 0.624560, 0.212958,
		-0.244938, -0.563654, 0.788860,
		39.553684, 38.982174, 33.285320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602470, 39.853138, 33.280380>,  <39.725143, 39.376732, 32.733120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602470, 39.853138, 33.280380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646416, 39.510849, 33.482632>,  <39.672783, 39.305473, 33.603985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646416, 39.510849, 33.482632>,  <39.602470, 39.853138, 33.280380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646416, 39.510849, 33.482632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613495, 0.458626, 0.642874,
		-0.782019, 0.239574, 0.575370,
		0.109864, -0.855726, 0.505631,
		39.679375, 39.254131, 33.634319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491615, 40.025932, 33.931080>,  <39.602470, 39.853138, 33.280380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491615, 40.025932, 33.931080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715652, 39.695320, 33.953522>,  <39.850075, 39.496952, 33.966988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715652, 39.695320, 33.953522>,  <39.491615, 40.025932, 33.931080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715652, 39.695320, 33.953522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512606, 0.398978, 0.760297,
		-0.650792, -0.397076, 0.647147,
		0.560093, -0.826527, 0.056108,
		39.883682, 39.447361, 33.970356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591221, 39.913830, 34.648235>,  <39.491615, 40.025932, 33.931080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591221, 39.913830, 34.648235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905804, 39.745777, 34.467140>,  <40.094555, 39.644943, 34.358482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905804, 39.745777, 34.467140>,  <39.591221, 39.913830, 34.648235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905804, 39.745777, 34.467140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616987, 0.500620, 0.607212,
		-0.028463, -0.756879, 0.652935,
		0.786458, -0.420136, -0.452735,
		40.141743, 39.619736, 34.331318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033581, 39.661766, 35.147076>,  <39.591221, 39.913830, 34.648235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033581, 39.661766, 35.147076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254768, 39.699135, 34.815895>,  <40.387482, 39.721554, 34.617188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254768, 39.699135, 34.815895>,  <40.033581, 39.661766, 35.147076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254768, 39.699135, 34.815895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741602, 0.397782, 0.540181,
		0.379805, -0.912712, 0.150682,
		0.552968, 0.093418, -0.827948,
		40.420658, 39.727161, 34.567509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597115, 40.078304, 35.494484>,  <40.033581, 39.661766, 35.147076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597115, 40.078304, 35.494484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490524, 39.697006, 35.437473>,  <39.426571, 39.468227, 35.403267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490524, 39.697006, 35.437473>,  <39.597115, 40.078304, 35.494484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490524, 39.697006, 35.437473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855982, -0.302025, 0.419614,
		-0.443042, -0.010184, 0.896443,
		-0.266475, -0.953245, -0.142527,
		39.410583, 39.411034, 35.394714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582043, 39.793385, 36.143028>,  <39.597115, 40.078304, 35.494484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582043, 39.793385, 36.143028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648640, 39.499878, 35.879555>,  <39.688599, 39.323776, 35.721470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648640, 39.499878, 35.879555>,  <39.582043, 39.793385, 36.143028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648640, 39.499878, 35.879555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625009, -0.438141, 0.646062,
		-0.762655, -0.519253, 0.385660,
		0.166496, -0.733763, -0.658688,
		39.698589, 39.279747, 35.681950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600529, 39.014137, 36.527382>,  <39.582043, 39.793385, 36.143028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600529, 39.014137, 36.527382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820210, 39.021385, 36.193184>,  <39.952019, 39.025734, 35.992664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820210, 39.021385, 36.193184>,  <39.600529, 39.014137, 36.527382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820210, 39.021385, 36.193184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768947, -0.402466, 0.496731,
		-0.327255, -0.915255, -0.234972,
		0.549204, 0.018123, -0.835492,
		39.984970, 39.026821, 35.942535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984348, 39.256573, 36.836895>,  <39.600529, 39.014137, 36.527382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984348, 39.256573, 36.836895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833782, 39.585003, 37.008549>,  <38.743443, 39.782059, 37.111542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833782, 39.585003, 37.008549>,  <38.984348, 39.256573, 36.836895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833782, 39.585003, 37.008549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911126, -0.411983, -0.010935,
		0.167817, -0.395110, 0.903175,
		-0.376413, 0.821072, 0.429133,
		38.720860, 39.831326, 37.137287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450771, 38.948475, 37.100185>,  <38.984348, 39.256573, 36.836895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450771, 38.948475, 37.100185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355637, 39.336945, 37.106571>,  <38.298553, 39.570026, 37.110405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355637, 39.336945, 37.106571>,  <38.450771, 38.948475, 37.100185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355637, 39.336945, 37.106571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964696, -0.238104, 0.112553,
		0.113111, 0.011367, 0.993517,
		-0.237840, 0.971173, 0.015966,
		38.284283, 39.628296, 37.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951572, 39.038280, 37.674839>,  <38.450771, 38.948475, 37.100185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951572, 39.038280, 37.674839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896637, 39.355587, 37.437565>,  <37.863674, 39.545971, 37.295200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896637, 39.355587, 37.437565>,  <37.951572, 39.038280, 37.674839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896637, 39.355587, 37.437565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990253, -0.123959, 0.063499,
		-0.023160, 0.596127, 0.802556,
		-0.137337, 0.793263, -0.593188,
		37.855434, 39.593567, 37.259609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652615, 39.628914, 38.021656>,  <37.951572, 39.038280, 37.674839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652615, 39.628914, 38.021656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563530, 39.653057, 37.632450>,  <37.510078, 39.667542, 37.398926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563530, 39.653057, 37.632450>,  <37.652615, 39.628914, 38.021656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563530, 39.653057, 37.632450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966540, 0.116645, 0.228462,
		0.127287, 0.991338, 0.032361,
		-0.222708, 0.060358, -0.973015,
		37.496719, 39.671165, 37.340546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287441, 40.171604, 38.115360>,  <37.652615, 39.628914, 38.021656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287441, 40.171604, 38.115360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198219, 39.966602, 37.783676>,  <37.144688, 39.843601, 37.584667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198219, 39.966602, 37.783676>,  <37.287441, 40.171604, 38.115360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198219, 39.966602, 37.783676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971488, 0.046737, 0.232436,
		-0.080370, 0.857412, -0.508316,
		-0.223051, -0.512504, -0.829209,
		37.131306, 39.812851, 37.534912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770638, 40.467453, 37.840809>,  <37.287441, 40.171604, 38.115360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770638, 40.467453, 37.840809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775204, 40.083111, 37.730083>,  <36.777943, 39.852505, 37.663651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775204, 40.083111, 37.730083>,  <36.770638, 40.467453, 37.840809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775204, 40.083111, 37.730083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957107, -0.090648, 0.275189,
		-0.289510, 0.261797, -0.920677,
		0.011414, -0.960857, -0.276811,
		36.778629, 39.794853, 37.647041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223797, 40.310303, 37.548584>,  <36.770638, 40.467453, 37.840809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223797, 40.310303, 37.548584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313431, 39.946121, 37.687645>,  <36.367210, 39.727612, 37.771080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313431, 39.946121, 37.687645>,  <36.223797, 40.310303, 37.548584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313431, 39.946121, 37.687645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920679, -0.080787, 0.381868,
		-0.319588, -0.405642, -0.856340,
		0.224083, -0.910455, 0.347648,
		36.380657, 39.672985, 37.791939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589512, 39.904263, 37.471687>,  <36.223797, 40.310303, 37.548584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589512, 39.904263, 37.471687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808548, 39.754707, 37.771114>,  <35.939968, 39.664974, 37.950771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808548, 39.754707, 37.771114>,  <35.589512, 39.904263, 37.471687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808548, 39.754707, 37.771114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790737, 0.061346, 0.609075,
		-0.273646, -0.925444, -0.262053,
		0.547589, -0.373885, 0.748570,
		35.972824, 39.642540, 37.995686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099781, 39.472992, 37.841068>,  <35.589512, 39.904263, 37.471687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099781, 39.472992, 37.841068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402985, 39.572395, 38.082291>,  <35.584908, 39.632038, 38.227024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402985, 39.572395, 38.082291>,  <35.099781, 39.472992, 37.841068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402985, 39.572395, 38.082291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639743, 0.103083, 0.761645,
		0.127112, -0.963129, 0.237120,
		0.758005, 0.248510, 0.603052,
		35.630386, 39.646946, 38.263206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718700, 39.333755, 38.372112>,  <35.099781, 39.472992, 37.841068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718700, 39.333755, 38.372112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066051, 39.499382, 38.481262>,  <35.274464, 39.598759, 38.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066051, 39.499382, 38.481262>,  <34.718700, 39.333755, 38.372112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066051, 39.499382, 38.481262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407572, 0.282484, 0.868382,
		0.282484, -0.865305, 0.414066,
		-0.868382, -0.414066, -0.272877,
		35.326565, 39.623600, 38.563126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875027, 39.154675, 39.056889>,  <34.718700, 39.333755, 38.372112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875027, 39.154675, 39.056889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091225, 39.484562, 38.990299>,  <35.220943, 39.682495, 38.950344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091225, 39.484562, 38.990299>,  <34.875027, 39.154675, 39.056889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091225, 39.484562, 38.990299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343786, 0.397080, 0.850964,
		0.767905, -0.402709, 0.498144,
		0.540493, 0.824714, -0.166474,
		35.253372, 39.731976, 38.940357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333740, 39.264027, 39.613956>,  <34.875027, 39.154675, 39.056889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333740, 39.264027, 39.613956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224743, 39.605679, 39.436771>,  <35.159344, 39.810669, 39.330460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224743, 39.605679, 39.436771>,  <35.333740, 39.264027, 39.613956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224743, 39.605679, 39.436771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320596, 0.353476, 0.878791,
		0.907175, 0.381477, 0.177509,
		-0.272493, 0.854126, -0.442964,
		35.142994, 39.861916, 39.303883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663876, 39.870209, 39.921497>,  <35.333740, 39.264027, 39.613956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663876, 39.870209, 39.921497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294594, 39.954735, 39.793095>,  <35.073025, 40.005451, 39.716053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294594, 39.954735, 39.793095>,  <35.663876, 39.870209, 39.921497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294594, 39.954735, 39.793095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303563, 0.111292, 0.946289,
		0.235689, 0.971062, -0.038598,
		-0.923201, 0.211313, -0.321009,
		35.017635, 40.018127, 39.696793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372528, 40.562557, 40.301125>,  <35.663876, 39.870209, 39.921497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372528, 40.562557, 40.301125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070438, 40.337936, 40.165890>,  <34.889187, 40.203163, 40.084751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070438, 40.337936, 40.165890>,  <35.372528, 40.562557, 40.301125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070438, 40.337936, 40.165890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478385, 0.119602, 0.869967,
		-0.448096, 0.818752, -0.358964,
		-0.755220, -0.561552, -0.338085,
		34.843872, 40.169472, 40.064465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155174, 40.109886, 40.862720>,  <35.372528, 40.562557, 40.301125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155174, 40.109886, 40.862720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058670, 39.861610, 40.564316>,  <35.000767, 39.712643, 40.385273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058670, 39.861610, 40.564316>,  <35.155174, 40.109886, 40.862720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058670, 39.861610, 40.564316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944040, 0.328256, 0.032195,
		0.224899, 0.712031, -0.665156,
		-0.241265, -0.620694, -0.746010,
		34.986290, 39.675404, 40.340511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313946, 39.331585, 41.046043>,  <35.155174, 40.109886, 40.862720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313946, 39.331585, 41.046043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024078, 39.318886, 41.321388>,  <34.850159, 39.311268, 41.486595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024078, 39.318886, 41.321388>,  <35.313946, 39.331585, 41.046043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024078, 39.318886, 41.321388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019033, -0.997635, -0.066050,
		0.688831, -0.060967, 0.722354,
		-0.724673, -0.031749, 0.688362,
		34.806675, 39.309361, 41.527897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480343, 38.750294, 41.541782>,  <35.313946, 39.331585, 41.046043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480343, 38.750294, 41.541782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087635, 38.815800, 41.580391>,  <34.852013, 38.855103, 41.603554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087635, 38.815800, 41.580391>,  <35.480343, 38.750294, 41.541782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087635, 38.815800, 41.580391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169486, -0.984030, -0.054395,
		0.086069, -0.069761, 0.993844,
		-0.981767, 0.163761, 0.096518,
		34.793106, 38.864929, 41.609344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049423, 38.523998, 42.156898>,  <35.480343, 38.750294, 41.541782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049423, 38.523998, 42.156898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900002, 38.481880, 41.788254>,  <34.810349, 38.456608, 41.567066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900002, 38.481880, 41.788254>,  <35.049423, 38.523998, 42.156898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900002, 38.481880, 41.788254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120170, -0.990657, 0.064476,
		-0.919793, -0.086665, 0.382714,
		-0.373551, -0.105296, -0.921614,
		34.787937, 38.450291, 41.511768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484661, 38.034683, 41.985729>,  <35.049423, 38.523998, 42.156898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484661, 38.034683, 41.985729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754833, 38.041302, 41.690834>,  <34.916935, 38.045273, 41.513897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754833, 38.041302, 41.690834>,  <34.484661, 38.034683, 41.985729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754833, 38.041302, 41.690834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160951, -0.978953, 0.125482,
		-0.719649, -0.203414, -0.663874,
		0.675426, 0.016548, -0.737242,
		34.957462, 38.046265, 41.469662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266716, 37.623180, 41.368851>,  <34.484661, 38.034683, 41.985729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266716, 37.623180, 41.368851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665325, 37.621872, 41.402149>,  <34.904491, 37.621086, 41.422127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665325, 37.621872, 41.402149>,  <34.266716, 37.623180, 41.368851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665325, 37.621872, 41.402149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008099, -0.990691, -0.135886,
		0.082913, 0.136088, -0.987221,
		0.996524, -0.003271, 0.083244,
		34.964283, 37.620892, 41.427124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455059, 37.164944, 41.996109>,  <34.266716, 37.623180, 41.368851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455059, 37.164944, 41.996109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458427, 36.939682, 41.665585>,  <34.460449, 36.804523, 41.467270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458427, 36.939682, 41.665585>,  <34.455059, 37.164944, 41.996109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458427, 36.939682, 41.665585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698268, -0.588189, 0.407990,
		-0.715787, -0.580422, 0.388278,
		0.008425, -0.563156, -0.826308,
		34.460957, 36.770737, 41.417690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506119, 36.543606, 42.218735>,  <34.455059, 37.164944, 41.996109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506119, 36.543606, 42.218735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639771, 36.526089, 41.842133>,  <34.719963, 36.515579, 41.616169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639771, 36.526089, 41.842133>,  <34.506119, 36.543606, 42.218735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639771, 36.526089, 41.842133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826499, -0.466546, 0.315016,
		-0.453051, -0.883412, -0.119698,
		0.334133, -0.043788, -0.941508,
		34.740009, 36.512951, 41.559681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529320, 35.826431, 42.047031>,  <34.506119, 36.543606, 42.218735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529320, 35.826431, 42.047031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778591, 36.097595, 41.891037>,  <34.928154, 36.260292, 41.797440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778591, 36.097595, 41.891037>,  <34.529320, 35.826431, 42.047031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778591, 36.097595, 41.891037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753298, -0.386267, 0.532297,
		0.210212, -0.625489, -0.751382,
		0.623180, 0.677909, -0.389982,
		34.965546, 36.300968, 41.774044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143074, 35.473095, 41.757580>,  <34.529320, 35.826431, 42.047031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143074, 35.473095, 41.757580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216503, 35.842850, 41.891335>,  <35.260559, 36.064701, 41.971588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216503, 35.842850, 41.891335>,  <35.143074, 35.473095, 41.757580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216503, 35.842850, 41.891335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661006, -0.367858, 0.654027,
		0.727579, 0.100972, -0.678552,
		0.183573, 0.924384, 0.334389,
		35.271576, 36.120163, 41.991650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785748, 35.539711, 41.959480>,  <35.143074, 35.473095, 41.757580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785748, 35.539711, 41.959480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622116, 35.839951, 42.167042>,  <35.523937, 36.020092, 42.291580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622116, 35.839951, 42.167042>,  <35.785748, 35.539711, 41.959480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622116, 35.839951, 42.167042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562305, -0.240509, 0.791182,
		0.718659, 0.615436, -0.323677,
		-0.409075, 0.750595, 0.518906,
		35.499393, 36.065128, 42.322712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238434, 36.050156, 42.184002>,  <35.785748, 35.539711, 41.959480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238434, 36.050156, 42.184002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934162, 35.952435, 42.424561>,  <35.751598, 35.893803, 42.568897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934162, 35.952435, 42.424561>,  <36.238434, 36.050156, 42.184002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934162, 35.952435, 42.424561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647279, -0.215635, 0.731117,
		-0.048933, 0.945419, 0.322163,
		-0.760681, -0.244305, 0.601398,
		35.705959, 35.879143, 42.604980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756336, 36.391148, 41.798763>,  <36.238434, 36.050156, 42.184002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756336, 36.391148, 41.798763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105492, 36.494865, 41.964092>,  <37.314983, 36.557095, 42.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105492, 36.494865, 41.964092>,  <36.756336, 36.391148, 41.798763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105492, 36.494865, 41.964092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395172, -0.872571, -0.287158,
		0.286190, 0.413989, -0.864123,
		0.872888, 0.259295, 0.413318,
		37.367359, 36.572655, 42.088089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343742, 36.550629, 41.324371>,  <36.756336, 36.391148, 41.798763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343742, 36.550629, 41.324371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466206, 36.388790, 41.669060>,  <37.539684, 36.291687, 41.875874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466206, 36.388790, 41.669060>,  <37.343742, 36.550629, 41.324371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466206, 36.388790, 41.669060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197518, -0.858497, -0.473254,
		0.931264, 0.315098, -0.182924,
		0.306161, -0.404593, 0.861725,
		37.558052, 36.267410, 41.927578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595615, 35.943398, 41.087307>,  <37.343742, 36.550629, 41.324371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595615, 35.943398, 41.087307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662045, 35.872597, 41.475346>,  <37.701900, 35.830116, 41.708168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662045, 35.872597, 41.475346>,  <37.595615, 35.943398, 41.087307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662045, 35.872597, 41.475346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401023, -0.886614, -0.230425,
		0.900888, 0.427299, -0.076261,
		0.166074, -0.177005, 0.970097,
		37.711868, 35.819496, 41.766376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222260, 35.738224, 41.269482>,  <37.595615, 35.943398, 41.087307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222260, 35.738224, 41.269482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047165, 35.584061, 41.594406>,  <37.942108, 35.491562, 41.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047165, 35.584061, 41.594406>,  <38.222260, 35.738224, 41.269482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047165, 35.584061, 41.594406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551114, -0.828857, -0.096275,
		0.710394, 0.405532, 0.575226,
		-0.437738, -0.385408, 0.812309,
		37.915844, 35.468437, 41.838100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694942, 35.700340, 41.869255>,  <38.222260, 35.738224, 41.269482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694942, 35.700340, 41.869255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404030, 35.427528, 41.899971>,  <38.229485, 35.263840, 41.918400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404030, 35.427528, 41.899971>,  <38.694942, 35.700340, 41.869255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404030, 35.427528, 41.899971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669390, -0.729575, -0.140132,
		0.151600, -0.050510, 0.987150,
		-0.727279, -0.682033, 0.076793,
		38.185844, 35.222919, 41.923008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808769, 35.129120, 42.396362>,  <38.694942, 35.700340, 41.869255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808769, 35.129120, 42.396362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563728, 35.004856, 42.105648>,  <38.416706, 34.930298, 41.931221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563728, 35.004856, 42.105648>,  <38.808769, 35.129120, 42.396362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563728, 35.004856, 42.105648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631988, -0.744741, -0.214365,
		-0.474672, -0.590638, 0.652559,
		-0.612600, -0.310656, -0.726784,
		38.379948, 34.911659, 41.887611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430347, 35.395744, 41.981342>,  <38.808769, 35.129120, 42.396362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430347, 35.395744, 41.981342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604839, 35.335052, 41.626560>,  <39.709534, 35.298637, 41.413692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604839, 35.335052, 41.626560>,  <39.430347, 35.395744, 41.981342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604839, 35.335052, 41.626560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839432, -0.286429, 0.461857,
		-0.324128, -0.946010, 0.002423,
		0.436228, -0.151735, -0.886951,
		39.735706, 35.289532, 41.360474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847721, 34.858459, 42.139175>,  <39.430347, 35.395744, 41.981342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847721, 34.858459, 42.139175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965897, 35.079929, 41.827751>,  <40.036800, 35.212811, 41.640896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965897, 35.079929, 41.827751>,  <39.847721, 34.858459, 42.139175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965897, 35.079929, 41.827751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946694, -0.279197, 0.160686,
		-0.128404, -0.784532, -0.606648,
		0.295438, 0.553677, -0.778562,
		40.054527, 35.246033, 41.594181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204277, 34.495979, 41.602165>,  <39.847721, 34.858459, 42.139175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204277, 34.495979, 41.602165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332909, 34.874439, 41.617046>,  <40.410088, 35.101517, 41.625973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332909, 34.874439, 41.617046>,  <40.204277, 34.495979, 41.602165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332909, 34.874439, 41.617046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941091, -0.323701, 0.097803,
		0.104578, 0.003557, -0.994510,
		0.321577, 0.946153, 0.037199,
		40.429382, 35.158283, 41.628204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714825, 34.550472, 41.020214>,  <40.204277, 34.495979, 41.602165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714825, 34.550472, 41.020214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759495, 34.796101, 41.332737>,  <40.786297, 34.943478, 41.520252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759495, 34.796101, 41.332737>,  <40.714825, 34.550472, 41.020214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759495, 34.796101, 41.332737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935709, -0.329728, 0.125410,
		0.334630, 0.717075, -0.611414,
		0.111671, 0.614072, 0.781310,
		40.792995, 34.980324, 41.567131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438091, 34.643143, 41.085533>,  <40.714825, 34.550472, 41.020214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438091, 34.643143, 41.085533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325844, 34.881775, 41.386292>,  <41.258495, 35.024952, 41.566746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325844, 34.881775, 41.386292>,  <41.438091, 34.643143, 41.085533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325844, 34.881775, 41.386292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904770, -0.097075, 0.414691,
		0.320386, 0.796662, -0.512525,
		-0.280615, 0.596578, 0.751897,
		41.241661, 35.060749, 41.611862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584995, 34.892052, 40.364792>,  <41.438091, 34.643143, 41.085533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584995, 34.892052, 40.364792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902195, 35.110622, 40.257034>,  <42.092514, 35.241764, 40.192379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902195, 35.110622, 40.257034>,  <41.584995, 34.892052, 40.364792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902195, 35.110622, 40.257034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260685, 0.704003, 0.660623,
		0.550637, -0.453644, 0.700718,
		0.792995, 0.546431, -0.269392,
		42.140095, 35.274551, 40.176216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154053, 34.977695, 40.893543>,  <41.584995, 34.892052, 40.364792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154053, 34.977695, 40.893543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130772, 35.300865, 40.658981>,  <42.116802, 35.494766, 40.518242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130772, 35.300865, 40.658981>,  <42.154053, 34.977695, 40.893543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130772, 35.300865, 40.658981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109042, 0.578745, 0.808186,
		0.992332, 0.110982, 0.054413,
		-0.058202, 0.807921, -0.586409,
		42.113312, 35.543243, 40.483059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664787, 35.377380, 41.158146>,  <42.154053, 34.977695, 40.893543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664787, 35.377380, 41.158146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388393, 35.598698, 40.972069>,  <42.222557, 35.731487, 40.860424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388393, 35.598698, 40.972069>,  <42.664787, 35.377380, 41.158146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388393, 35.598698, 40.972069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130797, 0.537216, 0.833241,
		0.710940, 0.636602, -0.298837,
		-0.690983, 0.553297, -0.465194,
		42.181099, 35.764687, 40.832512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792252, 36.073147, 41.246639>,  <42.664787, 35.377380, 41.158146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792252, 36.073147, 41.246639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403072, 36.035423, 41.162277>,  <42.169563, 36.012787, 41.111660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403072, 36.035423, 41.162277>,  <42.792252, 36.073147, 41.246639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403072, 36.035423, 41.162277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223458, 0.615963, 0.755418,
		0.058663, 0.782110, -0.620373,
		-0.972947, -0.094312, -0.210903,
		42.111187, 36.007130, 41.099007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480183, 36.750359, 40.944008>,  <42.792252, 36.073147, 41.246639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480183, 36.750359, 40.944008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232513, 36.520859, 41.158459>,  <42.083912, 36.383160, 41.287128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232513, 36.520859, 41.158459>,  <42.480183, 36.750359, 40.944008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232513, 36.520859, 41.158459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258651, 0.793662, 0.550636,
		-0.741434, 0.202268, -0.639815,
		-0.619173, -0.573749, 0.536131,
		42.046761, 36.348736, 41.319298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741898, 36.651524, 40.782352>,  <42.480183, 36.750359, 40.944008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741898, 36.651524, 40.782352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852116, 36.683125, 41.165565>,  <41.918247, 36.702087, 41.395493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852116, 36.683125, 41.165565>,  <41.741898, 36.651524, 40.782352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852116, 36.683125, 41.165565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472713, 0.878927, 0.063478,
		-0.837029, -0.470368, 0.279531,
		0.275545, 0.079005, 0.958036,
		41.934780, 36.706825, 41.452976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451923, 36.596298, 40.046375>,  <41.741898, 36.651524, 40.782352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451923, 36.596298, 40.046375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655350, 36.341248, 40.277821>,  <41.777405, 36.188217, 40.416687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655350, 36.341248, 40.277821>,  <41.451923, 36.596298, 40.046375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655350, 36.341248, 40.277821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376168, -0.439943, -0.815443,
		0.774503, 0.632365, 0.016113,
		0.508569, -0.637625, 0.578613,
		41.807919, 36.149960, 40.451405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094322, 36.644112, 39.876240>,  <41.451923, 36.596298, 40.046375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094322, 36.644112, 39.876240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051083, 36.276886, 40.028801>,  <42.025139, 36.056549, 40.120338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051083, 36.276886, 40.028801>,  <42.094322, 36.644112, 39.876240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051083, 36.276886, 40.028801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239246, -0.396398, -0.886358,
		0.964923, -0.004570, 0.262495,
		-0.108103, -0.918067, 0.381400,
		42.018650, 36.001465, 40.143223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738300, 36.246819, 39.770332>,  <42.094322, 36.644112, 39.876240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738300, 36.246819, 39.770332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408424, 36.021191, 39.786880>,  <42.210499, 35.885815, 39.796810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408424, 36.021191, 39.786880>,  <42.738300, 36.246819, 39.770332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408424, 36.021191, 39.786880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129890, -0.260084, -0.956810,
		0.550464, -0.783700, 0.287756,
		-0.824692, -0.564066, 0.041372,
		42.161018, 35.851971, 39.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932362, 36.945400, 39.911087>,  <42.738300, 36.246819, 39.770332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932362, 36.945400, 39.911087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970009, 37.129326, 39.557880>,  <42.992596, 37.239681, 39.345955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970009, 37.129326, 39.557880>,  <42.932362, 36.945400, 39.911087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970009, 37.129326, 39.557880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561041, 0.708204, 0.428579,
		0.822421, -0.535744, -0.191318,
		0.094116, 0.459810, -0.883016,
		42.998245, 37.267269, 39.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636051, 37.124275, 39.848343>,  <42.932362, 36.945400, 39.911087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636051, 37.124275, 39.848343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395222, 37.374599, 39.650005>,  <43.250725, 37.524796, 39.531002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395222, 37.374599, 39.650005>,  <43.636051, 37.124275, 39.848343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395222, 37.374599, 39.650005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495783, 0.779815, 0.382216,
		0.625864, -0.015710, -0.779774,
		-0.602075, 0.625814, -0.495846,
		43.214600, 37.562344, 39.501251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014790, 37.677113, 39.542439>,  <43.636051, 37.124275, 39.848343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014790, 37.677113, 39.542439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656952, 37.847210, 39.597374>,  <43.442249, 37.949268, 39.630337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656952, 37.847210, 39.597374>,  <44.014790, 37.677113, 39.542439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656952, 37.847210, 39.597374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441191, 0.791610, 0.422733,
		0.071047, 0.438768, -0.895787,
		-0.894596, 0.425247, 0.137339,
		43.388573, 37.974785, 39.638577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050533, 38.363174, 39.209827>,  <44.014790, 37.677113, 39.542439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050533, 38.363174, 39.209827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833759, 38.328209, 39.544170>,  <43.703693, 38.307232, 39.744778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833759, 38.328209, 39.544170>,  <44.050533, 38.363174, 39.209827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833759, 38.328209, 39.544170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639062, 0.603060, 0.477408,
		-0.545805, 0.792892, -0.270960,
		-0.541938, -0.087411, 0.835860,
		43.671177, 38.301987, 39.794930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445396, 38.787472, 38.784618>,  <44.050533, 38.363174, 39.209827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445396, 38.787472, 38.784618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242302, 38.799179, 38.440212>,  <44.120445, 38.806202, 38.233570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242302, 38.799179, 38.440212>,  <44.445396, 38.787472, 38.784618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242302, 38.799179, 38.440212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700342, -0.568018, -0.432293,
		-0.501724, -0.822496, 0.267907,
		-0.507735, 0.029265, -0.861016,
		44.089981, 38.807961, 38.181908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368118, 38.120113, 38.504047>,  <44.445396, 38.787472, 38.784618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368118, 38.120113, 38.504047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355171, 38.347847, 38.175461>,  <44.347401, 38.484489, 37.978310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355171, 38.347847, 38.175461>,  <44.368118, 38.120113, 38.504047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355171, 38.347847, 38.175461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496510, -0.704150, -0.507593,
		-0.867427, -0.424297, -0.259889,
		-0.032369, 0.569337, -0.821466,
		44.345459, 38.518650, 37.929020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200817, 37.682499, 38.009510>,  <44.368118, 38.120113, 38.504047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200817, 37.682499, 38.009510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372860, 37.970955, 37.792271>,  <44.476086, 38.144028, 37.661926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372860, 37.970955, 37.792271>,  <44.200817, 37.682499, 38.009510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372860, 37.970955, 37.792271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262268, -0.675458, -0.689182,
		-0.863840, 0.153987, -0.479655,
		0.430111, 0.721141, -0.543102,
		44.501892, 38.187298, 37.629341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997086, 37.552326, 37.323666>,  <44.200817, 37.682499, 38.009510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997086, 37.552326, 37.323666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358986, 37.722702, 37.324486>,  <44.576126, 37.824928, 37.324978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358986, 37.722702, 37.324486>,  <43.997086, 37.552326, 37.323666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358986, 37.722702, 37.324486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347852, -0.736083, -0.580673,
		-0.245820, 0.526077, -0.814135,
		0.904750, 0.425939, 0.002053,
		44.630409, 37.850483, 37.325100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177162, 37.842281, 36.643848>,  <43.997086, 37.552326, 37.323666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177162, 37.842281, 36.643848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453690, 37.671501, 36.877014>,  <44.619606, 37.569031, 37.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453690, 37.671501, 36.877014>,  <44.177162, 37.842281, 36.643848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453690, 37.671501, 36.877014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147101, -0.706689, -0.692064,
		0.707419, 0.564183, -0.425741,
		0.691317, -0.426952, 0.582917,
		44.661083, 37.543415, 37.051888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290260, 37.330685, 36.297531>,  <44.177162, 37.842281, 36.643848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290260, 37.330685, 36.297531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579185, 37.254578, 36.563484>,  <44.752541, 37.208916, 36.723057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579185, 37.254578, 36.563484>,  <44.290260, 37.330685, 36.297531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579185, 37.254578, 36.563484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278997, -0.799531, -0.531893,
		0.632794, 0.569692, -0.524426,
		0.722311, -0.190265, 0.664881,
		44.795879, 37.197498, 36.762947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933994, 37.255352, 35.990528>,  <44.290260, 37.330685, 36.297531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933994, 37.255352, 35.990528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944397, 37.034916, 36.324146>,  <44.950638, 36.902657, 36.524315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944397, 37.034916, 36.324146>,  <44.933994, 37.255352, 35.990528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944397, 37.034916, 36.324146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519190, -0.705530, -0.482359,
		0.854263, 0.445570, 0.267772,
		0.026003, -0.551086, 0.834043,
		44.952198, 36.869591, 36.574360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646675, 36.942738, 36.034889>,  <44.933994, 37.255352, 35.990528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646675, 36.942738, 36.034889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361855, 36.734680, 36.223537>,  <45.190960, 36.609844, 36.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361855, 36.734680, 36.223537>,  <45.646675, 36.942738, 36.034889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361855, 36.734680, 36.223537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329642, -0.840735, -0.429535,
		0.619930, -0.150386, 0.770111,
		-0.712056, -0.520142, 0.471623,
		45.148239, 36.578636, 36.365025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750053, 36.395428, 35.374424>,  <45.646675, 36.942738, 36.034889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750053, 36.395428, 35.374424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801949, 36.008762, 35.286133>,  <45.833084, 35.776764, 35.233158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801949, 36.008762, 35.286133>,  <45.750053, 36.395428, 35.374424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801949, 36.008762, 35.286133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961836, 0.176777, -0.208857,
		0.240915, -0.185211, 0.952710,
		0.129735, -0.966668, -0.220731,
		45.840870, 35.718761, 35.219913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325432, 36.201164, 35.678452>,  <45.750053, 36.395428, 35.374424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325432, 36.201164, 35.678452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322540, 35.919895, 35.394058>,  <46.320805, 35.751133, 35.223423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322540, 35.919895, 35.394058>,  <46.325432, 36.201164, 35.678452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322540, 35.919895, 35.394058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995226, 0.064148, -0.073562,
		0.097335, -0.708116, 0.699355,
		-0.007228, -0.703176, -0.710979,
		46.320374, 35.708942, 35.180763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672516, 35.545448, 35.770161>,  <46.325432, 36.201164, 35.678452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672516, 35.545448, 35.770161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694649, 35.610790, 35.376156>,  <46.707928, 35.649994, 35.139751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694649, 35.610790, 35.376156>,  <46.672516, 35.545448, 35.770161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694649, 35.610790, 35.376156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990799, -0.131023, 0.033925,
		-0.123518, -0.977828, -0.169100,
		0.055329, 0.163354, -0.985015,
		46.711246, 35.659798, 35.080650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.448872, 35.314690, 35.684635>,  <46.672516, 35.545448, 35.770161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.448872, 35.314690, 35.684635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373108, 35.431374, 35.309608>,  <47.327652, 35.501385, 35.084591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373108, 35.431374, 35.309608>,  <47.448872, 35.314690, 35.684635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.373108, 35.431374, 35.309608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894814, -0.341855, -0.287131,
		-0.404270, -0.893332, -0.196275,
		-0.189406, 0.291708, -0.937567,
		47.316288, 35.518887, 35.028339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.727489, 34.815281, 35.241428>,  <47.448872, 35.314690, 35.684635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.727489, 34.815281, 35.241428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673134, 35.104668, 34.970688>,  <47.640518, 35.278297, 34.808243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673134, 35.104668, 34.970688>,  <47.727489, 34.815281, 35.241428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673134, 35.104668, 34.970688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681096, -0.427921, -0.594131,
		-0.719473, -0.541742, -0.434596,
		-0.135894, 0.723463, -0.676856,
		47.632366, 35.321705, 34.767632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.967564, 29.559298, 32.672985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912514, 29.452589, 33.054539>,  <37.879482, 29.388563, 33.283470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912514, 29.452589, 33.054539>,  <37.967564, 29.559298, 32.672985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912514, 29.452589, 33.054539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695547, 0.659613, 0.284826,
		-0.705177, 0.702669, 0.094774,
		-0.137625, -0.266773, 0.953882,
		37.871227, 29.372557, 33.340702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918896, 30.214287, 33.018780>,  <37.967564, 29.559298, 32.672985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918896, 30.214287, 33.018780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015350, 29.946194, 33.299534>,  <38.073223, 29.785337, 33.467987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015350, 29.946194, 33.299534>,  <37.918896, 30.214287, 33.018780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015350, 29.946194, 33.299534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705606, 0.617624, 0.347362,
		-0.666314, 0.411492, 0.621852,
		0.241134, -0.670235, 0.701883,
		38.087692, 29.745123, 33.510098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943024, 30.535793, 33.639240>,  <37.918896, 30.214287, 33.018780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943024, 30.535793, 33.639240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177727, 30.214973, 33.683838>,  <38.318546, 30.022482, 33.710598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177727, 30.214973, 33.683838>,  <37.943024, 30.535793, 33.639240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177727, 30.214973, 33.683838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728411, 0.582930, 0.360013,
		-0.353743, -0.130025, 0.926261,
		0.586756, -0.802051, 0.111496,
		38.353752, 29.974358, 33.717285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264805, 30.548544, 34.375221>,  <37.943024, 30.535793, 33.639240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264805, 30.548544, 34.375221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505955, 30.332815, 34.140045>,  <38.650646, 30.203379, 33.998940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505955, 30.332815, 34.140045>,  <38.264805, 30.548544, 34.375221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505955, 30.332815, 34.140045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788474, 0.515308, 0.335808,
		0.121863, -0.666027, 0.735906,
		0.602875, -0.539320, -0.587942,
		38.686817, 30.171019, 33.963661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636917, 30.131218, 34.832981>,  <38.264805, 30.548544, 34.375221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636917, 30.131218, 34.832981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852528, 30.163998, 34.497662>,  <38.981892, 30.183666, 34.296471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852528, 30.163998, 34.497662>,  <38.636917, 30.131218, 34.832981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852528, 30.163998, 34.497662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716596, 0.478427, 0.507540,
		0.442655, -0.874295, 0.199160,
		0.539023, 0.081948, -0.838295,
		39.014233, 30.188583, 34.246174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230801, 30.022686, 35.045650>,  <38.636917, 30.131218, 34.832981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230801, 30.022686, 35.045650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323956, 30.168282, 34.684925>,  <39.379848, 30.255638, 34.468491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323956, 30.168282, 34.684925>,  <39.230801, 30.022686, 35.045650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323956, 30.168282, 34.684925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808280, 0.443207, 0.387621,
		0.540781, -0.819195, -0.190985,
		0.232891, 0.363988, -0.901817,
		39.393822, 30.277477, 34.414379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961861, 30.046043, 35.093361>,  <39.230801, 30.022686, 35.045650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961861, 30.046043, 35.093361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840302, 30.290941, 34.801388>,  <39.767365, 30.437880, 34.626205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840302, 30.290941, 34.801388>,  <39.961861, 30.046043, 35.093361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840302, 30.290941, 34.801388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694393, 0.666909, 0.270281,
		0.652276, -0.424720, -0.627813,
		-0.303901, 0.612246, -0.729931,
		39.749130, 30.474615, 34.582409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640701, 30.394587, 34.702507>,  <39.961861, 30.046043, 35.093361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640701, 30.394587, 34.702507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326252, 30.617346, 34.595268>,  <40.137581, 30.751001, 34.530926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326252, 30.617346, 34.595268>,  <40.640701, 30.394587, 34.702507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326252, 30.617346, 34.595268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592707, 0.802235, -0.071532,
		0.175239, -0.215134, -0.960733,
		-0.786123, 0.556899, -0.268094,
		40.090416, 30.784416, 34.514839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815136, 30.835867, 34.063274>,  <40.640701, 30.394587, 34.702507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815136, 30.835867, 34.063274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512817, 31.006424, 34.262058>,  <40.331429, 31.108757, 34.381329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512817, 31.006424, 34.262058>,  <40.815136, 30.835867, 34.063274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512817, 31.006424, 34.262058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433647, 0.894582, -0.108045,
		-0.490638, 0.133845, -0.861022,
		-0.755794, 0.426391, 0.496957,
		40.286079, 31.134340, 34.411144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656971, 31.418776, 33.734013>,  <40.815136, 30.835867, 34.063274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656971, 31.418776, 33.734013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.511810, 31.500141, 34.097755>,  <40.424713, 31.548960, 34.316002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.511810, 31.500141, 34.097755>,  <40.656971, 31.418776, 33.734013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511810, 31.500141, 34.097755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424944, 0.904626, -0.032771,
		-0.829291, 0.374531, -0.414732,
		-0.362903, 0.203415, 0.909353,
		40.402939, 31.561165, 34.370560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382061, 32.034161, 33.580906>,  <40.656971, 31.418776, 33.734013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382061, 32.034161, 33.580906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.425953, 31.996630, 33.976715>,  <40.452290, 31.974112, 34.214199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.425953, 31.996630, 33.976715>,  <40.382061, 32.034161, 33.580906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425953, 31.996630, 33.976715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381522, 0.923252, 0.045232,
		-0.917824, 0.372561, 0.137105,
		0.109731, -0.093824, 0.989523,
		40.458874, 31.968483, 34.273571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844971, 32.456970, 34.030903>,  <40.382061, 32.034161, 33.580906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844971, 32.456970, 34.030903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188034, 32.382275, 34.222553>,  <40.393871, 32.337456, 34.337543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188034, 32.382275, 34.222553>,  <39.844971, 32.456970, 34.030903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188034, 32.382275, 34.222553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186821, 0.981220, 0.048013,
		-0.479090, 0.048331, 0.876434,
		0.857654, -0.186739, 0.479121,
		40.445332, 32.326252, 34.366291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960899, 33.038242, 34.421066>,  <39.844971, 32.456970, 34.030903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960899, 33.038242, 34.421066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332981, 32.905815, 34.484451>,  <40.556229, 32.826359, 34.522484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332981, 32.905815, 34.484451>,  <39.960899, 33.038242, 34.421066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332981, 32.905815, 34.484451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307579, 0.938703, 0.155665,
		-0.200287, -0.096060, 0.975016,
		0.930204, -0.331073, 0.158464,
		40.612041, 32.806492, 34.531990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162437, 33.348961, 34.989174>,  <39.960899, 33.038242, 34.421066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162437, 33.348961, 34.989174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508930, 33.235050, 34.824955>,  <40.716824, 33.166702, 34.726421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508930, 33.235050, 34.824955>,  <40.162437, 33.348961, 34.989174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508930, 33.235050, 34.824955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388731, 0.900332, 0.195681,
		0.313906, -0.329097, 0.890594,
		0.866228, -0.284776, -0.410550,
		40.768799, 33.149616, 34.701790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647682, 33.647747, 35.535275>,  <40.162437, 33.348961, 34.989174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647682, 33.647747, 35.535275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870949, 33.550888, 35.217831>,  <41.004910, 33.492771, 35.027367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870949, 33.550888, 35.217831>,  <40.647682, 33.647747, 35.535275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870949, 33.550888, 35.217831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634190, 0.741257, 0.219867,
		0.535025, -0.626020, 0.567315,
		0.558167, -0.242151, -0.793607,
		41.038399, 33.478241, 34.979748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413704, 33.638439, 35.782379>,  <40.647682, 33.647747, 35.535275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413704, 33.638439, 35.782379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399776, 33.712086, 35.389465>,  <41.391422, 33.756275, 35.153717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399776, 33.712086, 35.389465>,  <41.413704, 33.638439, 35.782379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399776, 33.712086, 35.389465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558293, 0.818802, 0.133688,
		0.828913, -0.543750, -0.131300,
		-0.034815, 0.184120, -0.982287,
		41.389332, 33.767323, 35.094780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180447, 33.846920, 35.410881>,  <41.413704, 33.638439, 35.782379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180447, 33.846920, 35.410881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.892036, 34.015617, 35.190971>,  <41.718990, 34.116837, 35.059025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.892036, 34.015617, 35.190971>,  <42.180447, 33.846920, 35.410881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892036, 34.015617, 35.190971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456158, 0.886155, 0.081540,
		0.521574, -0.191991, -0.831324,
		-0.721027, 0.421744, -0.549774,
		41.675728, 34.142139, 35.026039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547737, 34.378830, 35.025146>,  <42.180447, 33.846920, 35.410881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547737, 34.378830, 35.025146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.180168, 34.505257, 34.930763>,  <41.959625, 34.581112, 34.874134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.180168, 34.505257, 34.930763>,  <42.547737, 34.378830, 35.025146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180168, 34.505257, 34.930763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320324, 0.947072, 0.021133,
		0.230152, -0.056165, -0.971532,
		-0.918924, 0.316069, -0.235962,
		41.904491, 34.600079, 34.859974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631100, 34.913612, 34.536259>,  <42.547737, 34.378830, 35.025146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631100, 34.913612, 34.536259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.264210, 34.977650, 34.682175>,  <42.044075, 35.016071, 34.769726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.264210, 34.977650, 34.682175>,  <42.631100, 34.913612, 34.536259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264210, 34.977650, 34.682175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144593, 0.987040, -0.069611,
		-0.371207, -0.011103, -0.928484,
		-0.917223, 0.160092, 0.364791,
		41.989044, 35.025677, 34.791611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216991, 35.368706, 34.023373>,  <42.631100, 34.913612, 34.536259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216991, 35.368706, 34.023373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.037487, 35.418110, 34.377403>,  <41.929783, 35.447754, 34.589821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.037487, 35.418110, 34.377403>,  <42.216991, 35.368706, 34.023373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037487, 35.418110, 34.377403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121655, 0.989626, -0.076419,
		-0.885332, 0.073380, -0.459132,
		-0.448762, 0.123512, 0.885075,
		41.902859, 35.455162, 34.642925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847958, 35.942310, 33.916168>,  <42.216991, 35.368706, 34.023373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847958, 35.942310, 33.916168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848236, 35.901649, 34.314095>,  <41.848404, 35.877254, 34.552853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848236, 35.901649, 34.314095>,  <41.847958, 35.942310, 33.916168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848236, 35.901649, 34.314095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318934, 0.942890, 0.096124,
		-0.947777, 0.317215, 0.033077,
		0.000696, -0.101653, 0.994820,
		41.848446, 35.871155, 34.612541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515076, 36.556084, 34.193398>,  <41.847958, 35.942310, 33.916168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515076, 36.556084, 34.193398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.740276, 36.410980, 34.490433>,  <41.875397, 36.323917, 34.668655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.740276, 36.410980, 34.490433>,  <41.515076, 36.556084, 34.193398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740276, 36.410980, 34.490433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438895, 0.892584, 0.103273,
		-0.700284, 0.267774, 0.661740,
		0.563004, -0.362755, 0.742587,
		41.909176, 36.302155, 34.713207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238331, 37.109547, 33.822449>,  <41.515076, 36.556084, 34.193398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238331, 37.109547, 33.822449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.202404, 37.254936, 33.451542>,  <41.180847, 37.342171, 33.229000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.202404, 37.254936, 33.451542>,  <41.238331, 37.109547, 33.822449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202404, 37.254936, 33.451542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350044, -0.883149, -0.312276,
		-0.932417, 0.296536, 0.206553,
		-0.089816, 0.363475, -0.927265,
		41.175461, 37.363979, 33.173363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598232, 36.953289, 33.492779>,  <41.238331, 37.109547, 33.822449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598232, 36.953289, 33.492779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837132, 37.021557, 33.179306>,  <40.980473, 37.062515, 32.991222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837132, 37.021557, 33.179306>,  <40.598232, 36.953289, 33.492779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837132, 37.021557, 33.179306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335516, -0.834334, -0.437396,
		-0.728505, 0.524175, -0.441047,
		0.597252, 0.170666, -0.783686,
		41.016308, 37.072758, 32.944199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195255, 36.672222, 32.900505>,  <40.598232, 36.953289, 33.492779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195255, 36.672222, 32.900505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.559772, 36.743477, 32.752014>,  <40.778484, 36.786228, 32.662918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.559772, 36.743477, 32.752014>,  <40.195255, 36.672222, 32.900505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559772, 36.743477, 32.752014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148284, -0.699103, -0.699476,
		-0.384127, 0.692476, -0.610675,
		0.911295, 0.178134, -0.371228,
		40.833160, 36.796917, 32.640644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057632, 36.872089, 32.159916>,  <40.195255, 36.672222, 32.900505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057632, 36.872089, 32.159916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426964, 36.727798, 32.212589>,  <40.648563, 36.641224, 32.244194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426964, 36.727798, 32.212589>,  <40.057632, 36.872089, 32.159916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426964, 36.727798, 32.212589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177490, -0.704973, -0.686666,
		0.340537, 0.610644, -0.714947,
		0.923327, -0.360731, 0.131686,
		40.703960, 36.619579, 32.252094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248726, 36.650627, 31.539703>,  <40.057632, 36.872089, 32.159916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248726, 36.650627, 31.539703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484882, 36.432964, 31.778143>,  <40.626575, 36.302368, 31.921206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484882, 36.432964, 31.778143>,  <40.248726, 36.650627, 31.539703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484882, 36.432964, 31.778143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037491, -0.756244, -0.653215,
		0.806246, 0.363304, -0.466881,
		0.590391, -0.544156, 0.596098,
		40.661999, 36.269718, 31.956972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649010, 36.377071, 31.009806>,  <40.248726, 36.650627, 31.539703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649010, 36.377071, 31.009806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.723385, 36.159687, 31.337240>,  <40.768009, 36.029259, 31.533701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.723385, 36.159687, 31.337240>,  <40.649010, 36.377071, 31.009806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723385, 36.159687, 31.337240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197641, -0.795398, -0.572958,
		0.962479, 0.268320, -0.040484,
		0.185937, -0.543458, 0.818585,
		40.779167, 35.996651, 31.582815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436272, 35.993694, 31.017275>,  <40.649010, 36.377071, 31.009806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436272, 35.993694, 31.017275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.148441, 35.814613, 31.229603>,  <40.975742, 35.707165, 31.357000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.148441, 35.814613, 31.229603>,  <41.436272, 35.993694, 31.017275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148441, 35.814613, 31.229603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128942, -0.837271, -0.531368,
		0.682333, -0.313917, 0.660211,
		-0.719581, -0.447698, 0.530820,
		40.932568, 35.680305, 31.388849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508316, 35.212196, 30.839325>,  <41.436272, 35.993694, 31.017275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508316, 35.212196, 30.839325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179974, 35.191235, 31.066814>,  <40.982967, 35.178658, 31.203308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179974, 35.191235, 31.066814>,  <41.508316, 35.212196, 30.839325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179974, 35.191235, 31.066814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233847, -0.877648, -0.418389,
		0.521065, -0.476432, 0.708169,
		-0.820857, -0.052405, 0.568724,
		40.933716, 35.175514, 31.237432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496971, 34.535702, 31.149694>,  <41.508316, 35.212196, 30.839325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496971, 34.535702, 31.149694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.116219, 34.656937, 31.167816>,  <40.887764, 34.729675, 31.178688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.116219, 34.656937, 31.167816>,  <41.496971, 34.535702, 31.149694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116219, 34.656937, 31.167816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298609, -0.884104, -0.359433,
		-0.068886, -0.355667, 0.932071,
		-0.951886, 0.303085, 0.045303,
		40.830654, 34.747864, 31.181406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126255, 34.024109, 31.632822>,  <41.496971, 34.535702, 31.149694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126255, 34.024109, 31.632822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832966, 34.194595, 31.420889>,  <40.656994, 34.296886, 31.293728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832966, 34.194595, 31.420889>,  <41.126255, 34.024109, 31.632822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832966, 34.194595, 31.420889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509004, -0.860680, 0.012036,
		-0.450889, 0.278513, 0.848016,
		-0.733222, 0.426216, -0.529835,
		40.612999, 34.322460, 31.261938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498547, 33.810188, 31.986431>,  <41.126255, 34.024109, 31.632822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498547, 33.810188, 31.986431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380135, 33.920483, 31.620626>,  <40.309086, 33.986660, 31.401144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380135, 33.920483, 31.620626>,  <40.498547, 33.810188, 31.986431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380135, 33.920483, 31.620626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600047, -0.798609, -0.046554,
		-0.743176, 0.534968, 0.401870,
		-0.296032, 0.275738, -0.914513,
		40.291325, 34.003204, 31.346273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901897, 33.479050, 31.938564>,  <40.498547, 33.810188, 31.986431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901897, 33.479050, 31.938564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.953854, 33.590782, 31.558018>,  <39.985027, 33.657822, 31.329689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.953854, 33.590782, 31.558018>,  <39.901897, 33.479050, 31.938564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953854, 33.590782, 31.558018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505263, -0.806926, -0.305907,
		-0.853134, 0.520426, 0.036323,
		0.129892, 0.279333, -0.951368,
		39.992821, 33.674583, 31.272608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208118, 33.543022, 31.687380>,  <39.901897, 33.479050, 31.938564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208118, 33.543022, 31.687380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484436, 33.459835, 31.410381>,  <39.650227, 33.409924, 31.244183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484436, 33.459835, 31.410381>,  <39.208118, 33.543022, 31.687380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484436, 33.459835, 31.410381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580728, -0.730166, -0.360018,
		-0.430766, 0.650851, -0.625166,
		0.690793, -0.207968, -0.692499,
		39.691673, 33.397446, 31.202631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743893, 33.633530, 31.052910>,  <39.208118, 33.543022, 31.687380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743893, 33.633530, 31.052910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064301, 33.398754, 31.005798>,  <39.256546, 33.257889, 30.977531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064301, 33.398754, 31.005798>,  <38.743893, 33.633530, 31.052910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064301, 33.398754, 31.005798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597702, -0.773092, -0.212323,
		0.033567, 0.240471, -0.970076,
		0.801015, -0.586943, -0.117780,
		39.304604, 33.222672, 30.970465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609512, 33.295261, 30.332779>,  <38.743893, 33.633530, 31.052910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609512, 33.295261, 30.332779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883343, 33.087639, 30.537497>,  <39.047642, 32.963066, 30.660328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883343, 33.087639, 30.537497>,  <38.609512, 33.295261, 30.332779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883343, 33.087639, 30.537497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433896, -0.854337, -0.286083,
		0.585739, -0.026221, -0.810076,
		0.684576, -0.519058, 0.511795,
		39.088715, 32.931923, 30.691034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961739, 32.806278, 29.822720>,  <38.609512, 33.295261, 30.332779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961739, 32.806278, 29.822720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990982, 32.694309, 30.205612>,  <39.008526, 32.627129, 30.435349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990982, 32.694309, 30.205612>,  <38.961739, 32.806278, 29.822720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990982, 32.694309, 30.205612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440768, -0.870049, -0.220769,
		0.894639, -0.405778, -0.186988,
		0.073106, -0.279927, 0.957234,
		39.012913, 32.610332, 30.492783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192894, 32.148731, 29.819679>,  <38.961739, 32.806278, 29.822720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192894, 32.148731, 29.819679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037498, 32.196743, 30.185120>,  <38.944260, 32.225548, 30.404385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037498, 32.196743, 30.185120>,  <39.192894, 32.148731, 29.819679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037498, 32.196743, 30.185120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442369, -0.894046, -0.070649,
		0.808323, -0.431596, 0.400423,
		-0.388489, 0.120028, 0.913603,
		38.920952, 32.232750, 30.459200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356716, 31.541927, 30.123257>,  <39.192894, 32.148731, 29.819679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356716, 31.541927, 30.123257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064915, 31.703039, 30.344378>,  <38.889832, 31.799706, 30.477051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064915, 31.703039, 30.344378>,  <39.356716, 31.541927, 30.123257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064915, 31.703039, 30.344378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448968, -0.891713, 0.057233,
		0.515994, -0.206439, 0.831344,
		-0.729505, 0.402779, 0.552803,
		38.846062, 31.823874, 30.510218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.229431, 31.032436, 31.028212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902622, 31.241009, 30.929752>,  <38.706539, 31.366152, 30.870676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902622, 31.241009, 30.929752>,  <39.229431, 31.032436, 31.028212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902622, 31.241009, 30.929752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568527, -0.657241, 0.494785,
		0.096217, 0.544191, 0.833426,
		-0.817019, 0.521432, -0.246149,
		38.657516, 31.397438, 30.855907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720051, 30.832844, 31.552885>,  <39.229431, 31.032436, 31.028212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720051, 30.832844, 31.552885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495071, 31.009272, 31.273138>,  <38.360085, 31.115128, 31.105289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495071, 31.009272, 31.273138>,  <38.720051, 30.832844, 31.552885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495071, 31.009272, 31.273138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780152, -0.563283, 0.272168,
		-0.273896, 0.698691, 0.660917,
		-0.562445, 0.441070, -0.699366,
		38.326340, 31.141592, 31.063328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042961, 30.826550, 31.832428>,  <38.720051, 30.832844, 31.552885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042961, 30.826550, 31.832428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000431, 30.865011, 31.436560>,  <37.974915, 30.888088, 31.199039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000431, 30.865011, 31.436560>,  <38.042961, 30.826550, 31.832428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000431, 30.865011, 31.436560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833064, -0.552012, 0.035867,
		-0.542862, 0.828273, 0.138796,
		-0.106325, 0.096155, -0.989671,
		37.968533, 30.893858, 31.139658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335258, 30.779821, 31.744030>,  <38.042961, 30.826550, 31.832428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335258, 30.779821, 31.744030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461353, 30.700476, 31.372810>,  <37.537010, 30.652868, 31.150078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461353, 30.700476, 31.372810>,  <37.335258, 30.779821, 31.744030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461353, 30.700476, 31.372810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821634, -0.546423, -0.162294,
		-0.474914, 0.813679, -0.335235,
		0.315235, -0.198365, -0.928051,
		37.555923, 30.640966, 31.094395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663960, 30.824915, 31.264677>,  <37.335258, 30.779821, 31.744030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663960, 30.824915, 31.264677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949528, 30.601389, 31.095900>,  <37.120869, 30.467274, 30.994633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949528, 30.601389, 31.095900>,  <36.663960, 30.824915, 31.264677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949528, 30.601389, 31.095900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660527, -0.737458, -0.140924,
		-0.232414, 0.379314, -0.895603,
		0.713924, -0.558817, -0.421943,
		37.163704, 30.433744, 30.969316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286861, 30.420780, 30.764471>,  <36.663960, 30.824915, 31.264677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286861, 30.420780, 30.764471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628853, 30.215826, 30.796652>,  <36.834049, 30.092854, 30.815960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628853, 30.215826, 30.796652>,  <36.286861, 30.420780, 30.764471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628853, 30.215826, 30.796652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501056, -0.856032, -0.127094,
		0.133989, 0.068352, -0.988623,
		0.854980, -0.512384, 0.080451,
		36.885345, 30.062111, 30.820787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292324, 29.943398, 30.167398>,  <36.286861, 30.420780, 30.764471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292324, 29.943398, 30.167398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532978, 29.795000, 30.450354>,  <36.677372, 29.705961, 30.620127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532978, 29.795000, 30.450354>,  <36.292324, 29.943398, 30.167398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532978, 29.795000, 30.450354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401539, -0.906036, -0.133666,
		0.690509, -0.203626, -0.694071,
		0.601635, -0.370993, 0.707389,
		36.713467, 29.683702, 30.662571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456726, 29.438982, 29.892647>,  <36.292324, 29.943398, 30.167398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456726, 29.438982, 29.892647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521370, 29.378386, 30.282709>,  <36.560158, 29.342028, 30.516747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521370, 29.378386, 30.282709>,  <36.456726, 29.438982, 29.892647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521370, 29.378386, 30.282709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314320, -0.944587, -0.094647,
		0.935459, -0.291215, -0.200274,
		0.161613, -0.151489, 0.975157,
		36.569855, 29.332939, 30.575256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831055, 28.893940, 29.848354>,  <36.456726, 29.438982, 29.892647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831055, 28.893940, 29.848354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692371, 28.913361, 30.223042>,  <36.609161, 28.925013, 30.447853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692371, 28.913361, 30.223042>,  <36.831055, 28.893940, 29.848354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692371, 28.913361, 30.223042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317710, -0.945705, -0.068575,
		0.882528, -0.321380, 0.343305,
		-0.346704, 0.048552, 0.936717,
		36.588360, 28.927927, 30.504057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918091, 28.193455, 30.135040>,  <36.831055, 28.893940, 29.848354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918091, 28.193455, 30.135040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646027, 28.364204, 30.373421>,  <36.482788, 28.466654, 30.516449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646027, 28.364204, 30.373421>,  <36.918091, 28.193455, 30.135040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646027, 28.364204, 30.373421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497483, -0.865886, 0.052449,
		0.538415, -0.260802, 0.801306,
		-0.680162, 0.426876, 0.595951,
		36.441978, 28.492268, 30.552206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879219, 27.816534, 30.846359>,  <36.918091, 28.193455, 30.135040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879219, 27.816534, 30.846359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541992, 28.011339, 30.755089>,  <36.339657, 28.128222, 30.700327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541992, 28.011339, 30.755089>,  <36.879219, 27.816534, 30.846359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541992, 28.011339, 30.755089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504285, -0.863290, 0.020646,
		-0.186926, 0.132471, 0.973401,
		-0.843063, 0.487012, -0.228175,
		36.289074, 28.157442, 30.686636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249783, 27.464407, 31.299072>,  <36.879219, 27.816534, 30.846359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249783, 27.464407, 31.299072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067558, 27.665264, 31.005047>,  <35.958225, 27.785778, 30.828632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067558, 27.665264, 31.005047>,  <36.249783, 27.464407, 31.299072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067558, 27.665264, 31.005047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600531, -0.782889, -0.162628,
		-0.657134, 0.367341, 0.658206,
		-0.455562, 0.502141, -0.735063,
		35.930889, 27.815907, 30.784529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511761, 27.273975, 31.373793>,  <36.249783, 27.464407, 31.299072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511761, 27.273975, 31.373793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544205, 27.416086, 31.001299>,  <35.563671, 27.501352, 30.777803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544205, 27.416086, 31.001299>,  <35.511761, 27.273975, 31.373793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544205, 27.416086, 31.001299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655184, -0.685079, -0.318436,
		-0.751103, 0.635959, 0.177204,
		0.081113, 0.355279, -0.931235,
		35.568539, 27.522671, 30.721928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852722, 27.510078, 31.176580>,  <35.511761, 27.273975, 31.373793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852722, 27.510078, 31.176580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029995, 27.430693, 30.826906>,  <35.136356, 27.383060, 30.617102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029995, 27.430693, 30.826906>,  <34.852722, 27.510078, 31.176580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029995, 27.430693, 30.826906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832170, -0.453659, -0.318885,
		-0.333296, 0.868796, -0.366208,
		0.443179, -0.198464, -0.874188,
		35.162949, 27.371153, 30.564650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378304, 27.708694, 30.650520>,  <34.852722, 27.510078, 31.176580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378304, 27.708694, 30.650520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631180, 27.450840, 30.478577>,  <34.782906, 27.296127, 30.375410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631180, 27.450840, 30.478577>,  <34.378304, 27.708694, 30.650520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631180, 27.450840, 30.478577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753101, -0.380829, -0.536477,
		0.182130, 0.662883, -0.726234,
		0.632193, -0.644636, -0.429857,
		34.820839, 27.257450, 30.349619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068459, 27.649000, 30.009066>,  <34.378304, 27.708694, 30.650520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068459, 27.649000, 30.009066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.335049, 27.351452, 29.989204>,  <34.495003, 27.172922, 29.977287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.335049, 27.351452, 29.989204>,  <34.068459, 27.649000, 30.009066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335049, 27.351452, 29.989204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656368, -0.553884, -0.512244,
		0.353543, 0.373987, -0.857404,
		0.666474, -0.743873, -0.049652,
		34.534992, 27.128290, 29.974308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213341, 27.429523, 29.297764>,  <34.068459, 27.649000, 30.009066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213341, 27.429523, 29.297764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310150, 27.117804, 29.528976>,  <34.368237, 26.930773, 29.667704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310150, 27.117804, 29.528976>,  <34.213341, 27.429523, 29.297764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310150, 27.117804, 29.528976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650880, -0.572212, -0.498929,
		0.719570, -0.255475, -0.645718,
		0.242023, -0.779299, 0.578030,
		34.382755, 26.884014, 29.702385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547512, 26.886862, 28.857780>,  <34.213341, 27.429523, 29.297764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547512, 26.886862, 28.857780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380341, 26.733948, 29.187433>,  <34.280037, 26.642199, 29.385225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380341, 26.733948, 29.187433>,  <34.547512, 26.886862, 28.857780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380341, 26.733948, 29.187433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552672, -0.612994, -0.564617,
		0.721032, -0.691445, 0.044911,
		-0.417932, -0.382285, 0.824131,
		34.254963, 26.619263, 29.434673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524078, 26.147253, 28.819750>,  <34.547512, 26.886862, 28.857780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524078, 26.147253, 28.819750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252552, 26.174982, 29.112164>,  <34.089638, 26.191620, 29.287611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252552, 26.174982, 29.112164>,  <34.524078, 26.147253, 28.819750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252552, 26.174982, 29.112164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543825, -0.716413, -0.437043,
		0.493425, -0.694224, 0.524009,
		-0.678813, 0.069321, 0.731032,
		34.048908, 26.195778, 29.331472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516064, 25.426233, 29.099506>,  <34.524078, 26.147253, 28.819750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516064, 25.426233, 29.099506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179962, 25.624554, 29.187286>,  <33.978302, 25.743546, 29.239954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179962, 25.624554, 29.187286>,  <34.516064, 25.426233, 29.099506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179962, 25.624554, 29.187286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541425, -0.788856, -0.290802,
		0.028934, -0.363162, 0.931276,
		-0.840251, 0.495802, 0.219450,
		33.927887, 25.773294, 29.253120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115635, 24.974344, 29.430817>,  <34.516064, 25.426233, 29.099506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115635, 24.974344, 29.430817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833843, 25.238419, 29.326609>,  <33.664768, 25.396862, 29.264084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833843, 25.238419, 29.326609>,  <34.115635, 24.974344, 29.430817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833843, 25.238419, 29.326609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678391, -0.734235, -0.026176,
		-0.208562, 0.158293, 0.965114,
		-0.704477, 0.660184, -0.260518,
		33.622501, 25.436474, 29.248453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486320, 24.771593, 29.755829>,  <34.115635, 24.974344, 29.430817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486320, 24.771593, 29.755829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381535, 25.006563, 29.449547>,  <33.318665, 25.147545, 29.265778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381535, 25.006563, 29.449547>,  <33.486320, 24.771593, 29.755829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381535, 25.006563, 29.449547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882248, -0.467358, -0.056704,
		-0.391168, 0.660688, 0.640686,
		-0.261966, 0.587425, -0.765706,
		33.302944, 25.182791, 29.219835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882423, 25.259413, 29.906807>,  <33.486320, 24.771593, 29.755829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882423, 25.259413, 29.906807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.926620, 25.142519, 29.526831>,  <32.953140, 25.072384, 29.298845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.926620, 25.142519, 29.526831>,  <32.882423, 25.259413, 29.906807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926620, 25.142519, 29.526831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865661, -0.497873, 0.052470,
		-0.488285, 0.816531, -0.307986,
		0.110494, -0.292232, -0.949943,
		32.959770, 25.054850, 29.241848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405888, 24.893702, 30.359436>,  <32.882423, 25.259413, 29.906807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405888, 24.893702, 30.359436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131714, 24.729670, 30.600105>,  <31.967209, 24.631250, 30.744507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131714, 24.729670, 30.600105>,  <32.405888, 24.893702, 30.359436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131714, 24.729670, 30.600105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250028, 0.643524, 0.723438,
		-0.683860, 0.646306, -0.338562,
		-0.685435, -0.410081, 0.601675,
		31.926083, 24.606646, 30.780607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961508, 25.429615, 30.659136>,  <32.405888, 24.893702, 30.359436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961508, 25.429615, 30.659136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989103, 25.115278, 30.904964>,  <32.005661, 24.926676, 31.052462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989103, 25.115278, 30.904964>,  <31.961508, 25.429615, 30.659136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989103, 25.115278, 30.904964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207409, 0.613876, 0.761668,
		-0.975819, 0.074920, 0.205341,
		0.068990, -0.785839, 0.614570,
		32.009800, 24.879526, 31.089336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813007, 25.694273, 31.349089>,  <31.961508, 25.429615, 30.659136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813007, 25.694273, 31.349089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.990608, 25.346390, 31.435316>,  <32.097168, 25.137659, 31.487053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.990608, 25.346390, 31.435316>,  <31.813007, 25.694273, 31.349089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990608, 25.346390, 31.435316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496874, 0.439185, 0.748487,
		-0.745641, -0.225217, 0.627134,
		0.444000, -0.869709, 0.215569,
		32.123810, 25.085478, 31.499987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698252, 25.589582, 32.064075>,  <31.813007, 25.694273, 31.349089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698252, 25.589582, 32.064075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015717, 25.380219, 31.940046>,  <32.206196, 25.254601, 31.865629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.015717, 25.380219, 31.940046>,  <31.698252, 25.589582, 32.064075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015717, 25.380219, 31.940046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526799, 0.336368, 0.780602,
		-0.304278, -0.782878, 0.542695,
		0.793661, -0.523410, -0.310070,
		32.253815, 25.223196, 31.847025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935204, 25.240313, 32.761627>,  <31.698252, 25.589582, 32.064075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935204, 25.240313, 32.761627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227764, 25.299339, 32.495312>,  <32.403301, 25.334755, 32.335522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227764, 25.299339, 32.495312>,  <31.935204, 25.240313, 32.761627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227764, 25.299339, 32.495312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524202, 0.502816, 0.687305,
		0.436191, -0.851704, 0.290407,
		0.731402, 0.147565, -0.665789,
		32.447186, 25.343609, 32.295574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504185, 25.110130, 33.109688>,  <31.935204, 25.240313, 32.761627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504185, 25.110130, 33.109688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626400, 25.345991, 32.810635>,  <32.699730, 25.487507, 32.631203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626400, 25.345991, 32.810635>,  <32.504185, 25.110130, 33.109688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626400, 25.345991, 32.810635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643816, 0.450559, 0.618463,
		0.701532, -0.670303, -0.241965,
		0.305539, 0.589652, -0.747634,
		32.718063, 25.522886, 32.586346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258831, 25.201555, 33.258030>,  <32.504185, 25.110130, 33.109688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258831, 25.201555, 33.258030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162819, 25.503189, 33.013493>,  <33.105213, 25.684170, 32.866768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162819, 25.503189, 33.013493>,  <33.258831, 25.201555, 33.258030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162819, 25.503189, 33.013493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657529, 0.589588, 0.469086,
		0.714173, -0.289386, -0.637348,
		-0.240026, 0.754084, -0.611347,
		33.090813, 25.729414, 32.830090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853424, 25.422623, 33.029549>,  <33.258831, 25.201555, 33.258030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853424, 25.422623, 33.029549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622662, 25.741138, 32.956772>,  <33.484203, 25.932249, 32.913105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622662, 25.741138, 32.956772>,  <33.853424, 25.422623, 33.029549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622662, 25.741138, 32.956772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707388, 0.598437, 0.376132,
		0.408392, 0.088288, -0.908527,
		-0.576904, 0.796291, -0.181943,
		33.449589, 25.980026, 32.902187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303131, 25.881029, 32.841015>,  <33.853424, 25.422623, 33.029549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303131, 25.881029, 32.841015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991917, 26.130276, 32.872959>,  <33.805187, 26.279823, 32.892124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991917, 26.130276, 32.872959>,  <34.303131, 25.881029, 32.841015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991917, 26.130276, 32.872959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626494, 0.760217, 0.171977,
		0.046451, 0.183837, -0.981859,
		-0.778041, 0.623117, 0.079860,
		33.758503, 26.317211, 32.896915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297943, 26.397675, 32.331779>,  <34.303131, 25.881029, 32.841015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297943, 26.397675, 32.331779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076416, 26.561716, 32.621635>,  <33.943501, 26.660141, 32.795547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076416, 26.561716, 32.621635>,  <34.297943, 26.397675, 32.331779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076416, 26.561716, 32.621635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621846, 0.782468, 0.032427,
		-0.553708, 0.468572, -0.688366,
		-0.553819, 0.410103, 0.724638,
		33.910271, 26.684748, 32.839027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125729, 27.067772, 32.139904>,  <34.297943, 26.397675, 32.331779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125729, 27.067772, 32.139904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055916, 27.070375, 32.533756>,  <34.014027, 27.071938, 32.770069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055916, 27.070375, 32.533756>,  <34.125729, 27.067772, 32.139904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055916, 27.070375, 32.533756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553711, 0.827535, 0.092681,
		-0.814213, 0.561376, -0.148037,
		-0.174534, 0.006508, 0.984630,
		34.003555, 27.072329, 32.829144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967884, 27.714458, 32.231766>,  <34.125729, 27.067772, 32.139904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967884, 27.714458, 32.231766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072418, 27.557245, 32.584408>,  <34.135139, 27.462917, 32.795994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072418, 27.557245, 32.584408>,  <33.967884, 27.714458, 32.231766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072418, 27.557245, 32.584408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658127, 0.740683, 0.135122,
		-0.706098, 0.544898, 0.452230,
		0.261331, -0.393034, 0.881606,
		34.150818, 27.439335, 32.848888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159718, 28.253916, 32.589180>,  <33.967884, 27.714458, 32.231766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159718, 28.253916, 32.589180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349968, 27.969688, 32.796593>,  <34.464119, 27.799152, 32.921040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349968, 27.969688, 32.796593>,  <34.159718, 28.253916, 32.589180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349968, 27.969688, 32.796593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791045, 0.603331, 0.101187,
		-0.384744, 0.362052, 0.849053,
		0.475625, -0.710570, 0.518527,
		34.492657, 27.756517, 32.952152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536335, 28.570822, 33.052876>,  <34.159718, 28.253916, 32.589180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536335, 28.570822, 33.052876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.715733, 28.213766, 33.071003>,  <34.823372, 27.999533, 33.081879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.715733, 28.213766, 33.071003>,  <34.536335, 28.570822, 33.052876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715733, 28.213766, 33.071003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880946, 0.450043, 0.146271,
		-0.150965, -0.025674, 0.988206,
		0.448490, -0.892638, 0.045323,
		34.850281, 27.945974, 33.084599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017982, 28.608704, 33.671841>,  <34.536335, 28.570822, 33.052876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017982, 28.608704, 33.671841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154358, 28.307835, 33.446274>,  <35.236183, 28.127314, 33.310936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154358, 28.307835, 33.446274>,  <35.017982, 28.608704, 33.671841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154358, 28.307835, 33.446274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939857, 0.259475, 0.222131,
		-0.020760, -0.605731, 0.795399,
		0.340938, -0.752172, -0.563913,
		35.256638, 28.082184, 33.277100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493168, 28.254677, 34.043240>,  <35.017982, 28.608704, 33.671841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493168, 28.254677, 34.043240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581879, 28.187965, 33.658947>,  <35.635105, 28.147938, 33.428371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581879, 28.187965, 33.658947>,  <35.493168, 28.254677, 34.043240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581879, 28.187965, 33.658947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912065, 0.383970, 0.143891,
		0.344894, -0.908159, 0.237269,
		0.221780, -0.166778, -0.960728,
		35.648411, 28.137932, 33.370728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118244, 27.912189, 34.003662>,  <35.493168, 28.254677, 34.043240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118244, 27.912189, 34.003662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100601, 28.069992, 33.636528>,  <36.090015, 28.164673, 33.416248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100601, 28.069992, 33.636528>,  <36.118244, 27.912189, 34.003662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100601, 28.069992, 33.636528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999020, 0.014137, -0.041936,
		-0.003569, -0.918785, -0.394741,
		-0.044111, 0.394504, -0.917835,
		36.087368, 28.188343, 33.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590786, 27.506268, 33.574287>,  <36.118244, 27.912189, 34.003662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590786, 27.506268, 33.574287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534702, 27.864946, 33.406345>,  <36.501053, 28.080153, 33.305580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534702, 27.864946, 33.406345>,  <36.590786, 27.506268, 33.574287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534702, 27.864946, 33.406345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974835, 0.199245, 0.099995,
		0.173319, -0.395271, -0.902065,
		-0.140207, 0.896695, -0.419857,
		36.492641, 28.133955, 33.280388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247314, 27.719175, 33.279915>,  <36.590786, 27.506268, 33.574287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247314, 27.719175, 33.279915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077583, 28.079929, 33.247536>,  <36.975746, 28.296381, 33.228107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077583, 28.079929, 33.247536>,  <37.247314, 27.719175, 33.279915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077583, 28.079929, 33.247536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866282, 0.430343, 0.253692,
		0.263636, 0.037523, -0.963892,
		-0.424324, 0.901885, -0.080949,
		36.950287, 28.350494, 33.223251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770573, 28.102139, 33.056416>,  <37.247314, 27.719175, 33.279915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770573, 28.102139, 33.056416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525875, 28.390850, 33.185905>,  <37.379055, 28.564077, 33.263599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525875, 28.390850, 33.185905>,  <37.770573, 28.102139, 33.056416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525875, 28.390850, 33.185905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785980, 0.600868, 0.145580,
		-0.089437, 0.343497, -0.934885,
		-0.611749, 0.721781, 0.323722,
		37.342350, 28.607384, 33.283024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875317, 28.693220, 32.608540>,  <37.770573, 28.102139, 33.056416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875317, 28.693220, 32.608540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754482, 28.822872, 32.967133>,  <37.681980, 28.900663, 33.182289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754482, 28.822872, 32.967133>,  <37.875317, 28.693220, 32.608540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754482, 28.822872, 32.967133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855285, 0.507463, 0.104731,
		-0.420985, 0.798387, -0.430523,
		-0.302090, 0.324130, 0.896483,
		37.663857, 28.920111, 33.236076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.448822, 33.813862, 30.079699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285774, 33.769341, 30.442236>,  <40.187946, 33.742630, 30.659758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285774, 33.769341, 30.442236>,  <40.448822, 33.813862, 30.079699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285774, 33.769341, 30.442236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050580, 0.988268, 0.144108,
		-0.911749, 0.104584, -0.397210,
		-0.407622, -0.111300, 0.906342,
		40.163486, 33.735950, 30.714138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896763, 34.280617, 30.173964>,  <40.448822, 33.813862, 30.079699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896763, 34.280617, 30.173964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.029160, 34.202911, 30.543331>,  <40.108597, 34.156288, 30.764952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.029160, 34.202911, 30.543331>,  <39.896763, 34.280617, 30.173964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029160, 34.202911, 30.543331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170605, 0.974773, 0.143916,
		-0.928082, 0.109904, 0.355787,
		0.330995, -0.194265, 0.923419,
		40.128456, 34.144630, 30.820356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628986, 34.906399, 30.667557>,  <39.896763, 34.280617, 30.173964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628986, 34.906399, 30.667557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.945168, 34.713249, 30.818295>,  <40.134876, 34.597359, 30.908737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.945168, 34.713249, 30.818295>,  <39.628986, 34.906399, 30.667557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945168, 34.713249, 30.818295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246566, 0.814036, 0.525881,
		-0.560699, -0.322769, 0.762520,
		0.790456, -0.482873, 0.376845,
		40.182304, 34.568386, 30.931349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639713, 35.158382, 31.281410>,  <39.628986, 34.906399, 30.667557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639713, 35.158382, 31.281410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011112, 35.015297, 31.241531>,  <40.233952, 34.929447, 31.217604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011112, 35.015297, 31.241531>,  <39.639713, 35.158382, 31.281410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011112, 35.015297, 31.241531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367866, 0.849346, 0.378532,
		-0.050728, -0.388141, 0.920203,
		0.928494, -0.357713, -0.099698,
		40.289661, 34.907982, 31.211622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906548, 35.064369, 32.001637>,  <39.639713, 35.158382, 31.281410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906548, 35.064369, 32.001637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204018, 35.100475, 31.736670>,  <40.382500, 35.122139, 31.577688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204018, 35.100475, 31.736670>,  <39.906548, 35.064369, 32.001637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204018, 35.100475, 31.736670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415516, 0.713811, 0.563756,
		0.523732, -0.694497, 0.493334,
		0.743674, 0.090269, -0.662420,
		40.427120, 35.127556, 31.537943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452301, 34.912880, 32.348610>,  <39.906548, 35.064369, 32.001637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452301, 34.912880, 32.348610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565575, 35.161110, 32.056118>,  <40.633537, 35.310047, 31.880623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565575, 35.161110, 32.056118>,  <40.452301, 34.912880, 32.348610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565575, 35.161110, 32.056118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432016, 0.598165, 0.674952,
		0.856254, -0.507035, -0.098710,
		0.283180, 0.620575, -0.731229,
		40.650528, 35.347282, 31.836750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940136, 35.301643, 32.664516>,  <40.452301, 34.912880, 32.348610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940136, 35.301643, 32.664516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921005, 35.514973, 32.326691>,  <40.909527, 35.642971, 32.123997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921005, 35.514973, 32.326691>,  <40.940136, 35.301643, 32.664516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921005, 35.514973, 32.326691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207189, 0.832436, 0.513929,
		0.977131, -0.150403, -0.150312,
		-0.047829, 0.533319, -0.844561,
		40.906658, 35.674969, 32.073322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667862, 35.664230, 32.589157>,  <40.940136, 35.301643, 32.664516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667862, 35.664230, 32.589157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.360550, 35.828957, 32.393135>,  <41.176163, 35.927792, 32.275520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.360550, 35.828957, 32.393135>,  <41.667862, 35.664230, 32.589157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360550, 35.828957, 32.393135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330734, 0.910848, 0.246923,
		0.548054, 0.027627, -0.835987,
		-0.768279, 0.411816, -0.490056,
		41.130066, 35.952503, 32.246117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906967, 36.120796, 32.253471>,  <41.667862, 35.664230, 32.589157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906967, 36.120796, 32.253471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538391, 36.274330, 32.277504>,  <41.317245, 36.366451, 32.291924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538391, 36.274330, 32.277504>,  <41.906967, 36.120796, 32.253471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538391, 36.274330, 32.277504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369422, 0.817747, 0.441381,
		0.120291, 0.428902, -0.895306,
		-0.921443, 0.383839, 0.060078,
		41.261959, 36.389481, 32.295528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022942, 36.895393, 32.172871>,  <41.906967, 36.120796, 32.253471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022942, 36.895393, 32.172871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644527, 36.873024, 32.300549>,  <41.417480, 36.859604, 32.377155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644527, 36.873024, 32.300549>,  <42.022942, 36.895393, 32.172871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644527, 36.873024, 32.300549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082218, 0.911352, 0.403333,
		-0.313457, 0.407812, -0.857575,
		-0.946036, -0.055919, 0.319199,
		41.360718, 36.856247, 32.396309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665447, 37.527103, 31.996214>,  <42.022942, 36.895393, 32.172871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665447, 37.527103, 31.996214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.443211, 37.369507, 32.289085>,  <41.309868, 37.274948, 32.464809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.443211, 37.369507, 32.289085>,  <41.665447, 37.527103, 31.996214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443211, 37.369507, 32.289085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138002, 0.912082, 0.386086,
		-0.819923, 0.113464, -0.561117,
		-0.555591, -0.393996, 0.732179,
		41.276535, 37.251308, 32.508739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085754, 37.936810, 31.966892>,  <41.665447, 37.527103, 31.996214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085754, 37.936810, 31.966892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130814, 37.774284, 32.329597>,  <41.157848, 37.676769, 32.547222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130814, 37.774284, 32.329597>,  <41.085754, 37.936810, 31.966892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130814, 37.774284, 32.329597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011536, 0.913044, 0.407699,
		-0.993568, -0.035465, 0.107538,
		0.112646, -0.406317, 0.906762,
		41.164608, 37.652390, 32.601627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656818, 38.250660, 32.446896>,  <41.085754, 37.936810, 31.966892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656818, 38.250660, 32.446896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.961926, 38.101967, 32.658554>,  <41.144989, 38.012753, 32.785549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.961926, 38.101967, 32.658554>,  <40.656818, 38.250660, 32.446896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961926, 38.101967, 32.658554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156650, 0.900111, 0.406523,
		-0.627411, -0.227192, 0.744808,
		0.762769, -0.371732, 0.529150,
		41.190758, 37.990448, 32.817299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719017, 38.601772, 33.183002>,  <40.656818, 38.250660, 32.446896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719017, 38.601772, 33.183002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.072975, 38.460682, 33.061317>,  <41.285351, 38.376026, 32.988308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.072975, 38.460682, 33.061317>,  <40.719017, 38.601772, 33.183002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072975, 38.460682, 33.061317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458146, 0.776961, 0.431780,
		0.084059, -0.521453, 0.849129,
		0.884893, -0.352730, -0.304212,
		41.338444, 38.354862, 32.970055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115192, 38.946465, 33.832478>,  <40.719017, 38.601772, 33.183002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115192, 38.946465, 33.832478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.800552, 39.093182, 34.031158>,  <40.611767, 39.181213, 34.150368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.800552, 39.093182, 34.031158>,  <41.115192, 38.946465, 33.832478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800552, 39.093182, 34.031158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612297, -0.567168, -0.550830,
		0.079672, -0.737415, 0.670724,
		-0.786603, 0.366796, 0.496705,
		40.564571, 39.203220, 34.180168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632828, 38.361755, 34.057087>,  <41.115192, 38.946465, 33.832478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632828, 38.361755, 34.057087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.410183, 38.693863, 34.045521>,  <40.276596, 38.893127, 34.038582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.410183, 38.693863, 34.045521>,  <40.632828, 38.361755, 34.057087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410183, 38.693863, 34.045521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649621, -0.456671, -0.607819,
		-0.517861, -0.319532, 0.793549,
		-0.556608, 0.830271, -0.028917,
		40.243202, 38.942944, 34.036846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949055, 38.095398, 34.118752>,  <40.632828, 38.361755, 34.057087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949055, 38.095398, 34.118752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.848034, 38.461189, 33.992290>,  <39.787422, 38.680664, 33.916412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.848034, 38.461189, 33.992290>,  <39.949055, 38.095398, 34.118752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848034, 38.461189, 33.992290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679576, -0.400234, -0.614808,
		-0.688761, 0.059577, 0.722536,
		-0.252555, 0.914474, -0.316152,
		39.772266, 38.735531, 33.897446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243870, 38.167606, 34.253296>,  <39.949055, 38.095398, 34.118752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243870, 38.167606, 34.253296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354610, 38.416016, 33.959988>,  <39.421055, 38.565060, 33.784004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354610, 38.416016, 33.959988>,  <39.243870, 38.167606, 34.253296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354610, 38.416016, 33.959988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685132, -0.407482, -0.603782,
		-0.673757, 0.669543, 0.312672,
		0.276850, 0.621024, -0.733269,
		39.437664, 38.602322, 33.740005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654343, 38.645065, 34.039951>,  <39.243870, 38.167606, 34.253296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654343, 38.645065, 34.039951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916576, 38.608261, 33.740154>,  <39.073917, 38.586178, 33.560276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916576, 38.608261, 33.740154>,  <38.654343, 38.645065, 34.039951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916576, 38.608261, 33.740154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694275, -0.463793, -0.550344,
		-0.296973, 0.881153, -0.367936,
		0.655583, -0.092011, -0.749496,
		39.113251, 38.580658, 33.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273060, 38.883987, 33.517296>,  <38.654343, 38.645065, 34.039951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273060, 38.883987, 33.517296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554771, 38.654099, 33.350594>,  <38.723801, 38.516167, 33.250572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554771, 38.654099, 33.350594>,  <38.273060, 38.883987, 33.517296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554771, 38.654099, 33.350594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684347, -0.393462, -0.613887,
		0.188834, 0.717555, -0.670415,
		0.704280, -0.574720, -0.416757,
		38.766056, 38.481682, 33.225567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069172, 38.899719, 32.900822>,  <38.273060, 38.883987, 33.517296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069172, 38.899719, 32.900822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324917, 38.592197, 32.905804>,  <38.478363, 38.407684, 32.908794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324917, 38.592197, 32.905804>,  <38.069172, 38.899719, 32.900822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324917, 38.592197, 32.905804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541828, -0.461977, -0.702140,
		0.545564, 0.442171, -0.711930,
		0.639361, -0.768806, 0.012458,
		38.516724, 38.361557, 32.909542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123528, 38.580387, 32.103657>,  <38.069172, 38.899719, 32.900822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123528, 38.580387, 32.103657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.315296, 38.314373, 32.332703>,  <38.430355, 38.154762, 32.470131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.315296, 38.314373, 32.332703>,  <38.123528, 38.580387, 32.103657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315296, 38.314373, 32.332703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178095, -0.712635, -0.678552,
		0.859325, 0.223332, -0.460090,
		0.479419, -0.665037, 0.572611,
		38.459122, 38.114861, 32.504486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438129, 38.104271, 31.657108>,  <38.123528, 38.580387, 32.103657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438129, 38.104271, 31.657108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.417671, 37.901955, 32.001564>,  <38.405396, 37.780567, 32.208237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.417671, 37.901955, 32.001564>,  <38.438129, 38.104271, 31.657108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417671, 37.901955, 32.001564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200770, -0.839459, -0.504975,
		0.978303, -0.198716, -0.058616,
		-0.051141, -0.505786, 0.861142,
		38.402328, 37.750217, 32.259907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711998, 37.400219, 31.477335>,  <38.438129, 38.104271, 31.657108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711998, 37.400219, 31.477335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514889, 37.333229, 31.818890>,  <38.396622, 37.293037, 32.023823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514889, 37.333229, 31.818890>,  <38.711998, 37.400219, 31.477335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514889, 37.333229, 31.818890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361633, -0.853129, -0.376021,
		0.791450, -0.494088, 0.359839,
		-0.492777, -0.167472, 0.853887,
		38.367054, 37.282986, 32.075054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924133, 36.712471, 31.774025>,  <38.711998, 37.400219, 31.477335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924133, 36.712471, 31.774025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564293, 36.804577, 31.922453>,  <38.348389, 36.859840, 32.011509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564293, 36.804577, 31.922453>,  <38.924133, 36.712471, 31.774025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564293, 36.804577, 31.922453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338449, -0.904585, -0.259189,
		0.275981, -0.358755, 0.891700,
		-0.899604, 0.230264, 0.371068,
		38.294411, 36.873657, 32.033775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831394, 36.194298, 32.229855>,  <38.924133, 36.712471, 31.774025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831394, 36.194298, 32.229855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.466080, 36.335117, 32.147911>,  <38.246891, 36.419609, 32.098743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.466080, 36.335117, 32.147911>,  <38.831394, 36.194298, 32.229855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466080, 36.335117, 32.147911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283464, -0.910520, -0.301002,
		-0.292500, -0.216830, 0.931359,
		-0.913287, 0.352050, -0.204863,
		38.192093, 36.440731, 32.086452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319298, 35.724926, 32.595852>,  <38.831394, 36.194298, 32.229855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319298, 35.724926, 32.595852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.072742, 35.890690, 32.328022>,  <37.924809, 35.990150, 32.167324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.072742, 35.890690, 32.328022>,  <38.319298, 35.724926, 32.595852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072742, 35.890690, 32.328022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388509, -0.899662, -0.199172,
		-0.684931, 0.137370, 0.715541,
		-0.616384, 0.414413, -0.669576,
		37.887829, 36.015015, 32.127148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606869, 35.428036, 32.665798>,  <38.319298, 35.724926, 32.595852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606869, 35.428036, 32.665798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644012, 35.583992, 32.299332>,  <37.666298, 35.677567, 32.079453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644012, 35.583992, 32.299332>,  <37.606869, 35.428036, 32.665798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644012, 35.583992, 32.299332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396706, -0.829468, -0.393201,
		-0.913237, 0.399962, 0.077647,
		0.092859, 0.389889, -0.916168,
		37.671871, 35.700958, 32.024483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034790, 35.706818, 32.877781>,  <37.606869, 35.428036, 32.665798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034790, 35.706818, 32.877781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.869816, 35.629246, 33.233826>,  <36.770832, 35.582703, 33.447453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.869816, 35.629246, 33.233826>,  <37.034790, 35.706818, 32.877781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869816, 35.629246, 33.233826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589358, 0.688259, 0.423032,
		-0.694663, 0.699064, -0.169566,
		-0.412432, -0.193930, 0.890107,
		36.746086, 35.571068, 33.500858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916569, 36.409267, 33.206326>,  <37.034790, 35.706818, 32.877781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916569, 36.409267, 33.206326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.905746, 36.122791, 33.485279>,  <36.899254, 35.950905, 33.652649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.905746, 36.122791, 33.485279>,  <36.916569, 36.409267, 33.206326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905746, 36.122791, 33.485279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493026, 0.597321, 0.632561,
		-0.869594, 0.360941, 0.336940,
		-0.027056, -0.716191, 0.697380,
		36.897629, 35.907932, 33.694492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026600, 36.836330, 33.856560>,  <36.916569, 36.409267, 33.206326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026600, 36.836330, 33.856560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076443, 36.454376, 33.964382>,  <37.106350, 36.225204, 34.029076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076443, 36.454376, 33.964382>,  <37.026600, 36.836330, 33.856560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076443, 36.454376, 33.964382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594357, 0.289375, 0.750335,
		-0.794489, 0.066719, 0.603602,
		0.124606, -0.954888, 0.269560,
		37.113823, 36.167912, 34.045250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894222, 36.771187, 34.649761>,  <37.026600, 36.836330, 33.856560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894222, 36.771187, 34.649761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130959, 36.466354, 34.544720>,  <37.272999, 36.283455, 34.481697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130959, 36.466354, 34.544720>,  <36.894222, 36.771187, 34.649761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130959, 36.466354, 34.544720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656102, 0.266201, 0.706164,
		-0.468249, -0.590229, 0.657551,
		0.591839, -0.762081, -0.262602,
		37.308510, 36.237732, 34.465939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134220, 36.537834, 35.229771>,  <36.894222, 36.771187, 34.649761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134220, 36.537834, 35.229771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404209, 36.397896, 34.969917>,  <37.566204, 36.313934, 34.814007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404209, 36.397896, 34.969917>,  <37.134220, 36.537834, 35.229771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404209, 36.397896, 34.969917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734380, 0.233345, 0.637366,
		-0.071393, -0.907280, 0.414422,
		0.674973, -0.349847, -0.649629,
		37.606701, 36.292942, 34.775028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602024, 36.148430, 35.603714>,  <37.134220, 36.537834, 35.229771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602024, 36.148430, 35.603714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787106, 36.263905, 35.268436>,  <37.898155, 36.333191, 35.067268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787106, 36.263905, 35.268436>,  <37.602024, 36.148430, 35.603714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787106, 36.263905, 35.268436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821175, 0.216690, 0.527937,
		0.334036, -0.932580, -0.136799,
		0.462700, 0.288686, -0.838194,
		37.925915, 36.350510, 35.016979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325443, 35.812683, 35.446571>,  <37.602024, 36.148430, 35.603714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325443, 35.812683, 35.446571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346409, 36.146439, 35.227100>,  <38.358990, 36.346691, 35.095417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346409, 36.146439, 35.227100>,  <38.325443, 35.812683, 35.446571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346409, 36.146439, 35.227100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911549, 0.184411, 0.367520,
		0.407837, -0.519414, -0.750918,
		0.052417, 0.834387, -0.548681,
		38.362133, 36.396755, 35.062496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071609, 35.891720, 35.422249>,  <38.325443, 35.812683, 35.446571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071609, 35.891720, 35.422249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939121, 36.248035, 35.297810>,  <38.859627, 36.461826, 35.223145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939121, 36.248035, 35.297810>,  <39.071609, 35.891720, 35.422249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939121, 36.248035, 35.297810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844150, 0.427062, 0.324083,
		0.421550, -0.155273, -0.893413,
		-0.331221, 0.890791, -0.311101,
		38.839756, 36.515274, 35.204479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612041, 36.268246, 35.062740>,  <39.071609, 35.891720, 35.422249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612041, 36.268246, 35.062740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353153, 36.541023, 35.199017>,  <39.197823, 36.704689, 35.280781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353153, 36.541023, 35.199017>,  <39.612041, 36.268246, 35.062740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353153, 36.541023, 35.199017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759378, 0.537628, 0.366471,
		0.066748, 0.495896, -0.865813,
		-0.647217, 0.681940, 0.340687,
		39.158989, 36.745605, 35.301224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974709, 36.857098, 34.895641>,  <39.612041, 36.268246, 35.062740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974709, 36.857098, 34.895641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690594, 36.982388, 35.147793>,  <39.520126, 37.057564, 35.299084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690594, 36.982388, 35.147793>,  <39.974709, 36.857098, 34.895641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690594, 36.982388, 35.147793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655000, 0.622096, 0.428918,
		-0.257809, 0.717555, -0.647031,
		-0.710288, 0.313227, 0.630381,
		39.477509, 37.076355, 35.336906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041065, 37.602482, 34.827496>,  <39.974709, 36.857098, 34.895641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041065, 37.602482, 34.827496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870571, 37.510674, 35.177502>,  <39.768276, 37.455589, 35.387505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870571, 37.510674, 35.177502>,  <40.041065, 37.602482, 34.827496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870571, 37.510674, 35.177502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579963, 0.672997, 0.459040,
		-0.694240, 0.703132, -0.153738,
		-0.426231, -0.229521, 0.875012,
		39.742702, 37.441818, 35.440006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636768, 38.228020, 35.148571>,  <40.041065, 37.602482, 34.827496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636768, 38.228020, 35.148571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743206, 37.965450, 35.430935>,  <39.807068, 37.807907, 35.600353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743206, 37.965450, 35.430935>,  <39.636768, 38.228020, 35.148571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743206, 37.965450, 35.430935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686166, 0.643323, 0.339576,
		-0.677031, 0.394011, 0.621598,
		0.266091, -0.656423, 0.705907,
		39.823032, 37.768524, 35.642708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.802025, 33.340534, 32.695793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910763, 33.193649, 33.051601>,  <33.976006, 33.105518, 33.265087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910763, 33.193649, 33.051601>,  <33.802025, 33.340534, 32.695793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910763, 33.193649, 33.051601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598656, 0.788238, 0.142449,
		-0.753466, 0.493795, 0.434114,
		0.271844, -0.367216, 0.889524,
		33.992317, 33.083485, 33.318459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646702, 33.950394, 33.126850>,  <33.802025, 33.340534, 32.695793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646702, 33.950394, 33.126850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903206, 33.706482, 33.313164>,  <34.057110, 33.560135, 33.424953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903206, 33.706482, 33.313164>,  <33.646702, 33.950394, 33.126850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903206, 33.706482, 33.313164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598667, 0.777302, 0.193389,
		-0.479980, 0.154837, 0.863508,
		0.641263, -0.609776, 0.465785,
		34.095585, 33.523548, 33.452900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006687, 34.395584, 33.662525>,  <33.646702, 33.950394, 33.126850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006687, 34.395584, 33.662525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246365, 34.075863, 33.644276>,  <34.390171, 33.884029, 33.633327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246365, 34.075863, 33.644276>,  <34.006687, 34.395584, 33.662525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246365, 34.075863, 33.644276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800561, 0.598772, 0.023965,
		0.008163, -0.050884, 0.998671,
		0.599196, -0.799301, -0.045624,
		34.426125, 33.836071, 33.630589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473747, 34.440617, 34.210274>,  <34.006687, 34.395584, 33.662525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473747, 34.440617, 34.210274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634678, 34.224754, 33.914463>,  <34.731236, 34.095238, 33.736977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634678, 34.224754, 33.914463>,  <34.473747, 34.440617, 34.210274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634678, 34.224754, 33.914463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780719, 0.624127, -0.030713,
		0.478134, -0.565006, 0.672426,
		0.402326, -0.539660, -0.739527,
		34.755375, 34.062855, 33.692604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097416, 34.414753, 34.433403>,  <34.473747, 34.440617, 34.210274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097416, 34.414753, 34.433403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132469, 34.311440, 34.048569>,  <35.153503, 34.249451, 33.817669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132469, 34.311440, 34.048569>,  <35.097416, 34.414753, 34.433403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132469, 34.311440, 34.048569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893653, 0.447093, -0.038625,
		0.440118, -0.856385, 0.270001,
		0.087638, -0.258287, -0.962085,
		35.158760, 34.233952, 33.759945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799015, 34.117641, 34.337498>,  <35.097416, 34.414753, 34.433403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799015, 34.117641, 34.337498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660187, 34.263107, 33.991714>,  <35.576889, 34.350388, 33.784245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660187, 34.263107, 33.991714>,  <35.799015, 34.117641, 34.337498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660187, 34.263107, 33.991714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852083, 0.507344, -0.128675,
		0.391784, -0.781251, -0.485955,
		-0.347073, 0.363661, -0.864460,
		35.556065, 34.372204, 33.732376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441494, 34.091824, 33.894012>,  <35.799015, 34.117641, 34.337498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441494, 34.091824, 33.894012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182606, 34.332340, 33.706589>,  <36.027271, 34.476650, 33.594135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182606, 34.332340, 33.706589>,  <36.441494, 34.091824, 33.894012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182606, 34.332340, 33.706589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727028, 0.671710, -0.142251,
		0.229204, -0.432726, -0.871902,
		-0.647221, 0.601293, -0.468563,
		35.988438, 34.512730, 33.566021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842617, 34.360306, 33.351227>,  <36.441494, 34.091824, 33.894012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842617, 34.360306, 33.351227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530315, 34.608707, 33.378880>,  <36.342934, 34.757748, 33.395473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530315, 34.608707, 33.378880>,  <36.842617, 34.360306, 33.351227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530315, 34.608707, 33.378880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624674, 0.778316, 0.063299,
		-0.014500, 0.092608, -0.995597,
		-0.780751, 0.621006, 0.069136,
		36.296089, 34.795010, 33.399620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057529, 34.919701, 32.953266>,  <36.842617, 34.360306, 33.351227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057529, 34.919701, 32.953266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764938, 35.032505, 33.201591>,  <36.589386, 35.100189, 33.350586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764938, 35.032505, 33.201591>,  <37.057529, 34.919701, 32.953266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764938, 35.032505, 33.201591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417040, 0.905350, 0.080112,
		-0.539464, 0.317505, -0.779852,
		-0.731475, 0.282012, 0.620816,
		36.545494, 35.117107, 33.387836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051258, 35.181435, 32.269241>,  <37.057529, 34.919701, 32.953266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051258, 35.181435, 32.269241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286926, 35.323952, 31.979156>,  <37.428326, 35.409462, 31.805105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286926, 35.323952, 31.979156>,  <37.051258, 35.181435, 32.269241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286926, 35.323952, 31.979156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332068, -0.711467, -0.619311,
		-0.736623, 0.605699, -0.300859,
		0.589167, 0.356293, -0.725216,
		37.463676, 35.430840, 31.761591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605602, 35.260254, 31.771456>,  <37.051258, 35.181435, 32.269241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605602, 35.260254, 31.771456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964825, 35.243073, 31.596340>,  <37.180359, 35.232761, 31.491272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964825, 35.243073, 31.596340>,  <36.605602, 35.260254, 31.771456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964825, 35.243073, 31.596340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402801, -0.480278, -0.779157,
		-0.176789, 0.876064, -0.448617,
		0.898052, -0.042957, -0.437787,
		37.234241, 35.230186, 31.465004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456406, 35.416996, 31.062677>,  <36.605602, 35.260254, 31.771456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456406, 35.416996, 31.062677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805847, 35.222698, 31.074530>,  <37.015511, 35.106121, 31.081640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805847, 35.222698, 31.074530>,  <36.456406, 35.416996, 31.062677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805847, 35.222698, 31.074530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245383, -0.492258, -0.835146,
		0.420251, 0.722313, -0.549230,
		0.873599, -0.485743, 0.029629,
		37.067928, 35.076977, 31.083418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621151, 35.358765, 30.316824>,  <36.456406, 35.416996, 31.062677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621151, 35.358765, 30.316824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858685, 35.114098, 30.525909>,  <37.001205, 34.967297, 30.651360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858685, 35.114098, 30.525909>,  <36.621151, 35.358765, 30.316824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858685, 35.114098, 30.525909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110941, -0.705706, -0.699765,
		0.796904, 0.357553, -0.486930,
		0.593832, -0.611666, 0.522713,
		37.036835, 34.930599, 30.682724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056435, 35.101776, 29.838196>,  <36.621151, 35.358765, 30.316824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056435, 35.101776, 29.838196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035942, 34.828842, 30.129892>,  <37.023647, 34.665081, 30.304911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035942, 34.828842, 30.129892>,  <37.056435, 35.101776, 29.838196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035942, 34.828842, 30.129892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015411, -0.729572, -0.683731,
		0.998568, -0.046267, 0.026862,
		-0.051232, -0.682337, 0.729240,
		37.020573, 34.624142, 30.348665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287434, 34.504494, 29.461876>,  <37.056435, 35.101776, 29.838196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287434, 34.504494, 29.461876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120422, 34.373924, 29.801079>,  <37.020214, 34.295582, 30.004601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120422, 34.373924, 29.801079>,  <37.287434, 34.504494, 29.461876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120422, 34.373924, 29.801079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272527, -0.845301, -0.459561,
		0.866833, -0.422984, 0.263978,
		-0.417528, -0.326422, 0.848009,
		36.995163, 34.275997, 30.055481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489372, 33.837597, 29.390123>,  <37.287434, 34.504494, 29.461876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489372, 33.837597, 29.390123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187149, 33.847363, 29.651972>,  <37.005814, 33.853222, 29.809080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187149, 33.847363, 29.651972>,  <37.489372, 33.837597, 29.390123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187149, 33.847363, 29.651972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388171, -0.821656, -0.417379,
		0.527682, -0.569461, 0.630290,
		-0.755562, 0.024416, 0.654621,
		36.960480, 33.854687, 29.848358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340439, 33.119694, 29.644335>,  <37.489372, 33.837597, 29.390123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340439, 33.119694, 29.644335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999378, 33.312256, 29.725554>,  <36.794743, 33.427795, 29.774284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999378, 33.312256, 29.725554>,  <37.340439, 33.119694, 29.644335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999378, 33.312256, 29.725554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518633, -0.732799, -0.440484,
		-0.063258, -0.480888, 0.874497,
		-0.852654, 0.481407, 0.203049,
		36.743584, 33.456676, 29.786469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919765, 32.566307, 29.836283>,  <37.340439, 33.119694, 29.644335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919765, 32.566307, 29.836283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662273, 32.858177, 29.744030>,  <36.507778, 33.033298, 29.688679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662273, 32.858177, 29.744030>,  <36.919765, 32.566307, 29.836283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662273, 32.858177, 29.744030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684153, -0.683774, -0.253748,
		-0.342854, -0.005556, 0.939372,
		-0.643728, 0.729673, -0.230634,
		36.469154, 33.077080, 29.674839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228596, 32.336376, 30.140532>,  <36.919765, 32.566307, 29.836283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228596, 32.336376, 30.140532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142628, 32.583179, 29.837717>,  <36.091045, 32.731262, 29.656029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142628, 32.583179, 29.837717>,  <36.228596, 32.336376, 30.140532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142628, 32.583179, 29.837717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518983, -0.728801, -0.446659,
		-0.827323, 0.296892, 0.476856,
		-0.214924, 0.617012, -0.757037,
		36.078152, 32.768284, 29.610605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541584, 32.344818, 30.126587>,  <36.228596, 32.336376, 30.140532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541584, 32.344818, 30.126587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660110, 32.453415, 29.760311>,  <35.731228, 32.518574, 29.540546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660110, 32.453415, 29.760311>,  <35.541584, 32.344818, 30.126587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660110, 32.453415, 29.760311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633633, -0.661493, -0.401168,
		-0.714636, 0.699085, -0.023989,
		0.296319, 0.271489, -0.915690,
		35.749008, 32.534863, 29.485603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925278, 32.355915, 29.761900>,  <35.541584, 32.344818, 30.126587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925278, 32.355915, 29.761900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202591, 32.344963, 29.473845>,  <35.368980, 32.338394, 29.301010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202591, 32.344963, 29.473845>,  <34.925278, 32.355915, 29.761900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202591, 32.344963, 29.473845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540058, -0.681383, -0.494018,
		-0.477168, 0.731414, -0.487179,
		0.693288, -0.027376, -0.720141,
		35.410576, 32.336750, 29.257803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449173, 32.320610, 29.080637>,  <34.925278, 32.355915, 29.761900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449173, 32.320610, 29.080637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827042, 32.195473, 29.041195>,  <35.053764, 32.120388, 29.017530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827042, 32.195473, 29.041195>,  <34.449173, 32.320610, 29.080637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827042, 32.195473, 29.041195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322187, -0.828522, -0.457982,
		0.061581, 0.464412, -0.883476,
		0.944671, -0.312847, -0.098606,
		35.110443, 32.101620, 29.011614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543640, 32.261257, 28.349680>,  <34.449173, 32.320610, 29.080637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543640, 32.261257, 28.349680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839775, 32.062077, 28.530323>,  <35.017456, 31.942568, 28.638708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839775, 32.062077, 28.530323>,  <34.543640, 32.261257, 28.349680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839775, 32.062077, 28.530323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326097, -0.853481, -0.406485,
		0.587848, 0.153668, -0.794242,
		0.740334, -0.497951, 0.451607,
		35.061874, 31.912691, 28.665806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.935982, 28.446108, 36.475365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787960, 28.746099, 36.256062>,  <35.699146, 28.926094, 36.124477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787960, 28.746099, 36.256062>,  <35.935982, 28.446108, 36.475365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787960, 28.746099, 36.256062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835464, 0.526744, 0.156650,
		0.406279, -0.400085, -0.821504,
		-0.370050, 0.749981, -0.548262,
		35.676945, 28.971094, 36.091583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465378, 28.578344, 35.959511>,  <35.935982, 28.446108, 36.475365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465378, 28.578344, 35.959511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242390, 28.908546, 35.994770>,  <36.108597, 29.106667, 36.015926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242390, 28.908546, 35.994770>,  <36.465378, 28.578344, 35.959511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242390, 28.908546, 35.994770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827133, 0.543160, 0.144319,
		0.071255, 0.153367, -0.985597,
		-0.557470, 0.825503, 0.088152,
		36.075150, 29.156197, 36.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703911, 29.066698, 35.577854>,  <36.465378, 28.578344, 35.959511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703911, 29.066698, 35.577854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481800, 29.288658, 35.825645>,  <36.348534, 29.421835, 35.974319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481800, 29.288658, 35.825645>,  <36.703911, 29.066698, 35.577854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481800, 29.288658, 35.825645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756685, 0.646172, 0.099448,
		-0.345105, 0.523971, -0.778689,
		-0.555275, 0.554902, 0.619478,
		36.315216, 29.455130, 36.011490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835606, 29.830223, 35.497868>,  <36.703911, 29.066698, 35.577854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835606, 29.830223, 35.497868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652775, 29.822252, 35.853550>,  <36.543076, 29.817471, 36.066959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652775, 29.822252, 35.853550>,  <36.835606, 29.830223, 35.497868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652775, 29.822252, 35.853550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690470, 0.622245, 0.368865,
		-0.560653, 0.782569, -0.270656,
		-0.457077, -0.019926, 0.889204,
		36.515652, 29.816275, 36.120312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666012, 30.495388, 35.687717>,  <36.835606, 29.830223, 35.497868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666012, 30.495388, 35.687717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676792, 30.290716, 36.031219>,  <36.683262, 30.167913, 36.237320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676792, 30.290716, 36.031219>,  <36.666012, 30.495388, 35.687717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676792, 30.290716, 36.031219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647701, 0.663284, 0.374884,
		-0.761418, 0.546112, 0.349291,
		0.026951, -0.511679, 0.858754,
		36.684875, 30.137213, 36.288845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601826, 31.048653, 36.262436>,  <36.666012, 30.495388, 35.687717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601826, 31.048653, 36.262436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769051, 30.721949, 36.421497>,  <36.869385, 30.525927, 36.516933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769051, 30.721949, 36.421497>,  <36.601826, 31.048653, 36.262436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769051, 30.721949, 36.421497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751225, 0.556965, 0.354191,
		-0.510768, 0.150653, 0.846416,
		0.418064, -0.816758, 0.397654,
		36.894470, 30.476921, 36.540794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836216, 31.236317, 36.973839>,  <36.601826, 31.048653, 36.262436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836216, 31.236317, 36.973839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038197, 30.901300, 36.890362>,  <37.159386, 30.700291, 36.840275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038197, 30.901300, 36.890362>,  <36.836216, 31.236317, 36.973839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038197, 30.901300, 36.890362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851022, 0.442700, 0.282451,
		-0.144176, -0.320224, 0.936306,
		0.504950, -0.837540, -0.208691,
		37.189682, 30.650038, 36.827755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245480, 31.147934, 37.505459>,  <36.836216, 31.236317, 36.973839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245480, 31.147934, 37.505459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407669, 30.914984, 37.223629>,  <37.504982, 30.775213, 37.054531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407669, 30.914984, 37.223629>,  <37.245480, 31.147934, 37.505459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407669, 30.914984, 37.223629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892939, 0.417255, 0.168990,
		0.195572, -0.697666, 0.689213,
		0.405476, -0.582376, -0.704576,
		37.529312, 30.740271, 37.012257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869949, 30.879086, 37.851486>,  <37.245480, 31.147934, 37.505459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869949, 30.879086, 37.851486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943573, 30.844894, 37.459808>,  <37.987747, 30.824379, 37.224804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943573, 30.844894, 37.459808>,  <37.869949, 30.879086, 37.851486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943573, 30.844894, 37.459808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906287, 0.400389, 0.135400,
		0.380483, -0.912350, 0.151164,
		0.184056, -0.085480, -0.979192,
		37.998791, 30.819250, 37.166050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603474, 30.594324, 37.815666>,  <37.869949, 30.879086, 37.851486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603474, 30.594324, 37.815666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557995, 30.754086, 37.451786>,  <38.530708, 30.849943, 37.233459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557995, 30.754086, 37.451786>,  <38.603474, 30.594324, 37.815666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557995, 30.754086, 37.451786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907341, 0.414746, 0.068690,
		0.404729, -0.817596, -0.409551,
		-0.113699, 0.399403, -0.909698,
		38.523884, 30.873907, 37.178875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218529, 30.419575, 37.422970>,  <38.603474, 30.594324, 37.815666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218529, 30.419575, 37.422970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.061096, 30.741791, 37.245792>,  <38.966637, 30.935120, 37.139484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.061096, 30.741791, 37.245792>,  <39.218529, 30.419575, 37.422970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061096, 30.741791, 37.245792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908605, 0.414123, -0.054215,
		0.139762, -0.423801, -0.894907,
		-0.393578, 0.805540, -0.442946,
		38.943024, 30.983452, 37.112907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869099, 30.658073, 37.105133>,  <39.218529, 30.419575, 37.422970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869099, 30.658073, 37.105133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591003, 30.942808, 37.065266>,  <39.424149, 31.113649, 37.041344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591003, 30.942808, 37.065266>,  <39.869099, 30.658073, 37.105133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591003, 30.942808, 37.065266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712689, 0.664669, -0.224253,
		-0.093385, -0.226941, -0.969421,
		-0.695236, 0.711838, -0.099668,
		39.382431, 31.156359, 37.035366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006874, 31.041264, 36.574471>,  <39.869099, 30.658073, 37.105133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006874, 31.041264, 36.574471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792740, 31.314650, 36.772984>,  <39.664261, 31.478682, 36.892094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792740, 31.314650, 36.772984>,  <40.006874, 31.041264, 36.574471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792740, 31.314650, 36.772984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778660, 0.627004, -0.023562,
		-0.327276, 0.373824, -0.867840,
		-0.535331, 0.683463, 0.496285,
		39.632141, 31.519688, 36.921867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138737, 31.575144, 36.246395>,  <40.006874, 31.041264, 36.574471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138737, 31.575144, 36.246395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.007092, 31.707008, 36.600346>,  <39.928104, 31.786127, 36.812717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.007092, 31.707008, 36.600346>,  <40.138737, 31.575144, 36.246395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007092, 31.707008, 36.600346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715111, 0.698988, 0.005566,
		-0.616685, 0.634618, -0.465790,
		-0.329114, 0.329659, 0.884878,
		39.908356, 31.805906, 36.865810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873985, 31.748154, 35.535606>,  <40.138737, 31.575144, 36.246395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873985, 31.748154, 35.535606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.028793, 31.708889, 35.168873>,  <40.121677, 31.685331, 34.948833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.028793, 31.708889, 35.168873>,  <39.873985, 31.748154, 35.535606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028793, 31.708889, 35.168873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643322, -0.741071, -0.192225,
		-0.660567, 0.664212, -0.349961,
		0.387025, -0.098160, -0.916830,
		40.144901, 31.679441, 34.893826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333267, 31.825083, 34.963737>,  <39.873985, 31.748154, 35.535606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333267, 31.825083, 34.963737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.620338, 31.599422, 34.800438>,  <39.792580, 31.464025, 34.702457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.620338, 31.599422, 34.800438>,  <39.333267, 31.825083, 34.963737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620338, 31.599422, 34.800438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681678, -0.688946, -0.246309,
		-0.142309, 0.455068, -0.879012,
		0.717679, -0.564151, -0.408253,
		39.835644, 31.430178, 34.677963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121189, 31.630234, 34.231354>,  <39.333267, 31.825083, 34.963737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121189, 31.630234, 34.231354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423775, 31.379005, 34.304337>,  <39.605328, 31.228270, 34.348125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423775, 31.379005, 34.304337>,  <39.121189, 31.630234, 34.231354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423775, 31.379005, 34.304337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575571, -0.771771, -0.270348,
		0.310609, 0.099495, -0.945316,
		0.756466, -0.628069, 0.182452,
		39.650715, 31.190584, 34.359074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315079, 31.276152, 33.639755>,  <39.121189, 31.630234, 34.231354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315079, 31.276152, 33.639755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459641, 31.024546, 33.915066>,  <39.546379, 30.873583, 34.080254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459641, 31.024546, 33.915066>,  <39.315079, 31.276152, 33.639755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459641, 31.024546, 33.915066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442308, -0.765488, -0.467324,
		0.820823, -0.135537, -0.554869,
		0.361406, -0.629013, 0.688279,
		39.568062, 30.835842, 34.121548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638805, 30.811783, 33.256378>,  <39.315079, 31.276152, 33.639755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638805, 30.811783, 33.256378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571999, 30.636185, 33.609512>,  <39.531914, 30.530827, 33.821392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571999, 30.636185, 33.609512>,  <39.638805, 30.811783, 33.256378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571999, 30.636185, 33.609512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621024, -0.648624, -0.440018,
		0.765791, -0.621748, -0.164295,
		-0.167015, -0.438993, 0.882831,
		39.521893, 30.504486, 33.874363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784092, 30.108261, 33.167442>,  <39.638805, 30.811783, 33.256378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784092, 30.108261, 33.167442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535076, 30.142076, 33.478645>,  <39.385666, 30.162365, 33.665367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535076, 30.142076, 33.478645>,  <39.784092, 30.108261, 33.167442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535076, 30.142076, 33.478645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536957, -0.769365, -0.346057,
		0.569318, -0.633192, 0.524353,
		-0.622539, 0.084539, 0.778010,
		39.348316, 30.167439, 33.712048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557411, 29.392124, 33.429527>,  <39.784092, 30.108261, 33.167442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557411, 29.392124, 33.429527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268417, 29.620068, 33.586132>,  <39.095020, 29.756834, 33.680096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268417, 29.620068, 33.586132>,  <39.557411, 29.392124, 33.429527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268417, 29.620068, 33.586132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673371, -0.708405, -0.211504,
		0.156819, -0.416439, 0.895537,
		-0.722481, 0.569861, 0.391510,
		39.051674, 29.791025, 33.703587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099731, 28.939627, 33.778343>,  <39.557411, 29.392124, 33.429527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099731, 28.939627, 33.778343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866737, 29.264612, 33.768394>,  <38.726940, 29.459604, 33.762424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866737, 29.264612, 33.768394>,  <39.099731, 28.939627, 33.778343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866737, 29.264612, 33.768394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812814, -0.581920, 0.026517,
		0.007072, 0.035661, 0.999339,
		-0.582481, 0.812464, -0.024870,
		38.691994, 29.508352, 33.760933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457394, 28.813103, 34.303562>,  <39.099731, 28.939627, 33.778343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457394, 28.813103, 34.303562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323990, 29.123499, 34.089420>,  <38.243946, 29.309736, 33.960934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323990, 29.123499, 34.089420>,  <38.457394, 28.813103, 34.303562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323990, 29.123499, 34.089420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835877, -0.506017, -0.212737,
		-0.435981, 0.376540, 0.817397,
		-0.333513, 0.775993, -0.535354,
		38.223934, 29.356297, 33.928814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714954, 28.936354, 34.544888>,  <38.457394, 28.813103, 34.303562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714954, 28.936354, 34.544888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740967, 29.099211, 34.180470>,  <37.756573, 29.196924, 33.961819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740967, 29.099211, 34.180470>,  <37.714954, 28.936354, 34.544888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740967, 29.099211, 34.180470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910381, -0.349655, -0.221240,
		-0.408628, 0.843788, 0.347915,
		0.065030, 0.407141, -0.911048,
		37.760475, 29.221354, 33.907154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152313, 29.369982, 34.307354>,  <37.714954, 28.936354, 34.544888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152313, 29.369982, 34.307354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314125, 29.192940, 33.987240>,  <37.411213, 29.086714, 33.795170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314125, 29.192940, 33.987240>,  <37.152313, 29.369982, 34.307354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314125, 29.192940, 33.987240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911747, -0.263356, -0.315216,
		-0.071243, 0.857172, -0.510080,
		0.404527, -0.442607, -0.800286,
		37.435482, 29.060158, 33.747154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732483, 29.581585, 33.821518>,  <37.152313, 29.369982, 34.307354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732483, 29.581585, 33.821518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912048, 29.258055, 33.669582>,  <37.019787, 29.063936, 33.578419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912048, 29.258055, 33.669582>,  <36.732483, 29.581585, 33.821518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912048, 29.258055, 33.669582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866624, -0.290468, -0.405698,
		0.217807, 0.511303, -0.831342,
		0.448913, -0.808825, -0.379842,
		37.046722, 29.015408, 33.555630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413612, 29.497766, 33.067417>,  <36.732483, 29.581585, 33.821518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413612, 29.497766, 33.067417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588577, 29.143198, 33.127975>,  <36.693558, 28.930456, 33.164310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588577, 29.143198, 33.127975>,  <36.413612, 29.497766, 33.067417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588577, 29.143198, 33.127975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723947, -0.446986, -0.525456,
		0.533450, 0.120238, -0.837242,
		0.437416, -0.886423, 0.151399,
		36.719803, 28.877272, 33.173393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432419, 29.199612, 32.477329>,  <36.413612, 29.497766, 33.067417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432419, 29.199612, 32.477329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448940, 28.878654, 32.715473>,  <36.458855, 28.686079, 32.858360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448940, 28.878654, 32.715473>,  <36.432419, 29.199612, 32.477329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448940, 28.878654, 32.715473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733688, -0.428840, -0.527065,
		0.678230, -0.415042, -0.606419,
		0.041303, -0.802394, 0.595363,
		36.461330, 28.637936, 32.894081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744576, 29.191479, 31.855978>,  <36.432419, 29.199612, 32.477329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744576, 29.191479, 31.855978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.740566, 29.210056, 31.456430>,  <36.738163, 29.221203, 31.216702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.740566, 29.210056, 31.456430>,  <36.744576, 29.191479, 31.855978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740566, 29.210056, 31.456430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656056, 0.754174, 0.028483,
		0.754645, -0.655030, -0.038026,
		-0.010021, 0.046442, -0.998871,
		36.737560, 29.223989, 31.156769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452297, 29.156519, 31.616756>,  <36.744576, 29.191479, 31.855978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452297, 29.156519, 31.616756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211826, 29.324278, 31.344671>,  <37.067543, 29.424934, 31.181419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211826, 29.324278, 31.344671>,  <37.452297, 29.156519, 31.616756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211826, 29.324278, 31.344671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645715, 0.756421, -0.104300,
		0.470785, -0.501927, -0.725555,
		-0.601177, 0.419400, -0.680214,
		37.031475, 29.450098, 31.140608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976490, 29.480354, 31.188877>,  <37.452297, 29.156519, 31.616756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976490, 29.480354, 31.188877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647099, 29.655582, 31.044662>,  <37.449463, 29.760719, 30.958134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647099, 29.655582, 31.044662>,  <37.976490, 29.480354, 31.188877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647099, 29.655582, 31.044662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539037, 0.802344, -0.256288,
		0.177001, -0.405388, -0.896845,
		-0.823475, 0.438069, -0.360535,
		37.400055, 29.787003, 30.936502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143612, 29.758673, 30.409351>,  <37.976490, 29.480354, 31.188877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143612, 29.758673, 30.409351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848137, 29.958788, 30.590042>,  <37.670853, 30.078857, 30.698456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848137, 29.958788, 30.590042>,  <38.143612, 29.758673, 30.409351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848137, 29.958788, 30.590042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435815, 0.865727, -0.246135,
		-0.514211, 0.015054, -0.857532,
		-0.738683, 0.500290, 0.451727,
		37.626534, 30.108875, 30.725561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925602, 30.281042, 29.840591>,  <38.143612, 29.758673, 30.409351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925602, 30.281042, 29.840591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832867, 30.381830, 30.216413>,  <37.777225, 30.442303, 30.441906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832867, 30.381830, 30.216413>,  <37.925602, 30.281042, 29.840591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832867, 30.381830, 30.216413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442903, 0.887289, -0.128666,
		-0.866076, 0.386301, -0.317305,
		-0.231838, 0.251970, 0.939554,
		37.763317, 30.457420, 30.498280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041576, 31.040871, 29.881262>,  <37.925602, 30.281042, 29.840591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041576, 31.040871, 29.881262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973522, 30.987682, 30.271826>,  <37.932690, 30.955770, 30.506165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973522, 30.987682, 30.271826>,  <38.041576, 31.040871, 29.881262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973522, 30.987682, 30.271826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451648, 0.870131, 0.197196,
		-0.875823, 0.474543, -0.087988,
		-0.170139, -0.132969, 0.976408,
		37.922482, 30.947792, 30.564749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572536, 31.617855, 30.154684>,  <38.041576, 31.040871, 29.881262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572536, 31.617855, 30.154684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814407, 31.467510, 30.435568>,  <37.959530, 31.377304, 30.604097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814407, 31.467510, 30.435568>,  <37.572536, 31.617855, 30.154684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814407, 31.467510, 30.435568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506181, 0.862049, 0.025543,
		-0.614940, 0.340000, 0.711512,
		0.604673, -0.375861, 0.702210,
		37.995808, 31.354752, 30.646231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652866, 32.164650, 30.582483>,  <37.572536, 31.617855, 30.154684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652866, 32.164650, 30.582483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963497, 31.929451, 30.672985>,  <38.149876, 31.788332, 30.727287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963497, 31.929451, 30.672985>,  <37.652866, 32.164650, 30.582483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963497, 31.929451, 30.672985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579834, 0.807493, 0.108385,
		-0.246431, 0.047023, 0.968019,
		0.776572, -0.588000, 0.226257,
		38.196468, 31.753052, 30.740862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930935, 32.359066, 31.282009>,  <37.652866, 32.164650, 30.582483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930935, 32.359066, 31.282009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205738, 32.197998, 31.040056>,  <38.370621, 32.101357, 30.894884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205738, 32.197998, 31.040056>,  <37.930935, 32.359066, 31.282009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205738, 32.197998, 31.040056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618642, 0.760787, 0.196179,
		0.381189, -0.508980, 0.771773,
		0.687006, -0.402670, -0.604880,
		38.411839, 32.077198, 30.858593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620663, 32.343136, 31.739134>,  <37.930935, 32.359066, 31.282009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620663, 32.343136, 31.739134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.681171, 32.302277, 31.345854>,  <38.717476, 32.277760, 31.109886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.681171, 32.302277, 31.345854>,  <38.620663, 32.343136, 31.739134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681171, 32.302277, 31.345854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755339, 0.653551, 0.048314,
		0.637635, -0.749958, 0.176022,
		0.151273, -0.102150, -0.983200,
		38.726555, 32.271633, 31.050894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334881, 32.311871, 31.741535>,  <38.620663, 32.343136, 31.739134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334881, 32.311871, 31.741535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209099, 32.400513, 31.372318>,  <39.133629, 32.453697, 31.150787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209099, 32.400513, 31.372318>,  <39.334881, 32.311871, 31.741535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209099, 32.400513, 31.372318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781374, 0.612588, -0.119125,
		0.539045, -0.758701, -0.365790,
		-0.314459, 0.221605, -0.923042,
		39.114761, 32.466995, 31.095406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942696, 32.189274, 31.350863>,  <39.334881, 32.311871, 31.741535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942696, 32.189274, 31.350863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689983, 32.431797, 31.157681>,  <39.538357, 32.577312, 31.041771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689983, 32.431797, 31.157681>,  <39.942696, 32.189274, 31.350863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689983, 32.431797, 31.157681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734339, 0.667647, -0.122449,
		0.248201, -0.432012, -0.867042,
		-0.631778, 0.606311, -0.482953,
		39.500450, 32.613689, 31.012794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376888, 32.420616, 30.693123>,  <39.942696, 32.189274, 31.350863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376888, 32.420616, 30.693123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069965, 32.663269, 30.776297>,  <39.885811, 32.808861, 30.826200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069965, 32.663269, 30.776297>,  <40.376888, 32.420616, 30.693123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069965, 32.663269, 30.776297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627441, 0.777184, 0.047988,
		-0.132494, 0.167290, -0.976965,
		-0.767309, 0.606630, 0.207937,
		39.839771, 32.845257, 30.838678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489010, 33.079594, 30.284220>,  <40.376888, 32.420616, 30.693123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489010, 33.079594, 30.284220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243790, 33.172985, 30.586123>,  <40.096657, 33.229019, 30.767263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243790, 33.172985, 30.586123>,  <40.489010, 33.079594, 30.284220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243790, 33.172985, 30.586123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510475, 0.846196, 0.152865,
		-0.602979, 0.478997, -0.637948,
		-0.613051, 0.233483, 0.754755,
		40.059875, 33.243031, 30.812550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.419159, 31.674496, 27.530550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402218, 31.555561, 27.912083>,  <35.392052, 31.484201, 28.141003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402218, 31.555561, 27.912083>,  <35.419159, 31.674496, 27.530550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402218, 31.555561, 27.912083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357489, -0.886974, -0.292366,
		0.932957, -0.353367, -0.068729,
		-0.042352, -0.297335, 0.953833,
		35.389511, 31.466360, 28.198233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532917, 30.965506, 27.502018>,  <35.419159, 31.674496, 27.530550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532917, 30.965506, 27.502018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395992, 30.951710, 27.877600>,  <35.313839, 30.943432, 28.102949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395992, 30.951710, 27.877600>,  <35.532917, 30.965506, 27.502018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395992, 30.951710, 27.877600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441478, -0.876240, -0.193134,
		0.829411, -0.480639, 0.284717,
		-0.342308, -0.034491, 0.938954,
		35.293301, 30.941362, 28.159286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699188, 30.250402, 27.897802>,  <35.532917, 30.965506, 27.502018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699188, 30.250402, 27.897802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419964, 30.423346, 28.126112>,  <35.252430, 30.527111, 28.263098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419964, 30.423346, 28.126112>,  <35.699188, 30.250402, 27.897802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419964, 30.423346, 28.126112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554483, -0.830761, -0.048841,
		0.453060, -0.350578, 0.819653,
		-0.698058, 0.432356, 0.570774,
		35.210545, 30.553053, 28.297344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564434, 29.865730, 28.538431>,  <35.699188, 30.250402, 27.897802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564434, 29.865730, 28.538431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228519, 30.073839, 28.476368>,  <35.026970, 30.198704, 28.439131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228519, 30.073839, 28.476368>,  <35.564434, 29.865730, 28.538431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228519, 30.073839, 28.476368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535116, -0.841468, 0.074719,
		-0.091685, 0.145774, 0.985060,
		-0.839789, 0.520271, -0.155156,
		34.976582, 30.229921, 28.429821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072361, 29.638676, 29.036427>,  <35.564434, 29.865730, 28.538431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072361, 29.638676, 29.036427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854496, 29.771580, 28.728416>,  <34.723778, 29.851322, 28.543610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854496, 29.771580, 28.728416>,  <35.072361, 29.638676, 29.036427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854496, 29.771580, 28.728416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635065, -0.763092, 0.119934,
		-0.547751, 0.554340, 0.626639,
		-0.544667, 0.332262, -0.770026,
		34.691097, 29.871258, 28.497408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348339, 29.582644, 29.291355>,  <35.072361, 29.638676, 29.036427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348339, 29.582644, 29.291355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324635, 29.622755, 28.894077>,  <34.310413, 29.646822, 28.655710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324635, 29.622755, 28.894077>,  <34.348339, 29.582644, 29.291355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324635, 29.622755, 28.894077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614081, -0.788075, -0.042927,
		-0.787015, 0.607357, 0.108280,
		-0.059261, 0.100277, -0.993193,
		34.306854, 29.652838, 28.596119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653893, 29.672903, 29.185713>,  <34.348339, 29.582644, 29.291355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653893, 29.672903, 29.185713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765614, 29.542122, 28.824583>,  <33.832645, 29.463654, 28.607904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765614, 29.542122, 28.824583>,  <33.653893, 29.672903, 29.185713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765614, 29.542122, 28.824583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843334, -0.533091, -0.067844,
		-0.459107, 0.780331, -0.424622,
		0.279303, -0.326951, -0.902825,
		33.849403, 29.444036, 28.553736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064278, 29.681662, 28.756689>,  <33.653893, 29.672903, 29.185713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064278, 29.681662, 28.756689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328232, 29.427824, 28.595774>,  <33.486607, 29.275522, 28.499224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328232, 29.427824, 28.595774>,  <33.064278, 29.681662, 28.756689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328232, 29.427824, 28.595774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729745, -0.668809, -0.142009,
		-0.178937, 0.387279, -0.904432,
		0.659889, -0.634594, -0.402290,
		33.526199, 29.237446, 28.475086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725529, 29.415138, 28.257162>,  <33.064278, 29.681662, 28.756689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725529, 29.415138, 28.257162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031906, 29.158222, 28.268375>,  <33.215733, 29.004072, 28.275105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031906, 29.158222, 28.268375>,  <32.725529, 29.415138, 28.257162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031906, 29.158222, 28.268375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581482, -0.710713, -0.395936,
		0.274232, 0.286964, -0.917850,
		0.765948, -0.642292, 0.028036,
		33.261692, 28.965534, 28.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580841, 28.955463, 27.675413>,  <32.725529, 29.415138, 28.257162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580841, 28.955463, 27.675413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836128, 28.752769, 27.907240>,  <32.989300, 28.631153, 28.046335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836128, 28.752769, 27.907240>,  <32.580841, 28.955463, 27.675413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836128, 28.752769, 27.907240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436343, -0.858326, -0.269965,
		0.634257, -0.080593, -0.768910,
		0.638218, -0.506736, 0.579566,
		33.027592, 28.600748, 28.081110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033649, 28.519405, 27.236227>,  <32.580841, 28.955463, 27.675413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033649, 28.519405, 27.236227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.976360, 28.372021, 27.603645>,  <32.941986, 28.283590, 27.824097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.976360, 28.372021, 27.603645>,  <33.033649, 28.519405, 27.236227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976360, 28.372021, 27.603645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399259, -0.827727, -0.394283,
		0.905582, -0.423208, -0.028561,
		-0.143223, -0.368459, 0.918545,
		32.933392, 28.261482, 27.879210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302319, 27.753428, 27.111263>,  <33.033649, 28.519405, 27.236227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302319, 27.753428, 27.111263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116779, 27.726168, 27.464579>,  <33.005455, 27.709812, 27.676567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116779, 27.726168, 27.464579>,  <33.302319, 27.753428, 27.111263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116779, 27.726168, 27.464579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477313, -0.820725, -0.313980,
		0.746333, -0.567245, 0.348167,
		-0.463853, -0.068149, 0.883287,
		32.977623, 27.705723, 27.729565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260017, 27.054220, 27.306246>,  <33.302319, 27.753428, 27.111263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260017, 27.054220, 27.306246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001225, 27.170725, 27.588120>,  <32.845951, 27.240627, 27.757244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001225, 27.170725, 27.588120>,  <33.260017, 27.054220, 27.306246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001225, 27.170725, 27.588120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527511, -0.838294, -0.137827,
		0.550589, -0.460900, 0.696004,
		-0.646980, 0.291264, 0.704685,
		32.807129, 27.258104, 27.799524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250038, 26.328026, 27.702467>,  <33.260017, 27.054220, 27.306246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250038, 26.328026, 27.702467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176380, 26.335728, 27.309383>,  <33.132187, 26.340349, 27.073532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176380, 26.335728, 27.309383>,  <33.250038, 26.328026, 27.702467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176380, 26.335728, 27.309383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925143, -0.341073, 0.166673,
		-0.331968, 0.939839, 0.080618,
		-0.184142, 0.019253, -0.982711,
		33.121136, 26.341503, 27.014570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962673, 25.907316, 28.172421>,  <33.250038, 26.328026, 27.702467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962673, 25.907316, 28.172421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.039444, 25.687950, 28.497974>,  <33.085506, 25.556330, 28.693306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.039444, 25.687950, 28.497974>,  <32.962673, 25.907316, 28.172421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039444, 25.687950, 28.497974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442448, 0.788592, 0.427038,
		-0.876016, 0.278142, 0.393996,
		0.191925, -0.548415, 0.813883,
		33.097023, 25.523426, 28.742140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797314, 26.310707, 28.719786>,  <32.962673, 25.907316, 28.172421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797314, 26.310707, 28.719786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047901, 26.038797, 28.872332>,  <33.198254, 25.875650, 28.963860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047901, 26.038797, 28.872332>,  <32.797314, 26.310707, 28.719786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047901, 26.038797, 28.872332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506339, 0.726904, 0.463930,
		-0.592585, -0.097538, 0.799581,
		0.626469, -0.679777, 0.381366,
		33.235844, 25.834864, 28.986742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815022, 26.415110, 29.483515>,  <32.797314, 26.310707, 28.719786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815022, 26.415110, 29.483515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148037, 26.207172, 29.406944>,  <33.347847, 26.082411, 29.361002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148037, 26.207172, 29.406944>,  <32.815022, 26.415110, 29.483515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148037, 26.207172, 29.406944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538306, 0.677583, 0.501107,
		-0.130789, -0.520237, 0.843948,
		0.832539, -0.519841, -0.191426,
		33.397800, 26.051220, 29.349516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151436, 26.419071, 30.137053>,  <32.815022, 26.415110, 29.483515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151436, 26.419071, 30.137053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434128, 26.349974, 29.862623>,  <33.603745, 26.308516, 29.697966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434128, 26.349974, 29.862623>,  <33.151436, 26.419071, 30.137053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434128, 26.349974, 29.862623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631239, 0.591879, 0.501216,
		0.319488, -0.787298, 0.527341,
		0.706729, -0.172745, -0.686072,
		33.646145, 26.298151, 29.656801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686420, 26.111691, 30.478252>,  <33.151436, 26.419071, 30.137053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686420, 26.111691, 30.478252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857067, 26.272202, 30.154037>,  <33.959457, 26.368507, 29.959509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857067, 26.272202, 30.154037>,  <33.686420, 26.111691, 30.478252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857067, 26.272202, 30.154037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615922, 0.527357, 0.585265,
		0.662296, -0.748914, -0.022173,
		0.426620, 0.401275, -0.810539,
		33.985054, 26.392584, 29.910875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516029, 25.896687, 30.529181>,  <33.686420, 26.111691, 30.478252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516029, 25.896687, 30.529181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498573, 26.206114, 30.276297>,  <34.488102, 26.391769, 30.124567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498573, 26.206114, 30.276297>,  <34.516029, 25.896687, 30.529181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498573, 26.206114, 30.276297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797777, 0.407901, 0.444038,
		0.601372, -0.484985, -0.634934,
		-0.043639, 0.773567, -0.632209,
		34.485481, 26.438185, 30.086634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220222, 26.115673, 30.299809>,  <34.516029, 25.896687, 30.529181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220222, 26.115673, 30.299809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016426, 26.436090, 30.174114>,  <34.894146, 26.628342, 30.098698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016426, 26.436090, 30.174114>,  <35.220222, 26.115673, 30.299809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016426, 26.436090, 30.174114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787222, 0.581372, 0.205640,
		0.347415, -0.142602, -0.926805,
		-0.509494, 0.801044, -0.314237,
		34.863579, 26.676403, 30.079844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652836, 26.487091, 29.760229>,  <35.220222, 26.115673, 30.299809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652836, 26.487091, 29.760229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397285, 26.730337, 29.948711>,  <35.243954, 26.876284, 30.061802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397285, 26.730337, 29.948711>,  <35.652836, 26.487091, 29.760229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397285, 26.730337, 29.948711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734368, 0.664572, 0.138017,
		-0.229221, 0.434215, -0.871157,
		-0.638875, 0.608113, 0.471208,
		35.205624, 26.912771, 30.090075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654392, 27.086643, 29.438433>,  <35.652836, 26.487091, 29.760229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654392, 27.086643, 29.438433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.527592, 27.161654, 29.810314>,  <35.451511, 27.206659, 30.033443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.527592, 27.161654, 29.810314>,  <35.654392, 27.086643, 29.438433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527592, 27.161654, 29.810314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614571, 0.787227, 0.050759,
		-0.722368, 0.587458, -0.364797,
		-0.316997, 0.187527, 0.929702,
		35.432491, 27.217911, 30.089226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786793, 27.889473, 29.517185>,  <35.654392, 27.086643, 29.438433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786793, 27.889473, 29.517185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710682, 27.774328, 29.892616>,  <35.665016, 27.705242, 30.117874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710682, 27.774328, 29.892616>,  <35.786793, 27.889473, 29.517185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710682, 27.774328, 29.892616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461731, 0.817463, 0.344324,
		-0.866370, 0.498889, -0.022633,
		-0.190281, -0.287862, 0.938578,
		35.653599, 27.687969, 30.174191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382347, 28.457405, 29.795185>,  <35.786793, 27.889473, 29.517185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382347, 28.457405, 29.795185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547493, 28.258806, 30.100613>,  <35.646580, 28.139647, 30.283869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547493, 28.258806, 30.100613>,  <35.382347, 28.457405, 29.795185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547493, 28.258806, 30.100613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283583, 0.866757, 0.410260,
		-0.865520, 0.047153, 0.498649,
		0.412863, -0.496496, 0.763568,
		35.671352, 28.109858, 30.329683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289711, 28.929884, 30.361732>,  <35.382347, 28.457405, 29.795185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289711, 28.929884, 30.361732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575291, 28.667120, 30.458685>,  <35.746639, 28.509462, 30.516855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575291, 28.667120, 30.458685>,  <35.289711, 28.929884, 30.361732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575291, 28.667120, 30.458685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483601, 0.712947, 0.507776,
		-0.506366, -0.245312, 0.826690,
		0.713950, -0.656908, 0.242379,
		35.789474, 28.470047, 30.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382584, 29.011328, 31.086609>,  <35.289711, 28.929884, 30.361732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382584, 29.011328, 31.086609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.709034, 28.870762, 30.903112>,  <35.904903, 28.786423, 30.793015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.709034, 28.870762, 30.903112>,  <35.382584, 29.011328, 31.086609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709034, 28.870762, 30.903112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519571, 0.793713, 0.316332,
		0.252946, -0.496516, 0.830355,
		0.816128, -0.351414, -0.458742,
		35.953873, 28.765337, 30.765490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944630, 28.968889, 31.662804>,  <35.382584, 29.011328, 31.086609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944630, 28.968889, 31.662804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.122036, 28.967123, 31.304302>,  <36.228481, 28.966064, 31.089201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.122036, 28.967123, 31.304302>,  <35.944630, 28.968889, 31.662804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122036, 28.967123, 31.304302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625610, 0.717595, 0.306055,
		0.641797, -0.696446, 0.321029,
		0.443520, -0.004414, -0.896254,
		36.255093, 28.965799, 31.035425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963093, 28.484764, 32.153633>,  <35.944630, 28.968889, 31.662804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963093, 28.484764, 32.153633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027592, 28.351549, 32.525242>,  <36.066292, 28.271620, 32.748207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027592, 28.351549, 32.525242>,  <35.963093, 28.484764, 32.153633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027592, 28.351549, 32.525242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697867, -0.704095, -0.131273,
		0.697839, -0.627167, -0.345951,
		0.161252, -0.333035, 0.929024,
		36.075966, 28.251638, 32.803947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886688, 27.804981, 32.176991>,  <35.963093, 28.484764, 32.153633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886688, 27.804981, 32.176991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833614, 27.894062, 32.563316>,  <35.801769, 27.947510, 32.795113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833614, 27.894062, 32.563316>,  <35.886688, 27.804981, 32.176991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833614, 27.894062, 32.563316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789448, -0.612936, 0.032881,
		0.599306, -0.758098, 0.257138,
		-0.132682, 0.222702, 0.965816,
		35.793808, 27.960873, 32.853062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703785, 27.230326, 32.459198>,  <35.886688, 27.804981, 32.176991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703785, 27.230326, 32.459198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553894, 27.487629, 32.726273>,  <35.463959, 27.642012, 32.886517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553894, 27.487629, 32.726273>,  <35.703785, 27.230326, 32.459198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553894, 27.487629, 32.726273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882425, -0.468392, -0.043985,
		0.284444, -0.605663, 0.743145,
		-0.374723, 0.643259, 0.667684,
		35.441479, 27.680607, 32.926579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515594, 26.850317, 33.061783>,  <35.703785, 27.230326, 32.459198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515594, 26.850317, 33.061783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305885, 27.190819, 33.052799>,  <35.180061, 27.395119, 33.047409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305885, 27.190819, 33.052799>,  <35.515594, 26.850317, 33.061783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305885, 27.190819, 33.052799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847497, -0.519027, 0.111171,
		0.082978, 0.077318, 0.993548,
		-0.524274, 0.851254, -0.022459,
		35.148602, 27.446196, 33.046062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140968, 26.859324, 33.606903>,  <35.515594, 26.850317, 33.061783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140968, 26.859324, 33.606903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938046, 27.119162, 33.380394>,  <34.816292, 27.275064, 33.244488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938046, 27.119162, 33.380394>,  <35.140968, 26.859324, 33.606903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938046, 27.119162, 33.380394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816426, -0.572621, 0.074529,
		-0.275846, 0.500129, 0.820841,
		-0.507305, 0.649597, -0.566273,
		34.785854, 27.314041, 33.210510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608551, 27.046211, 34.007683>,  <35.140968, 26.859324, 33.606903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608551, 27.046211, 34.007683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477135, 27.168722, 33.650303>,  <34.398285, 27.242229, 33.435875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477135, 27.168722, 33.650303>,  <34.608551, 27.046211, 34.007683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477135, 27.168722, 33.650303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852743, -0.502891, 0.141173,
		-0.406071, 0.808266, 0.426396,
		-0.328536, 0.306279, -0.893452,
		34.378574, 27.260607, 33.382267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884365, 27.160021, 34.136436>,  <34.608551, 27.046211, 34.007683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884365, 27.160021, 34.136436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919369, 27.127548, 33.739296>,  <33.940369, 27.108065, 33.501011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919369, 27.127548, 33.739296>,  <33.884365, 27.160021, 34.136436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919369, 27.127548, 33.739296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825839, -0.563273, -0.026727,
		-0.557076, 0.822273, -0.116334,
		0.087505, -0.081184, -0.992851,
		33.945621, 27.103193, 33.441441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456551, 27.802727, 34.173752>,  <33.884365, 27.160021, 34.136436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456551, 27.802727, 34.173752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353779, 27.888514, 34.550686>,  <33.292114, 27.939985, 34.776844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353779, 27.888514, 34.550686>,  <33.456551, 27.802727, 34.173752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353779, 27.888514, 34.550686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906147, 0.392447, 0.157744,
		-0.335985, 0.894420, -0.295172,
		-0.256929, 0.214469, 0.942333,
		33.276699, 27.952854, 34.833385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442959, 28.467262, 34.276196>,  <33.456551, 27.802727, 34.173752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442959, 28.467262, 34.276196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.500084, 28.319517, 34.643494>,  <33.534359, 28.230869, 34.863873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.500084, 28.319517, 34.643494>,  <33.442959, 28.467262, 34.276196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500084, 28.319517, 34.643494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870145, 0.488961, 0.061352,
		-0.471648, 0.790246, 0.391229,
		0.142813, -0.369363, 0.918246,
		33.542927, 28.208708, 34.918968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751835, 29.032997, 34.639412>,  <33.442959, 28.467262, 34.276196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751835, 29.032997, 34.639412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.830231, 28.744415, 34.905071>,  <33.877266, 28.571266, 35.064468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.830231, 28.744415, 34.905071>,  <33.751835, 29.032997, 34.639412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830231, 28.744415, 34.905071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802327, 0.507374, 0.314393,
		-0.563792, 0.471246, 0.678282,
		0.195986, -0.721456, 0.664147,
		33.889027, 28.527979, 35.104317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880558, 29.414492, 35.253777>,  <33.751835, 29.032997, 34.639412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880558, 29.414492, 35.253777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046547, 29.054630, 35.308079>,  <34.146141, 28.838715, 35.340660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046547, 29.054630, 35.308079>,  <33.880558, 29.414492, 35.253777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046547, 29.054630, 35.308079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791509, 0.430539, 0.433763,
		-0.448682, -0.072549, 0.890742,
		0.414968, -0.899652, 0.135752,
		34.171036, 28.784735, 35.348804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027912, 29.345512, 35.988297>,  <33.880558, 29.414492, 35.253777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027912, 29.345512, 35.988297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273708, 29.085033, 35.810154>,  <34.421185, 28.928745, 35.703270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273708, 29.085033, 35.810154>,  <34.027912, 29.345512, 35.988297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273708, 29.085033, 35.810154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759938, 0.336966, 0.555831,
		-0.211886, -0.679996, 0.701933,
		0.614491, -0.651198, -0.445356,
		34.458057, 28.889673, 35.676548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497070, 28.939209, 36.533127>,  <34.027912, 29.345512, 35.988297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497070, 28.939209, 36.533127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656097, 28.947233, 36.166183>,  <34.751514, 28.952047, 35.946018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656097, 28.947233, 36.166183>,  <34.497070, 28.939209, 36.533127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656097, 28.947233, 36.166183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908459, 0.131972, 0.396593,
		0.129016, -0.991051, 0.034254,
		0.397565, 0.020049, -0.917355,
		34.775368, 28.953251, 35.890976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048351, 28.516930, 36.639229>,  <34.497070, 28.939209, 36.533127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048351, 28.516930, 36.639229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125713, 28.717327, 36.301804>,  <35.172131, 28.837566, 36.099350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125713, 28.717327, 36.301804>,  <35.048351, 28.516930, 36.639229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125713, 28.717327, 36.301804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906549, 0.237538, 0.348921,
		0.375185, -0.832215, -0.408233,
		0.193406, 0.500993, -0.843564,
		35.183735, 28.867624, 36.048733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.826530, 27.392353, 30.371054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.139601, 27.590076, 30.219751>,  <31.327442, 27.708710, 30.128969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.139601, 27.590076, 30.219751>,  <30.826530, 27.392353, 30.371054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139601, 27.590076, 30.219751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004835, 0.602865, 0.797829,
		0.622413, -0.626269, 0.469457,
		0.782674, 0.494309, -0.378259,
		31.374403, 27.738369, 30.106274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268095, 27.584990, 30.965000>,  <30.826530, 27.392353, 30.371054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268095, 27.584990, 30.965000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443087, 27.808430, 30.683128>,  <31.548082, 27.942493, 30.514006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443087, 27.808430, 30.683128>,  <31.268095, 27.584990, 30.965000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443087, 27.808430, 30.683128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357706, 0.610875, 0.706313,
		0.825019, -0.561067, 0.067432,
		0.437481, 0.558601, -0.704681,
		31.574331, 27.976009, 30.471724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943958, 27.646717, 31.152788>,  <31.268095, 27.584990, 30.965000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943958, 27.646717, 31.152788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.840553, 27.968132, 30.938313>,  <31.778511, 28.160980, 30.809628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.840553, 27.968132, 30.938313>,  <31.943958, 27.646717, 31.152788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840553, 27.968132, 30.938313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463771, 0.590144, 0.660792,
		0.847400, -0.077847, -0.525217,
		-0.258513, 0.803536, -0.536191,
		31.762999, 28.209192, 30.777454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543949, 28.062408, 31.079901>,  <31.943958, 27.646717, 31.152788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543949, 28.062408, 31.079901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241585, 28.313965, 31.007135>,  <32.060165, 28.464899, 30.963476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241585, 28.313965, 31.007135>,  <32.543949, 28.062408, 31.079901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241585, 28.313965, 31.007135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374508, 0.643305, 0.667759,
		0.536976, 0.436638, -0.721806,
		-0.755911, 0.628893, -0.181915,
		32.014812, 28.502632, 30.952560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818058, 28.621801, 31.275852>,  <32.543949, 28.062408, 31.079901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818058, 28.621801, 31.275852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.443233, 28.756035, 31.237265>,  <32.218338, 28.836575, 31.214111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.443233, 28.756035, 31.237265>,  <32.818058, 28.621801, 31.275852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443233, 28.756035, 31.237265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189862, 0.721559, 0.665812,
		0.293044, 0.605588, -0.739857,
		-0.937058, 0.335583, -0.096470,
		32.162117, 28.856710, 31.208324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890976, 29.353947, 31.177357>,  <32.818058, 28.621801, 31.275852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890976, 29.353947, 31.177357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.517525, 29.285082, 31.303026>,  <32.293453, 29.243763, 31.378428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.517525, 29.285082, 31.303026>,  <32.890976, 29.353947, 31.177357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517525, 29.285082, 31.303026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084673, 0.746074, 0.660458,
		-0.348103, 0.643222, -0.681975,
		-0.933625, -0.172163, 0.314173,
		32.237438, 29.233433, 31.397278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513031, 29.970825, 31.040585>,  <32.890976, 29.353947, 31.177357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513031, 29.970825, 31.040585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.340855, 29.776497, 31.344872>,  <32.237549, 29.659899, 31.527445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.340855, 29.776497, 31.344872>,  <32.513031, 29.970825, 31.040585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340855, 29.776497, 31.344872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239259, 0.751233, 0.615146,
		-0.870329, 0.446795, -0.207127,
		-0.430445, -0.485822, 0.760719,
		32.211720, 29.630751, 31.573088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297482, 30.456400, 31.349697>,  <32.513031, 29.970825, 31.040585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297482, 30.456400, 31.349697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.253349, 30.175425, 31.630953>,  <32.226871, 30.006840, 31.799706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.253349, 30.175425, 31.630953>,  <32.297482, 30.456400, 31.349697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253349, 30.175425, 31.630953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096924, 0.696483, 0.710998,
		-0.989158, 0.146597, -0.008761,
		-0.110332, -0.702440, 0.703140,
		32.220249, 29.964693, 31.841894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752411, 30.712854, 31.794846>,  <32.297482, 30.456400, 31.349697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752411, 30.712854, 31.794846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.969553, 30.456930, 32.012451>,  <32.099838, 30.303375, 32.143013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.969553, 30.456930, 32.012451>,  <31.752411, 30.712854, 31.794846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969553, 30.456930, 32.012451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131675, 0.704601, 0.697280,
		-0.829438, -0.306890, 0.466744,
		0.542857, -0.639809, 0.544013,
		32.132412, 30.264988, 32.175655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614355, 30.874594, 32.558075>,  <31.752411, 30.712854, 31.794846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614355, 30.874594, 32.558075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.964594, 30.683437, 32.529930>,  <32.174736, 30.568745, 32.513042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.964594, 30.683437, 32.529930>,  <31.614355, 30.874594, 32.558075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964594, 30.683437, 32.529930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355881, 0.539732, 0.762914,
		-0.326614, -0.693045, 0.642660,
		0.875598, -0.477889, -0.070358,
		32.227272, 30.540071, 32.508823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758202, 30.856737, 33.367069>,  <31.614355, 30.874594, 32.558075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758202, 30.856737, 33.367069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094166, 30.795176, 33.158890>,  <32.295746, 30.758240, 33.033981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094166, 30.795176, 33.158890>,  <31.758202, 30.856737, 33.367069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094166, 30.795176, 33.158890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421244, 0.789510, 0.446348,
		0.342204, -0.594128, 0.727948,
		0.839911, -0.153902, -0.520447,
		32.346138, 30.749004, 33.002754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337502, 30.889828, 33.877495>,  <31.758202, 30.856737, 33.367069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337502, 30.889828, 33.877495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.521267, 30.938631, 33.525574>,  <32.631527, 30.967913, 33.314423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.521267, 30.938631, 33.525574>,  <32.337502, 30.889828, 33.877495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521267, 30.938631, 33.525574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530904, 0.756389, 0.382120,
		0.712095, -0.642642, 0.282722,
		0.459414, 0.122008, -0.879803,
		32.659092, 30.975233, 33.261631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642406, 30.458456, 34.412827>,  <32.337502, 30.889828, 33.877495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642406, 30.458456, 34.412827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.406368, 30.600054, 34.703064>,  <32.264748, 30.685013, 34.877205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.406368, 30.600054, 34.703064>,  <32.642406, 30.458456, 34.412827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406368, 30.600054, 34.703064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772506, -0.508714, -0.380059,
		0.234579, -0.784792, 0.573651,
		-0.590091, 0.353994, 0.725590,
		32.229340, 30.706253, 34.920742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369362, 29.920181, 34.677094>,  <32.642406, 30.458456, 34.412827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369362, 29.920181, 34.677094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.113735, 30.205164, 34.793026>,  <31.960360, 30.376154, 34.862587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.113735, 30.205164, 34.793026>,  <32.369362, 29.920181, 34.677094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113735, 30.205164, 34.793026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763747, -0.543191, -0.348760,
		-0.091041, -0.444240, 0.891270,
		-0.639063, 0.712457, 0.289835,
		31.922016, 30.418901, 34.879978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854973, 29.575161, 35.218098>,  <32.369362, 29.920181, 34.677094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854973, 29.575161, 35.218098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.675905, 29.900267, 35.068962>,  <31.568464, 30.095329, 34.979481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.675905, 29.900267, 35.068962>,  <31.854973, 29.575161, 35.218098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675905, 29.900267, 35.068962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792306, -0.553827, -0.255982,
		-0.414539, 0.180804, 0.891890,
		-0.447670, 0.812764, -0.372835,
		31.541605, 30.144096, 34.957111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293673, 29.548399, 35.569798>,  <31.854973, 29.575161, 35.218098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293673, 29.548399, 35.569798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.174707, 29.808281, 35.289959>,  <31.103329, 29.964211, 35.122055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.174707, 29.808281, 35.289959>,  <31.293673, 29.548399, 35.569798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174707, 29.808281, 35.289959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889921, -0.454050, -0.043348,
		-0.345814, 0.609692, 0.713224,
		-0.297411, 0.649703, -0.699594,
		31.085484, 30.003191, 35.080082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573433, 29.754490, 35.742847>,  <31.293673, 29.548399, 35.569798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573433, 29.754490, 35.742847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599512, 29.847818, 35.354763>,  <30.615160, 29.903814, 35.121914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599512, 29.847818, 35.354763>,  <30.573433, 29.754490, 35.742847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599512, 29.847818, 35.354763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921581, -0.358779, -0.148210,
		-0.382672, 0.903792, 0.191631,
		0.065197, 0.233320, -0.970212,
		30.619072, 29.917814, 35.063698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981232, 30.050037, 35.623848>,  <30.573433, 29.754490, 35.742847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981232, 30.050037, 35.623848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129108, 29.913118, 35.278324>,  <30.217834, 29.830967, 35.071011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129108, 29.913118, 35.278324>,  <29.981232, 30.050037, 35.623848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129108, 29.913118, 35.278324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845132, -0.510200, -0.159527,
		-0.386108, 0.789005, -0.477904,
		0.369694, -0.342297, -0.863805,
		30.240017, 29.810429, 35.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490122, 30.145079, 35.194069>,  <29.981232, 30.050037, 35.623848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490122, 30.145079, 35.194069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726271, 29.862049, 35.038738>,  <29.867960, 29.692230, 34.945541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726271, 29.862049, 35.038738>,  <29.490122, 30.145079, 35.194069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726271, 29.862049, 35.038738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794182, -0.595083, -0.123088,
		-0.143990, 0.381067, -0.913266,
		0.590374, -0.707576, -0.388322,
		29.903383, 29.649776, 34.922241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153191, 29.926033, 34.557930>,  <29.490122, 30.145079, 35.194069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153191, 29.926033, 34.557930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388460, 29.617039, 34.653698>,  <29.529621, 29.431643, 34.711159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388460, 29.617039, 34.653698>,  <29.153191, 29.926033, 34.557930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388460, 29.617039, 34.653698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759468, -0.629331, -0.164773,
		0.277958, -0.084915, -0.956833,
		0.588173, -0.772484, 0.239419,
		29.564913, 29.385294, 34.725525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958363, 29.261251, 34.067333>,  <29.153191, 29.926033, 34.557930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958363, 29.261251, 34.067333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177460, 29.106438, 34.364033>,  <29.308918, 29.013550, 34.542053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177460, 29.106438, 34.364033>,  <28.958363, 29.261251, 34.067333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177460, 29.106438, 34.364033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584909, -0.811052, 0.008729,
		0.598216, -0.438635, -0.670625,
		0.547741, -0.387032, 0.741745,
		29.341782, 28.990328, 34.586555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019230, 28.547745, 33.903023>,  <28.958363, 29.261251, 34.067333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019230, 28.547745, 33.903023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103256, 28.555922, 34.294014>,  <29.153671, 28.560827, 34.528606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103256, 28.555922, 34.294014>,  <29.019230, 28.547745, 33.903023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103256, 28.555922, 34.294014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450171, -0.885472, 0.115260,
		0.867882, -0.464242, -0.176805,
		0.210064, 0.020440, 0.977474,
		29.166275, 28.562054, 34.587257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432072, 27.906713, 34.045765>,  <29.019230, 28.547745, 33.903023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432072, 27.906713, 34.045765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310905, 28.000732, 34.415195>,  <29.238205, 28.057144, 34.636852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310905, 28.000732, 34.415195>,  <29.432072, 27.906713, 34.045765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310905, 28.000732, 34.415195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252645, -0.954240, 0.159990,
		0.918919, -0.184873, 0.348440,
		-0.302917, 0.235049, 0.923576,
		29.220030, 28.071247, 34.692268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685637, 27.492376, 34.503372>,  <29.432072, 27.906713, 34.045765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685637, 27.492376, 34.503372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382879, 27.637138, 34.721046>,  <29.201225, 27.723995, 34.851650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382879, 27.637138, 34.721046>,  <29.685637, 27.492376, 34.503372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382879, 27.637138, 34.721046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324998, -0.930850, 0.167018,
		0.566999, -0.050444, 0.822172,
		-0.756894, 0.361903, 0.544186,
		29.155811, 27.745708, 34.884300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750654, 27.199333, 35.181862>,  <29.685637, 27.492376, 34.503372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750654, 27.199333, 35.181862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.370668, 27.314323, 35.132988>,  <29.142677, 27.383318, 35.103664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.370668, 27.314323, 35.132988>,  <29.750654, 27.199333, 35.181862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370668, 27.314323, 35.132988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311655, -0.898599, 0.308855,
		-0.021007, 0.331480, 0.943228,
		-0.949963, 0.287474, -0.122185,
		29.085680, 27.400566, 35.096333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460913, 26.969915, 35.699680>,  <29.750654, 27.199333, 35.181862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460913, 26.969915, 35.699680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144892, 27.029554, 35.461830>,  <28.955278, 27.065338, 35.319118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144892, 27.029554, 35.461830>,  <29.460913, 26.969915, 35.699680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144892, 27.029554, 35.461830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376953, -0.883083, 0.279411,
		-0.483448, 0.444897, 0.753887,
		-0.790054, 0.149099, -0.594630,
		28.907875, 27.074284, 35.283440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176340, 26.948517, 35.847206>,  <29.460913, 26.969915, 35.699680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176340, 26.948517, 35.847206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.477602, 26.767956, 35.655792>,  <30.658360, 26.659620, 35.540943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.477602, 26.767956, 35.655792>,  <30.176340, 26.948517, 35.847206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477602, 26.767956, 35.655792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447143, 0.884831, -0.130912,
		0.482515, -0.115375, 0.868256,
		0.753155, -0.451402, -0.478533,
		30.703548, 26.632536, 35.512234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697294, 27.470621, 35.771263>,  <30.176340, 26.948517, 35.847206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697294, 27.470621, 35.771263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.859650, 27.178854, 35.551006>,  <30.957062, 27.003794, 35.418854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.859650, 27.178854, 35.551006>,  <30.697294, 27.470621, 35.771263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859650, 27.178854, 35.551006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662559, 0.649846, -0.372446,
		0.629500, -0.213661, 0.747046,
		0.405887, -0.729417, -0.550641,
		30.981417, 26.960030, 35.385815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373266, 27.389423, 36.103947>,  <30.697294, 27.470621, 35.771263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373266, 27.389423, 36.103947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379877, 27.224083, 35.739777>,  <31.383842, 27.124878, 35.521275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379877, 27.224083, 35.739777>,  <31.373266, 27.389423, 36.103947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379877, 27.224083, 35.739777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950378, 0.289401, -0.114144,
		0.310658, -0.863357, 0.397625,
		0.016526, -0.413353, -0.910421,
		31.384834, 27.100077, 35.466652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022713, 27.051481, 36.091305>,  <31.373266, 27.389423, 36.103947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022713, 27.051481, 36.091305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921949, 27.095325, 35.706696>,  <31.861492, 27.121632, 35.475929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921949, 27.095325, 35.706696>,  <32.022713, 27.051481, 36.091305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921949, 27.095325, 35.706696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945687, 0.238835, -0.220532,
		0.205473, -0.964854, -0.163823,
		-0.251908, 0.109612, -0.961524,
		31.846376, 27.128208, 35.418240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498390, 26.709238, 35.736320>,  <32.022713, 27.051481, 36.091305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498390, 26.709238, 35.736320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.351105, 26.961632, 35.463181>,  <32.262733, 27.113068, 35.299297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.351105, 26.961632, 35.463181>,  <32.498390, 26.709238, 35.736320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351105, 26.961632, 35.463181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911815, 0.388607, -0.132584,
		0.181701, -0.671450, -0.718429,
		-0.368210, 0.630983, -0.682848,
		32.240643, 27.150927, 35.258327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957569, 26.689611, 35.218761>,  <32.498390, 26.709238, 35.736320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957569, 26.689611, 35.218761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.759930, 27.035555, 35.183239>,  <32.641346, 27.243120, 35.161926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.759930, 27.035555, 35.183239>,  <32.957569, 26.689611, 35.218761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759930, 27.035555, 35.183239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869079, 0.488532, -0.077705,
		-0.023820, -0.115573, -0.993013,
		-0.494099, 0.864858, -0.088805,
		32.611698, 27.295012, 35.156597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272293, 27.027498, 34.532471>,  <32.957569, 26.689611, 35.218761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272293, 27.027498, 34.532471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105022, 27.300144, 34.772648>,  <33.004662, 27.463732, 34.916756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105022, 27.300144, 34.772648>,  <33.272293, 27.027498, 34.532471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105022, 27.300144, 34.772648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888148, 0.445488, 0.112840,
		-0.190577, 0.580469, -0.791667,
		-0.418178, 0.681613, 0.600442,
		32.979568, 27.504627, 34.952782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230564, 27.083698, 33.822144>,  <33.272293, 27.027498, 34.532471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230564, 27.083698, 33.822144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.446732, 26.969213, 33.505657>,  <33.576431, 26.900522, 33.315765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.446732, 26.969213, 33.505657>,  <33.230564, 27.083698, 33.822144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446732, 26.969213, 33.505657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742747, -0.604091, -0.288794,
		-0.395312, 0.743746, -0.539045,
		0.540422, -0.286210, -0.791219,
		33.608856, 26.883350, 33.268291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791744, 27.103476, 33.229107>,  <33.230564, 27.083698, 33.822144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791744, 27.103476, 33.229107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.092049, 26.864767, 33.115810>,  <33.272232, 26.721542, 33.047832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.092049, 26.864767, 33.115810>,  <32.791744, 27.103476, 33.229107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092049, 26.864767, 33.115810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648604, -0.584691, -0.487288,
		0.125190, 0.549547, -0.826030,
		0.750759, -0.596770, -0.283241,
		33.317276, 26.685736, 33.030838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693413, 27.011009, 32.551708>,  <32.791744, 27.103476, 33.229107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693413, 27.011009, 32.551708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931850, 26.706694, 32.654369>,  <33.074913, 26.524103, 32.715965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931850, 26.706694, 32.654369>,  <32.693413, 27.011009, 32.551708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931850, 26.706694, 32.654369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582337, -0.629717, -0.514141,
		0.552769, 0.157021, -0.818408,
		0.596096, -0.760790, 0.256649,
		33.110680, 26.478456, 32.731365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734535, 26.613947, 31.965151>,  <32.693413, 27.011009, 32.551708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734535, 26.613947, 31.965151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886364, 26.343023, 32.217239>,  <32.977463, 26.180470, 32.368492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886364, 26.343023, 32.217239>,  <32.734535, 26.613947, 31.965151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886364, 26.343023, 32.217239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410158, -0.733793, -0.541589,
		0.829274, -0.052918, -0.556330,
		0.379571, -0.677309, 0.630221,
		33.000237, 26.139832, 32.406307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133518, 26.136030, 31.568871>,  <32.734535, 26.613947, 31.965151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133518, 26.136030, 31.568871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.997337, 25.937374, 31.888229>,  <32.915630, 25.818180, 32.079845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.997337, 25.937374, 31.888229>,  <33.133518, 26.136030, 31.568871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997337, 25.937374, 31.888229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265091, -0.763980, -0.588270,
		0.902119, -0.411927, 0.128445,
		-0.340453, -0.496640, 0.798398,
		32.895203, 25.788382, 32.127750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443890, 25.367474, 31.497286>,  <33.133518, 26.136030, 31.568871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443890, 25.367474, 31.497286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.129868, 25.351212, 31.744522>,  <32.941456, 25.341454, 31.892864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.129868, 25.351212, 31.744522>,  <33.443890, 25.367474, 31.497286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129868, 25.351212, 31.744522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356910, -0.785863, -0.505010,
		0.506267, -0.617063, 0.602434,
		-0.785053, -0.040655, 0.618093,
		32.894352, 25.339016, 31.929951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286121, 24.686554, 31.416811>,  <33.443890, 25.367474, 31.497286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286121, 24.686554, 31.416811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.958332, 24.830381, 31.595329>,  <32.761658, 24.916677, 31.702440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.958332, 24.830381, 31.595329>,  <33.286121, 24.686554, 31.416811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958332, 24.830381, 31.595329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565730, -0.632153, -0.529464,
		0.091747, -0.686362, 0.721450,
		-0.819470, 0.359570, 0.446293,
		32.712490, 24.938251, 31.729218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967339, 24.111012, 31.630611>,  <33.286121, 24.686554, 31.416811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967339, 24.111012, 31.630611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.697216, 24.404125, 31.597170>,  <32.535145, 24.579994, 31.577105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.697216, 24.404125, 31.597170>,  <32.967339, 24.111012, 31.630611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697216, 24.404125, 31.597170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611848, -0.619903, -0.491286,
		-0.411835, -0.280614, 0.866976,
		-0.675303, 0.732786, -0.083604,
		32.494625, 24.623960, 31.572088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415962, 23.925081, 31.897999>,  <32.967339, 24.111012, 31.630611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415962, 23.925081, 31.897999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.303013, 24.196224, 31.626476>,  <32.235245, 24.358910, 31.463564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.303013, 24.196224, 31.626476>,  <32.415962, 23.925081, 31.897999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303013, 24.196224, 31.626476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602288, -0.676028, -0.424542,
		-0.746670, 0.288958, 0.599156,
		-0.282371, 0.677857, -0.678805,
		32.218300, 24.399582, 31.422834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.656578, 35.852436, 35.744347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.408546, 35.994198, 35.464375>,  <42.259727, 36.079254, 35.296391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.408546, 35.994198, 35.464375>,  <42.656578, 35.852436, 35.744347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408546, 35.994198, 35.464375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458507, -0.887637, -0.043251,
		-0.636615, 0.294106, 0.712897,
		-0.620074, 0.354403, -0.699933,
		42.222523, 36.100517, 35.254395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979176, 35.727112, 35.982258>,  <42.656578, 35.852436, 35.744347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979176, 35.727112, 35.982258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.920681, 35.784306, 35.590714>,  <41.885586, 35.818623, 35.355785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.920681, 35.784306, 35.590714>,  <41.979176, 35.727112, 35.982258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920681, 35.784306, 35.590714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409064, -0.909680, -0.071765,
		-0.900713, 0.389923, 0.191513,
		-0.146233, 0.142981, -0.978863,
		41.876812, 35.827198, 35.297054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355652, 35.488876, 35.828243>,  <41.979176, 35.727112, 35.982258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355652, 35.488876, 35.828243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.497658, 35.494427, 35.454338>,  <41.582859, 35.497757, 35.229996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.497658, 35.494427, 35.454338>,  <41.355652, 35.488876, 35.828243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497658, 35.494427, 35.454338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397885, -0.902564, -0.164515,
		-0.845963, 0.430332, -0.314899,
		0.355013, 0.013880, -0.934758,
		41.604160, 35.498592, 35.173912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856071, 35.314957, 35.313847>,  <41.355652, 35.488876, 35.828243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856071, 35.314957, 35.313847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.211353, 35.224331, 35.153969>,  <41.424522, 35.169956, 35.058041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.211353, 35.224331, 35.153969>,  <40.856071, 35.314957, 35.313847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211353, 35.224331, 35.153969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382045, -0.847447, -0.368612,
		-0.255205, 0.480105, -0.839267,
		0.888207, -0.226566, -0.399695,
		41.477814, 35.156361, 35.034061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660320, 34.925629, 34.699642>,  <40.856071, 35.314957, 35.313847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660320, 34.925629, 34.699642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.039913, 34.826420, 34.777538>,  <41.267670, 34.766895, 34.824276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.039913, 34.826420, 34.777538>,  <40.660320, 34.925629, 34.699642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039913, 34.826420, 34.777538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216619, -0.961519, -0.168991,
		0.229159, 0.118185, -0.966188,
		0.948979, -0.248021, 0.194739,
		41.324608, 34.752014, 34.835960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951595, 34.616615, 34.005360>,  <40.660320, 34.925629, 34.699642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951595, 34.616615, 34.005360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.140316, 34.474709, 34.328232>,  <41.253548, 34.389565, 34.521954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.140316, 34.474709, 34.328232>,  <40.951595, 34.616615, 34.005360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140316, 34.474709, 34.328232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078419, -0.928737, -0.362352,
		0.878208, 0.107661, -0.466003,
		0.471806, -0.354764, 0.807182,
		41.281857, 34.368279, 34.570385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312412, 33.993580, 33.854473>,  <40.951595, 34.616615, 34.005360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312412, 33.993580, 33.854473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358398, 33.920837, 34.245106>,  <41.385990, 33.877193, 34.479485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358398, 33.920837, 34.245106>,  <41.312412, 33.993580, 33.854473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358398, 33.920837, 34.245106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092541, -0.980785, -0.171745,
		0.989050, -0.070629, -0.129582,
		0.114962, -0.181856, 0.976582,
		41.392887, 33.866280, 34.538082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781864, 33.365486, 33.907425>,  <41.312412, 33.993580, 33.854473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781864, 33.365486, 33.907425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.575333, 33.387581, 34.249268>,  <41.451412, 33.400837, 34.454372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.575333, 33.387581, 34.249268>,  <41.781864, 33.365486, 33.907425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575333, 33.387581, 34.249268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151146, -0.988130, -0.027448,
		0.842944, -0.143342, 0.518554,
		-0.516333, 0.055241, 0.854604,
		41.420433, 33.404152, 34.505650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868557, 32.706547, 34.187984>,  <41.781864, 33.365486, 33.907425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868557, 32.706547, 34.187984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546604, 32.835129, 34.387516>,  <41.353432, 32.912277, 34.507236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546604, 32.835129, 34.387516>,  <41.868557, 32.706547, 34.187984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546604, 32.835129, 34.387516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344865, -0.937442, 0.047656,
		0.482941, -0.133671, 0.865390,
		-0.804883, 0.321458, 0.498828,
		41.305138, 32.931564, 34.537163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720581, 32.216179, 34.779102>,  <41.868557, 32.706547, 34.187984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720581, 32.216179, 34.779102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.377834, 32.400719, 34.687073>,  <41.172184, 32.511444, 34.631855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.377834, 32.400719, 34.687073>,  <41.720581, 32.216179, 34.779102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377834, 32.400719, 34.687073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494479, -0.861728, 0.113644,
		-0.145831, 0.211144, 0.966515,
		-0.856869, 0.461349, -0.230073,
		41.120773, 32.539124, 34.618050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290909, 32.070385, 35.280159>,  <41.720581, 32.216179, 34.779102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290909, 32.070385, 35.280159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.037537, 32.162613, 34.984699>,  <40.885513, 32.217949, 34.807423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.037537, 32.162613, 34.984699>,  <41.290909, 32.070385, 35.280159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037537, 32.162613, 34.984699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582401, -0.770570, 0.258902,
		-0.509485, 0.594187, 0.622388,
		-0.633430, 0.230573, -0.738649,
		40.847507, 32.231785, 34.763103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586327, 31.894955, 35.605427>,  <41.290909, 32.070385, 35.280159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586327, 31.894955, 35.605427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.537632, 31.920500, 35.209225>,  <40.508415, 31.935827, 34.971504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.537632, 31.920500, 35.209225>,  <40.586327, 31.894955, 35.605427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537632, 31.920500, 35.209225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675541, -0.736466, 0.035539,
		-0.727205, 0.673453, 0.132794,
		-0.121732, 0.063864, -0.990506,
		40.501114, 31.939659, 34.912071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288750, 32.275612, 36.196335>,  <40.586327, 31.894955, 35.605427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288750, 32.275612, 36.196335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.193943, 32.252018, 36.584221>,  <40.137058, 32.237862, 36.816952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.193943, 32.252018, 36.584221>,  <40.288750, 32.275612, 36.196335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193943, 32.252018, 36.584221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581633, 0.790886, 0.190268,
		-0.778154, 0.609114, -0.153151,
		-0.237020, -0.058980, 0.969713,
		40.122837, 32.234325, 36.875134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127426, 32.886898, 36.456783>,  <40.288750, 32.275612, 36.196335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127426, 32.886898, 36.456783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.225250, 32.711502, 36.802711>,  <40.283943, 32.606266, 37.010269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.225250, 32.711502, 36.802711>,  <40.127426, 32.886898, 36.456783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225250, 32.711502, 36.802711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489232, 0.825854, 0.280386,
		-0.837164, 0.354529, 0.416493,
		0.244558, -0.438491, 0.864822,
		40.298618, 32.579956, 37.062157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981148, 33.315498, 37.038296>,  <40.127426, 32.886898, 36.456783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981148, 33.315498, 37.038296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253956, 33.057251, 37.175713>,  <40.417641, 32.902302, 37.258163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253956, 33.057251, 37.175713>,  <39.981148, 33.315498, 37.038296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253956, 33.057251, 37.175713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560701, 0.763202, 0.321148,
		-0.469532, -0.026405, 0.882520,
		0.682022, -0.645620, 0.343543,
		40.458561, 32.863564, 37.278774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102451, 33.506924, 37.727272>,  <39.981148, 33.315498, 37.038296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102451, 33.506924, 37.727272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.425362, 33.310055, 37.597000>,  <40.619110, 33.191933, 37.518837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.425362, 33.310055, 37.597000>,  <40.102451, 33.506924, 37.727272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425362, 33.310055, 37.597000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589871, 0.690426, 0.418764,
		0.018753, -0.530168, 0.847685,
		0.807279, -0.492172, -0.325678,
		40.667545, 33.162403, 37.499298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569534, 33.461628, 38.326920>,  <40.102451, 33.506924, 37.727272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569534, 33.461628, 38.326920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.804970, 33.405071, 38.008533>,  <40.946232, 33.371136, 37.817501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.804970, 33.405071, 38.008533>,  <40.569534, 33.461628, 38.326920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804970, 33.405071, 38.008533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601599, 0.734314, 0.314422,
		0.540034, -0.663921, 0.517274,
		0.588593, -0.141392, -0.795969,
		40.981548, 33.362652, 37.769741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215576, 33.746941, 38.556023>,  <40.569534, 33.461628, 38.326920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215576, 33.746941, 38.556023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.280121, 33.692291, 38.165066>,  <41.318848, 33.659500, 37.930492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.280121, 33.692291, 38.165066>,  <41.215576, 33.746941, 38.556023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280121, 33.692291, 38.165066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658486, 0.752585, 0.003512,
		0.735091, -0.644166, 0.211403,
		0.161361, -0.136625, -0.977393,
		41.328529, 33.651302, 37.871849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927525, 33.583591, 38.417343>,  <41.215576, 33.746941, 38.556023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927525, 33.583591, 38.417343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.759964, 33.754917, 38.097076>,  <41.659428, 33.857712, 37.904919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.759964, 33.754917, 38.097076>,  <41.927525, 33.583591, 38.417343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759964, 33.754917, 38.097076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500916, 0.844458, 0.189667,
		0.757365, -0.321612, -0.568299,
		-0.418906, 0.428317, -0.800664,
		41.634293, 33.883411, 37.856876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479591, 34.010082, 38.229401>,  <41.927525, 33.583591, 38.417343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479591, 34.010082, 38.229401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152882, 34.140827, 38.039223>,  <41.956856, 34.219276, 37.925117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152882, 34.140827, 38.039223>,  <42.479591, 34.010082, 38.229401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152882, 34.140827, 38.039223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409738, 0.908765, -0.079122,
		0.406204, -0.259431, -0.876182,
		-0.816770, 0.326866, -0.475442,
		41.907852, 34.238888, 37.896591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776150, 34.457397, 37.810665>,  <42.479591, 34.010082, 38.229401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776150, 34.457397, 37.810665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.390949, 34.562393, 37.835079>,  <42.159828, 34.625389, 37.849728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.390949, 34.562393, 37.835079>,  <42.776150, 34.457397, 37.810665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390949, 34.562393, 37.835079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260503, 0.964699, -0.038646,
		-0.069029, -0.021315, -0.997387,
		-0.963002, 0.262490, 0.061039,
		42.102047, 34.641140, 37.853390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537506, 34.902893, 37.150352>,  <42.776150, 34.457397, 37.810665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537506, 34.902893, 37.150352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.313339, 34.967728, 37.475231>,  <42.178837, 35.006626, 37.670158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.313339, 34.967728, 37.475231>,  <42.537506, 34.902893, 37.150352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313339, 34.967728, 37.475231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109495, 0.986555, -0.121326,
		-0.820939, 0.020937, -0.570632,
		-0.560420, 0.162082, 0.812194,
		42.145214, 35.016354, 37.718891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004738, 35.431419, 36.941502>,  <42.537506, 34.902893, 37.150352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004738, 35.431419, 36.941502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.008854, 35.453007, 37.340897>,  <42.011322, 35.465958, 37.580536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.008854, 35.453007, 37.340897>,  <42.004738, 35.431419, 36.941502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008854, 35.453007, 37.340897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103234, 0.993150, -0.054741,
		-0.994604, 0.103642, 0.004651,
		0.010293, 0.053966, 0.998490,
		42.011940, 35.469196, 37.640442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465374, 35.935349, 37.120953>,  <42.004738, 35.431419, 36.941502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465374, 35.935349, 37.120953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.709049, 35.895866, 37.435696>,  <41.855255, 35.872177, 37.624542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.709049, 35.895866, 37.435696>,  <41.465374, 35.935349, 37.120953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709049, 35.895866, 37.435696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070907, 0.995029, 0.069919,
		-0.789852, 0.013201, 0.613155,
		0.609185, -0.098703, 0.786862,
		41.891804, 35.866257, 37.671753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197941, 36.354805, 37.511696>,  <41.465374, 35.935349, 37.120953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197941, 36.354805, 37.511696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.561371, 36.300392, 37.669674>,  <41.779430, 36.267746, 37.764462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.561371, 36.300392, 37.669674>,  <41.197941, 36.354805, 37.511696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561371, 36.300392, 37.669674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058745, 0.977704, 0.201602,
		-0.413565, -0.159970, 0.896311,
		0.908578, -0.136029, 0.394947,
		41.833942, 36.259583, 37.788158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175457, 36.844673, 38.203419>,  <41.197941, 36.354805, 37.511696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175457, 36.844673, 38.203419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.563023, 36.795429, 38.117584>,  <41.795563, 36.765881, 38.066086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.563023, 36.795429, 38.117584>,  <41.175457, 36.844673, 38.203419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563023, 36.795429, 38.117584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116059, 0.992213, -0.045211,
		0.218478, 0.018901, 0.975659,
		0.968916, -0.123112, -0.214583,
		41.853699, 36.758495, 38.053211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546543, 36.998901, 38.103394>,  <41.175457, 36.844673, 38.203419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546543, 36.998901, 38.103394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625088, 36.818840, 37.754955>,  <40.672215, 36.710804, 37.545891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625088, 36.818840, 37.754955>,  <40.546543, 36.998901, 38.103394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625088, 36.818840, 37.754955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924047, 0.212215, -0.317966,
		0.327992, 0.867369, -0.374289,
		0.196365, -0.450151, -0.871094,
		40.683998, 36.683796, 37.493626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280975, 37.541256, 37.671116>,  <40.546543, 36.998901, 38.103394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280975, 37.541256, 37.671116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.380474, 37.214130, 37.463539>,  <40.440174, 37.017857, 37.338993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.380474, 37.214130, 37.463539>,  <40.280975, 37.541256, 37.671116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380474, 37.214130, 37.463539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749984, 0.176412, -0.637497,
		0.612903, 0.547775, -0.569467,
		0.248744, -0.817815, -0.518946,
		40.455097, 36.968784, 37.307854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816601, 37.498756, 38.210934>,  <40.280975, 37.541256, 37.671116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816601, 37.498756, 38.210934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814999, 37.240513, 37.905468>,  <39.814037, 37.085567, 37.722191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814999, 37.240513, 37.905468>,  <39.816601, 37.498756, 38.210934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814999, 37.240513, 37.905468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974622, -0.168402, 0.147483,
		-0.223818, 0.744872, -0.628546,
		-0.004008, -0.645605, -0.763661,
		39.813797, 37.046833, 37.676369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178894, 37.629810, 37.861496>,  <39.816601, 37.498756, 38.210934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178894, 37.629810, 37.861496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290592, 37.261696, 37.751877>,  <39.357609, 37.040829, 37.686104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290592, 37.261696, 37.751877>,  <39.178894, 37.629810, 37.861496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290592, 37.261696, 37.751877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953960, -0.298421, 0.030088,
		-0.109470, 0.253028, -0.961246,
		0.279243, -0.920283, -0.274047,
		39.374367, 36.985611, 37.669662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652222, 37.340073, 37.513523>,  <39.178894, 37.629810, 37.861496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652222, 37.340073, 37.513523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864555, 37.003513, 37.554043>,  <38.991955, 36.801579, 37.578354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864555, 37.003513, 37.554043>,  <38.652222, 37.340073, 37.513523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864555, 37.003513, 37.554043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846161, -0.532866, 0.008071,
		0.047187, -0.089999, -0.994823,
		0.530834, -0.841400, 0.101298,
		39.023804, 36.751095, 37.584431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477013, 36.814438, 36.960007>,  <38.652222, 37.340073, 37.513523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477013, 36.814438, 36.960007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649342, 36.608379, 37.256390>,  <38.752739, 36.484745, 37.434219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649342, 36.608379, 37.256390>,  <38.477013, 36.814438, 36.960007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649342, 36.608379, 37.256390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788025, -0.614878, 0.030700,
		0.439784, -0.597120, -0.670848,
		0.430821, -0.515144, 0.740959,
		38.778587, 36.453835, 37.478676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527260, 36.102791, 36.781818>,  <38.477013, 36.814438, 36.960007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527260, 36.102791, 36.781818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524307, 36.117107, 37.181553>,  <38.522533, 36.125698, 37.421394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524307, 36.117107, 37.181553>,  <38.527260, 36.102791, 36.781818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524307, 36.117107, 37.181553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683640, -0.729515, 0.021078,
		0.729782, -0.683028, 0.029860,
		-0.007386, 0.035795, 0.999332,
		38.522091, 36.127846, 37.481354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610394, 35.397682, 37.031548>,  <38.527260, 36.102791, 36.781818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610394, 35.397682, 37.031548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.433292, 35.589859, 37.334373>,  <38.327034, 35.705166, 37.516071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.433292, 35.589859, 37.334373>,  <38.610394, 35.397682, 37.031548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433292, 35.589859, 37.334373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665235, -0.742127, 0.081913,
		0.601194, -0.467360, 0.648182,
		-0.442751, 0.480439, 0.757067,
		38.300468, 35.733990, 37.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454208, 34.872734, 37.493076>,  <38.610394, 35.397682, 37.031548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454208, 34.872734, 37.493076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229561, 35.193798, 37.573402>,  <38.094772, 35.386436, 37.621597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229561, 35.193798, 37.573402>,  <38.454208, 34.872734, 37.493076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229561, 35.193798, 37.573402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798657, -0.589312, 0.121893,
		0.216181, -0.091925, 0.972016,
		-0.561616, 0.802659, 0.200815,
		38.061077, 35.434597, 37.633648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089142, 34.613613, 38.013046>,  <38.454208, 34.872734, 37.493076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089142, 34.613613, 38.013046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889061, 34.920647, 37.852737>,  <37.769012, 35.104866, 37.756554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889061, 34.920647, 37.852737>,  <38.089142, 34.613613, 38.013046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889061, 34.920647, 37.852737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856308, -0.507220, 0.097286,
		-0.128603, 0.391844, 0.911000,
		-0.500198, 0.767585, -0.400769,
		37.739002, 35.150921, 37.732506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437023, 34.615070, 38.276485>,  <38.089142, 34.613613, 38.013046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437023, 34.615070, 38.276485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322048, 34.863869, 37.985146>,  <37.253063, 35.013149, 37.810341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322048, 34.863869, 37.985146>,  <37.437023, 34.615070, 38.276485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322048, 34.863869, 37.985146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756174, -0.614100, -0.226012,
		-0.587860, 0.485796, 0.646856,
		-0.287438, 0.621999, -0.728352,
		37.235817, 35.050468, 37.766640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776802, 34.795563, 38.395302>,  <37.437023, 34.615070, 38.276485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776802, 34.795563, 38.395302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817509, 34.861008, 38.002796>,  <36.841934, 34.900276, 37.767292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817509, 34.861008, 38.002796>,  <36.776802, 34.795563, 38.395302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817509, 34.861008, 38.002796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659736, -0.727169, -0.189666,
		-0.744575, 0.666676, 0.033938,
		0.101767, 0.163611, -0.981262,
		36.848038, 34.910091, 37.708416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129433, 34.779247, 38.153755>,  <36.776802, 34.795563, 38.395302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129433, 34.779247, 38.153755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335701, 34.749222, 37.812359>,  <36.459461, 34.731205, 37.607521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335701, 34.749222, 37.812359>,  <36.129433, 34.779247, 38.153755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335701, 34.749222, 37.812359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758178, -0.503954, -0.413759,
		-0.399061, 0.860462, -0.316788,
		0.515670, -0.075067, -0.853492,
		36.490402, 34.726704, 37.556313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611210, 34.885906, 37.736534>,  <36.129433, 34.779247, 38.153755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611210, 34.885906, 37.736534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883587, 34.728634, 37.489395>,  <36.047012, 34.634270, 37.341110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883587, 34.728634, 37.489395>,  <35.611210, 34.885906, 37.736534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883587, 34.728634, 37.489395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715104, -0.538940, -0.445162,
		-0.157955, 0.744953, -0.648147,
		0.680938, -0.393177, -0.617847,
		36.087868, 34.610680, 37.304039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429848, 35.050976, 37.042057>,  <35.611210, 34.885906, 37.736534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429848, 35.050976, 37.042057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640717, 34.711678, 37.021786>,  <35.767239, 34.508099, 37.009624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640717, 34.711678, 37.021786>,  <35.429848, 35.050976, 37.042057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640717, 34.711678, 37.021786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709937, -0.406870, -0.574844,
		0.466990, 0.339021, -0.816692,
		0.527171, -0.848246, -0.050680,
		35.798866, 34.457203, 37.006580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194725, 34.793694, 36.491673>,  <35.429848, 35.050976, 37.042057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194725, 34.793694, 36.491673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.389660, 34.476692, 36.638332>,  <35.506622, 34.286491, 36.726330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.389660, 34.476692, 36.638332>,  <35.194725, 34.793694, 36.491673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389660, 34.476692, 36.638332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633491, -0.609864, -0.476189,
		0.600991, -0.000207, -0.799255,
		0.487339, -0.792506, 0.366654,
		35.535862, 34.238941, 36.748329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333305, 34.319599, 35.952507>,  <35.194725, 34.793694, 36.491673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333305, 34.319599, 35.952507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350174, 34.104031, 36.289028>,  <35.360294, 33.974689, 36.490940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350174, 34.104031, 36.289028>,  <35.333305, 34.319599, 35.952507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350174, 34.104031, 36.289028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600410, -0.686709, -0.409802,
		0.798580, -0.487844, -0.352532,
		0.042167, -0.538924, 0.841299,
		35.362823, 33.942352, 36.541416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399647, 33.612221, 35.697903>,  <35.333305, 34.319599, 35.952507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399647, 33.612221, 35.697903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270397, 33.599602, 36.076233>,  <35.192848, 33.592030, 36.303230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270397, 33.599602, 36.076233>,  <35.399647, 33.612221, 35.697903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270397, 33.599602, 36.076233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596860, -0.768807, -0.229552,
		0.734403, -0.638702, 0.229590,
		-0.323125, -0.031551, 0.945830,
		35.173458, 33.590137, 36.359982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195648, 32.886917, 35.813183>,  <35.399647, 33.612221, 35.697903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195648, 32.886917, 35.813183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007229, 33.082588, 36.106804>,  <34.894176, 33.199989, 36.282974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007229, 33.082588, 36.106804>,  <35.195648, 32.886917, 35.813183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007229, 33.082588, 36.106804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816495, -0.556726, -0.152945,
		0.333848, -0.671390, 0.661650,
		-0.471044, 0.489174, 0.734048,
		34.865917, 33.229340, 36.327019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018646, 32.432804, 36.357761>,  <35.195648, 32.886917, 35.813183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018646, 32.432804, 36.357761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769760, 32.745773, 36.368099>,  <34.620430, 32.933556, 36.374302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769760, 32.745773, 36.368099>,  <35.018646, 32.432804, 36.357761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769760, 32.745773, 36.368099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781632, -0.619073, -0.076152,
		-0.043580, -0.067587, 0.996761,
		-0.622215, 0.782419, 0.025849,
		34.583096, 32.980499, 36.375854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473396, 32.243271, 36.867390>,  <35.018646, 32.432804, 36.357761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473396, 32.243271, 36.867390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303596, 32.523708, 36.638210>,  <34.201717, 32.691971, 36.500702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303596, 32.523708, 36.638210>,  <34.473396, 32.243271, 36.867390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303596, 32.523708, 36.638210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748213, -0.627972, -0.214078,
		-0.509884, 0.337812, 0.791139,
		-0.424495, 0.701095, -0.572948,
		34.176247, 32.734035, 36.466328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796169, 32.141998, 36.996574>,  <34.473396, 32.243271, 36.867390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796169, 32.141998, 36.996574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791119, 32.368477, 36.666904>,  <33.788090, 32.504364, 36.469105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791119, 32.368477, 36.666904>,  <33.796169, 32.141998, 36.996574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791119, 32.368477, 36.666904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864225, -0.420757, -0.275821,
		-0.502946, 0.708789, 0.494634,
		-0.012622, 0.566199, -0.824172,
		33.787331, 32.538338, 36.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086693, 32.298901, 36.984642>,  <33.796169, 32.141998, 36.996574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086693, 32.298901, 36.984642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256405, 32.350571, 36.626133>,  <33.358231, 32.381573, 36.411026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256405, 32.350571, 36.626133>,  <33.086693, 32.298901, 36.984642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256405, 32.350571, 36.626133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700908, -0.579828, -0.415365,
		-0.573340, 0.804433, -0.155465,
		0.424276, 0.129179, -0.896271,
		33.383686, 32.389324, 36.357250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530331, 32.398876, 36.463699>,  <33.086693, 32.298901, 36.984642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530331, 32.398876, 36.463699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838593, 32.318951, 36.221649>,  <33.023548, 32.270996, 36.076420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838593, 32.318951, 36.221649>,  <32.530331, 32.398876, 36.463699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838593, 32.318951, 36.221649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602541, -0.537619, -0.589840,
		-0.207468, 0.819171, -0.534711,
		0.770650, -0.199812, -0.605123,
		33.069786, 32.259007, 36.040112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288242, 32.626492, 35.791794>,  <32.530331, 32.398876, 36.463699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288242, 32.626492, 35.791794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.569721, 32.343590, 35.764683>,  <32.738609, 32.173847, 35.748417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.569721, 32.343590, 35.764683>,  <32.288242, 32.626492, 35.791794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569721, 32.343590, 35.764683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659317, -0.614483, -0.433258,
		0.264776, 0.349571, -0.898718,
		0.703701, -0.707256, -0.067777,
		32.780830, 32.131413, 35.744350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194351, 32.329224, 35.099323>,  <32.288242, 32.626492, 35.791794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194351, 32.329224, 35.099323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432358, 32.068756, 35.287762>,  <32.575161, 31.912476, 35.400826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432358, 32.068756, 35.287762>,  <32.194351, 32.329224, 35.099323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432358, 32.068756, 35.287762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559115, -0.756440, -0.339396,
		0.577362, -0.061452, -0.814173,
		0.595016, -0.651170, 0.471098,
		32.610863, 31.873405, 35.429092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443935, 31.868294, 34.594067>,  <32.194351, 32.329224, 35.099323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443935, 31.868294, 34.594067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503021, 31.667320, 34.934830>,  <32.538471, 31.546736, 35.139286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503021, 31.667320, 34.934830>,  <32.443935, 31.868294, 34.594067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503021, 31.667320, 34.934830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626837, -0.713820, -0.312309,
		0.765021, -0.487872, -0.420385,
		0.147712, -0.502436, 0.851903,
		32.547337, 31.516590, 35.190399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701977, 31.274456, 34.387413>,  <32.443935, 31.868294, 34.594067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701977, 31.274456, 34.387413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543606, 31.194046, 34.745815>,  <32.448582, 31.145800, 34.960857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543606, 31.194046, 34.745815>,  <32.701977, 31.274456, 34.387413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543606, 31.194046, 34.745815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473319, -0.791465, -0.386721,
		0.786897, -0.577212, 0.218218,
		-0.395931, -0.201023, 0.896007,
		32.424828, 31.133739, 35.014618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169266, 30.797760, 34.081429>,  <32.701977, 31.274456, 34.387413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169266, 30.797760, 34.081429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150730, 30.992697, 33.732635>,  <33.139610, 31.109659, 33.523361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150730, 30.992697, 33.732635>,  <33.169266, 30.797760, 34.081429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150730, 30.992697, 33.732635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602939, 0.709620, 0.364560,
		0.796441, -0.508858, -0.326720,
		-0.046338, 0.487342, -0.871981,
		33.136829, 31.138899, 33.471043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854740, 30.974457, 33.902576>,  <33.169266, 30.797760, 34.081429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854740, 30.974457, 33.902576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632969, 31.229750, 33.688934>,  <33.499908, 31.382925, 33.560749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632969, 31.229750, 33.688934>,  <33.854740, 30.974457, 33.902576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632969, 31.229750, 33.688934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568602, 0.759127, 0.316888,
		0.607704, -0.128003, -0.783780,
		-0.554426, 0.638233, -0.534107,
		33.466640, 31.421219, 33.528702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333374, 31.326582, 33.411221>,  <33.854740, 30.974457, 33.902576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333374, 31.326582, 33.411221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013321, 31.561930, 33.457882>,  <33.821289, 31.703138, 33.485878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013321, 31.561930, 33.457882>,  <34.333374, 31.326582, 33.411221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013321, 31.561930, 33.457882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596934, 0.800137, 0.058732,
		-0.058782, 0.116627, -0.991435,
		-0.800134, 0.588369, 0.116652,
		33.773281, 31.738440, 33.492878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463715, 31.912247, 33.014797>,  <34.333374, 31.326582, 33.411221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463715, 31.912247, 33.014797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171421, 32.066681, 33.239994>,  <33.996044, 32.159340, 33.375114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171421, 32.066681, 33.239994>,  <34.463715, 31.912247, 33.014797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171421, 32.066681, 33.239994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469401, 0.882977, 0.003738,
		-0.495668, 0.267002, -0.826452,
		-0.730737, 0.386084, 0.562995,
		33.952202, 32.182507, 33.408894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227222, 32.350555, 32.580616>,  <34.463715, 31.912247, 33.014797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227222, 32.350555, 32.580616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137455, 32.459976, 32.954739>,  <34.083595, 32.525627, 33.179214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137455, 32.459976, 32.954739>,  <34.227222, 32.350555, 32.580616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137455, 32.459976, 32.954739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519126, 0.845828, -0.122816,
		-0.824708, 0.457981, -0.331828,
		-0.224422, 0.273548, 0.935311,
		34.070129, 32.542042, 33.235332>
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
