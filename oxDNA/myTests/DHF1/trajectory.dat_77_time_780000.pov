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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.415372, 3.787213, 0.794129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.306584, 3.427410, 0.930904>,  <3.241312, 3.211529, 1.012969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.306584, 3.427410, 0.930904>,  <3.415372, 3.787213, 0.794129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.306584, 3.427410, 0.930904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817471, -0.403432, -0.411076,
		0.507714, 0.167724, 0.845041,
		-0.271969, -0.899506, 0.341938,
		3.224994, 3.157558, 1.033486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.930068, 3.456469, 1.132741>,  <3.415372, 3.787213, 0.794129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.930068, 3.456469, 1.132741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.733605, 3.126274, 1.021505>,  <3.615727, 2.928157, 0.954764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.733605, 3.126274, 1.021505>,  <3.930068, 3.456469, 1.132741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.733605, 3.126274, 1.021505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836080, -0.357183, -0.416403,
		0.244408, -0.437024, 0.865607,
		-0.491158, -0.825488, -0.278089,
		3.586257, 2.878628, 0.938079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.254817, 2.882245, 1.372243>,  <3.930068, 3.456469, 1.132741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.254817, 2.882245, 1.372243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.069529, 2.868145, 1.018026>,  <3.958356, 2.859685, 0.805496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.069529, 2.868145, 1.018026>,  <4.254817, 2.882245, 1.372243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.069529, 2.868145, 1.018026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851527, -0.294629, -0.433700,
		-0.245618, -0.954961, 0.166495,
		-0.463221, -0.035251, -0.885541,
		3.930563, 2.857570, 0.752364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.446869, 2.257187, 1.034736>,  <4.254817, 2.882245, 1.372243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.446869, 2.257187, 1.034736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.351312, 2.556557, 0.787256>,  <4.293977, 2.736179, 0.638768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.351312, 2.556557, 0.787256>,  <4.446869, 2.257187, 1.034736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.351312, 2.556557, 0.787256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802446, -0.206637, -0.559805,
		-0.546818, -0.630208, -0.551206,
		-0.238894, 0.748425, -0.618700,
		4.279644, 2.781084, 0.601646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.780159, 2.077213, 0.511974>,  <4.446869, 2.257187, 1.034736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.780159, 2.077213, 0.511974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672256, 2.447647, 0.406448>,  <4.607514, 2.669908, 0.343133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672256, 2.447647, 0.406448>,  <4.780159, 2.077213, 0.511974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.672256, 2.447647, 0.406448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766783, 0.040865, -0.640604,
		-0.582474, -0.375096, -0.721130,
		-0.269757, 0.926085, -0.263814,
		4.591329, 2.725473, 0.327304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.622407, 2.095615, -0.275674>,  <4.780159, 2.077213, 0.511974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.622407, 2.095615, -0.275674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.707454, 2.472710, -0.172878>,  <4.758482, 2.698966, -0.111201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.707454, 2.472710, -0.172878>,  <4.622407, 2.095615, -0.275674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.707454, 2.472710, -0.172878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494916, 0.122872, -0.860210,
		-0.842527, 0.310083, -0.440450,
		0.212617, 0.942736, 0.256989,
		4.771239, 2.755530, -0.095782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.433466, 2.425690, -0.869397>,  <4.622407, 2.095615, -0.275674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.433466, 2.425690, -0.869397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666625, 2.669838, -0.654854>,  <4.806520, 2.816327, -0.526128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666625, 2.669838, -0.654854>,  <4.433466, 2.425690, -0.869397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.666625, 2.669838, -0.654854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575640, 0.155678, -0.802747,
		-0.573472, 0.776667, -0.260610,
		0.582896, 0.610370, 0.536358,
		4.841494, 2.852949, -0.493946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.474735, 3.121917, -1.293555>,  <4.433466, 2.425690, -0.869397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.474735, 3.121917, -1.293555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.788584, 3.067356, -1.051641>,  <4.976893, 3.034620, -0.906493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.788584, 3.067356, -1.051641>,  <4.474735, 3.121917, -1.293555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.788584, 3.067356, -1.051641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616989, 0.076157, -0.783278,
		0.060782, 0.987722, 0.143912,
		0.784621, -0.136401, 0.604785,
		5.023970, 3.026436, -0.870206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.127675, 2.712702, 2.464968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.853516, 2.752731, 2.753471>,  <0.689020, 2.776749, 2.926573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.853516, 2.752731, 2.753471>,  <1.127675, 2.712702, 2.464968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.853516, 2.752731, 2.753471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660853, -0.330457, 0.673848,
		0.305779, 0.938501, 0.160361,
		-0.685399, 0.100074, 0.721258,
		0.647896, 2.782753, 2.969849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.549879, 3.062576, 2.961032>,  <1.127675, 2.712702, 2.464968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.549879, 3.062576, 2.961032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.225330, 2.917603, 3.144474>,  <1.030601, 2.830619, 3.254539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.225330, 2.917603, 3.144474>,  <1.549879, 3.062576, 2.961032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.225330, 2.917603, 3.144474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547036, -0.194342, 0.814237,
		-0.205980, 0.911523, 0.355948,
		-0.811371, -0.362433, 0.458605,
		0.981919, 2.808873, 3.282056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.251030, 3.460918, 3.589969>,  <1.549879, 3.062576, 2.961032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.251030, 3.460918, 3.589969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.231712, 3.061386, 3.589100>,  <1.220122, 2.821667, 3.588578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.231712, 3.061386, 3.589100>,  <1.251030, 3.460918, 3.589969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.231712, 3.061386, 3.589100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803206, -0.040129, 0.594348,
		-0.593740, 0.026957, 0.804205,
		-0.048294, -0.998831, -0.002174,
		1.217224, 2.761737, 3.588448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.290130, 3.130692, 4.236060>,  <1.251030, 3.460918, 3.589969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.290130, 3.130692, 4.236060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452442, 2.889412, 3.961399>,  <1.549830, 2.744644, 3.796602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.452442, 2.889412, 3.961399>,  <1.290130, 3.130692, 4.236060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.452442, 2.889412, 3.961399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895567, 0.112408, 0.430494,
		-0.182488, -0.789630, 0.585818,
		0.405781, -0.603199, -0.686653,
		1.574177, 2.708452, 3.755403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.036782, 3.026989, 4.913599>,  <1.290130, 3.130692, 4.236060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.036782, 3.026989, 4.913599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.723820, 3.016991, 4.664692>,  <0.536043, 3.010991, 4.515347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.723820, 3.016991, 4.664692>,  <1.036782, 3.026989, 4.913599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.723820, 3.016991, 4.664692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618403, 0.149313, 0.771546,
		0.073626, 0.988474, -0.132281,
		-0.782404, -0.024997, -0.622269,
		0.489098, 3.009491, 4.478011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.720243, 3.637577, 5.157373>,  <1.036782, 3.026989, 4.913599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.720243, 3.637577, 5.157373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.462685, 3.394661, 4.971214>,  <0.308149, 3.248911, 4.859519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.462685, 3.394661, 4.971214>,  <0.720243, 3.637577, 5.157373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.462685, 3.394661, 4.971214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695589, 0.211287, 0.686669,
		-0.318675, 0.765870, -0.558471,
		-0.643897, -0.607290, -0.465398,
		0.269516, 3.212474, 4.831595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.024606, 3.996908, 5.240661>,  <0.720243, 3.637577, 5.157373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.024606, 3.996908, 5.240661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.045769, 3.614769, 5.145702>,  <-0.087994, 3.385486, 5.088727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.045769, 3.614769, 5.145702>,  <0.024606, 3.996908, 5.240661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.045769, 3.614769, 5.145702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785106, -0.009303, 0.619291,
		-0.593847, 0.295338, -0.748413,
		-0.175938, -0.955347, -0.237397,
		-0.098550, 3.328165, 5.074483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.616784, 3.990355, 4.997352>,  <0.024606, 3.996908, 5.240661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.616784, 3.990355, 4.997352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.505146, 3.643654, 5.162685>,  <-0.438163, 3.435633, 5.261886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.505146, 3.643654, 5.162685>,  <-0.616784, 3.990355, 4.997352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.505146, 3.643654, 5.162685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710461, 0.103200, 0.696129,
		-0.646028, -0.487944, -0.586991,
		0.279094, -0.866753, 0.413334,
		-0.421418, 3.383628, 5.286686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
